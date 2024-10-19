// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Example Item Flags for the List Resource. In this case, these are the kind of flags that would be used on a medication list at the end of a consultation.
@collection
class PatientMedicineChangeTypes {
  /// Constructor for internal use (like enum)
  PatientMedicineChangeTypes({this.fhirCode, this.element})
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

  /// PatientMedicineChangeTypes values
  /// value01
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PatientMedicineChangeTypes value01 = PatientMedicineChangeTypes(
    fhirCode: '01',
  );

  /// value02
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PatientMedicineChangeTypes value02 = PatientMedicineChangeTypes(
    fhirCode: '02',
  );

  /// value03
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PatientMedicineChangeTypes value03 = PatientMedicineChangeTypes(
    fhirCode: '03',
  );

  /// value04
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PatientMedicineChangeTypes value04 = PatientMedicineChangeTypes(
    fhirCode: '04',
  );

  /// value05
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PatientMedicineChangeTypes value05 = PatientMedicineChangeTypes(
    fhirCode: '05',
  );

  /// value06
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PatientMedicineChangeTypes value06 = PatientMedicineChangeTypes(
    fhirCode: '06',
  );

  /// For instances where an Element is present but not value

  static final PatientMedicineChangeTypes elementOnly =
      PatientMedicineChangeTypes();

  /// List of all enum-like values
  static final List<PatientMedicineChangeTypes> values = [
    value01,
    value02,
    value03,
    value04,
    value05,
    value06,
  ];

  /// Returns the enum value with an element attached
  PatientMedicineChangeTypes withElement(Element? newElement) {
    return PatientMedicineChangeTypes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [PatientMedicineChangeTypes] from JSON.
  static PatientMedicineChangeTypes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PatientMedicineChangeTypes.elementOnly.withElement(element);
    }
    return PatientMedicineChangeTypes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'PatientMedicineChangeTypes.$fhirCode';
}
