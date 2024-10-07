import 'package:json_annotation/json_annotation.dart';

/// Describes the type of a metric calibration.
enum DeviceMetricCalibrationType {
  /// Display: Unspecified
  /// Definition: Metric calibration method has not been identified.
  @JsonValue('unspecified')
  unspecified,
  /// Display: Offset
  /// Definition: Offset metric calibration method.
  @JsonValue('offset')
  offset,
  /// Display: Gain
  /// Definition: Gain metric calibration method.
  @JsonValue('gain')
  gain,
  /// Display: Two Point
  /// Definition: Two-point metric calibration method.
  @JsonValue('two-point')
  two_point,
;

@override
  String toString() {
      switch(this) {
        case unspecified: return 'unspecified';
        case offset: return 'offset';
        case gain: return 'gain';
        case two_point: return 'two-point';
      }
      }
String toJson() => toString();
  DeviceMetricCalibrationType fromString(String str) {
    switch(str) {
      case 'unspecified': return DeviceMetricCalibrationType.unspecified;
      case 'offset': return DeviceMetricCalibrationType.offset;
      case 'gain': return DeviceMetricCalibrationType.gain;
      case 'two-point': return DeviceMetricCalibrationType.two_point;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 DeviceMetricCalibrationType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

