// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

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

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const NutrientModifierCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [NutrientModifierCodes] instances.
  static NutrientModifierCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NutrientModifierCodes.elementOnly.withElement(element);
    }
    return NutrientModifierCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  NutrientModifierCodes withElement(Element? newElement) {
    return NutrientModifierCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
