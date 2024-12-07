// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Artifact Relationship Type
class ArtifactRelationshipType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ArtifactRelationshipType._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ArtifactRelationshipType] from JSON.
  factory ArtifactRelationshipType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ArtifactRelationshipType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ArtifactRelationshipType cannot be constructed from JSON.',
      );
    }
    return ArtifactRelationshipType._(value: value, element: element);
  }

  /// replaces
  static final ArtifactRelationshipType replaces = ArtifactRelationshipType._(
    value: 'replaces',
  );

  /// amends
  static final ArtifactRelationshipType amends = ArtifactRelationshipType._(
    value: 'amends',
  );

  /// appends
  static final ArtifactRelationshipType appends = ArtifactRelationshipType._(
    value: 'appends',
  );

  /// transforms
  static final ArtifactRelationshipType transforms = ArtifactRelationshipType._(
    value: 'transforms',
  );

  /// replaced_with
  static final ArtifactRelationshipType replaced_with =
      ArtifactRelationshipType._(
    value: 'replaced-with',
  );

  /// amended_with
  static final ArtifactRelationshipType amended_with =
      ArtifactRelationshipType._(
    value: 'amended-with',
  );

  /// appended_with
  static final ArtifactRelationshipType appended_with =
      ArtifactRelationshipType._(
    value: 'appended-with',
  );

  /// transformed_with
  static final ArtifactRelationshipType transformed_with =
      ArtifactRelationshipType._(
    value: 'transformed-with',
  );

  /// derived_from
  static final ArtifactRelationshipType derived_from =
      ArtifactRelationshipType._(
    value: 'derived-from',
  );

  /// transformed_into
  static final ArtifactRelationshipType transformed_into =
      ArtifactRelationshipType._(
    value: 'transformed-into',
  );

  /// composed_of
  static final ArtifactRelationshipType composed_of =
      ArtifactRelationshipType._(
    value: 'composed-of',
  );

  /// part_of
  static final ArtifactRelationshipType part_of = ArtifactRelationshipType._(
    value: 'part-of',
  );

  /// supports
  static final ArtifactRelationshipType supports = ArtifactRelationshipType._(
    value: 'supports',
  );

  /// supported_with
  static final ArtifactRelationshipType supported_with =
      ArtifactRelationshipType._(
    value: 'supported-with',
  );

  /// depends_on
  static final ArtifactRelationshipType depends_on = ArtifactRelationshipType._(
    value: 'depends-on',
  );

  /// similar_to
  static final ArtifactRelationshipType similar_to = ArtifactRelationshipType._(
    value: 'similar-to',
  );

  /// cites
  static final ArtifactRelationshipType cites = ArtifactRelationshipType._(
    value: 'cites',
  );

  /// cited_by
  static final ArtifactRelationshipType cited_by = ArtifactRelationshipType._(
    value: 'cited-by',
  );

  /// retracts
  static final ArtifactRelationshipType retracts = ArtifactRelationshipType._(
    value: 'retracts',
  );

  /// retracted_by
  static final ArtifactRelationshipType retracted_by =
      ArtifactRelationshipType._(
    value: 'retracted-by',
  );

  /// comments_on
  static final ArtifactRelationshipType comments_on =
      ArtifactRelationshipType._(
    value: 'comments-on',
  );

  /// comment_in
  static final ArtifactRelationshipType comment_in = ArtifactRelationshipType._(
    value: 'comment-in',
  );

  /// corrects
  static final ArtifactRelationshipType corrects = ArtifactRelationshipType._(
    value: 'corrects',
  );

  /// correction_in
  static final ArtifactRelationshipType correction_in =
      ArtifactRelationshipType._(
    value: 'correction-in',
  );

  /// For instances where an Element is present but not value

  static final ArtifactRelationshipType elementOnly =
      ArtifactRelationshipType._(value: '');

  /// List of all enum-like values
  static final List<ArtifactRelationshipType> values = [
    replaces,
    amends,
    appends,
    transforms,
    replaced_with,
    amended_with,
    appended_with,
    transformed_with,
    derived_from,
    transformed_into,
    composed_of,
    part_of,
    supports,
    supported_with,
    depends_on,
    similar_to,
    cites,
    cited_by,
    retracts,
    retracted_by,
    comments_on,
    comment_in,
    corrects,
    correction_in,
  ];

  /// Clones the current instance
  @override
  ArtifactRelationshipType clone() => ArtifactRelationshipType._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ArtifactRelationshipType withElement(Element? newElement) {
    return ArtifactRelationshipType._(value: value, element: newElement);
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
  ArtifactRelationshipType copyWith({
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
    return ArtifactRelationshipType._(
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
