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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const DeviceMetricCategory(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static DeviceMetricCategory fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceMetricCategory.elementOnly.withElement(element);
    }
    return DeviceMetricCategory.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  DeviceMetricCategory withElement(Element? newElement) {
    return DeviceMetricCategory.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
