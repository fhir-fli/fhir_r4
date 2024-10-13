/// Indicates the status of the care team.
enum CareTeamStatus {
  /// Display: Proposed
  /// Definition: The care team has been drafted and proposed, but not yet participating in the coordination and delivery of patient care.
  proposed,

  /// Display: Active
  /// Definition: The care team is currently participating in the coordination and delivery of care.
  active,

  /// Display: Suspended
  /// Definition: The care team is temporarily on hold or suspended and not participating in the coordination and delivery of care.
  suspended,

  /// Display: Inactive
  /// Definition: The care team was, but is no longer, participating in the coordination and delivery of care.
  inactive,

  /// Display: Entered in Error
  /// Definition: The care team should have never existed.
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

  /// Returns a [String] from a [CareTeamStatus] enum.
  String toJson() => toString();

  /// Returns a [CareTeamStatus] from a [String] enum.
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

  /// Returns a [CareTeamStatus] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static CareTeamStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
