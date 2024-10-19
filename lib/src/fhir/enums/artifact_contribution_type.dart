// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Citation contribution.
@Entity()
class ArtifactContributionType extends FhirCode {
  /// Factory constructor to create [ArtifactContributionType] from JSON.
  factory ArtifactContributionType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ArtifactContributionType.elementOnly(element);
    }
    if (values.contains(value)) {
      return ArtifactContributionType._(value, element);
    }
    throw ArgumentError(
      'ArtifactContributionType.fromJson: JSON value is not a valid value',
    );
  }

  /// conceptualization
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArtifactContributionType.conceptualization([this.element])
      : dbValue = 'conceptualization',
        super('conceptualization', element);

  /// data_curation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArtifactContributionType.data_curation([this.element])
      : dbValue = 'data-curation',
        super('data-curation', element);

  /// formal_analysis
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArtifactContributionType.formal_analysis([this.element])
      : dbValue = 'formal-analysis',
        super('formal-analysis', element);

  /// funding_acquisition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArtifactContributionType.funding_acquisition([this.element])
      : dbValue = 'funding-acquisition',
        super('funding-acquisition', element);

  /// investigation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArtifactContributionType.investigation([this.element])
      : dbValue = 'investigation',
        super('investigation', element);

  /// methodology
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArtifactContributionType.methodology([this.element])
      : dbValue = 'methodology',
        super('methodology', element);

  /// project_administration
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArtifactContributionType.project_administration([this.element])
      : dbValue = 'project-administration',
        super('project-administration', element);

  /// resources
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArtifactContributionType.resources([this.element])
      : dbValue = 'resources',
        super('resources', element);

  /// software
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArtifactContributionType.software([this.element])
      : dbValue = 'software',
        super('software', element);

  /// supervision
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArtifactContributionType.supervision([this.element])
      : dbValue = 'supervision',
        super('supervision', element);

  /// validation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArtifactContributionType.validation([this.element])
      : dbValue = 'validation',
        super('validation', element);

  /// visualization
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArtifactContributionType.visualization([this.element])
      : dbValue = 'visualization',
        super('visualization', element);

  /// writing_original_draft
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArtifactContributionType.writing_original_draft([this.element])
      : dbValue = 'writing-original-draft',
        super('writing-original-draft', element);

  /// writing_review_editing
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArtifactContributionType.writing_review_editing([this.element])
      : dbValue = 'writing-review-editing',
        super('writing-review-editing', element);

  /// For instances where an Element is present but not value

  ArtifactContributionType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ArtifactContributionType._(super.input, [super.element])
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
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    'conceptualization',
    'data-curation',
    'formal-analysis',
    'funding-acquisition',
    'investigation',
    'methodology',
    'project-administration',
    'resources',
    'software',
    'supervision',
    'validation',
    'visualization',
    'writing-original-draft',
    'writing-review-editing',
  ];

  /// Returns the enum value with an element attached
  ArtifactContributionType withElement(Element? newElement) {
    return ArtifactContributionType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ArtifactContributionType.$value';
}
