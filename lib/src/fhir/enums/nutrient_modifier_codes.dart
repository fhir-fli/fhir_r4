// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// NutrientModifier : Codes for types of nutrients that are being modified such as carbohydrate or sodium. This value set includes codes from [SNOMED CT](http://snomed.info/sct) where concept is-a 226355009 (Nutrients(substance)), and the concepts for Sodium, Potassium and Fluid. This is provided as a suggestive example.
class NutrientModifierCodes {
  // Private constructor for internal use (like enum)
  NutrientModifierCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// NutrientModifierCodes values
  /// value33463005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final NutrientModifierCodes value33463005 = NutrientModifierCodes._(
    '33463005',
  );

  /// value39972003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final NutrientModifierCodes value39972003 = NutrientModifierCodes._(
    '39972003',
  );

  /// value88480006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final NutrientModifierCodes value88480006 = NutrientModifierCodes._(
    '88480006',
  );

  /// For instances where an Element is present but not value

  static final NutrientModifierCodes elementOnly = NutrientModifierCodes._('');

  /// List of all enum-like values
  static final List<NutrientModifierCodes> values = [
    value33463005,
    value39972003,
    value88480006,
  ];

  /// Returns the enum value with an element attached
  NutrientModifierCodes withElement(Element? newElement) {
    return NutrientModifierCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [NutrientModifierCodes] from JSON.
  static NutrientModifierCodes fromJson(Map<String, dynamic> json) {
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

  /// String representation
  @override
  String toString() => fhirCode;
}
