// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// MedicationDispense Status Codes
@collection
class MedicationDispenseStatusCodes {
  /// Constructor for internal use (like enum)
  MedicationDispenseStatusCodes({this.fhirCode, this.element})
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

  /// MedicationDispenseStatusCodes values
  /// preparation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseStatusCodes preparation =
      MedicationDispenseStatusCodes(
    fhirCode: 'preparation',
  );

  /// in_progress
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseStatusCodes in_progress =
      MedicationDispenseStatusCodes(
    fhirCode: 'in-progress',
  );

  /// cancelled
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseStatusCodes cancelled =
      MedicationDispenseStatusCodes(
    fhirCode: 'cancelled',
  );

  /// on_hold
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseStatusCodes on_hold =
      MedicationDispenseStatusCodes(
    fhirCode: 'on-hold',
  );

  /// completed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseStatusCodes completed =
      MedicationDispenseStatusCodes(
    fhirCode: 'completed',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseStatusCodes entered_in_error =
      MedicationDispenseStatusCodes(
    fhirCode: 'entered-in-error',
  );

  /// stopped
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseStatusCodes stopped =
      MedicationDispenseStatusCodes(
    fhirCode: 'stopped',
  );

  /// declined
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseStatusCodes declined =
      MedicationDispenseStatusCodes(
    fhirCode: 'declined',
  );

  /// unknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseStatusCodes unknown =
      MedicationDispenseStatusCodes(
    fhirCode: 'unknown',
  );

  /// For instances where an Element is present but not value

  static final MedicationDispenseStatusCodes elementOnly =
      MedicationDispenseStatusCodes();

  /// List of all enum-like values
  static final List<MedicationDispenseStatusCodes> values = [
    preparation,
    in_progress,
    cancelled,
    on_hold,
    completed,
    entered_in_error,
    stopped,
    declined,
    unknown,
  ];

  /// Returns the enum value with an element attached
  MedicationDispenseStatusCodes withElement(Element? newElement) {
    return MedicationDispenseStatusCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [MedicationDispenseStatusCodes] from JSON.
  static MedicationDispenseStatusCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationDispenseStatusCodes.elementOnly.withElement(element);
    }
    return MedicationDispenseStatusCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MedicationDispenseStatusCodes.$fhirCode';
}
