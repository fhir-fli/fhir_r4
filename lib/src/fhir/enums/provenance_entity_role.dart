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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ProvenanceEntityRole(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ProvenanceEntityRole fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProvenanceEntityRole.elementOnly.withElement(element);
    }
    return ProvenanceEntityRole.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ProvenanceEntityRole withElement(Element? newElement) {
    return ProvenanceEntityRole.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
