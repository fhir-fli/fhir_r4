// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// MedicationStatement Status Codes
@collection
class MedicationStatementStatusCodes {
  /// Constructor for internal use (like enum)
  MedicationStatementStatusCodes({this.fhirCode, this.element})
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

  /// MedicationStatementStatusCodes values
  /// active
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationStatementStatusCodes active =
      MedicationStatementStatusCodes(
    fhirCode: 'active',
  );

  /// completed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationStatementStatusCodes completed =
      MedicationStatementStatusCodes(
    fhirCode: 'completed',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationStatementStatusCodes entered_in_error =
      MedicationStatementStatusCodes(
    fhirCode: 'entered-in-error',
  );

  /// intended
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationStatementStatusCodes intended =
      MedicationStatementStatusCodes(
    fhirCode: 'intended',
  );

  /// stopped
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationStatementStatusCodes stopped =
      MedicationStatementStatusCodes(
    fhirCode: 'stopped',
  );

  /// on_hold
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationStatementStatusCodes on_hold =
      MedicationStatementStatusCodes(
    fhirCode: 'on-hold',
  );

  /// unknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationStatementStatusCodes unknown =
      MedicationStatementStatusCodes(
    fhirCode: 'unknown',
  );

  /// not_taken
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationStatementStatusCodes not_taken =
      MedicationStatementStatusCodes(
    fhirCode: 'not-taken',
  );

  /// For instances where an Element is present but not value

  static final MedicationStatementStatusCodes elementOnly =
      MedicationStatementStatusCodes();

  /// List of all enum-like values
  static final List<MedicationStatementStatusCodes> values = [
    active,
    completed,
    entered_in_error,
    intended,
    stopped,
    on_hold,
    unknown,
    not_taken,
  ];

  /// Returns the enum value with an element attached
  MedicationStatementStatusCodes withElement(Element? newElement) {
    return MedicationStatementStatusCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [MedicationStatementStatusCodes] from JSON.
  static MedicationStatementStatusCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationStatementStatusCodes.elementOnly.withElement(element);
    }
    return MedicationStatementStatusCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MedicationStatementStatusCodes.$fhirCode';
}
