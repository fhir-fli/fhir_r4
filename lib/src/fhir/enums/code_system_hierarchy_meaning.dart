// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The meaning of the hierarchy of concepts in a code system.
class CodeSystemHierarchyMeaning {
  // Private constructor for internal use (like enum)
  CodeSystemHierarchyMeaning._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// CodeSystemHierarchyMeaning values
  /// grouped_by
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CodeSystemHierarchyMeaning grouped_by =
      CodeSystemHierarchyMeaning._(
    'grouped-by',
  );

  /// is_a
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CodeSystemHierarchyMeaning is_a = CodeSystemHierarchyMeaning._(
    'is-a',
  );

  /// part_of
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CodeSystemHierarchyMeaning part_of =
      CodeSystemHierarchyMeaning._(
    'part-of',
  );

  /// classified_with
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CodeSystemHierarchyMeaning classified_with =
      CodeSystemHierarchyMeaning._(
    'classified-with',
  );

  /// For instances where an Element is present but not value

  static final CodeSystemHierarchyMeaning elementOnly =
      CodeSystemHierarchyMeaning._('');

  /// List of all enum-like values
  static final List<CodeSystemHierarchyMeaning> values = [
    grouped_by,
    is_a,
    part_of,
    classified_with,
  ];

  /// Returns the enum value with an element attached
  CodeSystemHierarchyMeaning withElement(Element? newElement) {
    return CodeSystemHierarchyMeaning._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [CodeSystemHierarchyMeaning] from JSON.
  static CodeSystemHierarchyMeaning fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CodeSystemHierarchyMeaning.elementOnly.withElement(element);
    }
    return CodeSystemHierarchyMeaning._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
