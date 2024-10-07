import 'package:json_annotation/json_annotation.dart';

/// MedicationDispense Status Codes
enum MedicationDispenseStatusReasonCodes {
  /// Display: Order Stopped
  /// Definition: The order has been stopped by the prescriber but this fact has not necessarily captured electronically. Example: A verbal stop, a fax, etc.
  @JsonValue('frr01')
  frr01,

  /// Display: Stale-dated Order
  /// Definition: Order has not been fulfilled within a reasonable amount of time, and might not be current.
  @JsonValue('frr02')
  frr02,

  /// Display: Incomplete data
  /// Definition: Data needed to safely act on the order which was expected to become available independent of the order is not yet available. Example: Lab results, diagnostic imaging, etc.
  @JsonValue('frr03')
  frr03,

  /// Display: Product unavailable
  /// Definition: Product not available or manufactured. Cannot supply.
  @JsonValue('frr04')
  frr04,

  /// Display: Ethical/religious
  /// Definition: The dispenser has ethical, religious or moral objections to fulfilling the order/dispensing the product.
  @JsonValue('frr05')
  frr05,

  /// Display: Unable to provide care
  /// Definition: Fulfiller not able to provide appropriate care associated with fulfilling the order. Example: Therapy requires ongoing monitoring by fulfiller and fulfiller will be ending practice, leaving town, unable to schedule necessary time, etc.
  @JsonValue('frr06')
  frr06,

  /// Display: Try another treatment first
  /// Definition: This therapy has been ordered as a backup to a preferred therapy. This order will be released when and if the preferred therapy is unsuccessful.
  @JsonValue('altchoice')
  altchoice,

  /// Display: Prescription/Request requires clarification
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

  /// Display: Patient is pregnant or breastfeeding
  /// Definition: The patient is pregnant or breast feeding. The therapy will be resumed when the pregnancy is complete and the patient is no longer breastfeeding.
  @JsonValue('preg')
  preg,

  /// Display: Allergy
  /// Definition: The patient is believed to be allergic to a substance that is part of the therapy and the therapy is being temporarily withdrawn to confirm.
  @JsonValue('saig')
  saig,

  /// Display: Drug interacts with another drug
  /// Definition: The drug interacts with a short-term treatment that is more urgently required. This order will be resumed when the short-term treatment is complete.
  @JsonValue('sddi')
  sddi,

  /// Display: Duplicate therapy
  /// Definition: Another short-term co-occurring therapy fulfills the same purpose as this therapy. This therapy will be resumed when the co-occuring therapy is complete.
  @JsonValue('sdupther')
  sdupther,

  /// Display: Suspected intolerance
  /// Definition: The patient is believed to have an intolerance to a substance that is part of the therapy and the therapy is being temporarily withdrawn to confirm.
  @JsonValue('sintol')
  sintol,

  /// Display: Patient scheduled for surgery
  /// Definition: The drug is contraindicated for patients receiving surgery and the patient is scheduled to be admitted for surgery in the near future. The drug will be resumed when the patient has sufficiently recovered from the surgery.
  @JsonValue('surg')
  surg,

  /// Display: Washout
  /// Definition: The patient was previously receiving a medication contraindicated with the current medication. The current medication will remain on hold until the prior medication has been cleansed from their system.
  @JsonValue('washout')
  washout,

  /// Display: Drug not available - out of stock
  /// Definition: Drug out of stock. Cannot supply.
  @JsonValue('outofstock')
  outofstock,

  /// Display: Drug not available - off market
  /// Definition: Drug no longer marketed Cannot supply.
  @JsonValue('offmarket')
  offmarket,
  ;

  @override
  String toString() {
    switch (this) {
      case frr01:
        return 'frr01';
      case frr02:
        return 'frr02';
      case frr03:
        return 'frr03';
      case frr04:
        return 'frr04';
      case frr05:
        return 'frr05';
      case frr06:
        return 'frr06';
      case altchoice:
        return 'altchoice';
      case clarif:
        return 'clarif';
      case drughigh:
        return 'drughigh';
      case hospadm:
        return 'hospadm';
      case labint:
        return 'labint';
      case non_avail:
        return 'non-avail';
      case preg:
        return 'preg';
      case saig:
        return 'saig';
      case sddi:
        return 'sddi';
      case sdupther:
        return 'sdupther';
      case sintol:
        return 'sintol';
      case surg:
        return 'surg';
      case washout:
        return 'washout';
      case outofstock:
        return 'outofstock';
      case offmarket:
        return 'offmarket';
    }
  }

  String toJson() => toString();
  MedicationDispenseStatusReasonCodes fromString(String str) {
    switch (str) {
      case 'frr01':
        return MedicationDispenseStatusReasonCodes.frr01;
      case 'frr02':
        return MedicationDispenseStatusReasonCodes.frr02;
      case 'frr03':
        return MedicationDispenseStatusReasonCodes.frr03;
      case 'frr04':
        return MedicationDispenseStatusReasonCodes.frr04;
      case 'frr05':
        return MedicationDispenseStatusReasonCodes.frr05;
      case 'frr06':
        return MedicationDispenseStatusReasonCodes.frr06;
      case 'altchoice':
        return MedicationDispenseStatusReasonCodes.altchoice;
      case 'clarif':
        return MedicationDispenseStatusReasonCodes.clarif;
      case 'drughigh':
        return MedicationDispenseStatusReasonCodes.drughigh;
      case 'hospadm':
        return MedicationDispenseStatusReasonCodes.hospadm;
      case 'labint':
        return MedicationDispenseStatusReasonCodes.labint;
      case 'non-avail':
        return MedicationDispenseStatusReasonCodes.non_avail;
      case 'preg':
        return MedicationDispenseStatusReasonCodes.preg;
      case 'saig':
        return MedicationDispenseStatusReasonCodes.saig;
      case 'sddi':
        return MedicationDispenseStatusReasonCodes.sddi;
      case 'sdupther':
        return MedicationDispenseStatusReasonCodes.sdupther;
      case 'sintol':
        return MedicationDispenseStatusReasonCodes.sintol;
      case 'surg':
        return MedicationDispenseStatusReasonCodes.surg;
      case 'washout':
        return MedicationDispenseStatusReasonCodes.washout;
      case 'outofstock':
        return MedicationDispenseStatusReasonCodes.outofstock;
      case 'offmarket':
        return MedicationDispenseStatusReasonCodes.offmarket;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  MedicationDispenseStatusReasonCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
