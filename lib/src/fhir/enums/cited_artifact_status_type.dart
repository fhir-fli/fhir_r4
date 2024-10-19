// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Cited Artifact Status Type
@Entity()
class CitedArtifactStatusType extends FhirCode {
  /// Factory constructor to create [CitedArtifactStatusType] from JSON.
  factory CitedArtifactStatusType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CitedArtifactStatusType.elementOnly(element);
    }
    if (values.contains(value)) {
      return CitedArtifactStatusType._(value, element);
    }
    throw ArgumentError(
      'CitedArtifactStatusType.fromJson: JSON value is not a valid value',
    );
  }

  /// created
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitedArtifactStatusType.created([this.element])
      : dbValue = 'created',
        super('created', element);

  /// submitted
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitedArtifactStatusType.submitted([this.element])
      : dbValue = 'submitted',
        super('submitted', element);

  /// withdrawn
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitedArtifactStatusType.withdrawn([this.element])
      : dbValue = 'withdrawn',
        super('withdrawn', element);

  /// pre_review
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitedArtifactStatusType.pre_review([this.element])
      : dbValue = 'pre-review',
        super('pre-review', element);

  /// under_review
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitedArtifactStatusType.under_review([this.element])
      : dbValue = 'under-review',
        super('under-review', element);

  /// post_review_pre_published
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitedArtifactStatusType.post_review_pre_published([this.element])
      : dbValue = 'post-review-pre-published',
        super('post-review-pre-published', element);

  /// rejected
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitedArtifactStatusType.rejected([this.element])
      : dbValue = 'rejected',
        super('rejected', element);

  /// published_early_form
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitedArtifactStatusType.published_early_form([this.element])
      : dbValue = 'published-early-form',
        super('published-early-form', element);

  /// published_final_form
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitedArtifactStatusType.published_final_form([this.element])
      : dbValue = 'published-final-form',
        super('published-final-form', element);

  /// accepted
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitedArtifactStatusType.accepted([this.element])
      : dbValue = 'accepted',
        super('accepted', element);

  /// archived
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitedArtifactStatusType.archived([this.element])
      : dbValue = 'archived',
        super('archived', element);

  /// retracted
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitedArtifactStatusType.retracted([this.element])
      : dbValue = 'retracted',
        super('retracted', element);

  /// draft
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitedArtifactStatusType.draft([this.element])
      : dbValue = 'draft',
        super('draft', element);

  /// active
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitedArtifactStatusType.active([this.element])
      : dbValue = 'active',
        super('active', element);

  /// approved
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitedArtifactStatusType.approved([this.element])
      : dbValue = 'approved',
        super('approved', element);

  /// For instances where an Element is present but not value

  CitedArtifactStatusType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  CitedArtifactStatusType._(super.input, [super.element])
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
    'created',
    'submitted',
    'withdrawn',
    'pre-review',
    'under-review',
    'post-review-pre-published',
    'rejected',
    'published-early-form',
    'published-final-form',
    'accepted',
    'archived',
    'retracted',
    'draft',
    'active',
    'approved',
  ];

  /// Returns the enum value with an element attached
  CitedArtifactStatusType withElement(Element? newElement) {
    return CitedArtifactStatusType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CitedArtifactStatusType.$value';
}
