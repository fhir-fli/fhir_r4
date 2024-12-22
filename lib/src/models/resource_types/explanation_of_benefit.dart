import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ExplanationOfBenefit]
/// This resource provides: the claim details; adjudication details from
/// the processing of a Claim; and optionally account balance information,
/// for informing the subscriber of the benefits provided.
class ExplanationOfBenefit extends DomainResource {
  /// Primary constructor for
  /// [ExplanationOfBenefit]

  const ExplanationOfBenefit({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.status,
    required this.type,
    this.subType,
    required this.use,
    required this.patient,
    this.billablePeriod,
    required this.created,
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
    this.disposition,
    this.preAuthRef,
    this.preAuthRefPeriod,
    this.careTeam,
    this.supportingInfo,
    this.diagnosis,
    this.procedure,
    this.precedence,
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
  }) : super(
          resourceType: R4ResourceType.ExplanationOfBenefit,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefit.fromJson(
    Map<String, dynamic> json,
  ) {
    return ExplanationOfBenefit(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<ExplanationOfBenefitStatus>(
        json,
        'status',
        ExplanationOfBenefitStatus.fromJson,
      )!,
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      )!,
      subType: JsonParser.parseObject<CodeableConcept>(
        json,
        'subType',
        CodeableConcept.fromJson,
      ),
      use: JsonParser.parsePrimitive<Use>(
        json,
        'use',
        Use.fromJson,
      )!,
      patient: JsonParser.parseObject<Reference>(
        json,
        'patient',
        Reference.fromJson,
      )!,
      billablePeriod: JsonParser.parseObject<Period>(
        json,
        'billablePeriod',
        Period.fromJson,
      ),
      created: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'created',
        FhirDateTime.fromJson,
      )!,
      enterer: JsonParser.parseObject<Reference>(
        json,
        'enterer',
        Reference.fromJson,
      ),
      insurer: JsonParser.parseObject<Reference>(
        json,
        'insurer',
        Reference.fromJson,
      )!,
      provider: JsonParser.parseObject<Reference>(
        json,
        'provider',
        Reference.fromJson,
      )!,
      priority: JsonParser.parseObject<CodeableConcept>(
        json,
        'priority',
        CodeableConcept.fromJson,
      ),
      fundsReserveRequested: JsonParser.parseObject<CodeableConcept>(
        json,
        'fundsReserveRequested',
        CodeableConcept.fromJson,
      ),
      fundsReserve: JsonParser.parseObject<CodeableConcept>(
        json,
        'fundsReserve',
        CodeableConcept.fromJson,
      ),
      related: (json['related'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitRelated>(
            (v) => ExplanationOfBenefitRelated.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      prescription: JsonParser.parseObject<Reference>(
        json,
        'prescription',
        Reference.fromJson,
      ),
      originalPrescription: JsonParser.parseObject<Reference>(
        json,
        'originalPrescription',
        Reference.fromJson,
      ),
      payee: JsonParser.parseObject<ExplanationOfBenefitPayee>(
        json,
        'payee',
        ExplanationOfBenefitPayee.fromJson,
      ),
      referral: JsonParser.parseObject<Reference>(
        json,
        'referral',
        Reference.fromJson,
      ),
      facility: JsonParser.parseObject<Reference>(
        json,
        'facility',
        Reference.fromJson,
      ),
      claim: JsonParser.parseObject<Reference>(
        json,
        'claim',
        Reference.fromJson,
      ),
      claimResponse: JsonParser.parseObject<Reference>(
        json,
        'claimResponse',
        Reference.fromJson,
      ),
      outcome: JsonParser.parsePrimitive<RemittanceOutcome>(
        json,
        'outcome',
        RemittanceOutcome.fromJson,
      )!,
      disposition: JsonParser.parsePrimitive<FhirString>(
        json,
        'disposition',
        FhirString.fromJson,
      ),
      preAuthRef: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'preAuthRef',
        FhirString.fromJson,
      ),
      preAuthRefPeriod: (json['preAuthRefPeriod'] as List<dynamic>?)
          ?.map<Period>(
            (v) => Period.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      careTeam: (json['careTeam'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitCareTeam>(
            (v) => ExplanationOfBenefitCareTeam.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      supportingInfo: (json['supportingInfo'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitSupportingInfo>(
            (v) => ExplanationOfBenefitSupportingInfo.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      diagnosis: (json['diagnosis'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitDiagnosis>(
            (v) => ExplanationOfBenefitDiagnosis.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      procedure: (json['procedure'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitProcedure>(
            (v) => ExplanationOfBenefitProcedure.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      precedence: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'precedence',
        FhirPositiveInt.fromJson,
      ),
      insurance: (json['insurance'] as List<dynamic>)
          .map<ExplanationOfBenefitInsurance>(
            (v) => ExplanationOfBenefitInsurance.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      accident: JsonParser.parseObject<ExplanationOfBenefitAccident>(
        json,
        'accident',
        ExplanationOfBenefitAccident.fromJson,
      ),
      item: (json['item'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitItem>(
            (v) => ExplanationOfBenefitItem.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      addItem: (json['addItem'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitAddItem>(
            (v) => ExplanationOfBenefitAddItem.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitAdjudication>(
            (v) => ExplanationOfBenefitAdjudication.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      total: (json['total'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitTotal>(
            (v) => ExplanationOfBenefitTotal.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      payment: JsonParser.parseObject<ExplanationOfBenefitPayment>(
        json,
        'payment',
        ExplanationOfBenefitPayment.fromJson,
      ),
      formCode: JsonParser.parseObject<CodeableConcept>(
        json,
        'formCode',
        CodeableConcept.fromJson,
      ),
      form: JsonParser.parseObject<Attachment>(
        json,
        'form',
        Attachment.fromJson,
      ),
      processNote: (json['processNote'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitProcessNote>(
            (v) => ExplanationOfBenefitProcessNote.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      benefitPeriod: JsonParser.parseObject<Period>(
        json,
        'benefitPeriod',
        Period.fromJson,
      ),
      benefitBalance: (json['benefitBalance'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitBenefitBalance>(
            (v) => ExplanationOfBenefitBenefitBalance.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ExplanationOfBenefit]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefit.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefit.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefit.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefit '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefit]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefit.fromJsonString(
    String source,
  ) {
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

  /// [disposition]
  /// A human readable description of the status of the adjudication.
  final FhirString? disposition;

  /// [preAuthRef]
  /// Reference from the Insurer which is used in later communications which
  /// refers to this adjudication.
  final List<FhirString>? preAuthRef;

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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    addField('meta', meta);
    addField('implicitRules', implicitRules);
    addField('language', language);
    addField('text', text);
    addField('contained', contained);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('identifier', identifier);
    addField('status', status);
    addField('type', type);
    addField('subType', subType);
    addField('use', use);
    addField('patient', patient);
    addField('billablePeriod', billablePeriod);
    addField('created', created);
    addField('enterer', enterer);
    addField('insurer', insurer);
    addField('provider', provider);
    addField('priority', priority);
    addField('fundsReserveRequested', fundsReserveRequested);
    addField('fundsReserve', fundsReserve);
    addField('related', related);
    addField('prescription', prescription);
    addField('originalPrescription', originalPrescription);
    addField('payee', payee);
    addField('referral', referral);
    addField('facility', facility);
    addField('claim', claim);
    addField('claimResponse', claimResponse);
    addField('outcome', outcome);
    addField('disposition', disposition);
    addField('preAuthRef', preAuthRef);
    addField('preAuthRefPeriod', preAuthRefPeriod);
    addField('careTeam', careTeam);
    addField('supportingInfo', supportingInfo);
    addField('diagnosis', diagnosis);
    addField('procedure', procedure);
    addField('precedence', precedence);
    addField('insurance', insurance);
    addField('accident', accident);
    addField('item', item);
    addField('addItem', addItem);
    addField('adjudication', adjudication);
    addField('total', total);
    addField('payment', payment);
    addField('formCode', formCode);
    addField('form', form);
    addField('processNote', processNote);
    addField('benefitPeriod', benefitPeriod);
    addField('benefitBalance', benefitBalance);
    return json;
  }

  @override
  ExplanationOfBenefit clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefit copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    ExplanationOfBenefitStatus? status,
    CodeableConcept? type,
    CodeableConcept? subType,
    Use? use,
    Reference? patient,
    Period? billablePeriod,
    FhirDateTime? created,
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
    FhirString? disposition,
    List<FhirString>? preAuthRef,
    List<Period>? preAuthRefPeriod,
    List<ExplanationOfBenefitCareTeam>? careTeam,
    List<ExplanationOfBenefitSupportingInfo>? supportingInfo,
    List<ExplanationOfBenefitDiagnosis>? diagnosis,
    List<ExplanationOfBenefitProcedure>? procedure,
    FhirPositiveInt? precedence,
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
  }) {
    return ExplanationOfBenefit(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      type: type ?? this.type,
      subType: subType ?? this.subType,
      use: use ?? this.use,
      patient: patient ?? this.patient,
      billablePeriod: billablePeriod ?? this.billablePeriod,
      created: created ?? this.created,
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
      disposition: disposition ?? this.disposition,
      preAuthRef: preAuthRef ?? this.preAuthRef,
      preAuthRefPeriod: preAuthRefPeriod ?? this.preAuthRefPeriod,
      careTeam: careTeam ?? this.careTeam,
      supportingInfo: supportingInfo ?? this.supportingInfo,
      diagnosis: diagnosis ?? this.diagnosis,
      procedure: procedure ?? this.procedure,
      precedence: precedence ?? this.precedence,
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
    );
  }
}

/// [ExplanationOfBenefitRelated]
/// Other claims which are related to this claim such as prior submissions
/// or claims for related services or for the same event.
class ExplanationOfBenefitRelated extends BackboneElement {
  /// Primary constructor for
  /// [ExplanationOfBenefitRelated]

  const ExplanationOfBenefitRelated({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.claim,
    this.relationship,
    this.reference,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitRelated.fromJson(
    Map<String, dynamic> json,
  ) {
    return ExplanationOfBenefitRelated(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      claim: JsonParser.parseObject<Reference>(
        json,
        'claim',
        Reference.fromJson,
      ),
      relationship: JsonParser.parseObject<CodeableConcept>(
        json,
        'relationship',
        CodeableConcept.fromJson,
      ),
      reference: JsonParser.parseObject<Identifier>(
        json,
        'reference',
        Identifier.fromJson,
      ),
    );
  }

  /// Deserialize [ExplanationOfBenefitRelated]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitRelated.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitRelated.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitRelated.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitRelated '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitRelated]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitRelated.fromJsonString(
    String source,
  ) {
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('claim', claim);
    addField('relationship', relationship);
    addField('reference', reference);
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
  }) {
    return ExplanationOfBenefitRelated(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      claim: claim ?? this.claim,
      relationship: relationship ?? this.relationship,
      reference: reference ?? this.reference,
    );
  }
}

/// [ExplanationOfBenefitPayee]
/// The party to be reimbursed for cost of the products and services
/// according to the terms of the policy.
class ExplanationOfBenefitPayee extends BackboneElement {
  /// Primary constructor for
  /// [ExplanationOfBenefitPayee]

  const ExplanationOfBenefitPayee({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.party,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitPayee.fromJson(
    Map<String, dynamic> json,
  ) {
    return ExplanationOfBenefitPayee(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      party: JsonParser.parseObject<Reference>(
        json,
        'party',
        Reference.fromJson,
      ),
    );
  }

  /// Deserialize [ExplanationOfBenefitPayee]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitPayee.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitPayee.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitPayee.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitPayee '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitPayee]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitPayee.fromJsonString(
    String source,
  ) {
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('type', type);
    addField('party', party);
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
  }) {
    return ExplanationOfBenefitPayee(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      party: party ?? this.party,
    );
  }
}

/// [ExplanationOfBenefitCareTeam]
/// The members of the team who provided the products and services.
class ExplanationOfBenefitCareTeam extends BackboneElement {
  /// Primary constructor for
  /// [ExplanationOfBenefitCareTeam]

  const ExplanationOfBenefitCareTeam({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequence,
    required this.provider,
    this.responsible,
    this.role,
    this.qualification,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitCareTeam.fromJson(
    Map<String, dynamic> json,
  ) {
    return ExplanationOfBenefitCareTeam(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      sequence: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'sequence',
        FhirPositiveInt.fromJson,
      )!,
      provider: JsonParser.parseObject<Reference>(
        json,
        'provider',
        Reference.fromJson,
      )!,
      responsible: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'responsible',
        FhirBoolean.fromJson,
      ),
      role: JsonParser.parseObject<CodeableConcept>(
        json,
        'role',
        CodeableConcept.fromJson,
      ),
      qualification: JsonParser.parseObject<CodeableConcept>(
        json,
        'qualification',
        CodeableConcept.fromJson,
      ),
    );
  }

  /// Deserialize [ExplanationOfBenefitCareTeam]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitCareTeam.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitCareTeam.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitCareTeam.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitCareTeam '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitCareTeam]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitCareTeam.fromJsonString(
    String source,
  ) {
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

  /// [provider]
  /// Member of the team who provided the product or service.
  final Reference provider;

  /// [responsible]
  /// The party who is billing and/or responsible for the claimed products or
  /// services.
  final FhirBoolean? responsible;

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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('sequence', sequence);
    addField('provider', provider);
    addField('responsible', responsible);
    addField('role', role);
    addField('qualification', qualification);
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
    Reference? provider,
    FhirBoolean? responsible,
    CodeableConcept? role,
    CodeableConcept? qualification,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ExplanationOfBenefitCareTeam(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      provider: provider ?? this.provider,
      responsible: responsible ?? this.responsible,
      role: role ?? this.role,
      qualification: qualification ?? this.qualification,
    );
  }
}

/// [ExplanationOfBenefitSupportingInfo]
/// Additional information codes regarding exceptions, special
/// considerations, the condition, situation, prior or concurrent issues.
class ExplanationOfBenefitSupportingInfo extends BackboneElement {
  /// Primary constructor for
  /// [ExplanationOfBenefitSupportingInfo]

  const ExplanationOfBenefitSupportingInfo({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequence,
    required this.category,
    this.code,
    this.timingX,
    this.valueX,
    this.reason,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitSupportingInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    return ExplanationOfBenefitSupportingInfo(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      sequence: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'sequence',
        FhirPositiveInt.fromJson,
      )!,
      category: JsonParser.parseObject<CodeableConcept>(
        json,
        'category',
        CodeableConcept.fromJson,
      )!,
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      ),
      timingX: JsonParser.parsePolymorphic<
          TimingXExplanationOfBenefitSupportingInfo>(json, {
        'timingDate': FhirDate.fromJson,
        'timingPeriod': Period.fromJson,
      }),
      valueX:
          JsonParser.parsePolymorphic<ValueXExplanationOfBenefitSupportingInfo>(
              json, {
        'valueBoolean': FhirBoolean.fromJson,
        'valueString': FhirString.fromJson,
        'valueQuantity': Quantity.fromJson,
        'valueAttachment': Attachment.fromJson,
        'valueReference': Reference.fromJson,
      }),
      reason: JsonParser.parseObject<Coding>(
        json,
        'reason',
        Coding.fromJson,
      ),
    );
  }

  /// Deserialize [ExplanationOfBenefitSupportingInfo]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitSupportingInfo.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitSupportingInfo.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitSupportingInfo.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitSupportingInfo '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitSupportingInfo]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitSupportingInfo.fromJsonString(
    String source,
  ) {
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

  /// [category]
  /// The general class of the information supplied: information; exception;
  /// accident, employment; onset, etc.
  final CodeableConcept category;

  /// [code]
  /// System and code pertaining to the specific information regarding
  /// special conditions relating to the setting, treatment or patient for
  /// which care is sought.
  final CodeableConcept? code;

  /// [timingX]
  /// The date when or period to which this information refers.
  final TimingXExplanationOfBenefitSupportingInfo? timingX;

  /// [valueX]
  /// Additional data or information such as resources, documents, images
  /// etc. including references to the data or the actual inclusion of the
  /// data.
  final ValueXExplanationOfBenefitSupportingInfo? valueX;

  /// [reason]
  /// Provides the reason in the situation where a reason code is required in
  /// addition to the content.
  final Coding? reason;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('sequence', sequence);
    addField('category', category);
    addField('code', code);
    if (timingX != null) {
      final fhirType = timingX!.fhirType;
      addField('timing${fhirType.capitalize()}', timingX);
    }

    if (valueX != null) {
      final fhirType = valueX!.fhirType;
      addField('value${fhirType.capitalize()}', valueX);
    }

    addField('reason', reason);
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
    CodeableConcept? category,
    CodeableConcept? code,
    TimingXExplanationOfBenefitSupportingInfo? timingX,
    ValueXExplanationOfBenefitSupportingInfo? valueX,
    Coding? reason,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ExplanationOfBenefitSupportingInfo(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      category: category ?? this.category,
      code: code ?? this.code,
      timingX: timingX ?? this.timingX,
      valueX: valueX ?? this.valueX,
      reason: reason ?? this.reason,
    );
  }
}

/// [ExplanationOfBenefitDiagnosis]
/// Information about diagnoses relevant to the claim items.
class ExplanationOfBenefitDiagnosis extends BackboneElement {
  /// Primary constructor for
  /// [ExplanationOfBenefitDiagnosis]

  const ExplanationOfBenefitDiagnosis({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequence,
    required this.diagnosisX,
    this.type,
    this.onAdmission,
    this.packageCode,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitDiagnosis.fromJson(
    Map<String, dynamic> json,
  ) {
    return ExplanationOfBenefitDiagnosis(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      sequence: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'sequence',
        FhirPositiveInt.fromJson,
      )!,
      diagnosisX:
          JsonParser.parsePolymorphic<DiagnosisXExplanationOfBenefitDiagnosis>(
              json, {
        'diagnosisCodeableConcept': CodeableConcept.fromJson,
        'diagnosisReference': Reference.fromJson,
      })!,
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      onAdmission: JsonParser.parseObject<CodeableConcept>(
        json,
        'onAdmission',
        CodeableConcept.fromJson,
      ),
      packageCode: JsonParser.parseObject<CodeableConcept>(
        json,
        'packageCode',
        CodeableConcept.fromJson,
      ),
    );
  }

  /// Deserialize [ExplanationOfBenefitDiagnosis]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitDiagnosis.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitDiagnosis.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitDiagnosis.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitDiagnosis '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitDiagnosis]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitDiagnosis.fromJsonString(
    String source,
  ) {
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

  /// [diagnosisX]
  /// The nature of illness or problem in a coded form or as a reference to
  /// an external defined Condition.
  final DiagnosisXExplanationOfBenefitDiagnosis diagnosisX;

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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('sequence', sequence);
    final diagnosisXFhirType = diagnosisX.fhirType;
    addField('diagnosis${diagnosisXFhirType.capitalize()}', diagnosisX);

    addField('type', type);
    addField('onAdmission', onAdmission);
    addField('packageCode', packageCode);
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
    DiagnosisXExplanationOfBenefitDiagnosis? diagnosisX,
    List<CodeableConcept>? type,
    CodeableConcept? onAdmission,
    CodeableConcept? packageCode,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ExplanationOfBenefitDiagnosis(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      diagnosisX: diagnosisX ?? this.diagnosisX,
      type: type ?? this.type,
      onAdmission: onAdmission ?? this.onAdmission,
      packageCode: packageCode ?? this.packageCode,
    );
  }
}

/// [ExplanationOfBenefitProcedure]
/// Procedures performed on the patient relevant to the billing items with
/// the claim.
class ExplanationOfBenefitProcedure extends BackboneElement {
  /// Primary constructor for
  /// [ExplanationOfBenefitProcedure]

  const ExplanationOfBenefitProcedure({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequence,
    this.type,
    this.date,
    required this.procedureX,
    this.udi,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitProcedure.fromJson(
    Map<String, dynamic> json,
  ) {
    return ExplanationOfBenefitProcedure(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      sequence: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'sequence',
        FhirPositiveInt.fromJson,
      )!,
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      date: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'date',
        FhirDateTime.fromJson,
      ),
      procedureX:
          JsonParser.parsePolymorphic<ProcedureXExplanationOfBenefitProcedure>(
              json, {
        'procedureCodeableConcept': CodeableConcept.fromJson,
        'procedureReference': Reference.fromJson,
      })!,
      udi: (json['udi'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ExplanationOfBenefitProcedure]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitProcedure.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitProcedure.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitProcedure.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitProcedure '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitProcedure]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitProcedure.fromJsonString(
    String source,
  ) {
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

  /// [type]
  /// When the condition was observed or the relative ranking.
  final List<CodeableConcept>? type;

  /// [date]
  /// Date and optionally time the procedure was performed.
  final FhirDateTime? date;

  /// [procedureX]
  /// The code or reference to a Procedure resource which identifies the
  /// clinical intervention performed.
  final ProcedureXExplanationOfBenefitProcedure procedureX;

  /// [udi]
  /// Unique Device Identifiers associated with this line item.
  final List<Reference>? udi;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('sequence', sequence);
    addField('type', type);
    addField('date', date);
    final procedureXFhirType = procedureX.fhirType;
    addField('procedure${procedureXFhirType.capitalize()}', procedureX);

    addField('udi', udi);
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
    List<CodeableConcept>? type,
    FhirDateTime? date,
    ProcedureXExplanationOfBenefitProcedure? procedureX,
    List<Reference>? udi,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ExplanationOfBenefitProcedure(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      type: type ?? this.type,
      date: date ?? this.date,
      procedureX: procedureX ?? this.procedureX,
      udi: udi ?? this.udi,
    );
  }
}

/// [ExplanationOfBenefitInsurance]
/// Financial instruments for reimbursement for the health care products
/// and services specified on the claim.
class ExplanationOfBenefitInsurance extends BackboneElement {
  /// Primary constructor for
  /// [ExplanationOfBenefitInsurance]

  const ExplanationOfBenefitInsurance({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.focal,
    required this.coverage,
    this.preAuthRef,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitInsurance.fromJson(
    Map<String, dynamic> json,
  ) {
    return ExplanationOfBenefitInsurance(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      focal: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'focal',
        FhirBoolean.fromJson,
      )!,
      coverage: JsonParser.parseObject<Reference>(
        json,
        'coverage',
        Reference.fromJson,
      )!,
      preAuthRef: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'preAuthRef',
        FhirString.fromJson,
      ),
    );
  }

  /// Deserialize [ExplanationOfBenefitInsurance]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitInsurance.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitInsurance.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitInsurance.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitInsurance '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitInsurance]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitInsurance.fromJsonString(
    String source,
  ) {
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
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('focal', focal);
    addField('coverage', coverage);
    addField('preAuthRef', preAuthRef);
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
    Reference? coverage,
    List<FhirString>? preAuthRef,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ExplanationOfBenefitInsurance(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      focal: focal ?? this.focal,
      coverage: coverage ?? this.coverage,
      preAuthRef: preAuthRef ?? this.preAuthRef,
    );
  }
}

/// [ExplanationOfBenefitAccident]
/// Details of a accident which resulted in injuries which required the
/// products and services listed in the claim.
class ExplanationOfBenefitAccident extends BackboneElement {
  /// Primary constructor for
  /// [ExplanationOfBenefitAccident]

  const ExplanationOfBenefitAccident({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.date,
    this.type,
    this.locationX,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitAccident.fromJson(
    Map<String, dynamic> json,
  ) {
    return ExplanationOfBenefitAccident(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      date: JsonParser.parsePrimitive<FhirDate>(
        json,
        'date',
        FhirDate.fromJson,
      ),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      locationX:
          JsonParser.parsePolymorphic<LocationXExplanationOfBenefitAccident>(
              json, {
        'locationAddress': Address.fromJson,
        'locationReference': Reference.fromJson,
      }),
    );
  }

  /// Deserialize [ExplanationOfBenefitAccident]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitAccident.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitAccident.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitAccident.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitAccident '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitAccident]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitAccident.fromJsonString(
    String source,
  ) {
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

  /// [type]
  /// The type or context of the accident event for the purposes of selection
  /// of potential insurance coverages and determination of coordination
  /// between insurers.
  final CodeableConcept? type;

  /// [locationX]
  /// The physical location of the accident event.
  final LocationXExplanationOfBenefitAccident? locationX;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('date', date);
    addField('type', type);
    if (locationX != null) {
      final fhirType = locationX!.fhirType;
      addField('location${fhirType.capitalize()}', locationX);
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
    CodeableConcept? type,
    LocationXExplanationOfBenefitAccident? locationX,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ExplanationOfBenefitAccident(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      date: date ?? this.date,
      type: type ?? this.type,
      locationX: locationX ?? this.locationX,
    );
  }
}

/// [ExplanationOfBenefitItem]
/// A claim line. Either a simple (a product or service) or a 'group' of
/// details which can also be a simple items or groups of sub-details.
class ExplanationOfBenefitItem extends BackboneElement {
  /// Primary constructor for
  /// [ExplanationOfBenefitItem]

  const ExplanationOfBenefitItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequence,
    this.careTeamSequence,
    this.diagnosisSequence,
    this.procedureSequence,
    this.informationSequence,
    this.revenue,
    this.category,
    required this.productOrService,
    this.modifier,
    this.programCode,
    this.servicedX,
    this.locationX,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.net,
    this.udi,
    this.bodySite,
    this.subSite,
    this.encounter,
    this.noteNumber,
    this.adjudication,
    this.detail,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitItem.fromJson(
    Map<String, dynamic> json,
  ) {
    return ExplanationOfBenefitItem(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      sequence: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'sequence',
        FhirPositiveInt.fromJson,
      )!,
      careTeamSequence: JsonParser.parsePrimitiveList<FhirPositiveInt>(
        json,
        'careTeamSequence',
        FhirPositiveInt.fromJson,
      ),
      diagnosisSequence: JsonParser.parsePrimitiveList<FhirPositiveInt>(
        json,
        'diagnosisSequence',
        FhirPositiveInt.fromJson,
      ),
      procedureSequence: JsonParser.parsePrimitiveList<FhirPositiveInt>(
        json,
        'procedureSequence',
        FhirPositiveInt.fromJson,
      ),
      informationSequence: JsonParser.parsePrimitiveList<FhirPositiveInt>(
        json,
        'informationSequence',
        FhirPositiveInt.fromJson,
      ),
      revenue: JsonParser.parseObject<CodeableConcept>(
        json,
        'revenue',
        CodeableConcept.fromJson,
      ),
      category: JsonParser.parseObject<CodeableConcept>(
        json,
        'category',
        CodeableConcept.fromJson,
      ),
      productOrService: JsonParser.parseObject<CodeableConcept>(
        json,
        'productOrService',
        CodeableConcept.fromJson,
      )!,
      modifier: (json['modifier'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      programCode: (json['programCode'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      servicedX:
          JsonParser.parsePolymorphic<ServicedXExplanationOfBenefitItem>(json, {
        'servicedDate': FhirDate.fromJson,
        'servicedPeriod': Period.fromJson,
      }),
      locationX:
          JsonParser.parsePolymorphic<LocationXExplanationOfBenefitItem>(json, {
        'locationCodeableConcept': CodeableConcept.fromJson,
        'locationAddress': Address.fromJson,
        'locationReference': Reference.fromJson,
      }),
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
      ),
      unitPrice: JsonParser.parseObject<Money>(
        json,
        'unitPrice',
        Money.fromJson,
      ),
      factor: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'factor',
        FhirDecimal.fromJson,
      ),
      net: JsonParser.parseObject<Money>(
        json,
        'net',
        Money.fromJson,
      ),
      udi: (json['udi'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      bodySite: JsonParser.parseObject<CodeableConcept>(
        json,
        'bodySite',
        CodeableConcept.fromJson,
      ),
      subSite: (json['subSite'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      encounter: (json['encounter'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      noteNumber: JsonParser.parsePrimitiveList<FhirPositiveInt>(
        json,
        'noteNumber',
        FhirPositiveInt.fromJson,
      ),
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitAdjudication>(
            (v) => ExplanationOfBenefitAdjudication.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      detail: (json['detail'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitDetail>(
            (v) => ExplanationOfBenefitDetail.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ExplanationOfBenefitItem]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitItem.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitItem.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitItem.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitItem '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitItem]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitItem.fromJsonString(
    String source,
  ) {
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

  /// [careTeamSequence]
  /// Care team members related to this service or product.
  final List<FhirPositiveInt>? careTeamSequence;

  /// [diagnosisSequence]
  /// Diagnoses applicable for this service or product.
  final List<FhirPositiveInt>? diagnosisSequence;

  /// [procedureSequence]
  /// Procedures applicable for this service or product.
  final List<FhirPositiveInt>? procedureSequence;

  /// [informationSequence]
  /// Exceptions, special conditions and supporting information applicable
  /// for this service or product.
  final List<FhirPositiveInt>? informationSequence;

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

  /// [servicedX]
  /// The date or dates when the service or product was supplied, performed
  /// or completed.
  final ServicedXExplanationOfBenefitItem? servicedX;

  /// [locationX]
  /// Where the product or service was provided.
  final LocationXExplanationOfBenefitItem? locationX;

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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('sequence', sequence);
    addField('careTeamSequence', careTeamSequence);
    addField('diagnosisSequence', diagnosisSequence);
    addField('procedureSequence', procedureSequence);
    addField('informationSequence', informationSequence);
    addField('revenue', revenue);
    addField('category', category);
    addField('productOrService', productOrService);
    addField('modifier', modifier);
    addField('programCode', programCode);
    if (servicedX != null) {
      final fhirType = servicedX!.fhirType;
      addField('serviced${fhirType.capitalize()}', servicedX);
    }

    if (locationX != null) {
      final fhirType = locationX!.fhirType;
      addField('location${fhirType.capitalize()}', locationX);
    }

    addField('quantity', quantity);
    addField('unitPrice', unitPrice);
    addField('factor', factor);
    addField('net', net);
    addField('udi', udi);
    addField('bodySite', bodySite);
    addField('subSite', subSite);
    addField('encounter', encounter);
    addField('noteNumber', noteNumber);
    addField('adjudication', adjudication);
    addField('detail', detail);
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
    List<FhirPositiveInt>? careTeamSequence,
    List<FhirPositiveInt>? diagnosisSequence,
    List<FhirPositiveInt>? procedureSequence,
    List<FhirPositiveInt>? informationSequence,
    CodeableConcept? revenue,
    CodeableConcept? category,
    CodeableConcept? productOrService,
    List<CodeableConcept>? modifier,
    List<CodeableConcept>? programCode,
    ServicedXExplanationOfBenefitItem? servicedX,
    LocationXExplanationOfBenefitItem? locationX,
    Quantity? quantity,
    Money? unitPrice,
    FhirDecimal? factor,
    Money? net,
    List<Reference>? udi,
    CodeableConcept? bodySite,
    List<CodeableConcept>? subSite,
    List<Reference>? encounter,
    List<FhirPositiveInt>? noteNumber,
    List<ExplanationOfBenefitAdjudication>? adjudication,
    List<ExplanationOfBenefitDetail>? detail,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ExplanationOfBenefitItem(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      careTeamSequence: careTeamSequence ?? this.careTeamSequence,
      diagnosisSequence: diagnosisSequence ?? this.diagnosisSequence,
      procedureSequence: procedureSequence ?? this.procedureSequence,
      informationSequence: informationSequence ?? this.informationSequence,
      revenue: revenue ?? this.revenue,
      category: category ?? this.category,
      productOrService: productOrService ?? this.productOrService,
      modifier: modifier ?? this.modifier,
      programCode: programCode ?? this.programCode,
      servicedX: servicedX ?? this.servicedX,
      locationX: locationX ?? this.locationX,
      quantity: quantity ?? this.quantity,
      unitPrice: unitPrice ?? this.unitPrice,
      factor: factor ?? this.factor,
      net: net ?? this.net,
      udi: udi ?? this.udi,
      bodySite: bodySite ?? this.bodySite,
      subSite: subSite ?? this.subSite,
      encounter: encounter ?? this.encounter,
      noteNumber: noteNumber ?? this.noteNumber,
      adjudication: adjudication ?? this.adjudication,
      detail: detail ?? this.detail,
    );
  }
}

/// [ExplanationOfBenefitAdjudication]
/// If this item is a group then the values here are a summary of the
/// adjudication of the detail items. If this item is a simple product or
/// service then this is the result of the adjudication of this item.
class ExplanationOfBenefitAdjudication extends BackboneElement {
  /// Primary constructor for
  /// [ExplanationOfBenefitAdjudication]

  const ExplanationOfBenefitAdjudication({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.category,
    this.reason,
    this.amount,
    this.value,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitAdjudication.fromJson(
    Map<String, dynamic> json,
  ) {
    return ExplanationOfBenefitAdjudication(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      category: JsonParser.parseObject<CodeableConcept>(
        json,
        'category',
        CodeableConcept.fromJson,
      )!,
      reason: JsonParser.parseObject<CodeableConcept>(
        json,
        'reason',
        CodeableConcept.fromJson,
      ),
      amount: JsonParser.parseObject<Money>(
        json,
        'amount',
        Money.fromJson,
      ),
      value: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'value',
        FhirDecimal.fromJson,
      ),
    );
  }

  /// Deserialize [ExplanationOfBenefitAdjudication]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitAdjudication.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitAdjudication.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitAdjudication.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitAdjudication '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitAdjudication]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitAdjudication.fromJsonString(
    String source,
  ) {
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
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('category', category);
    addField('reason', reason);
    addField('amount', amount);
    addField('value', value);
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ExplanationOfBenefitAdjudication(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      category: category ?? this.category,
      reason: reason ?? this.reason,
      amount: amount ?? this.amount,
      value: value ?? this.value,
    );
  }
}

/// [ExplanationOfBenefitDetail]
/// Second-tier of goods and services.
class ExplanationOfBenefitDetail extends BackboneElement {
  /// Primary constructor for
  /// [ExplanationOfBenefitDetail]

  const ExplanationOfBenefitDetail({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequence,
    this.revenue,
    this.category,
    required this.productOrService,
    this.modifier,
    this.programCode,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.net,
    this.udi,
    this.noteNumber,
    this.adjudication,
    this.subDetail,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitDetail.fromJson(
    Map<String, dynamic> json,
  ) {
    return ExplanationOfBenefitDetail(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      sequence: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'sequence',
        FhirPositiveInt.fromJson,
      )!,
      revenue: JsonParser.parseObject<CodeableConcept>(
        json,
        'revenue',
        CodeableConcept.fromJson,
      ),
      category: JsonParser.parseObject<CodeableConcept>(
        json,
        'category',
        CodeableConcept.fromJson,
      ),
      productOrService: JsonParser.parseObject<CodeableConcept>(
        json,
        'productOrService',
        CodeableConcept.fromJson,
      )!,
      modifier: (json['modifier'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      programCode: (json['programCode'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
      ),
      unitPrice: JsonParser.parseObject<Money>(
        json,
        'unitPrice',
        Money.fromJson,
      ),
      factor: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'factor',
        FhirDecimal.fromJson,
      ),
      net: JsonParser.parseObject<Money>(
        json,
        'net',
        Money.fromJson,
      ),
      udi: (json['udi'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      noteNumber: JsonParser.parsePrimitiveList<FhirPositiveInt>(
        json,
        'noteNumber',
        FhirPositiveInt.fromJson,
      ),
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitAdjudication>(
            (v) => ExplanationOfBenefitAdjudication.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      subDetail: (json['subDetail'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitSubDetail>(
            (v) => ExplanationOfBenefitSubDetail.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ExplanationOfBenefitDetail]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitDetail.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitDetail.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitDetail.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitDetail '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitDetail]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitDetail.fromJsonString(
    String source,
  ) {
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

  /// [adjudication]
  /// The adjudication results.
  final List<ExplanationOfBenefitAdjudication>? adjudication;

  /// [subDetail]
  /// Third-tier of goods and services.
  final List<ExplanationOfBenefitSubDetail>? subDetail;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('sequence', sequence);
    addField('revenue', revenue);
    addField('category', category);
    addField('productOrService', productOrService);
    addField('modifier', modifier);
    addField('programCode', programCode);
    addField('quantity', quantity);
    addField('unitPrice', unitPrice);
    addField('factor', factor);
    addField('net', net);
    addField('udi', udi);
    addField('noteNumber', noteNumber);
    addField('adjudication', adjudication);
    addField('subDetail', subDetail);
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
    CodeableConcept? revenue,
    CodeableConcept? category,
    CodeableConcept? productOrService,
    List<CodeableConcept>? modifier,
    List<CodeableConcept>? programCode,
    Quantity? quantity,
    Money? unitPrice,
    FhirDecimal? factor,
    Money? net,
    List<Reference>? udi,
    List<FhirPositiveInt>? noteNumber,
    List<ExplanationOfBenefitAdjudication>? adjudication,
    List<ExplanationOfBenefitSubDetail>? subDetail,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ExplanationOfBenefitDetail(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      revenue: revenue ?? this.revenue,
      category: category ?? this.category,
      productOrService: productOrService ?? this.productOrService,
      modifier: modifier ?? this.modifier,
      programCode: programCode ?? this.programCode,
      quantity: quantity ?? this.quantity,
      unitPrice: unitPrice ?? this.unitPrice,
      factor: factor ?? this.factor,
      net: net ?? this.net,
      udi: udi ?? this.udi,
      noteNumber: noteNumber ?? this.noteNumber,
      adjudication: adjudication ?? this.adjudication,
      subDetail: subDetail ?? this.subDetail,
    );
  }
}

/// [ExplanationOfBenefitSubDetail]
/// Third-tier of goods and services.
class ExplanationOfBenefitSubDetail extends BackboneElement {
  /// Primary constructor for
  /// [ExplanationOfBenefitSubDetail]

  const ExplanationOfBenefitSubDetail({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequence,
    this.revenue,
    this.category,
    required this.productOrService,
    this.modifier,
    this.programCode,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.net,
    this.udi,
    this.noteNumber,
    this.adjudication,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitSubDetail.fromJson(
    Map<String, dynamic> json,
  ) {
    return ExplanationOfBenefitSubDetail(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      sequence: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'sequence',
        FhirPositiveInt.fromJson,
      )!,
      revenue: JsonParser.parseObject<CodeableConcept>(
        json,
        'revenue',
        CodeableConcept.fromJson,
      ),
      category: JsonParser.parseObject<CodeableConcept>(
        json,
        'category',
        CodeableConcept.fromJson,
      ),
      productOrService: JsonParser.parseObject<CodeableConcept>(
        json,
        'productOrService',
        CodeableConcept.fromJson,
      )!,
      modifier: (json['modifier'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      programCode: (json['programCode'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
      ),
      unitPrice: JsonParser.parseObject<Money>(
        json,
        'unitPrice',
        Money.fromJson,
      ),
      factor: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'factor',
        FhirDecimal.fromJson,
      ),
      net: JsonParser.parseObject<Money>(
        json,
        'net',
        Money.fromJson,
      ),
      udi: (json['udi'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      noteNumber: JsonParser.parsePrimitiveList<FhirPositiveInt>(
        json,
        'noteNumber',
        FhirPositiveInt.fromJson,
      ),
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitAdjudication>(
            (v) => ExplanationOfBenefitAdjudication.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ExplanationOfBenefitSubDetail]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitSubDetail.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitSubDetail.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitSubDetail.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitSubDetail '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitSubDetail]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitSubDetail.fromJsonString(
    String source,
  ) {
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

  /// [adjudication]
  /// The adjudication results.
  final List<ExplanationOfBenefitAdjudication>? adjudication;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('sequence', sequence);
    addField('revenue', revenue);
    addField('category', category);
    addField('productOrService', productOrService);
    addField('modifier', modifier);
    addField('programCode', programCode);
    addField('quantity', quantity);
    addField('unitPrice', unitPrice);
    addField('factor', factor);
    addField('net', net);
    addField('udi', udi);
    addField('noteNumber', noteNumber);
    addField('adjudication', adjudication);
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
    CodeableConcept? revenue,
    CodeableConcept? category,
    CodeableConcept? productOrService,
    List<CodeableConcept>? modifier,
    List<CodeableConcept>? programCode,
    Quantity? quantity,
    Money? unitPrice,
    FhirDecimal? factor,
    Money? net,
    List<Reference>? udi,
    List<FhirPositiveInt>? noteNumber,
    List<ExplanationOfBenefitAdjudication>? adjudication,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ExplanationOfBenefitSubDetail(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      revenue: revenue ?? this.revenue,
      category: category ?? this.category,
      productOrService: productOrService ?? this.productOrService,
      modifier: modifier ?? this.modifier,
      programCode: programCode ?? this.programCode,
      quantity: quantity ?? this.quantity,
      unitPrice: unitPrice ?? this.unitPrice,
      factor: factor ?? this.factor,
      net: net ?? this.net,
      udi: udi ?? this.udi,
      noteNumber: noteNumber ?? this.noteNumber,
      adjudication: adjudication ?? this.adjudication,
    );
  }
}

/// [ExplanationOfBenefitAddItem]
/// The first-tier service adjudications for payor added product or service
/// lines.
class ExplanationOfBenefitAddItem extends BackboneElement {
  /// Primary constructor for
  /// [ExplanationOfBenefitAddItem]

  const ExplanationOfBenefitAddItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.itemSequence,
    this.detailSequence,
    this.subDetailSequence,
    this.provider,
    required this.productOrService,
    this.modifier,
    this.programCode,
    this.servicedX,
    this.locationX,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.net,
    this.bodySite,
    this.subSite,
    this.noteNumber,
    this.adjudication,
    this.detail,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitAddItem.fromJson(
    Map<String, dynamic> json,
  ) {
    return ExplanationOfBenefitAddItem(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      itemSequence: JsonParser.parsePrimitiveList<FhirPositiveInt>(
        json,
        'itemSequence',
        FhirPositiveInt.fromJson,
      ),
      detailSequence: JsonParser.parsePrimitiveList<FhirPositiveInt>(
        json,
        'detailSequence',
        FhirPositiveInt.fromJson,
      ),
      subDetailSequence: JsonParser.parsePrimitiveList<FhirPositiveInt>(
        json,
        'subDetailSequence',
        FhirPositiveInt.fromJson,
      ),
      provider: (json['provider'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      productOrService: JsonParser.parseObject<CodeableConcept>(
        json,
        'productOrService',
        CodeableConcept.fromJson,
      )!,
      modifier: (json['modifier'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      programCode: (json['programCode'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      servicedX:
          JsonParser.parsePolymorphic<ServicedXExplanationOfBenefitAddItem>(
              json, {
        'servicedDate': FhirDate.fromJson,
        'servicedPeriod': Period.fromJson,
      }),
      locationX:
          JsonParser.parsePolymorphic<LocationXExplanationOfBenefitAddItem>(
              json, {
        'locationCodeableConcept': CodeableConcept.fromJson,
        'locationAddress': Address.fromJson,
        'locationReference': Reference.fromJson,
      }),
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
      ),
      unitPrice: JsonParser.parseObject<Money>(
        json,
        'unitPrice',
        Money.fromJson,
      ),
      factor: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'factor',
        FhirDecimal.fromJson,
      ),
      net: JsonParser.parseObject<Money>(
        json,
        'net',
        Money.fromJson,
      ),
      bodySite: JsonParser.parseObject<CodeableConcept>(
        json,
        'bodySite',
        CodeableConcept.fromJson,
      ),
      subSite: (json['subSite'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      noteNumber: JsonParser.parsePrimitiveList<FhirPositiveInt>(
        json,
        'noteNumber',
        FhirPositiveInt.fromJson,
      ),
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitAdjudication>(
            (v) => ExplanationOfBenefitAdjudication.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      detail: (json['detail'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitDetail>(
            (v) => ExplanationOfBenefitDetail.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ExplanationOfBenefitAddItem]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitAddItem.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitAddItem.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitAddItem.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitAddItem '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitAddItem]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitAddItem.fromJsonString(
    String source,
  ) {
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

  /// [detailSequence]
  /// The sequence number of the details within the claim item which this
  /// line is intended to replace.
  final List<FhirPositiveInt>? detailSequence;

  /// [subDetailSequence]
  /// The sequence number of the sub-details woithin the details within the
  /// claim item which this line is intended to replace.
  final List<FhirPositiveInt>? subDetailSequence;

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

  /// [servicedX]
  /// The date or dates when the service or product was supplied, performed
  /// or completed.
  final ServicedXExplanationOfBenefitAddItem? servicedX;

  /// [locationX]
  /// Where the product or service was provided.
  final LocationXExplanationOfBenefitAddItem? locationX;

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

  /// [adjudication]
  /// The adjudication results.
  final List<ExplanationOfBenefitAdjudication>? adjudication;

  /// [detail]
  /// The second-tier service adjudications for payor added services.
  final List<ExplanationOfBenefitDetail>? detail;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('itemSequence', itemSequence);
    addField('detailSequence', detailSequence);
    addField('subDetailSequence', subDetailSequence);
    addField('provider', provider);
    addField('productOrService', productOrService);
    addField('modifier', modifier);
    addField('programCode', programCode);
    if (servicedX != null) {
      final fhirType = servicedX!.fhirType;
      addField('serviced${fhirType.capitalize()}', servicedX);
    }

    if (locationX != null) {
      final fhirType = locationX!.fhirType;
      addField('location${fhirType.capitalize()}', locationX);
    }

    addField('quantity', quantity);
    addField('unitPrice', unitPrice);
    addField('factor', factor);
    addField('net', net);
    addField('bodySite', bodySite);
    addField('subSite', subSite);
    addField('noteNumber', noteNumber);
    addField('adjudication', adjudication);
    addField('detail', detail);
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
    List<FhirPositiveInt>? detailSequence,
    List<FhirPositiveInt>? subDetailSequence,
    List<Reference>? provider,
    CodeableConcept? productOrService,
    List<CodeableConcept>? modifier,
    List<CodeableConcept>? programCode,
    ServicedXExplanationOfBenefitAddItem? servicedX,
    LocationXExplanationOfBenefitAddItem? locationX,
    Quantity? quantity,
    Money? unitPrice,
    FhirDecimal? factor,
    Money? net,
    CodeableConcept? bodySite,
    List<CodeableConcept>? subSite,
    List<FhirPositiveInt>? noteNumber,
    List<ExplanationOfBenefitAdjudication>? adjudication,
    List<ExplanationOfBenefitDetail>? detail,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ExplanationOfBenefitAddItem(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      itemSequence: itemSequence ?? this.itemSequence,
      detailSequence: detailSequence ?? this.detailSequence,
      subDetailSequence: subDetailSequence ?? this.subDetailSequence,
      provider: provider ?? this.provider,
      productOrService: productOrService ?? this.productOrService,
      modifier: modifier ?? this.modifier,
      programCode: programCode ?? this.programCode,
      servicedX: servicedX ?? this.servicedX,
      locationX: locationX ?? this.locationX,
      quantity: quantity ?? this.quantity,
      unitPrice: unitPrice ?? this.unitPrice,
      factor: factor ?? this.factor,
      net: net ?? this.net,
      bodySite: bodySite ?? this.bodySite,
      subSite: subSite ?? this.subSite,
      noteNumber: noteNumber ?? this.noteNumber,
      adjudication: adjudication ?? this.adjudication,
      detail: detail ?? this.detail,
    );
  }
}

/// [ExplanationOfBenefitDetail1]
/// The second-tier service adjudications for payor added services.
class ExplanationOfBenefitDetail1 extends BackboneElement {
  /// Primary constructor for
  /// [ExplanationOfBenefitDetail1]

  const ExplanationOfBenefitDetail1({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.productOrService,
    this.modifier,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.net,
    this.noteNumber,
    this.adjudication,
    this.subDetail,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitDetail1.fromJson(
    Map<String, dynamic> json,
  ) {
    return ExplanationOfBenefitDetail1(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      productOrService: JsonParser.parseObject<CodeableConcept>(
        json,
        'productOrService',
        CodeableConcept.fromJson,
      )!,
      modifier: (json['modifier'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
      ),
      unitPrice: JsonParser.parseObject<Money>(
        json,
        'unitPrice',
        Money.fromJson,
      ),
      factor: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'factor',
        FhirDecimal.fromJson,
      ),
      net: JsonParser.parseObject<Money>(
        json,
        'net',
        Money.fromJson,
      ),
      noteNumber: JsonParser.parsePrimitiveList<FhirPositiveInt>(
        json,
        'noteNumber',
        FhirPositiveInt.fromJson,
      ),
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitAdjudication>(
            (v) => ExplanationOfBenefitAdjudication.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      subDetail: (json['subDetail'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitSubDetail>(
            (v) => ExplanationOfBenefitSubDetail.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ExplanationOfBenefitDetail1]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitDetail1.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitDetail1.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitDetail1.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitDetail1 '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitDetail1]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitDetail1.fromJsonString(
    String source,
  ) {
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

  /// [net]
  /// The quantity times the unit price for an additional service or product
  /// or charge.
  final Money? net;

  /// [noteNumber]
  /// The numbers associated with notes below which apply to the adjudication
  /// of this item.
  final List<FhirPositiveInt>? noteNumber;

  /// [adjudication]
  /// The adjudication results.
  final List<ExplanationOfBenefitAdjudication>? adjudication;

  /// [subDetail]
  /// The third-tier service adjudications for payor added services.
  final List<ExplanationOfBenefitSubDetail>? subDetail;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('productOrService', productOrService);
    addField('modifier', modifier);
    addField('quantity', quantity);
    addField('unitPrice', unitPrice);
    addField('factor', factor);
    addField('net', net);
    addField('noteNumber', noteNumber);
    addField('adjudication', adjudication);
    addField('subDetail', subDetail);
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
    Money? net,
    List<FhirPositiveInt>? noteNumber,
    List<ExplanationOfBenefitAdjudication>? adjudication,
    List<ExplanationOfBenefitSubDetail>? subDetail,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
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
      net: net ?? this.net,
      noteNumber: noteNumber ?? this.noteNumber,
      adjudication: adjudication ?? this.adjudication,
      subDetail: subDetail ?? this.subDetail,
    );
  }
}

/// [ExplanationOfBenefitSubDetail1]
/// The third-tier service adjudications for payor added services.
class ExplanationOfBenefitSubDetail1 extends BackboneElement {
  /// Primary constructor for
  /// [ExplanationOfBenefitSubDetail1]

  const ExplanationOfBenefitSubDetail1({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.productOrService,
    this.modifier,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.net,
    this.noteNumber,
    this.adjudication,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitSubDetail1.fromJson(
    Map<String, dynamic> json,
  ) {
    return ExplanationOfBenefitSubDetail1(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      productOrService: JsonParser.parseObject<CodeableConcept>(
        json,
        'productOrService',
        CodeableConcept.fromJson,
      )!,
      modifier: (json['modifier'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
      ),
      unitPrice: JsonParser.parseObject<Money>(
        json,
        'unitPrice',
        Money.fromJson,
      ),
      factor: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'factor',
        FhirDecimal.fromJson,
      ),
      net: JsonParser.parseObject<Money>(
        json,
        'net',
        Money.fromJson,
      ),
      noteNumber: JsonParser.parsePrimitiveList<FhirPositiveInt>(
        json,
        'noteNumber',
        FhirPositiveInt.fromJson,
      ),
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitAdjudication>(
            (v) => ExplanationOfBenefitAdjudication.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ExplanationOfBenefitSubDetail1]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitSubDetail1.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitSubDetail1.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitSubDetail1.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitSubDetail1 '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitSubDetail1]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitSubDetail1.fromJsonString(
    String source,
  ) {
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

  /// [net]
  /// The quantity times the unit price for an additional service or product
  /// or charge.
  final Money? net;

  /// [noteNumber]
  /// The numbers associated with notes below which apply to the adjudication
  /// of this item.
  final List<FhirPositiveInt>? noteNumber;

  /// [adjudication]
  /// The adjudication results.
  final List<ExplanationOfBenefitAdjudication>? adjudication;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('productOrService', productOrService);
    addField('modifier', modifier);
    addField('quantity', quantity);
    addField('unitPrice', unitPrice);
    addField('factor', factor);
    addField('net', net);
    addField('noteNumber', noteNumber);
    addField('adjudication', adjudication);
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
    Money? net,
    List<FhirPositiveInt>? noteNumber,
    List<ExplanationOfBenefitAdjudication>? adjudication,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
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
      net: net ?? this.net,
      noteNumber: noteNumber ?? this.noteNumber,
      adjudication: adjudication ?? this.adjudication,
    );
  }
}

/// [ExplanationOfBenefitTotal]
/// Categorized monetary totals for the adjudication.
class ExplanationOfBenefitTotal extends BackboneElement {
  /// Primary constructor for
  /// [ExplanationOfBenefitTotal]

  const ExplanationOfBenefitTotal({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.category,
    required this.amount,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitTotal.fromJson(
    Map<String, dynamic> json,
  ) {
    return ExplanationOfBenefitTotal(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      category: JsonParser.parseObject<CodeableConcept>(
        json,
        'category',
        CodeableConcept.fromJson,
      )!,
      amount: JsonParser.parseObject<Money>(
        json,
        'amount',
        Money.fromJson,
      )!,
    );
  }

  /// Deserialize [ExplanationOfBenefitTotal]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitTotal.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitTotal.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitTotal.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitTotal '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitTotal]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitTotal.fromJsonString(
    String source,
  ) {
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('category', category);
    addField('amount', amount);
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
  }) {
    return ExplanationOfBenefitTotal(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      category: category ?? this.category,
      amount: amount ?? this.amount,
    );
  }
}

/// [ExplanationOfBenefitPayment]
/// Payment details for the adjudication of the claim.
class ExplanationOfBenefitPayment extends BackboneElement {
  /// Primary constructor for
  /// [ExplanationOfBenefitPayment]

  const ExplanationOfBenefitPayment({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.adjustment,
    this.adjustmentReason,
    this.date,
    this.amount,
    this.identifier,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitPayment.fromJson(
    Map<String, dynamic> json,
  ) {
    return ExplanationOfBenefitPayment(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      adjustment: JsonParser.parseObject<Money>(
        json,
        'adjustment',
        Money.fromJson,
      ),
      adjustmentReason: JsonParser.parseObject<CodeableConcept>(
        json,
        'adjustmentReason',
        CodeableConcept.fromJson,
      ),
      date: JsonParser.parsePrimitive<FhirDate>(
        json,
        'date',
        FhirDate.fromJson,
      ),
      amount: JsonParser.parseObject<Money>(
        json,
        'amount',
        Money.fromJson,
      ),
      identifier: JsonParser.parseObject<Identifier>(
        json,
        'identifier',
        Identifier.fromJson,
      ),
    );
  }

  /// Deserialize [ExplanationOfBenefitPayment]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitPayment.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitPayment.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitPayment.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitPayment '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitPayment]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitPayment.fromJsonString(
    String source,
  ) {
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

  /// [amount]
  /// Benefits payable less any payment adjustment.
  final Money? amount;

  /// [identifier]
  /// Issuer's unique identifier for the payment instrument.
  final Identifier? identifier;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('type', type);
    addField('adjustment', adjustment);
    addField('adjustmentReason', adjustmentReason);
    addField('date', date);
    addField('amount', amount);
    addField('identifier', identifier);
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
    Money? amount,
    Identifier? identifier,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ExplanationOfBenefitPayment(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      adjustment: adjustment ?? this.adjustment,
      adjustmentReason: adjustmentReason ?? this.adjustmentReason,
      date: date ?? this.date,
      amount: amount ?? this.amount,
      identifier: identifier ?? this.identifier,
    );
  }
}

/// [ExplanationOfBenefitProcessNote]
/// A note that describes or explains adjudication results in a human
/// readable form.
class ExplanationOfBenefitProcessNote extends BackboneElement {
  /// Primary constructor for
  /// [ExplanationOfBenefitProcessNote]

  const ExplanationOfBenefitProcessNote({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.number,
    this.type,
    this.text,
    this.language,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitProcessNote.fromJson(
    Map<String, dynamic> json,
  ) {
    return ExplanationOfBenefitProcessNote(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      number: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'number',
        FhirPositiveInt.fromJson,
      ),
      type: JsonParser.parsePrimitive<NoteType>(
        json,
        'type',
        NoteType.fromJson,
      ),
      text: JsonParser.parsePrimitive<FhirString>(
        json,
        'text',
        FhirString.fromJson,
      ),
      language: JsonParser.parseObject<CodeableConcept>(
        json,
        'language',
        CodeableConcept.fromJson,
      ),
    );
  }

  /// Deserialize [ExplanationOfBenefitProcessNote]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitProcessNote.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitProcessNote.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitProcessNote.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitProcessNote '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitProcessNote]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitProcessNote.fromJsonString(
    String source,
  ) {
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

  /// [type]
  /// The business purpose of the note text.
  final NoteType? type;

  /// [text]
  /// The explanation or description associated with the processing.
  final FhirString? text;

  /// [language]
  /// A code to define the language used in the text of the note.
  final CodeableConcept? language;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('number', number);
    addField('type', type);
    addField('text', text);
    addField('language', language);
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
    NoteType? type,
    FhirString? text,
    CodeableConcept? language,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ExplanationOfBenefitProcessNote(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      number: number ?? this.number,
      type: type ?? this.type,
      text: text ?? this.text,
      language: language ?? this.language,
    );
  }
}

/// [ExplanationOfBenefitBenefitBalance]
/// Balance by Benefit Category.
class ExplanationOfBenefitBenefitBalance extends BackboneElement {
  /// Primary constructor for
  /// [ExplanationOfBenefitBenefitBalance]

  const ExplanationOfBenefitBenefitBalance({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.category,
    this.excluded,
    this.name,
    this.description,
    this.network,
    this.unit,
    this.term,
    this.financial,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitBenefitBalance.fromJson(
    Map<String, dynamic> json,
  ) {
    return ExplanationOfBenefitBenefitBalance(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      category: JsonParser.parseObject<CodeableConcept>(
        json,
        'category',
        CodeableConcept.fromJson,
      )!,
      excluded: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'excluded',
        FhirBoolean.fromJson,
      ),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
      ),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
      ),
      network: JsonParser.parseObject<CodeableConcept>(
        json,
        'network',
        CodeableConcept.fromJson,
      ),
      unit: JsonParser.parseObject<CodeableConcept>(
        json,
        'unit',
        CodeableConcept.fromJson,
      ),
      term: JsonParser.parseObject<CodeableConcept>(
        json,
        'term',
        CodeableConcept.fromJson,
      ),
      financial: (json['financial'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitFinancial>(
            (v) => ExplanationOfBenefitFinancial.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ExplanationOfBenefitBenefitBalance]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitBenefitBalance.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitBenefitBalance.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitBenefitBalance.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitBenefitBalance '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitBenefitBalance]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitBenefitBalance.fromJsonString(
    String source,
  ) {
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

  /// [name]
  /// A short name or tag for the benefit.
  final FhirString? name;

  /// [description]
  /// A richer description of the benefit or services covered.
  final FhirString? description;

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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('category', category);
    addField('excluded', excluded);
    addField('name', name);
    addField('description', description);
    addField('network', network);
    addField('unit', unit);
    addField('term', term);
    addField('financial', financial);
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
    FhirString? name,
    FhirString? description,
    CodeableConcept? network,
    CodeableConcept? unit,
    CodeableConcept? term,
    List<ExplanationOfBenefitFinancial>? financial,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ExplanationOfBenefitBenefitBalance(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      category: category ?? this.category,
      excluded: excluded ?? this.excluded,
      name: name ?? this.name,
      description: description ?? this.description,
      network: network ?? this.network,
      unit: unit ?? this.unit,
      term: term ?? this.term,
      financial: financial ?? this.financial,
    );
  }
}

/// [ExplanationOfBenefitFinancial]
/// Benefits Used to date.
class ExplanationOfBenefitFinancial extends BackboneElement {
  /// Primary constructor for
  /// [ExplanationOfBenefitFinancial]

  const ExplanationOfBenefitFinancial({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.allowedX,
    this.usedX,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitFinancial.fromJson(
    Map<String, dynamic> json,
  ) {
    return ExplanationOfBenefitFinancial(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      )!,
      allowedX:
          JsonParser.parsePolymorphic<AllowedXExplanationOfBenefitFinancial>(
              json, {
        'allowedUnsignedInt': FhirUnsignedInt.fromJson,
        'allowedString': FhirString.fromJson,
        'allowedMoney': Money.fromJson,
      }),
      usedX: JsonParser.parsePolymorphic<UsedXExplanationOfBenefitFinancial>(
          json, {
        'usedUnsignedInt': FhirUnsignedInt.fromJson,
        'usedMoney': Money.fromJson,
      }),
    );
  }

  /// Deserialize [ExplanationOfBenefitFinancial]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitFinancial.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitFinancial.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitFinancial.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitFinancial '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitFinancial]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitFinancial.fromJsonString(
    String source,
  ) {
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

  /// [allowedX]
  /// The quantity of the benefit which is permitted under the coverage.
  final AllowedXExplanationOfBenefitFinancial? allowedX;

  /// [usedX]
  /// The quantity of the benefit which have been consumed to date.
  final UsedXExplanationOfBenefitFinancial? usedX;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('type', type);
    if (allowedX != null) {
      final fhirType = allowedX!.fhirType;
      addField('allowed${fhirType.capitalize()}', allowedX);
    }

    if (usedX != null) {
      final fhirType = usedX!.fhirType;
      addField('used${fhirType.capitalize()}', usedX);
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
    AllowedXExplanationOfBenefitFinancial? allowedX,
    UsedXExplanationOfBenefitFinancial? usedX,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ExplanationOfBenefitFinancial(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      allowedX: allowedX ?? this.allowedX,
      usedX: usedX ?? this.usedX,
    );
  }
}
