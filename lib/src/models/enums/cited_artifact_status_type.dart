// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Cited Artifact Status Type
class CitedArtifactStatusType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  CitedArtifactStatusType._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [CitedArtifactStatusType] from JSON.
  factory CitedArtifactStatusType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CitedArtifactStatusType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CitedArtifactStatusType cannot be constructed from JSON.',
      );
    }
    return CitedArtifactStatusType._(value: value, element: element);
  }

  /// created
  static final CitedArtifactStatusType created = CitedArtifactStatusType._(
    value: 'created',
  );

  /// submitted
  static final CitedArtifactStatusType submitted = CitedArtifactStatusType._(
    value: 'submitted',
  );

  /// withdrawn
  static final CitedArtifactStatusType withdrawn = CitedArtifactStatusType._(
    value: 'withdrawn',
  );

  /// pre_review
  static final CitedArtifactStatusType pre_review = CitedArtifactStatusType._(
    value: 'pre-review',
  );

  /// under_review
  static final CitedArtifactStatusType under_review = CitedArtifactStatusType._(
    value: 'under-review',
  );

  /// post_review_pre_published
  static final CitedArtifactStatusType post_review_pre_published =
      CitedArtifactStatusType._(
    value: 'post-review-pre-published',
  );

  /// rejected
  static final CitedArtifactStatusType rejected = CitedArtifactStatusType._(
    value: 'rejected',
  );

  /// published_early_form
  static final CitedArtifactStatusType published_early_form =
      CitedArtifactStatusType._(
    value: 'published-early-form',
  );

  /// published_final_form
  static final CitedArtifactStatusType published_final_form =
      CitedArtifactStatusType._(
    value: 'published-final-form',
  );

  /// accepted
  static final CitedArtifactStatusType accepted = CitedArtifactStatusType._(
    value: 'accepted',
  );

  /// archived
  static final CitedArtifactStatusType archived = CitedArtifactStatusType._(
    value: 'archived',
  );

  /// retracted
  static final CitedArtifactStatusType retracted = CitedArtifactStatusType._(
    value: 'retracted',
  );

  /// draft
  static final CitedArtifactStatusType draft = CitedArtifactStatusType._(
    value: 'draft',
  );

  /// active
  static final CitedArtifactStatusType active = CitedArtifactStatusType._(
    value: 'active',
  );

  /// approved
  static final CitedArtifactStatusType approved = CitedArtifactStatusType._(
    value: 'approved',
  );

  /// For instances where an Element is present but not value

  static final CitedArtifactStatusType elementOnly =
      CitedArtifactStatusType._(value: '');

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

  /// Clones the current instance
  @override
  CitedArtifactStatusType clone() => CitedArtifactStatusType._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  CitedArtifactStatusType withElement(Element? newElement) {
    return CitedArtifactStatusType._(value: value, element: newElement);
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
  CitedArtifactStatusType copyWith({
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
    return CitedArtifactStatusType._(
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
