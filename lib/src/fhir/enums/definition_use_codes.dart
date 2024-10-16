import 'package:fhir_r4/fhir_r4.dart';

/// Structure Definition Use Codes / Keywords
enum DefinitionUseCodes {
  /// Display: FHIR Structure
  /// Definition: This structure is defined as part of the base FHIR Specification
  fhir_structure('fhir-structure'),

  /// Display: Custom Resource
  /// Definition: This structure is intended to be treated like a FHIR resource (e.g. on the FHIR API)
  custom_resource('custom-resource'),

  /// Display: Domain Analysis Model
  /// Definition: This structure captures an analysis of a domain
  dam('dam'),

  /// Display: Wire Format
  /// Definition: This structure represents and existing structure (e.g. CDA, HL7 v2)
  wire_format('wire-format'),

  /// Display: Domain Analysis Model
  /// Definition: This structure captures an analysis of a domain
  archetype('archetype'),

  /// Display: Template
  /// Definition: This structure is a template (n.b: 'template' has many meanings)
  template('template'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const DefinitionUseCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static DefinitionUseCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DefinitionUseCodes.elementOnly.withElement(element);
    }
    return DefinitionUseCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  DefinitionUseCodes withElement(Element? newElement) {
    return DefinitionUseCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
