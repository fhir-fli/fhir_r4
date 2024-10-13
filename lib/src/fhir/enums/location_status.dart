/// Indicates whether the location is still in use.
enum LocationStatus {
  /// Display: Active
  /// Definition: The location is operational.
  active,

  /// Display: Suspended
  /// Definition: The location is temporarily closed.
  suspended,

  /// Display: Inactive
  /// Definition: The location is no longer used.
  inactive,
  ;

  @override
  String toString() {
    switch (this) {
      case active:
        return 'active';
      case suspended:
        return 'suspended';
      case inactive:
        return 'inactive';
    }
  }

  /// Returns a [String] from a [LocationStatus] enum.
  String toJson() => toString();

  /// Returns a [LocationStatus] from a [String] enum.
  static LocationStatus fromString(String str) {
    switch (str) {
      case 'active':
        return LocationStatus.active;
      case 'suspended':
        return LocationStatus.suspended;
      case 'inactive':
        return LocationStatus.inactive;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [LocationStatus] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static LocationStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
