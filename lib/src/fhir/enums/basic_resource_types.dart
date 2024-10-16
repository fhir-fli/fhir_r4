import 'package:fhir_r4/fhir_r4.dart';

/// This value set defines codes for resources not yet supported by (or which will never be supported by) FHIR. Many of the codes listed here will eventually be turned into official resources. However, there is no guarantee that any particular resource will be created nor that the scope will be exactly as defined by the codes presented here. Codes in this set will be deprecated if/when formal resources are defined that encompass these concepts.
enum BasicResourceTypes {
  /// Display: Consent
  /// Definition: An assertion of permission for an activity or set of activities to occur, possibly subject to particular limitations; e.g. surgical consent, information disclosure consent, etc.
  consent('consent'),

  /// Display: Referral
  /// Definition: A request that care of a particular type be provided to a patient. Could involve the transfer of care, a consult, etc.
  referral('referral'),

  /// Display: Adverse Event
  /// Definition: An undesired reaction caused by exposure to some agent (e.g. a medication, immunization, food, or environmental agent).
  advevent('advevent'),

  /// Display: Appointment Request
  /// Definition: A request that a time be scheduled for a type of service for a specified patient, potentially subject to other constraints
  aptmtreq('aptmtreq'),

  /// Display: Transfer
  /// Definition: The transition of a patient or set of material from one location to another
  transfer('transfer'),

  /// Display: Diet
  /// Definition: The specification of a set of food and/or other nutritional material to be delivered to a patient.
  diet('diet'),

  /// Display: Administrative Activity
  /// Definition: An occurrence of a non-care-related event in the healthcare domain, such as approvals, reviews, etc.
  adminact('adminact'),

  /// Display: Exposure
  /// Definition: Record of a situation where a subject was exposed to a substance. Usually of interest to public health.
  exposure('exposure'),

  /// Display: Investigation
  /// Definition: A formalized inquiry into the circumstances surrounding a particular unplanned event or potential event for the purposes of identifying possible causes and contributing factors for the event
  investigation('investigation'),

  /// Display: Account
  /// Definition: A financial instrument used to track costs, charges or other amounts.
  account('account'),

  /// Display: Invoice
  /// Definition: A request for payment for goods and/or services. Includes the idea of a healthcare insurance claim.
  invoice('invoice'),

  /// Display: Invoice Adjudication
  /// Definition: The determination of what will be paid against a particular invoice based on coverage, plan rules, etc.
  adjudicat('adjudicat'),

  /// Display: Pre-determination Request
  /// Definition: A request for a pre-determination of the cost that would be paid under an insurance plan for a hypothetical claim for goods or services
  predetreq('predetreq'),

  /// Display: Predetermination
  /// Definition: An adjudication of what would be paid under an insurance plan for a hypothetical claim for goods or services
  predetermine('predetermine'),

  /// Display: Study
  /// Definition: An investigation to determine information about a particular therapy or product
  study('study'),

  /// Display: Protocol
  /// Definition: A set of (possibly conditional) steps to be taken to achieve some aim. Includes study protocols, treatment protocols, emergency protocols, etc.
  protocol('protocol'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const BasicResourceTypes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static BasicResourceTypes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BasicResourceTypes.elementOnly.withElement(element);
    }
    return BasicResourceTypes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  BasicResourceTypes withElement(Element? newElement) {
    return BasicResourceTypes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
