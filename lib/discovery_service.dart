import 'dart:async';

import 'package:bonsoir/bonsoir.dart';
import 'package:multicast_dns/multicast_dns.dart';

import 'device.dart';

const _domain = '_googlecast._tcp';

class CastDiscoveryService {
  static final CastDiscoveryService _instance = CastDiscoveryService._();
  CastDiscoveryService._();
  final MDnsClient client = MDnsClient();

  factory CastDiscoveryService() {
    return _instance;
  }

  Future<List<CastDevice>> search(
      {Duration timeout = const Duration(seconds: 5)}) async {
    final results = <CastDevice>[];
    final discovery = BonsoirDiscovery(type: _domain);

    await discovery.ready;
    await client.start();
    discovery.eventStream!.listen((event) async {
      if (event.type == BonsoirDiscoveryEventType.DISCOVERY_SERVICE_RESOLVED ||
          event.type == BonsoirDiscoveryEventType.DISCOVERY_SERVICE_FOUND) {
        if (event.service == null || event.service?.attributes == null) {
          return;
        }

        final port = event.service!.port;
        final host = event.service?.toJson()['service.ip'];
        String name = [
          event.service?.attributes?['md'],
          event.service?.attributes?['fn']
        ].whereType<String>().join(' - ');
        if (name.isEmpty) {
          name = event.service!.name;
        }

        // Host is null on service found, so we need to resolve it
        // Added this because the bonsoir library always correctly resolve the host
        if (host == null) {
          await for (SrvResourceRecord srv in client.lookup<SrvResourceRecord>(
              ResourceRecordQuery.service(
                  event.service!.name + "._googlecast._tcp.local"))) {
            await for (IPAddressResourceRecord ip
                in client.lookup<IPAddressResourceRecord>(
                    ResourceRecordQuery.addressIPv4(srv.target))) {
              results.add(CastDevice(
                  name: srv.name,
                  serviceName: srv.name,
                  host: ip.address.address,
                  port: srv.port));
            }
          }
          return;
        }
        results.add(CastDevice(
          serviceName: event.service!.name,
          name: name,
          port: port,
          host: host,
          extras: event.service!.attributes ?? {},
        ));
      }
    });

    await discovery.start();
    await Future.delayed(timeout);
    await discovery.stop();
    client.stop();

    return _dedupe(results);
  }

  Stream<List<CastDevice>> searchStream({
    Duration timeout = const Duration(seconds: 5),
  }) async* {
    final results = <CastDevice>[];
    final discovery = BonsoirDiscovery(type: _domain);
    await discovery.ready;
    await client.start();

    final controller = StreamController<List<CastDevice>>();

    discovery.eventStream!.listen((event) async {
      if (event.type == BonsoirDiscoveryEventType.DISCOVERY_SERVICE_RESOLVED ||
          event.type == BonsoirDiscoveryEventType.DISCOVERY_SERVICE_FOUND) {
        if (event.service == null || event.service?.attributes == null) {
          return;
        }

        final port = event.service!.port;
        final host = event.service?.toJson()['service.ip'];
        String name = [
          event.service?.attributes?['md'],
          event.service?.attributes?['fn']
        ].whereType<String>().join(' - ');
        if (name.isEmpty) {
          name = event.service!.name;
        }

        if (host == null) {
          await for (SrvResourceRecord srv in client.lookup<SrvResourceRecord>(
              ResourceRecordQuery.service(
                  event.service!.name + "._googlecast._tcp.local"))) {
            await for (IPAddressResourceRecord ip
                in client.lookup<IPAddressResourceRecord>(
                    ResourceRecordQuery.addressIPv4(srv.target))) {
              final device = CastDevice(
                name: srv.name,
                serviceName: srv.name,
                host: ip.address.address,
                port: srv.port,
              );
              results.add(device);
              controller.add(_dedupe(results)); // Emit updated list
            }
          }
          return;
        }

        results.add(
          CastDevice(
            serviceName: event.service!.name,
            name: name,
            port: port,
            host: host,
            extras: event.service!.attributes ?? {},
          ),
        );
        controller.add(_dedupe(results)); // Emit updated list
      }
    });
    await discovery.start();
    unawaited(Future.delayed(timeout).then((value) async {
      controller.add(_dedupe(results));
      controller.close();
      await discovery.stop();
      client.stop();
    }));

    yield* controller.stream;
  }
}

//function that dedupes results
List<CastDevice> _dedupe(List<CastDevice> results) {
  final resultsMap = <String, CastDevice>{};
  for (final result in results) {
    final key = '${result.host}:${result.port}';
    if (resultsMap.containsKey(key)) {
      if (result.extras.isNotEmpty) {
        resultsMap[key] = result;
      }
    } else {
      resultsMap[key] = result;
    }
  }
  return resultsMap.values.toList();
}
