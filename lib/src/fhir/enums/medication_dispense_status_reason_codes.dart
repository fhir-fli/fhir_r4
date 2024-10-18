// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// MedicationDispense Status Codes
enum MedicationDispenseStatusReasonCodes {
  /// Display: Order Stopped
  /// Definition: The order has been stopped by the prescriber but this fact has not necessarily captured electronically. Example: A verbal stop, a fax, etc.
  frr01('frr01'),

  /// Display: Stale-dated Order
  /// Definition: Order has not been fulfilled within a reasonable amount of time, and might not be current.
  frr02('frr02'),

  /// Display: Incomplete data
  /// Definition: Data needed to safely act on the order which was expected to become available independent of the order is not yet available. Example: Lab results, diagnostic imaging, etc.
  frr03('frr03'),

  /// Display: Product unavailable
  /// Definition: Product not available or manufactured. Cannot supply.
  frr04('frr04'),

  /// Display: Ethical/religious
  /// Definition: The dispenser has ethical, religious or moral objections to fulfilling the order/dispensing the product.
  frr05('frr05'),

  /// Display: Unable to provide care
  /// Definition: Fulfiller not able to provide appropriate care associated with fulfilling the order. Example: Therapy requires ongoing monitoring by fulfiller and fulfiller will be ending practice, leaving town, unable to schedule necessary time, etc.
  frr06('frr06'),

  /// Display: Try another treatment first
  /// Definition: This therapy has been ordered as a backup to a preferred therapy. This order will be released when and if the preferred therapy is unsuccessful.
  altchoice('altchoice'),

  /// Display: Prescription/Request requires clarification
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

  /// Display: Patient is pregnant or breastfeeding
  /// Definition: The patient is pregnant or breast feeding. The therapy will be resumed when the pregnancy is complete and the patient is no longer breastfeeding.
  preg('preg'),

  /// Display: Allergy
  /// Definition: The patient is believed to be allergic to a substance that is part of the therapy and the therapy is being temporarily withdrawn to confirm.
  saig('saig'),

  /// Display: Drug interacts with another drug
  /// Definition: The drug interacts with a short-term treatment that is more urgently required. This order will be resumed when the short-term treatment is complete.
  sddi('sddi'),

  /// Display: Duplicate therapy
  /// Definition: Another short-term co-occurring therapy fulfills the same purpose as this therapy. This therapy will be resumed when the co-occuring therapy is complete.
  sdupther('sdupther'),

  /// Display: Suspected intolerance
  /// Definition: The patient is believed to have an intolerance to a substance that is part of the therapy and the therapy is being temporarily withdrawn to confirm.
  sintol('sintol'),

  /// Display: Patient scheduled for surgery
  /// Definition: The drug is contraindicated for patients receiving surgery and the patient is scheduled to be admitted for surgery in the near future. The drug will be resumed when the patient has sufficiently recovered from the surgery.
  surg('surg'),

  /// Display: Washout
  /// Definition: The patient was previously receiving a medication contraindicated with the current medication. The current medication will remain on hold until the prior medication has been cleansed from their system.
  washout('washout'),

  /// Display: Drug not available - out of stock
  /// Definition: Drug out of stock. Cannot supply.
  outofstock('outofstock'),

  /// Display: Drug not available - off market
  /// Definition: Drug no longer marketed Cannot supply.
  offmarket('offmarket'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const MedicationDispenseStatusReasonCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [MedicationDispenseStatusReasonCodes] instances.
  static MedicationDispenseStatusReasonCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationDispenseStatusReasonCodes.elementOnly.withElement(
        element,
      );
    }
    return MedicationDispenseStatusReasonCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  MedicationDispenseStatusReasonCodes withElement(Element? newElement) {
    return MedicationDispenseStatusReasonCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
