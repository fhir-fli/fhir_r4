// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Describes the type of a metric calibration.
enum DeviceMetricCalibrationType {
  /// Display: Unspecified
  /// Definition: Metric calibration method has not been identified.
  unspecified('unspecified'),

  /// Display: Offset
  /// Definition: Offset metric calibration method.
  offset('offset'),

  /// Display: Gain
  /// Definition: Gain metric calibration method.
  gain('gain'),

  /// Display: Two Point
  /// Definition: Two-point metric calibration method.
  two_point('two-point'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const DeviceMetricCalibrationType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [DeviceMetricCalibrationType] instances.
  static DeviceMetricCalibrationType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceMetricCalibrationType.elementOnly.withElement(
        element,
      );
    }
    return DeviceMetricCalibrationType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  DeviceMetricCalibrationType withElement(Element? newElement) {
    return DeviceMetricCalibrationType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
