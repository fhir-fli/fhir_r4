// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// MedicationDispense Category Codes
@collection
class MedicationDispenseCategoryCodes {
  /// Constructor for internal use (like enum)
  MedicationDispenseCategoryCodes({this.fhirCode, this.element})
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

  /// MedicationDispenseCategoryCodes values
  /// inpatient
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseCategoryCodes inpatient =
      MedicationDispenseCategoryCodes(
    fhirCode: 'inpatient',
  );

  /// outpatient
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseCategoryCodes outpatient =
      MedicationDispenseCategoryCodes(
    fhirCode: 'outpatient',
  );

  /// community
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseCategoryCodes community =
      MedicationDispenseCategoryCodes(
    fhirCode: 'community',
  );

  /// discharge
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationDispenseCategoryCodes discharge =
      MedicationDispenseCategoryCodes(
    fhirCode: 'discharge',
  );

  /// For instances where an Element is present but not value

  static final MedicationDispenseCategoryCodes elementOnly =
      MedicationDispenseCategoryCodes();

  /// List of all enum-like values
  static final List<MedicationDispenseCategoryCodes> values = [
    inpatient,
    outpatient,
    community,
    discharge,
  ];

  /// Returns the enum value with an element attached
  MedicationDispenseCategoryCodes withElement(Element? newElement) {
    return MedicationDispenseCategoryCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [MedicationDispenseCategoryCodes] from JSON.
  static MedicationDispenseCategoryCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationDispenseCategoryCodes.elementOnly.withElement(element);
    }
    return MedicationDispenseCategoryCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MedicationDispenseCategoryCodes.$fhirCode';
}
