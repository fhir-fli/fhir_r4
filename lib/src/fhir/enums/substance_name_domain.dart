import 'package:fhir_r4/fhir_r4.dart';

/// The use context of a substance name for example if there is a different name when used as a drug active ingredient as opposed to a food colour additive.
enum SubstanceNameDomain {
  /// Display: Active Ingredient
  /// Definition:
  ActiveIngredient('ActiveIngredient'),

  /// Display: Food Color Additive
  /// Definition:
  FoodColorAdditive('FoodColorAdditive'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const SubstanceNameDomain(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static SubstanceNameDomain fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubstanceNameDomain.elementOnly.withElement(element);
    }
    return SubstanceNameDomain.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  SubstanceNameDomain withElement(Element? newElement) {
    return SubstanceNameDomain.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
