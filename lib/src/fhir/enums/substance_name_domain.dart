// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The use context of a substance name for example if there is a different name when used as a drug active ingredient as opposed to a food colour additive.
class SubstanceNameDomain {
  // Private constructor for internal use (like enum)
  SubstanceNameDomain._(this.fhirCode, {this.element});

  /// Factory constructor to create [SubstanceNameDomain] from JSON.
  factory SubstanceNameDomain.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubstanceNameDomain.elementOnly.withElement(element);
    }
    return SubstanceNameDomain._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// SubstanceNameDomain values
  /// ActiveIngredient
  static final SubstanceNameDomain ActiveIngredient = SubstanceNameDomain._(
    'ActiveIngredient',
  );

  /// FoodColorAdditive
  static final SubstanceNameDomain FoodColorAdditive = SubstanceNameDomain._(
    'FoodColorAdditive',
  );

  /// For instances where an Element is present but not value

  static final SubstanceNameDomain elementOnly = SubstanceNameDomain._('');

  /// List of all enum-like values
  static final List<SubstanceNameDomain> values = [
    ActiveIngredient,
    FoodColorAdditive,
  ];

  /// Returns the enum value with an element attached
  SubstanceNameDomain withElement(Element? newElement) {
    return SubstanceNameDomain._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
