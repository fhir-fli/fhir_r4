// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set defines a set of codes that can be used to indicate dietary preferences or restrictions a patient may have.
enum Diet {
  /// Display: Vegetarian
  /// Definition: Food without meat, poultry or seafood.
  vegetarian('vegetarian'),

  /// Display: Dairy Free
  /// Definition: Excludes dairy products.
  dairy_free('dairy-free'),

  /// Display: Nut Free
  /// Definition: Excludes ingredients containing nuts.
  nut_free('nut-free'),

  /// Display: Gluten Free
  /// Definition: Excludes ingredients containing gluten.
  gluten_free('gluten-free'),

  /// Display: Vegan
  /// Definition: Food without meat, poultry, seafood, eggs, dairy products and other animal-derived substances.
  vegan('vegan'),

  /// Display: Halal
  /// Definition: Foods that conform to Islamic law.
  halal('halal'),

  /// Display: Kosher
  /// Definition: Foods that conform to Jewish dietary law.
  kosher('kosher'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const Diet(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [Diet] instances.
  static Diet fromJson(
    Map<String, dynamic> json,
  ) {
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

  /// Returns the enum value with an element
  Diet withElement(Element? newElement) {
    return Diet.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
