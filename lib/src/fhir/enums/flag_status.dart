/// Indicates whether this flag is active and needs to be displayed to a user, or whether it is no longer needed or was entered in error.
enum FlagStatus {
  /// Display: Active
  /// Definition: A current flag that should be displayed to a user. A system may use the category to determine which user roles should view the flag.
  active,

  /// Display: Inactive
  /// Definition: The flag no longer needs to be displayed.
  inactive,

  /// Display: Entered in Error
  /// Definition: The flag was added in error and should no longer be displayed.
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

  /// Returns a [String] from a [FlagStatus] enum.
  String toJson() => toString();

  /// Returns a [FlagStatus] from a [String] enum.
  static FlagStatus fromString(String str) {
    switch (str) {
      case 'active':
        return FlagStatus.active;
      case 'inactive':
        return FlagStatus.inactive;
      case 'entered-in-error':
        return FlagStatus.entered_in_error;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [FlagStatus] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static FlagStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
