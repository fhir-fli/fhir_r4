// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Cited Artifact Classification Type
class CitedArtifactClassificationType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  CitedArtifactClassificationType._(super.value, [super.element]);

  /// Factory constructor to create [CitedArtifactClassificationType] from JSON.
  factory CitedArtifactClassificationType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CitedArtifactClassificationType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CitedArtifactClassificationType cannot be constructed from JSON.',
      );
    }
    return CitedArtifactClassificationType._(value, element);
  }

  /// publication_type
  static final CitedArtifactClassificationType publication_type =
      CitedArtifactClassificationType._(
    'publication-type',
  );

  /// mesh_heading
  static final CitedArtifactClassificationType mesh_heading =
      CitedArtifactClassificationType._(
    'mesh-heading',
  );

  /// supplemental_mesh_protocol
  static final CitedArtifactClassificationType supplemental_mesh_protocol =
      CitedArtifactClassificationType._(
    'supplemental-mesh-protocol',
  );

  /// supplemental_mesh_disease
  static final CitedArtifactClassificationType supplemental_mesh_disease =
      CitedArtifactClassificationType._(
    'supplemental-mesh-disease',
  );

  /// supplemental_mesh_organism
  static final CitedArtifactClassificationType supplemental_mesh_organism =
      CitedArtifactClassificationType._(
    'supplemental-mesh-organism',
  );

  /// keyword
  static final CitedArtifactClassificationType keyword =
      CitedArtifactClassificationType._(
    'keyword',
  );

  /// citation_subset
  static final CitedArtifactClassificationType citation_subset =
      CitedArtifactClassificationType._(
    'citation-subset',
  );

  /// chemical
  static final CitedArtifactClassificationType chemical =
      CitedArtifactClassificationType._(
    'chemical',
  );

  /// publishing_model
  static final CitedArtifactClassificationType publishing_model =
      CitedArtifactClassificationType._(
    'publishing-model',
  );

  /// knowledge_artifact_type
  static final CitedArtifactClassificationType knowledge_artifact_type =
      CitedArtifactClassificationType._(
    'knowledge-artifact-type',
  );

  /// coverage
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

  /// Clones the current instance
  @override
  CitedArtifactClassificationType clone() => CitedArtifactClassificationType._(
        value,
        element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  CitedArtifactClassificationType withElement(Element? newElement) {
    return CitedArtifactClassificationType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  CitedArtifactClassificationType copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    Map<String, List<void Function()>>? propertyChanged,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return CitedArtifactClassificationType._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
