import 'package:json_annotation/json_annotation.dart';

/// Medication Status Codes
enum MedicationStatusCodes {
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
    switch (this) {
      case active:
        return 'active';
      case inactive:
        return 'inactive';
      case entered_in_error:
        return 'entered-in-error';
    }
  }

  String toJson() => toString();
  MedicationStatusCodes fromString(String str) {
    switch (str) {
      case 'active':
        return MedicationStatusCodes.active;
      case 'inactive':
        return MedicationStatusCodes.inactive;
      case 'entered-in-error':
        return MedicationStatusCodes.entered_in_error;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  MedicationStatusCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
