import 'package:fhir_r4/fhir_r4.dart';

/// MedicationRequest Category Codes
enum MedicationRequestCategoryCodes {
  /// Display: Inpatient
  /// Definition: Includes requests for medications to be administered or consumed in an inpatient or acute care setting
  inpatient('inpatient'),

  /// Display: Outpatient
  /// Definition: Includes requests for medications to be administered or consumed in an outpatient setting (for example, Emergency Department, Outpatient Clinic, Outpatient Surgery, Doctor's office)
  outpatient('outpatient'),

  /// Display: Community
  /// Definition: Includes requests for medications to be administered or consumed by the patient in their home (this would include long term care or nursing homes, hospices, etc.)
  community('community'),

  /// Display: Discharge
  /// Definition: Includes requests for medications created when the patient is being released from a facility
  discharge('discharge'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const MedicationRequestCategoryCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static MedicationRequestCategoryCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationRequestCategoryCodes.elementOnly.withElement(element);
    }
    return MedicationRequestCategoryCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  MedicationRequestCategoryCodes withElement(Element? newElement) {
    return MedicationRequestCategoryCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
