import 'package:fhir_r4/fhir_r4.dart';

/// Describes the operational status of the DeviceMetric.
enum DeviceMetricOperationalStatus {
  /// Display: On
  /// Definition: The DeviceMetric is operating and will generate DeviceObservations.
  on_('on'),

  /// Display: Off
  /// Definition: The DeviceMetric is not operating.
  off('off'),

  /// Display: Standby
  /// Definition: The DeviceMetric is operating, but will not generate any DeviceObservations.
  standby('standby'),

  /// Display: Entered In Error
  /// Definition: The DeviceMetric was entered in error.
  entered_in_error('entered-in-error'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const DeviceMetricOperationalStatus(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static DeviceMetricOperationalStatus fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceMetricOperationalStatus.elementOnly.withElement(element);
    }
    return DeviceMetricOperationalStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  DeviceMetricOperationalStatus withElement(Element? newElement) {
    return DeviceMetricOperationalStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
