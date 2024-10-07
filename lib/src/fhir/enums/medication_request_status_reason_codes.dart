import 'package:json_annotation/json_annotation.dart';

/// MedicationRequest Status Reason Codes
enum MedicationRequestStatusReasonCodes {
  /// Display: Try another treatment first
  /// Definition: This therapy has been ordered as a backup to a preferred therapy. This order will be released when and if the preferred therapy is unsuccessful.
  @JsonValue('altchoice')
  altchoice,
  /// Display: Prescription requires clarification
  /// Definition: Clarification is required before the order can be acted upon.
  @JsonValue('clarif')
  clarif,
  /// Display: Drug level too high
  /// Definition: The current level of the medication in the patient's system is too high. The medication is suspended to allow the level to subside to a safer level.
  @JsonValue('drughigh')
  drughigh,
  /// Display: Admission to hospital
  /// Definition: The patient has been admitted to a care facility and their community medications are suspended until hospital discharge.
  @JsonValue('hospadm')
  hospadm,
  /// Display: Lab interference issues
  /// Definition: The therapy would interfere with a planned lab test and the therapy is being withdrawn until the test is completed.
  @JsonValue('labint')
  labint,
  /// Display: Patient not available
  /// Definition: Patient not available for a period of time due to a scheduled therapy, leave of absence or other reason.
  @JsonValue('non-avail')
  non_avail,
  /// Display: Parent is pregnant/breast feeding
  /// Definition: The patient is pregnant or breast feeding. The therapy will be resumed when the pregnancy is complete and the patient is no longer breastfeeding.
  @JsonValue('preg')
  preg,
  /// Display: Allergy
  /// Definition: The patient is believed to be allergic to a substance that is part of the therapy and the therapy is being temporarily withdrawn to confirm.
  @JsonValue('salg')
  salg,
  /// Display: Drug interacts with another drug
  /// Definition: The drug interacts with a short-term treatment that is more urgently required. This order will be resumed when the short-term treatment is complete.
  @JsonValue('sddi')
  sddi,
  /// Display: Duplicate therapy
  /// Definition: The drug interacts with a short-term treatment that is more urgently required. This order will be resumed when the short-term treatment is complete.
  @JsonValue('sdupther')
  sdupther,
  /// Display: Suspected intolerance
  /// Definition: The drug interacts with a short-term treatment that is more urgently required. This order will be resumed when the short-term treatment is complete.
  @JsonValue('sintol')
  sintol,
  /// Display: Patient scheduled for surgery.
  /// Definition: The drug is contraindicated for patients receiving surgery and the patient is scheduled to be admitted for surgery in the near future. The drug will be resumed when the patient has sufficiently recovered from the surgery.
  @JsonValue('surg')
  surg,
  /// Display: Waiting for old drug to wash out
  /// Definition: The patient was previously receiving a medication contraindicated with the current medication. The current medication will remain on hold until the prior medication has been cleansed from their system.
  @JsonValue('washout')
  washout,
;

@override
  String toString() {
      switch(this) {
        case altchoice: return 'altchoice';
        case clarif: return 'clarif';
        case drughigh: return 'drughigh';
        case hospadm: return 'hospadm';
        case labint: return 'labint';
        case non_avail: return 'non-avail';
        case preg: return 'preg';
        case salg: return 'salg';
        case sddi: return 'sddi';
        case sdupther: return 'sdupther';
        case sintol: return 'sintol';
        case surg: return 'surg';
        case washout: return 'washout';
      }
      }
String toJson() => toString();
  MedicationRequestStatusReasonCodes fromString(String str) {
    switch(str) {
      case 'altchoice': return MedicationRequestStatusReasonCodes.altchoice;
      case 'clarif': return MedicationRequestStatusReasonCodes.clarif;
      case 'drughigh': return MedicationRequestStatusReasonCodes.drughigh;
      case 'hospadm': return MedicationRequestStatusReasonCodes.hospadm;
      case 'labint': return MedicationRequestStatusReasonCodes.labint;
      case 'non-avail': return MedicationRequestStatusReasonCodes.non_avail;
      case 'preg': return MedicationRequestStatusReasonCodes.preg;
      case 'salg': return MedicationRequestStatusReasonCodes.salg;
      case 'sddi': return MedicationRequestStatusReasonCodes.sddi;
      case 'sdupther': return MedicationRequestStatusReasonCodes.sdupther;
      case 'sintol': return MedicationRequestStatusReasonCodes.sintol;
      case 'surg': return MedicationRequestStatusReasonCodes.surg;
      case 'washout': return MedicationRequestStatusReasonCodes.washout;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 MedicationRequestStatusReasonCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

