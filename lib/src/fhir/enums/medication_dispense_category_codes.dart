// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// MedicationDispense Category Codes
enum MedicationDispenseCategoryCodes {
  /// Display: Inpatient
  /// Definition: Includes dispenses for medications to be administered or consumed in an inpatient or acute care setting.
  inpatient('inpatient'),

  /// Display: Outpatient
  /// Definition: Includes dispenses for medications to be administered or consumed in an outpatient setting (for example, Emergency Department, Outpatient Clinic, Outpatient Surgery, Doctor's office).
  outpatient('outpatient'),

  /// Display: Community
  /// Definition: Includes dispenses for medications to be administered or consumed by the patient in their home (this would include long term care or nursing homes, hospices, etc.).
  community('community'),

  /// Display: Discharge
  /// Definition: Includes dispenses for medications created when the patient is being released from a facility.
  discharge('discharge'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const MedicationDispenseCategoryCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [MedicationDispenseCategoryCodes] instances.
  static MedicationDispenseCategoryCodes fromJson(
    Map<String, dynamic> json,
  ) {
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

  /// Returns the enum value with an element
  MedicationDispenseCategoryCodes withElement(Element? newElement) {
    return MedicationDispenseCategoryCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
