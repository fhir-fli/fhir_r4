// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Citation contribution.
@collection
class ArtifactContributionType {
  /// Constructor for internal use (like enum)
  ArtifactContributionType({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ArtifactContributionType values
  /// conceptualization
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactContributionType conceptualization =
      ArtifactContributionType(
    fhirCode: 'conceptualization',
  );

  /// data_curation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactContributionType data_curation =
      ArtifactContributionType(
    fhirCode: 'data-curation',
  );

  /// formal_analysis
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactContributionType formal_analysis =
      ArtifactContributionType(
    fhirCode: 'formal-analysis',
  );

  /// funding_acquisition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactContributionType funding_acquisition =
      ArtifactContributionType(
    fhirCode: 'funding-acquisition',
  );

  /// investigation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactContributionType investigation =
      ArtifactContributionType(
    fhirCode: 'investigation',
  );

  /// methodology
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactContributionType methodology = ArtifactContributionType(
    fhirCode: 'methodology',
  );

  /// project_administration
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactContributionType project_administration =
      ArtifactContributionType(
    fhirCode: 'project-administration',
  );

  /// resources
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactContributionType resources = ArtifactContributionType(
    fhirCode: 'resources',
  );

  /// software
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactContributionType software = ArtifactContributionType(
    fhirCode: 'software',
  );

  /// supervision
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactContributionType supervision = ArtifactContributionType(
    fhirCode: 'supervision',
  );

  /// validation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactContributionType validation = ArtifactContributionType(
    fhirCode: 'validation',
  );

  /// visualization
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactContributionType visualization =
      ArtifactContributionType(
    fhirCode: 'visualization',
  );

  /// writing_original_draft
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactContributionType writing_original_draft =
      ArtifactContributionType(
    fhirCode: 'writing-original-draft',
  );

  /// writing_review_editing
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactContributionType writing_review_editing =
      ArtifactContributionType(
    fhirCode: 'writing-review-editing',
  );

  /// For instances where an Element is present but not value

  static final ArtifactContributionType elementOnly =
      ArtifactContributionType();

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
    return ArtifactContributionType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ArtifactContributionType.$fhirCode';
}
