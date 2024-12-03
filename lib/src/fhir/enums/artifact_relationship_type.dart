// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Artifact Relationship Type
class ArtifactRelationshipType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ArtifactRelationshipType._(super.value, [super.element]);

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
    return ArtifactRelationshipType._(value, element);
  }

  /// replaces
  static final ArtifactRelationshipType replaces = ArtifactRelationshipType._(
    'replaces',
  );

  /// amends
  static final ArtifactRelationshipType amends = ArtifactRelationshipType._(
    'amends',
  );

  /// appends
  static final ArtifactRelationshipType appends = ArtifactRelationshipType._(
    'appends',
  );

  /// transforms
  static final ArtifactRelationshipType transforms = ArtifactRelationshipType._(
    'transforms',
  );

  /// replaced_with
  static final ArtifactRelationshipType replaced_with =
      ArtifactRelationshipType._(
    'replaced-with',
  );

  /// amended_with
  static final ArtifactRelationshipType amended_with =
      ArtifactRelationshipType._(
    'amended-with',
  );

  /// appended_with
  static final ArtifactRelationshipType appended_with =
      ArtifactRelationshipType._(
    'appended-with',
  );

  /// transformed_with
  static final ArtifactRelationshipType transformed_with =
      ArtifactRelationshipType._(
    'transformed-with',
  );

  /// derived_from
  static final ArtifactRelationshipType derived_from =
      ArtifactRelationshipType._(
    'derived-from',
  );

  /// transformed_into
  static final ArtifactRelationshipType transformed_into =
      ArtifactRelationshipType._(
    'transformed-into',
  );

  /// composed_of
  static final ArtifactRelationshipType composed_of =
      ArtifactRelationshipType._(
    'composed-of',
  );

  /// part_of
  static final ArtifactRelationshipType part_of = ArtifactRelationshipType._(
    'part-of',
  );

  /// supports
  static final ArtifactRelationshipType supports = ArtifactRelationshipType._(
    'supports',
  );

  /// supported_with
  static final ArtifactRelationshipType supported_with =
      ArtifactRelationshipType._(
    'supported-with',
  );

  /// depends_on
  static final ArtifactRelationshipType depends_on = ArtifactRelationshipType._(
    'depends-on',
  );

  /// similar_to
  static final ArtifactRelationshipType similar_to = ArtifactRelationshipType._(
    'similar-to',
  );

  /// cites
  static final ArtifactRelationshipType cites = ArtifactRelationshipType._(
    'cites',
  );

  /// cited_by
  static final ArtifactRelationshipType cited_by = ArtifactRelationshipType._(
    'cited-by',
  );

  /// retracts
  static final ArtifactRelationshipType retracts = ArtifactRelationshipType._(
    'retracts',
  );

  /// retracted_by
  static final ArtifactRelationshipType retracted_by =
      ArtifactRelationshipType._(
    'retracted-by',
  );

  /// comments_on
  static final ArtifactRelationshipType comments_on =
      ArtifactRelationshipType._(
    'comments-on',
  );

  /// comment_in
  static final ArtifactRelationshipType comment_in = ArtifactRelationshipType._(
    'comment-in',
  );

  /// corrects
  static final ArtifactRelationshipType corrects = ArtifactRelationshipType._(
    'corrects',
  );

  /// correction_in
  static final ArtifactRelationshipType correction_in =
      ArtifactRelationshipType._(
    'correction-in',
  );

  /// For instances where an Element is present but not value

  static final ArtifactRelationshipType elementOnly =
      ArtifactRelationshipType._('');

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
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ArtifactRelationshipType setElement(
    String name,
    dynamic elementValue,
  ) {
    return ArtifactRelationshipType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ArtifactRelationshipType withElement(Element? newElement) {
    return ArtifactRelationshipType._(value, newElement);
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return ArtifactRelationshipType._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
        children: children ?? this.element?.children,
        namedChildren: namedChildren ?? this.element?.namedChildren,
      ),
    );
  }
}
