// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The type of relationship between documents.
@Entity()
class DocumentRelationshipType extends FhirCode {
  /// Factory constructor to create [DocumentRelationshipType] from JSON.
  factory DocumentRelationshipType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DocumentRelationshipType.elementOnly(element);
    }
    if (values.contains(value)) {
      return DocumentRelationshipType._(value, element);
    }
    throw ArgumentError(
      'DocumentRelationshipType.fromJson: JSON value is not a valid value',
    );
  }

  /// replaces
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentRelationshipType.replaces([this.element])
      : dbValue = 'replaces',
        super('replaces', element);

  /// transforms
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentRelationshipType.transforms([this.element])
      : dbValue = 'transforms',
        super('transforms', element);

  /// signs
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentRelationshipType.signs([this.element])
      : dbValue = 'signs',
        super('signs', element);

  /// appends
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentRelationshipType.appends([this.element])
      : dbValue = 'appends',
        super('appends', element);

  /// For instances where an Element is present but not value

  DocumentRelationshipType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  DocumentRelationshipType._(super.input, [super.element])
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
    'replaces',
    'transforms',
    'signs',
    'appends',
  ];

  /// Returns the enum value with an element attached
  DocumentRelationshipType withElement(Element? newElement) {
    return DocumentRelationshipType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'DocumentRelationshipType.$value';
}
