// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// MedicationAdministration Category Codes
enum MedicationAdministrationCategoryCodes {
  /// Display: Inpatient
  /// Definition: Includes administrations in an inpatient or acute care setting
  inpatient('inpatient'),

  /// Display: Outpatient
  /// Definition: Includes administrations in an outpatient setting (for example, Emergency Department, Outpatient Clinic, Outpatient Surgery, Doctor's office)
  outpatient('outpatient'),

  /// Display: Community
  /// Definition: Includes administrations by the patient in their home (this would include long term care or nursing homes, hospices, etc.)
  community('community'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const MedicationAdministrationCategoryCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [MedicationAdministrationCategoryCodes] instances.
  static MedicationAdministrationCategoryCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationAdministrationCategoryCodes.elementOnly
          .withElement(element);
    }
    return MedicationAdministrationCategoryCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  MedicationAdministrationCategoryCodes withElement(Element? newElement) {
    return MedicationAdministrationCategoryCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
