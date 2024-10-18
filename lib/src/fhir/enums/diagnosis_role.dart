// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set defines a set of codes that can be used to express the role of a diagnosis on the Encounter or EpisodeOfCare record.
enum DiagnosisRole {
  /// Display: Admission diagnosis
  /// Definition:
  AD('AD'),

  /// Display: Discharge diagnosis
  /// Definition:
  DD('DD'),

  /// Display: Chief complaint
  /// Definition:
  CC('CC'),

  /// Display: Comorbidity diagnosis
  /// Definition:
  CM('CM'),

  /// Display: pre-op diagnosis
  /// Definition:
  pre_op('pre-op'),

  /// Display: post-op diagnosis
  /// Definition:
  post_op('post-op'),

  /// Display: Billing
  /// Definition:
  billing('billing'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const DiagnosisRole(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [DiagnosisRole] instances.
  static DiagnosisRole fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DiagnosisRole.elementOnly.withElement(element);
    }
    return DiagnosisRole.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  DiagnosisRole withElement(Element? newElement) {
    return DiagnosisRole.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
