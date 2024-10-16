import 'package:fhir_r4/fhir_r4.dart';

/// MedicationRequest Status Reason Codes
enum MedicationRequestStatusReasonCodes {
  /// Display: Try another treatment first
  /// Definition: This therapy has been ordered as a backup to a preferred therapy. This order will be released when and if the preferred therapy is unsuccessful.
  altchoice('altchoice'),

  /// Display: Prescription requires clarification
  /// Definition: Clarification is required before the order can be acted upon.
  clarif('clarif'),

  /// Display: Drug level too high
  /// Definition: The current level of the medication in the patient's system is too high. The medication is suspended to allow the level to subside to a safer level.
  drughigh('drughigh'),

  /// Display: Admission to hospital
  /// Definition: The patient has been admitted to a care facility and their community medications are suspended until hospital discharge.
  hospadm('hospadm'),

  /// Display: Lab interference issues
  /// Definition: The therapy would interfere with a planned lab test and the therapy is being withdrawn until the test is completed.
  labint('labint'),

  /// Display: Patient not available
  /// Definition: Patient not available for a period of time due to a scheduled therapy, leave of absence or other reason.
  non_avail('non-avail'),

  /// Display: Parent is pregnant/breast feeding
  /// Definition: The patient is pregnant or breast feeding. The therapy will be resumed when the pregnancy is complete and the patient is no longer breastfeeding.
  preg('preg'),

  /// Display: Allergy
  /// Definition: The patient is believed to be allergic to a substance that is part of the therapy and the therapy is being temporarily withdrawn to confirm.
  salg('salg'),

  /// Display: Drug interacts with another drug
  /// Definition: The drug interacts with a short-term treatment that is more urgently required. This order will be resumed when the short-term treatment is complete.
  sddi('sddi'),

  /// Display: Duplicate therapy
  /// Definition: The drug interacts with a short-term treatment that is more urgently required. This order will be resumed when the short-term treatment is complete.
  sdupther('sdupther'),

  /// Display: Suspected intolerance
  /// Definition: The drug interacts with a short-term treatment that is more urgently required. This order will be resumed when the short-term treatment is complete.
  sintol('sintol'),

  /// Display: Patient scheduled for surgery.
  /// Definition: The drug is contraindicated for patients receiving surgery and the patient is scheduled to be admitted for surgery in the near future. The drug will be resumed when the patient has sufficiently recovered from the surgery.
  surg('surg'),

  /// Display: Waiting for old drug to wash out
  /// Definition: The patient was previously receiving a medication contraindicated with the current medication. The current medication will remain on hold until the prior medication has been cleansed from their system.
  washout('washout'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const MedicationRequestStatusReasonCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static MedicationRequestStatusReasonCodes fromJson(
      Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationRequestStatusReasonCodes.elementOnly
          .withElement(element);
    }
    return MedicationRequestStatusReasonCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  MedicationRequestStatusReasonCodes withElement(Element? newElement) {
    return MedicationRequestStatusReasonCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
