// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Artifact Relationship Type
@collection
class ArtifactRelationshipType {
  /// Constructor for internal use (like enum)
  ArtifactRelationshipType({this.fhirCode, this.element})
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

  /// ArtifactRelationshipType values
  /// replaces
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactRelationshipType replaces = ArtifactRelationshipType(
    fhirCode: 'replaces',
  );

  /// amends
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactRelationshipType amends = ArtifactRelationshipType(
    fhirCode: 'amends',
  );

  /// appends
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactRelationshipType appends = ArtifactRelationshipType(
    fhirCode: 'appends',
  );

  /// transforms
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactRelationshipType transforms = ArtifactRelationshipType(
    fhirCode: 'transforms',
  );

  /// replaced_with
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactRelationshipType replaced_with =
      ArtifactRelationshipType(
    fhirCode: 'replaced-with',
  );

  /// amended_with
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactRelationshipType amended_with = ArtifactRelationshipType(
    fhirCode: 'amended-with',
  );

  /// appended_with
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactRelationshipType appended_with =
      ArtifactRelationshipType(
    fhirCode: 'appended-with',
  );

  /// transformed_with
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactRelationshipType transformed_with =
      ArtifactRelationshipType(
    fhirCode: 'transformed-with',
  );

  /// derived_from
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactRelationshipType derived_from = ArtifactRelationshipType(
    fhirCode: 'derived-from',
  );

  /// transformed_into
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactRelationshipType transformed_into =
      ArtifactRelationshipType(
    fhirCode: 'transformed-into',
  );

  /// composed_of
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactRelationshipType composed_of = ArtifactRelationshipType(
    fhirCode: 'composed-of',
  );

  /// part_of
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactRelationshipType part_of = ArtifactRelationshipType(
    fhirCode: 'part-of',
  );

  /// supports
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactRelationshipType supports = ArtifactRelationshipType(
    fhirCode: 'supports',
  );

  /// supported_with
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactRelationshipType supported_with =
      ArtifactRelationshipType(
    fhirCode: 'supported-with',
  );

  /// depends_on
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactRelationshipType depends_on = ArtifactRelationshipType(
    fhirCode: 'depends-on',
  );

  /// similar_to
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactRelationshipType similar_to = ArtifactRelationshipType(
    fhirCode: 'similar-to',
  );

  /// cites
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactRelationshipType cites = ArtifactRelationshipType(
    fhirCode: 'cites',
  );

  /// cited_by
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactRelationshipType cited_by = ArtifactRelationshipType(
    fhirCode: 'cited-by',
  );

  /// retracts
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactRelationshipType retracts = ArtifactRelationshipType(
    fhirCode: 'retracts',
  );

  /// retracted_by
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactRelationshipType retracted_by = ArtifactRelationshipType(
    fhirCode: 'retracted-by',
  );

  /// comments_on
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactRelationshipType comments_on = ArtifactRelationshipType(
    fhirCode: 'comments-on',
  );

  /// comment_in
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactRelationshipType comment_in = ArtifactRelationshipType(
    fhirCode: 'comment-in',
  );

  /// corrects
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactRelationshipType corrects = ArtifactRelationshipType(
    fhirCode: 'corrects',
  );

  /// correction_in
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ArtifactRelationshipType correction_in =
      ArtifactRelationshipType(
    fhirCode: 'correction-in',
  );

  /// For instances where an Element is present but not value

  static final ArtifactRelationshipType elementOnly =
      ArtifactRelationshipType();

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
    return ArtifactRelationshipType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ArtifactRelationshipType.$fhirCode';
}
