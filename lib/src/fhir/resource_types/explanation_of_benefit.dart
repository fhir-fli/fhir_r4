import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [ExplanationOfBenefit] /// This resource provides: the claim details; adjudication details from the
/// processing of a Claim; and optionally account balance information, for
/// informing the subscriber of the benefits provided.
@JsonSerializable()
class ExplanationOfBenefit extends DomainResource {
  ExplanationOfBenefit({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.status,
    this.statusElement,
    required this.type,
    this.subType,
    required this.use,
    this.useElement,
    required this.patient,
    this.billablePeriod,
    required this.created,
    this.createdElement,
    this.enterer,
    required this.insurer,
    required this.provider,
    this.priority,
    this.fundsReserveRequested,
    this.fundsReserve,
    this.related,
    this.prescription,
    this.originalPrescription,
    this.payee,
    this.referral,
    this.facility,
    this.claim,
    this.claimResponse,
    required this.outcome,
    this.outcomeElement,
    this.disposition,
    this.dispositionElement,
    this.preAuthRef,
    this.preAuthRefElement,
    this.preAuthRefPeriod,
    this.careTeam,
    this.supportingInfo,
    this.diagnosis,
    this.procedure,
    this.precedence,
    this.precedenceElement,
    required this.insurance,
    this.accident,
    this.item,
    this.addItem,
    this.adjudication,
    this.total,
    this.payment,
    this.formCode,
    this.form,
    this.processNote,
    this.benefitPeriod,
    this.benefitBalance,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(resourceType: R4ResourceType.ExplanationOfBenefit);
  @override
  String get fhirType => 'ExplanationOfBenefit';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// A unique identifier assigned to this explanation of benefit.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [status] /// The status of the resource instance.
  @JsonKey(name: 'status')
  final ExplanationOfBenefitStatus status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [type] /// The category of claim, e.g. oral, pharmacy, vision, institutional,
  /// professional.
  @JsonKey(name: 'type')
  final CodeableConcept type;

  /// [subType] /// A finer grained suite of claim type codes which may convey additional
  /// information such as Inpatient vs Outpatient and/or a specialty service.
  @JsonKey(name: 'subType')
  final CodeableConcept? subType;

  /// [use] /// A code to indicate whether the nature of the request is: to request
  /// adjudication of products and services previously rendered; or requesting
  /// authorization and adjudication for provision in the future; or requesting
  /// the non-binding adjudication of the listed products and services which
  /// could be provided in the future.
  @JsonKey(name: 'use')
  final Use use;
  @JsonKey(name: '_use')
  final Element? useElement;

  /// [patient] /// The party to whom the professional services and/or products have been
  /// supplied or are being considered and for whom actual for forecast
  /// reimbursement is sought.
  @JsonKey(name: 'patient')
  final Reference patient;

  /// [billablePeriod] /// The period for which charges are being submitted.
  @JsonKey(name: 'billablePeriod')
  final Period? billablePeriod;

  /// [created] /// The date this resource was created.
  @JsonKey(name: 'created')
  final FhirDateTime created;
  @JsonKey(name: '_created')
  final Element? createdElement;

  /// [enterer] /// Individual who created the claim, predetermination or preauthorization.
  @JsonKey(name: 'enterer')
  final Reference? enterer;

  /// [insurer] /// The party responsible for authorization, adjudication and reimbursement.
  @JsonKey(name: 'insurer')
  final Reference insurer;

  /// [provider] /// The provider which is responsible for the claim, predetermination or
  /// preauthorization.
  @JsonKey(name: 'provider')
  final Reference provider;

  /// [priority] /// The provider-required urgency of processing the request. Typical values
  /// include: stat, routine deferred.
  @JsonKey(name: 'priority')
  final CodeableConcept? priority;

  /// [fundsReserveRequested] /// A code to indicate whether and for whom funds are to be reserved for future
  /// claims.
  @JsonKey(name: 'fundsReserveRequested')
  final CodeableConcept? fundsReserveRequested;

  /// [fundsReserve] /// A code, used only on a response to a preauthorization, to indicate whether
  /// the benefits payable have been reserved and for whom.
  @JsonKey(name: 'fundsReserve')
  final CodeableConcept? fundsReserve;

  /// [related] /// Other claims which are related to this claim such as prior submissions or
  /// claims for related services or for the same event.
  @JsonKey(name: 'related')
  final List<ExplanationOfBenefitRelated>? related;

  /// [prescription] /// Prescription to support the dispensing of pharmacy, device or vision
  /// products.
  @JsonKey(name: 'prescription')
  final Reference? prescription;

  /// [originalPrescription] /// Original prescription which has been superseded by this prescription to
  /// support the dispensing of pharmacy services, medications or products.
  @JsonKey(name: 'originalPrescription')
  final Reference? originalPrescription;

  /// [payee] /// The party to be reimbursed for cost of the products and services according
  /// to the terms of the policy.
  @JsonKey(name: 'payee')
  final ExplanationOfBenefitPayee? payee;

  /// [referral] /// A reference to a referral resource.
  @JsonKey(name: 'referral')
  final Reference? referral;

  /// [facility] /// Facility where the services were provided.
  @JsonKey(name: 'facility')
  final Reference? facility;

  /// [claim] /// The business identifier for the instance of the adjudication request: claim
  /// predetermination or preauthorization.
  @JsonKey(name: 'claim')
  final Reference? claim;

  /// [claimResponse] /// The business identifier for the instance of the adjudication response:
  /// claim, predetermination or preauthorization response.
  @JsonKey(name: 'claimResponse')
  final Reference? claimResponse;

  /// [outcome] /// The outcome of the claim, predetermination, or preauthorization processing.
  @JsonKey(name: 'outcome')
  final RemittanceOutcome outcome;
  @JsonKey(name: '_outcome')
  final Element? outcomeElement;

  /// [disposition] /// A human readable description of the status of the adjudication.
  @JsonKey(name: 'disposition')
  final FhirString? disposition;
  @JsonKey(name: '_disposition')
  final Element? dispositionElement;

  /// [preAuthRef] /// Reference from the Insurer which is used in later communications which
  /// refers to this adjudication.
  @JsonKey(name: 'preAuthRef')
  final List<FhirString>? preAuthRef;
  @JsonKey(name: '_preAuthRef')
  final List<Element>? preAuthRefElement;

  /// [preAuthRefPeriod] /// The timeframe during which the supplied preauthorization reference may be
  /// quoted on claims to obtain the adjudication as provided.
  @JsonKey(name: 'preAuthRefPeriod')
  final List<Period>? preAuthRefPeriod;

  /// [careTeam] /// The members of the team who provided the products and services.
  @JsonKey(name: 'careTeam')
  final List<ExplanationOfBenefitCareTeam>? careTeam;

  /// [supportingInfo] /// Additional information codes regarding exceptions, special considerations,
  /// the condition, situation, prior or concurrent issues.
  @JsonKey(name: 'supportingInfo')
  final List<ExplanationOfBenefitSupportingInfo>? supportingInfo;

  /// [diagnosis] /// Information about diagnoses relevant to the claim items.
  @JsonKey(name: 'diagnosis')
  final List<ExplanationOfBenefitDiagnosis>? diagnosis;

  /// [procedure] /// Procedures performed on the patient relevant to the billing items with the
  /// claim.
  @JsonKey(name: 'procedure')
  final List<ExplanationOfBenefitProcedure>? procedure;

  /// [precedence] /// This indicates the relative order of a series of EOBs related to different
  /// coverages for the same suite of services.
  @JsonKey(name: 'precedence')
  final FhirPositiveInt? precedence;
  @JsonKey(name: '_precedence')
  final Element? precedenceElement;

  /// [insurance] /// Financial instruments for reimbursement for the health care products and
  /// services specified on the claim.
  @JsonKey(name: 'insurance')
  final List<ExplanationOfBenefitInsurance> insurance;

  /// [accident] /// Details of a accident which resulted in injuries which required the
  /// products and services listed in the claim.
  @JsonKey(name: 'accident')
  final ExplanationOfBenefitAccident? accident;

  /// [item] /// A claim line. Either a simple (a product or service) or a 'group' of
  /// details which can also be a simple items or groups of sub-details.
  @JsonKey(name: 'item')
  final List<ExplanationOfBenefitItem>? item;

  /// [addItem] /// The first-tier service adjudications for payor added product or service
  /// lines.
  @JsonKey(name: 'addItem')
  final List<ExplanationOfBenefitAddItem>? addItem;

  /// [adjudication] /// The adjudication results which are presented at the header level rather
  /// than at the line-item or add-item levels.
  @JsonKey(name: 'adjudication')
  final List<ExplanationOfBenefitAdjudication>? adjudication;

  /// [total] /// Categorized monetary totals for the adjudication.
  @JsonKey(name: 'total')
  final List<ExplanationOfBenefitTotal>? total;

  /// [payment] /// Payment details for the adjudication of the claim.
  @JsonKey(name: 'payment')
  final ExplanationOfBenefitPayment? payment;

  /// [formCode] /// A code for the form to be used for printing the content.
  @JsonKey(name: 'formCode')
  final CodeableConcept? formCode;

  /// [form] /// The actual form, by reference or inclusion, for printing the content or an
  /// EOB.
  @JsonKey(name: 'form')
  final Attachment? form;

  /// [processNote] /// A note that describes or explains adjudication results in a human readable
  /// form.
  @JsonKey(name: 'processNote')
  final List<ExplanationOfBenefitProcessNote>? processNote;

  /// [benefitPeriod] /// The term of the benefits documented in this response.
  @JsonKey(name: 'benefitPeriod')
  final Period? benefitPeriod;

  /// [benefitBalance] /// Balance by Benefit Category.
  @JsonKey(name: 'benefitBalance')
  final List<ExplanationOfBenefitBenefitBalance>? benefitBalance;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.value;
    }
    if (implicitRulesElement != null) {
      json['_implicitRules'] = implicitRulesElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] =
          contained!.map<dynamic>((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map<dynamic>((Identifier v) => v.toJson()).toList();
    }
    json['status'] = status.toJson();
    json['type'] = type.toJson();
    if (subType != null) {
      json['subType'] = subType!.toJson();
    }
    json['use'] = use.toJson();
    json['patient'] = patient.toJson();
    if (billablePeriod != null) {
      json['billablePeriod'] = billablePeriod!.toJson();
    }
    json['created'] = created.value;
    if (createdElement != null) {
      json['_created'] = createdElement!.toJson();
    }
    if (enterer != null) {
      json['enterer'] = enterer!.toJson();
    }
    json['insurer'] = insurer.toJson();
    json['provider'] = provider.toJson();
    if (priority != null) {
      json['priority'] = priority!.toJson();
    }
    if (fundsReserveRequested != null) {
      json['fundsReserveRequested'] = fundsReserveRequested!.toJson();
    }
    if (fundsReserve != null) {
      json['fundsReserve'] = fundsReserve!.toJson();
    }
    if (related != null && related!.isNotEmpty) {
      json['related'] = related!
          .map<dynamic>((ExplanationOfBenefitRelated v) => v.toJson())
          .toList();
    }
    if (prescription != null) {
      json['prescription'] = prescription!.toJson();
    }
    if (originalPrescription != null) {
      json['originalPrescription'] = originalPrescription!.toJson();
    }
    if (payee != null) {
      json['payee'] = payee!.toJson();
    }
    if (referral != null) {
      json['referral'] = referral!.toJson();
    }
    if (facility != null) {
      json['facility'] = facility!.toJson();
    }
    if (claim != null) {
      json['claim'] = claim!.toJson();
    }
    if (claimResponse != null) {
      json['claimResponse'] = claimResponse!.toJson();
    }
    json['outcome'] = outcome.toJson();
    if (disposition?.value != null) {
      json['disposition'] = disposition!.value;
    }
    if (dispositionElement != null) {
      json['_disposition'] = dispositionElement!.toJson();
    }
    if (preAuthRef != null && preAuthRef!.isNotEmpty) {
      json['preAuthRef'] = preAuthRef!.map((FhirString v) => v.value).toList();
    }
    if (preAuthRefElement != null && preAuthRefElement!.isNotEmpty) {
      json['_preAuthRef'] =
          preAuthRefElement!.map((Element v) => v.toJson()).toList();
    }
    if (preAuthRefPeriod != null && preAuthRefPeriod!.isNotEmpty) {
      json['preAuthRefPeriod'] =
          preAuthRefPeriod!.map<dynamic>((Period v) => v.toJson()).toList();
    }
    if (careTeam != null && careTeam!.isNotEmpty) {
      json['careTeam'] = careTeam!
          .map<dynamic>((ExplanationOfBenefitCareTeam v) => v.toJson())
          .toList();
    }
    if (supportingInfo != null && supportingInfo!.isNotEmpty) {
      json['supportingInfo'] = supportingInfo!
          .map<dynamic>((ExplanationOfBenefitSupportingInfo v) => v.toJson())
          .toList();
    }
    if (diagnosis != null && diagnosis!.isNotEmpty) {
      json['diagnosis'] = diagnosis!
          .map<dynamic>((ExplanationOfBenefitDiagnosis v) => v.toJson())
          .toList();
    }
    if (procedure != null && procedure!.isNotEmpty) {
      json['procedure'] = procedure!
          .map<dynamic>((ExplanationOfBenefitProcedure v) => v.toJson())
          .toList();
    }
    if (precedence?.value != null) {
      json['precedence'] = precedence!.value;
    }
    if (precedenceElement != null) {
      json['_precedence'] = precedenceElement!.toJson();
    }
    json['insurance'] = insurance
        .map<dynamic>((ExplanationOfBenefitInsurance v) => v.toJson())
        .toList();
    if (accident != null) {
      json['accident'] = accident!.toJson();
    }
    if (item != null && item!.isNotEmpty) {
      json['item'] = item!
          .map<dynamic>((ExplanationOfBenefitItem v) => v.toJson())
          .toList();
    }
    if (addItem != null && addItem!.isNotEmpty) {
      json['addItem'] = addItem!
          .map<dynamic>((ExplanationOfBenefitAddItem v) => v.toJson())
          .toList();
    }
    if (adjudication != null && adjudication!.isNotEmpty) {
      json['adjudication'] = adjudication!
          .map<dynamic>((ExplanationOfBenefitAdjudication v) => v.toJson())
          .toList();
    }
    if (total != null && total!.isNotEmpty) {
      json['total'] = total!
          .map<dynamic>((ExplanationOfBenefitTotal v) => v.toJson())
          .toList();
    }
    if (payment != null) {
      json['payment'] = payment!.toJson();
    }
    if (formCode != null) {
      json['formCode'] = formCode!.toJson();
    }
    if (form != null) {
      json['form'] = form!.toJson();
    }
    if (processNote != null && processNote!.isNotEmpty) {
      json['processNote'] = processNote!
          .map<dynamic>((ExplanationOfBenefitProcessNote v) => v.toJson())
          .toList();
    }
    if (benefitPeriod != null) {
      json['benefitPeriod'] = benefitPeriod!.toJson();
    }
    if (benefitBalance != null && benefitBalance!.isNotEmpty) {
      json['benefitBalance'] = benefitBalance!
          .map<dynamic>((ExplanationOfBenefitBenefitBalance v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory ExplanationOfBenefit.fromJson(Map<String, dynamic> json) {
    return ExplanationOfBenefit(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules:
          json['implicitRules'] != null ? FhirUri(json['implicitRules']) : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                  (dynamic v) => Resource.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                  (dynamic v) => Identifier.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      status: ExplanationOfBenefitStatus.fromJson(
          json['status'] as Map<String, dynamic>),
      type: CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      subType: json['subType'] != null
          ? CodeableConcept.fromJson(json['subType'] as Map<String, dynamic>)
          : null,
      use: Use.fromJson(json['use'] as Map<String, dynamic>),
      patient: Reference.fromJson(json['patient'] as Map<String, dynamic>),
      billablePeriod: json['billablePeriod'] != null
          ? Period.fromJson(json['billablePeriod'] as Map<String, dynamic>)
          : null,
      created: FhirDateTime(json['created']),
      createdElement:
          Element.fromJson(json['_created'] as Map<String, dynamic>),
      enterer: json['enterer'] != null
          ? Reference.fromJson(json['enterer'] as Map<String, dynamic>)
          : null,
      insurer: Reference.fromJson(json['insurer'] as Map<String, dynamic>),
      provider: Reference.fromJson(json['provider'] as Map<String, dynamic>),
      priority: json['priority'] != null
          ? CodeableConcept.fromJson(json['priority'] as Map<String, dynamic>)
          : null,
      fundsReserveRequested: json['fundsReserveRequested'] != null
          ? CodeableConcept.fromJson(
              json['fundsReserveRequested'] as Map<String, dynamic>)
          : null,
      fundsReserve: json['fundsReserve'] != null
          ? CodeableConcept.fromJson(
              json['fundsReserve'] as Map<String, dynamic>)
          : null,
      related: json['related'] != null
          ? (json['related'] as List<dynamic>)
              .map<ExplanationOfBenefitRelated>((dynamic v) =>
                  ExplanationOfBenefitRelated.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      prescription: json['prescription'] != null
          ? Reference.fromJson(json['prescription'] as Map<String, dynamic>)
          : null,
      originalPrescription: json['originalPrescription'] != null
          ? Reference.fromJson(
              json['originalPrescription'] as Map<String, dynamic>)
          : null,
      payee: json['payee'] != null
          ? ExplanationOfBenefitPayee.fromJson(
              json['payee'] as Map<String, dynamic>)
          : null,
      referral: json['referral'] != null
          ? Reference.fromJson(json['referral'] as Map<String, dynamic>)
          : null,
      facility: json['facility'] != null
          ? Reference.fromJson(json['facility'] as Map<String, dynamic>)
          : null,
      claim: json['claim'] != null
          ? Reference.fromJson(json['claim'] as Map<String, dynamic>)
          : null,
      claimResponse: json['claimResponse'] != null
          ? Reference.fromJson(json['claimResponse'] as Map<String, dynamic>)
          : null,
      outcome:
          RemittanceOutcome.fromJson(json['outcome'] as Map<String, dynamic>),
      disposition:
          json['disposition'] != null ? FhirString(json['disposition']) : null,
      dispositionElement: json['_disposition'] != null
          ? Element.fromJson(json['_disposition'] as Map<String, dynamic>)
          : null,
      preAuthRef: json['preAuthRef'] != null
          ? (json['preAuthRef'] as List<dynamic>)
              .map<FhirString>((dynamic v) => FhirString(v))
              .toList()
          : null,
      preAuthRefElement: json['_preAuthRef'] != null
          ? (json['_preAuthRef'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      preAuthRefPeriod: json['preAuthRefPeriod'] != null
          ? (json['preAuthRefPeriod'] as List<dynamic>)
              .map<Period>(
                  (dynamic v) => Period.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      careTeam: json['careTeam'] != null
          ? (json['careTeam'] as List<dynamic>)
              .map<ExplanationOfBenefitCareTeam>((dynamic v) =>
                  ExplanationOfBenefitCareTeam.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      supportingInfo: json['supportingInfo'] != null
          ? (json['supportingInfo'] as List<dynamic>)
              .map<ExplanationOfBenefitSupportingInfo>((dynamic v) =>
                  ExplanationOfBenefitSupportingInfo.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      diagnosis: json['diagnosis'] != null
          ? (json['diagnosis'] as List<dynamic>)
              .map<ExplanationOfBenefitDiagnosis>((dynamic v) =>
                  ExplanationOfBenefitDiagnosis.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      procedure: json['procedure'] != null
          ? (json['procedure'] as List<dynamic>)
              .map<ExplanationOfBenefitProcedure>((dynamic v) =>
                  ExplanationOfBenefitProcedure.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      precedence: json['precedence'] != null
          ? FhirPositiveInt(json['precedence'])
          : null,
      precedenceElement: json['_precedence'] != null
          ? Element.fromJson(json['_precedence'] as Map<String, dynamic>)
          : null,
      insurance: (json['insurance'] as List<dynamic>)
          .map<ExplanationOfBenefitInsurance>((dynamic v) =>
              ExplanationOfBenefitInsurance.fromJson(v as Map<String, dynamic>))
          .toList(),
      accident: json['accident'] != null
          ? ExplanationOfBenefitAccident.fromJson(
              json['accident'] as Map<String, dynamic>)
          : null,
      item: json['item'] != null
          ? (json['item'] as List<dynamic>)
              .map<ExplanationOfBenefitItem>((dynamic v) =>
                  ExplanationOfBenefitItem.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      addItem: json['addItem'] != null
          ? (json['addItem'] as List<dynamic>)
              .map<ExplanationOfBenefitAddItem>((dynamic v) =>
                  ExplanationOfBenefitAddItem.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      adjudication: json['adjudication'] != null
          ? (json['adjudication'] as List<dynamic>)
              .map<ExplanationOfBenefitAdjudication>((dynamic v) =>
                  ExplanationOfBenefitAdjudication.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      total: json['total'] != null
          ? (json['total'] as List<dynamic>)
              .map<ExplanationOfBenefitTotal>((dynamic v) =>
                  ExplanationOfBenefitTotal.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      payment: json['payment'] != null
          ? ExplanationOfBenefitPayment.fromJson(
              json['payment'] as Map<String, dynamic>)
          : null,
      formCode: json['formCode'] != null
          ? CodeableConcept.fromJson(json['formCode'] as Map<String, dynamic>)
          : null,
      form: json['form'] != null
          ? Attachment.fromJson(json['form'] as Map<String, dynamic>)
          : null,
      processNote: json['processNote'] != null
          ? (json['processNote'] as List<dynamic>)
              .map<ExplanationOfBenefitProcessNote>((dynamic v) =>
                  ExplanationOfBenefitProcessNote.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      benefitPeriod: json['benefitPeriod'] != null
          ? Period.fromJson(json['benefitPeriod'] as Map<String, dynamic>)
          : null,
      benefitBalance: json['benefitBalance'] != null
          ? (json['benefitBalance'] as List<dynamic>)
              .map<ExplanationOfBenefitBenefitBalance>((dynamic v) =>
                  ExplanationOfBenefitBenefitBalance.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  ExplanationOfBenefit clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefit copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    CommonLanguages? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    ExplanationOfBenefitStatus? status,
    Element? statusElement,
    CodeableConcept? type,
    CodeableConcept? subType,
    Use? use,
    Element? useElement,
    Reference? patient,
    Period? billablePeriod,
    FhirDateTime? created,
    Element? createdElement,
    Reference? enterer,
    Reference? insurer,
    Reference? provider,
    CodeableConcept? priority,
    CodeableConcept? fundsReserveRequested,
    CodeableConcept? fundsReserve,
    List<ExplanationOfBenefitRelated>? related,
    Reference? prescription,
    Reference? originalPrescription,
    ExplanationOfBenefitPayee? payee,
    Reference? referral,
    Reference? facility,
    Reference? claim,
    Reference? claimResponse,
    RemittanceOutcome? outcome,
    Element? outcomeElement,
    FhirString? disposition,
    Element? dispositionElement,
    List<FhirString>? preAuthRef,
    List<Element>? preAuthRefElement,
    List<Period>? preAuthRefPeriod,
    List<ExplanationOfBenefitCareTeam>? careTeam,
    List<ExplanationOfBenefitSupportingInfo>? supportingInfo,
    List<ExplanationOfBenefitDiagnosis>? diagnosis,
    List<ExplanationOfBenefitProcedure>? procedure,
    FhirPositiveInt? precedence,
    Element? precedenceElement,
    List<ExplanationOfBenefitInsurance>? insurance,
    ExplanationOfBenefitAccident? accident,
    List<ExplanationOfBenefitItem>? item,
    List<ExplanationOfBenefitAddItem>? addItem,
    List<ExplanationOfBenefitAdjudication>? adjudication,
    List<ExplanationOfBenefitTotal>? total,
    ExplanationOfBenefitPayment? payment,
    CodeableConcept? formCode,
    Attachment? form,
    List<ExplanationOfBenefitProcessNote>? processNote,
    Period? benefitPeriod,
    List<ExplanationOfBenefitBenefitBalance>? benefitBalance,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ExplanationOfBenefit(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      type: type ?? this.type,
      subType: subType ?? this.subType,
      use: use ?? this.use,
      useElement: useElement ?? this.useElement,
      patient: patient ?? this.patient,
      billablePeriod: billablePeriod ?? this.billablePeriod,
      created: created ?? this.created,
      createdElement: createdElement ?? this.createdElement,
      enterer: enterer ?? this.enterer,
      insurer: insurer ?? this.insurer,
      provider: provider ?? this.provider,
      priority: priority ?? this.priority,
      fundsReserveRequested:
          fundsReserveRequested ?? this.fundsReserveRequested,
      fundsReserve: fundsReserve ?? this.fundsReserve,
      related: related ?? this.related,
      prescription: prescription ?? this.prescription,
      originalPrescription: originalPrescription ?? this.originalPrescription,
      payee: payee ?? this.payee,
      referral: referral ?? this.referral,
      facility: facility ?? this.facility,
      claim: claim ?? this.claim,
      claimResponse: claimResponse ?? this.claimResponse,
      outcome: outcome ?? this.outcome,
      outcomeElement: outcomeElement ?? this.outcomeElement,
      disposition: disposition ?? this.disposition,
      dispositionElement: dispositionElement ?? this.dispositionElement,
      preAuthRef: preAuthRef ?? this.preAuthRef,
      preAuthRefElement: preAuthRefElement ?? this.preAuthRefElement,
      preAuthRefPeriod: preAuthRefPeriod ?? this.preAuthRefPeriod,
      careTeam: careTeam ?? this.careTeam,
      supportingInfo: supportingInfo ?? this.supportingInfo,
      diagnosis: diagnosis ?? this.diagnosis,
      procedure: procedure ?? this.procedure,
      precedence: precedence ?? this.precedence,
      precedenceElement: precedenceElement ?? this.precedenceElement,
      insurance: insurance ?? this.insurance,
      accident: accident ?? this.accident,
      item: item ?? this.item,
      addItem: addItem ?? this.addItem,
      adjudication: adjudication ?? this.adjudication,
      total: total ?? this.total,
      payment: payment ?? this.payment,
      formCode: formCode ?? this.formCode,
      form: form ?? this.form,
      processNote: processNote ?? this.processNote,
      benefitPeriod: benefitPeriod ?? this.benefitPeriod,
      benefitBalance: benefitBalance ?? this.benefitBalance,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ExplanationOfBenefit.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefit.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ExplanationOfBenefit.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ExplanationOfBenefit cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ExplanationOfBenefit.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExplanationOfBenefit.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ExplanationOfBenefitRelated] /// Other claims which are related to this claim such as prior submissions or
/// claims for related services or for the same event.
@JsonSerializable()
class ExplanationOfBenefitRelated extends BackboneElement {
  ExplanationOfBenefitRelated({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.claim,
    this.relationship,
    this.reference,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'ExplanationOfBenefitRelated';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [claim] /// Reference to a related claim.
  @JsonKey(name: 'claim')
  final Reference? claim;

  /// [relationship] /// A code to convey how the claims are related.
  @JsonKey(name: 'relationship')
  final CodeableConcept? relationship;

  /// [reference] /// An alternate organizational reference to the case or file to which this
  /// particular claim pertains.
  @JsonKey(name: 'reference')
  final Identifier? reference;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (claim != null) {
      json['claim'] = claim!.toJson();
    }
    if (relationship != null) {
      json['relationship'] = relationship!.toJson();
    }
    if (reference != null) {
      json['reference'] = reference!.toJson();
    }
    return json;
  }

  factory ExplanationOfBenefitRelated.fromJson(Map<String, dynamic> json) {
    return ExplanationOfBenefitRelated(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      claim: json['claim'] != null
          ? Reference.fromJson(json['claim'] as Map<String, dynamic>)
          : null,
      relationship: json['relationship'] != null
          ? CodeableConcept.fromJson(
              json['relationship'] as Map<String, dynamic>)
          : null,
      reference: json['reference'] != null
          ? Identifier.fromJson(json['reference'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  ExplanationOfBenefitRelated clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitRelated copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? claim,
    CodeableConcept? relationship,
    Identifier? reference,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ExplanationOfBenefitRelated(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      claim: claim ?? this.claim,
      relationship: relationship ?? this.relationship,
      reference: reference ?? this.reference,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ExplanationOfBenefitRelated.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefitRelated.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ExplanationOfBenefitRelated.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ExplanationOfBenefitRelated cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ExplanationOfBenefitRelated.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExplanationOfBenefitRelated.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ExplanationOfBenefitPayee] /// The party to be reimbursed for cost of the products and services according
/// to the terms of the policy.
@JsonSerializable()
class ExplanationOfBenefitPayee extends BackboneElement {
  ExplanationOfBenefitPayee({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.party,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'ExplanationOfBenefitPayee';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Type of Party to be reimbursed: Subscriber, provider, other.
  @JsonKey(name: 'type')
  final CodeableConcept? type;

  /// [party] /// Reference to the individual or organization to whom any payment will be
  /// made.
  @JsonKey(name: 'party')
  final Reference? party;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (party != null) {
      json['party'] = party!.toJson();
    }
    return json;
  }

  factory ExplanationOfBenefitPayee.fromJson(Map<String, dynamic> json) {
    return ExplanationOfBenefitPayee(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
      party: json['party'] != null
          ? Reference.fromJson(json['party'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  ExplanationOfBenefitPayee clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitPayee copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    Reference? party,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ExplanationOfBenefitPayee(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      party: party ?? this.party,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ExplanationOfBenefitPayee.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefitPayee.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ExplanationOfBenefitPayee.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ExplanationOfBenefitPayee cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ExplanationOfBenefitPayee.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExplanationOfBenefitPayee.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ExplanationOfBenefitCareTeam] /// The members of the team who provided the products and services.
@JsonSerializable()
class ExplanationOfBenefitCareTeam extends BackboneElement {
  ExplanationOfBenefitCareTeam({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequence,
    this.sequenceElement,
    required this.provider,
    this.responsible,
    this.responsibleElement,
    this.role,
    this.qualification,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'ExplanationOfBenefitCareTeam';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [sequence] /// A number to uniquely identify care team entries.
  @JsonKey(name: 'sequence')
  final FhirPositiveInt sequence;
  @JsonKey(name: '_sequence')
  final Element? sequenceElement;

  /// [provider] /// Member of the team who provided the product or service.
  @JsonKey(name: 'provider')
  final Reference provider;

  /// [responsible] /// The party who is billing and/or responsible for the claimed products or
  /// services.
  @JsonKey(name: 'responsible')
  final FhirBoolean? responsible;
  @JsonKey(name: '_responsible')
  final Element? responsibleElement;

  /// [role] /// The lead, assisting or supervising practitioner and their discipline if a
  /// multidisciplinary team.
  @JsonKey(name: 'role')
  final CodeableConcept? role;

  /// [qualification] /// The qualification of the practitioner which is applicable for this service.
  @JsonKey(name: 'qualification')
  final CodeableConcept? qualification;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['sequence'] = sequence.value;
    if (sequenceElement != null) {
      json['_sequence'] = sequenceElement!.toJson();
    }
    json['provider'] = provider.toJson();
    if (responsible?.value != null) {
      json['responsible'] = responsible!.value;
    }
    if (responsibleElement != null) {
      json['_responsible'] = responsibleElement!.toJson();
    }
    if (role != null) {
      json['role'] = role!.toJson();
    }
    if (qualification != null) {
      json['qualification'] = qualification!.toJson();
    }
    return json;
  }

  factory ExplanationOfBenefitCareTeam.fromJson(Map<String, dynamic> json) {
    return ExplanationOfBenefitCareTeam(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      sequence: FhirPositiveInt(json['sequence']),
      sequenceElement:
          Element.fromJson(json['_sequence'] as Map<String, dynamic>),
      provider: Reference.fromJson(json['provider'] as Map<String, dynamic>),
      responsible:
          json['responsible'] != null ? FhirBoolean(json['responsible']) : null,
      responsibleElement: json['_responsible'] != null
          ? Element.fromJson(json['_responsible'] as Map<String, dynamic>)
          : null,
      role: json['role'] != null
          ? CodeableConcept.fromJson(json['role'] as Map<String, dynamic>)
          : null,
      qualification: json['qualification'] != null
          ? CodeableConcept.fromJson(
              json['qualification'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  ExplanationOfBenefitCareTeam clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitCareTeam copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? sequence,
    Element? sequenceElement,
    Reference? provider,
    FhirBoolean? responsible,
    Element? responsibleElement,
    CodeableConcept? role,
    CodeableConcept? qualification,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ExplanationOfBenefitCareTeam(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      sequenceElement: sequenceElement ?? this.sequenceElement,
      provider: provider ?? this.provider,
      responsible: responsible ?? this.responsible,
      responsibleElement: responsibleElement ?? this.responsibleElement,
      role: role ?? this.role,
      qualification: qualification ?? this.qualification,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ExplanationOfBenefitCareTeam.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefitCareTeam.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ExplanationOfBenefitCareTeam.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ExplanationOfBenefitCareTeam cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ExplanationOfBenefitCareTeam.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExplanationOfBenefitCareTeam.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ExplanationOfBenefitSupportingInfo] /// Additional information codes regarding exceptions, special considerations,
/// the condition, situation, prior or concurrent issues.
@JsonSerializable()
class ExplanationOfBenefitSupportingInfo extends BackboneElement {
  ExplanationOfBenefitSupportingInfo({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequence,
    this.sequenceElement,
    required this.category,
    this.code,
    this.timingDate,
    this.timingDateElement,
    this.timingPeriod,
    this.valueBoolean,
    this.valueBooleanElement,
    this.valueString,
    this.valueStringElement,
    this.valueQuantity,
    this.valueAttachment,
    this.valueReference,
    this.reason,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'ExplanationOfBenefitSupportingInfo';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [sequence] /// A number to uniquely identify supporting information entries.
  @JsonKey(name: 'sequence')
  final FhirPositiveInt sequence;
  @JsonKey(name: '_sequence')
  final Element? sequenceElement;

  /// [category] /// The general class of the information supplied: information; exception;
  /// accident, employment; onset, etc.
  @JsonKey(name: 'category')
  final CodeableConcept category;

  /// [code] /// System and code pertaining to the specific information regarding special
  /// conditions relating to the setting, treatment or patient for which care is
  /// sought.
  @JsonKey(name: 'code')
  final CodeableConcept? code;

  /// [timingDate] /// The date when or period to which this information refers.
  @JsonKey(name: 'timingDate')
  final FhirDate? timingDate;
  @JsonKey(name: '_timingDate')
  final Element? timingDateElement;

  /// [timingPeriod] /// The date when or period to which this information refers.
  @JsonKey(name: 'timingPeriod')
  final Period? timingPeriod;

  /// [valueBoolean] /// Additional data or information such as resources, documents, images etc.
  /// including references to the data or the actual inclusion of the data.
  @JsonKey(name: 'valueBoolean')
  final FhirBoolean? valueBoolean;
  @JsonKey(name: '_valueBoolean')
  final Element? valueBooleanElement;

  /// [valueString] /// Additional data or information such as resources, documents, images etc.
  /// including references to the data or the actual inclusion of the data.
  @JsonKey(name: 'valueString')
  final FhirString? valueString;
  @JsonKey(name: '_valueString')
  final Element? valueStringElement;

  /// [valueQuantity] /// Additional data or information such as resources, documents, images etc.
  /// including references to the data or the actual inclusion of the data.
  @JsonKey(name: 'valueQuantity')
  final Quantity? valueQuantity;

  /// [valueAttachment] /// Additional data or information such as resources, documents, images etc.
  /// including references to the data or the actual inclusion of the data.
  @JsonKey(name: 'valueAttachment')
  final Attachment? valueAttachment;

  /// [valueReference] /// Additional data or information such as resources, documents, images etc.
  /// including references to the data or the actual inclusion of the data.
  @JsonKey(name: 'valueReference')
  final Reference? valueReference;

  /// [reason] /// Provides the reason in the situation where a reason code is required in
  /// addition to the content.
  @JsonKey(name: 'reason')
  final Coding? reason;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['sequence'] = sequence.value;
    if (sequenceElement != null) {
      json['_sequence'] = sequenceElement!.toJson();
    }
    json['category'] = category.toJson();
    if (code != null) {
      json['code'] = code!.toJson();
    }
    if (timingDate?.value != null) {
      json['timingDate'] = timingDate!.value;
    }
    if (timingDateElement != null) {
      json['_timingDate'] = timingDateElement!.toJson();
    }
    if (timingPeriod != null) {
      json['timingPeriod'] = timingPeriod!.toJson();
    }
    if (valueBoolean?.value != null) {
      json['valueBoolean'] = valueBoolean!.value;
    }
    if (valueBooleanElement != null) {
      json['_valueBoolean'] = valueBooleanElement!.toJson();
    }
    if (valueString?.value != null) {
      json['valueString'] = valueString!.value;
    }
    if (valueStringElement != null) {
      json['_valueString'] = valueStringElement!.toJson();
    }
    if (valueQuantity != null) {
      json['valueQuantity'] = valueQuantity!.toJson();
    }
    if (valueAttachment != null) {
      json['valueAttachment'] = valueAttachment!.toJson();
    }
    if (valueReference != null) {
      json['valueReference'] = valueReference!.toJson();
    }
    if (reason != null) {
      json['reason'] = reason!.toJson();
    }
    return json;
  }

  factory ExplanationOfBenefitSupportingInfo.fromJson(
      Map<String, dynamic> json) {
    return ExplanationOfBenefitSupportingInfo(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      sequence: FhirPositiveInt(json['sequence']),
      sequenceElement:
          Element.fromJson(json['_sequence'] as Map<String, dynamic>),
      category:
          CodeableConcept.fromJson(json['category'] as Map<String, dynamic>),
      code: json['code'] != null
          ? CodeableConcept.fromJson(json['code'] as Map<String, dynamic>)
          : null,
      timingDate:
          json['timingDate'] != null ? FhirDate(json['timingDate']) : null,
      timingDateElement: json['_timingDate'] != null
          ? Element.fromJson(json['_timingDate'] as Map<String, dynamic>)
          : null,
      timingPeriod: json['timingPeriod'] != null
          ? Period.fromJson(json['timingPeriod'] as Map<String, dynamic>)
          : null,
      valueBoolean: json['valueBoolean'] != null
          ? FhirBoolean(json['valueBoolean'])
          : null,
      valueBooleanElement: json['_valueBoolean'] != null
          ? Element.fromJson(json['_valueBoolean'] as Map<String, dynamic>)
          : null,
      valueString:
          json['valueString'] != null ? FhirString(json['valueString']) : null,
      valueStringElement: json['_valueString'] != null
          ? Element.fromJson(json['_valueString'] as Map<String, dynamic>)
          : null,
      valueQuantity: json['valueQuantity'] != null
          ? Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>)
          : null,
      valueAttachment: json['valueAttachment'] != null
          ? Attachment.fromJson(json['valueAttachment'] as Map<String, dynamic>)
          : null,
      valueReference: json['valueReference'] != null
          ? Reference.fromJson(json['valueReference'] as Map<String, dynamic>)
          : null,
      reason: json['reason'] != null
          ? Coding.fromJson(json['reason'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  ExplanationOfBenefitSupportingInfo clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitSupportingInfo copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? sequence,
    Element? sequenceElement,
    CodeableConcept? category,
    CodeableConcept? code,
    FhirDate? timingDate,
    Element? timingDateElement,
    Period? timingPeriod,
    FhirBoolean? valueBoolean,
    Element? valueBooleanElement,
    FhirString? valueString,
    Element? valueStringElement,
    Quantity? valueQuantity,
    Attachment? valueAttachment,
    Reference? valueReference,
    Coding? reason,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ExplanationOfBenefitSupportingInfo(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      sequenceElement: sequenceElement ?? this.sequenceElement,
      category: category ?? this.category,
      code: code ?? this.code,
      timingDate: timingDate ?? this.timingDate,
      timingDateElement: timingDateElement ?? this.timingDateElement,
      timingPeriod: timingPeriod ?? this.timingPeriod,
      valueBoolean: valueBoolean ?? this.valueBoolean,
      valueBooleanElement: valueBooleanElement ?? this.valueBooleanElement,
      valueString: valueString ?? this.valueString,
      valueStringElement: valueStringElement ?? this.valueStringElement,
      valueQuantity: valueQuantity ?? this.valueQuantity,
      valueAttachment: valueAttachment ?? this.valueAttachment,
      valueReference: valueReference ?? this.valueReference,
      reason: reason ?? this.reason,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ExplanationOfBenefitSupportingInfo.fromYaml(dynamic yaml) => yaml
          is String
      ? ExplanationOfBenefitSupportingInfo.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ExplanationOfBenefitSupportingInfo.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ExplanationOfBenefitSupportingInfo cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ExplanationOfBenefitSupportingInfo.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExplanationOfBenefitSupportingInfo.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ExplanationOfBenefitDiagnosis] /// Information about diagnoses relevant to the claim items.
@JsonSerializable()
class ExplanationOfBenefitDiagnosis extends BackboneElement {
  ExplanationOfBenefitDiagnosis({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequence,
    this.sequenceElement,
    this.diagnosisCodeableConcept,
    this.diagnosisReference,
    this.type,
    this.onAdmission,
    this.packageCode,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'ExplanationOfBenefitDiagnosis';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [sequence] /// A number to uniquely identify diagnosis entries.
  @JsonKey(name: 'sequence')
  final FhirPositiveInt sequence;
  @JsonKey(name: '_sequence')
  final Element? sequenceElement;

  /// [diagnosisCodeableConcept] /// The nature of illness or problem in a coded form or as a reference to an
  /// external defined Condition.
  @JsonKey(name: 'diagnosisCodeableConcept')
  final CodeableConcept? diagnosisCodeableConcept;

  /// [diagnosisReference] /// The nature of illness or problem in a coded form or as a reference to an
  /// external defined Condition.
  @JsonKey(name: 'diagnosisReference')
  final Reference? diagnosisReference;

  /// [type] /// When the condition was observed or the relative ranking.
  @JsonKey(name: 'type')
  final List<CodeableConcept>? type;

  /// [onAdmission] /// Indication of whether the diagnosis was present on admission to a facility.
  @JsonKey(name: 'onAdmission')
  final CodeableConcept? onAdmission;

  /// [packageCode] /// A package billing code or bundle code used to group products and services
  /// to a particular health condition (such as heart attack) which is based on a
  /// predetermined grouping code system.
  @JsonKey(name: 'packageCode')
  final CodeableConcept? packageCode;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['sequence'] = sequence.value;
    if (sequenceElement != null) {
      json['_sequence'] = sequenceElement!.toJson();
    }
    if (diagnosisCodeableConcept != null) {
      json['diagnosisCodeableConcept'] = diagnosisCodeableConcept!.toJson();
    }
    if (diagnosisReference != null) {
      json['diagnosisReference'] = diagnosisReference!.toJson();
    }
    if (type != null && type!.isNotEmpty) {
      json['type'] =
          type!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (onAdmission != null) {
      json['onAdmission'] = onAdmission!.toJson();
    }
    if (packageCode != null) {
      json['packageCode'] = packageCode!.toJson();
    }
    return json;
  }

  factory ExplanationOfBenefitDiagnosis.fromJson(Map<String, dynamic> json) {
    return ExplanationOfBenefitDiagnosis(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      sequence: FhirPositiveInt(json['sequence']),
      sequenceElement:
          Element.fromJson(json['_sequence'] as Map<String, dynamic>),
      diagnosisCodeableConcept: json['diagnosisCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['diagnosisCodeableConcept'] as Map<String, dynamic>)
          : null,
      diagnosisReference: json['diagnosisReference'] != null
          ? Reference.fromJson(
              json['diagnosisReference'] as Map<String, dynamic>)
          : null,
      type: json['type'] != null
          ? (json['type'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      onAdmission: json['onAdmission'] != null
          ? CodeableConcept.fromJson(
              json['onAdmission'] as Map<String, dynamic>)
          : null,
      packageCode: json['packageCode'] != null
          ? CodeableConcept.fromJson(
              json['packageCode'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  ExplanationOfBenefitDiagnosis clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitDiagnosis copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? sequence,
    Element? sequenceElement,
    CodeableConcept? diagnosisCodeableConcept,
    Reference? diagnosisReference,
    List<CodeableConcept>? type,
    CodeableConcept? onAdmission,
    CodeableConcept? packageCode,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ExplanationOfBenefitDiagnosis(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      sequenceElement: sequenceElement ?? this.sequenceElement,
      diagnosisCodeableConcept:
          diagnosisCodeableConcept ?? this.diagnosisCodeableConcept,
      diagnosisReference: diagnosisReference ?? this.diagnosisReference,
      type: type ?? this.type,
      onAdmission: onAdmission ?? this.onAdmission,
      packageCode: packageCode ?? this.packageCode,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ExplanationOfBenefitDiagnosis.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefitDiagnosis.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ExplanationOfBenefitDiagnosis.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ExplanationOfBenefitDiagnosis cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ExplanationOfBenefitDiagnosis.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExplanationOfBenefitDiagnosis.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ExplanationOfBenefitProcedure] /// Procedures performed on the patient relevant to the billing items with the
/// claim.
@JsonSerializable()
class ExplanationOfBenefitProcedure extends BackboneElement {
  ExplanationOfBenefitProcedure({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequence,
    this.sequenceElement,
    this.type,
    this.date,
    this.dateElement,
    this.procedureCodeableConcept,
    this.procedureReference,
    this.udi,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'ExplanationOfBenefitProcedure';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [sequence] /// A number to uniquely identify procedure entries.
  @JsonKey(name: 'sequence')
  final FhirPositiveInt sequence;
  @JsonKey(name: '_sequence')
  final Element? sequenceElement;

  /// [type] /// When the condition was observed or the relative ranking.
  @JsonKey(name: 'type')
  final List<CodeableConcept>? type;

  /// [date] /// Date and optionally time the procedure was performed.
  @JsonKey(name: 'date')
  final FhirDateTime? date;
  @JsonKey(name: '_date')
  final Element? dateElement;

  /// [procedureCodeableConcept] /// The code or reference to a Procedure resource which identifies the clinical
  /// intervention performed.
  @JsonKey(name: 'procedureCodeableConcept')
  final CodeableConcept? procedureCodeableConcept;

  /// [procedureReference] /// The code or reference to a Procedure resource which identifies the clinical
  /// intervention performed.
  @JsonKey(name: 'procedureReference')
  final Reference? procedureReference;

  /// [udi] /// Unique Device Identifiers associated with this line item.
  @JsonKey(name: 'udi')
  final List<Reference>? udi;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['sequence'] = sequence.value;
    if (sequenceElement != null) {
      json['_sequence'] = sequenceElement!.toJson();
    }
    if (type != null && type!.isNotEmpty) {
      json['type'] =
          type!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (date?.value != null) {
      json['date'] = date!.value;
    }
    if (dateElement != null) {
      json['_date'] = dateElement!.toJson();
    }
    if (procedureCodeableConcept != null) {
      json['procedureCodeableConcept'] = procedureCodeableConcept!.toJson();
    }
    if (procedureReference != null) {
      json['procedureReference'] = procedureReference!.toJson();
    }
    if (udi != null && udi!.isNotEmpty) {
      json['udi'] = udi!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    return json;
  }

  factory ExplanationOfBenefitProcedure.fromJson(Map<String, dynamic> json) {
    return ExplanationOfBenefitProcedure(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      sequence: FhirPositiveInt(json['sequence']),
      sequenceElement:
          Element.fromJson(json['_sequence'] as Map<String, dynamic>),
      type: json['type'] != null
          ? (json['type'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      date: json['date'] != null ? FhirDateTime(json['date']) : null,
      dateElement: json['_date'] != null
          ? Element.fromJson(json['_date'] as Map<String, dynamic>)
          : null,
      procedureCodeableConcept: json['procedureCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['procedureCodeableConcept'] as Map<String, dynamic>)
          : null,
      procedureReference: json['procedureReference'] != null
          ? Reference.fromJson(
              json['procedureReference'] as Map<String, dynamic>)
          : null,
      udi: json['udi'] != null
          ? (json['udi'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  ExplanationOfBenefitProcedure clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitProcedure copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? sequence,
    Element? sequenceElement,
    List<CodeableConcept>? type,
    FhirDateTime? date,
    Element? dateElement,
    CodeableConcept? procedureCodeableConcept,
    Reference? procedureReference,
    List<Reference>? udi,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ExplanationOfBenefitProcedure(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      sequenceElement: sequenceElement ?? this.sequenceElement,
      type: type ?? this.type,
      date: date ?? this.date,
      dateElement: dateElement ?? this.dateElement,
      procedureCodeableConcept:
          procedureCodeableConcept ?? this.procedureCodeableConcept,
      procedureReference: procedureReference ?? this.procedureReference,
      udi: udi ?? this.udi,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ExplanationOfBenefitProcedure.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefitProcedure.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ExplanationOfBenefitProcedure.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ExplanationOfBenefitProcedure cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ExplanationOfBenefitProcedure.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExplanationOfBenefitProcedure.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ExplanationOfBenefitInsurance] /// Financial instruments for reimbursement for the health care products and
/// services specified on the claim.
@JsonSerializable()
class ExplanationOfBenefitInsurance extends BackboneElement {
  ExplanationOfBenefitInsurance({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.focal,
    this.focalElement,
    required this.coverage,
    this.preAuthRef,
    this.preAuthRefElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'ExplanationOfBenefitInsurance';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [focal] /// A flag to indicate that this Coverage is to be used for adjudication of
  /// this claim when set to true.
  @JsonKey(name: 'focal')
  final FhirBoolean focal;
  @JsonKey(name: '_focal')
  final Element? focalElement;

  /// [coverage] /// Reference to the insurance card level information contained in the Coverage
  /// resource. The coverage issuing insurer will use these details to locate the
  /// patient's actual coverage within the insurer's information system.
  @JsonKey(name: 'coverage')
  final Reference coverage;

  /// [preAuthRef] /// Reference numbers previously provided by the insurer to the provider to be
  /// quoted on subsequent claims containing services or products related to the
  /// prior authorization.
  @JsonKey(name: 'preAuthRef')
  final List<FhirString>? preAuthRef;
  @JsonKey(name: '_preAuthRef')
  final List<Element>? preAuthRefElement;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['focal'] = focal.value;
    if (focalElement != null) {
      json['_focal'] = focalElement!.toJson();
    }
    json['coverage'] = coverage.toJson();
    if (preAuthRef != null && preAuthRef!.isNotEmpty) {
      json['preAuthRef'] = preAuthRef!.map((FhirString v) => v.value).toList();
    }
    if (preAuthRefElement != null && preAuthRefElement!.isNotEmpty) {
      json['_preAuthRef'] =
          preAuthRefElement!.map((Element v) => v.toJson()).toList();
    }
    return json;
  }

  factory ExplanationOfBenefitInsurance.fromJson(Map<String, dynamic> json) {
    return ExplanationOfBenefitInsurance(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      focal: FhirBoolean(json['focal']),
      focalElement: Element.fromJson(json['_focal'] as Map<String, dynamic>),
      coverage: Reference.fromJson(json['coverage'] as Map<String, dynamic>),
      preAuthRef: json['preAuthRef'] != null
          ? (json['preAuthRef'] as List<dynamic>)
              .map<FhirString>((dynamic v) => FhirString(v))
              .toList()
          : null,
      preAuthRefElement: json['_preAuthRef'] != null
          ? (json['_preAuthRef'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  ExplanationOfBenefitInsurance clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitInsurance copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? focal,
    Element? focalElement,
    Reference? coverage,
    List<FhirString>? preAuthRef,
    List<Element>? preAuthRefElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ExplanationOfBenefitInsurance(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      focal: focal ?? this.focal,
      focalElement: focalElement ?? this.focalElement,
      coverage: coverage ?? this.coverage,
      preAuthRef: preAuthRef ?? this.preAuthRef,
      preAuthRefElement: preAuthRefElement ?? this.preAuthRefElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ExplanationOfBenefitInsurance.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefitInsurance.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ExplanationOfBenefitInsurance.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ExplanationOfBenefitInsurance cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ExplanationOfBenefitInsurance.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExplanationOfBenefitInsurance.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ExplanationOfBenefitAccident] /// Details of a accident which resulted in injuries which required the
/// products and services listed in the claim.
@JsonSerializable()
class ExplanationOfBenefitAccident extends BackboneElement {
  ExplanationOfBenefitAccident({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.date,
    this.dateElement,
    this.type,
    this.locationAddress,
    this.locationReference,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'ExplanationOfBenefitAccident';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [date] /// Date of an accident event related to the products and services contained in
  /// the claim.
  @JsonKey(name: 'date')
  final FhirDate? date;
  @JsonKey(name: '_date')
  final Element? dateElement;

  /// [type] /// The type or context of the accident event for the purposes of selection of
  /// potential insurance coverages and determination of coordination between
  /// insurers.
  @JsonKey(name: 'type')
  final CodeableConcept? type;

  /// [locationAddress] /// The physical location of the accident event.
  @JsonKey(name: 'locationAddress')
  final Address? locationAddress;

  /// [locationReference] /// The physical location of the accident event.
  @JsonKey(name: 'locationReference')
  final Reference? locationReference;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (date?.value != null) {
      json['date'] = date!.value;
    }
    if (dateElement != null) {
      json['_date'] = dateElement!.toJson();
    }
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (locationAddress != null) {
      json['locationAddress'] = locationAddress!.toJson();
    }
    if (locationReference != null) {
      json['locationReference'] = locationReference!.toJson();
    }
    return json;
  }

  factory ExplanationOfBenefitAccident.fromJson(Map<String, dynamic> json) {
    return ExplanationOfBenefitAccident(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      date: json['date'] != null ? FhirDate(json['date']) : null,
      dateElement: json['_date'] != null
          ? Element.fromJson(json['_date'] as Map<String, dynamic>)
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
      locationAddress: json['locationAddress'] != null
          ? Address.fromJson(json['locationAddress'] as Map<String, dynamic>)
          : null,
      locationReference: json['locationReference'] != null
          ? Reference.fromJson(
              json['locationReference'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  ExplanationOfBenefitAccident clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitAccident copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirDate? date,
    Element? dateElement,
    CodeableConcept? type,
    Address? locationAddress,
    Reference? locationReference,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ExplanationOfBenefitAccident(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      date: date ?? this.date,
      dateElement: dateElement ?? this.dateElement,
      type: type ?? this.type,
      locationAddress: locationAddress ?? this.locationAddress,
      locationReference: locationReference ?? this.locationReference,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ExplanationOfBenefitAccident.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefitAccident.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ExplanationOfBenefitAccident.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ExplanationOfBenefitAccident cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ExplanationOfBenefitAccident.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExplanationOfBenefitAccident.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ExplanationOfBenefitItem] /// A claim line. Either a simple (a product or service) or a 'group' of
/// details which can also be a simple items or groups of sub-details.
@JsonSerializable()
class ExplanationOfBenefitItem extends BackboneElement {
  ExplanationOfBenefitItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequence,
    this.sequenceElement,
    this.careTeamSequence,
    this.careTeamSequenceElement,
    this.diagnosisSequence,
    this.diagnosisSequenceElement,
    this.procedureSequence,
    this.procedureSequenceElement,
    this.informationSequence,
    this.informationSequenceElement,
    this.revenue,
    this.category,
    required this.productOrService,
    this.modifier,
    this.programCode,
    this.servicedDate,
    this.servicedDateElement,
    this.servicedPeriod,
    this.locationCodeableConcept,
    this.locationAddress,
    this.locationReference,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.factorElement,
    this.net,
    this.udi,
    this.bodySite,
    this.subSite,
    this.encounter,
    this.noteNumber,
    this.noteNumberElement,
    this.adjudication,
    this.detail,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'ExplanationOfBenefitItem';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [sequence] /// A number to uniquely identify item entries.
  @JsonKey(name: 'sequence')
  final FhirPositiveInt sequence;
  @JsonKey(name: '_sequence')
  final Element? sequenceElement;

  /// [careTeamSequence] /// Care team members related to this service or product.
  @JsonKey(name: 'careTeamSequence')
  final List<FhirPositiveInt>? careTeamSequence;
  @JsonKey(name: '_careTeamSequence')
  final List<Element>? careTeamSequenceElement;

  /// [diagnosisSequence] /// Diagnoses applicable for this service or product.
  @JsonKey(name: 'diagnosisSequence')
  final List<FhirPositiveInt>? diagnosisSequence;
  @JsonKey(name: '_diagnosisSequence')
  final List<Element>? diagnosisSequenceElement;

  /// [procedureSequence] /// Procedures applicable for this service or product.
  @JsonKey(name: 'procedureSequence')
  final List<FhirPositiveInt>? procedureSequence;
  @JsonKey(name: '_procedureSequence')
  final List<Element>? procedureSequenceElement;

  /// [informationSequence] /// Exceptions, special conditions and supporting information applicable for
  /// this service or product.
  @JsonKey(name: 'informationSequence')
  final List<FhirPositiveInt>? informationSequence;
  @JsonKey(name: '_informationSequence')
  final List<Element>? informationSequenceElement;

  /// [revenue] /// The type of revenue or cost center providing the product and/or service.
  @JsonKey(name: 'revenue')
  final CodeableConcept? revenue;

  /// [category] /// Code to identify the general type of benefits under which products and
  /// services are provided.
  @JsonKey(name: 'category')
  final CodeableConcept? category;

  /// [productOrService] /// When the value is a group code then this item collects a set of related
  /// claim details, otherwise this contains the product, service, drug or other
  /// billing code for the item.
  @JsonKey(name: 'productOrService')
  final CodeableConcept productOrService;

  /// [modifier] /// Item typification or modifiers codes to convey additional context for the
  /// product or service.
  @JsonKey(name: 'modifier')
  final List<CodeableConcept>? modifier;

  /// [programCode] /// Identifies the program under which this may be recovered.
  @JsonKey(name: 'programCode')
  final List<CodeableConcept>? programCode;

  /// [servicedDate] /// The date or dates when the service or product was supplied, performed or
  /// completed.
  @JsonKey(name: 'servicedDate')
  final FhirDate? servicedDate;
  @JsonKey(name: '_servicedDate')
  final Element? servicedDateElement;

  /// [servicedPeriod] /// The date or dates when the service or product was supplied, performed or
  /// completed.
  @JsonKey(name: 'servicedPeriod')
  final Period? servicedPeriod;

  /// [locationCodeableConcept] /// Where the product or service was provided.
  @JsonKey(name: 'locationCodeableConcept')
  final CodeableConcept? locationCodeableConcept;

  /// [locationAddress] /// Where the product or service was provided.
  @JsonKey(name: 'locationAddress')
  final Address? locationAddress;

  /// [locationReference] /// Where the product or service was provided.
  @JsonKey(name: 'locationReference')
  final Reference? locationReference;

  /// [quantity] /// The number of repetitions of a service or product.
  @JsonKey(name: 'quantity')
  final Quantity? quantity;

  /// [unitPrice] /// If the item is not a group then this is the fee for the product or service,
  /// otherwise this is the total of the fees for the details of the group.
  @JsonKey(name: 'unitPrice')
  final Money? unitPrice;

  /// [factor] /// A real number that represents a multiplier used in determining the overall
  /// value of services delivered and/or goods received. The concept of a Factor
  /// allows for a discount or surcharge multiplier to be applied to a monetary
  /// amount.
  @JsonKey(name: 'factor')
  final FhirDecimal? factor;
  @JsonKey(name: '_factor')
  final Element? factorElement;

  /// [net] /// The quantity times the unit price for an additional service or product or
  /// charge.
  @JsonKey(name: 'net')
  final Money? net;

  /// [udi] /// Unique Device Identifiers associated with this line item.
  @JsonKey(name: 'udi')
  final List<Reference>? udi;

  /// [bodySite] /// Physical service site on the patient (limb, tooth, etc.).
  @JsonKey(name: 'bodySite')
  final CodeableConcept? bodySite;

  /// [subSite] /// A region or surface of the bodySite, e.g. limb region or tooth surface(s).
  @JsonKey(name: 'subSite')
  final List<CodeableConcept>? subSite;

  /// [encounter] /// A billed item may include goods or services provided in multiple
  /// encounters.
  @JsonKey(name: 'encounter')
  final List<Reference>? encounter;

  /// [noteNumber] /// The numbers associated with notes below which apply to the adjudication of
  /// this item.
  @JsonKey(name: 'noteNumber')
  final List<FhirPositiveInt>? noteNumber;
  @JsonKey(name: '_noteNumber')
  final List<Element>? noteNumberElement;

  /// [adjudication] /// If this item is a group then the values here are a summary of the
  /// adjudication of the detail items. If this item is a simple product or
  /// service then this is the result of the adjudication of this item.
  @JsonKey(name: 'adjudication')
  final List<ExplanationOfBenefitAdjudication>? adjudication;

  /// [detail] /// Second-tier of goods and services.
  @JsonKey(name: 'detail')
  final List<ExplanationOfBenefitDetail>? detail;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['sequence'] = sequence.value;
    if (sequenceElement != null) {
      json['_sequence'] = sequenceElement!.toJson();
    }
    if (careTeamSequence != null && careTeamSequence!.isNotEmpty) {
      json['careTeamSequence'] =
          careTeamSequence!.map((FhirPositiveInt v) => v.value).toList();
    }
    if (careTeamSequenceElement != null &&
        careTeamSequenceElement!.isNotEmpty) {
      json['_careTeamSequence'] =
          careTeamSequenceElement!.map((Element v) => v.toJson()).toList();
    }
    if (diagnosisSequence != null && diagnosisSequence!.isNotEmpty) {
      json['diagnosisSequence'] =
          diagnosisSequence!.map((FhirPositiveInt v) => v.value).toList();
    }
    if (diagnosisSequenceElement != null &&
        diagnosisSequenceElement!.isNotEmpty) {
      json['_diagnosisSequence'] =
          diagnosisSequenceElement!.map((Element v) => v.toJson()).toList();
    }
    if (procedureSequence != null && procedureSequence!.isNotEmpty) {
      json['procedureSequence'] =
          procedureSequence!.map((FhirPositiveInt v) => v.value).toList();
    }
    if (procedureSequenceElement != null &&
        procedureSequenceElement!.isNotEmpty) {
      json['_procedureSequence'] =
          procedureSequenceElement!.map((Element v) => v.toJson()).toList();
    }
    if (informationSequence != null && informationSequence!.isNotEmpty) {
      json['informationSequence'] =
          informationSequence!.map((FhirPositiveInt v) => v.value).toList();
    }
    if (informationSequenceElement != null &&
        informationSequenceElement!.isNotEmpty) {
      json['_informationSequence'] =
          informationSequenceElement!.map((Element v) => v.toJson()).toList();
    }
    if (revenue != null) {
      json['revenue'] = revenue!.toJson();
    }
    if (category != null) {
      json['category'] = category!.toJson();
    }
    json['productOrService'] = productOrService.toJson();
    if (modifier != null && modifier!.isNotEmpty) {
      json['modifier'] =
          modifier!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (programCode != null && programCode!.isNotEmpty) {
      json['programCode'] =
          programCode!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (servicedDate?.value != null) {
      json['servicedDate'] = servicedDate!.value;
    }
    if (servicedDateElement != null) {
      json['_servicedDate'] = servicedDateElement!.toJson();
    }
    if (servicedPeriod != null) {
      json['servicedPeriod'] = servicedPeriod!.toJson();
    }
    if (locationCodeableConcept != null) {
      json['locationCodeableConcept'] = locationCodeableConcept!.toJson();
    }
    if (locationAddress != null) {
      json['locationAddress'] = locationAddress!.toJson();
    }
    if (locationReference != null) {
      json['locationReference'] = locationReference!.toJson();
    }
    if (quantity != null) {
      json['quantity'] = quantity!.toJson();
    }
    if (unitPrice != null) {
      json['unitPrice'] = unitPrice!.toJson();
    }
    if (factor?.value != null) {
      json['factor'] = factor!.value;
    }
    if (factorElement != null) {
      json['_factor'] = factorElement!.toJson();
    }
    if (net != null) {
      json['net'] = net!.toJson();
    }
    if (udi != null && udi!.isNotEmpty) {
      json['udi'] = udi!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (bodySite != null) {
      json['bodySite'] = bodySite!.toJson();
    }
    if (subSite != null && subSite!.isNotEmpty) {
      json['subSite'] =
          subSite!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (encounter != null && encounter!.isNotEmpty) {
      json['encounter'] =
          encounter!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (noteNumber != null && noteNumber!.isNotEmpty) {
      json['noteNumber'] =
          noteNumber!.map((FhirPositiveInt v) => v.value).toList();
    }
    if (noteNumberElement != null && noteNumberElement!.isNotEmpty) {
      json['_noteNumber'] =
          noteNumberElement!.map((Element v) => v.toJson()).toList();
    }
    if (adjudication != null && adjudication!.isNotEmpty) {
      json['adjudication'] = adjudication!
          .map<dynamic>((ExplanationOfBenefitAdjudication v) => v.toJson())
          .toList();
    }
    if (detail != null && detail!.isNotEmpty) {
      json['detail'] = detail!
          .map<dynamic>((ExplanationOfBenefitDetail v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory ExplanationOfBenefitItem.fromJson(Map<String, dynamic> json) {
    return ExplanationOfBenefitItem(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      sequence: FhirPositiveInt(json['sequence']),
      sequenceElement:
          Element.fromJson(json['_sequence'] as Map<String, dynamic>),
      careTeamSequence: json['careTeamSequence'] != null
          ? (json['careTeamSequence'] as List<dynamic>)
              .map<FhirPositiveInt>((dynamic v) => FhirPositiveInt(v))
              .toList()
          : null,
      careTeamSequenceElement: json['_careTeamSequence'] != null
          ? (json['_careTeamSequence'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      diagnosisSequence: json['diagnosisSequence'] != null
          ? (json['diagnosisSequence'] as List<dynamic>)
              .map<FhirPositiveInt>((dynamic v) => FhirPositiveInt(v))
              .toList()
          : null,
      diagnosisSequenceElement: json['_diagnosisSequence'] != null
          ? (json['_diagnosisSequence'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      procedureSequence: json['procedureSequence'] != null
          ? (json['procedureSequence'] as List<dynamic>)
              .map<FhirPositiveInt>((dynamic v) => FhirPositiveInt(v))
              .toList()
          : null,
      procedureSequenceElement: json['_procedureSequence'] != null
          ? (json['_procedureSequence'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      informationSequence: json['informationSequence'] != null
          ? (json['informationSequence'] as List<dynamic>)
              .map<FhirPositiveInt>((dynamic v) => FhirPositiveInt(v))
              .toList()
          : null,
      informationSequenceElement: json['_informationSequence'] != null
          ? (json['_informationSequence'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      revenue: json['revenue'] != null
          ? CodeableConcept.fromJson(json['revenue'] as Map<String, dynamic>)
          : null,
      category: json['category'] != null
          ? CodeableConcept.fromJson(json['category'] as Map<String, dynamic>)
          : null,
      productOrService: CodeableConcept.fromJson(
          json['productOrService'] as Map<String, dynamic>),
      modifier: json['modifier'] != null
          ? (json['modifier'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      programCode: json['programCode'] != null
          ? (json['programCode'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      servicedDate:
          json['servicedDate'] != null ? FhirDate(json['servicedDate']) : null,
      servicedDateElement: json['_servicedDate'] != null
          ? Element.fromJson(json['_servicedDate'] as Map<String, dynamic>)
          : null,
      servicedPeriod: json['servicedPeriod'] != null
          ? Period.fromJson(json['servicedPeriod'] as Map<String, dynamic>)
          : null,
      locationCodeableConcept: json['locationCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['locationCodeableConcept'] as Map<String, dynamic>)
          : null,
      locationAddress: json['locationAddress'] != null
          ? Address.fromJson(json['locationAddress'] as Map<String, dynamic>)
          : null,
      locationReference: json['locationReference'] != null
          ? Reference.fromJson(
              json['locationReference'] as Map<String, dynamic>)
          : null,
      quantity: json['quantity'] != null
          ? Quantity.fromJson(json['quantity'] as Map<String, dynamic>)
          : null,
      unitPrice: json['unitPrice'] != null
          ? Money.fromJson(json['unitPrice'] as Map<String, dynamic>)
          : null,
      factor: json['factor'] != null ? FhirDecimal(json['factor']) : null,
      factorElement: json['_factor'] != null
          ? Element.fromJson(json['_factor'] as Map<String, dynamic>)
          : null,
      net: json['net'] != null
          ? Money.fromJson(json['net'] as Map<String, dynamic>)
          : null,
      udi: json['udi'] != null
          ? (json['udi'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      bodySite: json['bodySite'] != null
          ? CodeableConcept.fromJson(json['bodySite'] as Map<String, dynamic>)
          : null,
      subSite: json['subSite'] != null
          ? (json['subSite'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      encounter: json['encounter'] != null
          ? (json['encounter'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      noteNumber: json['noteNumber'] != null
          ? (json['noteNumber'] as List<dynamic>)
              .map<FhirPositiveInt>((dynamic v) => FhirPositiveInt(v))
              .toList()
          : null,
      noteNumberElement: json['_noteNumber'] != null
          ? (json['_noteNumber'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      adjudication: json['adjudication'] != null
          ? (json['adjudication'] as List<dynamic>)
              .map<ExplanationOfBenefitAdjudication>((dynamic v) =>
                  ExplanationOfBenefitAdjudication.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      detail: json['detail'] != null
          ? (json['detail'] as List<dynamic>)
              .map<ExplanationOfBenefitDetail>((dynamic v) =>
                  ExplanationOfBenefitDetail.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  ExplanationOfBenefitItem clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitItem copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? sequence,
    Element? sequenceElement,
    List<FhirPositiveInt>? careTeamSequence,
    List<Element>? careTeamSequenceElement,
    List<FhirPositiveInt>? diagnosisSequence,
    List<Element>? diagnosisSequenceElement,
    List<FhirPositiveInt>? procedureSequence,
    List<Element>? procedureSequenceElement,
    List<FhirPositiveInt>? informationSequence,
    List<Element>? informationSequenceElement,
    CodeableConcept? revenue,
    CodeableConcept? category,
    CodeableConcept? productOrService,
    List<CodeableConcept>? modifier,
    List<CodeableConcept>? programCode,
    FhirDate? servicedDate,
    Element? servicedDateElement,
    Period? servicedPeriod,
    CodeableConcept? locationCodeableConcept,
    Address? locationAddress,
    Reference? locationReference,
    Quantity? quantity,
    Money? unitPrice,
    FhirDecimal? factor,
    Element? factorElement,
    Money? net,
    List<Reference>? udi,
    CodeableConcept? bodySite,
    List<CodeableConcept>? subSite,
    List<Reference>? encounter,
    List<FhirPositiveInt>? noteNumber,
    List<Element>? noteNumberElement,
    List<ExplanationOfBenefitAdjudication>? adjudication,
    List<ExplanationOfBenefitDetail>? detail,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ExplanationOfBenefitItem(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      sequenceElement: sequenceElement ?? this.sequenceElement,
      careTeamSequence: careTeamSequence ?? this.careTeamSequence,
      careTeamSequenceElement:
          careTeamSequenceElement ?? this.careTeamSequenceElement,
      diagnosisSequence: diagnosisSequence ?? this.diagnosisSequence,
      diagnosisSequenceElement:
          diagnosisSequenceElement ?? this.diagnosisSequenceElement,
      procedureSequence: procedureSequence ?? this.procedureSequence,
      procedureSequenceElement:
          procedureSequenceElement ?? this.procedureSequenceElement,
      informationSequence: informationSequence ?? this.informationSequence,
      informationSequenceElement:
          informationSequenceElement ?? this.informationSequenceElement,
      revenue: revenue ?? this.revenue,
      category: category ?? this.category,
      productOrService: productOrService ?? this.productOrService,
      modifier: modifier ?? this.modifier,
      programCode: programCode ?? this.programCode,
      servicedDate: servicedDate ?? this.servicedDate,
      servicedDateElement: servicedDateElement ?? this.servicedDateElement,
      servicedPeriod: servicedPeriod ?? this.servicedPeriod,
      locationCodeableConcept:
          locationCodeableConcept ?? this.locationCodeableConcept,
      locationAddress: locationAddress ?? this.locationAddress,
      locationReference: locationReference ?? this.locationReference,
      quantity: quantity ?? this.quantity,
      unitPrice: unitPrice ?? this.unitPrice,
      factor: factor ?? this.factor,
      factorElement: factorElement ?? this.factorElement,
      net: net ?? this.net,
      udi: udi ?? this.udi,
      bodySite: bodySite ?? this.bodySite,
      subSite: subSite ?? this.subSite,
      encounter: encounter ?? this.encounter,
      noteNumber: noteNumber ?? this.noteNumber,
      noteNumberElement: noteNumberElement ?? this.noteNumberElement,
      adjudication: adjudication ?? this.adjudication,
      detail: detail ?? this.detail,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ExplanationOfBenefitItem.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefitItem.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ExplanationOfBenefitItem.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ExplanationOfBenefitItem cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ExplanationOfBenefitItem.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExplanationOfBenefitItem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ExplanationOfBenefitAdjudication] /// If this item is a group then the values here are a summary of the
/// adjudication of the detail items. If this item is a simple product or
/// service then this is the result of the adjudication of this item.
@JsonSerializable()
class ExplanationOfBenefitAdjudication extends BackboneElement {
  ExplanationOfBenefitAdjudication({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.category,
    this.reason,
    this.amount,
    this.value,
    this.valueElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'ExplanationOfBenefitAdjudication';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [category] /// A code to indicate the information type of this adjudication record.
  /// Information types may include: the value submitted, maximum values or
  /// percentages allowed or payable under the plan, amounts that the patient is
  /// responsible for in-aggregate or pertaining to this item, amounts paid by
  /// other coverages, and the benefit payable for this item.
  @JsonKey(name: 'category')
  final CodeableConcept category;

  /// [reason] /// A code supporting the understanding of the adjudication result and
  /// explaining variance from expected amount.
  @JsonKey(name: 'reason')
  final CodeableConcept? reason;

  /// [amount] /// Monetary amount associated with the category.
  @JsonKey(name: 'amount')
  final Money? amount;

  /// [value] /// A non-monetary value associated with the category. Mutually exclusive to
  /// the amount element above.
  @JsonKey(name: 'value')
  final FhirDecimal? value;
  @JsonKey(name: '_value')
  final Element? valueElement;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['category'] = category.toJson();
    if (reason != null) {
      json['reason'] = reason!.toJson();
    }
    if (amount != null) {
      json['amount'] = amount!.toJson();
    }
    if (value?.value != null) {
      json['value'] = value!.value;
    }
    if (valueElement != null) {
      json['_value'] = valueElement!.toJson();
    }
    return json;
  }

  factory ExplanationOfBenefitAdjudication.fromJson(Map<String, dynamic> json) {
    return ExplanationOfBenefitAdjudication(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      category:
          CodeableConcept.fromJson(json['category'] as Map<String, dynamic>),
      reason: json['reason'] != null
          ? CodeableConcept.fromJson(json['reason'] as Map<String, dynamic>)
          : null,
      amount: json['amount'] != null
          ? Money.fromJson(json['amount'] as Map<String, dynamic>)
          : null,
      value: json['value'] != null ? FhirDecimal(json['value']) : null,
      valueElement: json['_value'] != null
          ? Element.fromJson(json['_value'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  ExplanationOfBenefitAdjudication clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitAdjudication copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? category,
    CodeableConcept? reason,
    Money? amount,
    FhirDecimal? value,
    Element? valueElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ExplanationOfBenefitAdjudication(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      category: category ?? this.category,
      reason: reason ?? this.reason,
      amount: amount ?? this.amount,
      value: value ?? this.value,
      valueElement: valueElement ?? this.valueElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ExplanationOfBenefitAdjudication.fromYaml(dynamic yaml) => yaml
          is String
      ? ExplanationOfBenefitAdjudication.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ExplanationOfBenefitAdjudication.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ExplanationOfBenefitAdjudication cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ExplanationOfBenefitAdjudication.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExplanationOfBenefitAdjudication.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ExplanationOfBenefitDetail] /// Second-tier of goods and services.
@JsonSerializable()
class ExplanationOfBenefitDetail extends BackboneElement {
  ExplanationOfBenefitDetail({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequence,
    this.sequenceElement,
    this.revenue,
    this.category,
    required this.productOrService,
    this.modifier,
    this.programCode,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.factorElement,
    this.net,
    this.udi,
    this.noteNumber,
    this.noteNumberElement,
    this.adjudication,
    this.subDetail,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'ExplanationOfBenefitDetail';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [sequence] /// A claim detail line. Either a simple (a product or service) or a 'group' of
  /// sub-details which are simple items.
  @JsonKey(name: 'sequence')
  final FhirPositiveInt sequence;
  @JsonKey(name: '_sequence')
  final Element? sequenceElement;

  /// [revenue] /// The type of revenue or cost center providing the product and/or service.
  @JsonKey(name: 'revenue')
  final CodeableConcept? revenue;

  /// [category] /// Code to identify the general type of benefits under which products and
  /// services are provided.
  @JsonKey(name: 'category')
  final CodeableConcept? category;

  /// [productOrService] /// When the value is a group code then this item collects a set of related
  /// claim details, otherwise this contains the product, service, drug or other
  /// billing code for the item.
  @JsonKey(name: 'productOrService')
  final CodeableConcept productOrService;

  /// [modifier] /// Item typification or modifiers codes to convey additional context for the
  /// product or service.
  @JsonKey(name: 'modifier')
  final List<CodeableConcept>? modifier;

  /// [programCode] /// Identifies the program under which this may be recovered.
  @JsonKey(name: 'programCode')
  final List<CodeableConcept>? programCode;

  /// [quantity] /// The number of repetitions of a service or product.
  @JsonKey(name: 'quantity')
  final Quantity? quantity;

  /// [unitPrice] /// If the item is not a group then this is the fee for the product or service,
  /// otherwise this is the total of the fees for the details of the group.
  @JsonKey(name: 'unitPrice')
  final Money? unitPrice;

  /// [factor] /// A real number that represents a multiplier used in determining the overall
  /// value of services delivered and/or goods received. The concept of a Factor
  /// allows for a discount or surcharge multiplier to be applied to a monetary
  /// amount.
  @JsonKey(name: 'factor')
  final FhirDecimal? factor;
  @JsonKey(name: '_factor')
  final Element? factorElement;

  /// [net] /// The quantity times the unit price for an additional service or product or
  /// charge.
  @JsonKey(name: 'net')
  final Money? net;

  /// [udi] /// Unique Device Identifiers associated with this line item.
  @JsonKey(name: 'udi')
  final List<Reference>? udi;

  /// [noteNumber] /// The numbers associated with notes below which apply to the adjudication of
  /// this item.
  @JsonKey(name: 'noteNumber')
  final List<FhirPositiveInt>? noteNumber;
  @JsonKey(name: '_noteNumber')
  final List<Element>? noteNumberElement;

  /// [adjudication] /// The adjudication results.
  @JsonKey(name: 'adjudication')
  final List<ExplanationOfBenefitAdjudication>? adjudication;

  /// [subDetail] /// Third-tier of goods and services.
  @JsonKey(name: 'subDetail')
  final List<ExplanationOfBenefitSubDetail>? subDetail;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['sequence'] = sequence.value;
    if (sequenceElement != null) {
      json['_sequence'] = sequenceElement!.toJson();
    }
    if (revenue != null) {
      json['revenue'] = revenue!.toJson();
    }
    if (category != null) {
      json['category'] = category!.toJson();
    }
    json['productOrService'] = productOrService.toJson();
    if (modifier != null && modifier!.isNotEmpty) {
      json['modifier'] =
          modifier!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (programCode != null && programCode!.isNotEmpty) {
      json['programCode'] =
          programCode!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (quantity != null) {
      json['quantity'] = quantity!.toJson();
    }
    if (unitPrice != null) {
      json['unitPrice'] = unitPrice!.toJson();
    }
    if (factor?.value != null) {
      json['factor'] = factor!.value;
    }
    if (factorElement != null) {
      json['_factor'] = factorElement!.toJson();
    }
    if (net != null) {
      json['net'] = net!.toJson();
    }
    if (udi != null && udi!.isNotEmpty) {
      json['udi'] = udi!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (noteNumber != null && noteNumber!.isNotEmpty) {
      json['noteNumber'] =
          noteNumber!.map((FhirPositiveInt v) => v.value).toList();
    }
    if (noteNumberElement != null && noteNumberElement!.isNotEmpty) {
      json['_noteNumber'] =
          noteNumberElement!.map((Element v) => v.toJson()).toList();
    }
    if (adjudication != null && adjudication!.isNotEmpty) {
      json['adjudication'] = adjudication!
          .map<dynamic>((ExplanationOfBenefitAdjudication v) => v.toJson())
          .toList();
    }
    if (subDetail != null && subDetail!.isNotEmpty) {
      json['subDetail'] = subDetail!
          .map<dynamic>((ExplanationOfBenefitSubDetail v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory ExplanationOfBenefitDetail.fromJson(Map<String, dynamic> json) {
    return ExplanationOfBenefitDetail(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      sequence: FhirPositiveInt(json['sequence']),
      sequenceElement:
          Element.fromJson(json['_sequence'] as Map<String, dynamic>),
      revenue: json['revenue'] != null
          ? CodeableConcept.fromJson(json['revenue'] as Map<String, dynamic>)
          : null,
      category: json['category'] != null
          ? CodeableConcept.fromJson(json['category'] as Map<String, dynamic>)
          : null,
      productOrService: CodeableConcept.fromJson(
          json['productOrService'] as Map<String, dynamic>),
      modifier: json['modifier'] != null
          ? (json['modifier'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      programCode: json['programCode'] != null
          ? (json['programCode'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      quantity: json['quantity'] != null
          ? Quantity.fromJson(json['quantity'] as Map<String, dynamic>)
          : null,
      unitPrice: json['unitPrice'] != null
          ? Money.fromJson(json['unitPrice'] as Map<String, dynamic>)
          : null,
      factor: json['factor'] != null ? FhirDecimal(json['factor']) : null,
      factorElement: json['_factor'] != null
          ? Element.fromJson(json['_factor'] as Map<String, dynamic>)
          : null,
      net: json['net'] != null
          ? Money.fromJson(json['net'] as Map<String, dynamic>)
          : null,
      udi: json['udi'] != null
          ? (json['udi'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      noteNumber: json['noteNumber'] != null
          ? (json['noteNumber'] as List<dynamic>)
              .map<FhirPositiveInt>((dynamic v) => FhirPositiveInt(v))
              .toList()
          : null,
      noteNumberElement: json['_noteNumber'] != null
          ? (json['_noteNumber'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      adjudication: json['adjudication'] != null
          ? (json['adjudication'] as List<dynamic>)
              .map<ExplanationOfBenefitAdjudication>((dynamic v) =>
                  ExplanationOfBenefitAdjudication.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      subDetail: json['subDetail'] != null
          ? (json['subDetail'] as List<dynamic>)
              .map<ExplanationOfBenefitSubDetail>((dynamic v) =>
                  ExplanationOfBenefitSubDetail.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  ExplanationOfBenefitDetail clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitDetail copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? sequence,
    Element? sequenceElement,
    CodeableConcept? revenue,
    CodeableConcept? category,
    CodeableConcept? productOrService,
    List<CodeableConcept>? modifier,
    List<CodeableConcept>? programCode,
    Quantity? quantity,
    Money? unitPrice,
    FhirDecimal? factor,
    Element? factorElement,
    Money? net,
    List<Reference>? udi,
    List<FhirPositiveInt>? noteNumber,
    List<Element>? noteNumberElement,
    List<ExplanationOfBenefitAdjudication>? adjudication,
    List<ExplanationOfBenefitSubDetail>? subDetail,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ExplanationOfBenefitDetail(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      sequenceElement: sequenceElement ?? this.sequenceElement,
      revenue: revenue ?? this.revenue,
      category: category ?? this.category,
      productOrService: productOrService ?? this.productOrService,
      modifier: modifier ?? this.modifier,
      programCode: programCode ?? this.programCode,
      quantity: quantity ?? this.quantity,
      unitPrice: unitPrice ?? this.unitPrice,
      factor: factor ?? this.factor,
      factorElement: factorElement ?? this.factorElement,
      net: net ?? this.net,
      udi: udi ?? this.udi,
      noteNumber: noteNumber ?? this.noteNumber,
      noteNumberElement: noteNumberElement ?? this.noteNumberElement,
      adjudication: adjudication ?? this.adjudication,
      subDetail: subDetail ?? this.subDetail,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ExplanationOfBenefitDetail.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefitDetail.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ExplanationOfBenefitDetail.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ExplanationOfBenefitDetail cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ExplanationOfBenefitDetail.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExplanationOfBenefitDetail.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ExplanationOfBenefitSubDetail] /// Third-tier of goods and services.
@JsonSerializable()
class ExplanationOfBenefitSubDetail extends BackboneElement {
  ExplanationOfBenefitSubDetail({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequence,
    this.sequenceElement,
    this.revenue,
    this.category,
    required this.productOrService,
    this.modifier,
    this.programCode,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.factorElement,
    this.net,
    this.udi,
    this.noteNumber,
    this.noteNumberElement,
    this.adjudication,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'ExplanationOfBenefitSubDetail';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [sequence] /// A claim detail line. Either a simple (a product or service) or a 'group' of
  /// sub-details which are simple items.
  @JsonKey(name: 'sequence')
  final FhirPositiveInt sequence;
  @JsonKey(name: '_sequence')
  final Element? sequenceElement;

  /// [revenue] /// The type of revenue or cost center providing the product and/or service.
  @JsonKey(name: 'revenue')
  final CodeableConcept? revenue;

  /// [category] /// Code to identify the general type of benefits under which products and
  /// services are provided.
  @JsonKey(name: 'category')
  final CodeableConcept? category;

  /// [productOrService] /// When the value is a group code then this item collects a set of related
  /// claim details, otherwise this contains the product, service, drug or other
  /// billing code for the item.
  @JsonKey(name: 'productOrService')
  final CodeableConcept productOrService;

  /// [modifier] /// Item typification or modifiers codes to convey additional context for the
  /// product or service.
  @JsonKey(name: 'modifier')
  final List<CodeableConcept>? modifier;

  /// [programCode] /// Identifies the program under which this may be recovered.
  @JsonKey(name: 'programCode')
  final List<CodeableConcept>? programCode;

  /// [quantity] /// The number of repetitions of a service or product.
  @JsonKey(name: 'quantity')
  final Quantity? quantity;

  /// [unitPrice] /// If the item is not a group then this is the fee for the product or service,
  /// otherwise this is the total of the fees for the details of the group.
  @JsonKey(name: 'unitPrice')
  final Money? unitPrice;

  /// [factor] /// A real number that represents a multiplier used in determining the overall
  /// value of services delivered and/or goods received. The concept of a Factor
  /// allows for a discount or surcharge multiplier to be applied to a monetary
  /// amount.
  @JsonKey(name: 'factor')
  final FhirDecimal? factor;
  @JsonKey(name: '_factor')
  final Element? factorElement;

  /// [net] /// The quantity times the unit price for an additional service or product or
  /// charge.
  @JsonKey(name: 'net')
  final Money? net;

  /// [udi] /// Unique Device Identifiers associated with this line item.
  @JsonKey(name: 'udi')
  final List<Reference>? udi;

  /// [noteNumber] /// The numbers associated with notes below which apply to the adjudication of
  /// this item.
  @JsonKey(name: 'noteNumber')
  final List<FhirPositiveInt>? noteNumber;
  @JsonKey(name: '_noteNumber')
  final List<Element>? noteNumberElement;

  /// [adjudication] /// The adjudication results.
  @JsonKey(name: 'adjudication')
  final List<ExplanationOfBenefitAdjudication>? adjudication;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['sequence'] = sequence.value;
    if (sequenceElement != null) {
      json['_sequence'] = sequenceElement!.toJson();
    }
    if (revenue != null) {
      json['revenue'] = revenue!.toJson();
    }
    if (category != null) {
      json['category'] = category!.toJson();
    }
    json['productOrService'] = productOrService.toJson();
    if (modifier != null && modifier!.isNotEmpty) {
      json['modifier'] =
          modifier!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (programCode != null && programCode!.isNotEmpty) {
      json['programCode'] =
          programCode!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (quantity != null) {
      json['quantity'] = quantity!.toJson();
    }
    if (unitPrice != null) {
      json['unitPrice'] = unitPrice!.toJson();
    }
    if (factor?.value != null) {
      json['factor'] = factor!.value;
    }
    if (factorElement != null) {
      json['_factor'] = factorElement!.toJson();
    }
    if (net != null) {
      json['net'] = net!.toJson();
    }
    if (udi != null && udi!.isNotEmpty) {
      json['udi'] = udi!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (noteNumber != null && noteNumber!.isNotEmpty) {
      json['noteNumber'] =
          noteNumber!.map((FhirPositiveInt v) => v.value).toList();
    }
    if (noteNumberElement != null && noteNumberElement!.isNotEmpty) {
      json['_noteNumber'] =
          noteNumberElement!.map((Element v) => v.toJson()).toList();
    }
    if (adjudication != null && adjudication!.isNotEmpty) {
      json['adjudication'] = adjudication!
          .map<dynamic>((ExplanationOfBenefitAdjudication v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory ExplanationOfBenefitSubDetail.fromJson(Map<String, dynamic> json) {
    return ExplanationOfBenefitSubDetail(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      sequence: FhirPositiveInt(json['sequence']),
      sequenceElement:
          Element.fromJson(json['_sequence'] as Map<String, dynamic>),
      revenue: json['revenue'] != null
          ? CodeableConcept.fromJson(json['revenue'] as Map<String, dynamic>)
          : null,
      category: json['category'] != null
          ? CodeableConcept.fromJson(json['category'] as Map<String, dynamic>)
          : null,
      productOrService: CodeableConcept.fromJson(
          json['productOrService'] as Map<String, dynamic>),
      modifier: json['modifier'] != null
          ? (json['modifier'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      programCode: json['programCode'] != null
          ? (json['programCode'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      quantity: json['quantity'] != null
          ? Quantity.fromJson(json['quantity'] as Map<String, dynamic>)
          : null,
      unitPrice: json['unitPrice'] != null
          ? Money.fromJson(json['unitPrice'] as Map<String, dynamic>)
          : null,
      factor: json['factor'] != null ? FhirDecimal(json['factor']) : null,
      factorElement: json['_factor'] != null
          ? Element.fromJson(json['_factor'] as Map<String, dynamic>)
          : null,
      net: json['net'] != null
          ? Money.fromJson(json['net'] as Map<String, dynamic>)
          : null,
      udi: json['udi'] != null
          ? (json['udi'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      noteNumber: json['noteNumber'] != null
          ? (json['noteNumber'] as List<dynamic>)
              .map<FhirPositiveInt>((dynamic v) => FhirPositiveInt(v))
              .toList()
          : null,
      noteNumberElement: json['_noteNumber'] != null
          ? (json['_noteNumber'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      adjudication: json['adjudication'] != null
          ? (json['adjudication'] as List<dynamic>)
              .map<ExplanationOfBenefitAdjudication>((dynamic v) =>
                  ExplanationOfBenefitAdjudication.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  ExplanationOfBenefitSubDetail clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitSubDetail copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? sequence,
    Element? sequenceElement,
    CodeableConcept? revenue,
    CodeableConcept? category,
    CodeableConcept? productOrService,
    List<CodeableConcept>? modifier,
    List<CodeableConcept>? programCode,
    Quantity? quantity,
    Money? unitPrice,
    FhirDecimal? factor,
    Element? factorElement,
    Money? net,
    List<Reference>? udi,
    List<FhirPositiveInt>? noteNumber,
    List<Element>? noteNumberElement,
    List<ExplanationOfBenefitAdjudication>? adjudication,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ExplanationOfBenefitSubDetail(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      sequenceElement: sequenceElement ?? this.sequenceElement,
      revenue: revenue ?? this.revenue,
      category: category ?? this.category,
      productOrService: productOrService ?? this.productOrService,
      modifier: modifier ?? this.modifier,
      programCode: programCode ?? this.programCode,
      quantity: quantity ?? this.quantity,
      unitPrice: unitPrice ?? this.unitPrice,
      factor: factor ?? this.factor,
      factorElement: factorElement ?? this.factorElement,
      net: net ?? this.net,
      udi: udi ?? this.udi,
      noteNumber: noteNumber ?? this.noteNumber,
      noteNumberElement: noteNumberElement ?? this.noteNumberElement,
      adjudication: adjudication ?? this.adjudication,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ExplanationOfBenefitSubDetail.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefitSubDetail.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ExplanationOfBenefitSubDetail.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ExplanationOfBenefitSubDetail cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ExplanationOfBenefitSubDetail.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExplanationOfBenefitSubDetail.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ExplanationOfBenefitAddItem] /// The first-tier service adjudications for payor added product or service
/// lines.
@JsonSerializable()
class ExplanationOfBenefitAddItem extends BackboneElement {
  ExplanationOfBenefitAddItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.itemSequence,
    this.itemSequenceElement,
    this.detailSequence,
    this.detailSequenceElement,
    this.subDetailSequence,
    this.subDetailSequenceElement,
    this.provider,
    required this.productOrService,
    this.modifier,
    this.programCode,
    this.servicedDate,
    this.servicedDateElement,
    this.servicedPeriod,
    this.locationCodeableConcept,
    this.locationAddress,
    this.locationReference,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.factorElement,
    this.net,
    this.bodySite,
    this.subSite,
    this.noteNumber,
    this.noteNumberElement,
    this.adjudication,
    this.detail,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'ExplanationOfBenefitAddItem';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [itemSequence] /// Claim items which this service line is intended to replace.
  @JsonKey(name: 'itemSequence')
  final List<FhirPositiveInt>? itemSequence;
  @JsonKey(name: '_itemSequence')
  final List<Element>? itemSequenceElement;

  /// [detailSequence] /// The sequence number of the details within the claim item which this line is
  /// intended to replace.
  @JsonKey(name: 'detailSequence')
  final List<FhirPositiveInt>? detailSequence;
  @JsonKey(name: '_detailSequence')
  final List<Element>? detailSequenceElement;

  /// [subDetailSequence] /// The sequence number of the sub-details woithin the details within the claim
  /// item which this line is intended to replace.
  @JsonKey(name: 'subDetailSequence')
  final List<FhirPositiveInt>? subDetailSequence;
  @JsonKey(name: '_subDetailSequence')
  final List<Element>? subDetailSequenceElement;

  /// [provider] /// The providers who are authorized for the services rendered to the patient.
  @JsonKey(name: 'provider')
  final List<Reference>? provider;

  /// [productOrService] /// When the value is a group code then this item collects a set of related
  /// claim details, otherwise this contains the product, service, drug or other
  /// billing code for the item.
  @JsonKey(name: 'productOrService')
  final CodeableConcept productOrService;

  /// [modifier] /// Item typification or modifiers codes to convey additional context for the
  /// product or service.
  @JsonKey(name: 'modifier')
  final List<CodeableConcept>? modifier;

  /// [programCode] /// Identifies the program under which this may be recovered.
  @JsonKey(name: 'programCode')
  final List<CodeableConcept>? programCode;

  /// [servicedDate] /// The date or dates when the service or product was supplied, performed or
  /// completed.
  @JsonKey(name: 'servicedDate')
  final FhirDate? servicedDate;
  @JsonKey(name: '_servicedDate')
  final Element? servicedDateElement;

  /// [servicedPeriod] /// The date or dates when the service or product was supplied, performed or
  /// completed.
  @JsonKey(name: 'servicedPeriod')
  final Period? servicedPeriod;

  /// [locationCodeableConcept] /// Where the product or service was provided.
  @JsonKey(name: 'locationCodeableConcept')
  final CodeableConcept? locationCodeableConcept;

  /// [locationAddress] /// Where the product or service was provided.
  @JsonKey(name: 'locationAddress')
  final Address? locationAddress;

  /// [locationReference] /// Where the product or service was provided.
  @JsonKey(name: 'locationReference')
  final Reference? locationReference;

  /// [quantity] /// The number of repetitions of a service or product.
  @JsonKey(name: 'quantity')
  final Quantity? quantity;

  /// [unitPrice] /// If the item is not a group then this is the fee for the product or service,
  /// otherwise this is the total of the fees for the details of the group.
  @JsonKey(name: 'unitPrice')
  final Money? unitPrice;

  /// [factor] /// A real number that represents a multiplier used in determining the overall
  /// value of services delivered and/or goods received. The concept of a Factor
  /// allows for a discount or surcharge multiplier to be applied to a monetary
  /// amount.
  @JsonKey(name: 'factor')
  final FhirDecimal? factor;
  @JsonKey(name: '_factor')
  final Element? factorElement;

  /// [net] /// The quantity times the unit price for an additional service or product or
  /// charge.
  @JsonKey(name: 'net')
  final Money? net;

  /// [bodySite] /// Physical service site on the patient (limb, tooth, etc.).
  @JsonKey(name: 'bodySite')
  final CodeableConcept? bodySite;

  /// [subSite] /// A region or surface of the bodySite, e.g. limb region or tooth surface(s).
  @JsonKey(name: 'subSite')
  final List<CodeableConcept>? subSite;

  /// [noteNumber] /// The numbers associated with notes below which apply to the adjudication of
  /// this item.
  @JsonKey(name: 'noteNumber')
  final List<FhirPositiveInt>? noteNumber;
  @JsonKey(name: '_noteNumber')
  final List<Element>? noteNumberElement;

  /// [adjudication] /// The adjudication results.
  @JsonKey(name: 'adjudication')
  final List<ExplanationOfBenefitAdjudication>? adjudication;

  /// [detail] /// The second-tier service adjudications for payor added services.
  @JsonKey(name: 'detail')
  final List<ExplanationOfBenefitDetail>? detail;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (itemSequence != null && itemSequence!.isNotEmpty) {
      json['itemSequence'] =
          itemSequence!.map((FhirPositiveInt v) => v.value).toList();
    }
    if (itemSequenceElement != null && itemSequenceElement!.isNotEmpty) {
      json['_itemSequence'] =
          itemSequenceElement!.map((Element v) => v.toJson()).toList();
    }
    if (detailSequence != null && detailSequence!.isNotEmpty) {
      json['detailSequence'] =
          detailSequence!.map((FhirPositiveInt v) => v.value).toList();
    }
    if (detailSequenceElement != null && detailSequenceElement!.isNotEmpty) {
      json['_detailSequence'] =
          detailSequenceElement!.map((Element v) => v.toJson()).toList();
    }
    if (subDetailSequence != null && subDetailSequence!.isNotEmpty) {
      json['subDetailSequence'] =
          subDetailSequence!.map((FhirPositiveInt v) => v.value).toList();
    }
    if (subDetailSequenceElement != null &&
        subDetailSequenceElement!.isNotEmpty) {
      json['_subDetailSequence'] =
          subDetailSequenceElement!.map((Element v) => v.toJson()).toList();
    }
    if (provider != null && provider!.isNotEmpty) {
      json['provider'] =
          provider!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    json['productOrService'] = productOrService.toJson();
    if (modifier != null && modifier!.isNotEmpty) {
      json['modifier'] =
          modifier!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (programCode != null && programCode!.isNotEmpty) {
      json['programCode'] =
          programCode!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (servicedDate?.value != null) {
      json['servicedDate'] = servicedDate!.value;
    }
    if (servicedDateElement != null) {
      json['_servicedDate'] = servicedDateElement!.toJson();
    }
    if (servicedPeriod != null) {
      json['servicedPeriod'] = servicedPeriod!.toJson();
    }
    if (locationCodeableConcept != null) {
      json['locationCodeableConcept'] = locationCodeableConcept!.toJson();
    }
    if (locationAddress != null) {
      json['locationAddress'] = locationAddress!.toJson();
    }
    if (locationReference != null) {
      json['locationReference'] = locationReference!.toJson();
    }
    if (quantity != null) {
      json['quantity'] = quantity!.toJson();
    }
    if (unitPrice != null) {
      json['unitPrice'] = unitPrice!.toJson();
    }
    if (factor?.value != null) {
      json['factor'] = factor!.value;
    }
    if (factorElement != null) {
      json['_factor'] = factorElement!.toJson();
    }
    if (net != null) {
      json['net'] = net!.toJson();
    }
    if (bodySite != null) {
      json['bodySite'] = bodySite!.toJson();
    }
    if (subSite != null && subSite!.isNotEmpty) {
      json['subSite'] =
          subSite!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (noteNumber != null && noteNumber!.isNotEmpty) {
      json['noteNumber'] =
          noteNumber!.map((FhirPositiveInt v) => v.value).toList();
    }
    if (noteNumberElement != null && noteNumberElement!.isNotEmpty) {
      json['_noteNumber'] =
          noteNumberElement!.map((Element v) => v.toJson()).toList();
    }
    if (adjudication != null && adjudication!.isNotEmpty) {
      json['adjudication'] = adjudication!
          .map<dynamic>((ExplanationOfBenefitAdjudication v) => v.toJson())
          .toList();
    }
    if (detail != null && detail!.isNotEmpty) {
      json['detail'] = detail!
          .map<dynamic>((ExplanationOfBenefitDetail v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory ExplanationOfBenefitAddItem.fromJson(Map<String, dynamic> json) {
    return ExplanationOfBenefitAddItem(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      itemSequence: json['itemSequence'] != null
          ? (json['itemSequence'] as List<dynamic>)
              .map<FhirPositiveInt>((dynamic v) => FhirPositiveInt(v))
              .toList()
          : null,
      itemSequenceElement: json['_itemSequence'] != null
          ? (json['_itemSequence'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      detailSequence: json['detailSequence'] != null
          ? (json['detailSequence'] as List<dynamic>)
              .map<FhirPositiveInt>((dynamic v) => FhirPositiveInt(v))
              .toList()
          : null,
      detailSequenceElement: json['_detailSequence'] != null
          ? (json['_detailSequence'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      subDetailSequence: json['subDetailSequence'] != null
          ? (json['subDetailSequence'] as List<dynamic>)
              .map<FhirPositiveInt>((dynamic v) => FhirPositiveInt(v))
              .toList()
          : null,
      subDetailSequenceElement: json['_subDetailSequence'] != null
          ? (json['_subDetailSequence'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      provider: json['provider'] != null
          ? (json['provider'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      productOrService: CodeableConcept.fromJson(
          json['productOrService'] as Map<String, dynamic>),
      modifier: json['modifier'] != null
          ? (json['modifier'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      programCode: json['programCode'] != null
          ? (json['programCode'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      servicedDate:
          json['servicedDate'] != null ? FhirDate(json['servicedDate']) : null,
      servicedDateElement: json['_servicedDate'] != null
          ? Element.fromJson(json['_servicedDate'] as Map<String, dynamic>)
          : null,
      servicedPeriod: json['servicedPeriod'] != null
          ? Period.fromJson(json['servicedPeriod'] as Map<String, dynamic>)
          : null,
      locationCodeableConcept: json['locationCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['locationCodeableConcept'] as Map<String, dynamic>)
          : null,
      locationAddress: json['locationAddress'] != null
          ? Address.fromJson(json['locationAddress'] as Map<String, dynamic>)
          : null,
      locationReference: json['locationReference'] != null
          ? Reference.fromJson(
              json['locationReference'] as Map<String, dynamic>)
          : null,
      quantity: json['quantity'] != null
          ? Quantity.fromJson(json['quantity'] as Map<String, dynamic>)
          : null,
      unitPrice: json['unitPrice'] != null
          ? Money.fromJson(json['unitPrice'] as Map<String, dynamic>)
          : null,
      factor: json['factor'] != null ? FhirDecimal(json['factor']) : null,
      factorElement: json['_factor'] != null
          ? Element.fromJson(json['_factor'] as Map<String, dynamic>)
          : null,
      net: json['net'] != null
          ? Money.fromJson(json['net'] as Map<String, dynamic>)
          : null,
      bodySite: json['bodySite'] != null
          ? CodeableConcept.fromJson(json['bodySite'] as Map<String, dynamic>)
          : null,
      subSite: json['subSite'] != null
          ? (json['subSite'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      noteNumber: json['noteNumber'] != null
          ? (json['noteNumber'] as List<dynamic>)
              .map<FhirPositiveInt>((dynamic v) => FhirPositiveInt(v))
              .toList()
          : null,
      noteNumberElement: json['_noteNumber'] != null
          ? (json['_noteNumber'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      adjudication: json['adjudication'] != null
          ? (json['adjudication'] as List<dynamic>)
              .map<ExplanationOfBenefitAdjudication>((dynamic v) =>
                  ExplanationOfBenefitAdjudication.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      detail: json['detail'] != null
          ? (json['detail'] as List<dynamic>)
              .map<ExplanationOfBenefitDetail>((dynamic v) =>
                  ExplanationOfBenefitDetail.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  ExplanationOfBenefitAddItem clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitAddItem copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<FhirPositiveInt>? itemSequence,
    List<Element>? itemSequenceElement,
    List<FhirPositiveInt>? detailSequence,
    List<Element>? detailSequenceElement,
    List<FhirPositiveInt>? subDetailSequence,
    List<Element>? subDetailSequenceElement,
    List<Reference>? provider,
    CodeableConcept? productOrService,
    List<CodeableConcept>? modifier,
    List<CodeableConcept>? programCode,
    FhirDate? servicedDate,
    Element? servicedDateElement,
    Period? servicedPeriod,
    CodeableConcept? locationCodeableConcept,
    Address? locationAddress,
    Reference? locationReference,
    Quantity? quantity,
    Money? unitPrice,
    FhirDecimal? factor,
    Element? factorElement,
    Money? net,
    CodeableConcept? bodySite,
    List<CodeableConcept>? subSite,
    List<FhirPositiveInt>? noteNumber,
    List<Element>? noteNumberElement,
    List<ExplanationOfBenefitAdjudication>? adjudication,
    List<ExplanationOfBenefitDetail>? detail,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ExplanationOfBenefitAddItem(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      itemSequence: itemSequence ?? this.itemSequence,
      itemSequenceElement: itemSequenceElement ?? this.itemSequenceElement,
      detailSequence: detailSequence ?? this.detailSequence,
      detailSequenceElement:
          detailSequenceElement ?? this.detailSequenceElement,
      subDetailSequence: subDetailSequence ?? this.subDetailSequence,
      subDetailSequenceElement:
          subDetailSequenceElement ?? this.subDetailSequenceElement,
      provider: provider ?? this.provider,
      productOrService: productOrService ?? this.productOrService,
      modifier: modifier ?? this.modifier,
      programCode: programCode ?? this.programCode,
      servicedDate: servicedDate ?? this.servicedDate,
      servicedDateElement: servicedDateElement ?? this.servicedDateElement,
      servicedPeriod: servicedPeriod ?? this.servicedPeriod,
      locationCodeableConcept:
          locationCodeableConcept ?? this.locationCodeableConcept,
      locationAddress: locationAddress ?? this.locationAddress,
      locationReference: locationReference ?? this.locationReference,
      quantity: quantity ?? this.quantity,
      unitPrice: unitPrice ?? this.unitPrice,
      factor: factor ?? this.factor,
      factorElement: factorElement ?? this.factorElement,
      net: net ?? this.net,
      bodySite: bodySite ?? this.bodySite,
      subSite: subSite ?? this.subSite,
      noteNumber: noteNumber ?? this.noteNumber,
      noteNumberElement: noteNumberElement ?? this.noteNumberElement,
      adjudication: adjudication ?? this.adjudication,
      detail: detail ?? this.detail,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ExplanationOfBenefitAddItem.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefitAddItem.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ExplanationOfBenefitAddItem.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ExplanationOfBenefitAddItem cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ExplanationOfBenefitAddItem.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExplanationOfBenefitAddItem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ExplanationOfBenefitDetail1] /// The second-tier service adjudications for payor added services.
@JsonSerializable()
class ExplanationOfBenefitDetail1 extends BackboneElement {
  ExplanationOfBenefitDetail1({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.productOrService,
    this.modifier,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.factorElement,
    this.net,
    this.noteNumber,
    this.noteNumberElement,
    this.adjudication,
    this.subDetail,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'ExplanationOfBenefitDetail1';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [productOrService] /// When the value is a group code then this item collects a set of related
  /// claim details, otherwise this contains the product, service, drug or other
  /// billing code for the item.
  @JsonKey(name: 'productOrService')
  final CodeableConcept productOrService;

  /// [modifier] /// Item typification or modifiers codes to convey additional context for the
  /// product or service.
  @JsonKey(name: 'modifier')
  final List<CodeableConcept>? modifier;

  /// [quantity] /// The number of repetitions of a service or product.
  @JsonKey(name: 'quantity')
  final Quantity? quantity;

  /// [unitPrice] /// If the item is not a group then this is the fee for the product or service,
  /// otherwise this is the total of the fees for the details of the group.
  @JsonKey(name: 'unitPrice')
  final Money? unitPrice;

  /// [factor] /// A real number that represents a multiplier used in determining the overall
  /// value of services delivered and/or goods received. The concept of a Factor
  /// allows for a discount or surcharge multiplier to be applied to a monetary
  /// amount.
  @JsonKey(name: 'factor')
  final FhirDecimal? factor;
  @JsonKey(name: '_factor')
  final Element? factorElement;

  /// [net] /// The quantity times the unit price for an additional service or product or
  /// charge.
  @JsonKey(name: 'net')
  final Money? net;

  /// [noteNumber] /// The numbers associated with notes below which apply to the adjudication of
  /// this item.
  @JsonKey(name: 'noteNumber')
  final List<FhirPositiveInt>? noteNumber;
  @JsonKey(name: '_noteNumber')
  final List<Element>? noteNumberElement;

  /// [adjudication] /// The adjudication results.
  @JsonKey(name: 'adjudication')
  final List<ExplanationOfBenefitAdjudication>? adjudication;

  /// [subDetail] /// The third-tier service adjudications for payor added services.
  @JsonKey(name: 'subDetail')
  final List<ExplanationOfBenefitSubDetail>? subDetail;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['productOrService'] = productOrService.toJson();
    if (modifier != null && modifier!.isNotEmpty) {
      json['modifier'] =
          modifier!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (quantity != null) {
      json['quantity'] = quantity!.toJson();
    }
    if (unitPrice != null) {
      json['unitPrice'] = unitPrice!.toJson();
    }
    if (factor?.value != null) {
      json['factor'] = factor!.value;
    }
    if (factorElement != null) {
      json['_factor'] = factorElement!.toJson();
    }
    if (net != null) {
      json['net'] = net!.toJson();
    }
    if (noteNumber != null && noteNumber!.isNotEmpty) {
      json['noteNumber'] =
          noteNumber!.map((FhirPositiveInt v) => v.value).toList();
    }
    if (noteNumberElement != null && noteNumberElement!.isNotEmpty) {
      json['_noteNumber'] =
          noteNumberElement!.map((Element v) => v.toJson()).toList();
    }
    if (adjudication != null && adjudication!.isNotEmpty) {
      json['adjudication'] = adjudication!
          .map<dynamic>((ExplanationOfBenefitAdjudication v) => v.toJson())
          .toList();
    }
    if (subDetail != null && subDetail!.isNotEmpty) {
      json['subDetail'] = subDetail!
          .map<dynamic>((ExplanationOfBenefitSubDetail v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory ExplanationOfBenefitDetail1.fromJson(Map<String, dynamic> json) {
    return ExplanationOfBenefitDetail1(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      productOrService: CodeableConcept.fromJson(
          json['productOrService'] as Map<String, dynamic>),
      modifier: json['modifier'] != null
          ? (json['modifier'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      quantity: json['quantity'] != null
          ? Quantity.fromJson(json['quantity'] as Map<String, dynamic>)
          : null,
      unitPrice: json['unitPrice'] != null
          ? Money.fromJson(json['unitPrice'] as Map<String, dynamic>)
          : null,
      factor: json['factor'] != null ? FhirDecimal(json['factor']) : null,
      factorElement: json['_factor'] != null
          ? Element.fromJson(json['_factor'] as Map<String, dynamic>)
          : null,
      net: json['net'] != null
          ? Money.fromJson(json['net'] as Map<String, dynamic>)
          : null,
      noteNumber: json['noteNumber'] != null
          ? (json['noteNumber'] as List<dynamic>)
              .map<FhirPositiveInt>((dynamic v) => FhirPositiveInt(v))
              .toList()
          : null,
      noteNumberElement: json['_noteNumber'] != null
          ? (json['_noteNumber'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      adjudication: json['adjudication'] != null
          ? (json['adjudication'] as List<dynamic>)
              .map<ExplanationOfBenefitAdjudication>((dynamic v) =>
                  ExplanationOfBenefitAdjudication.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      subDetail: json['subDetail'] != null
          ? (json['subDetail'] as List<dynamic>)
              .map<ExplanationOfBenefitSubDetail>((dynamic v) =>
                  ExplanationOfBenefitSubDetail.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  ExplanationOfBenefitDetail1 clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitDetail1 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? productOrService,
    List<CodeableConcept>? modifier,
    Quantity? quantity,
    Money? unitPrice,
    FhirDecimal? factor,
    Element? factorElement,
    Money? net,
    List<FhirPositiveInt>? noteNumber,
    List<Element>? noteNumberElement,
    List<ExplanationOfBenefitAdjudication>? adjudication,
    List<ExplanationOfBenefitSubDetail>? subDetail,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ExplanationOfBenefitDetail1(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      productOrService: productOrService ?? this.productOrService,
      modifier: modifier ?? this.modifier,
      quantity: quantity ?? this.quantity,
      unitPrice: unitPrice ?? this.unitPrice,
      factor: factor ?? this.factor,
      factorElement: factorElement ?? this.factorElement,
      net: net ?? this.net,
      noteNumber: noteNumber ?? this.noteNumber,
      noteNumberElement: noteNumberElement ?? this.noteNumberElement,
      adjudication: adjudication ?? this.adjudication,
      subDetail: subDetail ?? this.subDetail,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ExplanationOfBenefitDetail1.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefitDetail1.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ExplanationOfBenefitDetail1.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ExplanationOfBenefitDetail1 cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ExplanationOfBenefitDetail1.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExplanationOfBenefitDetail1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ExplanationOfBenefitSubDetail1] /// The third-tier service adjudications for payor added services.
@JsonSerializable()
class ExplanationOfBenefitSubDetail1 extends BackboneElement {
  ExplanationOfBenefitSubDetail1({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.productOrService,
    this.modifier,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.factorElement,
    this.net,
    this.noteNumber,
    this.noteNumberElement,
    this.adjudication,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'ExplanationOfBenefitSubDetail1';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [productOrService] /// When the value is a group code then this item collects a set of related
  /// claim details, otherwise this contains the product, service, drug or other
  /// billing code for the item.
  @JsonKey(name: 'productOrService')
  final CodeableConcept productOrService;

  /// [modifier] /// Item typification or modifiers codes to convey additional context for the
  /// product or service.
  @JsonKey(name: 'modifier')
  final List<CodeableConcept>? modifier;

  /// [quantity] /// The number of repetitions of a service or product.
  @JsonKey(name: 'quantity')
  final Quantity? quantity;

  /// [unitPrice] /// If the item is not a group then this is the fee for the product or service,
  /// otherwise this is the total of the fees for the details of the group.
  @JsonKey(name: 'unitPrice')
  final Money? unitPrice;

  /// [factor] /// A real number that represents a multiplier used in determining the overall
  /// value of services delivered and/or goods received. The concept of a Factor
  /// allows for a discount or surcharge multiplier to be applied to a monetary
  /// amount.
  @JsonKey(name: 'factor')
  final FhirDecimal? factor;
  @JsonKey(name: '_factor')
  final Element? factorElement;

  /// [net] /// The quantity times the unit price for an additional service or product or
  /// charge.
  @JsonKey(name: 'net')
  final Money? net;

  /// [noteNumber] /// The numbers associated with notes below which apply to the adjudication of
  /// this item.
  @JsonKey(name: 'noteNumber')
  final List<FhirPositiveInt>? noteNumber;
  @JsonKey(name: '_noteNumber')
  final List<Element>? noteNumberElement;

  /// [adjudication] /// The adjudication results.
  @JsonKey(name: 'adjudication')
  final List<ExplanationOfBenefitAdjudication>? adjudication;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['productOrService'] = productOrService.toJson();
    if (modifier != null && modifier!.isNotEmpty) {
      json['modifier'] =
          modifier!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (quantity != null) {
      json['quantity'] = quantity!.toJson();
    }
    if (unitPrice != null) {
      json['unitPrice'] = unitPrice!.toJson();
    }
    if (factor?.value != null) {
      json['factor'] = factor!.value;
    }
    if (factorElement != null) {
      json['_factor'] = factorElement!.toJson();
    }
    if (net != null) {
      json['net'] = net!.toJson();
    }
    if (noteNumber != null && noteNumber!.isNotEmpty) {
      json['noteNumber'] =
          noteNumber!.map((FhirPositiveInt v) => v.value).toList();
    }
    if (noteNumberElement != null && noteNumberElement!.isNotEmpty) {
      json['_noteNumber'] =
          noteNumberElement!.map((Element v) => v.toJson()).toList();
    }
    if (adjudication != null && adjudication!.isNotEmpty) {
      json['adjudication'] = adjudication!
          .map<dynamic>((ExplanationOfBenefitAdjudication v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory ExplanationOfBenefitSubDetail1.fromJson(Map<String, dynamic> json) {
    return ExplanationOfBenefitSubDetail1(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      productOrService: CodeableConcept.fromJson(
          json['productOrService'] as Map<String, dynamic>),
      modifier: json['modifier'] != null
          ? (json['modifier'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      quantity: json['quantity'] != null
          ? Quantity.fromJson(json['quantity'] as Map<String, dynamic>)
          : null,
      unitPrice: json['unitPrice'] != null
          ? Money.fromJson(json['unitPrice'] as Map<String, dynamic>)
          : null,
      factor: json['factor'] != null ? FhirDecimal(json['factor']) : null,
      factorElement: json['_factor'] != null
          ? Element.fromJson(json['_factor'] as Map<String, dynamic>)
          : null,
      net: json['net'] != null
          ? Money.fromJson(json['net'] as Map<String, dynamic>)
          : null,
      noteNumber: json['noteNumber'] != null
          ? (json['noteNumber'] as List<dynamic>)
              .map<FhirPositiveInt>((dynamic v) => FhirPositiveInt(v))
              .toList()
          : null,
      noteNumberElement: json['_noteNumber'] != null
          ? (json['_noteNumber'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      adjudication: json['adjudication'] != null
          ? (json['adjudication'] as List<dynamic>)
              .map<ExplanationOfBenefitAdjudication>((dynamic v) =>
                  ExplanationOfBenefitAdjudication.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  ExplanationOfBenefitSubDetail1 clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitSubDetail1 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? productOrService,
    List<CodeableConcept>? modifier,
    Quantity? quantity,
    Money? unitPrice,
    FhirDecimal? factor,
    Element? factorElement,
    Money? net,
    List<FhirPositiveInt>? noteNumber,
    List<Element>? noteNumberElement,
    List<ExplanationOfBenefitAdjudication>? adjudication,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ExplanationOfBenefitSubDetail1(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      productOrService: productOrService ?? this.productOrService,
      modifier: modifier ?? this.modifier,
      quantity: quantity ?? this.quantity,
      unitPrice: unitPrice ?? this.unitPrice,
      factor: factor ?? this.factor,
      factorElement: factorElement ?? this.factorElement,
      net: net ?? this.net,
      noteNumber: noteNumber ?? this.noteNumber,
      noteNumberElement: noteNumberElement ?? this.noteNumberElement,
      adjudication: adjudication ?? this.adjudication,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ExplanationOfBenefitSubDetail1.fromYaml(dynamic yaml) => yaml
          is String
      ? ExplanationOfBenefitSubDetail1.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ExplanationOfBenefitSubDetail1.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ExplanationOfBenefitSubDetail1 cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ExplanationOfBenefitSubDetail1.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExplanationOfBenefitSubDetail1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ExplanationOfBenefitTotal] /// Categorized monetary totals for the adjudication.
@JsonSerializable()
class ExplanationOfBenefitTotal extends BackboneElement {
  ExplanationOfBenefitTotal({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.category,
    required this.amount,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'ExplanationOfBenefitTotal';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [category] /// A code to indicate the information type of this adjudication record.
  /// Information types may include: the value submitted, maximum values or
  /// percentages allowed or payable under the plan, amounts that the patient is
  /// responsible for in aggregate or pertaining to this item, amounts paid by
  /// other coverages, and the benefit payable for this item.
  @JsonKey(name: 'category')
  final CodeableConcept category;

  /// [amount] /// Monetary total amount associated with the category.
  @JsonKey(name: 'amount')
  final Money amount;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['category'] = category.toJson();
    json['amount'] = amount.toJson();
    return json;
  }

  factory ExplanationOfBenefitTotal.fromJson(Map<String, dynamic> json) {
    return ExplanationOfBenefitTotal(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      category:
          CodeableConcept.fromJson(json['category'] as Map<String, dynamic>),
      amount: Money.fromJson(json['amount'] as Map<String, dynamic>),
    );
  }
  @override
  ExplanationOfBenefitTotal clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitTotal copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? category,
    Money? amount,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ExplanationOfBenefitTotal(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      category: category ?? this.category,
      amount: amount ?? this.amount,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ExplanationOfBenefitTotal.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefitTotal.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ExplanationOfBenefitTotal.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ExplanationOfBenefitTotal cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ExplanationOfBenefitTotal.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExplanationOfBenefitTotal.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ExplanationOfBenefitPayment] /// Payment details for the adjudication of the claim.
@JsonSerializable()
class ExplanationOfBenefitPayment extends BackboneElement {
  ExplanationOfBenefitPayment({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.adjustment,
    this.adjustmentReason,
    this.date,
    this.dateElement,
    this.amount,
    this.identifier,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'ExplanationOfBenefitPayment';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Whether this represents partial or complete payment of the benefits
  /// payable.
  @JsonKey(name: 'type')
  final CodeableConcept? type;

  /// [adjustment] /// Total amount of all adjustments to this payment included in this
  /// transaction which are not related to this claim's adjudication.
  @JsonKey(name: 'adjustment')
  final Money? adjustment;

  /// [adjustmentReason] /// Reason for the payment adjustment.
  @JsonKey(name: 'adjustmentReason')
  final CodeableConcept? adjustmentReason;

  /// [date] /// Estimated date the payment will be issued or the actual issue date of
  /// payment.
  @JsonKey(name: 'date')
  final FhirDate? date;
  @JsonKey(name: '_date')
  final Element? dateElement;

  /// [amount] /// Benefits payable less any payment adjustment.
  @JsonKey(name: 'amount')
  final Money? amount;

  /// [identifier] /// Issuer's unique identifier for the payment instrument.
  @JsonKey(name: 'identifier')
  final Identifier? identifier;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (adjustment != null) {
      json['adjustment'] = adjustment!.toJson();
    }
    if (adjustmentReason != null) {
      json['adjustmentReason'] = adjustmentReason!.toJson();
    }
    if (date?.value != null) {
      json['date'] = date!.value;
    }
    if (dateElement != null) {
      json['_date'] = dateElement!.toJson();
    }
    if (amount != null) {
      json['amount'] = amount!.toJson();
    }
    if (identifier != null) {
      json['identifier'] = identifier!.toJson();
    }
    return json;
  }

  factory ExplanationOfBenefitPayment.fromJson(Map<String, dynamic> json) {
    return ExplanationOfBenefitPayment(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
      adjustment: json['adjustment'] != null
          ? Money.fromJson(json['adjustment'] as Map<String, dynamic>)
          : null,
      adjustmentReason: json['adjustmentReason'] != null
          ? CodeableConcept.fromJson(
              json['adjustmentReason'] as Map<String, dynamic>)
          : null,
      date: json['date'] != null ? FhirDate(json['date']) : null,
      dateElement: json['_date'] != null
          ? Element.fromJson(json['_date'] as Map<String, dynamic>)
          : null,
      amount: json['amount'] != null
          ? Money.fromJson(json['amount'] as Map<String, dynamic>)
          : null,
      identifier: json['identifier'] != null
          ? Identifier.fromJson(json['identifier'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  ExplanationOfBenefitPayment clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitPayment copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    Money? adjustment,
    CodeableConcept? adjustmentReason,
    FhirDate? date,
    Element? dateElement,
    Money? amount,
    Identifier? identifier,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ExplanationOfBenefitPayment(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      adjustment: adjustment ?? this.adjustment,
      adjustmentReason: adjustmentReason ?? this.adjustmentReason,
      date: date ?? this.date,
      dateElement: dateElement ?? this.dateElement,
      amount: amount ?? this.amount,
      identifier: identifier ?? this.identifier,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ExplanationOfBenefitPayment.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefitPayment.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ExplanationOfBenefitPayment.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ExplanationOfBenefitPayment cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ExplanationOfBenefitPayment.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExplanationOfBenefitPayment.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ExplanationOfBenefitProcessNote] /// A note that describes or explains adjudication results in a human readable
/// form.
@JsonSerializable()
class ExplanationOfBenefitProcessNote extends BackboneElement {
  ExplanationOfBenefitProcessNote({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.number,
    this.numberElement,
    this.type,
    this.typeElement,
    this.text,
    this.textElement,
    this.language,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'ExplanationOfBenefitProcessNote';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [number] /// A number to uniquely identify a note entry.
  @JsonKey(name: 'number')
  final FhirPositiveInt? number;
  @JsonKey(name: '_number')
  final Element? numberElement;

  /// [type] /// The business purpose of the note text.
  @JsonKey(name: 'type')
  final NoteType? type;
  @JsonKey(name: '_type')
  final Element? typeElement;

  /// [text] /// The explanation or description associated with the processing.
  @JsonKey(name: 'text')
  final FhirString? text;
  @JsonKey(name: '_text')
  final Element? textElement;

  /// [language] /// A code to define the language used in the text of the note.
  @JsonKey(name: 'language')
  final CodeableConcept? language;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (number?.value != null) {
      json['number'] = number!.value;
    }
    if (numberElement != null) {
      json['_number'] = numberElement!.toJson();
    }
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (text?.value != null) {
      json['text'] = text!.value;
    }
    if (textElement != null) {
      json['_text'] = textElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    return json;
  }

  factory ExplanationOfBenefitProcessNote.fromJson(Map<String, dynamic> json) {
    return ExplanationOfBenefitProcessNote(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      number: json['number'] != null ? FhirPositiveInt(json['number']) : null,
      numberElement: json['_number'] != null
          ? Element.fromJson(json['_number'] as Map<String, dynamic>)
          : null,
      type: json['type'] != null
          ? NoteType.fromJson(json['type'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null ? FhirString(json['text']) : null,
      textElement: json['_text'] != null
          ? Element.fromJson(json['_text'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CodeableConcept.fromJson(json['language'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  ExplanationOfBenefitProcessNote clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitProcessNote copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? number,
    Element? numberElement,
    NoteType? type,
    Element? typeElement,
    FhirString? text,
    Element? textElement,
    CodeableConcept? language,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ExplanationOfBenefitProcessNote(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      number: number ?? this.number,
      numberElement: numberElement ?? this.numberElement,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      text: text ?? this.text,
      textElement: textElement ?? this.textElement,
      language: language ?? this.language,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ExplanationOfBenefitProcessNote.fromYaml(dynamic yaml) => yaml
          is String
      ? ExplanationOfBenefitProcessNote.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ExplanationOfBenefitProcessNote.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ExplanationOfBenefitProcessNote cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ExplanationOfBenefitProcessNote.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExplanationOfBenefitProcessNote.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ExplanationOfBenefitBenefitBalance] /// Balance by Benefit Category.
@JsonSerializable()
class ExplanationOfBenefitBenefitBalance extends BackboneElement {
  ExplanationOfBenefitBenefitBalance({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.category,
    this.excluded,
    this.excludedElement,
    this.name,
    this.nameElement,
    this.description,
    this.descriptionElement,
    this.network,
    this.unit,
    this.term,
    this.financial,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'ExplanationOfBenefitBenefitBalance';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [category] /// Code to identify the general type of benefits under which products and
  /// services are provided.
  @JsonKey(name: 'category')
  final CodeableConcept category;

  /// [excluded] /// True if the indicated class of service is excluded from the plan, missing
  /// or False indicates the product or service is included in the coverage.
  @JsonKey(name: 'excluded')
  final FhirBoolean? excluded;
  @JsonKey(name: '_excluded')
  final Element? excludedElement;

  /// [name] /// A short name or tag for the benefit.
  @JsonKey(name: 'name')
  final FhirString? name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [description] /// A richer description of the benefit or services covered.
  @JsonKey(name: 'description')
  final FhirString? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [network] /// Is a flag to indicate whether the benefits refer to in-network providers or
  /// out-of-network providers.
  @JsonKey(name: 'network')
  final CodeableConcept? network;

  /// [unit] /// Indicates if the benefits apply to an individual or to the family.
  @JsonKey(name: 'unit')
  final CodeableConcept? unit;

  /// [term] /// The term or period of the values such as 'maximum lifetime benefit' or
  /// 'maximum annual visits'.
  @JsonKey(name: 'term')
  final CodeableConcept? term;

  /// [financial] /// Benefits Used to date.
  @JsonKey(name: 'financial')
  final List<ExplanationOfBenefitFinancial>? financial;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['category'] = category.toJson();
    if (excluded?.value != null) {
      json['excluded'] = excluded!.value;
    }
    if (excludedElement != null) {
      json['_excluded'] = excludedElement!.toJson();
    }
    if (name?.value != null) {
      json['name'] = name!.value;
    }
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    if (description?.value != null) {
      json['description'] = description!.value;
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (network != null) {
      json['network'] = network!.toJson();
    }
    if (unit != null) {
      json['unit'] = unit!.toJson();
    }
    if (term != null) {
      json['term'] = term!.toJson();
    }
    if (financial != null && financial!.isNotEmpty) {
      json['financial'] = financial!
          .map<dynamic>((ExplanationOfBenefitFinancial v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory ExplanationOfBenefitBenefitBalance.fromJson(
      Map<String, dynamic> json) {
    return ExplanationOfBenefitBenefitBalance(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      category:
          CodeableConcept.fromJson(json['category'] as Map<String, dynamic>),
      excluded: json['excluded'] != null ? FhirBoolean(json['excluded']) : null,
      excludedElement: json['_excluded'] != null
          ? Element.fromJson(json['_excluded'] as Map<String, dynamic>)
          : null,
      name: json['name'] != null ? FhirString(json['name']) : null,
      nameElement: json['_name'] != null
          ? Element.fromJson(json['_name'] as Map<String, dynamic>)
          : null,
      description:
          json['description'] != null ? FhirString(json['description']) : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(json['_description'] as Map<String, dynamic>)
          : null,
      network: json['network'] != null
          ? CodeableConcept.fromJson(json['network'] as Map<String, dynamic>)
          : null,
      unit: json['unit'] != null
          ? CodeableConcept.fromJson(json['unit'] as Map<String, dynamic>)
          : null,
      term: json['term'] != null
          ? CodeableConcept.fromJson(json['term'] as Map<String, dynamic>)
          : null,
      financial: json['financial'] != null
          ? (json['financial'] as List<dynamic>)
              .map<ExplanationOfBenefitFinancial>((dynamic v) =>
                  ExplanationOfBenefitFinancial.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  ExplanationOfBenefitBenefitBalance clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitBenefitBalance copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? category,
    FhirBoolean? excluded,
    Element? excludedElement,
    FhirString? name,
    Element? nameElement,
    FhirString? description,
    Element? descriptionElement,
    CodeableConcept? network,
    CodeableConcept? unit,
    CodeableConcept? term,
    List<ExplanationOfBenefitFinancial>? financial,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ExplanationOfBenefitBenefitBalance(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      category: category ?? this.category,
      excluded: excluded ?? this.excluded,
      excludedElement: excludedElement ?? this.excludedElement,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      network: network ?? this.network,
      unit: unit ?? this.unit,
      term: term ?? this.term,
      financial: financial ?? this.financial,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ExplanationOfBenefitBenefitBalance.fromYaml(dynamic yaml) => yaml
          is String
      ? ExplanationOfBenefitBenefitBalance.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ExplanationOfBenefitBenefitBalance.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ExplanationOfBenefitBenefitBalance cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ExplanationOfBenefitBenefitBalance.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExplanationOfBenefitBenefitBalance.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ExplanationOfBenefitFinancial] /// Benefits Used to date.
@JsonSerializable()
class ExplanationOfBenefitFinancial extends BackboneElement {
  ExplanationOfBenefitFinancial({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.allowedUnsignedInt,
    this.allowedUnsignedIntElement,
    this.allowedString,
    this.allowedStringElement,
    this.allowedMoney,
    this.usedUnsignedInt,
    this.usedUnsignedIntElement,
    this.usedMoney,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'ExplanationOfBenefitFinancial';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Classification of benefit being provided.
  @JsonKey(name: 'type')
  final CodeableConcept type;

  /// [allowedUnsignedInt] /// The quantity of the benefit which is permitted under the coverage.
  @JsonKey(name: 'allowedUnsignedInt')
  final FhirUnsignedInt? allowedUnsignedInt;
  @JsonKey(name: '_allowedUnsignedInt')
  final Element? allowedUnsignedIntElement;

  /// [allowedString] /// The quantity of the benefit which is permitted under the coverage.
  @JsonKey(name: 'allowedString')
  final FhirString? allowedString;
  @JsonKey(name: '_allowedString')
  final Element? allowedStringElement;

  /// [allowedMoney] /// The quantity of the benefit which is permitted under the coverage.
  @JsonKey(name: 'allowedMoney')
  final Money? allowedMoney;

  /// [usedUnsignedInt] /// The quantity of the benefit which have been consumed to date.
  @JsonKey(name: 'usedUnsignedInt')
  final FhirUnsignedInt? usedUnsignedInt;
  @JsonKey(name: '_usedUnsignedInt')
  final Element? usedUnsignedIntElement;

  /// [usedMoney] /// The quantity of the benefit which have been consumed to date.
  @JsonKey(name: 'usedMoney')
  final Money? usedMoney;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['type'] = type.toJson();
    if (allowedUnsignedInt?.value != null) {
      json['allowedUnsignedInt'] = allowedUnsignedInt!.value;
    }
    if (allowedUnsignedIntElement != null) {
      json['_allowedUnsignedInt'] = allowedUnsignedIntElement!.toJson();
    }
    if (allowedString?.value != null) {
      json['allowedString'] = allowedString!.value;
    }
    if (allowedStringElement != null) {
      json['_allowedString'] = allowedStringElement!.toJson();
    }
    if (allowedMoney != null) {
      json['allowedMoney'] = allowedMoney!.toJson();
    }
    if (usedUnsignedInt?.value != null) {
      json['usedUnsignedInt'] = usedUnsignedInt!.value;
    }
    if (usedUnsignedIntElement != null) {
      json['_usedUnsignedInt'] = usedUnsignedIntElement!.toJson();
    }
    if (usedMoney != null) {
      json['usedMoney'] = usedMoney!.toJson();
    }
    return json;
  }

  factory ExplanationOfBenefitFinancial.fromJson(Map<String, dynamic> json) {
    return ExplanationOfBenefitFinancial(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      type: CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      allowedUnsignedInt: json['allowedUnsignedInt'] != null
          ? FhirUnsignedInt(json['allowedUnsignedInt'])
          : null,
      allowedUnsignedIntElement: json['_allowedUnsignedInt'] != null
          ? Element.fromJson(
              json['_allowedUnsignedInt'] as Map<String, dynamic>)
          : null,
      allowedString: json['allowedString'] != null
          ? FhirString(json['allowedString'])
          : null,
      allowedStringElement: json['_allowedString'] != null
          ? Element.fromJson(json['_allowedString'] as Map<String, dynamic>)
          : null,
      allowedMoney: json['allowedMoney'] != null
          ? Money.fromJson(json['allowedMoney'] as Map<String, dynamic>)
          : null,
      usedUnsignedInt: json['usedUnsignedInt'] != null
          ? FhirUnsignedInt(json['usedUnsignedInt'])
          : null,
      usedUnsignedIntElement: json['_usedUnsignedInt'] != null
          ? Element.fromJson(json['_usedUnsignedInt'] as Map<String, dynamic>)
          : null,
      usedMoney: json['usedMoney'] != null
          ? Money.fromJson(json['usedMoney'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  ExplanationOfBenefitFinancial clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitFinancial copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirUnsignedInt? allowedUnsignedInt,
    Element? allowedUnsignedIntElement,
    FhirString? allowedString,
    Element? allowedStringElement,
    Money? allowedMoney,
    FhirUnsignedInt? usedUnsignedInt,
    Element? usedUnsignedIntElement,
    Money? usedMoney,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ExplanationOfBenefitFinancial(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      allowedUnsignedInt: allowedUnsignedInt ?? this.allowedUnsignedInt,
      allowedUnsignedIntElement:
          allowedUnsignedIntElement ?? this.allowedUnsignedIntElement,
      allowedString: allowedString ?? this.allowedString,
      allowedStringElement: allowedStringElement ?? this.allowedStringElement,
      allowedMoney: allowedMoney ?? this.allowedMoney,
      usedUnsignedInt: usedUnsignedInt ?? this.usedUnsignedInt,
      usedUnsignedIntElement:
          usedUnsignedIntElement ?? this.usedUnsignedIntElement,
      usedMoney: usedMoney ?? this.usedMoney,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ExplanationOfBenefitFinancial.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefitFinancial.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ExplanationOfBenefitFinancial.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ExplanationOfBenefitFinancial cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ExplanationOfBenefitFinancial.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExplanationOfBenefitFinancial.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
