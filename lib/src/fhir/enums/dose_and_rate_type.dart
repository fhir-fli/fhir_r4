/// The kind of dose or rate specified.
enum DoseAndRateType {
  /// Display: Calculated
  /// Definition: The dose specified is calculated by the prescriber or the system.
  calculated,

  /// Display: Ordered
  /// Definition: The dose specified is as ordered by the prescriber.
  ordered,
  ;

  @override
  String toString() {
    switch (this) {
      case calculated:
        return 'calculated';
      case ordered:
        return 'ordered';
    }
  }

  /// Returns a [String] from a [DoseAndRateType] enum.
  String toJson() => toString();

  /// Returns a [DoseAndRateType] from a [String] enum.
  static DoseAndRateType fromString(String str) {
    switch (str) {
      case 'calculated':
        return DoseAndRateType.calculated;
      case 'ordered':
        return DoseAndRateType.ordered;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [DoseAndRateType] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static DoseAndRateType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
