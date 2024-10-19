// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Cited Artifact Status Type
@collection
class CitedArtifactStatusType {
  /// Constructor for internal use (like enum)
  CitedArtifactStatusType({this.fhirCode, this.element})
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

  /// CitedArtifactStatusType values
  /// created
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactStatusType created = CitedArtifactStatusType(
    fhirCode: 'created',
  );

  /// submitted
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactStatusType submitted = CitedArtifactStatusType(
    fhirCode: 'submitted',
  );

  /// withdrawn
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactStatusType withdrawn = CitedArtifactStatusType(
    fhirCode: 'withdrawn',
  );

  /// pre_review
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactStatusType pre_review = CitedArtifactStatusType(
    fhirCode: 'pre-review',
  );

  /// under_review
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactStatusType under_review = CitedArtifactStatusType(
    fhirCode: 'under-review',
  );

  /// post_review_pre_published
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactStatusType post_review_pre_published =
      CitedArtifactStatusType(
    fhirCode: 'post-review-pre-published',
  );

  /// rejected
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactStatusType rejected = CitedArtifactStatusType(
    fhirCode: 'rejected',
  );

  /// published_early_form
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactStatusType published_early_form =
      CitedArtifactStatusType(
    fhirCode: 'published-early-form',
  );

  /// published_final_form
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactStatusType published_final_form =
      CitedArtifactStatusType(
    fhirCode: 'published-final-form',
  );

  /// accepted
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactStatusType accepted = CitedArtifactStatusType(
    fhirCode: 'accepted',
  );

  /// archived
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactStatusType archived = CitedArtifactStatusType(
    fhirCode: 'archived',
  );

  /// retracted
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactStatusType retracted = CitedArtifactStatusType(
    fhirCode: 'retracted',
  );

  /// draft
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactStatusType draft = CitedArtifactStatusType(
    fhirCode: 'draft',
  );

  /// active
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactStatusType active = CitedArtifactStatusType(
    fhirCode: 'active',
  );

  /// approved
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactStatusType approved = CitedArtifactStatusType(
    fhirCode: 'approved',
  );

  /// For instances where an Element is present but not value

  static final CitedArtifactStatusType elementOnly = CitedArtifactStatusType();

  /// List of all enum-like values
  static final List<CitedArtifactStatusType> values = [
    created,
    submitted,
    withdrawn,
    pre_review,
    under_review,
    post_review_pre_published,
    rejected,
    published_early_form,
    published_final_form,
    accepted,
    archived,
    retracted,
    draft,
    active,
    approved,
  ];

  /// Returns the enum value with an element attached
  CitedArtifactStatusType withElement(Element? newElement) {
    return CitedArtifactStatusType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [CitedArtifactStatusType] from JSON.
  static CitedArtifactStatusType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CitedArtifactStatusType.elementOnly.withElement(element);
    }
    return CitedArtifactStatusType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CitedArtifactStatusType.$fhirCode';
}
