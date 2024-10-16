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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const DeviceMetricCalibrationType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static DeviceMetricCalibrationType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceMetricCalibrationType.elementOnly.withElement(element);
    }
    return DeviceMetricCalibrationType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  DeviceMetricCalibrationType withElement(Element? newElement) {
    return DeviceMetricCalibrationType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
