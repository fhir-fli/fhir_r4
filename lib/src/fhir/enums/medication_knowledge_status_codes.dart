import 'package:json_annotation/json_annotation.dart';

/// MedicationKnowledge Status Codes
enum MedicationKnowledgeStatusCodes {
  /// Display: Active
  /// Definition: The medication is available for use.
  @JsonValue('active')
  active,
  /// Display: Inactive
  /// Definition: The medication is not available for use.
  @JsonValue('inactive')
  inactive,
  /// Display: Entered in Error
  /// Definition: The medication was entered in error.
  @JsonValue('entered-in-error')
  entered_in_error,
;

@override
  String toString() {
      switch(this) {
        case active: return 'active';
        case inactive: return 'inactive';
        case entered_in_error: return 'entered-in-error';
      }
      }
String toJson() => toString();
  MedicationKnowledgeStatusCodes fromString(String str) {
    switch(str) {
      case 'active': return MedicationKnowledgeStatusCodes.active;
      case 'inactive': return MedicationKnowledgeStatusCodes.inactive;
      case 'entered-in-error': return MedicationKnowledgeStatusCodes.entered_in_error;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 MedicationKnowledgeStatusCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

