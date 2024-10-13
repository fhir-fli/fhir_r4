/// Describes the category of the metric.
enum DeviceMetricCategory {
  /// Display: Measurement
  /// Definition: DeviceObservations generated for this DeviceMetric are measured.
  measurement,

  /// Display: Setting
  /// Definition: DeviceObservations generated for this DeviceMetric is a setting that will influence the behavior of the Device.
  setting,

  /// Display: Calculation
  /// Definition: DeviceObservations generated for this DeviceMetric are calculated.
  calculation,

  /// Display: Unspecified
  /// Definition: The category of this DeviceMetric is unspecified.
  unspecified,
  ;

  @override
  String toString() {
    switch (this) {
      case measurement:
        return 'measurement';
      case setting:
        return 'setting';
      case calculation:
        return 'calculation';
      case unspecified:
        return 'unspecified';
    }
  }

  /// Returns a [String] from a [DeviceMetricCategory] enum.
  String toJson() => toString();

  /// Returns a [DeviceMetricCategory] from a [String] enum.
  static DeviceMetricCategory fromString(String str) {
    switch (str) {
      case 'measurement':
        return DeviceMetricCategory.measurement;
      case 'setting':
        return DeviceMetricCategory.setting;
      case 'calculation':
        return DeviceMetricCategory.calculation;
      case 'unspecified':
        return DeviceMetricCategory.unspecified;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [DeviceMetricCategory] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static DeviceMetricCategory fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
