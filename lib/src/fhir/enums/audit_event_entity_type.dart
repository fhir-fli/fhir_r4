import 'package:json_annotation/json_annotation.dart';

/// Code for the entity type involved in the audit event.
enum AuditEventEntityType {
  /// Display: Person
  /// Definition: Person
  @JsonValue('1')
  value1,
  /// Display: System Object
  /// Definition: System Object
  @JsonValue('2')
  value2,
  /// Display: Organization
  /// Definition: Organization
  @JsonValue('3')
  value3,
  /// Display: Other
  /// Definition: Other
  @JsonValue('4')
  value4,
  /// Display: Resource
  /// Definition: --- Abstract Type! ---This is the base resource type for everything.
  @JsonValue('Resource')
  Resource,
;

@override
  String toString() {
      switch(this) {
        case value1: return '1';
        case value2: return '2';
        case value3: return '3';
        case value4: return '4';
        case Resource: return 'Resource';
      }
      }
String toJson() => toString();
  AuditEventEntityType fromString(String str) {
    switch(str) {
      case '1': return AuditEventEntityType.value1;
      case '2': return AuditEventEntityType.value2;
      case '3': return AuditEventEntityType.value3;
      case '4': return AuditEventEntityType.value4;
      case 'Resource': return AuditEventEntityType.Resource;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 AuditEventEntityType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

