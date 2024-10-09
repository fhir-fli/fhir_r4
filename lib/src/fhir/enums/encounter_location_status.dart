import 'package:json_annotation/json_annotation.dart';

/// The status of the location.
enum EncounterLocationStatus {
  /// Display: Planned
  /// Definition: The patient is planned to be moved to this location at some point in the future.
  @JsonValue('planned')
  planned,

  /// Display: Active
  /// Definition: The patient is currently at this location, or was between the period specified.  A system may update these records when the patient leaves the location to either reserved, or completed.
  @JsonValue('active')
  active,

  /// Display: Reserved
  /// Definition: This location is held empty for this patient.
  @JsonValue('reserved')
  reserved,

  /// Display: Completed
  /// Definition: The patient was at this location during the period specified.  Not to be used when the patient is currently at the location.
  @JsonValue('completed')
  completed,
  ;

  @override
  String toString() {
    switch (this) {
      case planned:
        return 'planned';
      case active:
        return 'active';
      case reserved:
        return 'reserved';
      case completed:
        return 'completed';
    }
  }

  String toJson() => toString();
  static EncounterLocationStatus fromString(String str) {
    switch (str) {
      case 'planned':
        return EncounterLocationStatus.planned;
      case 'active':
        return EncounterLocationStatus.active;
      case 'reserved':
        return EncounterLocationStatus.reserved;
      case 'completed':
        return EncounterLocationStatus.completed;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static EncounterLocationStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
