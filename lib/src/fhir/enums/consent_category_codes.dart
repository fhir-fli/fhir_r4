/// This value set includes sample Consent Directive Type codes, including several consent directive related LOINC codes; HL7 VALUE SET: ActConsentType(2.16.840.1.113883.1.11.19897); examples of US realm consent directive legal descriptions and references to online and/or downloadable forms such as the SSA-827 Authorization to Disclose Information to the Social Security Administration; and other anticipated consent directives related to participation in a clinical trial, medical procedures, reproductive procedures; health care directive (Living Will); advance directive, do not resuscitate (DNR); Physician Orders for Life-Sustaining Treatment (POLST)
enum ConsentCategoryCodes {
  /// Display: Advance Directive
  /// Definition: Any instructions, written or given verbally by a patient to a health care provider in anticipation of potential need for medical treatment. [2005 Honor My Wishes]
  acd,

  /// Display: Do Not Resuscitate
  /// Definition: A legal document, signed by both the patient and their provider, stating a desire not to have CPR initiated in case of a cardiac event. Note: This form was replaced in 2003 with the Physician Orders for Life-Sustaining Treatment [POLST].
  dnr,

  /// Display: Emergency Only
  /// Definition: Opt-in to disclosure of health information for emergency only consent directive. Comment: This general consent directive specifically limits disclosure of health information for purpose of emergency treatment. Additional parameters may further limit the disclosure to specific users, roles, duration, types of information, and impose uses obligations. [ActConsentDirective (2.16.840.1.113883.1.11.20425)]
  emrgonly,

  /// Display: Health Care Directive
  /// Definition: Patient's document telling patient's health care provider what the patient wants or does not want if the patient is diagnosed as being terminally ill and in a persistent vegetative state or in a permanently unconscious condition.[2005 Honor My Wishes]
  hcd,

  /// Display: Notice of Privacy Practices
  /// Definition: Acknowledgement of custodian notice of privacy practices. Usage Notes: This type of consent directive acknowledges a custodian's notice of privacy practices including its permitted collection, access, use and disclosure of health information to users and for purposes of use specified. [ActConsentDirective (2.16.840.1.113883.1.11.20425)]
  npp,

  /// Display: POLST
  /// Definition: The Physician Order for Life-Sustaining Treatment form records a person's health care wishes for end of life emergency treatment and translates them into an order by the physician. It must be reviewed and signed by both the patient and the physician, Advanced Registered Nurse Practitioner or Physician Assistant. [2005 Honor My Wishes] Comment: Opt-in Consent Directive with restrictions.
  polst,

  /// Display: Research Information Access
  /// Definition: Consent to have healthcare information in an electronic health record accessed for research purposes. [VALUE SET: ActConsentType (2.16.840.1.113883.1.11.19897)]
  research,

  /// Display: De-identified Information Access
  /// Definition: Consent to have de-identified healthcare information in an electronic health record that is accessed for research purposes, but without consent to re-identify the information under any circumstance. [VALUE SET: ActConsentType (2.16.840.1.113883.1.11.19897)
  rsdid,

  /// Display: Re-identifiable Information Access
  /// Definition: Consent to have de-identified healthcare information in an electronic health record that is accessed for research purposes re-identified under specific circumstances outlined in the consent. [VALUE SET: ActConsentType (2.16.840.1.113883.1.11.19897)]
  rsreid,

  /// Display: Patient Consent
  value59284_0,

  /// Display: Privacy policy acknowledgement Document
  value57016_8,

  /// Display: Privacy policy Organization Document
  value57017_6,

  /// Display: Release of information consent
  value64292_6,
  ;

  @override
  String toString() {
    switch (this) {
      case acd:
        return 'acd';
      case dnr:
        return 'dnr';
      case emrgonly:
        return 'emrgonly';
      case hcd:
        return 'hcd';
      case npp:
        return 'npp';
      case polst:
        return 'polst';
      case research:
        return 'research';
      case rsdid:
        return 'rsdid';
      case rsreid:
        return 'rsreid';
      case value59284_0:
        return '59284-0';
      case value57016_8:
        return '57016-8';
      case value57017_6:
        return '57017-6';
      case value64292_6:
        return '64292-6';
    }
  }

  /// Returns a [String] from a [ConsentCategoryCodes] enum.
  String toJson() => toString();

  /// Returns a [ConsentCategoryCodes] from a [String] enum.
  static ConsentCategoryCodes fromString(String str) {
    switch (str) {
      case 'acd':
        return ConsentCategoryCodes.acd;
      case 'dnr':
        return ConsentCategoryCodes.dnr;
      case 'emrgonly':
        return ConsentCategoryCodes.emrgonly;
      case 'hcd':
        return ConsentCategoryCodes.hcd;
      case 'npp':
        return ConsentCategoryCodes.npp;
      case 'polst':
        return ConsentCategoryCodes.polst;
      case 'research':
        return ConsentCategoryCodes.research;
      case 'rsdid':
        return ConsentCategoryCodes.rsdid;
      case 'rsreid':
        return ConsentCategoryCodes.rsreid;
      case '59284-0':
        return ConsentCategoryCodes.value59284_0;
      case '57016-8':
        return ConsentCategoryCodes.value57016_8;
      case '57017-6':
        return ConsentCategoryCodes.value57017_6;
      case '64292-6':
        return ConsentCategoryCodes.value64292_6;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ConsentCategoryCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ConsentCategoryCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
