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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const MedicationAdministrationCategoryCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static MedicationAdministrationCategoryCodes fromJson(
      Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationAdministrationCategoryCodes.elementOnly
          .withElement(element);
    }
    return MedicationAdministrationCategoryCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  MedicationAdministrationCategoryCodes withElement(Element? newElement) {
    return MedicationAdministrationCategoryCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
