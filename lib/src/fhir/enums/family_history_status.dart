import 'package:json_annotation/json_annotation.dart';

/// A code that identifies the status of the family history record.
enum FamilyHistoryStatus {
  /// Display: Partial
  /// Definition: Some health information is known and captured, but not complete - see notes for details.
  @JsonValue('partial')
  partial,

  /// Display: Completed
  /// Definition: All available related health information is captured as of the date (and possibly time) when the family member history was taken.
  @JsonValue('completed')
  completed,

  /// Display: Entered in Error
  /// Definition: This instance should not have been part of this patient's medical record.
  @JsonValue('entered-in-error')
  entered_in_error,

  /// Display: Health Unknown
  /// Definition: Health information for this family member is unavailable/unknown.
  @JsonValue('health-unknown')
  health_unknown,
  ;

  @override
  String toString() {
    switch (this) {
      case partial:
        return 'partial';
      case completed:
        return 'completed';
      case entered_in_error:
        return 'entered-in-error';
      case health_unknown:
        return 'health-unknown';
    }
  }

  String toJson() => toString();
  FamilyHistoryStatus fromString(String str) {
    switch (str) {
      case 'partial':
        return FamilyHistoryStatus.partial;
      case 'completed':
        return FamilyHistoryStatus.completed;
      case 'entered-in-error':
        return FamilyHistoryStatus.entered_in_error;
      case 'health-unknown':
        return FamilyHistoryStatus.health_unknown;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  FamilyHistoryStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
