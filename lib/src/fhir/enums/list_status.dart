/// The current state of the list.
enum ListStatus {
  /// Display: Current
  /// Definition: The list is considered to be an active part of the patient's record.
  current,

  /// Display: Retired
  /// Definition: The list is "old" and should no longer be considered accurate or relevant.
  retired,

  /// Display: Entered In Error
  /// Definition: The list was never accurate.  It is retained for medico-legal purposes only.
  entered_in_error,
  ;

  @override
  String toString() {
    switch (this) {
      case current:
        return 'current';
      case retired:
        return 'retired';
      case entered_in_error:
        return 'entered-in-error';
    }
  }

  /// Returns a [String] from a [ListStatus] enum.
  String toJson() => toString();

  /// Returns a [ListStatus] from a [String] enum.
  static ListStatus fromString(String str) {
    switch (str) {
      case 'current':
        return ListStatus.current;
      case 'retired':
        return ListStatus.retired;
      case 'entered-in-error':
        return ListStatus.entered_in_error;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ListStatus] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ListStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
