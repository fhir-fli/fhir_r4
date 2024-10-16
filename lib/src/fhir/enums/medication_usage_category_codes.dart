import 'package:fhir_r4/fhir_r4.dart';

/// Medication Status Codes
enum MedicationUsageCategoryCodes {
  /// Display: Inpatient
  /// Definition: Includes orders for medications to be administered or consumed in an inpatient or acute care setting
  inpatient('inpatient'),

  /// Display: Outpatient
  /// Definition: Includes orders for medications to be administered or consumed in an outpatient setting (for example, Emergency Department, Outpatient Clinic, Outpatient Surgery, Doctor's office)
  outpatient('outpatient'),

  /// Display: Community
  /// Definition: Includes orders for medications to be administered or consumed by the patient in their home (this would include long term care or nursing homes, hospices, etc.).
  community('community'),

  /// Display: Patient Specified
  /// Definition: Includes statements about medication use, including over the counter medication, provided by the patient, agent or another provider
  patientspecified('patientspecified'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const MedicationUsageCategoryCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static MedicationUsageCategoryCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationUsageCategoryCodes.elementOnly.withElement(element);
    }
    return MedicationUsageCategoryCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  MedicationUsageCategoryCodes withElement(Element? newElement) {
    return MedicationUsageCategoryCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
