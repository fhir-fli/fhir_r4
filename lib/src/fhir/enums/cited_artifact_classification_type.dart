import 'package:json_annotation/json_annotation.dart';

/// Cited Artifact Classification Type
enum CitedArtifactClassificationType {
  /// Display: Publication type
  /// Definition: Publication type
  @JsonValue('publication-type')
  publication_type,

  /// Display: MeSH heading
  /// Definition: MeSH heading
  @JsonValue('mesh-heading')
  mesh_heading,

  /// Display: Supplemental MeSH for Protocol
  /// Definition: Supplemental MeSH for Protocol
  @JsonValue('supplemental-mesh-protocol')
  supplemental_mesh_protocol,

  /// Display: Supplemental MeSH for Disease
  /// Definition: Supplemental MeSH for Disease
  @JsonValue('supplemental-mesh-disease')
  supplemental_mesh_disease,

  /// Display: Supplemental MeSH for Organism
  /// Definition: Supplemental MeSH for Organism
  @JsonValue('supplemental-mesh-organism')
  supplemental_mesh_organism,

  /// Display: Keyword
  /// Definition: Keyword
  @JsonValue('keyword')
  keyword,

  /// Display: Citation subset
  /// Definition: Citation subset
  @JsonValue('citation-subset')
  citation_subset,

  /// Display: Chemical
  /// Definition: Chemical
  @JsonValue('chemical')
  chemical,

  /// Display: Publishing Model
  /// Definition: Used for PubModel attribute in Medline
  @JsonValue('publishing-model')
  publishing_model,

  /// Display: Knowledge Artifact Type
  /// Definition: Knowledge Artifact Type
  @JsonValue('knowledge-artifact-type')
  knowledge_artifact_type,

  /// Display: Coverage
  /// Definition: The spatial or temporal topic of the resource, spatial applicability of the resource, or jurisdiction under which the resource is relevant
  @JsonValue('coverage')
  coverage,
  ;

  @override
  String toString() {
    switch (this) {
      case publication_type:
        return 'publication-type';
      case mesh_heading:
        return 'mesh-heading';
      case supplemental_mesh_protocol:
        return 'supplemental-mesh-protocol';
      case supplemental_mesh_disease:
        return 'supplemental-mesh-disease';
      case supplemental_mesh_organism:
        return 'supplemental-mesh-organism';
      case keyword:
        return 'keyword';
      case citation_subset:
        return 'citation-subset';
      case chemical:
        return 'chemical';
      case publishing_model:
        return 'publishing-model';
      case knowledge_artifact_type:
        return 'knowledge-artifact-type';
      case coverage:
        return 'coverage';
    }
  }

  String toJson() => toString();
  static CitedArtifactClassificationType fromString(String str) {
    switch (str) {
      case 'publication-type':
        return CitedArtifactClassificationType.publication_type;
      case 'mesh-heading':
        return CitedArtifactClassificationType.mesh_heading;
      case 'supplemental-mesh-protocol':
        return CitedArtifactClassificationType.supplemental_mesh_protocol;
      case 'supplemental-mesh-disease':
        return CitedArtifactClassificationType.supplemental_mesh_disease;
      case 'supplemental-mesh-organism':
        return CitedArtifactClassificationType.supplemental_mesh_organism;
      case 'keyword':
        return CitedArtifactClassificationType.keyword;
      case 'citation-subset':
        return CitedArtifactClassificationType.citation_subset;
      case 'chemical':
        return CitedArtifactClassificationType.chemical;
      case 'publishing-model':
        return CitedArtifactClassificationType.publishing_model;
      case 'knowledge-artifact-type':
        return CitedArtifactClassificationType.knowledge_artifact_type;
      case 'coverage':
        return CitedArtifactClassificationType.coverage;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static CitedArtifactClassificationType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
