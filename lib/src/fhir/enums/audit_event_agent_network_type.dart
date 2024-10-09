import 'package:json_annotation/json_annotation.dart';

/// The type of network access point of this agent in the audit event.
enum AuditEventAgentNetworkType {
  /// Display: Machine Name
  /// Definition: The machine name, including DNS name.
  @JsonValue('1')
  value1,

  /// Display: IP Address
  /// Definition: The assigned Internet Protocol (IP) address.
  @JsonValue('2')
  value2,

  /// Display: Telephone Number
  /// Definition: The assigned telephone number.
  @JsonValue('3')
  value3,

  /// Display: Email address
  /// Definition: The assigned email address.
  @JsonValue('4')
  value4,

  /// Display: URI
  /// Definition: URI (User directory, HTTP-PUT, ftp, etc.).
  @JsonValue('5')
  value5,
  ;

  @override
  String toString() {
    switch (this) {
      case value1:
        return '1';
      case value2:
        return '2';
      case value3:
        return '3';
      case value4:
        return '4';
      case value5:
        return '5';
    }
  }

  String toJson() => toString();
  static AuditEventAgentNetworkType fromString(String str) {
    switch (str) {
      case '1':
        return AuditEventAgentNetworkType.value1;
      case '2':
        return AuditEventAgentNetworkType.value2;
      case '3':
        return AuditEventAgentNetworkType.value3;
      case '4':
        return AuditEventAgentNetworkType.value4;
      case '5':
        return AuditEventAgentNetworkType.value5;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static AuditEventAgentNetworkType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
