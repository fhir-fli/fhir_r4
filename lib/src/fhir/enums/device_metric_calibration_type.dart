/// Describes the type of a metric calibration.
enum DeviceMetricCalibrationType {
  /// Display: Unspecified
  /// Definition: Metric calibration method has not been identified.
  unspecified,

  /// Display: Offset
  /// Definition: Offset metric calibration method.
  offset,

  /// Display: Gain
  /// Definition: Gain metric calibration method.
  gain,

  /// Display: Two Point
  /// Definition: Two-point metric calibration method.
  two_point,
  ;

  @override
  String toString() {
    switch (this) {
      case unspecified:
        return 'unspecified';
      case offset:
        return 'offset';
      case gain:
        return 'gain';
      case two_point:
        return 'two-point';
    }
  }

  /// Returns a [String] from a [DeviceMetricCalibrationType] enum.
  String toJson() => toString();

  /// Returns a [DeviceMetricCalibrationType] from a [String] enum.
  static DeviceMetricCalibrationType fromString(String str) {
    switch (str) {
      case 'unspecified':
        return DeviceMetricCalibrationType.unspecified;
      case 'offset':
        return DeviceMetricCalibrationType.offset;
      case 'gain':
        return DeviceMetricCalibrationType.gain;
      case 'two-point':
        return DeviceMetricCalibrationType.two_point;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [DeviceMetricCalibrationType] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static DeviceMetricCalibrationType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
