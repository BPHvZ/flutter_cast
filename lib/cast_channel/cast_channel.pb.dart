//
//  Generated code. Do not modify.
//  source: cast_channel.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'cast_channel.pbenum.dart';

export 'cast_channel.pbenum.dart';

class CastMessage extends $pb.GeneratedMessage {
  factory CastMessage({
    CastMessage_ProtocolVersion? protocolVersion,
    $core.String? sourceId,
    $core.String? destinationId,
    $core.String? namespace,
    CastMessage_PayloadType? payloadType,
    $core.String? payloadUtf8,
    $core.List<$core.int>? payloadBinary,
  }) {
    final $result = create();
    if (protocolVersion != null) {
      $result.protocolVersion = protocolVersion;
    }
    if (sourceId != null) {
      $result.sourceId = sourceId;
    }
    if (destinationId != null) {
      $result.destinationId = destinationId;
    }
    if (namespace != null) {
      $result.namespace = namespace;
    }
    if (payloadType != null) {
      $result.payloadType = payloadType;
    }
    if (payloadUtf8 != null) {
      $result.payloadUtf8 = payloadUtf8;
    }
    if (payloadBinary != null) {
      $result.payloadBinary = payloadBinary;
    }
    return $result;
  }
  CastMessage._() : super();
  factory CastMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CastMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CastMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'extensions.api.cast_channel'), createEmptyInstance: create)
    ..e<CastMessage_ProtocolVersion>(1, _omitFieldNames ? '' : 'protocolVersion', $pb.PbFieldType.QE, defaultOrMaker: CastMessage_ProtocolVersion.CASTV2_1_0, valueOf: CastMessage_ProtocolVersion.valueOf, enumValues: CastMessage_ProtocolVersion.values)
    ..aQS(2, _omitFieldNames ? '' : 'sourceId')
    ..aQS(3, _omitFieldNames ? '' : 'destinationId')
    ..aQS(4, _omitFieldNames ? '' : 'namespace')
    ..e<CastMessage_PayloadType>(5, _omitFieldNames ? '' : 'payloadType', $pb.PbFieldType.QE, defaultOrMaker: CastMessage_PayloadType.STRING, valueOf: CastMessage_PayloadType.valueOf, enumValues: CastMessage_PayloadType.values)
    ..aOS(6, _omitFieldNames ? '' : 'payloadUtf8')
    ..a<$core.List<$core.int>>(7, _omitFieldNames ? '' : 'payloadBinary', $pb.PbFieldType.OY)
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CastMessage clone() => CastMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CastMessage copyWith(void Function(CastMessage) updates) => super.copyWith((message) => updates(message as CastMessage)) as CastMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CastMessage create() => CastMessage._();
  CastMessage createEmptyInstance() => create();
  static $pb.PbList<CastMessage> createRepeated() => $pb.PbList<CastMessage>();
  @$core.pragma('dart2js:noInline')
  static CastMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CastMessage>(create);
  static CastMessage? _defaultInstance;

  @$pb.TagNumber(1)
  CastMessage_ProtocolVersion get protocolVersion => $_getN(0);
  @$pb.TagNumber(1)
  set protocolVersion(CastMessage_ProtocolVersion v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasProtocolVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearProtocolVersion() => clearField(1);

  ///  source and destination ids identify the origin and destination of the
  ///  message.  They are used to route messages between endpoints that share a
  ///  device-to-device channel.
  ///
  ///  For messages between applications:
  ///    - The sender application id is a unique identifier generated on behalf of
  ///      the sender application.
  ///    - The receiver id is always the the session id for the application.
  ///
  ///  For messages to or from the sender or receiver platform, the special ids
  ///  'sender-0' and 'receiver-0' can be used.
  ///
  ///  For messages intended for all endpoints using a given channel, the
  ///  wildcard destination_id '*' can be used.
  @$pb.TagNumber(2)
  $core.String get sourceId => $_getSZ(1);
  @$pb.TagNumber(2)
  set sourceId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSourceId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSourceId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get destinationId => $_getSZ(2);
  @$pb.TagNumber(3)
  set destinationId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDestinationId() => $_has(2);
  @$pb.TagNumber(3)
  void clearDestinationId() => clearField(3);

  /// This is the core multiplexing key.  All messages are sent on a namespace
  /// and endpoints sharing a channel listen on one or more namespaces.  The
  /// namespace defines the protocol and semantics of the message.
  @$pb.TagNumber(4)
  $core.String get namespace => $_getSZ(3);
  @$pb.TagNumber(4)
  set namespace($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNamespace() => $_has(3);
  @$pb.TagNumber(4)
  void clearNamespace() => clearField(4);

  @$pb.TagNumber(5)
  CastMessage_PayloadType get payloadType => $_getN(4);
  @$pb.TagNumber(5)
  set payloadType(CastMessage_PayloadType v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasPayloadType() => $_has(4);
  @$pb.TagNumber(5)
  void clearPayloadType() => clearField(5);

  /// Depending on payload_type, exactly one of the following optional fields
  /// will always be set.
  @$pb.TagNumber(6)
  $core.String get payloadUtf8 => $_getSZ(5);
  @$pb.TagNumber(6)
  set payloadUtf8($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPayloadUtf8() => $_has(5);
  @$pb.TagNumber(6)
  void clearPayloadUtf8() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.int> get payloadBinary => $_getN(6);
  @$pb.TagNumber(7)
  set payloadBinary($core.List<$core.int> v) { $_setBytes(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPayloadBinary() => $_has(6);
  @$pb.TagNumber(7)
  void clearPayloadBinary() => clearField(7);
}

/// Messages for authentication protocol between a sender and a receiver.
class AuthChallenge extends $pb.GeneratedMessage {
  factory AuthChallenge() => create();
  AuthChallenge._() : super();
  factory AuthChallenge.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthChallenge.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AuthChallenge', package: const $pb.PackageName(_omitMessageNames ? '' : 'extensions.api.cast_channel'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthChallenge clone() => AuthChallenge()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthChallenge copyWith(void Function(AuthChallenge) updates) => super.copyWith((message) => updates(message as AuthChallenge)) as AuthChallenge;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthChallenge create() => AuthChallenge._();
  AuthChallenge createEmptyInstance() => create();
  static $pb.PbList<AuthChallenge> createRepeated() => $pb.PbList<AuthChallenge>();
  @$core.pragma('dart2js:noInline')
  static AuthChallenge getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthChallenge>(create);
  static AuthChallenge? _defaultInstance;
}

class AuthResponse extends $pb.GeneratedMessage {
  factory AuthResponse({
    $core.List<$core.int>? signature,
    $core.List<$core.int>? clientAuthCertificate,
    $core.Iterable<$core.List<$core.int>>? clientCa,
  }) {
    final $result = create();
    if (signature != null) {
      $result.signature = signature;
    }
    if (clientAuthCertificate != null) {
      $result.clientAuthCertificate = clientAuthCertificate;
    }
    if (clientCa != null) {
      $result.clientCa.addAll(clientCa);
    }
    return $result;
  }
  AuthResponse._() : super();
  factory AuthResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AuthResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'extensions.api.cast_channel'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'signature', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'clientAuthCertificate', $pb.PbFieldType.QY)
    ..p<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'clientCa', $pb.PbFieldType.PY)
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthResponse clone() => AuthResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthResponse copyWith(void Function(AuthResponse) updates) => super.copyWith((message) => updates(message as AuthResponse)) as AuthResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthResponse create() => AuthResponse._();
  AuthResponse createEmptyInstance() => create();
  static $pb.PbList<AuthResponse> createRepeated() => $pb.PbList<AuthResponse>();
  @$core.pragma('dart2js:noInline')
  static AuthResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthResponse>(create);
  static AuthResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get signature => $_getN(0);
  @$pb.TagNumber(1)
  set signature($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSignature() => $_has(0);
  @$pb.TagNumber(1)
  void clearSignature() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get clientAuthCertificate => $_getN(1);
  @$pb.TagNumber(2)
  set clientAuthCertificate($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasClientAuthCertificate() => $_has(1);
  @$pb.TagNumber(2)
  void clearClientAuthCertificate() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.List<$core.int>> get clientCa => $_getList(2);
}

class AuthError extends $pb.GeneratedMessage {
  factory AuthError({
    AuthError_ErrorType? errorType,
  }) {
    final $result = create();
    if (errorType != null) {
      $result.errorType = errorType;
    }
    return $result;
  }
  AuthError._() : super();
  factory AuthError.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthError.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AuthError', package: const $pb.PackageName(_omitMessageNames ? '' : 'extensions.api.cast_channel'), createEmptyInstance: create)
    ..e<AuthError_ErrorType>(1, _omitFieldNames ? '' : 'errorType', $pb.PbFieldType.QE, defaultOrMaker: AuthError_ErrorType.INTERNAL_ERROR, valueOf: AuthError_ErrorType.valueOf, enumValues: AuthError_ErrorType.values)
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthError clone() => AuthError()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthError copyWith(void Function(AuthError) updates) => super.copyWith((message) => updates(message as AuthError)) as AuthError;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthError create() => AuthError._();
  AuthError createEmptyInstance() => create();
  static $pb.PbList<AuthError> createRepeated() => $pb.PbList<AuthError>();
  @$core.pragma('dart2js:noInline')
  static AuthError getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthError>(create);
  static AuthError? _defaultInstance;

  @$pb.TagNumber(1)
  AuthError_ErrorType get errorType => $_getN(0);
  @$pb.TagNumber(1)
  set errorType(AuthError_ErrorType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasErrorType() => $_has(0);
  @$pb.TagNumber(1)
  void clearErrorType() => clearField(1);
}

class DeviceAuthMessage extends $pb.GeneratedMessage {
  factory DeviceAuthMessage({
    AuthChallenge? challenge,
    AuthResponse? response,
    AuthError? error,
  }) {
    final $result = create();
    if (challenge != null) {
      $result.challenge = challenge;
    }
    if (response != null) {
      $result.response = response;
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  DeviceAuthMessage._() : super();
  factory DeviceAuthMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeviceAuthMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeviceAuthMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'extensions.api.cast_channel'), createEmptyInstance: create)
    ..aOM<AuthChallenge>(1, _omitFieldNames ? '' : 'challenge', subBuilder: AuthChallenge.create)
    ..aOM<AuthResponse>(2, _omitFieldNames ? '' : 'response', subBuilder: AuthResponse.create)
    ..aOM<AuthError>(3, _omitFieldNames ? '' : 'error', subBuilder: AuthError.create)
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeviceAuthMessage clone() => DeviceAuthMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeviceAuthMessage copyWith(void Function(DeviceAuthMessage) updates) => super.copyWith((message) => updates(message as DeviceAuthMessage)) as DeviceAuthMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeviceAuthMessage create() => DeviceAuthMessage._();
  DeviceAuthMessage createEmptyInstance() => create();
  static $pb.PbList<DeviceAuthMessage> createRepeated() => $pb.PbList<DeviceAuthMessage>();
  @$core.pragma('dart2js:noInline')
  static DeviceAuthMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeviceAuthMessage>(create);
  static DeviceAuthMessage? _defaultInstance;

  /// Request fields
  @$pb.TagNumber(1)
  AuthChallenge get challenge => $_getN(0);
  @$pb.TagNumber(1)
  set challenge(AuthChallenge v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasChallenge() => $_has(0);
  @$pb.TagNumber(1)
  void clearChallenge() => clearField(1);
  @$pb.TagNumber(1)
  AuthChallenge ensureChallenge() => $_ensure(0);

  /// Response fields
  @$pb.TagNumber(2)
  AuthResponse get response => $_getN(1);
  @$pb.TagNumber(2)
  set response(AuthResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasResponse() => $_has(1);
  @$pb.TagNumber(2)
  void clearResponse() => clearField(2);
  @$pb.TagNumber(2)
  AuthResponse ensureResponse() => $_ensure(1);

  @$pb.TagNumber(3)
  AuthError get error => $_getN(2);
  @$pb.TagNumber(3)
  set error(AuthError v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasError() => $_has(2);
  @$pb.TagNumber(3)
  void clearError() => clearField(3);
  @$pb.TagNumber(3)
  AuthError ensureError() => $_ensure(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
