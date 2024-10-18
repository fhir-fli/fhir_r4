// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Used to express the reason and specific aspect for the variant abstract, such as language and specific language.
enum CitedArtifactAbstractType {
  /// Display: Primary human use
  /// Definition: Human-friendly main or official abstract
  primary_human_use('primary-human-use'),

  /// Display: Primary machine use
  /// Definition: Machine-friendly main or official abstract
  primary_machine_use('primary-machine-use'),

  /// Display: Truncated
  /// Definition: Truncated abstract
  truncated('truncated'),

  /// Display: Short abstract
  /// Definition: Brief abstract, for use when abstracts are provided in different sizes or lengths
  short_abstract('short-abstract'),

  /// Display: Long abstract
  /// Definition: Long version of the abstract, for use when abstracts are provided in different sizes or lengths
  long_abstract('long-abstract'),

  /// Display: Plain language
  /// Definition: Additional form of abstract written for the general public
  plain_language('plain-language'),

  /// Display: Different publisher for abstract
  /// Definition: Abstract produced by a different publisher than the cited artifact
  different_publisher('different-publisher'),

  /// Display: Different language
  /// Definition: Additional form of abstract in a different language
  language('language'),

  /// Display: Different language derived from autotranslation
  /// Definition: Machine translated form of abstract in a different language, language element codes the language into which it was translated by machine
  autotranslated('autotranslated'),

  /// Display: Different text in additional Medline entry
  /// Definition: Alternative form of abstract in two or more Medline entries
  duplicate_pmid('duplicate-pmid'),

  /// Display: Different text in an earlier version
  /// Definition: Alternative form of abstract in an earlier version such as epub ahead of print
  earlier_abstract('earlier-abstract'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const CitedArtifactAbstractType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [CitedArtifactAbstractType] instances.
  static CitedArtifactAbstractType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CitedArtifactAbstractType.elementOnly.withElement(element);
    }
    return CitedArtifactAbstractType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  CitedArtifactAbstractType withElement(Element? newElement) {
    return CitedArtifactAbstractType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
