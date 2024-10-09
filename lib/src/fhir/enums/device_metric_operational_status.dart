import 'package:json_annotation/json_annotation.dart';

/// Describes the operational status of the DeviceMetric.
enum DeviceMetricOperationalStatus {
  /// Display: On
  /// Definition: The DeviceMetric is operating and will generate DeviceObservations.
  @JsonValue('on')
  on_,

  /// Display: Off
  /// Definition: The DeviceMetric is not operating.
  @JsonValue('off')
  off,

  /// Display: Standby
  /// Definition: The DeviceMetric is operating, but will not generate any DeviceObservations.
  @JsonValue('standby')
  standby,

  /// Display: Entered In Error
  /// Definition: The DeviceMetric was entered in error.
  @JsonValue('entered-in-error')
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

  String toJson() => toString();
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

  static DeviceMetricOperationalStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
