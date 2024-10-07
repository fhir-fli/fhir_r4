import 'package:json_annotation/json_annotation.dart';

/// The type of process where the audit event originated from.
enum AuditEventSourceType {
  /// Display: User Device
  /// Definition: End-user display device, diagnostic device.
  @JsonValue('1')
  value1,
  /// Display: Data Interface
  /// Definition: Data acquisition device or instrument.
  @JsonValue('2')
  value2,
  /// Display: Web Server
  /// Definition: Web Server process or thread.
  @JsonValue('3')
  value3,
  /// Display: Application Server
  /// Definition: Application Server process or thread.
  @JsonValue('4')
  value4,
  /// Display: Database Server
  /// Definition: Database Server process or thread.
  @JsonValue('5')
  value5,
  /// Display: Security Server
  /// Definition: Security server, e.g. a domain controller.
  @JsonValue('6')
  value6,
  /// Display: Network Device
  /// Definition: ISO level 1-3 network component.
  @JsonValue('7')
  value7,
  /// Display: Network Router
  /// Definition: ISO level 4-6 operating software.
  @JsonValue('8')
  value8,
  /// Display: Other
  /// Definition: Other kind of device (defined by DICOM, but some other code/system can be used).
  @JsonValue('9')
  value9,
;

@override
  String toString() {
      switch(this) {
        case value1: return '1';
        case value2: return '2';
        case value3: return '3';
        case value4: return '4';
        case value5: return '5';
        case value6: return '6';
        case value7: return '7';
        case value8: return '8';
        case value9: return '9';
      }
      }
String toJson() => toString();
  AuditEventSourceType fromString(String str) {
    switch(str) {
      case '1': return AuditEventSourceType.value1;
      case '2': return AuditEventSourceType.value2;
      case '3': return AuditEventSourceType.value3;
      case '4': return AuditEventSourceType.value4;
      case '5': return AuditEventSourceType.value5;
      case '6': return AuditEventSourceType.value6;
      case '7': return AuditEventSourceType.value7;
      case '8': return AuditEventSourceType.value8;
      case '9': return AuditEventSourceType.value9;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 AuditEventSourceType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

