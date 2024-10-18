// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The use context of a substance name for example if there is a different name when used as a drug active ingredient as opposed to a food colour additive.
enum SubstanceNameDomain {
  /// Display: Active Ingredient
  /// Definition:
  ActiveIngredient('ActiveIngredient'),

  /// Display: Food Color Additive
  /// Definition:
  FoodColorAdditive('FoodColorAdditive'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const SubstanceNameDomain(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [SubstanceNameDomain] instances.
  static SubstanceNameDomain fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubstanceNameDomain.elementOnly.withElement(
        element,
      );
    }
    return SubstanceNameDomain.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  SubstanceNameDomain withElement(Element? newElement) {
    return SubstanceNameDomain.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
