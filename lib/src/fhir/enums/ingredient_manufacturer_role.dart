// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The way in which this manufacturer is associated with the ingredient. For example whether it is a possible one (others allowed), or an exclusive authorized one for this ingredient. Note that this is not the manufacturing process role.
class IngredientManufacturerRole {
  // Private constructor for internal use (like enum)
  IngredientManufacturerRole._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// IngredientManufacturerRole values
  /// allowed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IngredientManufacturerRole allowed =
      IngredientManufacturerRole._(
    'allowed',
  );

  /// possible
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IngredientManufacturerRole possible =
      IngredientManufacturerRole._(
    'possible',
  );

  /// actual
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IngredientManufacturerRole actual = IngredientManufacturerRole._(
    'actual',
  );

  /// For instances where an Element is present but not value

  static final IngredientManufacturerRole elementOnly =
      IngredientManufacturerRole._('');

  /// List of all enum-like values
  static final List<IngredientManufacturerRole> values = [
    allowed,
    possible,
    actual,
  ];

  /// Returns the enum value with an element attached
  IngredientManufacturerRole withElement(Element? newElement) {
    return IngredientManufacturerRole._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [IngredientManufacturerRole] from JSON.
  static IngredientManufacturerRole fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IngredientManufacturerRole.elementOnly.withElement(element);
    }
    return IngredientManufacturerRole._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
