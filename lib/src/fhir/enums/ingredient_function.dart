// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// A classification of the ingredient identifying its precise purpose(s) in the drug product (beyond e.g. active/inactive).
@collection
class IngredientFunction {
  /// Constructor for internal use (like enum)
  IngredientFunction({this.fhirCode, this.element})
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

  /// IngredientFunction values
  /// Antioxidant
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IngredientFunction Antioxidant = IngredientFunction(
    fhirCode: 'Antioxidant',
  );

  /// AlkalizingAgent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IngredientFunction AlkalizingAgent = IngredientFunction(
    fhirCode: 'AlkalizingAgent',
  );

  /// For instances where an Element is present but not value

  static final IngredientFunction elementOnly = IngredientFunction();

  /// List of all enum-like values
  static final List<IngredientFunction> values = [
    Antioxidant,
    AlkalizingAgent,
  ];

  /// Returns the enum value with an element attached
  IngredientFunction withElement(Element? newElement) {
    return IngredientFunction(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [IngredientFunction] from JSON.
  static IngredientFunction fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IngredientFunction.elementOnly.withElement(element);
    }
    return IngredientFunction.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'IngredientFunction.$fhirCode';
}
