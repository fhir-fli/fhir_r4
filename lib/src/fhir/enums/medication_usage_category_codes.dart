// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Medication Status Codes
class MedicationUsageCategoryCodes {
  // Private constructor for internal use (like enum)
  MedicationUsageCategoryCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// MedicationUsageCategoryCodes values
  /// inpatient
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationUsageCategoryCodes inpatient =
      MedicationUsageCategoryCodes._(
    'inpatient',
  );

  /// outpatient
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationUsageCategoryCodes outpatient =
      MedicationUsageCategoryCodes._(
    'outpatient',
  );

  /// community
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationUsageCategoryCodes community =
      MedicationUsageCategoryCodes._(
    'community',
  );

  /// patientspecified
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationUsageCategoryCodes patientspecified =
      MedicationUsageCategoryCodes._(
    'patientspecified',
  );

  /// For instances where an Element is present but not value

  static final MedicationUsageCategoryCodes elementOnly =
      MedicationUsageCategoryCodes._('');

  /// List of all enum-like values
  static final List<MedicationUsageCategoryCodes> values = [
    inpatient,
    outpatient,
    community,
    patientspecified,
  ];

  /// Returns the enum value with an element attached
  MedicationUsageCategoryCodes withElement(Element? newElement) {
    return MedicationUsageCategoryCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [MedicationUsageCategoryCodes] from JSON.
  static MedicationUsageCategoryCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationUsageCategoryCodes.elementOnly.withElement(element);
    }
    return MedicationUsageCategoryCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
