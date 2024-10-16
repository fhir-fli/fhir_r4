import 'package:fhir_r4/fhir_r4.dart';

/// High-level categorization of the definition, used for searching, sorting, and filtering.
enum DefinitionTopic {
  /// Display: Treatment
  /// Definition: The definition is related to treatment of the patient.
  treatment('treatment'),

  /// Display: Education
  /// Definition: The definition is related to education of the patient.
  education('education'),

  /// Display: Assessment
  /// Definition: The definition is related to assessment of the patient.
  assessment('assessment'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const DefinitionTopic(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static DefinitionTopic fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DefinitionTopic.elementOnly.withElement(element);
    }
    return DefinitionTopic.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  DefinitionTopic withElement(Element? newElement) {
    return DefinitionTopic.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
