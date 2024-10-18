// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// An example value set of Codified order entry details concepts. These concepts only make sense in the context of what is being ordered. This example is for a patient ventilation order
enum ServiceRequestOrderDetailsCodes {
  /// Display: Continuous positive airway pressure ventilation treatment (regime/therapy)
  /// Definition:
  value47545007('47545007'),

  /// Display: Pressure controlled ventilation (procedure)
  /// Definition:
  value286812008('286812008'),

  /// Display: Patient triggered inspiratory assistance (procedure)
  /// Definition:
  value243144002('243144002'),

  /// Display: Assisted controlled mandatory ventilation (procedure)
  /// Definition:
  value243150007('243150007'),

  /// Display: Synchronized intermittent mandatory ventilation (procedure)
  /// Definition:
  value59427005('59427005'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ServiceRequestOrderDetailsCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ServiceRequestOrderDetailsCodes] instances.
  static ServiceRequestOrderDetailsCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ServiceRequestOrderDetailsCodes.elementOnly.withElement(
        element,
      );
    }
    return ServiceRequestOrderDetailsCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ServiceRequestOrderDetailsCodes withElement(Element? newElement) {
    return ServiceRequestOrderDetailsCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
