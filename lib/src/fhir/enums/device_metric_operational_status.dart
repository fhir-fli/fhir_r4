/// Describes the operational status of the DeviceMetric.
enum DeviceMetricOperationalStatus {
  /// Display: On
  /// Definition: The DeviceMetric is operating and will generate DeviceObservations.
  on_,

  /// Display: Off
  /// Definition: The DeviceMetric is not operating.
  off,

  /// Display: Standby
  /// Definition: The DeviceMetric is operating, but will not generate any DeviceObservations.
  standby,

  /// Display: Entered In Error
  /// Definition: The DeviceMetric was entered in error.
  entered_in_error,
  ;

  @override
  String toString() {
    switch (this) {
      case on_:
        return 'on';
      case off:
        return 'off';
      case standby:
        return 'standby';
      case entered_in_error:
        return 'entered-in-error';
    }
  }

  /// Returns a [String] from a [DeviceMetricOperationalStatus] enum.
  String toJson() => toString();

  /// Returns a [DeviceMetricOperationalStatus] from a [String] enum.
  static DeviceMetricOperationalStatus fromString(String str) {
    switch (str) {
      case 'on':
        return DeviceMetricOperationalStatus.on_;
      case 'off':
        return DeviceMetricOperationalStatus.off;
      case 'standby':
        return DeviceMetricOperationalStatus.standby;
      case 'entered-in-error':
        return DeviceMetricOperationalStatus.entered_in_error;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [DeviceMetricOperationalStatus] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static DeviceMetricOperationalStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
