// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Artifact Relationship Type
class ArtifactRelationshipType {
  // Private constructor for internal use (like enum)
  ArtifactRelationshipType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ArtifactRelationshipType values
  /// replaces
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactRelationshipType replaces = ArtifactRelationshipType._(
    'replaces',
  );

  /// amends
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactRelationshipType amends = ArtifactRelationshipType._(
    'amends',
  );

  /// appends
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactRelationshipType appends = ArtifactRelationshipType._(
    'appends',
  );

  /// transforms
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactRelationshipType transforms = ArtifactRelationshipType._(
    'transforms',
  );

  /// replaced_with
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactRelationshipType replaced_with =
      ArtifactRelationshipType._(
    'replaced-with',
  );

  /// amended_with
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactRelationshipType amended_with =
      ArtifactRelationshipType._(
    'amended-with',
  );

  /// appended_with
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactRelationshipType appended_with =
      ArtifactRelationshipType._(
    'appended-with',
  );

  /// transformed_with
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactRelationshipType transformed_with =
      ArtifactRelationshipType._(
    'transformed-with',
  );

  /// derived_from
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactRelationshipType derived_from =
      ArtifactRelationshipType._(
    'derived-from',
  );

  /// transformed_into
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactRelationshipType transformed_into =
      ArtifactRelationshipType._(
    'transformed-into',
  );

  /// composed_of
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactRelationshipType composed_of =
      ArtifactRelationshipType._(
    'composed-of',
  );

  /// part_of
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactRelationshipType part_of = ArtifactRelationshipType._(
    'part-of',
  );

  /// supports
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactRelationshipType supports = ArtifactRelationshipType._(
    'supports',
  );

  /// supported_with
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactRelationshipType supported_with =
      ArtifactRelationshipType._(
    'supported-with',
  );

  /// depends_on
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactRelationshipType depends_on = ArtifactRelationshipType._(
    'depends-on',
  );

  /// similar_to
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactRelationshipType similar_to = ArtifactRelationshipType._(
    'similar-to',
  );

  /// cites
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactRelationshipType cites = ArtifactRelationshipType._(
    'cites',
  );

  /// cited_by
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactRelationshipType cited_by = ArtifactRelationshipType._(
    'cited-by',
  );

  /// retracts
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactRelationshipType retracts = ArtifactRelationshipType._(
    'retracts',
  );

  /// retracted_by
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactRelationshipType retracted_by =
      ArtifactRelationshipType._(
    'retracted-by',
  );

  /// comments_on
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactRelationshipType comments_on =
      ArtifactRelationshipType._(
    'comments-on',
  );

  /// comment_in
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactRelationshipType comment_in = ArtifactRelationshipType._(
    'comment-in',
  );

  /// corrects
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactRelationshipType corrects = ArtifactRelationshipType._(
    'corrects',
  );

  /// correction_in
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
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

  /// Returns the enum value with an element attached
  ArtifactRelationshipType withElement(Element? newElement) {
    return ArtifactRelationshipType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ArtifactRelationshipType] from JSON.
  static ArtifactRelationshipType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ArtifactRelationshipType.elementOnly.withElement(element);
    }
    return ArtifactRelationshipType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
