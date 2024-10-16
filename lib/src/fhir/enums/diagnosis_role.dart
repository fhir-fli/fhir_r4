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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const DiagnosisRole(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static DiagnosisRole fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DiagnosisRole.elementOnly.withElement(element);
    }
    return DiagnosisRole.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  DiagnosisRole withElement(Element? newElement) {
    return DiagnosisRole.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
