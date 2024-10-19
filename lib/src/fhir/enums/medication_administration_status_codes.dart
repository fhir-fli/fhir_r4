// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// MedicationAdministration Status Codes
@collection
class MedicationAdministrationStatusCodes {
  /// Constructor for internal use (like enum)
  MedicationAdministrationStatusCodes({this.fhirCode, this.element})
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

  /// MedicationAdministrationStatusCodes values
  /// in_progress
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationAdministrationStatusCodes in_progress =
      MedicationAdministrationStatusCodes(
    fhirCode: 'in-progress',
  );

  /// not_done
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationAdministrationStatusCodes not_done =
      MedicationAdministrationStatusCodes(
    fhirCode: 'not-done',
  );

  /// on_hold
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationAdministrationStatusCodes on_hold =
      MedicationAdministrationStatusCodes(
    fhirCode: 'on-hold',
  );

  /// completed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationAdministrationStatusCodes completed =
      MedicationAdministrationStatusCodes(
    fhirCode: 'completed',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationAdministrationStatusCodes entered_in_error =
      MedicationAdministrationStatusCodes(
    fhirCode: 'entered-in-error',
  );

  /// stopped
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationAdministrationStatusCodes stopped =
      MedicationAdministrationStatusCodes(
    fhirCode: 'stopped',
  );

  /// unknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationAdministrationStatusCodes unknown =
      MedicationAdministrationStatusCodes(
    fhirCode: 'unknown',
  );

  /// For instances where an Element is present but not value

  static final MedicationAdministrationStatusCodes elementOnly =
      MedicationAdministrationStatusCodes();

  /// List of all enum-like values
  static final List<MedicationAdministrationStatusCodes> values = [
    in_progress,
    not_done,
    on_hold,
    completed,
    entered_in_error,
    stopped,
    unknown,
  ];

  /// Returns the enum value with an element attached
  MedicationAdministrationStatusCodes withElement(Element? newElement) {
    return MedicationAdministrationStatusCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [MedicationAdministrationStatusCodes] from JSON.
  static MedicationAdministrationStatusCodes fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationAdministrationStatusCodes.elementOnly
          .withElement(element);
    }
    return MedicationAdministrationStatusCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MedicationAdministrationStatusCodes.$fhirCode';
}
