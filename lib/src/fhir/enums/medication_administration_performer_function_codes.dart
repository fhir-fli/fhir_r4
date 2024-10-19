// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// MedicationAdministration Performer Function Codes
class MedicationAdministrationPerformerFunctionCodes {
  // Private constructor for internal use (like enum)
  MedicationAdministrationPerformerFunctionCodes._(this.fhirCode,
      {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// MedicationAdministrationPerformerFunctionCodes values
  /// performer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationAdministrationPerformerFunctionCodes performer =
      MedicationAdministrationPerformerFunctionCodes._(
    'performer',
  );

  /// verifier
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationAdministrationPerformerFunctionCodes verifier =
      MedicationAdministrationPerformerFunctionCodes._(
    'verifier',
  );

  /// witness
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationAdministrationPerformerFunctionCodes witness =
      MedicationAdministrationPerformerFunctionCodes._(
    'witness',
  );

  /// For instances where an Element is present but not value

  static final MedicationAdministrationPerformerFunctionCodes elementOnly =
      MedicationAdministrationPerformerFunctionCodes._('');

  /// List of all enum-like values
  static final List<MedicationAdministrationPerformerFunctionCodes> values = [
    performer,
    verifier,
    witness,
  ];

  /// Returns the enum value with an element attached
  MedicationAdministrationPerformerFunctionCodes withElement(
      Element? newElement) {
    return MedicationAdministrationPerformerFunctionCodes._(fhirCode,
        element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [MedicationAdministrationPerformerFunctionCodes] from JSON.
  static MedicationAdministrationPerformerFunctionCodes fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationAdministrationPerformerFunctionCodes.elementOnly
          .withElement(element);
    }
    return MedicationAdministrationPerformerFunctionCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() =>
      'MedicationAdministrationPerformerFunctionCodes.$fhirCode';
}
