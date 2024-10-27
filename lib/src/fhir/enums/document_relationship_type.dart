// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of relationship between documents.
class DocumentRelationshipType {
  // Private constructor for internal use (like enum)
  DocumentRelationshipType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// DocumentRelationshipType values
  /// replaces
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentRelationshipType replaces = DocumentRelationshipType._(
    'replaces',
  );

  /// transforms
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentRelationshipType transforms = DocumentRelationshipType._(
    'transforms',
  );

  /// signs
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentRelationshipType signs = DocumentRelationshipType._(
    'signs',
  );

  /// appends
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentRelationshipType appends = DocumentRelationshipType._(
    'appends',
  );

  /// For instances where an Element is present but not value

  static final DocumentRelationshipType elementOnly =
      DocumentRelationshipType._('');

  /// List of all enum-like values
  static final List<DocumentRelationshipType> values = [
    replaces,
    transforms,
    signs,
    appends,
  ];

  /// Returns the enum value with an element attached
  DocumentRelationshipType withElement(Element? newElement) {
    return DocumentRelationshipType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [DocumentRelationshipType] from JSON.
  static DocumentRelationshipType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DocumentRelationshipType.elementOnly.withElement(element);
    }
    return DocumentRelationshipType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
