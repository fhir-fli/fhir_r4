// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Citation contribution.
class ArtifactContributionType {
  // Private constructor for internal use (like enum)
  ArtifactContributionType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ArtifactContributionType values
  /// conceptualization
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactContributionType conceptualization =
      ArtifactContributionType._(
    'conceptualization',
  );

  /// data_curation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactContributionType data_curation =
      ArtifactContributionType._(
    'data-curation',
  );

  /// formal_analysis
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactContributionType formal_analysis =
      ArtifactContributionType._(
    'formal-analysis',
  );

  /// funding_acquisition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactContributionType funding_acquisition =
      ArtifactContributionType._(
    'funding-acquisition',
  );

  /// investigation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactContributionType investigation =
      ArtifactContributionType._(
    'investigation',
  );

  /// methodology
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactContributionType methodology =
      ArtifactContributionType._(
    'methodology',
  );

  /// project_administration
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactContributionType project_administration =
      ArtifactContributionType._(
    'project-administration',
  );

  /// resources
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactContributionType resources = ArtifactContributionType._(
    'resources',
  );

  /// software
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactContributionType software = ArtifactContributionType._(
    'software',
  );

  /// supervision
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactContributionType supervision =
      ArtifactContributionType._(
    'supervision',
  );

  /// validation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactContributionType validation = ArtifactContributionType._(
    'validation',
  );

  /// visualization
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactContributionType visualization =
      ArtifactContributionType._(
    'visualization',
  );

  /// writing_original_draft
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactContributionType writing_original_draft =
      ArtifactContributionType._(
    'writing-original-draft',
  );

  /// writing_review_editing
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactContributionType writing_review_editing =
      ArtifactContributionType._(
    'writing-review-editing',
  );

  /// For instances where an Element is present but not value

  static final ArtifactContributionType elementOnly =
      ArtifactContributionType._('');

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

  /// Returns the enum value with an element attached
  ArtifactContributionType withElement(Element? newElement) {
    return ArtifactContributionType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ArtifactContributionType] from JSON.
  static ArtifactContributionType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ArtifactContributionType.elementOnly.withElement(element);
    }
    return ArtifactContributionType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
