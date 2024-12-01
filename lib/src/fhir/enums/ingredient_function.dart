// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A classification of the ingredient identifying its precise purpose(s) in the drug product (beyond e.g. active/inactive).
class IngredientFunction {
  // Private constructor for internal use (like enum)
  IngredientFunction._(this.fhirCode, {this.element});

  /// Factory constructor to create [IngredientFunction] from JSON.
  factory IngredientFunction.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IngredientFunction.elementOnly.withElement(element);
    }
    return IngredientFunction._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// IngredientFunction values
  /// Antioxidant
  static final IngredientFunction Antioxidant = IngredientFunction._(
    'Antioxidant',
  );

  /// AlkalizingAgent
  static final IngredientFunction AlkalizingAgent = IngredientFunction._(
    'AlkalizingAgent',
  );

  /// For instances where an Element is present but not value

  static final IngredientFunction elementOnly = IngredientFunction._('');

  /// List of all enum-like values
  static final List<IngredientFunction> values = [
    Antioxidant,
    AlkalizingAgent,
  ];

  /// Returns the enum value with an element attached
  IngredientFunction withElement(Element? newElement) {
    return IngredientFunction._(fhirCode, element: newElement);
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
