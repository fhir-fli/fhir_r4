// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// MedicationRequest Category Codes
@collection
class MedicationRequestCategoryCodes {
  /// Constructor for internal use (like enum)
  MedicationRequestCategoryCodes({this.fhirCode, this.element})
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

  /// MedicationRequestCategoryCodes values
  /// inpatient
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationRequestCategoryCodes inpatient =
      MedicationRequestCategoryCodes(
    fhirCode: 'inpatient',
  );

  /// outpatient
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationRequestCategoryCodes outpatient =
      MedicationRequestCategoryCodes(
    fhirCode: 'outpatient',
  );

  /// community
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationRequestCategoryCodes community =
      MedicationRequestCategoryCodes(
    fhirCode: 'community',
  );

  /// discharge
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationRequestCategoryCodes discharge =
      MedicationRequestCategoryCodes(
    fhirCode: 'discharge',
  );

  /// For instances where an Element is present but not value

  static final MedicationRequestCategoryCodes elementOnly =
      MedicationRequestCategoryCodes();

  /// List of all enum-like values
  static final List<MedicationRequestCategoryCodes> values = [
    inpatient,
    outpatient,
    community,
    discharge,
  ];

  /// Returns the enum value with an element attached
  MedicationRequestCategoryCodes withElement(Element? newElement) {
    return MedicationRequestCategoryCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [MedicationRequestCategoryCodes] from JSON.
  static MedicationRequestCategoryCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationRequestCategoryCodes.elementOnly.withElement(element);
    }
    return MedicationRequestCategoryCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MedicationRequestCategoryCodes.$fhirCode';
}
