// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Describes the category of the metric.
enum DeviceMetricCategory {
  /// Display: Measurement
  /// Definition: DeviceObservations generated for this DeviceMetric are measured.
  measurement('measurement'),

  /// Display: Setting
  /// Definition: DeviceObservations generated for this DeviceMetric is a setting that will influence the behavior of the Device.
  setting('setting'),

  /// Display: Calculation
  /// Definition: DeviceObservations generated for this DeviceMetric are calculated.
  calculation('calculation'),

  /// Display: Unspecified
  /// Definition: The category of this DeviceMetric is unspecified.
  unspecified('unspecified'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const DeviceMetricCategory(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [DeviceMetricCategory] instances.
  static DeviceMetricCategory fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceMetricCategory.elementOnly.withElement(element);
    }
    return DeviceMetricCategory.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  DeviceMetricCategory withElement(Element? newElement) {
    return DeviceMetricCategory.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
