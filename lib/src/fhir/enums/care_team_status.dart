import 'package:json_annotation/json_annotation.dart';

/// Indicates the status of the care team.
enum CareTeamStatus {
  /// Display: Proposed
  /// Definition: The care team has been drafted and proposed, but not yet participating in the coordination and delivery of patient care.
  @JsonValue('proposed')
  proposed,

  /// Display: Active
  /// Definition: The care team is currently participating in the coordination and delivery of care.
  @JsonValue('active')
  active,

  /// Display: Suspended
  /// Definition: The care team is temporarily on hold or suspended and not participating in the coordination and delivery of care.
  @JsonValue('suspended')
  suspended,

  /// Display: Inactive
  /// Definition: The care team was, but is no longer, participating in the coordination and delivery of care.
  @JsonValue('inactive')
  inactive,

  /// Display: Entered in Error
  /// Definition: The care team should have never existed.
  @JsonValue('entered-in-error')
  entered_in_error,
  ;

  @override
  String toString() {
    switch (this) {
      case proposed:
        return 'proposed';
      case active:
        return 'active';
      case suspended:
        return 'suspended';
      case inactive:
        return 'inactive';
      case entered_in_error:
        return 'entered-in-error';
    }
  }

  String toJson() => toString();
  static CareTeamStatus fromString(String str) {
    switch (str) {
      case 'proposed':
        return CareTeamStatus.proposed;
      case 'active':
        return CareTeamStatus.active;
      case 'suspended':
        return CareTeamStatus.suspended;
      case 'inactive':
        return CareTeamStatus.inactive;
      case 'entered-in-error':
        return CareTeamStatus.entered_in_error;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static CareTeamStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
