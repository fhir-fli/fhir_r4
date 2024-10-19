// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Artifact Relationship Type
@Entity()
class ArtifactRelationshipType extends FhirCode {
  /// Factory constructor to create [ArtifactRelationshipType] from JSON.
  factory ArtifactRelationshipType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ArtifactRelationshipType.elementOnly(element);
    }
    if (values.contains(value)) {
      return ArtifactRelationshipType._(value, element);
    }
    throw ArgumentError(
      'ArtifactRelationshipType.fromJson: JSON value is not a valid value',
    );
  }

  /// replaces
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArtifactRelationshipType.replaces([this.element])
      : dbValue = 'replaces',
        super('replaces', element);

  /// amends
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArtifactRelationshipType.amends([this.element])
      : dbValue = 'amends',
        super('amends', element);

  /// appends
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArtifactRelationshipType.appends([this.element])
      : dbValue = 'appends',
        super('appends', element);

  /// transforms
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArtifactRelationshipType.transforms([this.element])
      : dbValue = 'transforms',
        super('transforms', element);

  /// replaced_with
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArtifactRelationshipType.replaced_with([this.element])
      : dbValue = 'replaced-with',
        super('replaced-with', element);

  /// amended_with
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArtifactRelationshipType.amended_with([this.element])
      : dbValue = 'amended-with',
        super('amended-with', element);

  /// appended_with
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArtifactRelationshipType.appended_with([this.element])
      : dbValue = 'appended-with',
        super('appended-with', element);

  /// transformed_with
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArtifactRelationshipType.transformed_with([this.element])
      : dbValue = 'transformed-with',
        super('transformed-with', element);

  /// derived_from
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArtifactRelationshipType.derived_from([this.element])
      : dbValue = 'derived-from',
        super('derived-from', element);

  /// transformed_into
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArtifactRelationshipType.transformed_into([this.element])
      : dbValue = 'transformed-into',
        super('transformed-into', element);

  /// composed_of
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArtifactRelationshipType.composed_of([this.element])
      : dbValue = 'composed-of',
        super('composed-of', element);

  /// part_of
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArtifactRelationshipType.part_of([this.element])
      : dbValue = 'part-of',
        super('part-of', element);

  /// supports
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArtifactRelationshipType.supports([this.element])
      : dbValue = 'supports',
        super('supports', element);

  /// supported_with
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArtifactRelationshipType.supported_with([this.element])
      : dbValue = 'supported-with',
        super('supported-with', element);

  /// depends_on
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArtifactRelationshipType.depends_on([this.element])
      : dbValue = 'depends-on',
        super('depends-on', element);

  /// similar_to
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArtifactRelationshipType.similar_to([this.element])
      : dbValue = 'similar-to',
        super('similar-to', element);

  /// cites
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArtifactRelationshipType.cites([this.element])
      : dbValue = 'cites',
        super('cites', element);

  /// cited_by
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArtifactRelationshipType.cited_by([this.element])
      : dbValue = 'cited-by',
        super('cited-by', element);

  /// retracts
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArtifactRelationshipType.retracts([this.element])
      : dbValue = 'retracts',
        super('retracts', element);

  /// retracted_by
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArtifactRelationshipType.retracted_by([this.element])
      : dbValue = 'retracted-by',
        super('retracted-by', element);

  /// comments_on
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArtifactRelationshipType.comments_on([this.element])
      : dbValue = 'comments-on',
        super('comments-on', element);

  /// comment_in
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArtifactRelationshipType.comment_in([this.element])
      : dbValue = 'comment-in',
        super('comment-in', element);

  /// corrects
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArtifactRelationshipType.corrects([this.element])
      : dbValue = 'corrects',
        super('corrects', element);

  /// correction_in
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArtifactRelationshipType.correction_in([this.element])
      : dbValue = 'correction-in',
        super('correction-in', element);

  /// For instances where an Element is present but not value

  ArtifactRelationshipType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ArtifactRelationshipType._(super.input, [super.element])
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
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    'replaces',
    'amends',
    'appends',
    'transforms',
    'replaced-with',
    'amended-with',
    'appended-with',
    'transformed-with',
    'derived-from',
    'transformed-into',
    'composed-of',
    'part-of',
    'supports',
    'supported-with',
    'depends-on',
    'similar-to',
    'cites',
    'cited-by',
    'retracts',
    'retracted-by',
    'comments-on',
    'comment-in',
    'corrects',
    'correction-in',
  ];

  /// Returns the enum value with an element attached
  ArtifactRelationshipType withElement(Element? newElement) {
    return ArtifactRelationshipType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ArtifactRelationshipType.$value';
}
