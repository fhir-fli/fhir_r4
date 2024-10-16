import 'package:fhir_r4/fhir_r4.dart';

/// A classification of the ingredient identifying its precise purpose(s) in the drug product (beyond e.g. active/inactive).
enum IngredientFunction {
  /// Display: Antioxidant
  /// Definition:
  Antioxidant('Antioxidant'),

  /// Display: Alkalizing Agent
  /// Definition:
  AlkalizingAgent('AlkalizingAgent'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const IngredientFunction(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static IngredientFunction fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IngredientFunction.elementOnly.withElement(element);
    }
    return IngredientFunction.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  IngredientFunction withElement(Element? newElement) {
    return IngredientFunction.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
