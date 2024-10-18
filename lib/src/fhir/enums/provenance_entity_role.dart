// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// How an entity was used in an activity.
enum ProvenanceEntityRole {
  /// Display: Derivation
  /// Definition: A transformation of an entity into another, an update of an entity resulting in a new one, or the construction of a new entity based on a pre-existing entity.
  derivation('derivation'),

  /// Display: Revision
  /// Definition: A derivation for which the resulting entity is a revised version of some original.
  revision('revision'),

  /// Display: Quotation
  /// Definition: The repeat of (some or all of) an entity, such as text or image, by someone who might or might not be its original author.
  quotation('quotation'),

  /// Display: Source
  /// Definition: A primary source for a topic refers to something produced by some agent with direct experience and knowledge about the topic, at the time of the topic's study, without benefit from hindsight.
  source('source'),

  /// Display: Removal
  /// Definition: A derivation for which the entity is removed from accessibility usually through the use of the Delete operation.
  removal('removal'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ProvenanceEntityRole(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ProvenanceEntityRole] instances.
  static ProvenanceEntityRole fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProvenanceEntityRole.elementOnly.withElement(
        element,
      );
    }
    return ProvenanceEntityRole.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ProvenanceEntityRole withElement(Element? newElement) {
    return ProvenanceEntityRole.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
