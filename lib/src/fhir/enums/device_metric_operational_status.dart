// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

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

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const DeviceMetricOperationalStatus(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [DeviceMetricOperationalStatus] instances.
  static DeviceMetricOperationalStatus fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceMetricOperationalStatus.elementOnly.withElement(element);
    }
    return DeviceMetricOperationalStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  DeviceMetricOperationalStatus withElement(Element? newElement) {
    return DeviceMetricOperationalStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
