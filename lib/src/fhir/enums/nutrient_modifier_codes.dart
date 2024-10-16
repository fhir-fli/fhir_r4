import 'package:fhir_r4/fhir_r4.dart';

/// NutrientModifier : Codes for types of nutrients that are being modified such as carbohydrate or sodium. This value set includes codes from [SNOMED CT](http://snomed.info/sct) where concept is-a 226355009 (Nutrients(substance)), and the concepts for Sodium, Potassium and Fluid. This is provided as a suggestive example.
enum NutrientModifierCodes {
  /// Display: Fluid
  /// Definition:
  value33463005('33463005'),

  /// Display: Sodium
  /// Definition:
  value39972003('39972003'),

  /// Display: Potassium
  /// Definition:
  value88480006('88480006'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const NutrientModifierCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static NutrientModifierCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NutrientModifierCodes.elementOnly.withElement(element);
    }
    return NutrientModifierCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  NutrientModifierCodes withElement(Element? newElement) {
    return NutrientModifierCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
