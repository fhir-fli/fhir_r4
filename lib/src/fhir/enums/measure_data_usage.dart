/// The intended usage for supplemental data elements in the measure.
enum MeasureDataUsage {
  /// Display: Supplemental Data
  /// Definition: The data is intended to be provided as additional information alongside the measure results.
  supplemental_data,

  /// Display: Risk Adjustment Factor
  /// Definition: The data is intended to be used to calculate and apply a risk adjustment model for the measure.
  risk_adjustment_factor,
  ;

  @override
  String toString() {
    switch (this) {
      case supplemental_data:
        return 'supplemental-data';
      case risk_adjustment_factor:
        return 'risk-adjustment-factor';
    }
  }

  /// Returns a [String] from a [MeasureDataUsage] enum.
  String toJson() => toString();

  /// Returns a [MeasureDataUsage] from a [String] enum.
  static MeasureDataUsage fromString(String str) {
    switch (str) {
      case 'supplemental-data':
        return MeasureDataUsage.supplemental_data;
      case 'risk-adjustment-factor':
        return MeasureDataUsage.risk_adjustment_factor;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [MeasureDataUsage] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static MeasureDataUsage fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
