// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// EnteralFormulaAdditiveType: Codes for the type of modular component such as protein, carbohydrate or fiber to be provided in addition to or mixed with the base formula. This value set is provided as a suggestive example.
@Entity()
class EnteralFormulaAdditiveTypeCode extends FhirCode {
  /// Factory constructor to create [EnteralFormulaAdditiveTypeCode] from JSON.
  factory EnteralFormulaAdditiveTypeCode.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EnteralFormulaAdditiveTypeCode.elementOnly(element);
    }
    if (values.contains(value)) {
      return EnteralFormulaAdditiveTypeCode._(value, element);
    }
    throw ArgumentError(
      'EnteralFormulaAdditiveTypeCode.fromJson: JSON value is not a valid value',
    );
  }

  /// lipid
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EnteralFormulaAdditiveTypeCode.lipid([this.element])
      : dbValue = 'lipid',
        super('lipid', element);

  /// protein
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EnteralFormulaAdditiveTypeCode.protein([this.element])
      : dbValue = 'protein',
        super('protein', element);

  /// carbohydrate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EnteralFormulaAdditiveTypeCode.carbohydrate([this.element])
      : dbValue = 'carbohydrate',
        super('carbohydrate', element);

  /// fiber
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EnteralFormulaAdditiveTypeCode.fiber([this.element])
      : dbValue = 'fiber',
        super('fiber', element);

  /// water
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EnteralFormulaAdditiveTypeCode.water([this.element])
      : dbValue = 'water',
        super('water', element);

  /// For instances where an Element is present but not value

  EnteralFormulaAdditiveTypeCode.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  EnteralFormulaAdditiveTypeCode._(super.input, [super.element])
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
    'lipid',
    'protein',
    'carbohydrate',
    'fiber',
    'water',
  ];

  /// Returns the enum value with an element attached
  EnteralFormulaAdditiveTypeCode withElement(Element? newElement) {
    return EnteralFormulaAdditiveTypeCode._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'EnteralFormulaAdditiveTypeCode.$value';
}
