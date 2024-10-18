// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

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

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const EnteralFormulaAdditiveTypeCode(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [EnteralFormulaAdditiveTypeCode] instances.
  static EnteralFormulaAdditiveTypeCode fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EnteralFormulaAdditiveTypeCode.elementOnly.withElement(element);
    }
    return EnteralFormulaAdditiveTypeCode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  EnteralFormulaAdditiveTypeCode withElement(Element? newElement) {
    return EnteralFormulaAdditiveTypeCode.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
