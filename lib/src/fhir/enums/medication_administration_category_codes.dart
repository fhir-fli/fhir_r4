// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// MedicationAdministration Category Codes
class MedicationAdministrationCategoryCodes {
  // Private constructor for internal use (like enum)
  MedicationAdministrationCategoryCodes._(this.fhirCode, {this.element});

  /// Factory constructor to create [MedicationAdministrationCategoryCodes] from JSON.
  factory MedicationAdministrationCategoryCodes.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationAdministrationCategoryCodes.elementOnly
          .withElement(element);
    }
    return MedicationAdministrationCategoryCodes._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// MedicationAdministrationCategoryCodes values
  /// inpatient
  static final MedicationAdministrationCategoryCodes inpatient =
      MedicationAdministrationCategoryCodes._(
    'inpatient',
  );

  /// outpatient
  static final MedicationAdministrationCategoryCodes outpatient =
      MedicationAdministrationCategoryCodes._(
    'outpatient',
  );

  /// community
  static final MedicationAdministrationCategoryCodes community =
      MedicationAdministrationCategoryCodes._(
    'community',
  );

  /// For instances where an Element is present but not value

  static final MedicationAdministrationCategoryCodes elementOnly =
      MedicationAdministrationCategoryCodes._('');

  /// List of all enum-like values
  static final List<MedicationAdministrationCategoryCodes> values = [
    inpatient,
    outpatient,
    community,
  ];

  /// Returns the enum value with an element attached
  MedicationAdministrationCategoryCodes withElement(Element? newElement) {
    return MedicationAdministrationCategoryCodes._(fhirCode,
        element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
