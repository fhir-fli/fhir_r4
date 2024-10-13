/// Overall nature of the adverse event, e.g. real or potential.
enum AdverseEventActuality {
  /// Display: Adverse Event
  /// Definition: The adverse event actually happened regardless of whether anyone was affected or harmed.
  actual,

  /// Display: Potential Adverse Event
  /// Definition: A potential adverse event.
  potential,
  ;

  @override
  String toString() {
    switch (this) {
      case actual:
        return 'actual';
      case potential:
        return 'potential';
    }
  }

  /// Returns a [String] from a [AdverseEventActuality] enum.
  String toJson() => toString();

  /// Returns a [AdverseEventActuality] from a [String] enum.
  static AdverseEventActuality fromString(String str) {
    switch (str) {
      case 'actual':
        return AdverseEventActuality.actual;
      case 'potential':
        return AdverseEventActuality.potential;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [AdverseEventActuality] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static AdverseEventActuality fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
