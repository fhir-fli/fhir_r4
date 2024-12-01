// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of relationship between documents.
class DocumentRelationshipType {
  // Private constructor for internal use (like enum)
  DocumentRelationshipType._(this.fhirCode, {this.element});

  /// Factory constructor to create [DocumentRelationshipType] from JSON.
  factory DocumentRelationshipType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DocumentRelationshipType.elementOnly.withElement(element);
    }
    return DocumentRelationshipType._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// DocumentRelationshipType values
  /// replaces
  static final DocumentRelationshipType replaces = DocumentRelationshipType._(
    'replaces',
  );

  /// transforms
  static final DocumentRelationshipType transforms = DocumentRelationshipType._(
    'transforms',
  );

  /// signs
  static final DocumentRelationshipType signs = DocumentRelationshipType._(
    'signs',
  );

  /// appends
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

  /// String representation
  @override
  String toString() => fhirCode;
}
