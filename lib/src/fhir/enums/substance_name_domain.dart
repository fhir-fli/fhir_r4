// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The use context of a substance name for example if there is a different name when used as a drug active ingredient as opposed to a food colour additive.
@collection
class SubstanceNameDomain {
  /// Constructor for internal use (like enum)
  SubstanceNameDomain({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// SubstanceNameDomain values
  /// ActiveIngredient
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubstanceNameDomain ActiveIngredient = SubstanceNameDomain(
    fhirCode: 'ActiveIngredient',
  );

  /// FoodColorAdditive
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubstanceNameDomain FoodColorAdditive = SubstanceNameDomain(
    fhirCode: 'FoodColorAdditive',
  );

  /// For instances where an Element is present but not value

  static final SubstanceNameDomain elementOnly = SubstanceNameDomain();

  /// List of all enum-like values
  static final List<SubstanceNameDomain> values = [
    ActiveIngredient,
    FoodColorAdditive,
  ];

  /// Returns the enum value with an element attached
  SubstanceNameDomain withElement(Element? newElement) {
    return SubstanceNameDomain(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [SubstanceNameDomain] from JSON.
  static SubstanceNameDomain fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubstanceNameDomain.elementOnly.withElement(element);
    }
    return SubstanceNameDomain.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SubstanceNameDomain.$fhirCode';
}
