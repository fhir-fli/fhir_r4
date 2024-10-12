import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ExplanationOfBenefit]
/// This resource provides: the claim details; adjudication details from
/// the processing of a Claim; and optionally account balance information,
/// for informing the subscriber of the benefits provided.
class ExplanationOfBenefit extends DomainResource {
  /// Primary constructor for [ExplanationOfBenefit]

  ExplanationOfBenefit({
    super.id,
    super.meta,
    super.implicitRules,

    /// Extensions for [implicitRules]
    super.implicitRulesElement,
    super.language,

    /// Extensions for [language]
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.status,

    /// Extensions for [status]
    this.statusElement,
    required this.type,
    this.subType,
    required this.use,

    /// Extensions for [use]
    this.useElement,
    required this.patient,
    this.billablePeriod,
    required this.created,

    /// Extensions for [created]
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

    /// Extensions for [outcome]
    this.outcomeElement,
    this.disposition,

    /// Extensions for [disposition]
    this.dispositionElement,
    this.preAuthRef,

    /// Extensions for [preAuthRef]
    this.preAuthRefElement,
    this.preAuthRefPeriod,
    this.careTeam,
    this.supportingInfo,
    this.diagnosis,
    this.procedure,
    this.precedence,

    /// Extensions for [precedence]
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
  }) : super(
          resourceType: R4ResourceType.ExplanationOfBenefit,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefit.fromJson(Map<String, dynamic> json) {
    return ExplanationOfBenefit(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson(json['implicitRules'])
          : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(
              json['_implicitRules'] as Map<String, dynamic>,
            )
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'])
          : null,
      languageElement: json['_language'] != null
          ? Element.fromJson(
              json['_language'] as Map<String, dynamic>,
            )
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (dynamic v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (dynamic v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      status: ExplanationOfBenefitStatus.fromJson(json['status']),
      statusElement: json['_status'] != null
          ? Element.fromJson(
              json['_status'] as Map<String, dynamic>,
            )
          : null,
      type: CodeableConcept.fromJson(
        json['type'] as Map<String, dynamic>,
      ),
      subType: json['subType'] != null
          ? CodeableConcept.fromJson(
              json['subType'] as Map<String, dynamic>,
            )
          : null,
      use: Use.fromJson(json['use']),
      useElement: json['_use'] != null
          ? Element.fromJson(
              json['_use'] as Map<String, dynamic>,
            )
          : null,
      patient: Reference.fromJson(
        json['patient'] as Map<String, dynamic>,
      ),
      billablePeriod: json['billablePeriod'] != null
          ? Period.fromJson(
              json['billablePeriod'] as Map<String, dynamic>,
            )
          : null,
      created: FhirDateTime.fromJson(json['created']),
      createdElement: json['_created'] != null
          ? Element.fromJson(
              json['_created'] as Map<String, dynamic>,
            )
          : null,
      enterer: json['enterer'] != null
          ? Reference.fromJson(
              json['enterer'] as Map<String, dynamic>,
            )
          : null,
      insurer: Reference.fromJson(
        json['insurer'] as Map<String, dynamic>,
      ),
      provider: Reference.fromJson(
        json['provider'] as Map<String, dynamic>,
      ),
      priority: json['priority'] != null
          ? CodeableConcept.fromJson(
              json['priority'] as Map<String, dynamic>,
            )
          : null,
      fundsReserveRequested: json['fundsReserveRequested'] != null
          ? CodeableConcept.fromJson(
              json['fundsReserveRequested'] as Map<String, dynamic>,
            )
          : null,
      fundsReserve: json['fundsReserve'] != null
          ? CodeableConcept.fromJson(
              json['fundsReserve'] as Map<String, dynamic>,
            )
          : null,
      related: json['related'] != null
          ? (json['related'] as List<dynamic>)
              .map<ExplanationOfBenefitRelated>(
                (dynamic v) => ExplanationOfBenefitRelated.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      prescription: json['prescription'] != null
          ? Reference.fromJson(
              json['prescription'] as Map<String, dynamic>,
            )
          : null,
      originalPrescription: json['originalPrescription'] != null
          ? Reference.fromJson(
              json['originalPrescription'] as Map<String, dynamic>,
            )
          : null,
      payee: json['payee'] != null
          ? ExplanationOfBenefitPayee.fromJson(
              json['payee'] as Map<String, dynamic>,
            )
          : null,
      referral: json['referral'] != null
          ? Reference.fromJson(
              json['referral'] as Map<String, dynamic>,
            )
          : null,
      facility: json['facility'] != null
          ? Reference.fromJson(
              json['facility'] as Map<String, dynamic>,
            )
          : null,
      claim: json['claim'] != null
          ? Reference.fromJson(
              json['claim'] as Map<String, dynamic>,
            )
          : null,
      claimResponse: json['claimResponse'] != null
          ? Reference.fromJson(
              json['claimResponse'] as Map<String, dynamic>,
            )
          : null,
      outcome: RemittanceOutcome.fromJson(json['outcome']),
      outcomeElement: json['_outcome'] != null
          ? Element.fromJson(
              json['_outcome'] as Map<String, dynamic>,
            )
          : null,
      disposition: json['disposition'] != null
          ? FhirString.fromJson(json['disposition'])
          : null,
      dispositionElement: json['_disposition'] != null
          ? Element.fromJson(
              json['_disposition'] as Map<String, dynamic>,
            )
          : null,
      preAuthRef: json['preAuthRef'] != null
          ? (json['preAuthRef'] as List<dynamic>)
              .map<FhirString>(
                (dynamic v) => FhirString.fromJson(v as dynamic),
              )
              .toList()
          : null,
      preAuthRefElement: json['_preAuthRef'] != null
          ? (json['_preAuthRef'] as List<dynamic>)
              .map<Element>(
                (dynamic v) => Element.fromJson(v as Map<String, dynamic>),
              )
              .toList()
          : null,
      preAuthRefPeriod: json['preAuthRefPeriod'] != null
          ? (json['preAuthRefPeriod'] as List<dynamic>)
              .map<Period>(
                (dynamic v) => Period.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      careTeam: json['careTeam'] != null
          ? (json['careTeam'] as List<dynamic>)
              .map<ExplanationOfBenefitCareTeam>(
                (dynamic v) => ExplanationOfBenefitCareTeam.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      supportingInfo: json['supportingInfo'] != null
          ? (json['supportingInfo'] as List<dynamic>)
              .map<ExplanationOfBenefitSupportingInfo>(
                (dynamic v) => ExplanationOfBenefitSupportingInfo.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      diagnosis: json['diagnosis'] != null
          ? (json['diagnosis'] as List<dynamic>)
              .map<ExplanationOfBenefitDiagnosis>(
                (dynamic v) => ExplanationOfBenefitDiagnosis.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      procedure: json['procedure'] != null
          ? (json['procedure'] as List<dynamic>)
              .map<ExplanationOfBenefitProcedure>(
                (dynamic v) => ExplanationOfBenefitProcedure.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      precedence: json['precedence'] != null
          ? FhirPositiveInt.fromJson(json['precedence'])
          : null,
      precedenceElement: json['_precedence'] != null
          ? Element.fromJson(
              json['_precedence'] as Map<String, dynamic>,
            )
          : null,
      insurance: (json['insurance'] as List<dynamic>)
          .map<ExplanationOfBenefitInsurance>((dynamic v) =>
              ExplanationOfBenefitInsurance.fromJson(v as Map<String, dynamic>))
          .toList(),
      accident: json['accident'] != null
          ? ExplanationOfBenefitAccident.fromJson(
              json['accident'] as Map<String, dynamic>,
            )
          : null,
      item: json['item'] != null
          ? (json['item'] as List<dynamic>)
              .map<ExplanationOfBenefitItem>(
                (dynamic v) => ExplanationOfBenefitItem.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      addItem: json['addItem'] != null
          ? (json['addItem'] as List<dynamic>)
              .map<ExplanationOfBenefitAddItem>(
                (dynamic v) => ExplanationOfBenefitAddItem.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      adjudication: json['adjudication'] != null
          ? (json['adjudication'] as List<dynamic>)
              .map<ExplanationOfBenefitAdjudication>(
                (dynamic v) => ExplanationOfBenefitAdjudication.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      total: json['total'] != null
          ? (json['total'] as List<dynamic>)
              .map<ExplanationOfBenefitTotal>(
                (dynamic v) => ExplanationOfBenefitTotal.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      payment: json['payment'] != null
          ? ExplanationOfBenefitPayment.fromJson(
              json['payment'] as Map<String, dynamic>,
            )
          : null,
      formCode: json['formCode'] != null
          ? CodeableConcept.fromJson(
              json['formCode'] as Map<String, dynamic>,
            )
          : null,
      form: json['form'] != null
          ? Attachment.fromJson(
              json['form'] as Map<String, dynamic>,
            )
          : null,
      processNote: json['processNote'] != null
          ? (json['processNote'] as List<dynamic>)
              .map<ExplanationOfBenefitProcessNote>(
                (dynamic v) => ExplanationOfBenefitProcessNote.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      benefitPeriod: json['benefitPeriod'] != null
          ? Period.fromJson(
              json['benefitPeriod'] as Map<String, dynamic>,
            )
          : null,
      benefitBalance: json['benefitBalance'] != null
          ? (json['benefitBalance'] as List<dynamic>)
              .map<ExplanationOfBenefitBenefitBalance>(
                (dynamic v) => ExplanationOfBenefitBenefitBalance.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ExplanationOfBenefit] from a [String] or [YamlMap] object
  factory ExplanationOfBenefit.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefit.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ExplanationOfBenefit.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ExplanationOfBenefit cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ExplanationOfBenefit] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefit.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExplanationOfBenefit.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefit';

  /// [identifier]
  /// A unique identifier assigned to this explanation of benefit.
  final List<Identifier>? identifier;

  /// [status]
  /// The status of the resource instance.
  final ExplanationOfBenefitStatus status;

  /// Extensions for [status]
  final Element? statusElement;

  /// [type]
  /// The category of claim, e.g. oral, pharmacy, vision, institutional,
  /// professional.
  final CodeableConcept type;

  /// [subType]
  /// A finer grained suite of claim type codes which may convey additional
  /// information such as Inpatient vs Outpatient and/or a specialty service.
  final CodeableConcept? subType;

  /// [use]
  /// A code to indicate whether the nature of the request is: to request
  /// adjudication of products and services previously rendered; or
  /// requesting authorization and adjudication for provision in the future;
  /// or requesting the non-binding adjudication of the listed products and
  /// services which could be provided in the future.
  final Use use;

  /// Extensions for [use]
  final Element? useElement;

  /// [patient]
  /// The party to whom the professional services and/or products have been
  /// supplied or are being considered and for whom actual for forecast
  /// reimbursement is sought.
  final Reference patient;

  /// [billablePeriod]
  /// The period for which charges are being submitted.
  final Period? billablePeriod;

  /// [created]
  /// The date this resource was created.
  final FhirDateTime created;

  /// Extensions for [created]
  final Element? createdElement;

  /// [enterer]
  /// Individual who created the claim, predetermination or preauthorization.
  final Reference? enterer;

  /// [insurer]
  /// The party responsible for authorization, adjudication and
  /// reimbursement.
  final Reference insurer;

  /// [provider]
  /// The provider which is responsible for the claim, predetermination or
  /// preauthorization.
  final Reference provider;

  /// [priority]
  /// The provider-required urgency of processing the request. Typical values
  /// include: stat, routine deferred.
  final CodeableConcept? priority;

  /// [fundsReserveRequested]
  /// A code to indicate whether and for whom funds are to be reserved for
  /// future claims.
  final CodeableConcept? fundsReserveRequested;

  /// [fundsReserve]
  /// A code, used only on a response to a preauthorization, to indicate
  /// whether the benefits payable have been reserved and for whom.
  final CodeableConcept? fundsReserve;

  /// [related]
  /// Other claims which are related to this claim such as prior submissions
  /// or claims for related services or for the same event.
  final List<ExplanationOfBenefitRelated>? related;

  /// [prescription]
  /// Prescription to support the dispensing of pharmacy, device or vision
  /// products.
  final Reference? prescription;

  /// [originalPrescription]
  /// Original prescription which has been superseded by this prescription to
  /// support the dispensing of pharmacy services, medications or products.
  final Reference? originalPrescription;

  /// [payee]
  /// The party to be reimbursed for cost of the products and services
  /// according to the terms of the policy.
  final ExplanationOfBenefitPayee? payee;

  /// [referral]
  /// A reference to a referral resource.
  final Reference? referral;

  /// [facility]
  /// Facility where the services were provided.
  final Reference? facility;

  /// [claim]
  /// The business identifier for the instance of the adjudication request:
  /// claim predetermination or preauthorization.
  final Reference? claim;

  /// [claimResponse]
  /// The business identifier for the instance of the adjudication response:
  /// claim, predetermination or preauthorization response.
  final Reference? claimResponse;

  /// [outcome]
  /// The outcome of the claim, predetermination, or preauthorization
  /// processing.
  final RemittanceOutcome outcome;

  /// Extensions for [outcome]
  final Element? outcomeElement;

  /// [disposition]
  /// A human readable description of the status of the adjudication.
  final FhirString? disposition;

  /// Extensions for [disposition]
  final Element? dispositionElement;

  /// [preAuthRef]
  /// Reference from the Insurer which is used in later communications which
  /// refers to this adjudication.
  final List<FhirString>? preAuthRef;

  /// Extensions for [preAuthRef]
  final List<Element>? preAuthRefElement;

  /// [preAuthRefPeriod]
  /// The timeframe during which the supplied preauthorization reference may
  /// be quoted on claims to obtain the adjudication as provided.
  final List<Period>? preAuthRefPeriod;

  /// [careTeam]
  /// The members of the team who provided the products and services.
  final List<ExplanationOfBenefitCareTeam>? careTeam;

  /// [supportingInfo]
  /// Additional information codes regarding exceptions, special
  /// considerations, the condition, situation, prior or concurrent issues.
  final List<ExplanationOfBenefitSupportingInfo>? supportingInfo;

  /// [diagnosis]
  /// Information about diagnoses relevant to the claim items.
  final List<ExplanationOfBenefitDiagnosis>? diagnosis;

  /// [procedure]
  /// Procedures performed on the patient relevant to the billing items with
  /// the claim.
  final List<ExplanationOfBenefitProcedure>? procedure;

  /// [precedence]
  /// This indicates the relative order of a series of EOBs related to
  /// different coverages for the same suite of services.
  final FhirPositiveInt? precedence;

  /// Extensions for [precedence]
  final Element? precedenceElement;

  /// [insurance]
  /// Financial instruments for reimbursement for the health care products
  /// and services specified on the claim.
  final List<ExplanationOfBenefitInsurance> insurance;

  /// [accident]
  /// Details of a accident which resulted in injuries which required the
  /// products and services listed in the claim.
  final ExplanationOfBenefitAccident? accident;

  /// [item]
  /// A claim line. Either a simple (a product or service) or a 'group' of
  /// details which can also be a simple items or groups of sub-details.
  final List<ExplanationOfBenefitItem>? item;

  /// [addItem]
  /// The first-tier service adjudications for payor added product or service
  /// lines.
  final List<ExplanationOfBenefitAddItem>? addItem;

  /// [adjudication]
  /// The adjudication results which are presented at the header level rather
  /// than at the line-item or add-item levels.
  final List<ExplanationOfBenefitAdjudication>? adjudication;

  /// [total]
  /// Categorized monetary totals for the adjudication.
  final List<ExplanationOfBenefitTotal>? total;

  /// [payment]
  /// Payment details for the adjudication of the claim.
  final ExplanationOfBenefitPayment? payment;

  /// [formCode]
  /// A code for the form to be used for printing the content.
  final CodeableConcept? formCode;

  /// [form]
  /// The actual form, by reference or inclusion, for printing the content or
  /// an EOB.
  final Attachment? form;

  /// [processNote]
  /// A note that describes or explains adjudication results in a human
  /// readable form.
  final List<ExplanationOfBenefitProcessNote>? processNote;

  /// [benefitPeriod]
  /// The term of the benefits documented in this response.
  final Period? benefitPeriod;

  /// [benefitBalance]
  /// Balance by Benefit Category.
  final List<ExplanationOfBenefitBenefitBalance>? benefitBalance;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.toJson();
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
      json['contained'] = contained!.map((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map((Identifier v) => v.toJson()).toList();
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
    json['created'] = created.toJson();
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
      json['related'] =
          related!.map((ExplanationOfBenefitRelated v) => v.toJson()).toList();
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
      json['disposition'] = disposition!.toJson();
    }
    if (dispositionElement != null) {
      json['_disposition'] = dispositionElement!.toJson();
    }
    if (preAuthRef != null && preAuthRef!.isNotEmpty) {
      json['preAuthRef'] =
          preAuthRef!.map((FhirString v) => v.toJson()).toList();
    }
    if (preAuthRefElement != null && preAuthRefElement!.isNotEmpty) {
      json['_preAuthRef'] =
          preAuthRefElement!.map((Element v) => v.toJson()).toList();
    }
    if (preAuthRefPeriod != null && preAuthRefPeriod!.isNotEmpty) {
      json['preAuthRefPeriod'] =
          preAuthRefPeriod!.map((Period v) => v.toJson()).toList();
    }
    if (careTeam != null && careTeam!.isNotEmpty) {
      json['careTeam'] = careTeam!
          .map((ExplanationOfBenefitCareTeam v) => v.toJson())
          .toList();
    }
    if (supportingInfo != null && supportingInfo!.isNotEmpty) {
      json['supportingInfo'] = supportingInfo!
          .map((ExplanationOfBenefitSupportingInfo v) => v.toJson())
          .toList();
    }
    if (diagnosis != null && diagnosis!.isNotEmpty) {
      json['diagnosis'] = diagnosis!
          .map((ExplanationOfBenefitDiagnosis v) => v.toJson())
          .toList();
    }
    if (procedure != null && procedure!.isNotEmpty) {
      json['procedure'] = procedure!
          .map((ExplanationOfBenefitProcedure v) => v.toJson())
          .toList();
    }
    if (precedence?.value != null) {
      json['precedence'] = precedence!.toJson();
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
      json['item'] =
          item!.map((ExplanationOfBenefitItem v) => v.toJson()).toList();
    }
    if (addItem != null && addItem!.isNotEmpty) {
      json['addItem'] =
          addItem!.map((ExplanationOfBenefitAddItem v) => v.toJson()).toList();
    }
    if (adjudication != null && adjudication!.isNotEmpty) {
      json['adjudication'] = adjudication!
          .map((ExplanationOfBenefitAdjudication v) => v.toJson())
          .toList();
    }
    if (total != null && total!.isNotEmpty) {
      json['total'] =
          total!.map((ExplanationOfBenefitTotal v) => v.toJson()).toList();
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
          .map((ExplanationOfBenefitProcessNote v) => v.toJson())
          .toList();
    }
    if (benefitPeriod != null) {
      json['benefitPeriod'] = benefitPeriod!.toJson();
    }
    if (benefitBalance != null && benefitBalance!.isNotEmpty) {
      json['benefitBalance'] = benefitBalance!
          .map((ExplanationOfBenefitBenefitBalance v) => v.toJson())
          .toList();
    }
    return json;
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
}

/// [ExplanationOfBenefitRelated]
/// Other claims which are related to this claim such as prior submissions
/// or claims for related services or for the same event.
class ExplanationOfBenefitRelated extends BackboneElement {
  /// Primary constructor for [ExplanationOfBenefitRelated]

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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitRelated.fromJson(Map<String, dynamic> json) {
    return ExplanationOfBenefitRelated(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      claim: json['claim'] != null
          ? Reference.fromJson(
              json['claim'] as Map<String, dynamic>,
            )
          : null,
      relationship: json['relationship'] != null
          ? CodeableConcept.fromJson(
              json['relationship'] as Map<String, dynamic>,
            )
          : null,
      reference: json['reference'] != null
          ? Identifier.fromJson(
              json['reference'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [ExplanationOfBenefitRelated] from a [String] or [YamlMap] object
  factory ExplanationOfBenefitRelated.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefitRelated.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ExplanationOfBenefitRelated.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ExplanationOfBenefitRelated cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ExplanationOfBenefitRelated] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitRelated.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExplanationOfBenefitRelated.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitRelated';

  /// [claim]
  /// Reference to a related claim.
  final Reference? claim;

  /// [relationship]
  /// A code to convey how the claims are related.
  final CodeableConcept? relationship;

  /// [reference]
  /// An alternate organizational reference to the case or file to which this
  /// particular claim pertains.
  final Identifier? reference;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
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
}

/// [ExplanationOfBenefitPayee]
/// The party to be reimbursed for cost of the products and services
/// according to the terms of the policy.
class ExplanationOfBenefitPayee extends BackboneElement {
  /// Primary constructor for [ExplanationOfBenefitPayee]

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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitPayee.fromJson(Map<String, dynamic> json) {
    return ExplanationOfBenefitPayee(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      party: json['party'] != null
          ? Reference.fromJson(
              json['party'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [ExplanationOfBenefitPayee] from a [String] or [YamlMap] object
  factory ExplanationOfBenefitPayee.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefitPayee.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ExplanationOfBenefitPayee.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ExplanationOfBenefitPayee cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ExplanationOfBenefitPayee] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitPayee.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExplanationOfBenefitPayee.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitPayee';

  /// [type]
  /// Type of Party to be reimbursed: Subscriber, provider, other.
  final CodeableConcept? type;

  /// [party]
  /// Reference to the individual or organization to whom any payment will be
  /// made.
  final Reference? party;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (party != null) {
      json['party'] = party!.toJson();
    }
    return json;
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
}

/// [ExplanationOfBenefitCareTeam]
/// The members of the team who provided the products and services.
class ExplanationOfBenefitCareTeam extends BackboneElement {
  /// Primary constructor for [ExplanationOfBenefitCareTeam]

  ExplanationOfBenefitCareTeam({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequence,

    /// Extensions for [sequence]
    this.sequenceElement,
    required this.provider,
    this.responsible,

    /// Extensions for [responsible]
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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitCareTeam.fromJson(Map<String, dynamic> json) {
    return ExplanationOfBenefitCareTeam(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      sequence: FhirPositiveInt.fromJson(json['sequence']),
      sequenceElement: json['_sequence'] != null
          ? Element.fromJson(
              json['_sequence'] as Map<String, dynamic>,
            )
          : null,
      provider: Reference.fromJson(
        json['provider'] as Map<String, dynamic>,
      ),
      responsible: json['responsible'] != null
          ? FhirBoolean.fromJson(json['responsible'])
          : null,
      responsibleElement: json['_responsible'] != null
          ? Element.fromJson(
              json['_responsible'] as Map<String, dynamic>,
            )
          : null,
      role: json['role'] != null
          ? CodeableConcept.fromJson(
              json['role'] as Map<String, dynamic>,
            )
          : null,
      qualification: json['qualification'] != null
          ? CodeableConcept.fromJson(
              json['qualification'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [ExplanationOfBenefitCareTeam] from a [String] or [YamlMap] object
  factory ExplanationOfBenefitCareTeam.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefitCareTeam.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ExplanationOfBenefitCareTeam.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ExplanationOfBenefitCareTeam cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ExplanationOfBenefitCareTeam] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitCareTeam.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExplanationOfBenefitCareTeam.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitCareTeam';

  /// [sequence]
  /// A number to uniquely identify care team entries.
  final FhirPositiveInt sequence;

  /// Extensions for [sequence]
  final Element? sequenceElement;

  /// [provider]
  /// Member of the team who provided the product or service.
  final Reference provider;

  /// [responsible]
  /// The party who is billing and/or responsible for the claimed products or
  /// services.
  final FhirBoolean? responsible;

  /// Extensions for [responsible]
  final Element? responsibleElement;

  /// [role]
  /// The lead, assisting or supervising practitioner and their discipline if
  /// a multidisciplinary team.
  final CodeableConcept? role;

  /// [qualification]
  /// The qualification of the practitioner which is applicable for this
  /// service.
  final CodeableConcept? qualification;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['sequence'] = sequence.toJson();
    if (sequenceElement != null) {
      json['_sequence'] = sequenceElement!.toJson();
    }
    json['provider'] = provider.toJson();
    if (responsible?.value != null) {
      json['responsible'] = responsible!.toJson();
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
}

/// [ExplanationOfBenefitSupportingInfo]
/// Additional information codes regarding exceptions, special
/// considerations, the condition, situation, prior or concurrent issues.
class ExplanationOfBenefitSupportingInfo extends BackboneElement {
  /// Primary constructor for [ExplanationOfBenefitSupportingInfo]

  ExplanationOfBenefitSupportingInfo({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequence,

    /// Extensions for [sequence]
    this.sequenceElement,
    required this.category,
    this.code,
    this.timingDate,

    /// Extensions for [timingDate]
    this.timingDateElement,
    this.timingPeriod,
    this.valueBoolean,

    /// Extensions for [valueBoolean]
    this.valueBooleanElement,
    this.valueString,

    /// Extensions for [valueString]
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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitSupportingInfo.fromJson(
      Map<String, dynamic> json) {
    return ExplanationOfBenefitSupportingInfo(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      sequence: FhirPositiveInt.fromJson(json['sequence']),
      sequenceElement: json['_sequence'] != null
          ? Element.fromJson(
              json['_sequence'] as Map<String, dynamic>,
            )
          : null,
      category: CodeableConcept.fromJson(
        json['category'] as Map<String, dynamic>,
      ),
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              json['code'] as Map<String, dynamic>,
            )
          : null,
      timingDate: json['timingDate'] != null
          ? FhirDate.fromJson(json['timingDate'])
          : null,
      timingDateElement: json['_timingDate'] != null
          ? Element.fromJson(
              json['_timingDate'] as Map<String, dynamic>,
            )
          : null,
      timingPeriod: json['timingPeriod'] != null
          ? Period.fromJson(
              json['timingPeriod'] as Map<String, dynamic>,
            )
          : null,
      valueBoolean: json['valueBoolean'] != null
          ? FhirBoolean.fromJson(json['valueBoolean'])
          : null,
      valueBooleanElement: json['_valueBoolean'] != null
          ? Element.fromJson(
              json['_valueBoolean'] as Map<String, dynamic>,
            )
          : null,
      valueString: json['valueString'] != null
          ? FhirString.fromJson(json['valueString'])
          : null,
      valueStringElement: json['_valueString'] != null
          ? Element.fromJson(
              json['_valueString'] as Map<String, dynamic>,
            )
          : null,
      valueQuantity: json['valueQuantity'] != null
          ? Quantity.fromJson(
              json['valueQuantity'] as Map<String, dynamic>,
            )
          : null,
      valueAttachment: json['valueAttachment'] != null
          ? Attachment.fromJson(
              json['valueAttachment'] as Map<String, dynamic>,
            )
          : null,
      valueReference: json['valueReference'] != null
          ? Reference.fromJson(
              json['valueReference'] as Map<String, dynamic>,
            )
          : null,
      reason: json['reason'] != null
          ? Coding.fromJson(
              json['reason'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [ExplanationOfBenefitSupportingInfo] from a [String] or [YamlMap] object
  factory ExplanationOfBenefitSupportingInfo.fromYaml(dynamic yaml) => yaml
          is String
      ? ExplanationOfBenefitSupportingInfo.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ExplanationOfBenefitSupportingInfo.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ExplanationOfBenefitSupportingInfo cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ExplanationOfBenefitSupportingInfo] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitSupportingInfo.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExplanationOfBenefitSupportingInfo.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitSupportingInfo';

  /// [sequence]
  /// A number to uniquely identify supporting information entries.
  final FhirPositiveInt sequence;

  /// Extensions for [sequence]
  final Element? sequenceElement;

  /// [category]
  /// The general class of the information supplied: information; exception;
  /// accident, employment; onset, etc.
  final CodeableConcept category;

  /// [code]
  /// System and code pertaining to the specific information regarding
  /// special conditions relating to the setting, treatment or patient for
  /// which care is sought.
  final CodeableConcept? code;

  /// [timingDate]
  /// The date when or period to which this information refers.
  final FhirDate? timingDate;

  /// Extensions for [timingDate]
  final Element? timingDateElement;

  /// [timingPeriod]
  /// The date when or period to which this information refers.
  final Period? timingPeriod;

  /// [valueBoolean]
  /// Additional data or information such as resources, documents, images
  /// etc. including references to the data or the actual inclusion of the
  /// data.
  final FhirBoolean? valueBoolean;

  /// Extensions for [valueBoolean]
  final Element? valueBooleanElement;

  /// [valueString]
  /// Additional data or information such as resources, documents, images
  /// etc. including references to the data or the actual inclusion of the
  /// data.
  final FhirString? valueString;

  /// Extensions for [valueString]
  final Element? valueStringElement;

  /// [valueQuantity]
  /// Additional data or information such as resources, documents, images
  /// etc. including references to the data or the actual inclusion of the
  /// data.
  final Quantity? valueQuantity;

  /// [valueAttachment]
  /// Additional data or information such as resources, documents, images
  /// etc. including references to the data or the actual inclusion of the
  /// data.
  final Attachment? valueAttachment;

  /// [valueReference]
  /// Additional data or information such as resources, documents, images
  /// etc. including references to the data or the actual inclusion of the
  /// data.
  final Reference? valueReference;

  /// [reason]
  /// Provides the reason in the situation where a reason code is required in
  /// addition to the content.
  final Coding? reason;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['sequence'] = sequence.toJson();
    if (sequenceElement != null) {
      json['_sequence'] = sequenceElement!.toJson();
    }
    json['category'] = category.toJson();
    if (code != null) {
      json['code'] = code!.toJson();
    }
    if (timingDate?.value != null) {
      json['timingDate'] = timingDate!.toJson();
    }
    if (timingDateElement != null) {
      json['_timingDate'] = timingDateElement!.toJson();
    }
    if (timingPeriod != null) {
      json['timingPeriod'] = timingPeriod!.toJson();
    }
    if (valueBoolean?.value != null) {
      json['valueBoolean'] = valueBoolean!.toJson();
    }
    if (valueBooleanElement != null) {
      json['_valueBoolean'] = valueBooleanElement!.toJson();
    }
    if (valueString?.value != null) {
      json['valueString'] = valueString!.toJson();
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
}

/// [ExplanationOfBenefitDiagnosis]
/// Information about diagnoses relevant to the claim items.
class ExplanationOfBenefitDiagnosis extends BackboneElement {
  /// Primary constructor for [ExplanationOfBenefitDiagnosis]

  ExplanationOfBenefitDiagnosis({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequence,

    /// Extensions for [sequence]
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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitDiagnosis.fromJson(Map<String, dynamic> json) {
    return ExplanationOfBenefitDiagnosis(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      sequence: FhirPositiveInt.fromJson(json['sequence']),
      sequenceElement: json['_sequence'] != null
          ? Element.fromJson(
              json['_sequence'] as Map<String, dynamic>,
            )
          : null,
      diagnosisCodeableConcept: json['diagnosisCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['diagnosisCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      diagnosisReference: json['diagnosisReference'] != null
          ? Reference.fromJson(
              json['diagnosisReference'] as Map<String, dynamic>,
            )
          : null,
      type: json['type'] != null
          ? (json['type'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      onAdmission: json['onAdmission'] != null
          ? CodeableConcept.fromJson(
              json['onAdmission'] as Map<String, dynamic>,
            )
          : null,
      packageCode: json['packageCode'] != null
          ? CodeableConcept.fromJson(
              json['packageCode'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [ExplanationOfBenefitDiagnosis] from a [String] or [YamlMap] object
  factory ExplanationOfBenefitDiagnosis.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefitDiagnosis.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ExplanationOfBenefitDiagnosis.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ExplanationOfBenefitDiagnosis cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ExplanationOfBenefitDiagnosis] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitDiagnosis.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExplanationOfBenefitDiagnosis.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitDiagnosis';

  /// [sequence]
  /// A number to uniquely identify diagnosis entries.
  final FhirPositiveInt sequence;

  /// Extensions for [sequence]
  final Element? sequenceElement;

  /// [diagnosisCodeableConcept]
  /// The nature of illness or problem in a coded form or as a reference to
  /// an external defined Condition.
  final CodeableConcept? diagnosisCodeableConcept;

  /// [diagnosisReference]
  /// The nature of illness or problem in a coded form or as a reference to
  /// an external defined Condition.
  final Reference? diagnosisReference;

  /// [type]
  /// When the condition was observed or the relative ranking.
  final List<CodeableConcept>? type;

  /// [onAdmission]
  /// Indication of whether the diagnosis was present on admission to a
  /// facility.
  final CodeableConcept? onAdmission;

  /// [packageCode]
  /// A package billing code or bundle code used to group products and
  /// services to a particular health condition (such as heart attack) which
  /// is based on a predetermined grouping code system.
  final CodeableConcept? packageCode;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['sequence'] = sequence.toJson();
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
      json['type'] = type!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (onAdmission != null) {
      json['onAdmission'] = onAdmission!.toJson();
    }
    if (packageCode != null) {
      json['packageCode'] = packageCode!.toJson();
    }
    return json;
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
}

/// [ExplanationOfBenefitProcedure]
/// Procedures performed on the patient relevant to the billing items with
/// the claim.
class ExplanationOfBenefitProcedure extends BackboneElement {
  /// Primary constructor for [ExplanationOfBenefitProcedure]

  ExplanationOfBenefitProcedure({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequence,

    /// Extensions for [sequence]
    this.sequenceElement,
    this.type,
    this.date,

    /// Extensions for [date]
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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitProcedure.fromJson(Map<String, dynamic> json) {
    return ExplanationOfBenefitProcedure(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      sequence: FhirPositiveInt.fromJson(json['sequence']),
      sequenceElement: json['_sequence'] != null
          ? Element.fromJson(
              json['_sequence'] as Map<String, dynamic>,
            )
          : null,
      type: json['type'] != null
          ? (json['type'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      date: json['date'] != null ? FhirDateTime.fromJson(json['date']) : null,
      dateElement: json['_date'] != null
          ? Element.fromJson(
              json['_date'] as Map<String, dynamic>,
            )
          : null,
      procedureCodeableConcept: json['procedureCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['procedureCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      procedureReference: json['procedureReference'] != null
          ? Reference.fromJson(
              json['procedureReference'] as Map<String, dynamic>,
            )
          : null,
      udi: json['udi'] != null
          ? (json['udi'] as List<dynamic>)
              .map<Reference>(
                (dynamic v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ExplanationOfBenefitProcedure] from a [String] or [YamlMap] object
  factory ExplanationOfBenefitProcedure.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefitProcedure.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ExplanationOfBenefitProcedure.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ExplanationOfBenefitProcedure cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ExplanationOfBenefitProcedure] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitProcedure.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExplanationOfBenefitProcedure.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitProcedure';

  /// [sequence]
  /// A number to uniquely identify procedure entries.
  final FhirPositiveInt sequence;

  /// Extensions for [sequence]
  final Element? sequenceElement;

  /// [type]
  /// When the condition was observed or the relative ranking.
  final List<CodeableConcept>? type;

  /// [date]
  /// Date and optionally time the procedure was performed.
  final FhirDateTime? date;

  /// Extensions for [date]
  final Element? dateElement;

  /// [procedureCodeableConcept]
  /// The code or reference to a Procedure resource which identifies the
  /// clinical intervention performed.
  final CodeableConcept? procedureCodeableConcept;

  /// [procedureReference]
  /// The code or reference to a Procedure resource which identifies the
  /// clinical intervention performed.
  final Reference? procedureReference;

  /// [udi]
  /// Unique Device Identifiers associated with this line item.
  final List<Reference>? udi;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['sequence'] = sequence.toJson();
    if (sequenceElement != null) {
      json['_sequence'] = sequenceElement!.toJson();
    }
    if (type != null && type!.isNotEmpty) {
      json['type'] = type!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (date?.value != null) {
      json['date'] = date!.toJson();
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
      json['udi'] = udi!.map((Reference v) => v.toJson()).toList();
    }
    return json;
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
}

/// [ExplanationOfBenefitInsurance]
/// Financial instruments for reimbursement for the health care products
/// and services specified on the claim.
class ExplanationOfBenefitInsurance extends BackboneElement {
  /// Primary constructor for [ExplanationOfBenefitInsurance]

  ExplanationOfBenefitInsurance({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.focal,

    /// Extensions for [focal]
    this.focalElement,
    required this.coverage,
    this.preAuthRef,

    /// Extensions for [preAuthRef]
    this.preAuthRefElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitInsurance.fromJson(Map<String, dynamic> json) {
    return ExplanationOfBenefitInsurance(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      focal: FhirBoolean.fromJson(json['focal']),
      focalElement: json['_focal'] != null
          ? Element.fromJson(
              json['_focal'] as Map<String, dynamic>,
            )
          : null,
      coverage: Reference.fromJson(
        json['coverage'] as Map<String, dynamic>,
      ),
      preAuthRef: json['preAuthRef'] != null
          ? (json['preAuthRef'] as List<dynamic>)
              .map<FhirString>(
                (dynamic v) => FhirString.fromJson(v as dynamic),
              )
              .toList()
          : null,
      preAuthRefElement: json['_preAuthRef'] != null
          ? (json['_preAuthRef'] as List<dynamic>)
              .map<Element>(
                (dynamic v) => Element.fromJson(v as Map<String, dynamic>),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ExplanationOfBenefitInsurance] from a [String] or [YamlMap] object
  factory ExplanationOfBenefitInsurance.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefitInsurance.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ExplanationOfBenefitInsurance.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ExplanationOfBenefitInsurance cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ExplanationOfBenefitInsurance] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitInsurance.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExplanationOfBenefitInsurance.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitInsurance';

  /// [focal]
  /// A flag to indicate that this Coverage is to be used for adjudication of
  /// this claim when set to true.
  final FhirBoolean focal;

  /// Extensions for [focal]
  final Element? focalElement;

  /// [coverage]
  /// Reference to the insurance card level information contained in the
  /// Coverage resource. The coverage issuing insurer will use these details
  /// to locate the patient's actual coverage within the insurer's
  /// information system.
  final Reference coverage;

  /// [preAuthRef]
  /// Reference numbers previously provided by the insurer to the provider to
  /// be quoted on subsequent claims containing services or products related
  /// to the prior authorization.
  final List<FhirString>? preAuthRef;

  /// Extensions for [preAuthRef]
  final List<Element>? preAuthRefElement;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['focal'] = focal.toJson();
    if (focalElement != null) {
      json['_focal'] = focalElement!.toJson();
    }
    json['coverage'] = coverage.toJson();
    if (preAuthRef != null && preAuthRef!.isNotEmpty) {
      json['preAuthRef'] =
          preAuthRef!.map((FhirString v) => v.toJson()).toList();
    }
    if (preAuthRefElement != null && preAuthRefElement!.isNotEmpty) {
      json['_preAuthRef'] =
          preAuthRefElement!.map((Element v) => v.toJson()).toList();
    }
    return json;
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
}

/// [ExplanationOfBenefitAccident]
/// Details of a accident which resulted in injuries which required the
/// products and services listed in the claim.
class ExplanationOfBenefitAccident extends BackboneElement {
  /// Primary constructor for [ExplanationOfBenefitAccident]

  ExplanationOfBenefitAccident({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.date,

    /// Extensions for [date]
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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitAccident.fromJson(Map<String, dynamic> json) {
    return ExplanationOfBenefitAccident(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      date: json['date'] != null ? FhirDate.fromJson(json['date']) : null,
      dateElement: json['_date'] != null
          ? Element.fromJson(
              json['_date'] as Map<String, dynamic>,
            )
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      locationAddress: json['locationAddress'] != null
          ? Address.fromJson(
              json['locationAddress'] as Map<String, dynamic>,
            )
          : null,
      locationReference: json['locationReference'] != null
          ? Reference.fromJson(
              json['locationReference'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [ExplanationOfBenefitAccident] from a [String] or [YamlMap] object
  factory ExplanationOfBenefitAccident.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefitAccident.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ExplanationOfBenefitAccident.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ExplanationOfBenefitAccident cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ExplanationOfBenefitAccident] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitAccident.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExplanationOfBenefitAccident.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitAccident';

  /// [date]
  /// Date of an accident event related to the products and services
  /// contained in the claim.
  final FhirDate? date;

  /// Extensions for [date]
  final Element? dateElement;

  /// [type]
  /// The type or context of the accident event for the purposes of selection
  /// of potential insurance coverages and determination of coordination
  /// between insurers.
  final CodeableConcept? type;

  /// [locationAddress]
  /// The physical location of the accident event.
  final Address? locationAddress;

  /// [locationReference]
  /// The physical location of the accident event.
  final Reference? locationReference;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (date?.value != null) {
      json['date'] = date!.toJson();
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
}

/// [ExplanationOfBenefitItem]
/// A claim line. Either a simple (a product or service) or a 'group' of
/// details which can also be a simple items or groups of sub-details.
class ExplanationOfBenefitItem extends BackboneElement {
  /// Primary constructor for [ExplanationOfBenefitItem]

  ExplanationOfBenefitItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequence,

    /// Extensions for [sequence]
    this.sequenceElement,
    this.careTeamSequence,

    /// Extensions for [careTeamSequence]
    this.careTeamSequenceElement,
    this.diagnosisSequence,

    /// Extensions for [diagnosisSequence]
    this.diagnosisSequenceElement,
    this.procedureSequence,

    /// Extensions for [procedureSequence]
    this.procedureSequenceElement,
    this.informationSequence,

    /// Extensions for [informationSequence]
    this.informationSequenceElement,
    this.revenue,
    this.category,
    required this.productOrService,
    this.modifier,
    this.programCode,
    this.servicedDate,

    /// Extensions for [servicedDate]
    this.servicedDateElement,
    this.servicedPeriod,
    this.locationCodeableConcept,
    this.locationAddress,
    this.locationReference,
    this.quantity,
    this.unitPrice,
    this.factor,

    /// Extensions for [factor]
    this.factorElement,
    this.net,
    this.udi,
    this.bodySite,
    this.subSite,
    this.encounter,
    this.noteNumber,

    /// Extensions for [noteNumber]
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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitItem.fromJson(Map<String, dynamic> json) {
    return ExplanationOfBenefitItem(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      sequence: FhirPositiveInt.fromJson(json['sequence']),
      sequenceElement: json['_sequence'] != null
          ? Element.fromJson(
              json['_sequence'] as Map<String, dynamic>,
            )
          : null,
      careTeamSequence: json['careTeamSequence'] != null
          ? (json['careTeamSequence'] as List<dynamic>)
              .map<FhirPositiveInt>(
                (dynamic v) => FhirPositiveInt.fromJson(v as dynamic),
              )
              .toList()
          : null,
      careTeamSequenceElement: json['_careTeamSequence'] != null
          ? (json['_careTeamSequence'] as List<dynamic>)
              .map<Element>(
                (dynamic v) => Element.fromJson(v as Map<String, dynamic>),
              )
              .toList()
          : null,
      diagnosisSequence: json['diagnosisSequence'] != null
          ? (json['diagnosisSequence'] as List<dynamic>)
              .map<FhirPositiveInt>(
                (dynamic v) => FhirPositiveInt.fromJson(v as dynamic),
              )
              .toList()
          : null,
      diagnosisSequenceElement: json['_diagnosisSequence'] != null
          ? (json['_diagnosisSequence'] as List<dynamic>)
              .map<Element>(
                (dynamic v) => Element.fromJson(v as Map<String, dynamic>),
              )
              .toList()
          : null,
      procedureSequence: json['procedureSequence'] != null
          ? (json['procedureSequence'] as List<dynamic>)
              .map<FhirPositiveInt>(
                (dynamic v) => FhirPositiveInt.fromJson(v as dynamic),
              )
              .toList()
          : null,
      procedureSequenceElement: json['_procedureSequence'] != null
          ? (json['_procedureSequence'] as List<dynamic>)
              .map<Element>(
                (dynamic v) => Element.fromJson(v as Map<String, dynamic>),
              )
              .toList()
          : null,
      informationSequence: json['informationSequence'] != null
          ? (json['informationSequence'] as List<dynamic>)
              .map<FhirPositiveInt>(
                (dynamic v) => FhirPositiveInt.fromJson(v as dynamic),
              )
              .toList()
          : null,
      informationSequenceElement: json['_informationSequence'] != null
          ? (json['_informationSequence'] as List<dynamic>)
              .map<Element>(
                (dynamic v) => Element.fromJson(v as Map<String, dynamic>),
              )
              .toList()
          : null,
      revenue: json['revenue'] != null
          ? CodeableConcept.fromJson(
              json['revenue'] as Map<String, dynamic>,
            )
          : null,
      category: json['category'] != null
          ? CodeableConcept.fromJson(
              json['category'] as Map<String, dynamic>,
            )
          : null,
      productOrService: CodeableConcept.fromJson(
        json['productOrService'] as Map<String, dynamic>,
      ),
      modifier: json['modifier'] != null
          ? (json['modifier'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      programCode: json['programCode'] != null
          ? (json['programCode'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      servicedDate: json['servicedDate'] != null
          ? FhirDate.fromJson(json['servicedDate'])
          : null,
      servicedDateElement: json['_servicedDate'] != null
          ? Element.fromJson(
              json['_servicedDate'] as Map<String, dynamic>,
            )
          : null,
      servicedPeriod: json['servicedPeriod'] != null
          ? Period.fromJson(
              json['servicedPeriod'] as Map<String, dynamic>,
            )
          : null,
      locationCodeableConcept: json['locationCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['locationCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      locationAddress: json['locationAddress'] != null
          ? Address.fromJson(
              json['locationAddress'] as Map<String, dynamic>,
            )
          : null,
      locationReference: json['locationReference'] != null
          ? Reference.fromJson(
              json['locationReference'] as Map<String, dynamic>,
            )
          : null,
      quantity: json['quantity'] != null
          ? Quantity.fromJson(
              json['quantity'] as Map<String, dynamic>,
            )
          : null,
      unitPrice: json['unitPrice'] != null
          ? Money.fromJson(
              json['unitPrice'] as Map<String, dynamic>,
            )
          : null,
      factor:
          json['factor'] != null ? FhirDecimal.fromJson(json['factor']) : null,
      factorElement: json['_factor'] != null
          ? Element.fromJson(
              json['_factor'] as Map<String, dynamic>,
            )
          : null,
      net: json['net'] != null
          ? Money.fromJson(
              json['net'] as Map<String, dynamic>,
            )
          : null,
      udi: json['udi'] != null
          ? (json['udi'] as List<dynamic>)
              .map<Reference>(
                (dynamic v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      bodySite: json['bodySite'] != null
          ? CodeableConcept.fromJson(
              json['bodySite'] as Map<String, dynamic>,
            )
          : null,
      subSite: json['subSite'] != null
          ? (json['subSite'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      encounter: json['encounter'] != null
          ? (json['encounter'] as List<dynamic>)
              .map<Reference>(
                (dynamic v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      noteNumber: json['noteNumber'] != null
          ? (json['noteNumber'] as List<dynamic>)
              .map<FhirPositiveInt>(
                (dynamic v) => FhirPositiveInt.fromJson(v as dynamic),
              )
              .toList()
          : null,
      noteNumberElement: json['_noteNumber'] != null
          ? (json['_noteNumber'] as List<dynamic>)
              .map<Element>(
                (dynamic v) => Element.fromJson(v as Map<String, dynamic>),
              )
              .toList()
          : null,
      adjudication: json['adjudication'] != null
          ? (json['adjudication'] as List<dynamic>)
              .map<ExplanationOfBenefitAdjudication>(
                (dynamic v) => ExplanationOfBenefitAdjudication.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      detail: json['detail'] != null
          ? (json['detail'] as List<dynamic>)
              .map<ExplanationOfBenefitDetail>(
                (dynamic v) => ExplanationOfBenefitDetail.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ExplanationOfBenefitItem] from a [String] or [YamlMap] object
  factory ExplanationOfBenefitItem.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefitItem.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ExplanationOfBenefitItem.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ExplanationOfBenefitItem cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ExplanationOfBenefitItem] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitItem.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExplanationOfBenefitItem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitItem';

  /// [sequence]
  /// A number to uniquely identify item entries.
  final FhirPositiveInt sequence;

  /// Extensions for [sequence]
  final Element? sequenceElement;

  /// [careTeamSequence]
  /// Care team members related to this service or product.
  final List<FhirPositiveInt>? careTeamSequence;

  /// Extensions for [careTeamSequence]
  final List<Element>? careTeamSequenceElement;

  /// [diagnosisSequence]
  /// Diagnoses applicable for this service or product.
  final List<FhirPositiveInt>? diagnosisSequence;

  /// Extensions for [diagnosisSequence]
  final List<Element>? diagnosisSequenceElement;

  /// [procedureSequence]
  /// Procedures applicable for this service or product.
  final List<FhirPositiveInt>? procedureSequence;

  /// Extensions for [procedureSequence]
  final List<Element>? procedureSequenceElement;

  /// [informationSequence]
  /// Exceptions, special conditions and supporting information applicable
  /// for this service or product.
  final List<FhirPositiveInt>? informationSequence;

  /// Extensions for [informationSequence]
  final List<Element>? informationSequenceElement;

  /// [revenue]
  /// The type of revenue or cost center providing the product and/or
  /// service.
  final CodeableConcept? revenue;

  /// [category]
  /// Code to identify the general type of benefits under which products and
  /// services are provided.
  final CodeableConcept? category;

  /// [productOrService]
  /// When the value is a group code then this item collects a set of related
  /// claim details, otherwise this contains the product, service, drug or
  /// other billing code for the item.
  final CodeableConcept productOrService;

  /// [modifier]
  /// Item typification or modifiers codes to convey additional context for
  /// the product or service.
  final List<CodeableConcept>? modifier;

  /// [programCode]
  /// Identifies the program under which this may be recovered.
  final List<CodeableConcept>? programCode;

  /// [servicedDate]
  /// The date or dates when the service or product was supplied, performed
  /// or completed.
  final FhirDate? servicedDate;

  /// Extensions for [servicedDate]
  final Element? servicedDateElement;

  /// [servicedPeriod]
  /// The date or dates when the service or product was supplied, performed
  /// or completed.
  final Period? servicedPeriod;

  /// [locationCodeableConcept]
  /// Where the product or service was provided.
  final CodeableConcept? locationCodeableConcept;

  /// [locationAddress]
  /// Where the product or service was provided.
  final Address? locationAddress;

  /// [locationReference]
  /// Where the product or service was provided.
  final Reference? locationReference;

  /// [quantity]
  /// The number of repetitions of a service or product.
  final Quantity? quantity;

  /// [unitPrice]
  /// If the item is not a group then this is the fee for the product or
  /// service, otherwise this is the total of the fees for the details of the
  /// group.
  final Money? unitPrice;

  /// [factor]
  /// A real number that represents a multiplier used in determining the
  /// overall value of services delivered and/or goods received. The concept
  /// of a Factor allows for a discount or surcharge multiplier to be applied
  /// to a monetary amount.
  final FhirDecimal? factor;

  /// Extensions for [factor]
  final Element? factorElement;

  /// [net]
  /// The quantity times the unit price for an additional service or product
  /// or charge.
  final Money? net;

  /// [udi]
  /// Unique Device Identifiers associated with this line item.
  final List<Reference>? udi;

  /// [bodySite]
  /// Physical service site on the patient (limb, tooth, etc.).
  final CodeableConcept? bodySite;

  /// [subSite]
  /// A region or surface of the bodySite, e.g. limb region or tooth
  /// surface(s).
  final List<CodeableConcept>? subSite;

  /// [encounter]
  /// A billed item may include goods or services provided in multiple
  /// encounters.
  final List<Reference>? encounter;

  /// [noteNumber]
  /// The numbers associated with notes below which apply to the adjudication
  /// of this item.
  final List<FhirPositiveInt>? noteNumber;

  /// Extensions for [noteNumber]
  final List<Element>? noteNumberElement;

  /// [adjudication]
  /// If this item is a group then the values here are a summary of the
  /// adjudication of the detail items. If this item is a simple product or
  /// service then this is the result of the adjudication of this item.
  final List<ExplanationOfBenefitAdjudication>? adjudication;

  /// [detail]
  /// Second-tier of goods and services.
  final List<ExplanationOfBenefitDetail>? detail;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['sequence'] = sequence.toJson();
    if (sequenceElement != null) {
      json['_sequence'] = sequenceElement!.toJson();
    }
    if (careTeamSequence != null && careTeamSequence!.isNotEmpty) {
      json['careTeamSequence'] =
          careTeamSequence!.map((FhirPositiveInt v) => v.toJson()).toList();
    }
    if (careTeamSequenceElement != null &&
        careTeamSequenceElement!.isNotEmpty) {
      json['_careTeamSequence'] =
          careTeamSequenceElement!.map((Element v) => v.toJson()).toList();
    }
    if (diagnosisSequence != null && diagnosisSequence!.isNotEmpty) {
      json['diagnosisSequence'] =
          diagnosisSequence!.map((FhirPositiveInt v) => v.toJson()).toList();
    }
    if (diagnosisSequenceElement != null &&
        diagnosisSequenceElement!.isNotEmpty) {
      json['_diagnosisSequence'] =
          diagnosisSequenceElement!.map((Element v) => v.toJson()).toList();
    }
    if (procedureSequence != null && procedureSequence!.isNotEmpty) {
      json['procedureSequence'] =
          procedureSequence!.map((FhirPositiveInt v) => v.toJson()).toList();
    }
    if (procedureSequenceElement != null &&
        procedureSequenceElement!.isNotEmpty) {
      json['_procedureSequence'] =
          procedureSequenceElement!.map((Element v) => v.toJson()).toList();
    }
    if (informationSequence != null && informationSequence!.isNotEmpty) {
      json['informationSequence'] =
          informationSequence!.map((FhirPositiveInt v) => v.toJson()).toList();
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
          modifier!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (programCode != null && programCode!.isNotEmpty) {
      json['programCode'] =
          programCode!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (servicedDate?.value != null) {
      json['servicedDate'] = servicedDate!.toJson();
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
      json['factor'] = factor!.toJson();
    }
    if (factorElement != null) {
      json['_factor'] = factorElement!.toJson();
    }
    if (net != null) {
      json['net'] = net!.toJson();
    }
    if (udi != null && udi!.isNotEmpty) {
      json['udi'] = udi!.map((Reference v) => v.toJson()).toList();
    }
    if (bodySite != null) {
      json['bodySite'] = bodySite!.toJson();
    }
    if (subSite != null && subSite!.isNotEmpty) {
      json['subSite'] =
          subSite!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (encounter != null && encounter!.isNotEmpty) {
      json['encounter'] = encounter!.map((Reference v) => v.toJson()).toList();
    }
    if (noteNumber != null && noteNumber!.isNotEmpty) {
      json['noteNumber'] =
          noteNumber!.map((FhirPositiveInt v) => v.toJson()).toList();
    }
    if (noteNumberElement != null && noteNumberElement!.isNotEmpty) {
      json['_noteNumber'] =
          noteNumberElement!.map((Element v) => v.toJson()).toList();
    }
    if (adjudication != null && adjudication!.isNotEmpty) {
      json['adjudication'] = adjudication!
          .map((ExplanationOfBenefitAdjudication v) => v.toJson())
          .toList();
    }
    if (detail != null && detail!.isNotEmpty) {
      json['detail'] =
          detail!.map((ExplanationOfBenefitDetail v) => v.toJson()).toList();
    }
    return json;
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
}

/// [ExplanationOfBenefitAdjudication]
/// If this item is a group then the values here are a summary of the
/// adjudication of the detail items. If this item is a simple product or
/// service then this is the result of the adjudication of this item.
class ExplanationOfBenefitAdjudication extends BackboneElement {
  /// Primary constructor for [ExplanationOfBenefitAdjudication]

  ExplanationOfBenefitAdjudication({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.category,
    this.reason,
    this.amount,
    this.value,

    /// Extensions for [value]
    this.valueElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitAdjudication.fromJson(Map<String, dynamic> json) {
    return ExplanationOfBenefitAdjudication(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      category: CodeableConcept.fromJson(
        json['category'] as Map<String, dynamic>,
      ),
      reason: json['reason'] != null
          ? CodeableConcept.fromJson(
              json['reason'] as Map<String, dynamic>,
            )
          : null,
      amount: json['amount'] != null
          ? Money.fromJson(
              json['amount'] as Map<String, dynamic>,
            )
          : null,
      value: json['value'] != null ? FhirDecimal.fromJson(json['value']) : null,
      valueElement: json['_value'] != null
          ? Element.fromJson(
              json['_value'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [ExplanationOfBenefitAdjudication] from a [String] or [YamlMap] object
  factory ExplanationOfBenefitAdjudication.fromYaml(dynamic yaml) => yaml
          is String
      ? ExplanationOfBenefitAdjudication.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ExplanationOfBenefitAdjudication.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ExplanationOfBenefitAdjudication cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ExplanationOfBenefitAdjudication] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitAdjudication.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExplanationOfBenefitAdjudication.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitAdjudication';

  /// [category]
  /// A code to indicate the information type of this adjudication record.
  /// Information types may include: the value submitted, maximum values or
  /// percentages allowed or payable under the plan, amounts that the patient
  /// is responsible for in-aggregate or pertaining to this item, amounts
  /// paid by other coverages, and the benefit payable for this item.
  final CodeableConcept category;

  /// [reason]
  /// A code supporting the understanding of the adjudication result and
  /// explaining variance from expected amount.
  final CodeableConcept? reason;

  /// [amount]
  /// Monetary amount associated with the category.
  final Money? amount;

  /// [value]
  /// A non-monetary value associated with the category. Mutually exclusive
  /// to the amount element above.
  final FhirDecimal? value;

  /// Extensions for [value]
  final Element? valueElement;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['category'] = category.toJson();
    if (reason != null) {
      json['reason'] = reason!.toJson();
    }
    if (amount != null) {
      json['amount'] = amount!.toJson();
    }
    if (value?.value != null) {
      json['value'] = value!.toJson();
    }
    if (valueElement != null) {
      json['_value'] = valueElement!.toJson();
    }
    return json;
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
}

/// [ExplanationOfBenefitDetail]
/// Second-tier of goods and services.
class ExplanationOfBenefitDetail extends BackboneElement {
  /// Primary constructor for [ExplanationOfBenefitDetail]

  ExplanationOfBenefitDetail({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequence,

    /// Extensions for [sequence]
    this.sequenceElement,
    this.revenue,
    this.category,
    required this.productOrService,
    this.modifier,
    this.programCode,
    this.quantity,
    this.unitPrice,
    this.factor,

    /// Extensions for [factor]
    this.factorElement,
    this.net,
    this.udi,
    this.noteNumber,

    /// Extensions for [noteNumber]
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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitDetail.fromJson(Map<String, dynamic> json) {
    return ExplanationOfBenefitDetail(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      sequence: FhirPositiveInt.fromJson(json['sequence']),
      sequenceElement: json['_sequence'] != null
          ? Element.fromJson(
              json['_sequence'] as Map<String, dynamic>,
            )
          : null,
      revenue: json['revenue'] != null
          ? CodeableConcept.fromJson(
              json['revenue'] as Map<String, dynamic>,
            )
          : null,
      category: json['category'] != null
          ? CodeableConcept.fromJson(
              json['category'] as Map<String, dynamic>,
            )
          : null,
      productOrService: CodeableConcept.fromJson(
        json['productOrService'] as Map<String, dynamic>,
      ),
      modifier: json['modifier'] != null
          ? (json['modifier'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      programCode: json['programCode'] != null
          ? (json['programCode'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      quantity: json['quantity'] != null
          ? Quantity.fromJson(
              json['quantity'] as Map<String, dynamic>,
            )
          : null,
      unitPrice: json['unitPrice'] != null
          ? Money.fromJson(
              json['unitPrice'] as Map<String, dynamic>,
            )
          : null,
      factor:
          json['factor'] != null ? FhirDecimal.fromJson(json['factor']) : null,
      factorElement: json['_factor'] != null
          ? Element.fromJson(
              json['_factor'] as Map<String, dynamic>,
            )
          : null,
      net: json['net'] != null
          ? Money.fromJson(
              json['net'] as Map<String, dynamic>,
            )
          : null,
      udi: json['udi'] != null
          ? (json['udi'] as List<dynamic>)
              .map<Reference>(
                (dynamic v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      noteNumber: json['noteNumber'] != null
          ? (json['noteNumber'] as List<dynamic>)
              .map<FhirPositiveInt>(
                (dynamic v) => FhirPositiveInt.fromJson(v as dynamic),
              )
              .toList()
          : null,
      noteNumberElement: json['_noteNumber'] != null
          ? (json['_noteNumber'] as List<dynamic>)
              .map<Element>(
                (dynamic v) => Element.fromJson(v as Map<String, dynamic>),
              )
              .toList()
          : null,
      adjudication: json['adjudication'] != null
          ? (json['adjudication'] as List<dynamic>)
              .map<ExplanationOfBenefitAdjudication>(
                (dynamic v) => ExplanationOfBenefitAdjudication.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      subDetail: json['subDetail'] != null
          ? (json['subDetail'] as List<dynamic>)
              .map<ExplanationOfBenefitSubDetail>(
                (dynamic v) => ExplanationOfBenefitSubDetail.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ExplanationOfBenefitDetail] from a [String] or [YamlMap] object
  factory ExplanationOfBenefitDetail.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefitDetail.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ExplanationOfBenefitDetail.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ExplanationOfBenefitDetail cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ExplanationOfBenefitDetail] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitDetail.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExplanationOfBenefitDetail.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitDetail';

  /// [sequence]
  /// A claim detail line. Either a simple (a product or service) or a
  /// 'group' of sub-details which are simple items.
  final FhirPositiveInt sequence;

  /// Extensions for [sequence]
  final Element? sequenceElement;

  /// [revenue]
  /// The type of revenue or cost center providing the product and/or
  /// service.
  final CodeableConcept? revenue;

  /// [category]
  /// Code to identify the general type of benefits under which products and
  /// services are provided.
  final CodeableConcept? category;

  /// [productOrService]
  /// When the value is a group code then this item collects a set of related
  /// claim details, otherwise this contains the product, service, drug or
  /// other billing code for the item.
  final CodeableConcept productOrService;

  /// [modifier]
  /// Item typification or modifiers codes to convey additional context for
  /// the product or service.
  final List<CodeableConcept>? modifier;

  /// [programCode]
  /// Identifies the program under which this may be recovered.
  final List<CodeableConcept>? programCode;

  /// [quantity]
  /// The number of repetitions of a service or product.
  final Quantity? quantity;

  /// [unitPrice]
  /// If the item is not a group then this is the fee for the product or
  /// service, otherwise this is the total of the fees for the details of the
  /// group.
  final Money? unitPrice;

  /// [factor]
  /// A real number that represents a multiplier used in determining the
  /// overall value of services delivered and/or goods received. The concept
  /// of a Factor allows for a discount or surcharge multiplier to be applied
  /// to a monetary amount.
  final FhirDecimal? factor;

  /// Extensions for [factor]
  final Element? factorElement;

  /// [net]
  /// The quantity times the unit price for an additional service or product
  /// or charge.
  final Money? net;

  /// [udi]
  /// Unique Device Identifiers associated with this line item.
  final List<Reference>? udi;

  /// [noteNumber]
  /// The numbers associated with notes below which apply to the adjudication
  /// of this item.
  final List<FhirPositiveInt>? noteNumber;

  /// Extensions for [noteNumber]
  final List<Element>? noteNumberElement;

  /// [adjudication]
  /// The adjudication results.
  final List<ExplanationOfBenefitAdjudication>? adjudication;

  /// [subDetail]
  /// Third-tier of goods and services.
  final List<ExplanationOfBenefitSubDetail>? subDetail;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['sequence'] = sequence.toJson();
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
          modifier!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (programCode != null && programCode!.isNotEmpty) {
      json['programCode'] =
          programCode!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (quantity != null) {
      json['quantity'] = quantity!.toJson();
    }
    if (unitPrice != null) {
      json['unitPrice'] = unitPrice!.toJson();
    }
    if (factor?.value != null) {
      json['factor'] = factor!.toJson();
    }
    if (factorElement != null) {
      json['_factor'] = factorElement!.toJson();
    }
    if (net != null) {
      json['net'] = net!.toJson();
    }
    if (udi != null && udi!.isNotEmpty) {
      json['udi'] = udi!.map((Reference v) => v.toJson()).toList();
    }
    if (noteNumber != null && noteNumber!.isNotEmpty) {
      json['noteNumber'] =
          noteNumber!.map((FhirPositiveInt v) => v.toJson()).toList();
    }
    if (noteNumberElement != null && noteNumberElement!.isNotEmpty) {
      json['_noteNumber'] =
          noteNumberElement!.map((Element v) => v.toJson()).toList();
    }
    if (adjudication != null && adjudication!.isNotEmpty) {
      json['adjudication'] = adjudication!
          .map((ExplanationOfBenefitAdjudication v) => v.toJson())
          .toList();
    }
    if (subDetail != null && subDetail!.isNotEmpty) {
      json['subDetail'] = subDetail!
          .map((ExplanationOfBenefitSubDetail v) => v.toJson())
          .toList();
    }
    return json;
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
}

/// [ExplanationOfBenefitSubDetail]
/// Third-tier of goods and services.
class ExplanationOfBenefitSubDetail extends BackboneElement {
  /// Primary constructor for [ExplanationOfBenefitSubDetail]

  ExplanationOfBenefitSubDetail({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequence,

    /// Extensions for [sequence]
    this.sequenceElement,
    this.revenue,
    this.category,
    required this.productOrService,
    this.modifier,
    this.programCode,
    this.quantity,
    this.unitPrice,
    this.factor,

    /// Extensions for [factor]
    this.factorElement,
    this.net,
    this.udi,
    this.noteNumber,

    /// Extensions for [noteNumber]
    this.noteNumberElement,
    this.adjudication,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitSubDetail.fromJson(Map<String, dynamic> json) {
    return ExplanationOfBenefitSubDetail(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      sequence: FhirPositiveInt.fromJson(json['sequence']),
      sequenceElement: json['_sequence'] != null
          ? Element.fromJson(
              json['_sequence'] as Map<String, dynamic>,
            )
          : null,
      revenue: json['revenue'] != null
          ? CodeableConcept.fromJson(
              json['revenue'] as Map<String, dynamic>,
            )
          : null,
      category: json['category'] != null
          ? CodeableConcept.fromJson(
              json['category'] as Map<String, dynamic>,
            )
          : null,
      productOrService: CodeableConcept.fromJson(
        json['productOrService'] as Map<String, dynamic>,
      ),
      modifier: json['modifier'] != null
          ? (json['modifier'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      programCode: json['programCode'] != null
          ? (json['programCode'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      quantity: json['quantity'] != null
          ? Quantity.fromJson(
              json['quantity'] as Map<String, dynamic>,
            )
          : null,
      unitPrice: json['unitPrice'] != null
          ? Money.fromJson(
              json['unitPrice'] as Map<String, dynamic>,
            )
          : null,
      factor:
          json['factor'] != null ? FhirDecimal.fromJson(json['factor']) : null,
      factorElement: json['_factor'] != null
          ? Element.fromJson(
              json['_factor'] as Map<String, dynamic>,
            )
          : null,
      net: json['net'] != null
          ? Money.fromJson(
              json['net'] as Map<String, dynamic>,
            )
          : null,
      udi: json['udi'] != null
          ? (json['udi'] as List<dynamic>)
              .map<Reference>(
                (dynamic v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      noteNumber: json['noteNumber'] != null
          ? (json['noteNumber'] as List<dynamic>)
              .map<FhirPositiveInt>(
                (dynamic v) => FhirPositiveInt.fromJson(v as dynamic),
              )
              .toList()
          : null,
      noteNumberElement: json['_noteNumber'] != null
          ? (json['_noteNumber'] as List<dynamic>)
              .map<Element>(
                (dynamic v) => Element.fromJson(v as Map<String, dynamic>),
              )
              .toList()
          : null,
      adjudication: json['adjudication'] != null
          ? (json['adjudication'] as List<dynamic>)
              .map<ExplanationOfBenefitAdjudication>(
                (dynamic v) => ExplanationOfBenefitAdjudication.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ExplanationOfBenefitSubDetail] from a [String] or [YamlMap] object
  factory ExplanationOfBenefitSubDetail.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefitSubDetail.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ExplanationOfBenefitSubDetail.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ExplanationOfBenefitSubDetail cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ExplanationOfBenefitSubDetail] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitSubDetail.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExplanationOfBenefitSubDetail.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitSubDetail';

  /// [sequence]
  /// A claim detail line. Either a simple (a product or service) or a
  /// 'group' of sub-details which are simple items.
  final FhirPositiveInt sequence;

  /// Extensions for [sequence]
  final Element? sequenceElement;

  /// [revenue]
  /// The type of revenue or cost center providing the product and/or
  /// service.
  final CodeableConcept? revenue;

  /// [category]
  /// Code to identify the general type of benefits under which products and
  /// services are provided.
  final CodeableConcept? category;

  /// [productOrService]
  /// When the value is a group code then this item collects a set of related
  /// claim details, otherwise this contains the product, service, drug or
  /// other billing code for the item.
  final CodeableConcept productOrService;

  /// [modifier]
  /// Item typification or modifiers codes to convey additional context for
  /// the product or service.
  final List<CodeableConcept>? modifier;

  /// [programCode]
  /// Identifies the program under which this may be recovered.
  final List<CodeableConcept>? programCode;

  /// [quantity]
  /// The number of repetitions of a service or product.
  final Quantity? quantity;

  /// [unitPrice]
  /// If the item is not a group then this is the fee for the product or
  /// service, otherwise this is the total of the fees for the details of the
  /// group.
  final Money? unitPrice;

  /// [factor]
  /// A real number that represents a multiplier used in determining the
  /// overall value of services delivered and/or goods received. The concept
  /// of a Factor allows for a discount or surcharge multiplier to be applied
  /// to a monetary amount.
  final FhirDecimal? factor;

  /// Extensions for [factor]
  final Element? factorElement;

  /// [net]
  /// The quantity times the unit price for an additional service or product
  /// or charge.
  final Money? net;

  /// [udi]
  /// Unique Device Identifiers associated with this line item.
  final List<Reference>? udi;

  /// [noteNumber]
  /// The numbers associated with notes below which apply to the adjudication
  /// of this item.
  final List<FhirPositiveInt>? noteNumber;

  /// Extensions for [noteNumber]
  final List<Element>? noteNumberElement;

  /// [adjudication]
  /// The adjudication results.
  final List<ExplanationOfBenefitAdjudication>? adjudication;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['sequence'] = sequence.toJson();
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
          modifier!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (programCode != null && programCode!.isNotEmpty) {
      json['programCode'] =
          programCode!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (quantity != null) {
      json['quantity'] = quantity!.toJson();
    }
    if (unitPrice != null) {
      json['unitPrice'] = unitPrice!.toJson();
    }
    if (factor?.value != null) {
      json['factor'] = factor!.toJson();
    }
    if (factorElement != null) {
      json['_factor'] = factorElement!.toJson();
    }
    if (net != null) {
      json['net'] = net!.toJson();
    }
    if (udi != null && udi!.isNotEmpty) {
      json['udi'] = udi!.map((Reference v) => v.toJson()).toList();
    }
    if (noteNumber != null && noteNumber!.isNotEmpty) {
      json['noteNumber'] =
          noteNumber!.map((FhirPositiveInt v) => v.toJson()).toList();
    }
    if (noteNumberElement != null && noteNumberElement!.isNotEmpty) {
      json['_noteNumber'] =
          noteNumberElement!.map((Element v) => v.toJson()).toList();
    }
    if (adjudication != null && adjudication!.isNotEmpty) {
      json['adjudication'] = adjudication!
          .map((ExplanationOfBenefitAdjudication v) => v.toJson())
          .toList();
    }
    return json;
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
}

/// [ExplanationOfBenefitAddItem]
/// The first-tier service adjudications for payor added product or service
/// lines.
class ExplanationOfBenefitAddItem extends BackboneElement {
  /// Primary constructor for [ExplanationOfBenefitAddItem]

  ExplanationOfBenefitAddItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.itemSequence,

    /// Extensions for [itemSequence]
    this.itemSequenceElement,
    this.detailSequence,

    /// Extensions for [detailSequence]
    this.detailSequenceElement,
    this.subDetailSequence,

    /// Extensions for [subDetailSequence]
    this.subDetailSequenceElement,
    this.provider,
    required this.productOrService,
    this.modifier,
    this.programCode,
    this.servicedDate,

    /// Extensions for [servicedDate]
    this.servicedDateElement,
    this.servicedPeriod,
    this.locationCodeableConcept,
    this.locationAddress,
    this.locationReference,
    this.quantity,
    this.unitPrice,
    this.factor,

    /// Extensions for [factor]
    this.factorElement,
    this.net,
    this.bodySite,
    this.subSite,
    this.noteNumber,

    /// Extensions for [noteNumber]
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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitAddItem.fromJson(Map<String, dynamic> json) {
    return ExplanationOfBenefitAddItem(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      itemSequence: json['itemSequence'] != null
          ? (json['itemSequence'] as List<dynamic>)
              .map<FhirPositiveInt>(
                (dynamic v) => FhirPositiveInt.fromJson(v as dynamic),
              )
              .toList()
          : null,
      itemSequenceElement: json['_itemSequence'] != null
          ? (json['_itemSequence'] as List<dynamic>)
              .map<Element>(
                (dynamic v) => Element.fromJson(v as Map<String, dynamic>),
              )
              .toList()
          : null,
      detailSequence: json['detailSequence'] != null
          ? (json['detailSequence'] as List<dynamic>)
              .map<FhirPositiveInt>(
                (dynamic v) => FhirPositiveInt.fromJson(v as dynamic),
              )
              .toList()
          : null,
      detailSequenceElement: json['_detailSequence'] != null
          ? (json['_detailSequence'] as List<dynamic>)
              .map<Element>(
                (dynamic v) => Element.fromJson(v as Map<String, dynamic>),
              )
              .toList()
          : null,
      subDetailSequence: json['subDetailSequence'] != null
          ? (json['subDetailSequence'] as List<dynamic>)
              .map<FhirPositiveInt>(
                (dynamic v) => FhirPositiveInt.fromJson(v as dynamic),
              )
              .toList()
          : null,
      subDetailSequenceElement: json['_subDetailSequence'] != null
          ? (json['_subDetailSequence'] as List<dynamic>)
              .map<Element>(
                (dynamic v) => Element.fromJson(v as Map<String, dynamic>),
              )
              .toList()
          : null,
      provider: json['provider'] != null
          ? (json['provider'] as List<dynamic>)
              .map<Reference>(
                (dynamic v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      productOrService: CodeableConcept.fromJson(
        json['productOrService'] as Map<String, dynamic>,
      ),
      modifier: json['modifier'] != null
          ? (json['modifier'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      programCode: json['programCode'] != null
          ? (json['programCode'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      servicedDate: json['servicedDate'] != null
          ? FhirDate.fromJson(json['servicedDate'])
          : null,
      servicedDateElement: json['_servicedDate'] != null
          ? Element.fromJson(
              json['_servicedDate'] as Map<String, dynamic>,
            )
          : null,
      servicedPeriod: json['servicedPeriod'] != null
          ? Period.fromJson(
              json['servicedPeriod'] as Map<String, dynamic>,
            )
          : null,
      locationCodeableConcept: json['locationCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['locationCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      locationAddress: json['locationAddress'] != null
          ? Address.fromJson(
              json['locationAddress'] as Map<String, dynamic>,
            )
          : null,
      locationReference: json['locationReference'] != null
          ? Reference.fromJson(
              json['locationReference'] as Map<String, dynamic>,
            )
          : null,
      quantity: json['quantity'] != null
          ? Quantity.fromJson(
              json['quantity'] as Map<String, dynamic>,
            )
          : null,
      unitPrice: json['unitPrice'] != null
          ? Money.fromJson(
              json['unitPrice'] as Map<String, dynamic>,
            )
          : null,
      factor:
          json['factor'] != null ? FhirDecimal.fromJson(json['factor']) : null,
      factorElement: json['_factor'] != null
          ? Element.fromJson(
              json['_factor'] as Map<String, dynamic>,
            )
          : null,
      net: json['net'] != null
          ? Money.fromJson(
              json['net'] as Map<String, dynamic>,
            )
          : null,
      bodySite: json['bodySite'] != null
          ? CodeableConcept.fromJson(
              json['bodySite'] as Map<String, dynamic>,
            )
          : null,
      subSite: json['subSite'] != null
          ? (json['subSite'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      noteNumber: json['noteNumber'] != null
          ? (json['noteNumber'] as List<dynamic>)
              .map<FhirPositiveInt>(
                (dynamic v) => FhirPositiveInt.fromJson(v as dynamic),
              )
              .toList()
          : null,
      noteNumberElement: json['_noteNumber'] != null
          ? (json['_noteNumber'] as List<dynamic>)
              .map<Element>(
                (dynamic v) => Element.fromJson(v as Map<String, dynamic>),
              )
              .toList()
          : null,
      adjudication: json['adjudication'] != null
          ? (json['adjudication'] as List<dynamic>)
              .map<ExplanationOfBenefitAdjudication>(
                (dynamic v) => ExplanationOfBenefitAdjudication.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      detail: json['detail'] != null
          ? (json['detail'] as List<dynamic>)
              .map<ExplanationOfBenefitDetail>(
                (dynamic v) => ExplanationOfBenefitDetail.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ExplanationOfBenefitAddItem] from a [String] or [YamlMap] object
  factory ExplanationOfBenefitAddItem.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefitAddItem.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ExplanationOfBenefitAddItem.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ExplanationOfBenefitAddItem cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ExplanationOfBenefitAddItem] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitAddItem.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExplanationOfBenefitAddItem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitAddItem';

  /// [itemSequence]
  /// Claim items which this service line is intended to replace.
  final List<FhirPositiveInt>? itemSequence;

  /// Extensions for [itemSequence]
  final List<Element>? itemSequenceElement;

  /// [detailSequence]
  /// The sequence number of the details within the claim item which this
  /// line is intended to replace.
  final List<FhirPositiveInt>? detailSequence;

  /// Extensions for [detailSequence]
  final List<Element>? detailSequenceElement;

  /// [subDetailSequence]
  /// The sequence number of the sub-details woithin the details within the
  /// claim item which this line is intended to replace.
  final List<FhirPositiveInt>? subDetailSequence;

  /// Extensions for [subDetailSequence]
  final List<Element>? subDetailSequenceElement;

  /// [provider]
  /// The providers who are authorized for the services rendered to the
  /// patient.
  final List<Reference>? provider;

  /// [productOrService]
  /// When the value is a group code then this item collects a set of related
  /// claim details, otherwise this contains the product, service, drug or
  /// other billing code for the item.
  final CodeableConcept productOrService;

  /// [modifier]
  /// Item typification or modifiers codes to convey additional context for
  /// the product or service.
  final List<CodeableConcept>? modifier;

  /// [programCode]
  /// Identifies the program under which this may be recovered.
  final List<CodeableConcept>? programCode;

  /// [servicedDate]
  /// The date or dates when the service or product was supplied, performed
  /// or completed.
  final FhirDate? servicedDate;

  /// Extensions for [servicedDate]
  final Element? servicedDateElement;

  /// [servicedPeriod]
  /// The date or dates when the service or product was supplied, performed
  /// or completed.
  final Period? servicedPeriod;

  /// [locationCodeableConcept]
  /// Where the product or service was provided.
  final CodeableConcept? locationCodeableConcept;

  /// [locationAddress]
  /// Where the product or service was provided.
  final Address? locationAddress;

  /// [locationReference]
  /// Where the product or service was provided.
  final Reference? locationReference;

  /// [quantity]
  /// The number of repetitions of a service or product.
  final Quantity? quantity;

  /// [unitPrice]
  /// If the item is not a group then this is the fee for the product or
  /// service, otherwise this is the total of the fees for the details of the
  /// group.
  final Money? unitPrice;

  /// [factor]
  /// A real number that represents a multiplier used in determining the
  /// overall value of services delivered and/or goods received. The concept
  /// of a Factor allows for a discount or surcharge multiplier to be applied
  /// to a monetary amount.
  final FhirDecimal? factor;

  /// Extensions for [factor]
  final Element? factorElement;

  /// [net]
  /// The quantity times the unit price for an additional service or product
  /// or charge.
  final Money? net;

  /// [bodySite]
  /// Physical service site on the patient (limb, tooth, etc.).
  final CodeableConcept? bodySite;

  /// [subSite]
  /// A region or surface of the bodySite, e.g. limb region or tooth
  /// surface(s).
  final List<CodeableConcept>? subSite;

  /// [noteNumber]
  /// The numbers associated with notes below which apply to the adjudication
  /// of this item.
  final List<FhirPositiveInt>? noteNumber;

  /// Extensions for [noteNumber]
  final List<Element>? noteNumberElement;

  /// [adjudication]
  /// The adjudication results.
  final List<ExplanationOfBenefitAdjudication>? adjudication;

  /// [detail]
  /// The second-tier service adjudications for payor added services.
  final List<ExplanationOfBenefitDetail>? detail;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (itemSequence != null && itemSequence!.isNotEmpty) {
      json['itemSequence'] =
          itemSequence!.map((FhirPositiveInt v) => v.toJson()).toList();
    }
    if (itemSequenceElement != null && itemSequenceElement!.isNotEmpty) {
      json['_itemSequence'] =
          itemSequenceElement!.map((Element v) => v.toJson()).toList();
    }
    if (detailSequence != null && detailSequence!.isNotEmpty) {
      json['detailSequence'] =
          detailSequence!.map((FhirPositiveInt v) => v.toJson()).toList();
    }
    if (detailSequenceElement != null && detailSequenceElement!.isNotEmpty) {
      json['_detailSequence'] =
          detailSequenceElement!.map((Element v) => v.toJson()).toList();
    }
    if (subDetailSequence != null && subDetailSequence!.isNotEmpty) {
      json['subDetailSequence'] =
          subDetailSequence!.map((FhirPositiveInt v) => v.toJson()).toList();
    }
    if (subDetailSequenceElement != null &&
        subDetailSequenceElement!.isNotEmpty) {
      json['_subDetailSequence'] =
          subDetailSequenceElement!.map((Element v) => v.toJson()).toList();
    }
    if (provider != null && provider!.isNotEmpty) {
      json['provider'] = provider!.map((Reference v) => v.toJson()).toList();
    }
    json['productOrService'] = productOrService.toJson();
    if (modifier != null && modifier!.isNotEmpty) {
      json['modifier'] =
          modifier!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (programCode != null && programCode!.isNotEmpty) {
      json['programCode'] =
          programCode!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (servicedDate?.value != null) {
      json['servicedDate'] = servicedDate!.toJson();
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
      json['factor'] = factor!.toJson();
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
          subSite!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (noteNumber != null && noteNumber!.isNotEmpty) {
      json['noteNumber'] =
          noteNumber!.map((FhirPositiveInt v) => v.toJson()).toList();
    }
    if (noteNumberElement != null && noteNumberElement!.isNotEmpty) {
      json['_noteNumber'] =
          noteNumberElement!.map((Element v) => v.toJson()).toList();
    }
    if (adjudication != null && adjudication!.isNotEmpty) {
      json['adjudication'] = adjudication!
          .map((ExplanationOfBenefitAdjudication v) => v.toJson())
          .toList();
    }
    if (detail != null && detail!.isNotEmpty) {
      json['detail'] =
          detail!.map((ExplanationOfBenefitDetail v) => v.toJson()).toList();
    }
    return json;
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
}

/// [ExplanationOfBenefitDetail1]
/// The second-tier service adjudications for payor added services.
class ExplanationOfBenefitDetail1 extends BackboneElement {
  /// Primary constructor for [ExplanationOfBenefitDetail1]

  ExplanationOfBenefitDetail1({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.productOrService,
    this.modifier,
    this.quantity,
    this.unitPrice,
    this.factor,

    /// Extensions for [factor]
    this.factorElement,
    this.net,
    this.noteNumber,

    /// Extensions for [noteNumber]
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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitDetail1.fromJson(Map<String, dynamic> json) {
    return ExplanationOfBenefitDetail1(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      productOrService: CodeableConcept.fromJson(
        json['productOrService'] as Map<String, dynamic>,
      ),
      modifier: json['modifier'] != null
          ? (json['modifier'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      quantity: json['quantity'] != null
          ? Quantity.fromJson(
              json['quantity'] as Map<String, dynamic>,
            )
          : null,
      unitPrice: json['unitPrice'] != null
          ? Money.fromJson(
              json['unitPrice'] as Map<String, dynamic>,
            )
          : null,
      factor:
          json['factor'] != null ? FhirDecimal.fromJson(json['factor']) : null,
      factorElement: json['_factor'] != null
          ? Element.fromJson(
              json['_factor'] as Map<String, dynamic>,
            )
          : null,
      net: json['net'] != null
          ? Money.fromJson(
              json['net'] as Map<String, dynamic>,
            )
          : null,
      noteNumber: json['noteNumber'] != null
          ? (json['noteNumber'] as List<dynamic>)
              .map<FhirPositiveInt>(
                (dynamic v) => FhirPositiveInt.fromJson(v as dynamic),
              )
              .toList()
          : null,
      noteNumberElement: json['_noteNumber'] != null
          ? (json['_noteNumber'] as List<dynamic>)
              .map<Element>(
                (dynamic v) => Element.fromJson(v as Map<String, dynamic>),
              )
              .toList()
          : null,
      adjudication: json['adjudication'] != null
          ? (json['adjudication'] as List<dynamic>)
              .map<ExplanationOfBenefitAdjudication>(
                (dynamic v) => ExplanationOfBenefitAdjudication.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      subDetail: json['subDetail'] != null
          ? (json['subDetail'] as List<dynamic>)
              .map<ExplanationOfBenefitSubDetail>(
                (dynamic v) => ExplanationOfBenefitSubDetail.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ExplanationOfBenefitDetail1] from a [String] or [YamlMap] object
  factory ExplanationOfBenefitDetail1.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefitDetail1.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ExplanationOfBenefitDetail1.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ExplanationOfBenefitDetail1 cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ExplanationOfBenefitDetail1] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitDetail1.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExplanationOfBenefitDetail1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitDetail1';

  /// [productOrService]
  /// When the value is a group code then this item collects a set of related
  /// claim details, otherwise this contains the product, service, drug or
  /// other billing code for the item.
  final CodeableConcept productOrService;

  /// [modifier]
  /// Item typification or modifiers codes to convey additional context for
  /// the product or service.
  final List<CodeableConcept>? modifier;

  /// [quantity]
  /// The number of repetitions of a service or product.
  final Quantity? quantity;

  /// [unitPrice]
  /// If the item is not a group then this is the fee for the product or
  /// service, otherwise this is the total of the fees for the details of the
  /// group.
  final Money? unitPrice;

  /// [factor]
  /// A real number that represents a multiplier used in determining the
  /// overall value of services delivered and/or goods received. The concept
  /// of a Factor allows for a discount or surcharge multiplier to be applied
  /// to a monetary amount.
  final FhirDecimal? factor;

  /// Extensions for [factor]
  final Element? factorElement;

  /// [net]
  /// The quantity times the unit price for an additional service or product
  /// or charge.
  final Money? net;

  /// [noteNumber]
  /// The numbers associated with notes below which apply to the adjudication
  /// of this item.
  final List<FhirPositiveInt>? noteNumber;

  /// Extensions for [noteNumber]
  final List<Element>? noteNumberElement;

  /// [adjudication]
  /// The adjudication results.
  final List<ExplanationOfBenefitAdjudication>? adjudication;

  /// [subDetail]
  /// The third-tier service adjudications for payor added services.
  final List<ExplanationOfBenefitSubDetail>? subDetail;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['productOrService'] = productOrService.toJson();
    if (modifier != null && modifier!.isNotEmpty) {
      json['modifier'] =
          modifier!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (quantity != null) {
      json['quantity'] = quantity!.toJson();
    }
    if (unitPrice != null) {
      json['unitPrice'] = unitPrice!.toJson();
    }
    if (factor?.value != null) {
      json['factor'] = factor!.toJson();
    }
    if (factorElement != null) {
      json['_factor'] = factorElement!.toJson();
    }
    if (net != null) {
      json['net'] = net!.toJson();
    }
    if (noteNumber != null && noteNumber!.isNotEmpty) {
      json['noteNumber'] =
          noteNumber!.map((FhirPositiveInt v) => v.toJson()).toList();
    }
    if (noteNumberElement != null && noteNumberElement!.isNotEmpty) {
      json['_noteNumber'] =
          noteNumberElement!.map((Element v) => v.toJson()).toList();
    }
    if (adjudication != null && adjudication!.isNotEmpty) {
      json['adjudication'] = adjudication!
          .map((ExplanationOfBenefitAdjudication v) => v.toJson())
          .toList();
    }
    if (subDetail != null && subDetail!.isNotEmpty) {
      json['subDetail'] = subDetail!
          .map((ExplanationOfBenefitSubDetail v) => v.toJson())
          .toList();
    }
    return json;
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
}

/// [ExplanationOfBenefitSubDetail1]
/// The third-tier service adjudications for payor added services.
class ExplanationOfBenefitSubDetail1 extends BackboneElement {
  /// Primary constructor for [ExplanationOfBenefitSubDetail1]

  ExplanationOfBenefitSubDetail1({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.productOrService,
    this.modifier,
    this.quantity,
    this.unitPrice,
    this.factor,

    /// Extensions for [factor]
    this.factorElement,
    this.net,
    this.noteNumber,

    /// Extensions for [noteNumber]
    this.noteNumberElement,
    this.adjudication,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitSubDetail1.fromJson(Map<String, dynamic> json) {
    return ExplanationOfBenefitSubDetail1(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      productOrService: CodeableConcept.fromJson(
        json['productOrService'] as Map<String, dynamic>,
      ),
      modifier: json['modifier'] != null
          ? (json['modifier'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      quantity: json['quantity'] != null
          ? Quantity.fromJson(
              json['quantity'] as Map<String, dynamic>,
            )
          : null,
      unitPrice: json['unitPrice'] != null
          ? Money.fromJson(
              json['unitPrice'] as Map<String, dynamic>,
            )
          : null,
      factor:
          json['factor'] != null ? FhirDecimal.fromJson(json['factor']) : null,
      factorElement: json['_factor'] != null
          ? Element.fromJson(
              json['_factor'] as Map<String, dynamic>,
            )
          : null,
      net: json['net'] != null
          ? Money.fromJson(
              json['net'] as Map<String, dynamic>,
            )
          : null,
      noteNumber: json['noteNumber'] != null
          ? (json['noteNumber'] as List<dynamic>)
              .map<FhirPositiveInt>(
                (dynamic v) => FhirPositiveInt.fromJson(v as dynamic),
              )
              .toList()
          : null,
      noteNumberElement: json['_noteNumber'] != null
          ? (json['_noteNumber'] as List<dynamic>)
              .map<Element>(
                (dynamic v) => Element.fromJson(v as Map<String, dynamic>),
              )
              .toList()
          : null,
      adjudication: json['adjudication'] != null
          ? (json['adjudication'] as List<dynamic>)
              .map<ExplanationOfBenefitAdjudication>(
                (dynamic v) => ExplanationOfBenefitAdjudication.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ExplanationOfBenefitSubDetail1] from a [String] or [YamlMap] object
  factory ExplanationOfBenefitSubDetail1.fromYaml(dynamic yaml) => yaml
          is String
      ? ExplanationOfBenefitSubDetail1.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ExplanationOfBenefitSubDetail1.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ExplanationOfBenefitSubDetail1 cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ExplanationOfBenefitSubDetail1] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitSubDetail1.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExplanationOfBenefitSubDetail1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitSubDetail1';

  /// [productOrService]
  /// When the value is a group code then this item collects a set of related
  /// claim details, otherwise this contains the product, service, drug or
  /// other billing code for the item.
  final CodeableConcept productOrService;

  /// [modifier]
  /// Item typification or modifiers codes to convey additional context for
  /// the product or service.
  final List<CodeableConcept>? modifier;

  /// [quantity]
  /// The number of repetitions of a service or product.
  final Quantity? quantity;

  /// [unitPrice]
  /// If the item is not a group then this is the fee for the product or
  /// service, otherwise this is the total of the fees for the details of the
  /// group.
  final Money? unitPrice;

  /// [factor]
  /// A real number that represents a multiplier used in determining the
  /// overall value of services delivered and/or goods received. The concept
  /// of a Factor allows for a discount or surcharge multiplier to be applied
  /// to a monetary amount.
  final FhirDecimal? factor;

  /// Extensions for [factor]
  final Element? factorElement;

  /// [net]
  /// The quantity times the unit price for an additional service or product
  /// or charge.
  final Money? net;

  /// [noteNumber]
  /// The numbers associated with notes below which apply to the adjudication
  /// of this item.
  final List<FhirPositiveInt>? noteNumber;

  /// Extensions for [noteNumber]
  final List<Element>? noteNumberElement;

  /// [adjudication]
  /// The adjudication results.
  final List<ExplanationOfBenefitAdjudication>? adjudication;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['productOrService'] = productOrService.toJson();
    if (modifier != null && modifier!.isNotEmpty) {
      json['modifier'] =
          modifier!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (quantity != null) {
      json['quantity'] = quantity!.toJson();
    }
    if (unitPrice != null) {
      json['unitPrice'] = unitPrice!.toJson();
    }
    if (factor?.value != null) {
      json['factor'] = factor!.toJson();
    }
    if (factorElement != null) {
      json['_factor'] = factorElement!.toJson();
    }
    if (net != null) {
      json['net'] = net!.toJson();
    }
    if (noteNumber != null && noteNumber!.isNotEmpty) {
      json['noteNumber'] =
          noteNumber!.map((FhirPositiveInt v) => v.toJson()).toList();
    }
    if (noteNumberElement != null && noteNumberElement!.isNotEmpty) {
      json['_noteNumber'] =
          noteNumberElement!.map((Element v) => v.toJson()).toList();
    }
    if (adjudication != null && adjudication!.isNotEmpty) {
      json['adjudication'] = adjudication!
          .map((ExplanationOfBenefitAdjudication v) => v.toJson())
          .toList();
    }
    return json;
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
}

/// [ExplanationOfBenefitTotal]
/// Categorized monetary totals for the adjudication.
class ExplanationOfBenefitTotal extends BackboneElement {
  /// Primary constructor for [ExplanationOfBenefitTotal]

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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitTotal.fromJson(Map<String, dynamic> json) {
    return ExplanationOfBenefitTotal(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      category: CodeableConcept.fromJson(
        json['category'] as Map<String, dynamic>,
      ),
      amount: Money.fromJson(
        json['amount'] as Map<String, dynamic>,
      ),
    );
  }

  /// Deserialize [ExplanationOfBenefitTotal] from a [String] or [YamlMap] object
  factory ExplanationOfBenefitTotal.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefitTotal.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ExplanationOfBenefitTotal.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ExplanationOfBenefitTotal cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ExplanationOfBenefitTotal] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitTotal.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExplanationOfBenefitTotal.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitTotal';

  /// [category]
  /// A code to indicate the information type of this adjudication record.
  /// Information types may include: the value submitted, maximum values or
  /// percentages allowed or payable under the plan, amounts that the patient
  /// is responsible for in aggregate or pertaining to this item, amounts
  /// paid by other coverages, and the benefit payable for this item.
  final CodeableConcept category;

  /// [amount]
  /// Monetary total amount associated with the category.
  final Money amount;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['category'] = category.toJson();
    json['amount'] = amount.toJson();
    return json;
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
}

/// [ExplanationOfBenefitPayment]
/// Payment details for the adjudication of the claim.
class ExplanationOfBenefitPayment extends BackboneElement {
  /// Primary constructor for [ExplanationOfBenefitPayment]

  ExplanationOfBenefitPayment({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.adjustment,
    this.adjustmentReason,
    this.date,

    /// Extensions for [date]
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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitPayment.fromJson(Map<String, dynamic> json) {
    return ExplanationOfBenefitPayment(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      adjustment: json['adjustment'] != null
          ? Money.fromJson(
              json['adjustment'] as Map<String, dynamic>,
            )
          : null,
      adjustmentReason: json['adjustmentReason'] != null
          ? CodeableConcept.fromJson(
              json['adjustmentReason'] as Map<String, dynamic>,
            )
          : null,
      date: json['date'] != null ? FhirDate.fromJson(json['date']) : null,
      dateElement: json['_date'] != null
          ? Element.fromJson(
              json['_date'] as Map<String, dynamic>,
            )
          : null,
      amount: json['amount'] != null
          ? Money.fromJson(
              json['amount'] as Map<String, dynamic>,
            )
          : null,
      identifier: json['identifier'] != null
          ? Identifier.fromJson(
              json['identifier'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [ExplanationOfBenefitPayment] from a [String] or [YamlMap] object
  factory ExplanationOfBenefitPayment.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefitPayment.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ExplanationOfBenefitPayment.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ExplanationOfBenefitPayment cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ExplanationOfBenefitPayment] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitPayment.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExplanationOfBenefitPayment.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitPayment';

  /// [type]
  /// Whether this represents partial or complete payment of the benefits
  /// payable.
  final CodeableConcept? type;

  /// [adjustment]
  /// Total amount of all adjustments to this payment included in this
  /// transaction which are not related to this claim's adjudication.
  final Money? adjustment;

  /// [adjustmentReason]
  /// Reason for the payment adjustment.
  final CodeableConcept? adjustmentReason;

  /// [date]
  /// Estimated date the payment will be issued or the actual issue date of
  /// payment.
  final FhirDate? date;

  /// Extensions for [date]
  final Element? dateElement;

  /// [amount]
  /// Benefits payable less any payment adjustment.
  final Money? amount;

  /// [identifier]
  /// Issuer's unique identifier for the payment instrument.
  final Identifier? identifier;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
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
      json['date'] = date!.toJson();
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
}

/// [ExplanationOfBenefitProcessNote]
/// A note that describes or explains adjudication results in a human
/// readable form.
class ExplanationOfBenefitProcessNote extends BackboneElement {
  /// Primary constructor for [ExplanationOfBenefitProcessNote]

  ExplanationOfBenefitProcessNote({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.number,

    /// Extensions for [number]
    this.numberElement,
    this.type,

    /// Extensions for [type]
    this.typeElement,
    this.text,

    /// Extensions for [text]
    this.textElement,
    this.language,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitProcessNote.fromJson(Map<String, dynamic> json) {
    return ExplanationOfBenefitProcessNote(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      number: json['number'] != null
          ? FhirPositiveInt.fromJson(json['number'])
          : null,
      numberElement: json['_number'] != null
          ? Element.fromJson(
              json['_number'] as Map<String, dynamic>,
            )
          : null,
      type: json['type'] != null ? NoteType.fromJson(json['type']) : null,
      typeElement: json['_type'] != null
          ? Element.fromJson(
              json['_type'] as Map<String, dynamic>,
            )
          : null,
      text: json['text'] != null ? FhirString.fromJson(json['text']) : null,
      textElement: json['_text'] != null
          ? Element.fromJson(
              json['_text'] as Map<String, dynamic>,
            )
          : null,
      language: json['language'] != null
          ? CodeableConcept.fromJson(
              json['language'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [ExplanationOfBenefitProcessNote] from a [String] or [YamlMap] object
  factory ExplanationOfBenefitProcessNote.fromYaml(dynamic yaml) => yaml
          is String
      ? ExplanationOfBenefitProcessNote.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ExplanationOfBenefitProcessNote.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ExplanationOfBenefitProcessNote cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ExplanationOfBenefitProcessNote] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitProcessNote.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExplanationOfBenefitProcessNote.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitProcessNote';

  /// [number]
  /// A number to uniquely identify a note entry.
  final FhirPositiveInt? number;

  /// Extensions for [number]
  final Element? numberElement;

  /// [type]
  /// The business purpose of the note text.
  final NoteType? type;

  /// Extensions for [type]
  final Element? typeElement;

  /// [text]
  /// The explanation or description associated with the processing.
  final FhirString? text;

  /// Extensions for [text]
  final Element? textElement;

  /// [language]
  /// A code to define the language used in the text of the note.
  final CodeableConcept? language;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (number?.value != null) {
      json['number'] = number!.toJson();
    }
    if (numberElement != null) {
      json['_number'] = numberElement!.toJson();
    }
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (text?.value != null) {
      json['text'] = text!.toJson();
    }
    if (textElement != null) {
      json['_text'] = textElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    return json;
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
}

/// [ExplanationOfBenefitBenefitBalance]
/// Balance by Benefit Category.
class ExplanationOfBenefitBenefitBalance extends BackboneElement {
  /// Primary constructor for [ExplanationOfBenefitBenefitBalance]

  ExplanationOfBenefitBenefitBalance({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.category,
    this.excluded,

    /// Extensions for [excluded]
    this.excludedElement,
    this.name,

    /// Extensions for [name]
    this.nameElement,
    this.description,

    /// Extensions for [description]
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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitBenefitBalance.fromJson(
      Map<String, dynamic> json) {
    return ExplanationOfBenefitBenefitBalance(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      category: CodeableConcept.fromJson(
        json['category'] as Map<String, dynamic>,
      ),
      excluded: json['excluded'] != null
          ? FhirBoolean.fromJson(json['excluded'])
          : null,
      excludedElement: json['_excluded'] != null
          ? Element.fromJson(
              json['_excluded'] as Map<String, dynamic>,
            )
          : null,
      name: json['name'] != null ? FhirString.fromJson(json['name']) : null,
      nameElement: json['_name'] != null
          ? Element.fromJson(
              json['_name'] as Map<String, dynamic>,
            )
          : null,
      description: json['description'] != null
          ? FhirString.fromJson(json['description'])
          : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(
              json['_description'] as Map<String, dynamic>,
            )
          : null,
      network: json['network'] != null
          ? CodeableConcept.fromJson(
              json['network'] as Map<String, dynamic>,
            )
          : null,
      unit: json['unit'] != null
          ? CodeableConcept.fromJson(
              json['unit'] as Map<String, dynamic>,
            )
          : null,
      term: json['term'] != null
          ? CodeableConcept.fromJson(
              json['term'] as Map<String, dynamic>,
            )
          : null,
      financial: json['financial'] != null
          ? (json['financial'] as List<dynamic>)
              .map<ExplanationOfBenefitFinancial>(
                (dynamic v) => ExplanationOfBenefitFinancial.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ExplanationOfBenefitBenefitBalance] from a [String] or [YamlMap] object
  factory ExplanationOfBenefitBenefitBalance.fromYaml(dynamic yaml) => yaml
          is String
      ? ExplanationOfBenefitBenefitBalance.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ExplanationOfBenefitBenefitBalance.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ExplanationOfBenefitBenefitBalance cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ExplanationOfBenefitBenefitBalance] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitBenefitBalance.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExplanationOfBenefitBenefitBalance.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitBenefitBalance';

  /// [category]
  /// Code to identify the general type of benefits under which products and
  /// services are provided.
  final CodeableConcept category;

  /// [excluded]
  /// True if the indicated class of service is excluded from the plan,
  /// missing or False indicates the product or service is included in the
  /// coverage.
  final FhirBoolean? excluded;

  /// Extensions for [excluded]
  final Element? excludedElement;

  /// [name]
  /// A short name or tag for the benefit.
  final FhirString? name;

  /// Extensions for [name]
  final Element? nameElement;

  /// [description]
  /// A richer description of the benefit or services covered.
  final FhirString? description;

  /// Extensions for [description]
  final Element? descriptionElement;

  /// [network]
  /// Is a flag to indicate whether the benefits refer to in-network
  /// providers or out-of-network providers.
  final CodeableConcept? network;

  /// [unit]
  /// Indicates if the benefits apply to an individual or to the family.
  final CodeableConcept? unit;

  /// [term]
  /// The term or period of the values such as 'maximum lifetime benefit' or
  /// 'maximum annual visits'.
  final CodeableConcept? term;

  /// [financial]
  /// Benefits Used to date.
  final List<ExplanationOfBenefitFinancial>? financial;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['category'] = category.toJson();
    if (excluded?.value != null) {
      json['excluded'] = excluded!.toJson();
    }
    if (excludedElement != null) {
      json['_excluded'] = excludedElement!.toJson();
    }
    if (name?.value != null) {
      json['name'] = name!.toJson();
    }
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    if (description?.value != null) {
      json['description'] = description!.toJson();
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
          .map((ExplanationOfBenefitFinancial v) => v.toJson())
          .toList();
    }
    return json;
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
}

/// [ExplanationOfBenefitFinancial]
/// Benefits Used to date.
class ExplanationOfBenefitFinancial extends BackboneElement {
  /// Primary constructor for [ExplanationOfBenefitFinancial]

  ExplanationOfBenefitFinancial({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.allowedUnsignedInt,

    /// Extensions for [allowedUnsignedInt]
    this.allowedUnsignedIntElement,
    this.allowedString,

    /// Extensions for [allowedString]
    this.allowedStringElement,
    this.allowedMoney,
    this.usedUnsignedInt,

    /// Extensions for [usedUnsignedInt]
    this.usedUnsignedIntElement,
    this.usedMoney,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitFinancial.fromJson(Map<String, dynamic> json) {
    return ExplanationOfBenefitFinancial(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      type: CodeableConcept.fromJson(
        json['type'] as Map<String, dynamic>,
      ),
      allowedUnsignedInt: json['allowedUnsignedInt'] != null
          ? FhirUnsignedInt.fromJson(json['allowedUnsignedInt'])
          : null,
      allowedUnsignedIntElement: json['_allowedUnsignedInt'] != null
          ? Element.fromJson(
              json['_allowedUnsignedInt'] as Map<String, dynamic>,
            )
          : null,
      allowedString: json['allowedString'] != null
          ? FhirString.fromJson(json['allowedString'])
          : null,
      allowedStringElement: json['_allowedString'] != null
          ? Element.fromJson(
              json['_allowedString'] as Map<String, dynamic>,
            )
          : null,
      allowedMoney: json['allowedMoney'] != null
          ? Money.fromJson(
              json['allowedMoney'] as Map<String, dynamic>,
            )
          : null,
      usedUnsignedInt: json['usedUnsignedInt'] != null
          ? FhirUnsignedInt.fromJson(json['usedUnsignedInt'])
          : null,
      usedUnsignedIntElement: json['_usedUnsignedInt'] != null
          ? Element.fromJson(
              json['_usedUnsignedInt'] as Map<String, dynamic>,
            )
          : null,
      usedMoney: json['usedMoney'] != null
          ? Money.fromJson(
              json['usedMoney'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [ExplanationOfBenefitFinancial] from a [String] or [YamlMap] object
  factory ExplanationOfBenefitFinancial.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefitFinancial.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ExplanationOfBenefitFinancial.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ExplanationOfBenefitFinancial cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ExplanationOfBenefitFinancial] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitFinancial.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExplanationOfBenefitFinancial.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitFinancial';

  /// [type]
  /// Classification of benefit being provided.
  final CodeableConcept type;

  /// [allowedUnsignedInt]
  /// The quantity of the benefit which is permitted under the coverage.
  final FhirUnsignedInt? allowedUnsignedInt;

  /// Extensions for [allowedUnsignedInt]
  final Element? allowedUnsignedIntElement;

  /// [allowedString]
  /// The quantity of the benefit which is permitted under the coverage.
  final FhirString? allowedString;

  /// Extensions for [allowedString]
  final Element? allowedStringElement;

  /// [allowedMoney]
  /// The quantity of the benefit which is permitted under the coverage.
  final Money? allowedMoney;

  /// [usedUnsignedInt]
  /// The quantity of the benefit which have been consumed to date.
  final FhirUnsignedInt? usedUnsignedInt;

  /// Extensions for [usedUnsignedInt]
  final Element? usedUnsignedIntElement;

  /// [usedMoney]
  /// The quantity of the benefit which have been consumed to date.
  final Money? usedMoney;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['type'] = type.toJson();
    if (allowedUnsignedInt?.value != null) {
      json['allowedUnsignedInt'] = allowedUnsignedInt!.toJson();
    }
    if (allowedUnsignedIntElement != null) {
      json['_allowedUnsignedInt'] = allowedUnsignedIntElement!.toJson();
    }
    if (allowedString?.value != null) {
      json['allowedString'] = allowedString!.toJson();
    }
    if (allowedStringElement != null) {
      json['_allowedString'] = allowedStringElement!.toJson();
    }
    if (allowedMoney != null) {
      json['allowedMoney'] = allowedMoney!.toJson();
    }
    if (usedUnsignedInt?.value != null) {
      json['usedUnsignedInt'] = usedUnsignedInt!.toJson();
    }
    if (usedUnsignedIntElement != null) {
      json['_usedUnsignedInt'] = usedUnsignedIntElement!.toJson();
    }
    if (usedMoney != null) {
      json['usedMoney'] = usedMoney!.toJson();
    }
    return json;
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
}
