/// This value set defines codes for resources not yet supported by (or which will never be supported by) FHIR.  Many of the codes listed here will eventually be turned into official resources.  However, there is no guarantee that any particular resource will be created nor that the scope will be exactly as defined by the codes presented here.  Codes in this set will be deprecated if/when formal resources are defined that encompass these concepts.
enum BasicResourceTypes {
  /// Display: Consent
  /// Definition: An assertion of permission for an activity or set of activities to occur, possibly subject to particular limitations; e.g. surgical consent, information disclosure consent, etc.
  consent,

  /// Display: Referral
  /// Definition: A request that care of a particular type be provided to a patient.  Could involve the transfer of care, a consult, etc.
  referral,

  /// Display: Adverse Event
  /// Definition: An undesired reaction caused by exposure to some agent (e.g. a medication, immunization, food, or environmental agent).
  advevent,

  /// Display: Appointment Request
  /// Definition: A request that a time be scheduled for a type of service for a specified patient, potentially subject to other constraints
  aptmtreq,

  /// Display: Transfer
  /// Definition: The transition of a patient or set of material from one location to another
  transfer,

  /// Display: Diet
  /// Definition: The specification of a set of food and/or other nutritional material to be delivered to a patient.
  diet,

  /// Display: Administrative Activity
  /// Definition: An occurrence of a non-care-related event in the healthcare domain, such as approvals, reviews, etc.
  adminact,

  /// Display: Exposure
  /// Definition: Record of a situation where a subject was exposed to a substance.  Usually of interest to public health.
  exposure,

  /// Display: Investigation
  /// Definition: A formalized inquiry into the circumstances surrounding a particular unplanned event or potential event for the purposes of identifying possible causes and contributing factors for the event
  investigation,

  /// Display: Account
  /// Definition: A financial instrument used to track costs, charges or other amounts.
  account,

  /// Display: Invoice
  /// Definition: A request for payment for goods and/or services.  Includes the idea of a healthcare insurance claim.
  invoice,

  /// Display: Invoice Adjudication
  /// Definition: The determination of what will be paid against a particular invoice based on coverage, plan rules, etc.
  adjudicat,

  /// Display: Pre-determination Request
  /// Definition: A request for a pre-determination of the cost that would be paid under an insurance plan for a hypothetical claim for goods or services
  predetreq,

  /// Display: Predetermination
  /// Definition: An adjudication of what would be paid under an insurance plan for a hypothetical claim for goods or services
  predetermine,

  /// Display: Study
  /// Definition: An investigation to determine information about a particular therapy or product
  study,

  /// Display: Protocol
  /// Definition: A set of (possibly conditional) steps to be taken to achieve some aim.  Includes study protocols, treatment protocols, emergency protocols, etc.
  protocol,
  ;

  @override
  String toString() {
    switch (this) {
      case consent:
        return 'consent';
      case referral:
        return 'referral';
      case advevent:
        return 'advevent';
      case aptmtreq:
        return 'aptmtreq';
      case transfer:
        return 'transfer';
      case diet:
        return 'diet';
      case adminact:
        return 'adminact';
      case exposure:
        return 'exposure';
      case investigation:
        return 'investigation';
      case account:
        return 'account';
      case invoice:
        return 'invoice';
      case adjudicat:
        return 'adjudicat';
      case predetreq:
        return 'predetreq';
      case predetermine:
        return 'predetermine';
      case study:
        return 'study';
      case protocol:
        return 'protocol';
    }
  }

  /// Returns a [String] from a [BasicResourceTypes] enum.
  String toJson() => toString();

  /// Returns a [BasicResourceTypes] from a [String] enum.
  static BasicResourceTypes fromString(String str) {
    switch (str) {
      case 'consent':
        return BasicResourceTypes.consent;
      case 'referral':
        return BasicResourceTypes.referral;
      case 'advevent':
        return BasicResourceTypes.advevent;
      case 'aptmtreq':
        return BasicResourceTypes.aptmtreq;
      case 'transfer':
        return BasicResourceTypes.transfer;
      case 'diet':
        return BasicResourceTypes.diet;
      case 'adminact':
        return BasicResourceTypes.adminact;
      case 'exposure':
        return BasicResourceTypes.exposure;
      case 'investigation':
        return BasicResourceTypes.investigation;
      case 'account':
        return BasicResourceTypes.account;
      case 'invoice':
        return BasicResourceTypes.invoice;
      case 'adjudicat':
        return BasicResourceTypes.adjudicat;
      case 'predetreq':
        return BasicResourceTypes.predetreq;
      case 'predetermine':
        return BasicResourceTypes.predetermine;
      case 'study':
        return BasicResourceTypes.study;
      case 'protocol':
        return BasicResourceTypes.protocol;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [BasicResourceTypes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static BasicResourceTypes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
