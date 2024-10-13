/// Extra monitoring defined for a Medicinal Product.
enum AdditionalMonitoring {
  /// Display: Requirement for Black Triangle Monitoring
  /// Definition: Requirement for Black Triangle Monitoring
  BlackTriangleMonitoring,
  ;

  @override
  String toString() {
    switch (this) {
      case BlackTriangleMonitoring:
        return 'BlackTriangleMonitoring';
    }
  }

  /// Returns a [String] from a [AdditionalMonitoring] enum.
  String toJson() => toString();

  /// Returns a [AdditionalMonitoring] from a [String] enum.
  static AdditionalMonitoring fromString(String str) {
    switch (str) {
      case 'BlackTriangleMonitoring':
        return AdditionalMonitoring.BlackTriangleMonitoring;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [AdditionalMonitoring] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static AdditionalMonitoring fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
