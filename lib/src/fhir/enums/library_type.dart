// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The type of knowledge asset this library contains.
@collection
class LibraryType {
  /// Constructor for internal use (like enum)
  LibraryType({this.fhirCode, this.element})
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

  /// LibraryType values
  /// logic_library
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final LibraryType logic_library = LibraryType(
    fhirCode: 'logic-library',
  );

  /// model_definition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final LibraryType model_definition = LibraryType(
    fhirCode: 'model-definition',
  );

  /// asset_collection
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final LibraryType asset_collection = LibraryType(
    fhirCode: 'asset-collection',
  );

  /// module_definition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final LibraryType module_definition = LibraryType(
    fhirCode: 'module-definition',
  );

  /// For instances where an Element is present but not value

  static final LibraryType elementOnly = LibraryType();

  /// List of all enum-like values
  static final List<LibraryType> values = [
    logic_library,
    model_definition,
    asset_collection,
    module_definition,
  ];

  /// Returns the enum value with an element attached
  LibraryType withElement(Element? newElement) {
    return LibraryType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
    return LibraryType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'LibraryType.$fhirCode';
}
