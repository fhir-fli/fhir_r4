// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Example Item Flags for the List Resource. In this case, these are the kind of flags that would be used on a medication list at the end of a consultation.
class PatientMedicineChangeTypes {
  // Private constructor for internal use (like enum)
  PatientMedicineChangeTypes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// PatientMedicineChangeTypes values
  /// value01
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PatientMedicineChangeTypes value01 =
      PatientMedicineChangeTypes._(
    '01',
  );

  /// value02
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PatientMedicineChangeTypes value02 =
      PatientMedicineChangeTypes._(
    '02',
  );

  /// value03
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PatientMedicineChangeTypes value03 =
      PatientMedicineChangeTypes._(
    '03',
  );

  /// value04
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PatientMedicineChangeTypes value04 =
      PatientMedicineChangeTypes._(
    '04',
  );

  /// value05
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PatientMedicineChangeTypes value05 =
      PatientMedicineChangeTypes._(
    '05',
  );

  /// value06
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PatientMedicineChangeTypes value06 =
      PatientMedicineChangeTypes._(
    '06',
  );

  /// For instances where an Element is present but not value

  static final PatientMedicineChangeTypes elementOnly =
      PatientMedicineChangeTypes._('');

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
    return PatientMedicineChangeTypes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
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

  /// String representation
  @override
  String toString() => fhirCode;
}
