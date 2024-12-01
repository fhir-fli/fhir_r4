// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set defines a set of codes that can be used to indicate dietary preferences or restrictions a patient may have.
class Diet {
  // Private constructor for internal use (like enum)
  Diet._(this.fhirCode, {this.element});

  /// Factory constructor to create [Diet] from JSON.
  factory Diet.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return Diet.elementOnly.withElement(element);
    }
    return Diet._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Diet values
  /// vegetarian
  static final Diet vegetarian = Diet._(
    'vegetarian',
  );

  /// dairy_free
  static final Diet dairy_free = Diet._(
    'dairy-free',
  );

  /// nut_free
  static final Diet nut_free = Diet._(
    'nut-free',
  );

  /// gluten_free
  static final Diet gluten_free = Diet._(
    'gluten-free',
  );

  /// vegan
  static final Diet vegan = Diet._(
    'vegan',
  );

  /// halal
  static final Diet halal = Diet._(
    'halal',
  );

  /// kosher
  static final Diet kosher = Diet._(
    'kosher',
  );

  /// For instances where an Element is present but not value

  static final Diet elementOnly = Diet._('');

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
    return Diet._(fhirCode, element: newElement);
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
