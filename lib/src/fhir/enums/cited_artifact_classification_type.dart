// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Cited Artifact Classification Type
enum CitedArtifactClassificationType {
  /// Display: Publication type
  /// Definition: Publication type
  publication_type('publication-type'),

  /// Display: MeSH heading
  /// Definition: MeSH heading
  mesh_heading('mesh-heading'),

  /// Display: Supplemental MeSH for Protocol
  /// Definition: Supplemental MeSH for Protocol
  supplemental_mesh_protocol('supplemental-mesh-protocol'),

  /// Display: Supplemental MeSH for Disease
  /// Definition: Supplemental MeSH for Disease
  supplemental_mesh_disease('supplemental-mesh-disease'),

  /// Display: Supplemental MeSH for Organism
  /// Definition: Supplemental MeSH for Organism
  supplemental_mesh_organism('supplemental-mesh-organism'),

  /// Display: Keyword
  /// Definition: Keyword
  keyword('keyword'),

  /// Display: Citation subset
  /// Definition: Citation subset
  citation_subset('citation-subset'),

  /// Display: Chemical
  /// Definition: Chemical
  chemical('chemical'),

  /// Display: Publishing Model
  /// Definition: Used for PubModel attribute in Medline
  publishing_model('publishing-model'),

  /// Display: Knowledge Artifact Type
  /// Definition: Knowledge Artifact Type
  knowledge_artifact_type('knowledge-artifact-type'),

  /// Display: Coverage
  /// Definition: The spatial or temporal topic of the resource, spatial applicability of the resource, or jurisdiction under which the resource is relevant
  coverage('coverage'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const CitedArtifactClassificationType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [CitedArtifactClassificationType] instances.
  static CitedArtifactClassificationType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CitedArtifactClassificationType.elementOnly.withElement(element);
    }
    return CitedArtifactClassificationType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  CitedArtifactClassificationType withElement(Element? newElement) {
    return CitedArtifactClassificationType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
