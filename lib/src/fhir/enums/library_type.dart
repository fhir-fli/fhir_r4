// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of knowledge asset this library contains.
class LibraryType {
  // Private constructor for internal use (like enum)
  LibraryType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// LibraryType values
  /// logic_library
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final LibraryType logic_library = LibraryType._(
    'logic-library',
  );

  /// model_definition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final LibraryType model_definition = LibraryType._(
    'model-definition',
  );

  /// asset_collection
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final LibraryType asset_collection = LibraryType._(
    'asset-collection',
  );

  /// module_definition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final LibraryType module_definition = LibraryType._(
    'module-definition',
  );

  /// For instances where an Element is present but not value

  static final LibraryType elementOnly = LibraryType._('');

  /// List of all enum-like values
  static final List<LibraryType> values = [
    logic_library,
    model_definition,
    asset_collection,
    module_definition,
  ];

  /// Returns the enum value with an element attached
  LibraryType withElement(Element? newElement) {
    return LibraryType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [LibraryType] from JSON.
  static LibraryType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return LibraryType.elementOnly.withElement(element);
    }
    return LibraryType._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
