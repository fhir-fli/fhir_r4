// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The degree of equivalence between concepts.
enum ConceptMapEquivalence {
  /// Display: Related To
  /// Definition: The concepts are related to each other, and have at least some overlap in meaning, but the exact relationship is not known.
  relatedto('relatedto'),

  /// Display: Equivalent
  /// Definition: The definitions of the concepts mean the same thing (including when structural implications of meaning are considered) (i.e. extensionally identical).
  equivalent('equivalent'),

  /// Display: Equal
  /// Definition: The definitions of the concepts are exactly the same (i.e. only grammatical differences) and structural implications of meaning are identical or irrelevant (i.e. intentionally identical).
  equal('equal'),

  /// Display: Wider
  /// Definition: The target mapping is wider in meaning than the source concept.
  wider('wider'),

  /// Display: Subsumes
  /// Definition: The target mapping subsumes the meaning of the source concept (e.g. the source is-a target).
  subsumes('subsumes'),

  /// Display: Narrower
  /// Definition: The target mapping is narrower in meaning than the source concept. The sense in which the mapping is narrower SHALL be described in the comments in this case, and applications should be careful when attempting to use these mappings operationally.
  narrower('narrower'),

  /// Display: Specializes
  /// Definition: The target mapping specializes the meaning of the source concept (e.g. the target is-a source).
  specializes('specializes'),

  /// Display: Inexact
  /// Definition: The target mapping overlaps with the source concept, but both source and target cover additional meaning, or the definitions are imprecise and it is uncertain whether they have the same boundaries to their meaning. The sense in which the mapping is inexact SHALL be described in the comments in this case, and applications should be careful when attempting to use these mappings operationally.
  inexact('inexact'),

  /// Display: Unmatched
  /// Definition: There is no match for this concept in the target code system.
  unmatched('unmatched'),

  /// Display: Disjoint
  /// Definition: This is an explicit assertion that there is no mapping between the source and target concept.
  disjoint('disjoint'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ConceptMapEquivalence(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ConceptMapEquivalence] instances.
  static ConceptMapEquivalence fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConceptMapEquivalence.elementOnly.withElement(
        element,
      );
    }
    return ConceptMapEquivalence.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ConceptMapEquivalence withElement(Element? newElement) {
    return ConceptMapEquivalence.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
