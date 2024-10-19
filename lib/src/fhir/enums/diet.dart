// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This value set defines a set of codes that can be used to indicate dietary preferences or restrictions a patient may have.
@collection
class Diet {
  /// Constructor for internal use (like enum)
  Diet({this.fhirCode, this.element})
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

  /// Diet values
  /// vegetarian
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Diet vegetarian = Diet(
    fhirCode: 'vegetarian',
  );

  /// dairy_free
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Diet dairy_free = Diet(
    fhirCode: 'dairy-free',
  );

  /// nut_free
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Diet nut_free = Diet(
    fhirCode: 'nut-free',
  );

  /// gluten_free
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Diet gluten_free = Diet(
    fhirCode: 'gluten-free',
  );

  /// vegan
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Diet vegan = Diet(
    fhirCode: 'vegan',
  );

  /// halal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Diet halal = Diet(
    fhirCode: 'halal',
  );

  /// kosher
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Diet kosher = Diet(
    fhirCode: 'kosher',
  );

  /// For instances where an Element is present but not value

  static final Diet elementOnly = Diet();

  /// List of all enum-like values
  static final List<Diet> values = [
    vegetarian,
    dairy_free,
    nut_free,
    gluten_free,
    vegan,
    halal,
    kosher,
  ];

  /// Returns the enum value with an element attached
  Diet withElement(Element? newElement) {
    return Diet(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [Diet] from JSON.
  static Diet fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return Diet.elementOnly.withElement(element);
    }
    return Diet.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'Diet.$fhirCode';
}
