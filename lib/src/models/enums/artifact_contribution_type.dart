// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Citation contribution.
class ArtifactContributionType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ArtifactContributionType._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ArtifactContributionType] from JSON.
  factory ArtifactContributionType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ArtifactContributionType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ArtifactContributionType cannot be constructed from JSON.',
      );
    }
    return ArtifactContributionType._(value: value, element: element);
  }

  /// conceptualization
  static final ArtifactContributionType conceptualization =
      ArtifactContributionType._(
    value: 'conceptualization',
  );

  /// data_curation
  static final ArtifactContributionType data_curation =
      ArtifactContributionType._(
    value: 'data-curation',
  );

  /// formal_analysis
  static final ArtifactContributionType formal_analysis =
      ArtifactContributionType._(
    value: 'formal-analysis',
  );

  /// funding_acquisition
  static final ArtifactContributionType funding_acquisition =
      ArtifactContributionType._(
    value: 'funding-acquisition',
  );

  /// investigation
  static final ArtifactContributionType investigation =
      ArtifactContributionType._(
    value: 'investigation',
  );

  /// methodology
  static final ArtifactContributionType methodology =
      ArtifactContributionType._(
    value: 'methodology',
  );

  /// project_administration
  static final ArtifactContributionType project_administration =
      ArtifactContributionType._(
    value: 'project-administration',
  );

  /// resources
  static final ArtifactContributionType resources = ArtifactContributionType._(
    value: 'resources',
  );

  /// software
  static final ArtifactContributionType software = ArtifactContributionType._(
    value: 'software',
  );

  /// supervision
  static final ArtifactContributionType supervision =
      ArtifactContributionType._(
    value: 'supervision',
  );

  /// validation
  static final ArtifactContributionType validation = ArtifactContributionType._(
    value: 'validation',
  );

  /// visualization
  static final ArtifactContributionType visualization =
      ArtifactContributionType._(
    value: 'visualization',
  );

  /// writing_original_draft
  static final ArtifactContributionType writing_original_draft =
      ArtifactContributionType._(
    value: 'writing-original-draft',
  );

  /// writing_review_editing
  static final ArtifactContributionType writing_review_editing =
      ArtifactContributionType._(
    value: 'writing-review-editing',
  );

  /// For instances where an Element is present but not value

  static final ArtifactContributionType elementOnly =
      ArtifactContributionType._(value: '');

  /// List of all enum-like values
  static final List<ArtifactContributionType> values = [
    conceptualization,
    data_curation,
    formal_analysis,
    funding_acquisition,
    investigation,
    methodology,
    project_administration,
    resources,
    software,
    supervision,
    validation,
    visualization,
    writing_original_draft,
    writing_review_editing,
  ];

  /// Clones the current instance
  @override
  ArtifactContributionType clone() => ArtifactContributionType._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ArtifactContributionType withElement(Element? newElement) {
    return ArtifactContributionType._(value: value, element: newElement);
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
  ArtifactContributionType copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return ArtifactContributionType._(
      value: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
