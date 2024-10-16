import 'package:fhir_r4/fhir_r4.dart';

/// EnteralFormulaAdditiveType: Codes for the type of modular component such as protein, carbohydrate or fiber to be provided in addition to or mixed with the base formula. This value set is provided as a suggestive example.
enum EnteralFormulaAdditiveTypeCode {
  /// Display: Lipid
  /// Definition: Modular lipid enteral formula component
  lipid('lipid'),

  /// Display: Protein
  /// Definition: Modular protein enteral formula component
  protein('protein'),

  /// Display: Carbohydrate
  /// Definition: Modular carbohydrate enteral formula component
  carbohydrate('carbohydrate'),

  /// Display: Fiber
  /// Definition: Modular fiber enteral formula component
  fiber('fiber'),

  /// Display: Water
  /// Definition: Added water
  water('water'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const EnteralFormulaAdditiveTypeCode(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static EnteralFormulaAdditiveTypeCode fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EnteralFormulaAdditiveTypeCode.elementOnly.withElement(element);
    }
    return EnteralFormulaAdditiveTypeCode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  EnteralFormulaAdditiveTypeCode withElement(Element? newElement) {
    return EnteralFormulaAdditiveTypeCode.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
