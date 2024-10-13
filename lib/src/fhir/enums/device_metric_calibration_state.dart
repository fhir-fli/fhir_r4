/// Describes the state of a metric calibration.
enum DeviceMetricCalibrationState {
  /// Display: Not Calibrated
  /// Definition: The metric has not been calibrated.
  not_calibrated,

  /// Display: Calibration Required
  /// Definition: The metric needs to be calibrated.
  calibration_required,

  /// Display: Calibrated
  /// Definition: The metric has been calibrated.
  calibrated,

  /// Display: Unspecified
  /// Definition: The state of calibration of this metric is unspecified.
  unspecified,
  ;

  @override
  String toString() {
    switch (this) {
      case not_calibrated:
        return 'not-calibrated';
      case calibration_required:
        return 'calibration-required';
      case calibrated:
        return 'calibrated';
      case unspecified:
        return 'unspecified';
    }
  }

  /// Returns a [String] from a [DeviceMetricCalibrationState] enum.
  String toJson() => toString();

  /// Returns a [DeviceMetricCalibrationState] from a [String] enum.
  static DeviceMetricCalibrationState fromString(String str) {
    switch (str) {
      case 'not-calibrated':
        return DeviceMetricCalibrationState.not_calibrated;
      case 'calibration-required':
        return DeviceMetricCalibrationState.calibration_required;
      case 'calibrated':
        return DeviceMetricCalibrationState.calibrated;
      case 'unspecified':
        return DeviceMetricCalibrationState.unspecified;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [DeviceMetricCalibrationState] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static DeviceMetricCalibrationState fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
