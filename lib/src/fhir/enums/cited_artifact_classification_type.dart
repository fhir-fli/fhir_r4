// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Cited Artifact Classification Type
@Entity()
class CitedArtifactClassificationType extends FhirCode {
  /// Factory constructor to create [CitedArtifactClassificationType] from JSON.
  factory CitedArtifactClassificationType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CitedArtifactClassificationType.elementOnly(element);
    }
    if (values.contains(value)) {
      return CitedArtifactClassificationType._(value, element);
    }
    throw ArgumentError(
      'CitedArtifactClassificationType.fromJson: JSON value is not a valid value',
    );
  }

  /// publication_type
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitedArtifactClassificationType.publication_type([this.element])
      : dbValue = 'publication-type',
        super('publication-type', element);

  /// mesh_heading
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitedArtifactClassificationType.mesh_heading([this.element])
      : dbValue = 'mesh-heading',
        super('mesh-heading', element);

  /// supplemental_mesh_protocol
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitedArtifactClassificationType.supplemental_mesh_protocol([this.element])
      : dbValue = 'supplemental-mesh-protocol',
        super('supplemental-mesh-protocol', element);

  /// supplemental_mesh_disease
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitedArtifactClassificationType.supplemental_mesh_disease([this.element])
      : dbValue = 'supplemental-mesh-disease',
        super('supplemental-mesh-disease', element);

  /// supplemental_mesh_organism
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitedArtifactClassificationType.supplemental_mesh_organism([this.element])
      : dbValue = 'supplemental-mesh-organism',
        super('supplemental-mesh-organism', element);

  /// keyword
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitedArtifactClassificationType.keyword([this.element])
      : dbValue = 'keyword',
        super('keyword', element);

  /// citation_subset
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitedArtifactClassificationType.citation_subset([this.element])
      : dbValue = 'citation-subset',
        super('citation-subset', element);

  /// chemical
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitedArtifactClassificationType.chemical([this.element])
      : dbValue = 'chemical',
        super('chemical', element);

  /// publishing_model
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitedArtifactClassificationType.publishing_model([this.element])
      : dbValue = 'publishing-model',
        super('publishing-model', element);

  /// knowledge_artifact_type
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitedArtifactClassificationType.knowledge_artifact_type([this.element])
      : dbValue = 'knowledge-artifact-type',
        super('knowledge-artifact-type', element);

  /// coverage
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitedArtifactClassificationType.coverage([this.element])
      : dbValue = 'coverage',
        super('coverage', element);

  /// For instances where an Element is present but not value

  CitedArtifactClassificationType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  CitedArtifactClassificationType._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    'publication-type',
    'mesh-heading',
    'supplemental-mesh-protocol',
    'supplemental-mesh-disease',
    'supplemental-mesh-organism',
    'keyword',
    'citation-subset',
    'chemical',
    'publishing-model',
    'knowledge-artifact-type',
    'coverage',
  ];

  /// Returns the enum value with an element attached
  CitedArtifactClassificationType withElement(Element? newElement) {
    return CitedArtifactClassificationType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CitedArtifactClassificationType.$value';
}
