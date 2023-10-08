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

/// Always pass a version of the protocol for future compatibility
/// requirements.
class CastMessage_ProtocolVersion extends $pb.ProtobufEnum {
  static const CastMessage_ProtocolVersion CASTV2_1_0 = CastMessage_ProtocolVersion._(0, _omitEnumNames ? '' : 'CASTV2_1_0');

  static const $core.List<CastMessage_ProtocolVersion> values = <CastMessage_ProtocolVersion> [
    CASTV2_1_0,
  ];

  static final $core.Map<$core.int, CastMessage_ProtocolVersion> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CastMessage_ProtocolVersion? valueOf($core.int value) => _byValue[value];

  const CastMessage_ProtocolVersion._($core.int v, $core.String n) : super(v, n);
}

/// What type of data do we have in this message.
class CastMessage_PayloadType extends $pb.ProtobufEnum {
  static const CastMessage_PayloadType STRING = CastMessage_PayloadType._(0, _omitEnumNames ? '' : 'STRING');
  static const CastMessage_PayloadType BINARY = CastMessage_PayloadType._(1, _omitEnumNames ? '' : 'BINARY');

  static const $core.List<CastMessage_PayloadType> values = <CastMessage_PayloadType> [
    STRING,
    BINARY,
  ];

  static final $core.Map<$core.int, CastMessage_PayloadType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CastMessage_PayloadType? valueOf($core.int value) => _byValue[value];

  const CastMessage_PayloadType._($core.int v, $core.String n) : super(v, n);
}

class AuthError_ErrorType extends $pb.ProtobufEnum {
  static const AuthError_ErrorType INTERNAL_ERROR = AuthError_ErrorType._(0, _omitEnumNames ? '' : 'INTERNAL_ERROR');
  static const AuthError_ErrorType NO_TLS = AuthError_ErrorType._(1, _omitEnumNames ? '' : 'NO_TLS');

  static const $core.List<AuthError_ErrorType> values = <AuthError_ErrorType> [
    INTERNAL_ERROR,
    NO_TLS,
  ];

  static final $core.Map<$core.int, AuthError_ErrorType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AuthError_ErrorType? valueOf($core.int value) => _byValue[value];

  const AuthError_ErrorType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
