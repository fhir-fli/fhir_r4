// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

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

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const DefinitionUseCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [DefinitionUseCodes] instances.
  static DefinitionUseCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DefinitionUseCodes.elementOnly.withElement(element);
    }
    return DefinitionUseCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  DefinitionUseCodes withElement(Element? newElement) {
    return DefinitionUseCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
