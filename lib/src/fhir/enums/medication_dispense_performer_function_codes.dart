// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// MedicationDispense Performer Function Codes
@collection
class MedicationDispensePerformerFunctionCodes {
  /// Constructor for internal use (like enum)
  MedicationDispensePerformerFunctionCodes({this.fhirCode, this.element})
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

  /// MedicationDispensePerformerFunctionCodes values
  /// dataenterer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispensePerformerFunctionCodes dataenterer =
      MedicationDispensePerformerFunctionCodes(
    fhirCode: 'dataenterer',
  );

  /// packager
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispensePerformerFunctionCodes packager =
      MedicationDispensePerformerFunctionCodes(
    fhirCode: 'packager',
  );

  /// checker
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispensePerformerFunctionCodes checker =
      MedicationDispensePerformerFunctionCodes(
    fhirCode: 'checker',
  );

  /// finalchecker
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispensePerformerFunctionCodes finalchecker =
      MedicationDispensePerformerFunctionCodes(
    fhirCode: 'finalchecker',
  );

  /// For instances where an Element is present but not value

  static final MedicationDispensePerformerFunctionCodes elementOnly =
      MedicationDispensePerformerFunctionCodes();

  /// List of all enum-like values
  static final List<MedicationDispensePerformerFunctionCodes> values = [
    dataenterer,
    packager,
    checker,
    finalchecker,
  ];

  /// Returns the enum value with an element attached
  MedicationDispensePerformerFunctionCodes withElement(Element? newElement) {
    return MedicationDispensePerformerFunctionCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
