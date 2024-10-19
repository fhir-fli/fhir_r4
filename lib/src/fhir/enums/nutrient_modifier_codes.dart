// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// NutrientModifier : Codes for types of nutrients that are being modified such as carbohydrate or sodium. This value set includes codes from [SNOMED CT](http://snomed.info/sct) where concept is-a 226355009 (Nutrients(substance)), and the concepts for Sodium, Potassium and Fluid. This is provided as a suggestive example.
@Entity()
class NutrientModifierCodes extends FhirCode {
  /// Factory constructor to create [NutrientModifierCodes] from JSON.
  factory NutrientModifierCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NutrientModifierCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return NutrientModifierCodes._(value, element);
    }
    throw ArgumentError(
      'NutrientModifierCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// value33463005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  NutrientModifierCodes.value33463005([this.element])
      : dbValue = '33463005',
        super('33463005', element);

  /// value39972003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  NutrientModifierCodes.value39972003([this.element])
      : dbValue = '39972003',
        super('39972003', element);

  /// value88480006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  NutrientModifierCodes.value88480006([this.element])
      : dbValue = '88480006',
        super('88480006', element);

  /// For instances where an Element is present but not value

  NutrientModifierCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  NutrientModifierCodes._(super.input, [super.element])
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
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    '33463005',
    '39972003',
    '88480006',
  ];

  /// Returns the enum value with an element attached
  NutrientModifierCodes withElement(Element? newElement) {
    return NutrientModifierCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'NutrientModifierCodes.$value';
}
