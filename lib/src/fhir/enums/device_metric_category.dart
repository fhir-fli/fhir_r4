import 'package:json_annotation/json_annotation.dart';

/// Describes the category of the metric.
enum DeviceMetricCategory {
  /// Display: Measurement
  /// Definition: DeviceObservations generated for this DeviceMetric are measured.
  @JsonValue('measurement')
  measurement,
  /// Display: Setting
  /// Definition: DeviceObservations generated for this DeviceMetric is a setting that will influence the behavior of the Device.
  @JsonValue('setting')
  setting,
  /// Display: Calculation
  /// Definition: DeviceObservations generated for this DeviceMetric are calculated.
  @JsonValue('calculation')
  calculation,
  /// Display: Unspecified
  /// Definition: The category of this DeviceMetric is unspecified.
  @JsonValue('unspecified')
  unspecified,
;

@override
  String toString() {
      switch(this) {
        case measurement: return 'measurement';
        case setting: return 'setting';
        case calculation: return 'calculation';
        case unspecified: return 'unspecified';
      }
      }
String toJson() => toString();
  DeviceMetricCategory fromString(String str) {
    switch(str) {
      case 'measurement': return DeviceMetricCategory.measurement;
      case 'setting': return DeviceMetricCategory.setting;
      case 'calculation': return DeviceMetricCategory.calculation;
      case 'unspecified': return DeviceMetricCategory.unspecified;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 DeviceMetricCategory fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

