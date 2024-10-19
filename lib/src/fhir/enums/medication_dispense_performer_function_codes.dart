// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// MedicationDispense Performer Function Codes
class MedicationDispensePerformerFunctionCodes {
  // Private constructor for internal use (like enum)
  MedicationDispensePerformerFunctionCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// MedicationDispensePerformerFunctionCodes values
  /// dataenterer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispensePerformerFunctionCodes dataenterer =
      MedicationDispensePerformerFunctionCodes._(
    'dataenterer',
  );

  /// packager
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispensePerformerFunctionCodes packager =
      MedicationDispensePerformerFunctionCodes._(
    'packager',
  );

  /// checker
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispensePerformerFunctionCodes checker =
      MedicationDispensePerformerFunctionCodes._(
    'checker',
  );

  /// finalchecker
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispensePerformerFunctionCodes finalchecker =
      MedicationDispensePerformerFunctionCodes._(
    'finalchecker',
  );

  /// For instances where an Element is present but not value

  static final MedicationDispensePerformerFunctionCodes elementOnly =
      MedicationDispensePerformerFunctionCodes._('');

  /// List of all enum-like values
  static final List<MedicationDispensePerformerFunctionCodes> values = [
    dataenterer,
    packager,
    checker,
    finalchecker,
  ];

  /// Returns the enum value with an element attached
  MedicationDispensePerformerFunctionCodes withElement(Element? newElement) {
    return MedicationDispensePerformerFunctionCodes._(fhirCode,
        element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [MedicationDispensePerformerFunctionCodes] from JSON.
  static MedicationDispensePerformerFunctionCodes fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationDispensePerformerFunctionCodes.elementOnly
          .withElement(element);
    }
    return MedicationDispensePerformerFunctionCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MedicationDispensePerformerFunctionCodes.$fhirCode';
}
