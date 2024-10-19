// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Cited Artifact Classification Type
class CitedArtifactClassificationType {
  // Private constructor for internal use (like enum)
  CitedArtifactClassificationType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// CitedArtifactClassificationType values
  /// publication_type
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactClassificationType publication_type =
      CitedArtifactClassificationType._(
    'publication-type',
  );

  /// mesh_heading
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactClassificationType mesh_heading =
      CitedArtifactClassificationType._(
    'mesh-heading',
  );

  /// supplemental_mesh_protocol
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactClassificationType supplemental_mesh_protocol =
      CitedArtifactClassificationType._(
    'supplemental-mesh-protocol',
  );

  /// supplemental_mesh_disease
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactClassificationType supplemental_mesh_disease =
      CitedArtifactClassificationType._(
    'supplemental-mesh-disease',
  );

  /// supplemental_mesh_organism
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactClassificationType supplemental_mesh_organism =
      CitedArtifactClassificationType._(
    'supplemental-mesh-organism',
  );

  /// keyword
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactClassificationType keyword =
      CitedArtifactClassificationType._(
    'keyword',
  );

  /// citation_subset
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactClassificationType citation_subset =
      CitedArtifactClassificationType._(
    'citation-subset',
  );

  /// chemical
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactClassificationType chemical =
      CitedArtifactClassificationType._(
    'chemical',
  );

  /// publishing_model
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactClassificationType publishing_model =
      CitedArtifactClassificationType._(
    'publishing-model',
  );

  /// knowledge_artifact_type
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactClassificationType knowledge_artifact_type =
      CitedArtifactClassificationType._(
    'knowledge-artifact-type',
  );

  /// coverage
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactClassificationType coverage =
      CitedArtifactClassificationType._(
    'coverage',
  );

  /// For instances where an Element is present but not value

  static final CitedArtifactClassificationType elementOnly =
      CitedArtifactClassificationType._('');

  /// List of all enum-like values
  static final List<CitedArtifactClassificationType> values = [
    publication_type,
    mesh_heading,
    supplemental_mesh_protocol,
    supplemental_mesh_disease,
    supplemental_mesh_organism,
    keyword,
    citation_subset,
    chemical,
    publishing_model,
    knowledge_artifact_type,
    coverage,
  ];

  /// Returns the enum value with an element attached
  CitedArtifactClassificationType withElement(Element? newElement) {
    return CitedArtifactClassificationType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [CitedArtifactClassificationType] from JSON.
  static CitedArtifactClassificationType fromJson(Map<String, dynamic> json) {
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

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CitedArtifactClassificationType.$fhirCode';
}
