// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The type of knowledge asset this library contains.
@Entity()
class LibraryType extends FhirCode {
  /// Factory constructor to create [LibraryType] from JSON.
  factory LibraryType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return LibraryType.elementOnly(element);
    }
    if (values.contains(value)) {
      return LibraryType._(value, element);
    }
    throw ArgumentError(
      'LibraryType.fromJson: JSON value is not a valid value',
    );
  }

  /// logic_library
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  LibraryType.logic_library([this.element])
      : dbValue = 'logic-library',
        super('logic-library', element);

  /// model_definition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  LibraryType.model_definition([this.element])
      : dbValue = 'model-definition',
        super('model-definition', element);

  /// asset_collection
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  LibraryType.asset_collection([this.element])
      : dbValue = 'asset-collection',
        super('asset-collection', element);

  /// module_definition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  LibraryType.module_definition([this.element])
      : dbValue = 'module-definition',
        super('module-definition', element);

  /// For instances where an Element is present but not value

  LibraryType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  LibraryType._(super.input, [super.element])
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
    'logic-library',
    'model-definition',
    'asset-collection',
    'module-definition',
  ];

  /// Returns the enum value with an element attached
  LibraryType withElement(Element? newElement) {
    return LibraryType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'LibraryType.$value';
}
