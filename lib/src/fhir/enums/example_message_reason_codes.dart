/// Example Message Reasons. These are the set of codes that might be used an updating an encounter using admin-update.
enum ExampleMessageReasonCodes {
  /// Display: Admit
  /// Definition: The patient has been admitted.
  admit,

  /// Display: Discharge
  /// Definition: The patient has been discharged.
  discharge,

  /// Display: Absent
  /// Definition: The patient has temporarily left the institution.
  absent,

  /// Display: Returned
  /// Definition: The patient has returned from a temporary absence.
  return_,

  /// Display: Moved
  /// Definition: The patient has been moved to a new location.
  moved,

  /// Display: Edit
  /// Definition: Encounter details have been updated (e.g. to correct a coding error).
  edit,
  ;

  @override
  String toString() {
    switch (this) {
      case admit:
        return 'admit';
      case discharge:
        return 'discharge';
      case absent:
        return 'absent';
      case return_:
        return 'return';
      case moved:
        return 'moved';
      case edit:
        return 'edit';
    }
  }

  /// Returns a [String] from a [ExampleMessageReasonCodes] enum.
  String toJson() => toString();

  /// Returns a [ExampleMessageReasonCodes] from a [String] enum.
  static ExampleMessageReasonCodes fromString(String str) {
    switch (str) {
      case 'admit':
        return ExampleMessageReasonCodes.admit;
      case 'discharge':
        return ExampleMessageReasonCodes.discharge;
      case 'absent':
        return ExampleMessageReasonCodes.absent;
      case 'return':
        return ExampleMessageReasonCodes.return_;
      case 'moved':
        return ExampleMessageReasonCodes.moved;
      case 'edit':
        return ExampleMessageReasonCodes.edit;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ExampleMessageReasonCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ExampleMessageReasonCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
