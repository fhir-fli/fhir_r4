// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// A classification of the ingredient identifying its precise purpose(s) in the drug product (beyond e.g. active/inactive).
@Entity()
class IngredientFunction extends FhirCode {
  /// Factory constructor to create [IngredientFunction] from JSON.
  factory IngredientFunction.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IngredientFunction.elementOnly(element);
    }
    if (values.contains(value)) {
      return IngredientFunction._(value, element);
    }
    throw ArgumentError(
      'IngredientFunction.fromJson: JSON value is not a valid value',
    );
  }

  /// Antioxidant
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IngredientFunction.Antioxidant([this.element])
      : dbValue = 'Antioxidant',
        super('Antioxidant', element);

  /// AlkalizingAgent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IngredientFunction.AlkalizingAgent([this.element])
      : dbValue = 'AlkalizingAgent',
        super('AlkalizingAgent', element);

  /// For instances where an Element is present but not value

  IngredientFunction.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  IngredientFunction._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    'Antioxidant',
    'AlkalizingAgent',
  ];

  /// Returns the enum value with an element attached
  IngredientFunction withElement(Element? newElement) {
    return IngredientFunction._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'IngredientFunction.$value';
}
