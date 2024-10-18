// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the validity of a dose relative to a particular recommended schedule. This value set is provided as a suggestive example.
enum ImmunizationEvaluationDoseStatusCodes {
  /// Display: Valid
  /// Definition: The dose counts toward fulfilling a path to immunity for a patient, providing protection against the target disease.
  valid('valid'),

  /// Display: Not valid
  /// Definition: The dose does not count toward fulfilling a path to immunity for a patient.
  notvalid('notvalid'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ImmunizationEvaluationDoseStatusCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ImmunizationEvaluationDoseStatusCodes] instances.
  static ImmunizationEvaluationDoseStatusCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationEvaluationDoseStatusCodes.elementOnly
          .withElement(element);
    }
    return ImmunizationEvaluationDoseStatusCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ImmunizationEvaluationDoseStatusCodes withElement(Element? newElement) {
    return ImmunizationEvaluationDoseStatusCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
