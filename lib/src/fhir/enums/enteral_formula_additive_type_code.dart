// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// EnteralFormulaAdditiveType: Codes for the type of modular component such as protein, carbohydrate or fiber to be provided in addition to or mixed with the base formula. This value set is provided as a suggestive example.
class EnteralFormulaAdditiveTypeCode {
  // Private constructor for internal use (like enum)
  EnteralFormulaAdditiveTypeCode._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// EnteralFormulaAdditiveTypeCode values
  /// lipid
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EnteralFormulaAdditiveTypeCode lipid =
      EnteralFormulaAdditiveTypeCode._(
    'lipid',
  );

  /// protein
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EnteralFormulaAdditiveTypeCode protein =
      EnteralFormulaAdditiveTypeCode._(
    'protein',
  );

  /// carbohydrate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EnteralFormulaAdditiveTypeCode carbohydrate =
      EnteralFormulaAdditiveTypeCode._(
    'carbohydrate',
  );

  /// fiber
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EnteralFormulaAdditiveTypeCode fiber =
      EnteralFormulaAdditiveTypeCode._(
    'fiber',
  );

  /// water
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EnteralFormulaAdditiveTypeCode water =
      EnteralFormulaAdditiveTypeCode._(
    'water',
  );

  /// For instances where an Element is present but not value

  static final EnteralFormulaAdditiveTypeCode elementOnly =
      EnteralFormulaAdditiveTypeCode._('');

  /// List of all enum-like values
  static final List<EnteralFormulaAdditiveTypeCode> values = [
    lipid,
    protein,
    carbohydrate,
    fiber,
    water,
  ];

  /// Returns the enum value with an element attached
  EnteralFormulaAdditiveTypeCode withElement(Element? newElement) {
    return EnteralFormulaAdditiveTypeCode._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [EnteralFormulaAdditiveTypeCode] from JSON.
  static EnteralFormulaAdditiveTypeCode fromJson(Map<String, dynamic> json) {
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

  /// String representation
  @override
  String toString() => fhirCode;
}
