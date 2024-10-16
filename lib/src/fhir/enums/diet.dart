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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const Diet(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static Diet fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return Diet.elementOnly.withElement(element);
    }
    return Diet.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  Diet withElement(Element? newElement) {
    return Diet.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
