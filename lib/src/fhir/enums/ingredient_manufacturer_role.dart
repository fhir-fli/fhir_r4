import 'package:fhir_r4/fhir_r4.dart';

/// The way in which this manufacturer is associated with the ingredient. For example whether it is a possible one (others allowed), or an exclusive authorized one for this ingredient. Note that this is not the manufacturing process role.
enum IngredientManufacturerRole {
  /// Display: Manufacturer is specifically allowed for this ingredient
  /// Definition:
  allowed('allowed'),

  /// Display: Manufacturer is known to make this ingredient in general
  /// Definition:
  possible('possible'),

  /// Display: Manufacturer actually makes this particular ingredient
  /// Definition:
  actual('actual'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const IngredientManufacturerRole(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static IngredientManufacturerRole fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IngredientManufacturerRole.elementOnly.withElement(element);
    }
    return IngredientManufacturerRole.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  IngredientManufacturerRole withElement(Element? newElement) {
    return IngredientManufacturerRole.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
