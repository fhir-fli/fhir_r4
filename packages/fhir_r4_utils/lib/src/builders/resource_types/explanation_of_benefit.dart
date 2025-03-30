import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        ExplanationOfBenefit,
        ExplanationOfBenefitAccident,
        ExplanationOfBenefitAddItem,
        ExplanationOfBenefitAdjudication,
        ExplanationOfBenefitBenefitBalance,
        ExplanationOfBenefitCareTeam,
        ExplanationOfBenefitDetail,
        ExplanationOfBenefitDetail1,
        ExplanationOfBenefitDiagnosis,
        ExplanationOfBenefitFinancial,
        ExplanationOfBenefitInsurance,
        ExplanationOfBenefitItem,
        ExplanationOfBenefitPayee,
        ExplanationOfBenefitPayment,
        ExplanationOfBenefitProcedure,
        ExplanationOfBenefitProcessNote,
        ExplanationOfBenefitRelated,
        ExplanationOfBenefitSubDetail,
        ExplanationOfBenefitSubDetail1,
        ExplanationOfBenefitSupportingInfo,
        ExplanationOfBenefitTotal,
        R4ResourceType,
        StringExtensionForFHIR,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [ExplanationOfBenefitBuilder]
/// This resource provides: the claim details; adjudication details from
/// the processing of a Claim; and optionally account balance information,
/// for informing the subscriber of the benefits provided.
class ExplanationOfBenefitBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [ExplanationOfBenefitBuilder]

  ExplanationOfBenefitBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.status,
    this.type,
    this.subType,
    this.use,
    this.patient,
    this.billablePeriod,
    this.created,
    this.enterer,
    this.insurer,
    this.provider,
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
    this.outcome,
    this.disposition,
    this.preAuthRef,
    this.preAuthRefPeriod,
    this.careTeam,
    this.supportingInfo,
    this.diagnosis,
    this.procedure,
    this.precedence,
    this.insurance,
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
          objectPath: 'ExplanationOfBenefit',
          resourceType: R4ResourceType.ExplanationOfBenefit,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExplanationOfBenefitBuilder.empty() => ExplanationOfBenefitBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit';
    return ExplanationOfBenefitBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMetaBuilder>(
        json,
        'meta',
        FhirMetaBuilder.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'implicitRules',
        FhirUriBuilder.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguagesBuilder>(
        json,
        'language',
        CommonLanguagesBuilder.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<NarrativeBuilder>(
        json,
        'text',
        NarrativeBuilder.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<ResourceBuilder>(
            (v) => ResourceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<IdentifierBuilder>(
            (v) => IdentifierBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<ExplanationOfBenefitStatusBuilder>(
        json,
        'status',
        ExplanationOfBenefitStatusBuilder.fromJson,
        '$objectPath.status',
      ),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      subType: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'subType',
        CodeableConceptBuilder.fromJson,
        '$objectPath.subType',
      ),
      use: JsonParser.parsePrimitive<UseBuilder>(
        json,
        'use',
        UseBuilder.fromJson,
        '$objectPath.use',
      ),
      patient: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'patient',
        ReferenceBuilder.fromJson,
        '$objectPath.patient',
      ),
      billablePeriod: JsonParser.parseObject<PeriodBuilder>(
        json,
        'billablePeriod',
        PeriodBuilder.fromJson,
        '$objectPath.billablePeriod',
      ),
      created: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'created',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.created',
      ),
      enterer: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'enterer',
        ReferenceBuilder.fromJson,
        '$objectPath.enterer',
      ),
      insurer: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'insurer',
        ReferenceBuilder.fromJson,
        '$objectPath.insurer',
      ),
      provider: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'provider',
        ReferenceBuilder.fromJson,
        '$objectPath.provider',
      ),
      priority: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'priority',
        CodeableConceptBuilder.fromJson,
        '$objectPath.priority',
      ),
      fundsReserveRequested: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'fundsReserveRequested',
        CodeableConceptBuilder.fromJson,
        '$objectPath.fundsReserveRequested',
      ),
      fundsReserve: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'fundsReserve',
        CodeableConceptBuilder.fromJson,
        '$objectPath.fundsReserve',
      ),
      related: (json['related'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitRelatedBuilder>(
            (v) => ExplanationOfBenefitRelatedBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.related',
              },
            ),
          )
          .toList(),
      prescription: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'prescription',
        ReferenceBuilder.fromJson,
        '$objectPath.prescription',
      ),
      originalPrescription: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'originalPrescription',
        ReferenceBuilder.fromJson,
        '$objectPath.originalPrescription',
      ),
      payee: JsonParser.parseObject<ExplanationOfBenefitPayeeBuilder>(
        json,
        'payee',
        ExplanationOfBenefitPayeeBuilder.fromJson,
        '$objectPath.payee',
      ),
      referral: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'referral',
        ReferenceBuilder.fromJson,
        '$objectPath.referral',
      ),
      facility: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'facility',
        ReferenceBuilder.fromJson,
        '$objectPath.facility',
      ),
      claim: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'claim',
        ReferenceBuilder.fromJson,
        '$objectPath.claim',
      ),
      claimResponse: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'claimResponse',
        ReferenceBuilder.fromJson,
        '$objectPath.claimResponse',
      ),
      outcome: JsonParser.parsePrimitive<RemittanceOutcomeBuilder>(
        json,
        'outcome',
        RemittanceOutcomeBuilder.fromJson,
        '$objectPath.outcome',
      ),
      disposition: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'disposition',
        FhirStringBuilder.fromJson,
        '$objectPath.disposition',
      ),
      preAuthRef: JsonParser.parsePrimitiveList<FhirStringBuilder>(
        json,
        'preAuthRef',
        FhirStringBuilder.fromJson,
        '$objectPath.preAuthRef',
      ),
      preAuthRefPeriod: (json['preAuthRefPeriod'] as List<dynamic>?)
          ?.map<PeriodBuilder>(
            (v) => PeriodBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.preAuthRefPeriod',
              },
            ),
          )
          .toList(),
      careTeam: (json['careTeam'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitCareTeamBuilder>(
            (v) => ExplanationOfBenefitCareTeamBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.careTeam',
              },
            ),
          )
          .toList(),
      supportingInfo: (json['supportingInfo'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitSupportingInfoBuilder>(
            (v) => ExplanationOfBenefitSupportingInfoBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.supportingInfo',
              },
            ),
          )
          .toList(),
      diagnosis: (json['diagnosis'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitDiagnosisBuilder>(
            (v) => ExplanationOfBenefitDiagnosisBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.diagnosis',
              },
            ),
          )
          .toList(),
      procedure: (json['procedure'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitProcedureBuilder>(
            (v) => ExplanationOfBenefitProcedureBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.procedure',
              },
            ),
          )
          .toList(),
      precedence: JsonParser.parsePrimitive<FhirPositiveIntBuilder>(
        json,
        'precedence',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.precedence',
      ),
      insurance: (json['insurance'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitInsuranceBuilder>(
            (v) => ExplanationOfBenefitInsuranceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.insurance',
              },
            ),
          )
          .toList(),
      accident: JsonParser.parseObject<ExplanationOfBenefitAccidentBuilder>(
        json,
        'accident',
        ExplanationOfBenefitAccidentBuilder.fromJson,
        '$objectPath.accident',
      ),
      item: (json['item'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitItemBuilder>(
            (v) => ExplanationOfBenefitItemBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.item',
              },
            ),
          )
          .toList(),
      addItem: (json['addItem'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitAddItemBuilder>(
            (v) => ExplanationOfBenefitAddItemBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.addItem',
              },
            ),
          )
          .toList(),
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitAdjudicationBuilder>(
            (v) => ExplanationOfBenefitAdjudicationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.adjudication',
              },
            ),
          )
          .toList(),
      total: (json['total'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitTotalBuilder>(
            (v) => ExplanationOfBenefitTotalBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.total',
              },
            ),
          )
          .toList(),
      payment: JsonParser.parseObject<ExplanationOfBenefitPaymentBuilder>(
        json,
        'payment',
        ExplanationOfBenefitPaymentBuilder.fromJson,
        '$objectPath.payment',
      ),
      formCode: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'formCode',
        CodeableConceptBuilder.fromJson,
        '$objectPath.formCode',
      ),
      form: JsonParser.parseObject<AttachmentBuilder>(
        json,
        'form',
        AttachmentBuilder.fromJson,
        '$objectPath.form',
      ),
      processNote: (json['processNote'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitProcessNoteBuilder>(
            (v) => ExplanationOfBenefitProcessNoteBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.processNote',
              },
            ),
          )
          .toList(),
      benefitPeriod: JsonParser.parseObject<PeriodBuilder>(
        json,
        'benefitPeriod',
        PeriodBuilder.fromJson,
        '$objectPath.benefitPeriod',
      ),
      benefitBalance: (json['benefitBalance'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitBenefitBalanceBuilder>(
            (v) => ExplanationOfBenefitBenefitBalanceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.benefitBalance',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ExplanationOfBenefitBuilder]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefit';

  /// [identifier]
  /// A unique identifier assigned to this explanation of benefit.
  List<IdentifierBuilder>? identifier;

  /// [status]
  /// The status of the resource instance.
  ExplanationOfBenefitStatusBuilder? status;

  /// [type]
  /// The category of claim, e.g. oral, pharmacy, vision, institutional,
  /// professional.
  CodeableConceptBuilder? type;

  /// [subType]
  /// A finer grained suite of claim type codes which may convey additional
  /// information such as Inpatient vs Outpatient and/or a specialty service.
  CodeableConceptBuilder? subType;

  /// [use]
  /// A code to indicate whether the nature of the request is: to request
  /// adjudication of products and services previously rendered; or
  /// requesting authorization and adjudication for provision in the future;
  /// or requesting the non-binding adjudication of the listed products and
  /// services which could be provided in the future.
  UseBuilder? use;

  /// [patient]
  /// The party to whom the professional services and/or products have been
  /// supplied or are being considered and for whom actual for forecast
  /// reimbursement is sought.
  ReferenceBuilder? patient;

  /// [billablePeriod]
  /// The period for which charges are being submitted.
  PeriodBuilder? billablePeriod;

  /// [created]
  /// The date this resource was created.
  FhirDateTimeBuilder? created;

  /// [enterer]
  /// Individual who created the claim, predetermination or preauthorization.
  ReferenceBuilder? enterer;

  /// [insurer]
  /// The party responsible for authorization, adjudication and
  /// reimbursement.
  ReferenceBuilder? insurer;

  /// [provider]
  /// The provider which is responsible for the claim, predetermination or
  /// preauthorization.
  ReferenceBuilder? provider;

  /// [priority]
  /// The provider-required urgency of processing the request. Typical values
  /// include: stat, routine deferred.
  CodeableConceptBuilder? priority;

  /// [fundsReserveRequested]
  /// A code to indicate whether and for whom funds are to be reserved for
  /// future claims.
  CodeableConceptBuilder? fundsReserveRequested;

  /// [fundsReserve]
  /// A code, used only on a response to a preauthorization, to indicate
  /// whether the benefits payable have been reserved and for whom.
  CodeableConceptBuilder? fundsReserve;

  /// [related]
  /// Other claims which are related to this claim such as prior submissions
  /// or claims for related services or for the same event.
  List<ExplanationOfBenefitRelatedBuilder>? related;

  /// [prescription]
  /// Prescription to support the dispensing of pharmacy, device or vision
  /// products.
  ReferenceBuilder? prescription;

  /// [originalPrescription]
  /// Original prescription which has been superseded by this prescription to
  /// support the dispensing of pharmacy services, medications or products.
  ReferenceBuilder? originalPrescription;

  /// [payee]
  /// The party to be reimbursed for cost of the products and services
  /// according to the terms of the policy.
  ExplanationOfBenefitPayeeBuilder? payee;

  /// [referral]
  /// A reference to a referral resource.
  ReferenceBuilder? referral;

  /// [facility]
  /// Facility where the services were provided.
  ReferenceBuilder? facility;

  /// [claim]
  /// The business identifier for the instance of the adjudication request:
  /// claim predetermination or preauthorization.
  ReferenceBuilder? claim;

  /// [claimResponse]
  /// The business identifier for the instance of the adjudication response:
  /// claim, predetermination or preauthorization response.
  ReferenceBuilder? claimResponse;

  /// [outcome]
  /// The outcome of the claim, predetermination, or preauthorization
  /// processing.
  RemittanceOutcomeBuilder? outcome;

  /// [disposition]
  /// A human readable description of the status of the adjudication.
  FhirStringBuilder? disposition;

  /// [preAuthRef]
  /// Reference from the Insurer which is used in later communications which
  /// refers to this adjudication.
  List<FhirStringBuilder>? preAuthRef;

  /// [preAuthRefPeriod]
  /// The timeframe during which the supplied preauthorization reference may
  /// be quoted on claims to obtain the adjudication as provided.
  List<PeriodBuilder>? preAuthRefPeriod;

  /// [careTeam]
  /// The members of the team who provided the products and services.
  List<ExplanationOfBenefitCareTeamBuilder>? careTeam;

  /// [supportingInfo]
  /// Additional information codes regarding exceptions, special
  /// considerations, the condition, situation, prior or concurrent issues.
  List<ExplanationOfBenefitSupportingInfoBuilder>? supportingInfo;

  /// [diagnosis]
  /// Information about diagnoses relevant to the claim items.
  List<ExplanationOfBenefitDiagnosisBuilder>? diagnosis;

  /// [procedure]
  /// Procedures performed on the patient relevant to the billing items with
  /// the claim.
  List<ExplanationOfBenefitProcedureBuilder>? procedure;

  /// [precedence]
  /// This indicates the relative order of a series of EOBs related to
  /// different coverages for the same suite of services.
  FhirPositiveIntBuilder? precedence;

  /// [insurance]
  /// Financial instruments for reimbursement for the health care products
  /// and services specified on the claim.
  List<ExplanationOfBenefitInsuranceBuilder>? insurance;

  /// [accident]
  /// Details of a accident which resulted in injuries which required the
  /// products and services listed in the claim.
  ExplanationOfBenefitAccidentBuilder? accident;

  /// [item]
  /// A claim line. Either a simple (a product or service) or a 'group' of
  /// details which can also be a simple items or groups of sub-details.
  List<ExplanationOfBenefitItemBuilder>? item;

  /// [addItem]
  /// The first-tier service adjudications for payor added product or service
  /// lines.
  List<ExplanationOfBenefitAddItemBuilder>? addItem;

  /// [adjudication]
  /// The adjudication results which are presented at the header level rather
  /// than at the line-item or add-item levels.
  List<ExplanationOfBenefitAdjudicationBuilder>? adjudication;

  /// [total]
  /// Categorized monetary totals for the adjudication.
  List<ExplanationOfBenefitTotalBuilder>? total;

  /// [payment]
  /// Payment details for the adjudication of the claim.
  ExplanationOfBenefitPaymentBuilder? payment;

  /// [formCode]
  /// A code for the form to be used for printing the content.
  CodeableConceptBuilder? formCode;

  /// [form]
  /// The actual form, by reference or inclusion, for printing the content or
  /// an EOB.
  AttachmentBuilder? form;

  /// [processNote]
  /// A note that describes or explains adjudication results in a human
  /// readable form.
  List<ExplanationOfBenefitProcessNoteBuilder>? processNote;

  /// [benefitPeriod]
  /// The term of the benefits documented in this response.
  PeriodBuilder? benefitPeriod;

  /// [benefitBalance]
  /// Balance by Benefit Category.
  List<ExplanationOfBenefitBenefitBalanceBuilder>? benefitBalance;

  /// converts a [ExplanationOfBenefitBuilder]
  /// to [ExplanationOfBenefit]
  @override
  ExplanationOfBenefit build() => ExplanationOfBenefit.fromJson(toJson());

  /// converts a [ExplanationOfBenefitBuilder]
  /// to [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'meta',
      'implicitRules',
      'language',
      'text',
      'contained',
      'extension',
      'modifierExtension',
      'identifier',
      'status',
      'type',
      'subType',
      'use',
      'patient',
      'billablePeriod',
      'created',
      'enterer',
      'insurer',
      'provider',
      'priority',
      'fundsReserveRequested',
      'fundsReserve',
      'related',
      'prescription',
      'originalPrescription',
      'payee',
      'referral',
      'facility',
      'claim',
      'claimResponse',
      'outcome',
      'disposition',
      'preAuthRef',
      'preAuthRefPeriod',
      'careTeam',
      'supportingInfo',
      'diagnosis',
      'procedure',
      'precedence',
      'insurance',
      'accident',
      'item',
      'addItem',
      'adjudication',
      'total',
      'payment',
      'formCode',
      'form',
      'processNote',
      'benefitPeriod',
      'benefitBalance',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'meta':
        if (meta != null) {
          fields.add(meta!);
        }
      case 'implicitRules':
        if (implicitRules != null) {
          fields.add(implicitRules!);
        }
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'contained':
        if (contained != null) {
          fields.addAll(contained!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'subType':
        if (subType != null) {
          fields.add(subType!);
        }
      case 'use':
        if (use != null) {
          fields.add(use!);
        }
      case 'patient':
        if (patient != null) {
          fields.add(patient!);
        }
      case 'billablePeriod':
        if (billablePeriod != null) {
          fields.add(billablePeriod!);
        }
      case 'created':
        if (created != null) {
          fields.add(created!);
        }
      case 'enterer':
        if (enterer != null) {
          fields.add(enterer!);
        }
      case 'insurer':
        if (insurer != null) {
          fields.add(insurer!);
        }
      case 'provider':
        if (provider != null) {
          fields.add(provider!);
        }
      case 'priority':
        if (priority != null) {
          fields.add(priority!);
        }
      case 'fundsReserveRequested':
        if (fundsReserveRequested != null) {
          fields.add(fundsReserveRequested!);
        }
      case 'fundsReserve':
        if (fundsReserve != null) {
          fields.add(fundsReserve!);
        }
      case 'related':
        if (related != null) {
          fields.addAll(related!);
        }
      case 'prescription':
        if (prescription != null) {
          fields.add(prescription!);
        }
      case 'originalPrescription':
        if (originalPrescription != null) {
          fields.add(originalPrescription!);
        }
      case 'payee':
        if (payee != null) {
          fields.add(payee!);
        }
      case 'referral':
        if (referral != null) {
          fields.add(referral!);
        }
      case 'facility':
        if (facility != null) {
          fields.add(facility!);
        }
      case 'claim':
        if (claim != null) {
          fields.add(claim!);
        }
      case 'claimResponse':
        if (claimResponse != null) {
          fields.add(claimResponse!);
        }
      case 'outcome':
        if (outcome != null) {
          fields.add(outcome!);
        }
      case 'disposition':
        if (disposition != null) {
          fields.add(disposition!);
        }
      case 'preAuthRef':
        if (preAuthRef != null) {
          fields.addAll(preAuthRef!);
        }
      case 'preAuthRefPeriod':
        if (preAuthRefPeriod != null) {
          fields.addAll(preAuthRefPeriod!);
        }
      case 'careTeam':
        if (careTeam != null) {
          fields.addAll(careTeam!);
        }
      case 'supportingInfo':
        if (supportingInfo != null) {
          fields.addAll(supportingInfo!);
        }
      case 'diagnosis':
        if (diagnosis != null) {
          fields.addAll(diagnosis!);
        }
      case 'procedure':
        if (procedure != null) {
          fields.addAll(procedure!);
        }
      case 'precedence':
        if (precedence != null) {
          fields.add(precedence!);
        }
      case 'insurance':
        if (insurance != null) {
          fields.addAll(insurance!);
        }
      case 'accident':
        if (accident != null) {
          fields.add(accident!);
        }
      case 'item':
        if (item != null) {
          fields.addAll(item!);
        }
      case 'addItem':
        if (addItem != null) {
          fields.addAll(addItem!);
        }
      case 'adjudication':
        if (adjudication != null) {
          fields.addAll(adjudication!);
        }
      case 'total':
        if (total != null) {
          fields.addAll(total!);
        }
      case 'payment':
        if (payment != null) {
          fields.add(payment!);
        }
      case 'formCode':
        if (formCode != null) {
          fields.add(formCode!);
        }
      case 'form':
        if (form != null) {
          fields.add(form!);
        }
      case 'processNote':
        if (processNote != null) {
          fields.addAll(processNote!);
        }
      case 'benefitPeriod':
        if (benefitPeriod != null) {
          fields.add(benefitPeriod!);
        }
      case 'benefitBalance':
        if (benefitBalance != null) {
          fields.addAll(benefitBalance!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'meta':
        {
          if (child is FhirMetaBuilder) {
            meta = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUriBuilder) {
            implicitRules = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'language':
        {
          if (child is CommonLanguagesBuilder) {
            language = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'text':
        {
          if (child is NarrativeBuilder) {
            text = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contained':
        {
          if (child is List<ResourceBuilder>) {
            // Replace or create new list
            contained = child;
            return;
          } else if (child is ResourceBuilder) {
            // Add single element to existing list or create new list
            contained = [...(contained ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'identifier':
        {
          if (child is List<IdentifierBuilder>) {
            // Replace or create new list
            identifier = child;
            return;
          } else if (child is IdentifierBuilder) {
            // Add single element to existing list or create new list
            identifier = [...(identifier ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'status':
        {
          if (child is ExplanationOfBenefitStatusBuilder) {
            status = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subType':
        {
          if (child is CodeableConceptBuilder) {
            subType = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'use':
        {
          if (child is UseBuilder) {
            use = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patient':
        {
          if (child is ReferenceBuilder) {
            patient = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'billablePeriod':
        {
          if (child is PeriodBuilder) {
            billablePeriod = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'created':
        {
          if (child is FhirDateTimeBuilder) {
            created = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'enterer':
        {
          if (child is ReferenceBuilder) {
            enterer = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'insurer':
        {
          if (child is ReferenceBuilder) {
            insurer = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'provider':
        {
          if (child is ReferenceBuilder) {
            provider = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'priority':
        {
          if (child is CodeableConceptBuilder) {
            priority = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fundsReserveRequested':
        {
          if (child is CodeableConceptBuilder) {
            fundsReserveRequested = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fundsReserve':
        {
          if (child is CodeableConceptBuilder) {
            fundsReserve = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'related':
        {
          if (child is List<ExplanationOfBenefitRelatedBuilder>) {
            // Replace or create new list
            related = child;
            return;
          } else if (child is ExplanationOfBenefitRelatedBuilder) {
            // Add single element to existing list or create new list
            related = [...(related ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'prescription':
        {
          if (child is ReferenceBuilder) {
            prescription = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'originalPrescription':
        {
          if (child is ReferenceBuilder) {
            originalPrescription = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'payee':
        {
          if (child is ExplanationOfBenefitPayeeBuilder) {
            payee = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'referral':
        {
          if (child is ReferenceBuilder) {
            referral = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'facility':
        {
          if (child is ReferenceBuilder) {
            facility = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'claim':
        {
          if (child is ReferenceBuilder) {
            claim = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'claimResponse':
        {
          if (child is ReferenceBuilder) {
            claimResponse = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'outcome':
        {
          if (child is RemittanceOutcomeBuilder) {
            outcome = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'disposition':
        {
          if (child is FhirStringBuilder) {
            disposition = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'preAuthRef':
        {
          if (child is List<FhirStringBuilder>) {
            // Replace or create new list
            preAuthRef = child;
            return;
          } else if (child is FhirStringBuilder) {
            // Add single element to existing list or create new list
            preAuthRef = [...(preAuthRef ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'preAuthRefPeriod':
        {
          if (child is List<PeriodBuilder>) {
            // Replace or create new list
            preAuthRefPeriod = child;
            return;
          } else if (child is PeriodBuilder) {
            // Add single element to existing list or create new list
            preAuthRefPeriod = [...(preAuthRefPeriod ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'careTeam':
        {
          if (child is List<ExplanationOfBenefitCareTeamBuilder>) {
            // Replace or create new list
            careTeam = child;
            return;
          } else if (child is ExplanationOfBenefitCareTeamBuilder) {
            // Add single element to existing list or create new list
            careTeam = [...(careTeam ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'supportingInfo':
        {
          if (child is List<ExplanationOfBenefitSupportingInfoBuilder>) {
            // Replace or create new list
            supportingInfo = child;
            return;
          } else if (child is ExplanationOfBenefitSupportingInfoBuilder) {
            // Add single element to existing list or create new list
            supportingInfo = [...(supportingInfo ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'diagnosis':
        {
          if (child is List<ExplanationOfBenefitDiagnosisBuilder>) {
            // Replace or create new list
            diagnosis = child;
            return;
          } else if (child is ExplanationOfBenefitDiagnosisBuilder) {
            // Add single element to existing list or create new list
            diagnosis = [...(diagnosis ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'procedure':
        {
          if (child is List<ExplanationOfBenefitProcedureBuilder>) {
            // Replace or create new list
            procedure = child;
            return;
          } else if (child is ExplanationOfBenefitProcedureBuilder) {
            // Add single element to existing list or create new list
            procedure = [...(procedure ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'precedence':
        {
          if (child is FhirPositiveIntBuilder) {
            precedence = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'insurance':
        {
          if (child is List<ExplanationOfBenefitInsuranceBuilder>) {
            // Replace or create new list
            insurance = child;
            return;
          } else if (child is ExplanationOfBenefitInsuranceBuilder) {
            // Add single element to existing list or create new list
            insurance = [...(insurance ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'accident':
        {
          if (child is ExplanationOfBenefitAccidentBuilder) {
            accident = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'item':
        {
          if (child is List<ExplanationOfBenefitItemBuilder>) {
            // Replace or create new list
            item = child;
            return;
          } else if (child is ExplanationOfBenefitItemBuilder) {
            // Add single element to existing list or create new list
            item = [...(item ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'addItem':
        {
          if (child is List<ExplanationOfBenefitAddItemBuilder>) {
            // Replace or create new list
            addItem = child;
            return;
          } else if (child is ExplanationOfBenefitAddItemBuilder) {
            // Add single element to existing list or create new list
            addItem = [...(addItem ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'adjudication':
        {
          if (child is List<ExplanationOfBenefitAdjudicationBuilder>) {
            // Replace or create new list
            adjudication = child;
            return;
          } else if (child is ExplanationOfBenefitAdjudicationBuilder) {
            // Add single element to existing list or create new list
            adjudication = [...(adjudication ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'total':
        {
          if (child is List<ExplanationOfBenefitTotalBuilder>) {
            // Replace or create new list
            total = child;
            return;
          } else if (child is ExplanationOfBenefitTotalBuilder) {
            // Add single element to existing list or create new list
            total = [...(total ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'payment':
        {
          if (child is ExplanationOfBenefitPaymentBuilder) {
            payment = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'formCode':
        {
          if (child is CodeableConceptBuilder) {
            formCode = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'form':
        {
          if (child is AttachmentBuilder) {
            form = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'processNote':
        {
          if (child is List<ExplanationOfBenefitProcessNoteBuilder>) {
            // Replace or create new list
            processNote = child;
            return;
          } else if (child is ExplanationOfBenefitProcessNoteBuilder) {
            // Add single element to existing list or create new list
            processNote = [...(processNote ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'benefitPeriod':
        {
          if (child is PeriodBuilder) {
            benefitPeriod = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'benefitBalance':
        {
          if (child is List<ExplanationOfBenefitBenefitBalanceBuilder>) {
            // Replace or create new list
            benefitBalance = child;
            return;
          } else if (child is ExplanationOfBenefitBenefitBalanceBuilder) {
            // Add single element to existing list or create new list
            benefitBalance = [...(benefitBalance ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'meta':
        return ['FhirMetaBuilder'];
      case 'implicitRules':
        return ['FhirUriBuilder'];
      case 'language':
        return ['FhirCodeEnumBuilder'];
      case 'text':
        return ['NarrativeBuilder'];
      case 'contained':
        return ['ResourceBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'subType':
        return ['CodeableConceptBuilder'];
      case 'use':
        return ['FhirCodeEnumBuilder'];
      case 'patient':
        return ['ReferenceBuilder'];
      case 'billablePeriod':
        return ['PeriodBuilder'];
      case 'created':
        return ['FhirDateTimeBuilder'];
      case 'enterer':
        return ['ReferenceBuilder'];
      case 'insurer':
        return ['ReferenceBuilder'];
      case 'provider':
        return ['ReferenceBuilder'];
      case 'priority':
        return ['CodeableConceptBuilder'];
      case 'fundsReserveRequested':
        return ['CodeableConceptBuilder'];
      case 'fundsReserve':
        return ['CodeableConceptBuilder'];
      case 'related':
        return ['ExplanationOfBenefitRelatedBuilder'];
      case 'prescription':
        return ['ReferenceBuilder'];
      case 'originalPrescription':
        return ['ReferenceBuilder'];
      case 'payee':
        return ['ExplanationOfBenefitPayeeBuilder'];
      case 'referral':
        return ['ReferenceBuilder'];
      case 'facility':
        return ['ReferenceBuilder'];
      case 'claim':
        return ['ReferenceBuilder'];
      case 'claimResponse':
        return ['ReferenceBuilder'];
      case 'outcome':
        return ['FhirCodeEnumBuilder'];
      case 'disposition':
        return ['FhirStringBuilder'];
      case 'preAuthRef':
        return ['FhirStringBuilder'];
      case 'preAuthRefPeriod':
        return ['PeriodBuilder'];
      case 'careTeam':
        return ['ExplanationOfBenefitCareTeamBuilder'];
      case 'supportingInfo':
        return ['ExplanationOfBenefitSupportingInfoBuilder'];
      case 'diagnosis':
        return ['ExplanationOfBenefitDiagnosisBuilder'];
      case 'procedure':
        return ['ExplanationOfBenefitProcedureBuilder'];
      case 'precedence':
        return ['FhirPositiveIntBuilder'];
      case 'insurance':
        return ['ExplanationOfBenefitInsuranceBuilder'];
      case 'accident':
        return ['ExplanationOfBenefitAccidentBuilder'];
      case 'item':
        return ['ExplanationOfBenefitItemBuilder'];
      case 'addItem':
        return ['ExplanationOfBenefitAddItemBuilder'];
      case 'adjudication':
        return ['ExplanationOfBenefitAdjudicationBuilder'];
      case 'total':
        return ['ExplanationOfBenefitTotalBuilder'];
      case 'payment':
        return ['ExplanationOfBenefitPaymentBuilder'];
      case 'formCode':
        return ['CodeableConceptBuilder'];
      case 'form':
        return ['AttachmentBuilder'];
      case 'processNote':
        return ['ExplanationOfBenefitProcessNoteBuilder'];
      case 'benefitPeriod':
        return ['PeriodBuilder'];
      case 'benefitBalance':
        return ['ExplanationOfBenefitBenefitBalanceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'meta':
        {
          meta = FhirMetaBuilder.empty();
          return;
        }
      case 'implicitRules':
        {
          implicitRules = FhirUriBuilder.empty();
          return;
        }
      case 'language':
        {
          language = CommonLanguagesBuilder.empty();
          return;
        }
      case 'text':
        {
          text = NarrativeBuilder.empty();
          return;
        }
      case 'contained':
        {
          contained = <ResourceBuilder>[];
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'identifier':
        {
          identifier = <IdentifierBuilder>[];
          return;
        }
      case 'status':
        {
          status = ExplanationOfBenefitStatusBuilder.empty();
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'subType':
        {
          subType = CodeableConceptBuilder.empty();
          return;
        }
      case 'use':
        {
          use = UseBuilder.empty();
          return;
        }
      case 'patient':
        {
          patient = ReferenceBuilder.empty();
          return;
        }
      case 'billablePeriod':
        {
          billablePeriod = PeriodBuilder.empty();
          return;
        }
      case 'created':
        {
          created = FhirDateTimeBuilder.empty();
          return;
        }
      case 'enterer':
        {
          enterer = ReferenceBuilder.empty();
          return;
        }
      case 'insurer':
        {
          insurer = ReferenceBuilder.empty();
          return;
        }
      case 'provider':
        {
          provider = ReferenceBuilder.empty();
          return;
        }
      case 'priority':
        {
          priority = CodeableConceptBuilder.empty();
          return;
        }
      case 'fundsReserveRequested':
        {
          fundsReserveRequested = CodeableConceptBuilder.empty();
          return;
        }
      case 'fundsReserve':
        {
          fundsReserve = CodeableConceptBuilder.empty();
          return;
        }
      case 'related':
        {
          related = <ExplanationOfBenefitRelatedBuilder>[];
          return;
        }
      case 'prescription':
        {
          prescription = ReferenceBuilder.empty();
          return;
        }
      case 'originalPrescription':
        {
          originalPrescription = ReferenceBuilder.empty();
          return;
        }
      case 'payee':
        {
          payee = ExplanationOfBenefitPayeeBuilder.empty();
          return;
        }
      case 'referral':
        {
          referral = ReferenceBuilder.empty();
          return;
        }
      case 'facility':
        {
          facility = ReferenceBuilder.empty();
          return;
        }
      case 'claim':
        {
          claim = ReferenceBuilder.empty();
          return;
        }
      case 'claimResponse':
        {
          claimResponse = ReferenceBuilder.empty();
          return;
        }
      case 'outcome':
        {
          outcome = RemittanceOutcomeBuilder.empty();
          return;
        }
      case 'disposition':
        {
          disposition = FhirStringBuilder.empty();
          return;
        }
      case 'preAuthRef':
        {
          preAuthRef = <FhirStringBuilder>[];
          return;
        }
      case 'preAuthRefPeriod':
        {
          preAuthRefPeriod = <PeriodBuilder>[];
          return;
        }
      case 'careTeam':
        {
          careTeam = <ExplanationOfBenefitCareTeamBuilder>[];
          return;
        }
      case 'supportingInfo':
        {
          supportingInfo = <ExplanationOfBenefitSupportingInfoBuilder>[];
          return;
        }
      case 'diagnosis':
        {
          diagnosis = <ExplanationOfBenefitDiagnosisBuilder>[];
          return;
        }
      case 'procedure':
        {
          procedure = <ExplanationOfBenefitProcedureBuilder>[];
          return;
        }
      case 'precedence':
        {
          precedence = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'insurance':
        {
          insurance = <ExplanationOfBenefitInsuranceBuilder>[];
          return;
        }
      case 'accident':
        {
          accident = ExplanationOfBenefitAccidentBuilder.empty();
          return;
        }
      case 'item':
        {
          item = <ExplanationOfBenefitItemBuilder>[];
          return;
        }
      case 'addItem':
        {
          addItem = <ExplanationOfBenefitAddItemBuilder>[];
          return;
        }
      case 'adjudication':
        {
          adjudication = <ExplanationOfBenefitAdjudicationBuilder>[];
          return;
        }
      case 'total':
        {
          total = <ExplanationOfBenefitTotalBuilder>[];
          return;
        }
      case 'payment':
        {
          payment = ExplanationOfBenefitPaymentBuilder.empty();
          return;
        }
      case 'formCode':
        {
          formCode = CodeableConceptBuilder.empty();
          return;
        }
      case 'form':
        {
          form = AttachmentBuilder.empty();
          return;
        }
      case 'processNote':
        {
          processNote = <ExplanationOfBenefitProcessNoteBuilder>[];
          return;
        }
      case 'benefitPeriod':
        {
          benefitPeriod = PeriodBuilder.empty();
          return;
        }
      case 'benefitBalance':
        {
          benefitBalance = <ExplanationOfBenefitBenefitBalanceBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool identifier = false,
    bool status = false,
    bool type = false,
    bool subType = false,
    bool use = false,
    bool patient = false,
    bool billablePeriod = false,
    bool created = false,
    bool enterer = false,
    bool insurer = false,
    bool provider = false,
    bool priority = false,
    bool fundsReserveRequested = false,
    bool fundsReserve = false,
    bool related = false,
    bool prescription = false,
    bool originalPrescription = false,
    bool payee = false,
    bool referral = false,
    bool facility = false,
    bool claim = false,
    bool claimResponse = false,
    bool outcome = false,
    bool disposition = false,
    bool preAuthRef = false,
    bool preAuthRefPeriod = false,
    bool careTeam = false,
    bool supportingInfo = false,
    bool diagnosis = false,
    bool procedure = false,
    bool precedence = false,
    bool insurance = false,
    bool accident = false,
    bool item = false,
    bool addItem = false,
    bool adjudication = false,
    bool total = false,
    bool payment = false,
    bool formCode = false,
    bool form = false,
    bool processNote = false,
    bool benefitPeriod = false,
    bool benefitBalance = false,
  }) {
    if (id) this.id = null;
    if (meta) this.meta = null;
    if (implicitRules) this.implicitRules = null;
    if (language) this.language = null;
    if (text) this.text = null;
    if (contained) this.contained = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (identifier) this.identifier = null;
    if (status) this.status = null;
    if (type) this.type = null;
    if (subType) this.subType = null;
    if (use) this.use = null;
    if (patient) this.patient = null;
    if (billablePeriod) this.billablePeriod = null;
    if (created) this.created = null;
    if (enterer) this.enterer = null;
    if (insurer) this.insurer = null;
    if (provider) this.provider = null;
    if (priority) this.priority = null;
    if (fundsReserveRequested) this.fundsReserveRequested = null;
    if (fundsReserve) this.fundsReserve = null;
    if (related) this.related = null;
    if (prescription) this.prescription = null;
    if (originalPrescription) this.originalPrescription = null;
    if (payee) this.payee = null;
    if (referral) this.referral = null;
    if (facility) this.facility = null;
    if (claim) this.claim = null;
    if (claimResponse) this.claimResponse = null;
    if (outcome) this.outcome = null;
    if (disposition) this.disposition = null;
    if (preAuthRef) this.preAuthRef = null;
    if (preAuthRefPeriod) this.preAuthRefPeriod = null;
    if (careTeam) this.careTeam = null;
    if (supportingInfo) this.supportingInfo = null;
    if (diagnosis) this.diagnosis = null;
    if (procedure) this.procedure = null;
    if (precedence) this.precedence = null;
    if (insurance) this.insurance = null;
    if (accident) this.accident = null;
    if (item) this.item = null;
    if (addItem) this.addItem = null;
    if (adjudication) this.adjudication = null;
    if (total) this.total = null;
    if (payment) this.payment = null;
    if (formCode) this.formCode = null;
    if (form) this.form = null;
    if (processNote) this.processNote = null;
    if (benefitPeriod) this.benefitPeriod = null;
    if (benefitBalance) this.benefitBalance = null;
  }

  @override
  ExplanationOfBenefitBuilder clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    ExplanationOfBenefitStatusBuilder? status,
    CodeableConceptBuilder? type,
    CodeableConceptBuilder? subType,
    UseBuilder? use,
    ReferenceBuilder? patient,
    PeriodBuilder? billablePeriod,
    FhirDateTimeBuilder? created,
    ReferenceBuilder? enterer,
    ReferenceBuilder? insurer,
    ReferenceBuilder? provider,
    CodeableConceptBuilder? priority,
    CodeableConceptBuilder? fundsReserveRequested,
    CodeableConceptBuilder? fundsReserve,
    List<ExplanationOfBenefitRelatedBuilder>? related,
    ReferenceBuilder? prescription,
    ReferenceBuilder? originalPrescription,
    ExplanationOfBenefitPayeeBuilder? payee,
    ReferenceBuilder? referral,
    ReferenceBuilder? facility,
    ReferenceBuilder? claim,
    ReferenceBuilder? claimResponse,
    RemittanceOutcomeBuilder? outcome,
    FhirStringBuilder? disposition,
    List<FhirStringBuilder>? preAuthRef,
    List<PeriodBuilder>? preAuthRefPeriod,
    List<ExplanationOfBenefitCareTeamBuilder>? careTeam,
    List<ExplanationOfBenefitSupportingInfoBuilder>? supportingInfo,
    List<ExplanationOfBenefitDiagnosisBuilder>? diagnosis,
    List<ExplanationOfBenefitProcedureBuilder>? procedure,
    FhirPositiveIntBuilder? precedence,
    List<ExplanationOfBenefitInsuranceBuilder>? insurance,
    ExplanationOfBenefitAccidentBuilder? accident,
    List<ExplanationOfBenefitItemBuilder>? item,
    List<ExplanationOfBenefitAddItemBuilder>? addItem,
    List<ExplanationOfBenefitAdjudicationBuilder>? adjudication,
    List<ExplanationOfBenefitTotalBuilder>? total,
    ExplanationOfBenefitPaymentBuilder? payment,
    CodeableConceptBuilder? formCode,
    AttachmentBuilder? form,
    List<ExplanationOfBenefitProcessNoteBuilder>? processNote,
    PeriodBuilder? benefitPeriod,
    List<ExplanationOfBenefitBenefitBalanceBuilder>? benefitBalance,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = ExplanationOfBenefitBuilder(
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
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ExplanationOfBenefitBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!listEquals<ResourceBuilder>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<IdentifierBuilder>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      subType,
      o.subType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      use,
      o.use,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      patient,
      o.patient,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      billablePeriod,
      o.billablePeriod,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      created,
      o.created,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      enterer,
      o.enterer,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      insurer,
      o.insurer,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      provider,
      o.provider,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      priority,
      o.priority,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      fundsReserveRequested,
      o.fundsReserveRequested,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      fundsReserve,
      o.fundsReserve,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitRelatedBuilder>(
      related,
      o.related,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      prescription,
      o.prescription,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      originalPrescription,
      o.originalPrescription,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      payee,
      o.payee,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      referral,
      o.referral,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      facility,
      o.facility,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      claim,
      o.claim,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      claimResponse,
      o.claimResponse,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      outcome,
      o.outcome,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      disposition,
      o.disposition,
    )) {
      return false;
    }
    if (!listEquals<FhirStringBuilder>(
      preAuthRef,
      o.preAuthRef,
    )) {
      return false;
    }
    if (!listEquals<PeriodBuilder>(
      preAuthRefPeriod,
      o.preAuthRefPeriod,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitCareTeamBuilder>(
      careTeam,
      o.careTeam,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitSupportingInfoBuilder>(
      supportingInfo,
      o.supportingInfo,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitDiagnosisBuilder>(
      diagnosis,
      o.diagnosis,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitProcedureBuilder>(
      procedure,
      o.procedure,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      precedence,
      o.precedence,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitInsuranceBuilder>(
      insurance,
      o.insurance,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      accident,
      o.accident,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitItemBuilder>(
      item,
      o.item,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitAddItemBuilder>(
      addItem,
      o.addItem,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitAdjudicationBuilder>(
      adjudication,
      o.adjudication,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitTotalBuilder>(
      total,
      o.total,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      payment,
      o.payment,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      formCode,
      o.formCode,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      form,
      o.form,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitProcessNoteBuilder>(
      processNote,
      o.processNote,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      benefitPeriod,
      o.benefitPeriod,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitBenefitBalanceBuilder>(
      benefitBalance,
      o.benefitBalance,
    )) {
      return false;
    }
    return true;
  }
}

/// [ExplanationOfBenefitRelatedBuilder]
/// Other claims which are related to this claim such as prior submissions
/// or claims for related services or for the same event.
class ExplanationOfBenefitRelatedBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ExplanationOfBenefitRelatedBuilder]

  ExplanationOfBenefitRelatedBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.claim,
    this.relationship,
    this.reference,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ExplanationOfBenefit.related',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExplanationOfBenefitRelatedBuilder.empty() =>
      ExplanationOfBenefitRelatedBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitRelatedBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.related';
    return ExplanationOfBenefitRelatedBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      claim: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'claim',
        ReferenceBuilder.fromJson,
        '$objectPath.claim',
      ),
      relationship: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'relationship',
        CodeableConceptBuilder.fromJson,
        '$objectPath.relationship',
      ),
      reference: JsonParser.parseObject<IdentifierBuilder>(
        json,
        'reference',
        IdentifierBuilder.fromJson,
        '$objectPath.reference',
      ),
    );
  }

  /// Deserialize [ExplanationOfBenefitRelatedBuilder]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitRelatedBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitRelatedBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitRelatedBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitRelatedBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitRelatedBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitRelatedBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitRelatedBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitRelated';

  /// [claim]
  /// Reference to a related claim.
  ReferenceBuilder? claim;

  /// [relationship]
  /// A code to convey how the claims are related.
  CodeableConceptBuilder? relationship;

  /// [reference]
  /// An alternate organizational reference to the case or file to which this
  /// particular claim pertains.
  IdentifierBuilder? reference;

  /// converts a [ExplanationOfBenefitRelatedBuilder]
  /// to [ExplanationOfBenefitRelated]
  @override
  ExplanationOfBenefitRelated build() =>
      ExplanationOfBenefitRelated.fromJson(toJson());

  /// converts a [ExplanationOfBenefitRelatedBuilder]
  /// to [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'claim',
      'relationship',
      'reference',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'claim':
        if (claim != null) {
          fields.add(claim!);
        }
      case 'relationship':
        if (relationship != null) {
          fields.add(relationship!);
        }
      case 'reference':
        if (reference != null) {
          fields.add(reference!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'claim':
        {
          if (child is ReferenceBuilder) {
            claim = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'relationship':
        {
          if (child is CodeableConceptBuilder) {
            relationship = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reference':
        {
          if (child is IdentifierBuilder) {
            reference = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'claim':
        return ['ReferenceBuilder'];
      case 'relationship':
        return ['CodeableConceptBuilder'];
      case 'reference':
        return ['IdentifierBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitRelatedBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'claim':
        {
          claim = ReferenceBuilder.empty();
          return;
        }
      case 'relationship':
        {
          relationship = CodeableConceptBuilder.empty();
          return;
        }
      case 'reference':
        {
          reference = IdentifierBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool claim = false,
    bool relationship = false,
    bool reference = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (claim) this.claim = null;
    if (relationship) this.relationship = null;
    if (reference) this.reference = null;
  }

  @override
  ExplanationOfBenefitRelatedBuilder clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitRelatedBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ReferenceBuilder? claim,
    CodeableConceptBuilder? relationship,
    IdentifierBuilder? reference,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ExplanationOfBenefitRelatedBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      claim: claim ?? this.claim,
      relationship: relationship ?? this.relationship,
      reference: reference ?? this.reference,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ExplanationOfBenefitRelatedBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      claim,
      o.claim,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      relationship,
      o.relationship,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      reference,
      o.reference,
    )) {
      return false;
    }
    return true;
  }
}

/// [ExplanationOfBenefitPayeeBuilder]
/// The party to be reimbursed for cost of the products and services
/// according to the terms of the policy.
class ExplanationOfBenefitPayeeBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ExplanationOfBenefitPayeeBuilder]

  ExplanationOfBenefitPayeeBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.party,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ExplanationOfBenefit.payee',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExplanationOfBenefitPayeeBuilder.empty() =>
      ExplanationOfBenefitPayeeBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitPayeeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.payee';
    return ExplanationOfBenefitPayeeBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      party: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'party',
        ReferenceBuilder.fromJson,
        '$objectPath.party',
      ),
    );
  }

  /// Deserialize [ExplanationOfBenefitPayeeBuilder]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitPayeeBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitPayeeBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitPayeeBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitPayeeBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitPayeeBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitPayeeBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitPayeeBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitPayee';

  /// [type]
  /// Type of Party to be reimbursed: Subscriber, provider, other.
  CodeableConceptBuilder? type;

  /// [party]
  /// Reference to the individual or organization to whom any payment will be
  /// made.
  ReferenceBuilder? party;

  /// converts a [ExplanationOfBenefitPayeeBuilder]
  /// to [ExplanationOfBenefitPayee]
  @override
  ExplanationOfBenefitPayee build() =>
      ExplanationOfBenefitPayee.fromJson(toJson());

  /// converts a [ExplanationOfBenefitPayeeBuilder]
  /// to [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'type',
      'party',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'party':
        if (party != null) {
          fields.add(party!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'party':
        {
          if (child is ReferenceBuilder) {
            party = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'party':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitPayeeBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'party':
        {
          party = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool type = false,
    bool party = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (type) this.type = null;
    if (party) this.party = null;
  }

  @override
  ExplanationOfBenefitPayeeBuilder clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitPayeeBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    ReferenceBuilder? party,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ExplanationOfBenefitPayeeBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      party: party ?? this.party,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ExplanationOfBenefitPayeeBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      party,
      o.party,
    )) {
      return false;
    }
    return true;
  }
}

/// [ExplanationOfBenefitCareTeamBuilder]
/// The members of the team who provided the products and services.
class ExplanationOfBenefitCareTeamBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ExplanationOfBenefitCareTeamBuilder]

  ExplanationOfBenefitCareTeamBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.sequence,
    this.provider,
    this.responsible,
    this.role,
    this.qualification,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ExplanationOfBenefit.careTeam',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExplanationOfBenefitCareTeamBuilder.empty() =>
      ExplanationOfBenefitCareTeamBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitCareTeamBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.careTeam';
    return ExplanationOfBenefitCareTeamBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      sequence: JsonParser.parsePrimitive<FhirPositiveIntBuilder>(
        json,
        'sequence',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.sequence',
      ),
      provider: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'provider',
        ReferenceBuilder.fromJson,
        '$objectPath.provider',
      ),
      responsible: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'responsible',
        FhirBooleanBuilder.fromJson,
        '$objectPath.responsible',
      ),
      role: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'role',
        CodeableConceptBuilder.fromJson,
        '$objectPath.role',
      ),
      qualification: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'qualification',
        CodeableConceptBuilder.fromJson,
        '$objectPath.qualification',
      ),
    );
  }

  /// Deserialize [ExplanationOfBenefitCareTeamBuilder]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitCareTeamBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitCareTeamBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitCareTeamBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitCareTeamBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitCareTeamBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitCareTeamBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitCareTeamBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitCareTeam';

  /// [sequence]
  /// A number to uniquely identify care team entries.
  FhirPositiveIntBuilder? sequence;

  /// [provider]
  /// Member of the team who provided the product or service.
  ReferenceBuilder? provider;

  /// [responsible]
  /// The party who is billing and/or responsible for the claimed products or
  /// services.
  FhirBooleanBuilder? responsible;

  /// [role]
  /// The lead, assisting or supervising practitioner and their discipline if
  /// a multidisciplinary team.
  CodeableConceptBuilder? role;

  /// [qualification]
  /// The qualification of the practitioner which is applicable for this
  /// service.
  CodeableConceptBuilder? qualification;

  /// converts a [ExplanationOfBenefitCareTeamBuilder]
  /// to [ExplanationOfBenefitCareTeam]
  @override
  ExplanationOfBenefitCareTeam build() =>
      ExplanationOfBenefitCareTeam.fromJson(toJson());

  /// converts a [ExplanationOfBenefitCareTeamBuilder]
  /// to [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'sequence',
      'provider',
      'responsible',
      'role',
      'qualification',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'sequence':
        if (sequence != null) {
          fields.add(sequence!);
        }
      case 'provider':
        if (provider != null) {
          fields.add(provider!);
        }
      case 'responsible':
        if (responsible != null) {
          fields.add(responsible!);
        }
      case 'role':
        if (role != null) {
          fields.add(role!);
        }
      case 'qualification':
        if (qualification != null) {
          fields.add(qualification!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'sequence':
        {
          if (child is FhirPositiveIntBuilder) {
            sequence = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'provider':
        {
          if (child is ReferenceBuilder) {
            provider = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'responsible':
        {
          if (child is FhirBooleanBuilder) {
            responsible = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'role':
        {
          if (child is CodeableConceptBuilder) {
            role = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'qualification':
        {
          if (child is CodeableConceptBuilder) {
            qualification = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'sequence':
        return ['FhirPositiveIntBuilder'];
      case 'provider':
        return ['ReferenceBuilder'];
      case 'responsible':
        return ['FhirBooleanBuilder'];
      case 'role':
        return ['CodeableConceptBuilder'];
      case 'qualification':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitCareTeamBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'sequence':
        {
          sequence = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'provider':
        {
          provider = ReferenceBuilder.empty();
          return;
        }
      case 'responsible':
        {
          responsible = FhirBooleanBuilder.empty();
          return;
        }
      case 'role':
        {
          role = CodeableConceptBuilder.empty();
          return;
        }
      case 'qualification':
        {
          qualification = CodeableConceptBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool sequence = false,
    bool provider = false,
    bool responsible = false,
    bool role = false,
    bool qualification = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (sequence) this.sequence = null;
    if (provider) this.provider = null;
    if (responsible) this.responsible = null;
    if (role) this.role = null;
    if (qualification) this.qualification = null;
  }

  @override
  ExplanationOfBenefitCareTeamBuilder clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitCareTeamBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirPositiveIntBuilder? sequence,
    ReferenceBuilder? provider,
    FhirBooleanBuilder? responsible,
    CodeableConceptBuilder? role,
    CodeableConceptBuilder? qualification,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ExplanationOfBenefitCareTeamBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      provider: provider ?? this.provider,
      responsible: responsible ?? this.responsible,
      role: role ?? this.role,
      qualification: qualification ?? this.qualification,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ExplanationOfBenefitCareTeamBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      sequence,
      o.sequence,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      provider,
      o.provider,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      responsible,
      o.responsible,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      role,
      o.role,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      qualification,
      o.qualification,
    )) {
      return false;
    }
    return true;
  }
}

/// [ExplanationOfBenefitSupportingInfoBuilder]
/// Additional information codes regarding exceptions, special
/// considerations, the condition, situation, prior or concurrent issues.
class ExplanationOfBenefitSupportingInfoBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ExplanationOfBenefitSupportingInfoBuilder]

  ExplanationOfBenefitSupportingInfoBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.sequence,
    this.category,
    this.code,
    this.timingX,
    this.valueX,
    this.reason,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ExplanationOfBenefit.supportingInfo',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExplanationOfBenefitSupportingInfoBuilder.empty() =>
      ExplanationOfBenefitSupportingInfoBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitSupportingInfoBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.supportingInfo';
    return ExplanationOfBenefitSupportingInfoBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      sequence: JsonParser.parsePrimitive<FhirPositiveIntBuilder>(
        json,
        'sequence',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.sequence',
      ),
      category: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'category',
        CodeableConceptBuilder.fromJson,
        '$objectPath.category',
      ),
      code: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'code',
        CodeableConceptBuilder.fromJson,
        '$objectPath.code',
      ),
      timingX: JsonParser.parsePolymorphic<
          TimingXExplanationOfBenefitSupportingInfoBuilder>(
        json,
        {
          'timingDate': FhirDateBuilder.fromJson,
          'timingPeriod': PeriodBuilder.fromJson,
        },
        objectPath,
      ),
      valueX: JsonParser.parsePolymorphic<
          ValueXExplanationOfBenefitSupportingInfoBuilder>(
        json,
        {
          'valueBoolean': FhirBooleanBuilder.fromJson,
          'valueString': FhirStringBuilder.fromJson,
          'valueQuantity': QuantityBuilder.fromJson,
          'valueAttachment': AttachmentBuilder.fromJson,
          'valueReference': ReferenceBuilder.fromJson,
        },
        objectPath,
      ),
      reason: JsonParser.parseObject<CodingBuilder>(
        json,
        'reason',
        CodingBuilder.fromJson,
        '$objectPath.reason',
      ),
    );
  }

  /// Deserialize [ExplanationOfBenefitSupportingInfoBuilder]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitSupportingInfoBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitSupportingInfoBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitSupportingInfoBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitSupportingInfoBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitSupportingInfoBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitSupportingInfoBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitSupportingInfoBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitSupportingInfo';

  /// [sequence]
  /// A number to uniquely identify supporting information entries.
  FhirPositiveIntBuilder? sequence;

  /// [category]
  /// The general class of the information supplied: information; exception;
  /// accident, employment; onset, etc.
  CodeableConceptBuilder? category;

  /// [code]
  /// System and code pertaining to the specific information regarding
  /// special conditions relating to the setting, treatment or patient for
  /// which care is sought.
  CodeableConceptBuilder? code;

  /// [timingX]
  /// The date when or period to which this information refers.
  TimingXExplanationOfBenefitSupportingInfoBuilder? timingX;

  /// Getter for [timingDate] as a FhirDateBuilder
  FhirDateBuilder? get timingDate => timingX?.isAs<FhirDateBuilder>();

  /// Getter for [timingPeriod] as a PeriodBuilder
  PeriodBuilder? get timingPeriod => timingX?.isAs<PeriodBuilder>();

  /// [valueX]
  /// Additional data or information such as resources, documents, images
  /// etc. including references to the data or the actual inclusion of the
  /// data.
  ValueXExplanationOfBenefitSupportingInfoBuilder? valueX;

  /// Getter for [valueBoolean] as a FhirBooleanBuilder
  FhirBooleanBuilder? get valueBoolean => valueX?.isAs<FhirBooleanBuilder>();

  /// Getter for [valueString] as a FhirStringBuilder
  FhirStringBuilder? get valueString => valueX?.isAs<FhirStringBuilder>();

  /// Getter for [valueQuantity] as a QuantityBuilder
  QuantityBuilder? get valueQuantity => valueX?.isAs<QuantityBuilder>();

  /// Getter for [valueAttachment] as a AttachmentBuilder
  AttachmentBuilder? get valueAttachment => valueX?.isAs<AttachmentBuilder>();

  /// Getter for [valueReference] as a ReferenceBuilder
  ReferenceBuilder? get valueReference => valueX?.isAs<ReferenceBuilder>();

  /// [reason]
  /// Provides the reason in the situation where a reason code is required in
  /// addition to the content.
  CodingBuilder? reason;

  /// converts a [ExplanationOfBenefitSupportingInfoBuilder]
  /// to [ExplanationOfBenefitSupportingInfo]
  @override
  ExplanationOfBenefitSupportingInfo build() =>
      ExplanationOfBenefitSupportingInfo.fromJson(toJson());

  /// converts a [ExplanationOfBenefitSupportingInfoBuilder]
  /// to [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'sequence',
      'category',
      'code',
      'timingX',
      'valueX',
      'reason',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'sequence':
        if (sequence != null) {
          fields.add(sequence!);
        }
      case 'category':
        if (category != null) {
          fields.add(category!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'timing':
        if (timingX != null) {
          fields.add(timingX!);
        }
      case 'timingX':
        if (timingX != null) {
          fields.add(timingX!);
        }
      case 'timingDate':
        if (timingX is FhirDateBuilder) {
          fields.add(timingX!);
        }
      case 'timingPeriod':
        if (timingX is PeriodBuilder) {
          fields.add(timingX!);
        }
      case 'value':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueX':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueBoolean':
        if (valueX is FhirBooleanBuilder) {
          fields.add(valueX!);
        }
      case 'valueString':
        if (valueX is FhirStringBuilder) {
          fields.add(valueX!);
        }
      case 'valueQuantity':
        if (valueX is QuantityBuilder) {
          fields.add(valueX!);
        }
      case 'valueAttachment':
        if (valueX is AttachmentBuilder) {
          fields.add(valueX!);
        }
      case 'valueReference':
        if (valueX is ReferenceBuilder) {
          fields.add(valueX!);
        }
      case 'reason':
        if (reason != null) {
          fields.add(reason!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'sequence':
        {
          if (child is FhirPositiveIntBuilder) {
            sequence = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'category':
        {
          if (child is CodeableConceptBuilder) {
            category = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'code':
        {
          if (child is CodeableConceptBuilder) {
            code = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'timingX':
        {
          if (child is TimingXExplanationOfBenefitSupportingInfoBuilder) {
            timingX = child;
            return;
          } else {
            if (child is FhirDateBuilder) {
              timingX = child;
              return;
            }
            if (child is PeriodBuilder) {
              timingX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'timingDate':
        {
          if (child is FhirDateBuilder) {
            timingX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'timingPeriod':
        {
          if (child is PeriodBuilder) {
            timingX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueX':
        {
          if (child is ValueXExplanationOfBenefitSupportingInfoBuilder) {
            valueX = child;
            return;
          } else {
            if (child is FhirBooleanBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              valueX = child;
              return;
            }
            if (child is QuantityBuilder) {
              valueX = child;
              return;
            }
            if (child is AttachmentBuilder) {
              valueX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              valueX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'valueBoolean':
        {
          if (child is FhirBooleanBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueString':
        {
          if (child is FhirStringBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueQuantity':
        {
          if (child is QuantityBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueAttachment':
        {
          if (child is AttachmentBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueReference':
        {
          if (child is ReferenceBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reason':
        {
          if (child is CodingBuilder) {
            reason = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'sequence':
        return ['FhirPositiveIntBuilder'];
      case 'category':
        return ['CodeableConceptBuilder'];
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'timing':
      case 'timingX':
        return ['FhirDateBuilder', 'PeriodBuilder'];
      case 'timingDate':
        return ['FhirDateBuilder'];
      case 'timingPeriod':
        return ['PeriodBuilder'];
      case 'value':
      case 'valueX':
        return [
          'FhirBooleanBuilder',
          'FhirStringBuilder',
          'QuantityBuilder',
          'AttachmentBuilder',
          'ReferenceBuilder',
        ];
      case 'valueBoolean':
        return ['FhirBooleanBuilder'];
      case 'valueString':
        return ['FhirStringBuilder'];
      case 'valueQuantity':
        return ['QuantityBuilder'];
      case 'valueAttachment':
        return ['AttachmentBuilder'];
      case 'valueReference':
        return ['ReferenceBuilder'];
      case 'reason':
        return ['CodingBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitSupportingInfoBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'sequence':
        {
          sequence = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'category':
        {
          category = CodeableConceptBuilder.empty();
          return;
        }
      case 'code':
        {
          code = CodeableConceptBuilder.empty();
          return;
        }
      case 'timing':
      case 'timingX':
      case 'timingDate':
        {
          timingX = FhirDateBuilder.empty();
          return;
        }
      case 'timingPeriod':
        {
          timingX = PeriodBuilder.empty();
          return;
        }
      case 'value':
      case 'valueX':
      case 'valueBoolean':
        {
          valueX = FhirBooleanBuilder.empty();
          return;
        }
      case 'valueString':
        {
          valueX = FhirStringBuilder.empty();
          return;
        }
      case 'valueQuantity':
        {
          valueX = QuantityBuilder.empty();
          return;
        }
      case 'valueAttachment':
        {
          valueX = AttachmentBuilder.empty();
          return;
        }
      case 'valueReference':
        {
          valueX = ReferenceBuilder.empty();
          return;
        }
      case 'reason':
        {
          reason = CodingBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool sequence = false,
    bool category = false,
    bool code = false,
    bool timing = false,
    bool value = false,
    bool reason = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (sequence) this.sequence = null;
    if (category) this.category = null;
    if (code) this.code = null;
    if (timing) timingX = null;
    if (value) valueX = null;
    if (reason) this.reason = null;
  }

  @override
  ExplanationOfBenefitSupportingInfoBuilder clone() =>
      throw UnimplementedError();
  @override
  ExplanationOfBenefitSupportingInfoBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirPositiveIntBuilder? sequence,
    CodeableConceptBuilder? category,
    CodeableConceptBuilder? code,
    TimingXExplanationOfBenefitSupportingInfoBuilder? timingX,
    ValueXExplanationOfBenefitSupportingInfoBuilder? valueX,
    CodingBuilder? reason,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ExplanationOfBenefitSupportingInfoBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      category: category ?? this.category,
      code: code ?? this.code,
      timingX: timingX ?? this.timingX,
      valueX: valueX ?? this.valueX,
      reason: reason ?? this.reason,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ExplanationOfBenefitSupportingInfoBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      sequence,
      o.sequence,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      category,
      o.category,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      code,
      o.code,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      timingX,
      o.timingX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      valueX,
      o.valueX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      reason,
      o.reason,
    )) {
      return false;
    }
    return true;
  }
}

/// [ExplanationOfBenefitDiagnosisBuilder]
/// Information about diagnoses relevant to the claim items.
class ExplanationOfBenefitDiagnosisBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ExplanationOfBenefitDiagnosisBuilder]

  ExplanationOfBenefitDiagnosisBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.sequence,
    this.diagnosisX,
    this.type,
    this.onAdmission,
    this.packageCode,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ExplanationOfBenefit.diagnosis',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExplanationOfBenefitDiagnosisBuilder.empty() =>
      ExplanationOfBenefitDiagnosisBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitDiagnosisBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.diagnosis';
    return ExplanationOfBenefitDiagnosisBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      sequence: JsonParser.parsePrimitive<FhirPositiveIntBuilder>(
        json,
        'sequence',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.sequence',
      ),
      diagnosisX: JsonParser.parsePolymorphic<
          DiagnosisXExplanationOfBenefitDiagnosisBuilder>(
        json,
        {
          'diagnosisCodeableConcept': CodeableConceptBuilder.fromJson,
          'diagnosisReference': ReferenceBuilder.fromJson,
        },
        objectPath,
      ),
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.type',
              },
            ),
          )
          .toList(),
      onAdmission: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'onAdmission',
        CodeableConceptBuilder.fromJson,
        '$objectPath.onAdmission',
      ),
      packageCode: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'packageCode',
        CodeableConceptBuilder.fromJson,
        '$objectPath.packageCode',
      ),
    );
  }

  /// Deserialize [ExplanationOfBenefitDiagnosisBuilder]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitDiagnosisBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitDiagnosisBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitDiagnosisBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitDiagnosisBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitDiagnosisBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitDiagnosisBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitDiagnosisBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitDiagnosis';

  /// [sequence]
  /// A number to uniquely identify diagnosis entries.
  FhirPositiveIntBuilder? sequence;

  /// [diagnosisX]
  /// The nature of illness or problem in a coded form or as a reference to
  /// an external defined Condition.
  DiagnosisXExplanationOfBenefitDiagnosisBuilder? diagnosisX;

  /// Getter for [diagnosisCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get diagnosisCodeableConcept =>
      diagnosisX?.isAs<CodeableConceptBuilder>();

  /// Getter for [diagnosisReference] as a ReferenceBuilder
  ReferenceBuilder? get diagnosisReference =>
      diagnosisX?.isAs<ReferenceBuilder>();

  /// [type]
  /// When the condition was observed or the relative ranking.
  List<CodeableConceptBuilder>? type;

  /// [onAdmission]
  /// Indication of whether the diagnosis was present on admission to a
  /// facility.
  CodeableConceptBuilder? onAdmission;

  /// [packageCode]
  /// A package billing code or bundle code used to group products and
  /// services to a particular health condition (such as heart attack) which
  /// is based on a predetermined grouping code system.
  CodeableConceptBuilder? packageCode;

  /// converts a [ExplanationOfBenefitDiagnosisBuilder]
  /// to [ExplanationOfBenefitDiagnosis]
  @override
  ExplanationOfBenefitDiagnosis build() =>
      ExplanationOfBenefitDiagnosis.fromJson(toJson());

  /// converts a [ExplanationOfBenefitDiagnosisBuilder]
  /// to [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('sequence', sequence);
    if (diagnosisX != null) {
      final fhirType = diagnosisX!.fhirType;
      addField('diagnosis${fhirType.capitalize()}', diagnosisX);
    }

    addField('type', type);
    addField('onAdmission', onAdmission);
    addField('packageCode', packageCode);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'sequence',
      'diagnosisX',
      'type',
      'onAdmission',
      'packageCode',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'sequence':
        if (sequence != null) {
          fields.add(sequence!);
        }
      case 'diagnosis':
        if (diagnosisX != null) {
          fields.add(diagnosisX!);
        }
      case 'diagnosisX':
        if (diagnosisX != null) {
          fields.add(diagnosisX!);
        }
      case 'diagnosisCodeableConcept':
        if (diagnosisX is CodeableConceptBuilder) {
          fields.add(diagnosisX!);
        }
      case 'diagnosisReference':
        if (diagnosisX is ReferenceBuilder) {
          fields.add(diagnosisX!);
        }
      case 'type':
        if (type != null) {
          fields.addAll(type!);
        }
      case 'onAdmission':
        if (onAdmission != null) {
          fields.add(onAdmission!);
        }
      case 'packageCode':
        if (packageCode != null) {
          fields.add(packageCode!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'sequence':
        {
          if (child is FhirPositiveIntBuilder) {
            sequence = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'diagnosisX':
        {
          if (child is DiagnosisXExplanationOfBenefitDiagnosisBuilder) {
            diagnosisX = child;
            return;
          } else {
            if (child is CodeableConceptBuilder) {
              diagnosisX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              diagnosisX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'diagnosisCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            diagnosisX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'diagnosisReference':
        {
          if (child is ReferenceBuilder) {
            diagnosisX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            type = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            type = [...(type ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'onAdmission':
        {
          if (child is CodeableConceptBuilder) {
            onAdmission = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'packageCode':
        {
          if (child is CodeableConceptBuilder) {
            packageCode = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'sequence':
        return ['FhirPositiveIntBuilder'];
      case 'diagnosis':
      case 'diagnosisX':
        return ['CodeableConceptBuilder', 'ReferenceBuilder'];
      case 'diagnosisCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'diagnosisReference':
        return ['ReferenceBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'onAdmission':
        return ['CodeableConceptBuilder'];
      case 'packageCode':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitDiagnosisBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'sequence':
        {
          sequence = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'diagnosis':
      case 'diagnosisX':
      case 'diagnosisCodeableConcept':
        {
          diagnosisX = CodeableConceptBuilder.empty();
          return;
        }
      case 'diagnosisReference':
        {
          diagnosisX = ReferenceBuilder.empty();
          return;
        }
      case 'type':
        {
          type = <CodeableConceptBuilder>[];
          return;
        }
      case 'onAdmission':
        {
          onAdmission = CodeableConceptBuilder.empty();
          return;
        }
      case 'packageCode':
        {
          packageCode = CodeableConceptBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool sequence = false,
    bool diagnosis = false,
    bool type = false,
    bool onAdmission = false,
    bool packageCode = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (sequence) this.sequence = null;
    if (diagnosis) diagnosisX = null;
    if (type) this.type = null;
    if (onAdmission) this.onAdmission = null;
    if (packageCode) this.packageCode = null;
  }

  @override
  ExplanationOfBenefitDiagnosisBuilder clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitDiagnosisBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirPositiveIntBuilder? sequence,
    DiagnosisXExplanationOfBenefitDiagnosisBuilder? diagnosisX,
    List<CodeableConceptBuilder>? type,
    CodeableConceptBuilder? onAdmission,
    CodeableConceptBuilder? packageCode,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ExplanationOfBenefitDiagnosisBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      diagnosisX: diagnosisX ?? this.diagnosisX,
      type: type ?? this.type,
      onAdmission: onAdmission ?? this.onAdmission,
      packageCode: packageCode ?? this.packageCode,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ExplanationOfBenefitDiagnosisBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      sequence,
      o.sequence,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      diagnosisX,
      o.diagnosisX,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      onAdmission,
      o.onAdmission,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      packageCode,
      o.packageCode,
    )) {
      return false;
    }
    return true;
  }
}

/// [ExplanationOfBenefitProcedureBuilder]
/// Procedures performed on the patient relevant to the billing items with
/// the claim.
class ExplanationOfBenefitProcedureBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ExplanationOfBenefitProcedureBuilder]

  ExplanationOfBenefitProcedureBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.sequence,
    this.type,
    this.date,
    this.procedureX,
    this.udi,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ExplanationOfBenefit.procedure',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExplanationOfBenefitProcedureBuilder.empty() =>
      ExplanationOfBenefitProcedureBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitProcedureBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.procedure';
    return ExplanationOfBenefitProcedureBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      sequence: JsonParser.parsePrimitive<FhirPositiveIntBuilder>(
        json,
        'sequence',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.sequence',
      ),
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.type',
              },
            ),
          )
          .toList(),
      date: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'date',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.date',
      ),
      procedureX: JsonParser.parsePolymorphic<
          ProcedureXExplanationOfBenefitProcedureBuilder>(
        json,
        {
          'procedureCodeableConcept': CodeableConceptBuilder.fromJson,
          'procedureReference': ReferenceBuilder.fromJson,
        },
        objectPath,
      ),
      udi: (json['udi'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.udi',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ExplanationOfBenefitProcedureBuilder]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitProcedureBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitProcedureBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitProcedureBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitProcedureBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitProcedureBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitProcedureBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitProcedureBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitProcedure';

  /// [sequence]
  /// A number to uniquely identify procedure entries.
  FhirPositiveIntBuilder? sequence;

  /// [type]
  /// When the condition was observed or the relative ranking.
  List<CodeableConceptBuilder>? type;

  /// [date]
  /// Date and optionally time the procedure was performed.
  FhirDateTimeBuilder? date;

  /// [procedureX]
  /// The code or reference to a Procedure resource which identifies the
  /// clinical intervention performed.
  ProcedureXExplanationOfBenefitProcedureBuilder? procedureX;

  /// Getter for [procedureCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get procedureCodeableConcept =>
      procedureX?.isAs<CodeableConceptBuilder>();

  /// Getter for [procedureReference] as a ReferenceBuilder
  ReferenceBuilder? get procedureReference =>
      procedureX?.isAs<ReferenceBuilder>();

  /// [udi]
  /// Unique Device Identifiers associated with this line item.
  List<ReferenceBuilder>? udi;

  /// converts a [ExplanationOfBenefitProcedureBuilder]
  /// to [ExplanationOfBenefitProcedure]
  @override
  ExplanationOfBenefitProcedure build() =>
      ExplanationOfBenefitProcedure.fromJson(toJson());

  /// converts a [ExplanationOfBenefitProcedureBuilder]
  /// to [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('sequence', sequence);
    addField('type', type);
    addField('date', date);
    if (procedureX != null) {
      final fhirType = procedureX!.fhirType;
      addField('procedure${fhirType.capitalize()}', procedureX);
    }

    addField('udi', udi);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'sequence',
      'type',
      'date',
      'procedureX',
      'udi',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'sequence':
        if (sequence != null) {
          fields.add(sequence!);
        }
      case 'type':
        if (type != null) {
          fields.addAll(type!);
        }
      case 'date':
        if (date != null) {
          fields.add(date!);
        }
      case 'procedure':
        if (procedureX != null) {
          fields.add(procedureX!);
        }
      case 'procedureX':
        if (procedureX != null) {
          fields.add(procedureX!);
        }
      case 'procedureCodeableConcept':
        if (procedureX is CodeableConceptBuilder) {
          fields.add(procedureX!);
        }
      case 'procedureReference':
        if (procedureX is ReferenceBuilder) {
          fields.add(procedureX!);
        }
      case 'udi':
        if (udi != null) {
          fields.addAll(udi!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'sequence':
        {
          if (child is FhirPositiveIntBuilder) {
            sequence = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            type = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            type = [...(type ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'date':
        {
          if (child is FhirDateTimeBuilder) {
            date = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'procedureX':
        {
          if (child is ProcedureXExplanationOfBenefitProcedureBuilder) {
            procedureX = child;
            return;
          } else {
            if (child is CodeableConceptBuilder) {
              procedureX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              procedureX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'procedureCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            procedureX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'procedureReference':
        {
          if (child is ReferenceBuilder) {
            procedureX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'udi':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            udi = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            udi = [...(udi ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'sequence':
        return ['FhirPositiveIntBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'date':
        return ['FhirDateTimeBuilder'];
      case 'procedure':
      case 'procedureX':
        return ['CodeableConceptBuilder', 'ReferenceBuilder'];
      case 'procedureCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'procedureReference':
        return ['ReferenceBuilder'];
      case 'udi':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitProcedureBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'sequence':
        {
          sequence = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'type':
        {
          type = <CodeableConceptBuilder>[];
          return;
        }
      case 'date':
        {
          date = FhirDateTimeBuilder.empty();
          return;
        }
      case 'procedure':
      case 'procedureX':
      case 'procedureCodeableConcept':
        {
          procedureX = CodeableConceptBuilder.empty();
          return;
        }
      case 'procedureReference':
        {
          procedureX = ReferenceBuilder.empty();
          return;
        }
      case 'udi':
        {
          udi = <ReferenceBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool sequence = false,
    bool type = false,
    bool date = false,
    bool procedure = false,
    bool udi = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (sequence) this.sequence = null;
    if (type) this.type = null;
    if (date) this.date = null;
    if (procedure) procedureX = null;
    if (udi) this.udi = null;
  }

  @override
  ExplanationOfBenefitProcedureBuilder clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitProcedureBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirPositiveIntBuilder? sequence,
    List<CodeableConceptBuilder>? type,
    FhirDateTimeBuilder? date,
    ProcedureXExplanationOfBenefitProcedureBuilder? procedureX,
    List<ReferenceBuilder>? udi,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ExplanationOfBenefitProcedureBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      type: type ?? this.type,
      date: date ?? this.date,
      procedureX: procedureX ?? this.procedureX,
      udi: udi ?? this.udi,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ExplanationOfBenefitProcedureBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      sequence,
      o.sequence,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      date,
      o.date,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      procedureX,
      o.procedureX,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      udi,
      o.udi,
    )) {
      return false;
    }
    return true;
  }
}

/// [ExplanationOfBenefitInsuranceBuilder]
/// Financial instruments for reimbursement for the health care products
/// and services specified on the claim.
class ExplanationOfBenefitInsuranceBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ExplanationOfBenefitInsuranceBuilder]

  ExplanationOfBenefitInsuranceBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.focal,
    this.coverage,
    this.preAuthRef,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ExplanationOfBenefit.insurance',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExplanationOfBenefitInsuranceBuilder.empty() =>
      ExplanationOfBenefitInsuranceBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitInsuranceBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.insurance';
    return ExplanationOfBenefitInsuranceBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      focal: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'focal',
        FhirBooleanBuilder.fromJson,
        '$objectPath.focal',
      ),
      coverage: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'coverage',
        ReferenceBuilder.fromJson,
        '$objectPath.coverage',
      ),
      preAuthRef: JsonParser.parsePrimitiveList<FhirStringBuilder>(
        json,
        'preAuthRef',
        FhirStringBuilder.fromJson,
        '$objectPath.preAuthRef',
      ),
    );
  }

  /// Deserialize [ExplanationOfBenefitInsuranceBuilder]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitInsuranceBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitInsuranceBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitInsuranceBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitInsuranceBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitInsuranceBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitInsuranceBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitInsuranceBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitInsurance';

  /// [focal]
  /// A flag to indicate that this Coverage is to be used for adjudication of
  /// this claim when set to true.
  FhirBooleanBuilder? focal;

  /// [coverage]
  /// Reference to the insurance card level information contained in the
  /// Coverage resource. The coverage issuing insurer will use these details
  /// to locate the patient's actual coverage within the insurer's
  /// information system.
  ReferenceBuilder? coverage;

  /// [preAuthRef]
  /// Reference numbers previously provided by the insurer to the provider to
  /// be quoted on subsequent claims containing services or products related
  /// to the prior authorization.
  List<FhirStringBuilder>? preAuthRef;

  /// converts a [ExplanationOfBenefitInsuranceBuilder]
  /// to [ExplanationOfBenefitInsurance]
  @override
  ExplanationOfBenefitInsurance build() =>
      ExplanationOfBenefitInsurance.fromJson(toJson());

  /// converts a [ExplanationOfBenefitInsuranceBuilder]
  /// to [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'focal',
      'coverage',
      'preAuthRef',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'focal':
        if (focal != null) {
          fields.add(focal!);
        }
      case 'coverage':
        if (coverage != null) {
          fields.add(coverage!);
        }
      case 'preAuthRef':
        if (preAuthRef != null) {
          fields.addAll(preAuthRef!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'focal':
        {
          if (child is FhirBooleanBuilder) {
            focal = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'coverage':
        {
          if (child is ReferenceBuilder) {
            coverage = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'preAuthRef':
        {
          if (child is List<FhirStringBuilder>) {
            // Replace or create new list
            preAuthRef = child;
            return;
          } else if (child is FhirStringBuilder) {
            // Add single element to existing list or create new list
            preAuthRef = [...(preAuthRef ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'focal':
        return ['FhirBooleanBuilder'];
      case 'coverage':
        return ['ReferenceBuilder'];
      case 'preAuthRef':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitInsuranceBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'focal':
        {
          focal = FhirBooleanBuilder.empty();
          return;
        }
      case 'coverage':
        {
          coverage = ReferenceBuilder.empty();
          return;
        }
      case 'preAuthRef':
        {
          preAuthRef = <FhirStringBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool focal = false,
    bool coverage = false,
    bool preAuthRef = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (focal) this.focal = null;
    if (coverage) this.coverage = null;
    if (preAuthRef) this.preAuthRef = null;
  }

  @override
  ExplanationOfBenefitInsuranceBuilder clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitInsuranceBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirBooleanBuilder? focal,
    ReferenceBuilder? coverage,
    List<FhirStringBuilder>? preAuthRef,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ExplanationOfBenefitInsuranceBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      focal: focal ?? this.focal,
      coverage: coverage ?? this.coverage,
      preAuthRef: preAuthRef ?? this.preAuthRef,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ExplanationOfBenefitInsuranceBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      focal,
      o.focal,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      coverage,
      o.coverage,
    )) {
      return false;
    }
    if (!listEquals<FhirStringBuilder>(
      preAuthRef,
      o.preAuthRef,
    )) {
      return false;
    }
    return true;
  }
}

/// [ExplanationOfBenefitAccidentBuilder]
/// Details of a accident which resulted in injuries which required the
/// products and services listed in the claim.
class ExplanationOfBenefitAccidentBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ExplanationOfBenefitAccidentBuilder]

  ExplanationOfBenefitAccidentBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.date,
    this.type,
    this.locationX,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ExplanationOfBenefit.accident',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExplanationOfBenefitAccidentBuilder.empty() =>
      ExplanationOfBenefitAccidentBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitAccidentBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.accident';
    return ExplanationOfBenefitAccidentBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      date: JsonParser.parsePrimitive<FhirDateBuilder>(
        json,
        'date',
        FhirDateBuilder.fromJson,
        '$objectPath.date',
      ),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      locationX: JsonParser.parsePolymorphic<
          LocationXExplanationOfBenefitAccidentBuilder>(
        json,
        {
          'locationAddress': AddressBuilder.fromJson,
          'locationReference': ReferenceBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [ExplanationOfBenefitAccidentBuilder]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitAccidentBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitAccidentBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitAccidentBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitAccidentBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitAccidentBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitAccidentBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitAccidentBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitAccident';

  /// [date]
  /// Date of an accident event related to the products and services
  /// contained in the claim.
  FhirDateBuilder? date;

  /// [type]
  /// The type or context of the accident event for the purposes of selection
  /// of potential insurance coverages and determination of coordination
  /// between insurers.
  CodeableConceptBuilder? type;

  /// [locationX]
  /// The physical location of the accident event.
  LocationXExplanationOfBenefitAccidentBuilder? locationX;

  /// Getter for [locationAddress] as a AddressBuilder
  AddressBuilder? get locationAddress => locationX?.isAs<AddressBuilder>();

  /// Getter for [locationReference] as a ReferenceBuilder
  ReferenceBuilder? get locationReference =>
      locationX?.isAs<ReferenceBuilder>();

  /// converts a [ExplanationOfBenefitAccidentBuilder]
  /// to [ExplanationOfBenefitAccident]
  @override
  ExplanationOfBenefitAccident build() =>
      ExplanationOfBenefitAccident.fromJson(toJson());

  /// converts a [ExplanationOfBenefitAccidentBuilder]
  /// to [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'date',
      'type',
      'locationX',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'date':
        if (date != null) {
          fields.add(date!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'location':
        if (locationX != null) {
          fields.add(locationX!);
        }
      case 'locationX':
        if (locationX != null) {
          fields.add(locationX!);
        }
      case 'locationAddress':
        if (locationX is AddressBuilder) {
          fields.add(locationX!);
        }
      case 'locationReference':
        if (locationX is ReferenceBuilder) {
          fields.add(locationX!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'date':
        {
          if (child is FhirDateBuilder) {
            date = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'locationX':
        {
          if (child is LocationXExplanationOfBenefitAccidentBuilder) {
            locationX = child;
            return;
          } else {
            if (child is AddressBuilder) {
              locationX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              locationX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'locationAddress':
        {
          if (child is AddressBuilder) {
            locationX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'locationReference':
        {
          if (child is ReferenceBuilder) {
            locationX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'date':
        return ['FhirDateBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'location':
      case 'locationX':
        return ['AddressBuilder', 'ReferenceBuilder'];
      case 'locationAddress':
        return ['AddressBuilder'];
      case 'locationReference':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitAccidentBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'date':
        {
          date = FhirDateBuilder.empty();
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'location':
      case 'locationX':
      case 'locationAddress':
        {
          locationX = AddressBuilder.empty();
          return;
        }
      case 'locationReference':
        {
          locationX = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool date = false,
    bool type = false,
    bool location = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (date) this.date = null;
    if (type) this.type = null;
    if (location) locationX = null;
  }

  @override
  ExplanationOfBenefitAccidentBuilder clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitAccidentBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirDateBuilder? date,
    CodeableConceptBuilder? type,
    LocationXExplanationOfBenefitAccidentBuilder? locationX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ExplanationOfBenefitAccidentBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      date: date ?? this.date,
      type: type ?? this.type,
      locationX: locationX ?? this.locationX,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ExplanationOfBenefitAccidentBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      date,
      o.date,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      locationX,
      o.locationX,
    )) {
      return false;
    }
    return true;
  }
}

/// [ExplanationOfBenefitItemBuilder]
/// A claim line. Either a simple (a product or service) or a 'group' of
/// details which can also be a simple items or groups of sub-details.
class ExplanationOfBenefitItemBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ExplanationOfBenefitItemBuilder]

  ExplanationOfBenefitItemBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.sequence,
    this.careTeamSequence,
    this.diagnosisSequence,
    this.procedureSequence,
    this.informationSequence,
    this.revenue,
    this.category,
    this.productOrService,
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
  }) : super(
          objectPath: 'ExplanationOfBenefit.item',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExplanationOfBenefitItemBuilder.empty() =>
      ExplanationOfBenefitItemBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitItemBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.item';
    return ExplanationOfBenefitItemBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      sequence: JsonParser.parsePrimitive<FhirPositiveIntBuilder>(
        json,
        'sequence',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.sequence',
      ),
      careTeamSequence: JsonParser.parsePrimitiveList<FhirPositiveIntBuilder>(
        json,
        'careTeamSequence',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.careTeamSequence',
      ),
      diagnosisSequence: JsonParser.parsePrimitiveList<FhirPositiveIntBuilder>(
        json,
        'diagnosisSequence',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.diagnosisSequence',
      ),
      procedureSequence: JsonParser.parsePrimitiveList<FhirPositiveIntBuilder>(
        json,
        'procedureSequence',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.procedureSequence',
      ),
      informationSequence:
          JsonParser.parsePrimitiveList<FhirPositiveIntBuilder>(
        json,
        'informationSequence',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.informationSequence',
      ),
      revenue: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'revenue',
        CodeableConceptBuilder.fromJson,
        '$objectPath.revenue',
      ),
      category: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'category',
        CodeableConceptBuilder.fromJson,
        '$objectPath.category',
      ),
      productOrService: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'productOrService',
        CodeableConceptBuilder.fromJson,
        '$objectPath.productOrService',
      ),
      modifier: (json['modifier'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifier',
              },
            ),
          )
          .toList(),
      programCode: (json['programCode'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.programCode',
              },
            ),
          )
          .toList(),
      servicedX:
          JsonParser.parsePolymorphic<ServicedXExplanationOfBenefitItemBuilder>(
        json,
        {
          'servicedDate': FhirDateBuilder.fromJson,
          'servicedPeriod': PeriodBuilder.fromJson,
        },
        objectPath,
      ),
      locationX:
          JsonParser.parsePolymorphic<LocationXExplanationOfBenefitItemBuilder>(
        json,
        {
          'locationCodeableConcept': CodeableConceptBuilder.fromJson,
          'locationAddress': AddressBuilder.fromJson,
          'locationReference': ReferenceBuilder.fromJson,
        },
        objectPath,
      ),
      quantity: JsonParser.parseObject<QuantityBuilder>(
        json,
        'quantity',
        QuantityBuilder.fromJson,
        '$objectPath.quantity',
      ),
      unitPrice: JsonParser.parseObject<MoneyBuilder>(
        json,
        'unitPrice',
        MoneyBuilder.fromJson,
        '$objectPath.unitPrice',
      ),
      factor: JsonParser.parsePrimitive<FhirDecimalBuilder>(
        json,
        'factor',
        FhirDecimalBuilder.fromJson,
        '$objectPath.factor',
      ),
      net: JsonParser.parseObject<MoneyBuilder>(
        json,
        'net',
        MoneyBuilder.fromJson,
        '$objectPath.net',
      ),
      udi: (json['udi'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.udi',
              },
            ),
          )
          .toList(),
      bodySite: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'bodySite',
        CodeableConceptBuilder.fromJson,
        '$objectPath.bodySite',
      ),
      subSite: (json['subSite'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.subSite',
              },
            ),
          )
          .toList(),
      encounter: (json['encounter'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.encounter',
              },
            ),
          )
          .toList(),
      noteNumber: JsonParser.parsePrimitiveList<FhirPositiveIntBuilder>(
        json,
        'noteNumber',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.noteNumber',
      ),
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitAdjudicationBuilder>(
            (v) => ExplanationOfBenefitAdjudicationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.adjudication',
              },
            ),
          )
          .toList(),
      detail: (json['detail'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitDetailBuilder>(
            (v) => ExplanationOfBenefitDetailBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.detail',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ExplanationOfBenefitItemBuilder]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitItemBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitItemBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitItemBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitItemBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitItemBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitItemBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitItemBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitItem';

  /// [sequence]
  /// A number to uniquely identify item entries.
  FhirPositiveIntBuilder? sequence;

  /// [careTeamSequence]
  /// Care team members related to this service or product.
  List<FhirPositiveIntBuilder>? careTeamSequence;

  /// [diagnosisSequence]
  /// Diagnoses applicable for this service or product.
  List<FhirPositiveIntBuilder>? diagnosisSequence;

  /// [procedureSequence]
  /// Procedures applicable for this service or product.
  List<FhirPositiveIntBuilder>? procedureSequence;

  /// [informationSequence]
  /// Exceptions, special conditions and supporting information applicable
  /// for this service or product.
  List<FhirPositiveIntBuilder>? informationSequence;

  /// [revenue]
  /// The type of revenue or cost center providing the product and/or
  /// service.
  CodeableConceptBuilder? revenue;

  /// [category]
  /// Code to identify the general type of benefits under which products and
  /// services are provided.
  CodeableConceptBuilder? category;

  /// [productOrService]
  /// When the value is a group code then this item collects a set of related
  /// claim details, otherwise this contains the product, service, drug or
  /// other billing code for the item.
  CodeableConceptBuilder? productOrService;

  /// [modifier]
  /// Item typification or modifiers codes to convey additional context for
  /// the product or service.
  List<CodeableConceptBuilder>? modifier;

  /// [programCode]
  /// Identifies the program under which this may be recovered.
  List<CodeableConceptBuilder>? programCode;

  /// [servicedX]
  /// The date or dates when the service or product was supplied, performed
  /// or completed.
  ServicedXExplanationOfBenefitItemBuilder? servicedX;

  /// Getter for [servicedDate] as a FhirDateBuilder
  FhirDateBuilder? get servicedDate => servicedX?.isAs<FhirDateBuilder>();

  /// Getter for [servicedPeriod] as a PeriodBuilder
  PeriodBuilder? get servicedPeriod => servicedX?.isAs<PeriodBuilder>();

  /// [locationX]
  /// Where the product or service was provided.
  LocationXExplanationOfBenefitItemBuilder? locationX;

  /// Getter for [locationCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get locationCodeableConcept =>
      locationX?.isAs<CodeableConceptBuilder>();

  /// Getter for [locationAddress] as a AddressBuilder
  AddressBuilder? get locationAddress => locationX?.isAs<AddressBuilder>();

  /// Getter for [locationReference] as a ReferenceBuilder
  ReferenceBuilder? get locationReference =>
      locationX?.isAs<ReferenceBuilder>();

  /// [quantity]
  /// The number of repetitions of a service or product.
  QuantityBuilder? quantity;

  /// [unitPrice]
  /// If the item is not a group then this is the fee for the product or
  /// service, otherwise this is the total of the fees for the details of the
  /// group.
  MoneyBuilder? unitPrice;

  /// [factor]
  /// A real number that represents a multiplier used in determining the
  /// overall value of services delivered and/or goods received. The concept
  /// of a Factor allows for a discount or surcharge multiplier to be applied
  /// to a monetary amount.
  FhirDecimalBuilder? factor;

  /// [net]
  /// The quantity times the unit price for an additional service or product
  /// or charge.
  MoneyBuilder? net;

  /// [udi]
  /// Unique Device Identifiers associated with this line item.
  List<ReferenceBuilder>? udi;

  /// [bodySite]
  /// Physical service site on the patient (limb, tooth, etc.).
  CodeableConceptBuilder? bodySite;

  /// [subSite]
  /// A region or surface of the bodySite, e.g. limb region or tooth
  /// surface(s).
  List<CodeableConceptBuilder>? subSite;

  /// [encounter]
  /// A billed item may include goods or services provided in multiple
  /// encounters.
  List<ReferenceBuilder>? encounter;

  /// [noteNumber]
  /// The numbers associated with notes below which apply to the adjudication
  /// of this item.
  List<FhirPositiveIntBuilder>? noteNumber;

  /// [adjudication]
  /// If this item is a group then the values here are a summary of the
  /// adjudication of the detail items. If this item is a simple product or
  /// service then this is the result of the adjudication of this item.
  List<ExplanationOfBenefitAdjudicationBuilder>? adjudication;

  /// [detail]
  /// Second-tier of goods and services.
  List<ExplanationOfBenefitDetailBuilder>? detail;

  /// converts a [ExplanationOfBenefitItemBuilder]
  /// to [ExplanationOfBenefitItem]
  @override
  ExplanationOfBenefitItem build() =>
      ExplanationOfBenefitItem.fromJson(toJson());

  /// converts a [ExplanationOfBenefitItemBuilder]
  /// to [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'sequence',
      'careTeamSequence',
      'diagnosisSequence',
      'procedureSequence',
      'informationSequence',
      'revenue',
      'category',
      'productOrService',
      'modifier',
      'programCode',
      'servicedX',
      'locationX',
      'quantity',
      'unitPrice',
      'factor',
      'net',
      'udi',
      'bodySite',
      'subSite',
      'encounter',
      'noteNumber',
      'adjudication',
      'detail',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'sequence':
        if (sequence != null) {
          fields.add(sequence!);
        }
      case 'careTeamSequence':
        if (careTeamSequence != null) {
          fields.addAll(careTeamSequence!);
        }
      case 'diagnosisSequence':
        if (diagnosisSequence != null) {
          fields.addAll(diagnosisSequence!);
        }
      case 'procedureSequence':
        if (procedureSequence != null) {
          fields.addAll(procedureSequence!);
        }
      case 'informationSequence':
        if (informationSequence != null) {
          fields.addAll(informationSequence!);
        }
      case 'revenue':
        if (revenue != null) {
          fields.add(revenue!);
        }
      case 'category':
        if (category != null) {
          fields.add(category!);
        }
      case 'productOrService':
        if (productOrService != null) {
          fields.add(productOrService!);
        }
      case 'modifier':
        if (modifier != null) {
          fields.addAll(modifier!);
        }
      case 'programCode':
        if (programCode != null) {
          fields.addAll(programCode!);
        }
      case 'serviced':
        if (servicedX != null) {
          fields.add(servicedX!);
        }
      case 'servicedX':
        if (servicedX != null) {
          fields.add(servicedX!);
        }
      case 'servicedDate':
        if (servicedX is FhirDateBuilder) {
          fields.add(servicedX!);
        }
      case 'servicedPeriod':
        if (servicedX is PeriodBuilder) {
          fields.add(servicedX!);
        }
      case 'location':
        if (locationX != null) {
          fields.add(locationX!);
        }
      case 'locationX':
        if (locationX != null) {
          fields.add(locationX!);
        }
      case 'locationCodeableConcept':
        if (locationX is CodeableConceptBuilder) {
          fields.add(locationX!);
        }
      case 'locationAddress':
        if (locationX is AddressBuilder) {
          fields.add(locationX!);
        }
      case 'locationReference':
        if (locationX is ReferenceBuilder) {
          fields.add(locationX!);
        }
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
        }
      case 'unitPrice':
        if (unitPrice != null) {
          fields.add(unitPrice!);
        }
      case 'factor':
        if (factor != null) {
          fields.add(factor!);
        }
      case 'net':
        if (net != null) {
          fields.add(net!);
        }
      case 'udi':
        if (udi != null) {
          fields.addAll(udi!);
        }
      case 'bodySite':
        if (bodySite != null) {
          fields.add(bodySite!);
        }
      case 'subSite':
        if (subSite != null) {
          fields.addAll(subSite!);
        }
      case 'encounter':
        if (encounter != null) {
          fields.addAll(encounter!);
        }
      case 'noteNumber':
        if (noteNumber != null) {
          fields.addAll(noteNumber!);
        }
      case 'adjudication':
        if (adjudication != null) {
          fields.addAll(adjudication!);
        }
      case 'detail':
        if (detail != null) {
          fields.addAll(detail!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'sequence':
        {
          if (child is FhirPositiveIntBuilder) {
            sequence = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'careTeamSequence':
        {
          if (child is List<FhirPositiveIntBuilder>) {
            // Replace or create new list
            careTeamSequence = child;
            return;
          } else if (child is FhirPositiveIntBuilder) {
            // Add single element to existing list or create new list
            careTeamSequence = [...(careTeamSequence ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'diagnosisSequence':
        {
          if (child is List<FhirPositiveIntBuilder>) {
            // Replace or create new list
            diagnosisSequence = child;
            return;
          } else if (child is FhirPositiveIntBuilder) {
            // Add single element to existing list or create new list
            diagnosisSequence = [...(diagnosisSequence ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'procedureSequence':
        {
          if (child is List<FhirPositiveIntBuilder>) {
            // Replace or create new list
            procedureSequence = child;
            return;
          } else if (child is FhirPositiveIntBuilder) {
            // Add single element to existing list or create new list
            procedureSequence = [...(procedureSequence ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'informationSequence':
        {
          if (child is List<FhirPositiveIntBuilder>) {
            // Replace or create new list
            informationSequence = child;
            return;
          } else if (child is FhirPositiveIntBuilder) {
            // Add single element to existing list or create new list
            informationSequence = [...(informationSequence ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'revenue':
        {
          if (child is CodeableConceptBuilder) {
            revenue = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'category':
        {
          if (child is CodeableConceptBuilder) {
            category = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'productOrService':
        {
          if (child is CodeableConceptBuilder) {
            productOrService = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifier':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            modifier = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            modifier = [...(modifier ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'programCode':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            programCode = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            programCode = [...(programCode ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'servicedX':
        {
          if (child is ServicedXExplanationOfBenefitItemBuilder) {
            servicedX = child;
            return;
          } else {
            if (child is FhirDateBuilder) {
              servicedX = child;
              return;
            }
            if (child is PeriodBuilder) {
              servicedX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'servicedDate':
        {
          if (child is FhirDateBuilder) {
            servicedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'servicedPeriod':
        {
          if (child is PeriodBuilder) {
            servicedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'locationX':
        {
          if (child is LocationXExplanationOfBenefitItemBuilder) {
            locationX = child;
            return;
          } else {
            if (child is CodeableConceptBuilder) {
              locationX = child;
              return;
            }
            if (child is AddressBuilder) {
              locationX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              locationX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'locationCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            locationX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'locationAddress':
        {
          if (child is AddressBuilder) {
            locationX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'locationReference':
        {
          if (child is ReferenceBuilder) {
            locationX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'quantity':
        {
          if (child is QuantityBuilder) {
            quantity = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'unitPrice':
        {
          if (child is MoneyBuilder) {
            unitPrice = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'factor':
        {
          if (child is FhirDecimalBuilder) {
            factor = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'net':
        {
          if (child is MoneyBuilder) {
            net = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'udi':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            udi = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            udi = [...(udi ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'bodySite':
        {
          if (child is CodeableConceptBuilder) {
            bodySite = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subSite':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            subSite = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            subSite = [...(subSite ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'encounter':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            encounter = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            encounter = [...(encounter ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'noteNumber':
        {
          if (child is List<FhirPositiveIntBuilder>) {
            // Replace or create new list
            noteNumber = child;
            return;
          } else if (child is FhirPositiveIntBuilder) {
            // Add single element to existing list or create new list
            noteNumber = [...(noteNumber ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'adjudication':
        {
          if (child is List<ExplanationOfBenefitAdjudicationBuilder>) {
            // Replace or create new list
            adjudication = child;
            return;
          } else if (child is ExplanationOfBenefitAdjudicationBuilder) {
            // Add single element to existing list or create new list
            adjudication = [...(adjudication ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'detail':
        {
          if (child is List<ExplanationOfBenefitDetailBuilder>) {
            // Replace or create new list
            detail = child;
            return;
          } else if (child is ExplanationOfBenefitDetailBuilder) {
            // Add single element to existing list or create new list
            detail = [...(detail ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'sequence':
        return ['FhirPositiveIntBuilder'];
      case 'careTeamSequence':
        return ['FhirPositiveIntBuilder'];
      case 'diagnosisSequence':
        return ['FhirPositiveIntBuilder'];
      case 'procedureSequence':
        return ['FhirPositiveIntBuilder'];
      case 'informationSequence':
        return ['FhirPositiveIntBuilder'];
      case 'revenue':
        return ['CodeableConceptBuilder'];
      case 'category':
        return ['CodeableConceptBuilder'];
      case 'productOrService':
        return ['CodeableConceptBuilder'];
      case 'modifier':
        return ['CodeableConceptBuilder'];
      case 'programCode':
        return ['CodeableConceptBuilder'];
      case 'serviced':
      case 'servicedX':
        return ['FhirDateBuilder', 'PeriodBuilder'];
      case 'servicedDate':
        return ['FhirDateBuilder'];
      case 'servicedPeriod':
        return ['PeriodBuilder'];
      case 'location':
      case 'locationX':
        return ['CodeableConceptBuilder', 'AddressBuilder', 'ReferenceBuilder'];
      case 'locationCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'locationAddress':
        return ['AddressBuilder'];
      case 'locationReference':
        return ['ReferenceBuilder'];
      case 'quantity':
        return ['QuantityBuilder'];
      case 'unitPrice':
        return ['MoneyBuilder'];
      case 'factor':
        return ['FhirDecimalBuilder'];
      case 'net':
        return ['MoneyBuilder'];
      case 'udi':
        return ['ReferenceBuilder'];
      case 'bodySite':
        return ['CodeableConceptBuilder'];
      case 'subSite':
        return ['CodeableConceptBuilder'];
      case 'encounter':
        return ['ReferenceBuilder'];
      case 'noteNumber':
        return ['FhirPositiveIntBuilder'];
      case 'adjudication':
        return ['ExplanationOfBenefitAdjudicationBuilder'];
      case 'detail':
        return ['ExplanationOfBenefitDetailBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitItemBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'sequence':
        {
          sequence = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'careTeamSequence':
        {
          careTeamSequence = <FhirPositiveIntBuilder>[];
          return;
        }
      case 'diagnosisSequence':
        {
          diagnosisSequence = <FhirPositiveIntBuilder>[];
          return;
        }
      case 'procedureSequence':
        {
          procedureSequence = <FhirPositiveIntBuilder>[];
          return;
        }
      case 'informationSequence':
        {
          informationSequence = <FhirPositiveIntBuilder>[];
          return;
        }
      case 'revenue':
        {
          revenue = CodeableConceptBuilder.empty();
          return;
        }
      case 'category':
        {
          category = CodeableConceptBuilder.empty();
          return;
        }
      case 'productOrService':
        {
          productOrService = CodeableConceptBuilder.empty();
          return;
        }
      case 'modifier':
        {
          modifier = <CodeableConceptBuilder>[];
          return;
        }
      case 'programCode':
        {
          programCode = <CodeableConceptBuilder>[];
          return;
        }
      case 'serviced':
      case 'servicedX':
      case 'servicedDate':
        {
          servicedX = FhirDateBuilder.empty();
          return;
        }
      case 'servicedPeriod':
        {
          servicedX = PeriodBuilder.empty();
          return;
        }
      case 'location':
      case 'locationX':
      case 'locationCodeableConcept':
        {
          locationX = CodeableConceptBuilder.empty();
          return;
        }
      case 'locationAddress':
        {
          locationX = AddressBuilder.empty();
          return;
        }
      case 'locationReference':
        {
          locationX = ReferenceBuilder.empty();
          return;
        }
      case 'quantity':
        {
          quantity = QuantityBuilder.empty();
          return;
        }
      case 'unitPrice':
        {
          unitPrice = MoneyBuilder.empty();
          return;
        }
      case 'factor':
        {
          factor = FhirDecimalBuilder.empty();
          return;
        }
      case 'net':
        {
          net = MoneyBuilder.empty();
          return;
        }
      case 'udi':
        {
          udi = <ReferenceBuilder>[];
          return;
        }
      case 'bodySite':
        {
          bodySite = CodeableConceptBuilder.empty();
          return;
        }
      case 'subSite':
        {
          subSite = <CodeableConceptBuilder>[];
          return;
        }
      case 'encounter':
        {
          encounter = <ReferenceBuilder>[];
          return;
        }
      case 'noteNumber':
        {
          noteNumber = <FhirPositiveIntBuilder>[];
          return;
        }
      case 'adjudication':
        {
          adjudication = <ExplanationOfBenefitAdjudicationBuilder>[];
          return;
        }
      case 'detail':
        {
          detail = <ExplanationOfBenefitDetailBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool sequence = false,
    bool careTeamSequence = false,
    bool diagnosisSequence = false,
    bool procedureSequence = false,
    bool informationSequence = false,
    bool revenue = false,
    bool category = false,
    bool productOrService = false,
    bool modifier = false,
    bool programCode = false,
    bool serviced = false,
    bool location = false,
    bool quantity = false,
    bool unitPrice = false,
    bool factor = false,
    bool net = false,
    bool udi = false,
    bool bodySite = false,
    bool subSite = false,
    bool encounter = false,
    bool noteNumber = false,
    bool adjudication = false,
    bool detail = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (sequence) this.sequence = null;
    if (careTeamSequence) this.careTeamSequence = null;
    if (diagnosisSequence) this.diagnosisSequence = null;
    if (procedureSequence) this.procedureSequence = null;
    if (informationSequence) this.informationSequence = null;
    if (revenue) this.revenue = null;
    if (category) this.category = null;
    if (productOrService) this.productOrService = null;
    if (modifier) this.modifier = null;
    if (programCode) this.programCode = null;
    if (serviced) servicedX = null;
    if (location) locationX = null;
    if (quantity) this.quantity = null;
    if (unitPrice) this.unitPrice = null;
    if (factor) this.factor = null;
    if (net) this.net = null;
    if (udi) this.udi = null;
    if (bodySite) this.bodySite = null;
    if (subSite) this.subSite = null;
    if (encounter) this.encounter = null;
    if (noteNumber) this.noteNumber = null;
    if (adjudication) this.adjudication = null;
    if (detail) this.detail = null;
  }

  @override
  ExplanationOfBenefitItemBuilder clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitItemBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirPositiveIntBuilder? sequence,
    List<FhirPositiveIntBuilder>? careTeamSequence,
    List<FhirPositiveIntBuilder>? diagnosisSequence,
    List<FhirPositiveIntBuilder>? procedureSequence,
    List<FhirPositiveIntBuilder>? informationSequence,
    CodeableConceptBuilder? revenue,
    CodeableConceptBuilder? category,
    CodeableConceptBuilder? productOrService,
    List<CodeableConceptBuilder>? modifier,
    List<CodeableConceptBuilder>? programCode,
    ServicedXExplanationOfBenefitItemBuilder? servicedX,
    LocationXExplanationOfBenefitItemBuilder? locationX,
    QuantityBuilder? quantity,
    MoneyBuilder? unitPrice,
    FhirDecimalBuilder? factor,
    MoneyBuilder? net,
    List<ReferenceBuilder>? udi,
    CodeableConceptBuilder? bodySite,
    List<CodeableConceptBuilder>? subSite,
    List<ReferenceBuilder>? encounter,
    List<FhirPositiveIntBuilder>? noteNumber,
    List<ExplanationOfBenefitAdjudicationBuilder>? adjudication,
    List<ExplanationOfBenefitDetailBuilder>? detail,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ExplanationOfBenefitItemBuilder(
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
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ExplanationOfBenefitItemBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      sequence,
      o.sequence,
    )) {
      return false;
    }
    if (!listEquals<FhirPositiveIntBuilder>(
      careTeamSequence,
      o.careTeamSequence,
    )) {
      return false;
    }
    if (!listEquals<FhirPositiveIntBuilder>(
      diagnosisSequence,
      o.diagnosisSequence,
    )) {
      return false;
    }
    if (!listEquals<FhirPositiveIntBuilder>(
      procedureSequence,
      o.procedureSequence,
    )) {
      return false;
    }
    if (!listEquals<FhirPositiveIntBuilder>(
      informationSequence,
      o.informationSequence,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      revenue,
      o.revenue,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      category,
      o.category,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      productOrService,
      o.productOrService,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      modifier,
      o.modifier,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      programCode,
      o.programCode,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      servicedX,
      o.servicedX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      locationX,
      o.locationX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      quantity,
      o.quantity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      unitPrice,
      o.unitPrice,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      factor,
      o.factor,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      net,
      o.net,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      udi,
      o.udi,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      bodySite,
      o.bodySite,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      subSite,
      o.subSite,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      encounter,
      o.encounter,
    )) {
      return false;
    }
    if (!listEquals<FhirPositiveIntBuilder>(
      noteNumber,
      o.noteNumber,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitAdjudicationBuilder>(
      adjudication,
      o.adjudication,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitDetailBuilder>(
      detail,
      o.detail,
    )) {
      return false;
    }
    return true;
  }
}

/// [ExplanationOfBenefitAdjudicationBuilder]
/// If this item is a group then the values here are a summary of the
/// adjudication of the detail items. If this item is a simple product or
/// service then this is the result of the adjudication of this item.
class ExplanationOfBenefitAdjudicationBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ExplanationOfBenefitAdjudicationBuilder]

  ExplanationOfBenefitAdjudicationBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.category,
    this.reason,
    this.amount,
    this.value,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ExplanationOfBenefit.item.adjudication',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExplanationOfBenefitAdjudicationBuilder.empty() =>
      ExplanationOfBenefitAdjudicationBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitAdjudicationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.item.adjudication';
    return ExplanationOfBenefitAdjudicationBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      category: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'category',
        CodeableConceptBuilder.fromJson,
        '$objectPath.category',
      ),
      reason: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'reason',
        CodeableConceptBuilder.fromJson,
        '$objectPath.reason',
      ),
      amount: JsonParser.parseObject<MoneyBuilder>(
        json,
        'amount',
        MoneyBuilder.fromJson,
        '$objectPath.amount',
      ),
      value: JsonParser.parsePrimitive<FhirDecimalBuilder>(
        json,
        'value',
        FhirDecimalBuilder.fromJson,
        '$objectPath.value',
      ),
    );
  }

  /// Deserialize [ExplanationOfBenefitAdjudicationBuilder]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitAdjudicationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitAdjudicationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitAdjudicationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitAdjudicationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitAdjudicationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitAdjudicationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitAdjudicationBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
  CodeableConceptBuilder? category;

  /// [reason]
  /// A code supporting the understanding of the adjudication result and
  /// explaining variance from expected amount.
  CodeableConceptBuilder? reason;

  /// [amount]
  /// Monetary amount associated with the category.
  MoneyBuilder? amount;

  /// [value]
  /// A non-monetary value associated with the category. Mutually exclusive
  /// to the amount element above.
  FhirDecimalBuilder? value;

  /// converts a [ExplanationOfBenefitAdjudicationBuilder]
  /// to [ExplanationOfBenefitAdjudication]
  @override
  ExplanationOfBenefitAdjudication build() =>
      ExplanationOfBenefitAdjudication.fromJson(toJson());

  /// converts a [ExplanationOfBenefitAdjudicationBuilder]
  /// to [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'category',
      'reason',
      'amount',
      'value',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'category':
        if (category != null) {
          fields.add(category!);
        }
      case 'reason':
        if (reason != null) {
          fields.add(reason!);
        }
      case 'amount':
        if (amount != null) {
          fields.add(amount!);
        }
      case 'value':
        if (value != null) {
          fields.add(value!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'category':
        {
          if (child is CodeableConceptBuilder) {
            category = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reason':
        {
          if (child is CodeableConceptBuilder) {
            reason = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'amount':
        {
          if (child is MoneyBuilder) {
            amount = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'value':
        {
          if (child is FhirDecimalBuilder) {
            value = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'category':
        return ['CodeableConceptBuilder'];
      case 'reason':
        return ['CodeableConceptBuilder'];
      case 'amount':
        return ['MoneyBuilder'];
      case 'value':
        return ['FhirDecimalBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitAdjudicationBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'category':
        {
          category = CodeableConceptBuilder.empty();
          return;
        }
      case 'reason':
        {
          reason = CodeableConceptBuilder.empty();
          return;
        }
      case 'amount':
        {
          amount = MoneyBuilder.empty();
          return;
        }
      case 'value':
        {
          value = FhirDecimalBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool category = false,
    bool reason = false,
    bool amount = false,
    bool value = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (category) this.category = null;
    if (reason) this.reason = null;
    if (amount) this.amount = null;
    if (value) this.value = null;
  }

  @override
  ExplanationOfBenefitAdjudicationBuilder clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitAdjudicationBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? category,
    CodeableConceptBuilder? reason,
    MoneyBuilder? amount,
    FhirDecimalBuilder? value,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ExplanationOfBenefitAdjudicationBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      category: category ?? this.category,
      reason: reason ?? this.reason,
      amount: amount ?? this.amount,
      value: value ?? this.value,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ExplanationOfBenefitAdjudicationBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      category,
      o.category,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      reason,
      o.reason,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      amount,
      o.amount,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      value,
      o.value,
    )) {
      return false;
    }
    return true;
  }
}

/// [ExplanationOfBenefitDetailBuilder]
/// Second-tier of goods and services.
class ExplanationOfBenefitDetailBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ExplanationOfBenefitDetailBuilder]

  ExplanationOfBenefitDetailBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.sequence,
    this.revenue,
    this.category,
    this.productOrService,
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
  }) : super(
          objectPath: 'ExplanationOfBenefit.item.detail',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExplanationOfBenefitDetailBuilder.empty() =>
      ExplanationOfBenefitDetailBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitDetailBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.item.detail';
    return ExplanationOfBenefitDetailBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      sequence: JsonParser.parsePrimitive<FhirPositiveIntBuilder>(
        json,
        'sequence',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.sequence',
      ),
      revenue: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'revenue',
        CodeableConceptBuilder.fromJson,
        '$objectPath.revenue',
      ),
      category: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'category',
        CodeableConceptBuilder.fromJson,
        '$objectPath.category',
      ),
      productOrService: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'productOrService',
        CodeableConceptBuilder.fromJson,
        '$objectPath.productOrService',
      ),
      modifier: (json['modifier'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifier',
              },
            ),
          )
          .toList(),
      programCode: (json['programCode'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.programCode',
              },
            ),
          )
          .toList(),
      quantity: JsonParser.parseObject<QuantityBuilder>(
        json,
        'quantity',
        QuantityBuilder.fromJson,
        '$objectPath.quantity',
      ),
      unitPrice: JsonParser.parseObject<MoneyBuilder>(
        json,
        'unitPrice',
        MoneyBuilder.fromJson,
        '$objectPath.unitPrice',
      ),
      factor: JsonParser.parsePrimitive<FhirDecimalBuilder>(
        json,
        'factor',
        FhirDecimalBuilder.fromJson,
        '$objectPath.factor',
      ),
      net: JsonParser.parseObject<MoneyBuilder>(
        json,
        'net',
        MoneyBuilder.fromJson,
        '$objectPath.net',
      ),
      udi: (json['udi'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.udi',
              },
            ),
          )
          .toList(),
      noteNumber: JsonParser.parsePrimitiveList<FhirPositiveIntBuilder>(
        json,
        'noteNumber',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.noteNumber',
      ),
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitAdjudicationBuilder>(
            (v) => ExplanationOfBenefitAdjudicationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.adjudication',
              },
            ),
          )
          .toList(),
      subDetail: (json['subDetail'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitSubDetailBuilder>(
            (v) => ExplanationOfBenefitSubDetailBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.subDetail',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ExplanationOfBenefitDetailBuilder]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitDetailBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitDetailBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitDetailBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitDetailBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitDetailBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitDetailBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitDetailBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitDetail';

  /// [sequence]
  /// A claim detail line. Either a simple (a product or service) or a
  /// 'group' of sub-details which are simple items.
  FhirPositiveIntBuilder? sequence;

  /// [revenue]
  /// The type of revenue or cost center providing the product and/or
  /// service.
  CodeableConceptBuilder? revenue;

  /// [category]
  /// Code to identify the general type of benefits under which products and
  /// services are provided.
  CodeableConceptBuilder? category;

  /// [productOrService]
  /// When the value is a group code then this item collects a set of related
  /// claim details, otherwise this contains the product, service, drug or
  /// other billing code for the item.
  CodeableConceptBuilder? productOrService;

  /// [modifier]
  /// Item typification or modifiers codes to convey additional context for
  /// the product or service.
  List<CodeableConceptBuilder>? modifier;

  /// [programCode]
  /// Identifies the program under which this may be recovered.
  List<CodeableConceptBuilder>? programCode;

  /// [quantity]
  /// The number of repetitions of a service or product.
  QuantityBuilder? quantity;

  /// [unitPrice]
  /// If the item is not a group then this is the fee for the product or
  /// service, otherwise this is the total of the fees for the details of the
  /// group.
  MoneyBuilder? unitPrice;

  /// [factor]
  /// A real number that represents a multiplier used in determining the
  /// overall value of services delivered and/or goods received. The concept
  /// of a Factor allows for a discount or surcharge multiplier to be applied
  /// to a monetary amount.
  FhirDecimalBuilder? factor;

  /// [net]
  /// The quantity times the unit price for an additional service or product
  /// or charge.
  MoneyBuilder? net;

  /// [udi]
  /// Unique Device Identifiers associated with this line item.
  List<ReferenceBuilder>? udi;

  /// [noteNumber]
  /// The numbers associated with notes below which apply to the adjudication
  /// of this item.
  List<FhirPositiveIntBuilder>? noteNumber;

  /// [adjudication]
  /// The adjudication results.
  List<ExplanationOfBenefitAdjudicationBuilder>? adjudication;

  /// [subDetail]
  /// Third-tier of goods and services.
  List<ExplanationOfBenefitSubDetailBuilder>? subDetail;

  /// converts a [ExplanationOfBenefitDetailBuilder]
  /// to [ExplanationOfBenefitDetail]
  @override
  ExplanationOfBenefitDetail build() =>
      ExplanationOfBenefitDetail.fromJson(toJson());

  /// converts a [ExplanationOfBenefitDetailBuilder]
  /// to [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'sequence',
      'revenue',
      'category',
      'productOrService',
      'modifier',
      'programCode',
      'quantity',
      'unitPrice',
      'factor',
      'net',
      'udi',
      'noteNumber',
      'adjudication',
      'subDetail',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'sequence':
        if (sequence != null) {
          fields.add(sequence!);
        }
      case 'revenue':
        if (revenue != null) {
          fields.add(revenue!);
        }
      case 'category':
        if (category != null) {
          fields.add(category!);
        }
      case 'productOrService':
        if (productOrService != null) {
          fields.add(productOrService!);
        }
      case 'modifier':
        if (modifier != null) {
          fields.addAll(modifier!);
        }
      case 'programCode':
        if (programCode != null) {
          fields.addAll(programCode!);
        }
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
        }
      case 'unitPrice':
        if (unitPrice != null) {
          fields.add(unitPrice!);
        }
      case 'factor':
        if (factor != null) {
          fields.add(factor!);
        }
      case 'net':
        if (net != null) {
          fields.add(net!);
        }
      case 'udi':
        if (udi != null) {
          fields.addAll(udi!);
        }
      case 'noteNumber':
        if (noteNumber != null) {
          fields.addAll(noteNumber!);
        }
      case 'adjudication':
        if (adjudication != null) {
          fields.addAll(adjudication!);
        }
      case 'subDetail':
        if (subDetail != null) {
          fields.addAll(subDetail!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'sequence':
        {
          if (child is FhirPositiveIntBuilder) {
            sequence = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'revenue':
        {
          if (child is CodeableConceptBuilder) {
            revenue = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'category':
        {
          if (child is CodeableConceptBuilder) {
            category = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'productOrService':
        {
          if (child is CodeableConceptBuilder) {
            productOrService = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifier':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            modifier = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            modifier = [...(modifier ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'programCode':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            programCode = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            programCode = [...(programCode ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'quantity':
        {
          if (child is QuantityBuilder) {
            quantity = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'unitPrice':
        {
          if (child is MoneyBuilder) {
            unitPrice = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'factor':
        {
          if (child is FhirDecimalBuilder) {
            factor = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'net':
        {
          if (child is MoneyBuilder) {
            net = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'udi':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            udi = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            udi = [...(udi ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'noteNumber':
        {
          if (child is List<FhirPositiveIntBuilder>) {
            // Replace or create new list
            noteNumber = child;
            return;
          } else if (child is FhirPositiveIntBuilder) {
            // Add single element to existing list or create new list
            noteNumber = [...(noteNumber ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'adjudication':
        {
          if (child is List<ExplanationOfBenefitAdjudicationBuilder>) {
            // Replace or create new list
            adjudication = child;
            return;
          } else if (child is ExplanationOfBenefitAdjudicationBuilder) {
            // Add single element to existing list or create new list
            adjudication = [...(adjudication ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subDetail':
        {
          if (child is List<ExplanationOfBenefitSubDetailBuilder>) {
            // Replace or create new list
            subDetail = child;
            return;
          } else if (child is ExplanationOfBenefitSubDetailBuilder) {
            // Add single element to existing list or create new list
            subDetail = [...(subDetail ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'sequence':
        return ['FhirPositiveIntBuilder'];
      case 'revenue':
        return ['CodeableConceptBuilder'];
      case 'category':
        return ['CodeableConceptBuilder'];
      case 'productOrService':
        return ['CodeableConceptBuilder'];
      case 'modifier':
        return ['CodeableConceptBuilder'];
      case 'programCode':
        return ['CodeableConceptBuilder'];
      case 'quantity':
        return ['QuantityBuilder'];
      case 'unitPrice':
        return ['MoneyBuilder'];
      case 'factor':
        return ['FhirDecimalBuilder'];
      case 'net':
        return ['MoneyBuilder'];
      case 'udi':
        return ['ReferenceBuilder'];
      case 'noteNumber':
        return ['FhirPositiveIntBuilder'];
      case 'adjudication':
        return ['ExplanationOfBenefitAdjudicationBuilder'];
      case 'subDetail':
        return ['ExplanationOfBenefitSubDetailBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitDetailBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'sequence':
        {
          sequence = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'revenue':
        {
          revenue = CodeableConceptBuilder.empty();
          return;
        }
      case 'category':
        {
          category = CodeableConceptBuilder.empty();
          return;
        }
      case 'productOrService':
        {
          productOrService = CodeableConceptBuilder.empty();
          return;
        }
      case 'modifier':
        {
          modifier = <CodeableConceptBuilder>[];
          return;
        }
      case 'programCode':
        {
          programCode = <CodeableConceptBuilder>[];
          return;
        }
      case 'quantity':
        {
          quantity = QuantityBuilder.empty();
          return;
        }
      case 'unitPrice':
        {
          unitPrice = MoneyBuilder.empty();
          return;
        }
      case 'factor':
        {
          factor = FhirDecimalBuilder.empty();
          return;
        }
      case 'net':
        {
          net = MoneyBuilder.empty();
          return;
        }
      case 'udi':
        {
          udi = <ReferenceBuilder>[];
          return;
        }
      case 'noteNumber':
        {
          noteNumber = <FhirPositiveIntBuilder>[];
          return;
        }
      case 'adjudication':
        {
          adjudication = <ExplanationOfBenefitAdjudicationBuilder>[];
          return;
        }
      case 'subDetail':
        {
          subDetail = <ExplanationOfBenefitSubDetailBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool sequence = false,
    bool revenue = false,
    bool category = false,
    bool productOrService = false,
    bool modifier = false,
    bool programCode = false,
    bool quantity = false,
    bool unitPrice = false,
    bool factor = false,
    bool net = false,
    bool udi = false,
    bool noteNumber = false,
    bool adjudication = false,
    bool subDetail = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (sequence) this.sequence = null;
    if (revenue) this.revenue = null;
    if (category) this.category = null;
    if (productOrService) this.productOrService = null;
    if (modifier) this.modifier = null;
    if (programCode) this.programCode = null;
    if (quantity) this.quantity = null;
    if (unitPrice) this.unitPrice = null;
    if (factor) this.factor = null;
    if (net) this.net = null;
    if (udi) this.udi = null;
    if (noteNumber) this.noteNumber = null;
    if (adjudication) this.adjudication = null;
    if (subDetail) this.subDetail = null;
  }

  @override
  ExplanationOfBenefitDetailBuilder clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitDetailBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirPositiveIntBuilder? sequence,
    CodeableConceptBuilder? revenue,
    CodeableConceptBuilder? category,
    CodeableConceptBuilder? productOrService,
    List<CodeableConceptBuilder>? modifier,
    List<CodeableConceptBuilder>? programCode,
    QuantityBuilder? quantity,
    MoneyBuilder? unitPrice,
    FhirDecimalBuilder? factor,
    MoneyBuilder? net,
    List<ReferenceBuilder>? udi,
    List<FhirPositiveIntBuilder>? noteNumber,
    List<ExplanationOfBenefitAdjudicationBuilder>? adjudication,
    List<ExplanationOfBenefitSubDetailBuilder>? subDetail,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ExplanationOfBenefitDetailBuilder(
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
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ExplanationOfBenefitDetailBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      sequence,
      o.sequence,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      revenue,
      o.revenue,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      category,
      o.category,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      productOrService,
      o.productOrService,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      modifier,
      o.modifier,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      programCode,
      o.programCode,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      quantity,
      o.quantity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      unitPrice,
      o.unitPrice,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      factor,
      o.factor,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      net,
      o.net,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      udi,
      o.udi,
    )) {
      return false;
    }
    if (!listEquals<FhirPositiveIntBuilder>(
      noteNumber,
      o.noteNumber,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitAdjudicationBuilder>(
      adjudication,
      o.adjudication,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitSubDetailBuilder>(
      subDetail,
      o.subDetail,
    )) {
      return false;
    }
    return true;
  }
}

/// [ExplanationOfBenefitSubDetailBuilder]
/// Third-tier of goods and services.
class ExplanationOfBenefitSubDetailBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ExplanationOfBenefitSubDetailBuilder]

  ExplanationOfBenefitSubDetailBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.sequence,
    this.revenue,
    this.category,
    this.productOrService,
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
  }) : super(
          objectPath: 'ExplanationOfBenefit.item.detail.subDetail',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExplanationOfBenefitSubDetailBuilder.empty() =>
      ExplanationOfBenefitSubDetailBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitSubDetailBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.item.detail.subDetail';
    return ExplanationOfBenefitSubDetailBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      sequence: JsonParser.parsePrimitive<FhirPositiveIntBuilder>(
        json,
        'sequence',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.sequence',
      ),
      revenue: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'revenue',
        CodeableConceptBuilder.fromJson,
        '$objectPath.revenue',
      ),
      category: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'category',
        CodeableConceptBuilder.fromJson,
        '$objectPath.category',
      ),
      productOrService: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'productOrService',
        CodeableConceptBuilder.fromJson,
        '$objectPath.productOrService',
      ),
      modifier: (json['modifier'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifier',
              },
            ),
          )
          .toList(),
      programCode: (json['programCode'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.programCode',
              },
            ),
          )
          .toList(),
      quantity: JsonParser.parseObject<QuantityBuilder>(
        json,
        'quantity',
        QuantityBuilder.fromJson,
        '$objectPath.quantity',
      ),
      unitPrice: JsonParser.parseObject<MoneyBuilder>(
        json,
        'unitPrice',
        MoneyBuilder.fromJson,
        '$objectPath.unitPrice',
      ),
      factor: JsonParser.parsePrimitive<FhirDecimalBuilder>(
        json,
        'factor',
        FhirDecimalBuilder.fromJson,
        '$objectPath.factor',
      ),
      net: JsonParser.parseObject<MoneyBuilder>(
        json,
        'net',
        MoneyBuilder.fromJson,
        '$objectPath.net',
      ),
      udi: (json['udi'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.udi',
              },
            ),
          )
          .toList(),
      noteNumber: JsonParser.parsePrimitiveList<FhirPositiveIntBuilder>(
        json,
        'noteNumber',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.noteNumber',
      ),
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitAdjudicationBuilder>(
            (v) => ExplanationOfBenefitAdjudicationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.adjudication',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ExplanationOfBenefitSubDetailBuilder]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitSubDetailBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitSubDetailBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitSubDetailBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitSubDetailBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitSubDetailBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitSubDetailBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitSubDetailBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitSubDetail';

  /// [sequence]
  /// A claim detail line. Either a simple (a product or service) or a
  /// 'group' of sub-details which are simple items.
  FhirPositiveIntBuilder? sequence;

  /// [revenue]
  /// The type of revenue or cost center providing the product and/or
  /// service.
  CodeableConceptBuilder? revenue;

  /// [category]
  /// Code to identify the general type of benefits under which products and
  /// services are provided.
  CodeableConceptBuilder? category;

  /// [productOrService]
  /// When the value is a group code then this item collects a set of related
  /// claim details, otherwise this contains the product, service, drug or
  /// other billing code for the item.
  CodeableConceptBuilder? productOrService;

  /// [modifier]
  /// Item typification or modifiers codes to convey additional context for
  /// the product or service.
  List<CodeableConceptBuilder>? modifier;

  /// [programCode]
  /// Identifies the program under which this may be recovered.
  List<CodeableConceptBuilder>? programCode;

  /// [quantity]
  /// The number of repetitions of a service or product.
  QuantityBuilder? quantity;

  /// [unitPrice]
  /// If the item is not a group then this is the fee for the product or
  /// service, otherwise this is the total of the fees for the details of the
  /// group.
  MoneyBuilder? unitPrice;

  /// [factor]
  /// A real number that represents a multiplier used in determining the
  /// overall value of services delivered and/or goods received. The concept
  /// of a Factor allows for a discount or surcharge multiplier to be applied
  /// to a monetary amount.
  FhirDecimalBuilder? factor;

  /// [net]
  /// The quantity times the unit price for an additional service or product
  /// or charge.
  MoneyBuilder? net;

  /// [udi]
  /// Unique Device Identifiers associated with this line item.
  List<ReferenceBuilder>? udi;

  /// [noteNumber]
  /// The numbers associated with notes below which apply to the adjudication
  /// of this item.
  List<FhirPositiveIntBuilder>? noteNumber;

  /// [adjudication]
  /// The adjudication results.
  List<ExplanationOfBenefitAdjudicationBuilder>? adjudication;

  /// converts a [ExplanationOfBenefitSubDetailBuilder]
  /// to [ExplanationOfBenefitSubDetail]
  @override
  ExplanationOfBenefitSubDetail build() =>
      ExplanationOfBenefitSubDetail.fromJson(toJson());

  /// converts a [ExplanationOfBenefitSubDetailBuilder]
  /// to [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'sequence',
      'revenue',
      'category',
      'productOrService',
      'modifier',
      'programCode',
      'quantity',
      'unitPrice',
      'factor',
      'net',
      'udi',
      'noteNumber',
      'adjudication',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'sequence':
        if (sequence != null) {
          fields.add(sequence!);
        }
      case 'revenue':
        if (revenue != null) {
          fields.add(revenue!);
        }
      case 'category':
        if (category != null) {
          fields.add(category!);
        }
      case 'productOrService':
        if (productOrService != null) {
          fields.add(productOrService!);
        }
      case 'modifier':
        if (modifier != null) {
          fields.addAll(modifier!);
        }
      case 'programCode':
        if (programCode != null) {
          fields.addAll(programCode!);
        }
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
        }
      case 'unitPrice':
        if (unitPrice != null) {
          fields.add(unitPrice!);
        }
      case 'factor':
        if (factor != null) {
          fields.add(factor!);
        }
      case 'net':
        if (net != null) {
          fields.add(net!);
        }
      case 'udi':
        if (udi != null) {
          fields.addAll(udi!);
        }
      case 'noteNumber':
        if (noteNumber != null) {
          fields.addAll(noteNumber!);
        }
      case 'adjudication':
        if (adjudication != null) {
          fields.addAll(adjudication!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'sequence':
        {
          if (child is FhirPositiveIntBuilder) {
            sequence = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'revenue':
        {
          if (child is CodeableConceptBuilder) {
            revenue = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'category':
        {
          if (child is CodeableConceptBuilder) {
            category = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'productOrService':
        {
          if (child is CodeableConceptBuilder) {
            productOrService = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifier':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            modifier = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            modifier = [...(modifier ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'programCode':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            programCode = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            programCode = [...(programCode ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'quantity':
        {
          if (child is QuantityBuilder) {
            quantity = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'unitPrice':
        {
          if (child is MoneyBuilder) {
            unitPrice = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'factor':
        {
          if (child is FhirDecimalBuilder) {
            factor = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'net':
        {
          if (child is MoneyBuilder) {
            net = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'udi':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            udi = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            udi = [...(udi ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'noteNumber':
        {
          if (child is List<FhirPositiveIntBuilder>) {
            // Replace or create new list
            noteNumber = child;
            return;
          } else if (child is FhirPositiveIntBuilder) {
            // Add single element to existing list or create new list
            noteNumber = [...(noteNumber ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'adjudication':
        {
          if (child is List<ExplanationOfBenefitAdjudicationBuilder>) {
            // Replace or create new list
            adjudication = child;
            return;
          } else if (child is ExplanationOfBenefitAdjudicationBuilder) {
            // Add single element to existing list or create new list
            adjudication = [...(adjudication ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'sequence':
        return ['FhirPositiveIntBuilder'];
      case 'revenue':
        return ['CodeableConceptBuilder'];
      case 'category':
        return ['CodeableConceptBuilder'];
      case 'productOrService':
        return ['CodeableConceptBuilder'];
      case 'modifier':
        return ['CodeableConceptBuilder'];
      case 'programCode':
        return ['CodeableConceptBuilder'];
      case 'quantity':
        return ['QuantityBuilder'];
      case 'unitPrice':
        return ['MoneyBuilder'];
      case 'factor':
        return ['FhirDecimalBuilder'];
      case 'net':
        return ['MoneyBuilder'];
      case 'udi':
        return ['ReferenceBuilder'];
      case 'noteNumber':
        return ['FhirPositiveIntBuilder'];
      case 'adjudication':
        return ['ExplanationOfBenefitAdjudicationBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitSubDetailBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'sequence':
        {
          sequence = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'revenue':
        {
          revenue = CodeableConceptBuilder.empty();
          return;
        }
      case 'category':
        {
          category = CodeableConceptBuilder.empty();
          return;
        }
      case 'productOrService':
        {
          productOrService = CodeableConceptBuilder.empty();
          return;
        }
      case 'modifier':
        {
          modifier = <CodeableConceptBuilder>[];
          return;
        }
      case 'programCode':
        {
          programCode = <CodeableConceptBuilder>[];
          return;
        }
      case 'quantity':
        {
          quantity = QuantityBuilder.empty();
          return;
        }
      case 'unitPrice':
        {
          unitPrice = MoneyBuilder.empty();
          return;
        }
      case 'factor':
        {
          factor = FhirDecimalBuilder.empty();
          return;
        }
      case 'net':
        {
          net = MoneyBuilder.empty();
          return;
        }
      case 'udi':
        {
          udi = <ReferenceBuilder>[];
          return;
        }
      case 'noteNumber':
        {
          noteNumber = <FhirPositiveIntBuilder>[];
          return;
        }
      case 'adjudication':
        {
          adjudication = <ExplanationOfBenefitAdjudicationBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool sequence = false,
    bool revenue = false,
    bool category = false,
    bool productOrService = false,
    bool modifier = false,
    bool programCode = false,
    bool quantity = false,
    bool unitPrice = false,
    bool factor = false,
    bool net = false,
    bool udi = false,
    bool noteNumber = false,
    bool adjudication = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (sequence) this.sequence = null;
    if (revenue) this.revenue = null;
    if (category) this.category = null;
    if (productOrService) this.productOrService = null;
    if (modifier) this.modifier = null;
    if (programCode) this.programCode = null;
    if (quantity) this.quantity = null;
    if (unitPrice) this.unitPrice = null;
    if (factor) this.factor = null;
    if (net) this.net = null;
    if (udi) this.udi = null;
    if (noteNumber) this.noteNumber = null;
    if (adjudication) this.adjudication = null;
  }

  @override
  ExplanationOfBenefitSubDetailBuilder clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitSubDetailBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirPositiveIntBuilder? sequence,
    CodeableConceptBuilder? revenue,
    CodeableConceptBuilder? category,
    CodeableConceptBuilder? productOrService,
    List<CodeableConceptBuilder>? modifier,
    List<CodeableConceptBuilder>? programCode,
    QuantityBuilder? quantity,
    MoneyBuilder? unitPrice,
    FhirDecimalBuilder? factor,
    MoneyBuilder? net,
    List<ReferenceBuilder>? udi,
    List<FhirPositiveIntBuilder>? noteNumber,
    List<ExplanationOfBenefitAdjudicationBuilder>? adjudication,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ExplanationOfBenefitSubDetailBuilder(
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
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ExplanationOfBenefitSubDetailBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      sequence,
      o.sequence,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      revenue,
      o.revenue,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      category,
      o.category,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      productOrService,
      o.productOrService,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      modifier,
      o.modifier,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      programCode,
      o.programCode,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      quantity,
      o.quantity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      unitPrice,
      o.unitPrice,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      factor,
      o.factor,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      net,
      o.net,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      udi,
      o.udi,
    )) {
      return false;
    }
    if (!listEquals<FhirPositiveIntBuilder>(
      noteNumber,
      o.noteNumber,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitAdjudicationBuilder>(
      adjudication,
      o.adjudication,
    )) {
      return false;
    }
    return true;
  }
}

/// [ExplanationOfBenefitAddItemBuilder]
/// The first-tier service adjudications for payor added product or service
/// lines.
class ExplanationOfBenefitAddItemBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ExplanationOfBenefitAddItemBuilder]

  ExplanationOfBenefitAddItemBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.itemSequence,
    this.detailSequence,
    this.subDetailSequence,
    this.provider,
    this.productOrService,
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
  }) : super(
          objectPath: 'ExplanationOfBenefit.addItem',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExplanationOfBenefitAddItemBuilder.empty() =>
      ExplanationOfBenefitAddItemBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitAddItemBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.addItem';
    return ExplanationOfBenefitAddItemBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      itemSequence: JsonParser.parsePrimitiveList<FhirPositiveIntBuilder>(
        json,
        'itemSequence',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.itemSequence',
      ),
      detailSequence: JsonParser.parsePrimitiveList<FhirPositiveIntBuilder>(
        json,
        'detailSequence',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.detailSequence',
      ),
      subDetailSequence: JsonParser.parsePrimitiveList<FhirPositiveIntBuilder>(
        json,
        'subDetailSequence',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.subDetailSequence',
      ),
      provider: (json['provider'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.provider',
              },
            ),
          )
          .toList(),
      productOrService: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'productOrService',
        CodeableConceptBuilder.fromJson,
        '$objectPath.productOrService',
      ),
      modifier: (json['modifier'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifier',
              },
            ),
          )
          .toList(),
      programCode: (json['programCode'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.programCode',
              },
            ),
          )
          .toList(),
      servicedX: JsonParser.parsePolymorphic<
          ServicedXExplanationOfBenefitAddItemBuilder>(
        json,
        {
          'servicedDate': FhirDateBuilder.fromJson,
          'servicedPeriod': PeriodBuilder.fromJson,
        },
        objectPath,
      ),
      locationX: JsonParser.parsePolymorphic<
          LocationXExplanationOfBenefitAddItemBuilder>(
        json,
        {
          'locationCodeableConcept': CodeableConceptBuilder.fromJson,
          'locationAddress': AddressBuilder.fromJson,
          'locationReference': ReferenceBuilder.fromJson,
        },
        objectPath,
      ),
      quantity: JsonParser.parseObject<QuantityBuilder>(
        json,
        'quantity',
        QuantityBuilder.fromJson,
        '$objectPath.quantity',
      ),
      unitPrice: JsonParser.parseObject<MoneyBuilder>(
        json,
        'unitPrice',
        MoneyBuilder.fromJson,
        '$objectPath.unitPrice',
      ),
      factor: JsonParser.parsePrimitive<FhirDecimalBuilder>(
        json,
        'factor',
        FhirDecimalBuilder.fromJson,
        '$objectPath.factor',
      ),
      net: JsonParser.parseObject<MoneyBuilder>(
        json,
        'net',
        MoneyBuilder.fromJson,
        '$objectPath.net',
      ),
      bodySite: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'bodySite',
        CodeableConceptBuilder.fromJson,
        '$objectPath.bodySite',
      ),
      subSite: (json['subSite'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.subSite',
              },
            ),
          )
          .toList(),
      noteNumber: JsonParser.parsePrimitiveList<FhirPositiveIntBuilder>(
        json,
        'noteNumber',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.noteNumber',
      ),
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitAdjudicationBuilder>(
            (v) => ExplanationOfBenefitAdjudicationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.adjudication',
              },
            ),
          )
          .toList(),
      detail: (json['detail'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitDetailBuilder>(
            (v) => ExplanationOfBenefitDetailBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.detail',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ExplanationOfBenefitAddItemBuilder]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitAddItemBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitAddItemBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitAddItemBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitAddItemBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitAddItemBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitAddItemBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitAddItemBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitAddItem';

  /// [itemSequence]
  /// Claim items which this service line is intended to replace.
  List<FhirPositiveIntBuilder>? itemSequence;

  /// [detailSequence]
  /// The sequence number of the details within the claim item which this
  /// line is intended to replace.
  List<FhirPositiveIntBuilder>? detailSequence;

  /// [subDetailSequence]
  /// The sequence number of the sub-details woithin the details within the
  /// claim item which this line is intended to replace.
  List<FhirPositiveIntBuilder>? subDetailSequence;

  /// [provider]
  /// The providers who are authorized for the services rendered to the
  /// patient.
  List<ReferenceBuilder>? provider;

  /// [productOrService]
  /// When the value is a group code then this item collects a set of related
  /// claim details, otherwise this contains the product, service, drug or
  /// other billing code for the item.
  CodeableConceptBuilder? productOrService;

  /// [modifier]
  /// Item typification or modifiers codes to convey additional context for
  /// the product or service.
  List<CodeableConceptBuilder>? modifier;

  /// [programCode]
  /// Identifies the program under which this may be recovered.
  List<CodeableConceptBuilder>? programCode;

  /// [servicedX]
  /// The date or dates when the service or product was supplied, performed
  /// or completed.
  ServicedXExplanationOfBenefitAddItemBuilder? servicedX;

  /// Getter for [servicedDate] as a FhirDateBuilder
  FhirDateBuilder? get servicedDate => servicedX?.isAs<FhirDateBuilder>();

  /// Getter for [servicedPeriod] as a PeriodBuilder
  PeriodBuilder? get servicedPeriod => servicedX?.isAs<PeriodBuilder>();

  /// [locationX]
  /// Where the product or service was provided.
  LocationXExplanationOfBenefitAddItemBuilder? locationX;

  /// Getter for [locationCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get locationCodeableConcept =>
      locationX?.isAs<CodeableConceptBuilder>();

  /// Getter for [locationAddress] as a AddressBuilder
  AddressBuilder? get locationAddress => locationX?.isAs<AddressBuilder>();

  /// Getter for [locationReference] as a ReferenceBuilder
  ReferenceBuilder? get locationReference =>
      locationX?.isAs<ReferenceBuilder>();

  /// [quantity]
  /// The number of repetitions of a service or product.
  QuantityBuilder? quantity;

  /// [unitPrice]
  /// If the item is not a group then this is the fee for the product or
  /// service, otherwise this is the total of the fees for the details of the
  /// group.
  MoneyBuilder? unitPrice;

  /// [factor]
  /// A real number that represents a multiplier used in determining the
  /// overall value of services delivered and/or goods received. The concept
  /// of a Factor allows for a discount or surcharge multiplier to be applied
  /// to a monetary amount.
  FhirDecimalBuilder? factor;

  /// [net]
  /// The quantity times the unit price for an additional service or product
  /// or charge.
  MoneyBuilder? net;

  /// [bodySite]
  /// Physical service site on the patient (limb, tooth, etc.).
  CodeableConceptBuilder? bodySite;

  /// [subSite]
  /// A region or surface of the bodySite, e.g. limb region or tooth
  /// surface(s).
  List<CodeableConceptBuilder>? subSite;

  /// [noteNumber]
  /// The numbers associated with notes below which apply to the adjudication
  /// of this item.
  List<FhirPositiveIntBuilder>? noteNumber;

  /// [adjudication]
  /// The adjudication results.
  List<ExplanationOfBenefitAdjudicationBuilder>? adjudication;

  /// [detail]
  /// The second-tier service adjudications for payor added services.
  List<ExplanationOfBenefitDetailBuilder>? detail;

  /// converts a [ExplanationOfBenefitAddItemBuilder]
  /// to [ExplanationOfBenefitAddItem]
  @override
  ExplanationOfBenefitAddItem build() =>
      ExplanationOfBenefitAddItem.fromJson(toJson());

  /// converts a [ExplanationOfBenefitAddItemBuilder]
  /// to [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'itemSequence',
      'detailSequence',
      'subDetailSequence',
      'provider',
      'productOrService',
      'modifier',
      'programCode',
      'servicedX',
      'locationX',
      'quantity',
      'unitPrice',
      'factor',
      'net',
      'bodySite',
      'subSite',
      'noteNumber',
      'adjudication',
      'detail',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'itemSequence':
        if (itemSequence != null) {
          fields.addAll(itemSequence!);
        }
      case 'detailSequence':
        if (detailSequence != null) {
          fields.addAll(detailSequence!);
        }
      case 'subDetailSequence':
        if (subDetailSequence != null) {
          fields.addAll(subDetailSequence!);
        }
      case 'provider':
        if (provider != null) {
          fields.addAll(provider!);
        }
      case 'productOrService':
        if (productOrService != null) {
          fields.add(productOrService!);
        }
      case 'modifier':
        if (modifier != null) {
          fields.addAll(modifier!);
        }
      case 'programCode':
        if (programCode != null) {
          fields.addAll(programCode!);
        }
      case 'serviced':
        if (servicedX != null) {
          fields.add(servicedX!);
        }
      case 'servicedX':
        if (servicedX != null) {
          fields.add(servicedX!);
        }
      case 'servicedDate':
        if (servicedX is FhirDateBuilder) {
          fields.add(servicedX!);
        }
      case 'servicedPeriod':
        if (servicedX is PeriodBuilder) {
          fields.add(servicedX!);
        }
      case 'location':
        if (locationX != null) {
          fields.add(locationX!);
        }
      case 'locationX':
        if (locationX != null) {
          fields.add(locationX!);
        }
      case 'locationCodeableConcept':
        if (locationX is CodeableConceptBuilder) {
          fields.add(locationX!);
        }
      case 'locationAddress':
        if (locationX is AddressBuilder) {
          fields.add(locationX!);
        }
      case 'locationReference':
        if (locationX is ReferenceBuilder) {
          fields.add(locationX!);
        }
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
        }
      case 'unitPrice':
        if (unitPrice != null) {
          fields.add(unitPrice!);
        }
      case 'factor':
        if (factor != null) {
          fields.add(factor!);
        }
      case 'net':
        if (net != null) {
          fields.add(net!);
        }
      case 'bodySite':
        if (bodySite != null) {
          fields.add(bodySite!);
        }
      case 'subSite':
        if (subSite != null) {
          fields.addAll(subSite!);
        }
      case 'noteNumber':
        if (noteNumber != null) {
          fields.addAll(noteNumber!);
        }
      case 'adjudication':
        if (adjudication != null) {
          fields.addAll(adjudication!);
        }
      case 'detail':
        if (detail != null) {
          fields.addAll(detail!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'itemSequence':
        {
          if (child is List<FhirPositiveIntBuilder>) {
            // Replace or create new list
            itemSequence = child;
            return;
          } else if (child is FhirPositiveIntBuilder) {
            // Add single element to existing list or create new list
            itemSequence = [...(itemSequence ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'detailSequence':
        {
          if (child is List<FhirPositiveIntBuilder>) {
            // Replace or create new list
            detailSequence = child;
            return;
          } else if (child is FhirPositiveIntBuilder) {
            // Add single element to existing list or create new list
            detailSequence = [...(detailSequence ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subDetailSequence':
        {
          if (child is List<FhirPositiveIntBuilder>) {
            // Replace or create new list
            subDetailSequence = child;
            return;
          } else if (child is FhirPositiveIntBuilder) {
            // Add single element to existing list or create new list
            subDetailSequence = [...(subDetailSequence ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'provider':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            provider = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            provider = [...(provider ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'productOrService':
        {
          if (child is CodeableConceptBuilder) {
            productOrService = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifier':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            modifier = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            modifier = [...(modifier ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'programCode':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            programCode = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            programCode = [...(programCode ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'servicedX':
        {
          if (child is ServicedXExplanationOfBenefitAddItemBuilder) {
            servicedX = child;
            return;
          } else {
            if (child is FhirDateBuilder) {
              servicedX = child;
              return;
            }
            if (child is PeriodBuilder) {
              servicedX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'servicedDate':
        {
          if (child is FhirDateBuilder) {
            servicedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'servicedPeriod':
        {
          if (child is PeriodBuilder) {
            servicedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'locationX':
        {
          if (child is LocationXExplanationOfBenefitAddItemBuilder) {
            locationX = child;
            return;
          } else {
            if (child is CodeableConceptBuilder) {
              locationX = child;
              return;
            }
            if (child is AddressBuilder) {
              locationX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              locationX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'locationCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            locationX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'locationAddress':
        {
          if (child is AddressBuilder) {
            locationX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'locationReference':
        {
          if (child is ReferenceBuilder) {
            locationX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'quantity':
        {
          if (child is QuantityBuilder) {
            quantity = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'unitPrice':
        {
          if (child is MoneyBuilder) {
            unitPrice = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'factor':
        {
          if (child is FhirDecimalBuilder) {
            factor = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'net':
        {
          if (child is MoneyBuilder) {
            net = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'bodySite':
        {
          if (child is CodeableConceptBuilder) {
            bodySite = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subSite':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            subSite = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            subSite = [...(subSite ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'noteNumber':
        {
          if (child is List<FhirPositiveIntBuilder>) {
            // Replace or create new list
            noteNumber = child;
            return;
          } else if (child is FhirPositiveIntBuilder) {
            // Add single element to existing list or create new list
            noteNumber = [...(noteNumber ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'adjudication':
        {
          if (child is List<ExplanationOfBenefitAdjudicationBuilder>) {
            // Replace or create new list
            adjudication = child;
            return;
          } else if (child is ExplanationOfBenefitAdjudicationBuilder) {
            // Add single element to existing list or create new list
            adjudication = [...(adjudication ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'detail':
        {
          if (child is List<ExplanationOfBenefitDetailBuilder>) {
            // Replace or create new list
            detail = child;
            return;
          } else if (child is ExplanationOfBenefitDetailBuilder) {
            // Add single element to existing list or create new list
            detail = [...(detail ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'itemSequence':
        return ['FhirPositiveIntBuilder'];
      case 'detailSequence':
        return ['FhirPositiveIntBuilder'];
      case 'subDetailSequence':
        return ['FhirPositiveIntBuilder'];
      case 'provider':
        return ['ReferenceBuilder'];
      case 'productOrService':
        return ['CodeableConceptBuilder'];
      case 'modifier':
        return ['CodeableConceptBuilder'];
      case 'programCode':
        return ['CodeableConceptBuilder'];
      case 'serviced':
      case 'servicedX':
        return ['FhirDateBuilder', 'PeriodBuilder'];
      case 'servicedDate':
        return ['FhirDateBuilder'];
      case 'servicedPeriod':
        return ['PeriodBuilder'];
      case 'location':
      case 'locationX':
        return ['CodeableConceptBuilder', 'AddressBuilder', 'ReferenceBuilder'];
      case 'locationCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'locationAddress':
        return ['AddressBuilder'];
      case 'locationReference':
        return ['ReferenceBuilder'];
      case 'quantity':
        return ['QuantityBuilder'];
      case 'unitPrice':
        return ['MoneyBuilder'];
      case 'factor':
        return ['FhirDecimalBuilder'];
      case 'net':
        return ['MoneyBuilder'];
      case 'bodySite':
        return ['CodeableConceptBuilder'];
      case 'subSite':
        return ['CodeableConceptBuilder'];
      case 'noteNumber':
        return ['FhirPositiveIntBuilder'];
      case 'adjudication':
        return ['ExplanationOfBenefitAdjudicationBuilder'];
      case 'detail':
        return ['ExplanationOfBenefitDetailBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitAddItemBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'itemSequence':
        {
          itemSequence = <FhirPositiveIntBuilder>[];
          return;
        }
      case 'detailSequence':
        {
          detailSequence = <FhirPositiveIntBuilder>[];
          return;
        }
      case 'subDetailSequence':
        {
          subDetailSequence = <FhirPositiveIntBuilder>[];
          return;
        }
      case 'provider':
        {
          provider = <ReferenceBuilder>[];
          return;
        }
      case 'productOrService':
        {
          productOrService = CodeableConceptBuilder.empty();
          return;
        }
      case 'modifier':
        {
          modifier = <CodeableConceptBuilder>[];
          return;
        }
      case 'programCode':
        {
          programCode = <CodeableConceptBuilder>[];
          return;
        }
      case 'serviced':
      case 'servicedX':
      case 'servicedDate':
        {
          servicedX = FhirDateBuilder.empty();
          return;
        }
      case 'servicedPeriod':
        {
          servicedX = PeriodBuilder.empty();
          return;
        }
      case 'location':
      case 'locationX':
      case 'locationCodeableConcept':
        {
          locationX = CodeableConceptBuilder.empty();
          return;
        }
      case 'locationAddress':
        {
          locationX = AddressBuilder.empty();
          return;
        }
      case 'locationReference':
        {
          locationX = ReferenceBuilder.empty();
          return;
        }
      case 'quantity':
        {
          quantity = QuantityBuilder.empty();
          return;
        }
      case 'unitPrice':
        {
          unitPrice = MoneyBuilder.empty();
          return;
        }
      case 'factor':
        {
          factor = FhirDecimalBuilder.empty();
          return;
        }
      case 'net':
        {
          net = MoneyBuilder.empty();
          return;
        }
      case 'bodySite':
        {
          bodySite = CodeableConceptBuilder.empty();
          return;
        }
      case 'subSite':
        {
          subSite = <CodeableConceptBuilder>[];
          return;
        }
      case 'noteNumber':
        {
          noteNumber = <FhirPositiveIntBuilder>[];
          return;
        }
      case 'adjudication':
        {
          adjudication = <ExplanationOfBenefitAdjudicationBuilder>[];
          return;
        }
      case 'detail':
        {
          detail = <ExplanationOfBenefitDetailBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool itemSequence = false,
    bool detailSequence = false,
    bool subDetailSequence = false,
    bool provider = false,
    bool productOrService = false,
    bool modifier = false,
    bool programCode = false,
    bool serviced = false,
    bool location = false,
    bool quantity = false,
    bool unitPrice = false,
    bool factor = false,
    bool net = false,
    bool bodySite = false,
    bool subSite = false,
    bool noteNumber = false,
    bool adjudication = false,
    bool detail = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (itemSequence) this.itemSequence = null;
    if (detailSequence) this.detailSequence = null;
    if (subDetailSequence) this.subDetailSequence = null;
    if (provider) this.provider = null;
    if (productOrService) this.productOrService = null;
    if (modifier) this.modifier = null;
    if (programCode) this.programCode = null;
    if (serviced) servicedX = null;
    if (location) locationX = null;
    if (quantity) this.quantity = null;
    if (unitPrice) this.unitPrice = null;
    if (factor) this.factor = null;
    if (net) this.net = null;
    if (bodySite) this.bodySite = null;
    if (subSite) this.subSite = null;
    if (noteNumber) this.noteNumber = null;
    if (adjudication) this.adjudication = null;
    if (detail) this.detail = null;
  }

  @override
  ExplanationOfBenefitAddItemBuilder clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitAddItemBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<FhirPositiveIntBuilder>? itemSequence,
    List<FhirPositiveIntBuilder>? detailSequence,
    List<FhirPositiveIntBuilder>? subDetailSequence,
    List<ReferenceBuilder>? provider,
    CodeableConceptBuilder? productOrService,
    List<CodeableConceptBuilder>? modifier,
    List<CodeableConceptBuilder>? programCode,
    ServicedXExplanationOfBenefitAddItemBuilder? servicedX,
    LocationXExplanationOfBenefitAddItemBuilder? locationX,
    QuantityBuilder? quantity,
    MoneyBuilder? unitPrice,
    FhirDecimalBuilder? factor,
    MoneyBuilder? net,
    CodeableConceptBuilder? bodySite,
    List<CodeableConceptBuilder>? subSite,
    List<FhirPositiveIntBuilder>? noteNumber,
    List<ExplanationOfBenefitAdjudicationBuilder>? adjudication,
    List<ExplanationOfBenefitDetailBuilder>? detail,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ExplanationOfBenefitAddItemBuilder(
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
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ExplanationOfBenefitAddItemBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<FhirPositiveIntBuilder>(
      itemSequence,
      o.itemSequence,
    )) {
      return false;
    }
    if (!listEquals<FhirPositiveIntBuilder>(
      detailSequence,
      o.detailSequence,
    )) {
      return false;
    }
    if (!listEquals<FhirPositiveIntBuilder>(
      subDetailSequence,
      o.subDetailSequence,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      provider,
      o.provider,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      productOrService,
      o.productOrService,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      modifier,
      o.modifier,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      programCode,
      o.programCode,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      servicedX,
      o.servicedX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      locationX,
      o.locationX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      quantity,
      o.quantity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      unitPrice,
      o.unitPrice,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      factor,
      o.factor,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      net,
      o.net,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      bodySite,
      o.bodySite,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      subSite,
      o.subSite,
    )) {
      return false;
    }
    if (!listEquals<FhirPositiveIntBuilder>(
      noteNumber,
      o.noteNumber,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitAdjudicationBuilder>(
      adjudication,
      o.adjudication,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitDetailBuilder>(
      detail,
      o.detail,
    )) {
      return false;
    }
    return true;
  }
}

/// [ExplanationOfBenefitDetail1Builder]
/// The second-tier service adjudications for payor added services.
class ExplanationOfBenefitDetail1Builder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ExplanationOfBenefitDetail1Builder]

  ExplanationOfBenefitDetail1Builder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.productOrService,
    this.modifier,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.net,
    this.noteNumber,
    this.adjudication,
    this.subDetail,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ExplanationOfBenefit.addItem.detail',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExplanationOfBenefitDetail1Builder.empty() =>
      ExplanationOfBenefitDetail1Builder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitDetail1Builder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.addItem.detail';
    return ExplanationOfBenefitDetail1Builder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      productOrService: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'productOrService',
        CodeableConceptBuilder.fromJson,
        '$objectPath.productOrService',
      ),
      modifier: (json['modifier'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifier',
              },
            ),
          )
          .toList(),
      quantity: JsonParser.parseObject<QuantityBuilder>(
        json,
        'quantity',
        QuantityBuilder.fromJson,
        '$objectPath.quantity',
      ),
      unitPrice: JsonParser.parseObject<MoneyBuilder>(
        json,
        'unitPrice',
        MoneyBuilder.fromJson,
        '$objectPath.unitPrice',
      ),
      factor: JsonParser.parsePrimitive<FhirDecimalBuilder>(
        json,
        'factor',
        FhirDecimalBuilder.fromJson,
        '$objectPath.factor',
      ),
      net: JsonParser.parseObject<MoneyBuilder>(
        json,
        'net',
        MoneyBuilder.fromJson,
        '$objectPath.net',
      ),
      noteNumber: JsonParser.parsePrimitiveList<FhirPositiveIntBuilder>(
        json,
        'noteNumber',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.noteNumber',
      ),
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitAdjudicationBuilder>(
            (v) => ExplanationOfBenefitAdjudicationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.adjudication',
              },
            ),
          )
          .toList(),
      subDetail: (json['subDetail'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitSubDetailBuilder>(
            (v) => ExplanationOfBenefitSubDetailBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.subDetail',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ExplanationOfBenefitDetail1Builder]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitDetail1Builder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitDetail1Builder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitDetail1Builder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitDetail1Builder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitDetail1Builder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitDetail1Builder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitDetail1Builder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitDetail1';

  /// [productOrService]
  /// When the value is a group code then this item collects a set of related
  /// claim details, otherwise this contains the product, service, drug or
  /// other billing code for the item.
  CodeableConceptBuilder? productOrService;

  /// [modifier]
  /// Item typification or modifiers codes to convey additional context for
  /// the product or service.
  List<CodeableConceptBuilder>? modifier;

  /// [quantity]
  /// The number of repetitions of a service or product.
  QuantityBuilder? quantity;

  /// [unitPrice]
  /// If the item is not a group then this is the fee for the product or
  /// service, otherwise this is the total of the fees for the details of the
  /// group.
  MoneyBuilder? unitPrice;

  /// [factor]
  /// A real number that represents a multiplier used in determining the
  /// overall value of services delivered and/or goods received. The concept
  /// of a Factor allows for a discount or surcharge multiplier to be applied
  /// to a monetary amount.
  FhirDecimalBuilder? factor;

  /// [net]
  /// The quantity times the unit price for an additional service or product
  /// or charge.
  MoneyBuilder? net;

  /// [noteNumber]
  /// The numbers associated with notes below which apply to the adjudication
  /// of this item.
  List<FhirPositiveIntBuilder>? noteNumber;

  /// [adjudication]
  /// The adjudication results.
  List<ExplanationOfBenefitAdjudicationBuilder>? adjudication;

  /// [subDetail]
  /// The third-tier service adjudications for payor added services.
  List<ExplanationOfBenefitSubDetailBuilder>? subDetail;

  /// converts a [ExplanationOfBenefitDetail1Builder]
  /// to [ExplanationOfBenefitDetail1]
  @override
  ExplanationOfBenefitDetail1 build() =>
      ExplanationOfBenefitDetail1.fromJson(toJson());

  /// converts a [ExplanationOfBenefitDetail1Builder]
  /// to [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'productOrService',
      'modifier',
      'quantity',
      'unitPrice',
      'factor',
      'net',
      'noteNumber',
      'adjudication',
      'subDetail',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'productOrService':
        if (productOrService != null) {
          fields.add(productOrService!);
        }
      case 'modifier':
        if (modifier != null) {
          fields.addAll(modifier!);
        }
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
        }
      case 'unitPrice':
        if (unitPrice != null) {
          fields.add(unitPrice!);
        }
      case 'factor':
        if (factor != null) {
          fields.add(factor!);
        }
      case 'net':
        if (net != null) {
          fields.add(net!);
        }
      case 'noteNumber':
        if (noteNumber != null) {
          fields.addAll(noteNumber!);
        }
      case 'adjudication':
        if (adjudication != null) {
          fields.addAll(adjudication!);
        }
      case 'subDetail':
        if (subDetail != null) {
          fields.addAll(subDetail!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'productOrService':
        {
          if (child is CodeableConceptBuilder) {
            productOrService = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifier':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            modifier = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            modifier = [...(modifier ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'quantity':
        {
          if (child is QuantityBuilder) {
            quantity = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'unitPrice':
        {
          if (child is MoneyBuilder) {
            unitPrice = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'factor':
        {
          if (child is FhirDecimalBuilder) {
            factor = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'net':
        {
          if (child is MoneyBuilder) {
            net = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'noteNumber':
        {
          if (child is List<FhirPositiveIntBuilder>) {
            // Replace or create new list
            noteNumber = child;
            return;
          } else if (child is FhirPositiveIntBuilder) {
            // Add single element to existing list or create new list
            noteNumber = [...(noteNumber ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'adjudication':
        {
          if (child is List<ExplanationOfBenefitAdjudicationBuilder>) {
            // Replace or create new list
            adjudication = child;
            return;
          } else if (child is ExplanationOfBenefitAdjudicationBuilder) {
            // Add single element to existing list or create new list
            adjudication = [...(adjudication ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subDetail':
        {
          if (child is List<ExplanationOfBenefitSubDetailBuilder>) {
            // Replace or create new list
            subDetail = child;
            return;
          } else if (child is ExplanationOfBenefitSubDetailBuilder) {
            // Add single element to existing list or create new list
            subDetail = [...(subDetail ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'productOrService':
        return ['CodeableConceptBuilder'];
      case 'modifier':
        return ['CodeableConceptBuilder'];
      case 'quantity':
        return ['QuantityBuilder'];
      case 'unitPrice':
        return ['MoneyBuilder'];
      case 'factor':
        return ['FhirDecimalBuilder'];
      case 'net':
        return ['MoneyBuilder'];
      case 'noteNumber':
        return ['FhirPositiveIntBuilder'];
      case 'adjudication':
        return ['ExplanationOfBenefitAdjudicationBuilder'];
      case 'subDetail':
        return ['ExplanationOfBenefitSubDetailBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitDetail1Builder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'productOrService':
        {
          productOrService = CodeableConceptBuilder.empty();
          return;
        }
      case 'modifier':
        {
          modifier = <CodeableConceptBuilder>[];
          return;
        }
      case 'quantity':
        {
          quantity = QuantityBuilder.empty();
          return;
        }
      case 'unitPrice':
        {
          unitPrice = MoneyBuilder.empty();
          return;
        }
      case 'factor':
        {
          factor = FhirDecimalBuilder.empty();
          return;
        }
      case 'net':
        {
          net = MoneyBuilder.empty();
          return;
        }
      case 'noteNumber':
        {
          noteNumber = <FhirPositiveIntBuilder>[];
          return;
        }
      case 'adjudication':
        {
          adjudication = <ExplanationOfBenefitAdjudicationBuilder>[];
          return;
        }
      case 'subDetail':
        {
          subDetail = <ExplanationOfBenefitSubDetailBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool productOrService = false,
    bool modifier = false,
    bool quantity = false,
    bool unitPrice = false,
    bool factor = false,
    bool net = false,
    bool noteNumber = false,
    bool adjudication = false,
    bool subDetail = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (productOrService) this.productOrService = null;
    if (modifier) this.modifier = null;
    if (quantity) this.quantity = null;
    if (unitPrice) this.unitPrice = null;
    if (factor) this.factor = null;
    if (net) this.net = null;
    if (noteNumber) this.noteNumber = null;
    if (adjudication) this.adjudication = null;
    if (subDetail) this.subDetail = null;
  }

  @override
  ExplanationOfBenefitDetail1Builder clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitDetail1Builder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? productOrService,
    List<CodeableConceptBuilder>? modifier,
    QuantityBuilder? quantity,
    MoneyBuilder? unitPrice,
    FhirDecimalBuilder? factor,
    MoneyBuilder? net,
    List<FhirPositiveIntBuilder>? noteNumber,
    List<ExplanationOfBenefitAdjudicationBuilder>? adjudication,
    List<ExplanationOfBenefitSubDetailBuilder>? subDetail,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ExplanationOfBenefitDetail1Builder(
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
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ExplanationOfBenefitDetail1Builder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      productOrService,
      o.productOrService,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      modifier,
      o.modifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      quantity,
      o.quantity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      unitPrice,
      o.unitPrice,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      factor,
      o.factor,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      net,
      o.net,
    )) {
      return false;
    }
    if (!listEquals<FhirPositiveIntBuilder>(
      noteNumber,
      o.noteNumber,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitAdjudicationBuilder>(
      adjudication,
      o.adjudication,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitSubDetailBuilder>(
      subDetail,
      o.subDetail,
    )) {
      return false;
    }
    return true;
  }
}

/// [ExplanationOfBenefitSubDetail1Builder]
/// The third-tier service adjudications for payor added services.
class ExplanationOfBenefitSubDetail1Builder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ExplanationOfBenefitSubDetail1Builder]

  ExplanationOfBenefitSubDetail1Builder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.productOrService,
    this.modifier,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.net,
    this.noteNumber,
    this.adjudication,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ExplanationOfBenefit.addItem.detail.subDetail',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExplanationOfBenefitSubDetail1Builder.empty() =>
      ExplanationOfBenefitSubDetail1Builder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitSubDetail1Builder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.addItem.detail.subDetail';
    return ExplanationOfBenefitSubDetail1Builder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      productOrService: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'productOrService',
        CodeableConceptBuilder.fromJson,
        '$objectPath.productOrService',
      ),
      modifier: (json['modifier'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifier',
              },
            ),
          )
          .toList(),
      quantity: JsonParser.parseObject<QuantityBuilder>(
        json,
        'quantity',
        QuantityBuilder.fromJson,
        '$objectPath.quantity',
      ),
      unitPrice: JsonParser.parseObject<MoneyBuilder>(
        json,
        'unitPrice',
        MoneyBuilder.fromJson,
        '$objectPath.unitPrice',
      ),
      factor: JsonParser.parsePrimitive<FhirDecimalBuilder>(
        json,
        'factor',
        FhirDecimalBuilder.fromJson,
        '$objectPath.factor',
      ),
      net: JsonParser.parseObject<MoneyBuilder>(
        json,
        'net',
        MoneyBuilder.fromJson,
        '$objectPath.net',
      ),
      noteNumber: JsonParser.parsePrimitiveList<FhirPositiveIntBuilder>(
        json,
        'noteNumber',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.noteNumber',
      ),
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitAdjudicationBuilder>(
            (v) => ExplanationOfBenefitAdjudicationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.adjudication',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ExplanationOfBenefitSubDetail1Builder]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitSubDetail1Builder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitSubDetail1Builder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitSubDetail1Builder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitSubDetail1Builder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitSubDetail1Builder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitSubDetail1Builder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitSubDetail1Builder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitSubDetail1';

  /// [productOrService]
  /// When the value is a group code then this item collects a set of related
  /// claim details, otherwise this contains the product, service, drug or
  /// other billing code for the item.
  CodeableConceptBuilder? productOrService;

  /// [modifier]
  /// Item typification or modifiers codes to convey additional context for
  /// the product or service.
  List<CodeableConceptBuilder>? modifier;

  /// [quantity]
  /// The number of repetitions of a service or product.
  QuantityBuilder? quantity;

  /// [unitPrice]
  /// If the item is not a group then this is the fee for the product or
  /// service, otherwise this is the total of the fees for the details of the
  /// group.
  MoneyBuilder? unitPrice;

  /// [factor]
  /// A real number that represents a multiplier used in determining the
  /// overall value of services delivered and/or goods received. The concept
  /// of a Factor allows for a discount or surcharge multiplier to be applied
  /// to a monetary amount.
  FhirDecimalBuilder? factor;

  /// [net]
  /// The quantity times the unit price for an additional service or product
  /// or charge.
  MoneyBuilder? net;

  /// [noteNumber]
  /// The numbers associated with notes below which apply to the adjudication
  /// of this item.
  List<FhirPositiveIntBuilder>? noteNumber;

  /// [adjudication]
  /// The adjudication results.
  List<ExplanationOfBenefitAdjudicationBuilder>? adjudication;

  /// converts a [ExplanationOfBenefitSubDetail1Builder]
  /// to [ExplanationOfBenefitSubDetail1]
  @override
  ExplanationOfBenefitSubDetail1 build() =>
      ExplanationOfBenefitSubDetail1.fromJson(toJson());

  /// converts a [ExplanationOfBenefitSubDetail1Builder]
  /// to [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'productOrService',
      'modifier',
      'quantity',
      'unitPrice',
      'factor',
      'net',
      'noteNumber',
      'adjudication',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'productOrService':
        if (productOrService != null) {
          fields.add(productOrService!);
        }
      case 'modifier':
        if (modifier != null) {
          fields.addAll(modifier!);
        }
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
        }
      case 'unitPrice':
        if (unitPrice != null) {
          fields.add(unitPrice!);
        }
      case 'factor':
        if (factor != null) {
          fields.add(factor!);
        }
      case 'net':
        if (net != null) {
          fields.add(net!);
        }
      case 'noteNumber':
        if (noteNumber != null) {
          fields.addAll(noteNumber!);
        }
      case 'adjudication':
        if (adjudication != null) {
          fields.addAll(adjudication!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'productOrService':
        {
          if (child is CodeableConceptBuilder) {
            productOrService = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifier':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            modifier = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            modifier = [...(modifier ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'quantity':
        {
          if (child is QuantityBuilder) {
            quantity = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'unitPrice':
        {
          if (child is MoneyBuilder) {
            unitPrice = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'factor':
        {
          if (child is FhirDecimalBuilder) {
            factor = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'net':
        {
          if (child is MoneyBuilder) {
            net = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'noteNumber':
        {
          if (child is List<FhirPositiveIntBuilder>) {
            // Replace or create new list
            noteNumber = child;
            return;
          } else if (child is FhirPositiveIntBuilder) {
            // Add single element to existing list or create new list
            noteNumber = [...(noteNumber ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'adjudication':
        {
          if (child is List<ExplanationOfBenefitAdjudicationBuilder>) {
            // Replace or create new list
            adjudication = child;
            return;
          } else if (child is ExplanationOfBenefitAdjudicationBuilder) {
            // Add single element to existing list or create new list
            adjudication = [...(adjudication ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'productOrService':
        return ['CodeableConceptBuilder'];
      case 'modifier':
        return ['CodeableConceptBuilder'];
      case 'quantity':
        return ['QuantityBuilder'];
      case 'unitPrice':
        return ['MoneyBuilder'];
      case 'factor':
        return ['FhirDecimalBuilder'];
      case 'net':
        return ['MoneyBuilder'];
      case 'noteNumber':
        return ['FhirPositiveIntBuilder'];
      case 'adjudication':
        return ['ExplanationOfBenefitAdjudicationBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitSubDetail1Builder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'productOrService':
        {
          productOrService = CodeableConceptBuilder.empty();
          return;
        }
      case 'modifier':
        {
          modifier = <CodeableConceptBuilder>[];
          return;
        }
      case 'quantity':
        {
          quantity = QuantityBuilder.empty();
          return;
        }
      case 'unitPrice':
        {
          unitPrice = MoneyBuilder.empty();
          return;
        }
      case 'factor':
        {
          factor = FhirDecimalBuilder.empty();
          return;
        }
      case 'net':
        {
          net = MoneyBuilder.empty();
          return;
        }
      case 'noteNumber':
        {
          noteNumber = <FhirPositiveIntBuilder>[];
          return;
        }
      case 'adjudication':
        {
          adjudication = <ExplanationOfBenefitAdjudicationBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool productOrService = false,
    bool modifier = false,
    bool quantity = false,
    bool unitPrice = false,
    bool factor = false,
    bool net = false,
    bool noteNumber = false,
    bool adjudication = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (productOrService) this.productOrService = null;
    if (modifier) this.modifier = null;
    if (quantity) this.quantity = null;
    if (unitPrice) this.unitPrice = null;
    if (factor) this.factor = null;
    if (net) this.net = null;
    if (noteNumber) this.noteNumber = null;
    if (adjudication) this.adjudication = null;
  }

  @override
  ExplanationOfBenefitSubDetail1Builder clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitSubDetail1Builder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? productOrService,
    List<CodeableConceptBuilder>? modifier,
    QuantityBuilder? quantity,
    MoneyBuilder? unitPrice,
    FhirDecimalBuilder? factor,
    MoneyBuilder? net,
    List<FhirPositiveIntBuilder>? noteNumber,
    List<ExplanationOfBenefitAdjudicationBuilder>? adjudication,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ExplanationOfBenefitSubDetail1Builder(
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
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ExplanationOfBenefitSubDetail1Builder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      productOrService,
      o.productOrService,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      modifier,
      o.modifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      quantity,
      o.quantity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      unitPrice,
      o.unitPrice,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      factor,
      o.factor,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      net,
      o.net,
    )) {
      return false;
    }
    if (!listEquals<FhirPositiveIntBuilder>(
      noteNumber,
      o.noteNumber,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitAdjudicationBuilder>(
      adjudication,
      o.adjudication,
    )) {
      return false;
    }
    return true;
  }
}

/// [ExplanationOfBenefitTotalBuilder]
/// Categorized monetary totals for the adjudication.
class ExplanationOfBenefitTotalBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ExplanationOfBenefitTotalBuilder]

  ExplanationOfBenefitTotalBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.category,
    this.amount,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ExplanationOfBenefit.total',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExplanationOfBenefitTotalBuilder.empty() =>
      ExplanationOfBenefitTotalBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitTotalBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.total';
    return ExplanationOfBenefitTotalBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      category: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'category',
        CodeableConceptBuilder.fromJson,
        '$objectPath.category',
      ),
      amount: JsonParser.parseObject<MoneyBuilder>(
        json,
        'amount',
        MoneyBuilder.fromJson,
        '$objectPath.amount',
      ),
    );
  }

  /// Deserialize [ExplanationOfBenefitTotalBuilder]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitTotalBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitTotalBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitTotalBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitTotalBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitTotalBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitTotalBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitTotalBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
  CodeableConceptBuilder? category;

  /// [amount]
  /// Monetary total amount associated with the category.
  MoneyBuilder? amount;

  /// converts a [ExplanationOfBenefitTotalBuilder]
  /// to [ExplanationOfBenefitTotal]
  @override
  ExplanationOfBenefitTotal build() =>
      ExplanationOfBenefitTotal.fromJson(toJson());

  /// converts a [ExplanationOfBenefitTotalBuilder]
  /// to [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'category',
      'amount',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'category':
        if (category != null) {
          fields.add(category!);
        }
      case 'amount':
        if (amount != null) {
          fields.add(amount!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'category':
        {
          if (child is CodeableConceptBuilder) {
            category = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'amount':
        {
          if (child is MoneyBuilder) {
            amount = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'category':
        return ['CodeableConceptBuilder'];
      case 'amount':
        return ['MoneyBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitTotalBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'category':
        {
          category = CodeableConceptBuilder.empty();
          return;
        }
      case 'amount':
        {
          amount = MoneyBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool category = false,
    bool amount = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (category) this.category = null;
    if (amount) this.amount = null;
  }

  @override
  ExplanationOfBenefitTotalBuilder clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitTotalBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? category,
    MoneyBuilder? amount,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ExplanationOfBenefitTotalBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      category: category ?? this.category,
      amount: amount ?? this.amount,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ExplanationOfBenefitTotalBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      category,
      o.category,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      amount,
      o.amount,
    )) {
      return false;
    }
    return true;
  }
}

/// [ExplanationOfBenefitPaymentBuilder]
/// Payment details for the adjudication of the claim.
class ExplanationOfBenefitPaymentBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ExplanationOfBenefitPaymentBuilder]

  ExplanationOfBenefitPaymentBuilder({
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
  }) : super(
          objectPath: 'ExplanationOfBenefit.payment',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExplanationOfBenefitPaymentBuilder.empty() =>
      ExplanationOfBenefitPaymentBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitPaymentBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.payment';
    return ExplanationOfBenefitPaymentBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      adjustment: JsonParser.parseObject<MoneyBuilder>(
        json,
        'adjustment',
        MoneyBuilder.fromJson,
        '$objectPath.adjustment',
      ),
      adjustmentReason: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'adjustmentReason',
        CodeableConceptBuilder.fromJson,
        '$objectPath.adjustmentReason',
      ),
      date: JsonParser.parsePrimitive<FhirDateBuilder>(
        json,
        'date',
        FhirDateBuilder.fromJson,
        '$objectPath.date',
      ),
      amount: JsonParser.parseObject<MoneyBuilder>(
        json,
        'amount',
        MoneyBuilder.fromJson,
        '$objectPath.amount',
      ),
      identifier: JsonParser.parseObject<IdentifierBuilder>(
        json,
        'identifier',
        IdentifierBuilder.fromJson,
        '$objectPath.identifier',
      ),
    );
  }

  /// Deserialize [ExplanationOfBenefitPaymentBuilder]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitPaymentBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitPaymentBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitPaymentBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitPaymentBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitPaymentBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitPaymentBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitPaymentBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitPayment';

  /// [type]
  /// Whether this represents partial or complete payment of the benefits
  /// payable.
  CodeableConceptBuilder? type;

  /// [adjustment]
  /// Total amount of all adjustments to this payment included in this
  /// transaction which are not related to this claim's adjudication.
  MoneyBuilder? adjustment;

  /// [adjustmentReason]
  /// Reason for the payment adjustment.
  CodeableConceptBuilder? adjustmentReason;

  /// [date]
  /// Estimated date the payment will be issued or the actual issue date of
  /// payment.
  FhirDateBuilder? date;

  /// [amount]
  /// Benefits payable less any payment adjustment.
  MoneyBuilder? amount;

  /// [identifier]
  /// Issuer's unique identifier for the payment instrument.
  IdentifierBuilder? identifier;

  /// converts a [ExplanationOfBenefitPaymentBuilder]
  /// to [ExplanationOfBenefitPayment]
  @override
  ExplanationOfBenefitPayment build() =>
      ExplanationOfBenefitPayment.fromJson(toJson());

  /// converts a [ExplanationOfBenefitPaymentBuilder]
  /// to [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'type',
      'adjustment',
      'adjustmentReason',
      'date',
      'amount',
      'identifier',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'adjustment':
        if (adjustment != null) {
          fields.add(adjustment!);
        }
      case 'adjustmentReason':
        if (adjustmentReason != null) {
          fields.add(adjustmentReason!);
        }
      case 'date':
        if (date != null) {
          fields.add(date!);
        }
      case 'amount':
        if (amount != null) {
          fields.add(amount!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.add(identifier!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'adjustment':
        {
          if (child is MoneyBuilder) {
            adjustment = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'adjustmentReason':
        {
          if (child is CodeableConceptBuilder) {
            adjustmentReason = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'date':
        {
          if (child is FhirDateBuilder) {
            date = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'amount':
        {
          if (child is MoneyBuilder) {
            amount = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'identifier':
        {
          if (child is IdentifierBuilder) {
            identifier = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'adjustment':
        return ['MoneyBuilder'];
      case 'adjustmentReason':
        return ['CodeableConceptBuilder'];
      case 'date':
        return ['FhirDateBuilder'];
      case 'amount':
        return ['MoneyBuilder'];
      case 'identifier':
        return ['IdentifierBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitPaymentBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'adjustment':
        {
          adjustment = MoneyBuilder.empty();
          return;
        }
      case 'adjustmentReason':
        {
          adjustmentReason = CodeableConceptBuilder.empty();
          return;
        }
      case 'date':
        {
          date = FhirDateBuilder.empty();
          return;
        }
      case 'amount':
        {
          amount = MoneyBuilder.empty();
          return;
        }
      case 'identifier':
        {
          identifier = IdentifierBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool type = false,
    bool adjustment = false,
    bool adjustmentReason = false,
    bool date = false,
    bool amount = false,
    bool identifier = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (type) this.type = null;
    if (adjustment) this.adjustment = null;
    if (adjustmentReason) this.adjustmentReason = null;
    if (date) this.date = null;
    if (amount) this.amount = null;
    if (identifier) this.identifier = null;
  }

  @override
  ExplanationOfBenefitPaymentBuilder clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitPaymentBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    MoneyBuilder? adjustment,
    CodeableConceptBuilder? adjustmentReason,
    FhirDateBuilder? date,
    MoneyBuilder? amount,
    IdentifierBuilder? identifier,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ExplanationOfBenefitPaymentBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      adjustment: adjustment ?? this.adjustment,
      adjustmentReason: adjustmentReason ?? this.adjustmentReason,
      date: date ?? this.date,
      amount: amount ?? this.amount,
      identifier: identifier ?? this.identifier,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ExplanationOfBenefitPaymentBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      adjustment,
      o.adjustment,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      adjustmentReason,
      o.adjustmentReason,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      date,
      o.date,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      amount,
      o.amount,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    return true;
  }
}

/// [ExplanationOfBenefitProcessNoteBuilder]
/// A note that describes or explains adjudication results in a human
/// readable form.
class ExplanationOfBenefitProcessNoteBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ExplanationOfBenefitProcessNoteBuilder]

  ExplanationOfBenefitProcessNoteBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.number,
    this.type,
    this.text,
    this.language,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ExplanationOfBenefit.processNote',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExplanationOfBenefitProcessNoteBuilder.empty() =>
      ExplanationOfBenefitProcessNoteBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitProcessNoteBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.processNote';
    return ExplanationOfBenefitProcessNoteBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      number: JsonParser.parsePrimitive<FhirPositiveIntBuilder>(
        json,
        'number',
        FhirPositiveIntBuilder.fromJson,
        '$objectPath.number',
      ),
      type: JsonParser.parsePrimitive<NoteTypeBuilder>(
        json,
        'type',
        NoteTypeBuilder.fromJson,
        '$objectPath.type',
      ),
      text: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'text',
        FhirStringBuilder.fromJson,
        '$objectPath.text',
      ),
      language: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'language',
        CodeableConceptBuilder.fromJson,
        '$objectPath.language',
      ),
    );
  }

  /// Deserialize [ExplanationOfBenefitProcessNoteBuilder]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitProcessNoteBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitProcessNoteBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitProcessNoteBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitProcessNoteBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitProcessNoteBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitProcessNoteBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitProcessNoteBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitProcessNote';

  /// [number]
  /// A number to uniquely identify a note entry.
  FhirPositiveIntBuilder? number;

  /// [type]
  /// The business purpose of the note text.
  NoteTypeBuilder? type;

  /// [text]
  /// The explanation or description associated with the processing.
  FhirStringBuilder? text;

  /// [language]
  /// A code to define the language used in the text of the note.
  CodeableConceptBuilder? language;

  /// converts a [ExplanationOfBenefitProcessNoteBuilder]
  /// to [ExplanationOfBenefitProcessNote]
  @override
  ExplanationOfBenefitProcessNote build() =>
      ExplanationOfBenefitProcessNote.fromJson(toJson());

  /// converts a [ExplanationOfBenefitProcessNoteBuilder]
  /// to [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'number',
      'type',
      'text',
      'language',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'number':
        if (number != null) {
          fields.add(number!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'number':
        {
          if (child is FhirPositiveIntBuilder) {
            number = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is NoteTypeBuilder) {
            type = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'text':
        {
          if (child is FhirStringBuilder) {
            text = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'language':
        {
          if (child is CodeableConceptBuilder) {
            language = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'number':
        return ['FhirPositiveIntBuilder'];
      case 'type':
        return ['FhirCodeEnumBuilder'];
      case 'text':
        return ['FhirStringBuilder'];
      case 'language':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitProcessNoteBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'number':
        {
          number = FhirPositiveIntBuilder.empty();
          return;
        }
      case 'type':
        {
          type = NoteTypeBuilder.empty();
          return;
        }
      case 'text':
        {
          text = FhirStringBuilder.empty();
          return;
        }
      case 'language':
        {
          language = CodeableConceptBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool number = false,
    bool type = false,
    bool text = false,
    bool language = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (number) this.number = null;
    if (type) this.type = null;
    if (text) this.text = null;
    if (language) this.language = null;
  }

  @override
  ExplanationOfBenefitProcessNoteBuilder clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitProcessNoteBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirPositiveIntBuilder? number,
    NoteTypeBuilder? type,
    FhirStringBuilder? text,
    CodeableConceptBuilder? language,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ExplanationOfBenefitProcessNoteBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      number: number ?? this.number,
      type: type ?? this.type,
      text: text ?? this.text,
      language: language ?? this.language,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ExplanationOfBenefitProcessNoteBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      number,
      o.number,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    return true;
  }
}

/// [ExplanationOfBenefitBenefitBalanceBuilder]
/// Balance by Benefit Category.
class ExplanationOfBenefitBenefitBalanceBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ExplanationOfBenefitBenefitBalanceBuilder]

  ExplanationOfBenefitBenefitBalanceBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.category,
    this.excluded,
    this.name,
    this.description,
    this.network,
    this.unit,
    this.term,
    this.financial,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ExplanationOfBenefit.benefitBalance',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExplanationOfBenefitBenefitBalanceBuilder.empty() =>
      ExplanationOfBenefitBenefitBalanceBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitBenefitBalanceBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.benefitBalance';
    return ExplanationOfBenefitBenefitBalanceBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      category: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'category',
        CodeableConceptBuilder.fromJson,
        '$objectPath.category',
      ),
      excluded: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'excluded',
        FhirBooleanBuilder.fromJson,
        '$objectPath.excluded',
      ),
      name: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'name',
        FhirStringBuilder.fromJson,
        '$objectPath.name',
      ),
      description: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'description',
        FhirStringBuilder.fromJson,
        '$objectPath.description',
      ),
      network: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'network',
        CodeableConceptBuilder.fromJson,
        '$objectPath.network',
      ),
      unit: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'unit',
        CodeableConceptBuilder.fromJson,
        '$objectPath.unit',
      ),
      term: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'term',
        CodeableConceptBuilder.fromJson,
        '$objectPath.term',
      ),
      financial: (json['financial'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitFinancialBuilder>(
            (v) => ExplanationOfBenefitFinancialBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.financial',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ExplanationOfBenefitBenefitBalanceBuilder]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitBenefitBalanceBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitBenefitBalanceBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitBenefitBalanceBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitBenefitBalanceBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitBenefitBalanceBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitBenefitBalanceBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitBenefitBalanceBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitBenefitBalance';

  /// [category]
  /// Code to identify the general type of benefits under which products and
  /// services are provided.
  CodeableConceptBuilder? category;

  /// [excluded]
  /// True if the indicated class of service is excluded from the plan,
  /// missing or False indicates the product or service is included in the
  /// coverage.
  FhirBooleanBuilder? excluded;

  /// [name]
  /// A short name or tag for the benefit.
  FhirStringBuilder? name;

  /// [description]
  /// A richer description of the benefit or services covered.
  FhirStringBuilder? description;

  /// [network]
  /// Is a flag to indicate whether the benefits refer to in-network
  /// providers or out-of-network providers.
  CodeableConceptBuilder? network;

  /// [unit]
  /// Indicates if the benefits apply to an individual or to the family.
  CodeableConceptBuilder? unit;

  /// [term]
  /// The term or period of the values such as 'maximum lifetime benefit' or
  /// 'maximum annual visits'.
  CodeableConceptBuilder? term;

  /// [financial]
  /// Benefits Used to date.
  List<ExplanationOfBenefitFinancialBuilder>? financial;

  /// converts a [ExplanationOfBenefitBenefitBalanceBuilder]
  /// to [ExplanationOfBenefitBenefitBalance]
  @override
  ExplanationOfBenefitBenefitBalance build() =>
      ExplanationOfBenefitBenefitBalance.fromJson(toJson());

  /// converts a [ExplanationOfBenefitBenefitBalanceBuilder]
  /// to [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'category',
      'excluded',
      'name',
      'description',
      'network',
      'unit',
      'term',
      'financial',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'category':
        if (category != null) {
          fields.add(category!);
        }
      case 'excluded':
        if (excluded != null) {
          fields.add(excluded!);
        }
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'network':
        if (network != null) {
          fields.add(network!);
        }
      case 'unit':
        if (unit != null) {
          fields.add(unit!);
        }
      case 'term':
        if (term != null) {
          fields.add(term!);
        }
      case 'financial':
        if (financial != null) {
          fields.addAll(financial!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'category':
        {
          if (child is CodeableConceptBuilder) {
            category = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'excluded':
        {
          if (child is FhirBooleanBuilder) {
            excluded = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'name':
        {
          if (child is FhirStringBuilder) {
            name = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'description':
        {
          if (child is FhirStringBuilder) {
            description = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'network':
        {
          if (child is CodeableConceptBuilder) {
            network = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'unit':
        {
          if (child is CodeableConceptBuilder) {
            unit = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'term':
        {
          if (child is CodeableConceptBuilder) {
            term = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'financial':
        {
          if (child is List<ExplanationOfBenefitFinancialBuilder>) {
            // Replace or create new list
            financial = child;
            return;
          } else if (child is ExplanationOfBenefitFinancialBuilder) {
            // Add single element to existing list or create new list
            financial = [...(financial ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'category':
        return ['CodeableConceptBuilder'];
      case 'excluded':
        return ['FhirBooleanBuilder'];
      case 'name':
        return ['FhirStringBuilder'];
      case 'description':
        return ['FhirStringBuilder'];
      case 'network':
        return ['CodeableConceptBuilder'];
      case 'unit':
        return ['CodeableConceptBuilder'];
      case 'term':
        return ['CodeableConceptBuilder'];
      case 'financial':
        return ['ExplanationOfBenefitFinancialBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitBenefitBalanceBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'category':
        {
          category = CodeableConceptBuilder.empty();
          return;
        }
      case 'excluded':
        {
          excluded = FhirBooleanBuilder.empty();
          return;
        }
      case 'name':
        {
          name = FhirStringBuilder.empty();
          return;
        }
      case 'description':
        {
          description = FhirStringBuilder.empty();
          return;
        }
      case 'network':
        {
          network = CodeableConceptBuilder.empty();
          return;
        }
      case 'unit':
        {
          unit = CodeableConceptBuilder.empty();
          return;
        }
      case 'term':
        {
          term = CodeableConceptBuilder.empty();
          return;
        }
      case 'financial':
        {
          financial = <ExplanationOfBenefitFinancialBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool category = false,
    bool excluded = false,
    bool name = false,
    bool description = false,
    bool network = false,
    bool unit = false,
    bool term = false,
    bool financial = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (category) this.category = null;
    if (excluded) this.excluded = null;
    if (name) this.name = null;
    if (description) this.description = null;
    if (network) this.network = null;
    if (unit) this.unit = null;
    if (term) this.term = null;
    if (financial) this.financial = null;
  }

  @override
  ExplanationOfBenefitBenefitBalanceBuilder clone() =>
      throw UnimplementedError();
  @override
  ExplanationOfBenefitBenefitBalanceBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? category,
    FhirBooleanBuilder? excluded,
    FhirStringBuilder? name,
    FhirStringBuilder? description,
    CodeableConceptBuilder? network,
    CodeableConceptBuilder? unit,
    CodeableConceptBuilder? term,
    List<ExplanationOfBenefitFinancialBuilder>? financial,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ExplanationOfBenefitBenefitBalanceBuilder(
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
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ExplanationOfBenefitBenefitBalanceBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      category,
      o.category,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      excluded,
      o.excluded,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      name,
      o.name,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      network,
      o.network,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      unit,
      o.unit,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      term,
      o.term,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitFinancialBuilder>(
      financial,
      o.financial,
    )) {
      return false;
    }
    return true;
  }
}

/// [ExplanationOfBenefitFinancialBuilder]
/// Benefits Used to date.
class ExplanationOfBenefitFinancialBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ExplanationOfBenefitFinancialBuilder]

  ExplanationOfBenefitFinancialBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.allowedX,
    this.usedX,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ExplanationOfBenefit.benefitBalance.financial',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ExplanationOfBenefitFinancialBuilder.empty() =>
      ExplanationOfBenefitFinancialBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitFinancialBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.benefitBalance.financial';
    return ExplanationOfBenefitFinancialBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      allowedX: JsonParser.parsePolymorphic<
          AllowedXExplanationOfBenefitFinancialBuilder>(
        json,
        {
          'allowedUnsignedInt': FhirUnsignedIntBuilder.fromJson,
          'allowedString': FhirStringBuilder.fromJson,
          'allowedMoney': MoneyBuilder.fromJson,
        },
        objectPath,
      ),
      usedX: JsonParser.parsePolymorphic<
          UsedXExplanationOfBenefitFinancialBuilder>(
        json,
        {
          'usedUnsignedInt': FhirUnsignedIntBuilder.fromJson,
          'usedMoney': MoneyBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [ExplanationOfBenefitFinancialBuilder]
  /// from a [String] or [YamlMap] object
  factory ExplanationOfBenefitFinancialBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExplanationOfBenefitFinancialBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExplanationOfBenefitFinancialBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExplanationOfBenefitFinancialBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExplanationOfBenefitFinancialBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExplanationOfBenefitFinancialBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitFinancialBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ExplanationOfBenefitFinancial';

  /// [type]
  /// Classification of benefit being provided.
  CodeableConceptBuilder? type;

  /// [allowedX]
  /// The quantity of the benefit which is permitted under the coverage.
  AllowedXExplanationOfBenefitFinancialBuilder? allowedX;

  /// Getter for [allowedUnsignedInt] as a FhirUnsignedIntBuilder
  FhirUnsignedIntBuilder? get allowedUnsignedInt =>
      allowedX?.isAs<FhirUnsignedIntBuilder>();

  /// Getter for [allowedString] as a FhirStringBuilder
  FhirStringBuilder? get allowedString => allowedX?.isAs<FhirStringBuilder>();

  /// Getter for [allowedMoney] as a MoneyBuilder
  MoneyBuilder? get allowedMoney => allowedX?.isAs<MoneyBuilder>();

  /// [usedX]
  /// The quantity of the benefit which have been consumed to date.
  UsedXExplanationOfBenefitFinancialBuilder? usedX;

  /// Getter for [usedUnsignedInt] as a FhirUnsignedIntBuilder
  FhirUnsignedIntBuilder? get usedUnsignedInt =>
      usedX?.isAs<FhirUnsignedIntBuilder>();

  /// Getter for [usedMoney] as a MoneyBuilder
  MoneyBuilder? get usedMoney => usedX?.isAs<MoneyBuilder>();

  /// converts a [ExplanationOfBenefitFinancialBuilder]
  /// to [ExplanationOfBenefitFinancial]
  @override
  ExplanationOfBenefitFinancial build() =>
      ExplanationOfBenefitFinancial.fromJson(toJson());

  /// converts a [ExplanationOfBenefitFinancialBuilder]
  /// to [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'type',
      'allowedX',
      'usedX',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'allowed':
        if (allowedX != null) {
          fields.add(allowedX!);
        }
      case 'allowedX':
        if (allowedX != null) {
          fields.add(allowedX!);
        }
      case 'allowedUnsignedInt':
        if (allowedX is FhirUnsignedIntBuilder) {
          fields.add(allowedX!);
        }
      case 'allowedString':
        if (allowedX is FhirStringBuilder) {
          fields.add(allowedX!);
        }
      case 'allowedMoney':
        if (allowedX is MoneyBuilder) {
          fields.add(allowedX!);
        }
      case 'used':
        if (usedX != null) {
          fields.add(usedX!);
        }
      case 'usedX':
        if (usedX != null) {
          fields.add(usedX!);
        }
      case 'usedUnsignedInt':
        if (usedX is FhirUnsignedIntBuilder) {
          fields.add(usedX!);
        }
      case 'usedMoney':
        if (usedX is MoneyBuilder) {
          fields.add(usedX!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'allowedX':
        {
          if (child is AllowedXExplanationOfBenefitFinancialBuilder) {
            allowedX = child;
            return;
          } else {
            if (child is FhirUnsignedIntBuilder) {
              allowedX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              allowedX = child;
              return;
            }
            if (child is MoneyBuilder) {
              allowedX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'allowedUnsignedInt':
        {
          if (child is FhirUnsignedIntBuilder) {
            allowedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'allowedString':
        {
          if (child is FhirStringBuilder) {
            allowedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'allowedMoney':
        {
          if (child is MoneyBuilder) {
            allowedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'usedX':
        {
          if (child is UsedXExplanationOfBenefitFinancialBuilder) {
            usedX = child;
            return;
          } else {
            if (child is FhirUnsignedIntBuilder) {
              usedX = child;
              return;
            }
            if (child is MoneyBuilder) {
              usedX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'usedUnsignedInt':
        {
          if (child is FhirUnsignedIntBuilder) {
            usedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'usedMoney':
        {
          if (child is MoneyBuilder) {
            usedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'allowed':
      case 'allowedX':
        return ['FhirUnsignedIntBuilder', 'FhirStringBuilder', 'MoneyBuilder'];
      case 'allowedUnsignedInt':
        return ['FhirUnsignedIntBuilder'];
      case 'allowedString':
        return ['FhirStringBuilder'];
      case 'allowedMoney':
        return ['MoneyBuilder'];
      case 'used':
      case 'usedX':
        return ['FhirUnsignedIntBuilder', 'MoneyBuilder'];
      case 'usedUnsignedInt':
        return ['FhirUnsignedIntBuilder'];
      case 'usedMoney':
        return ['MoneyBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitFinancialBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'allowed':
      case 'allowedX':
      case 'allowedUnsignedInt':
        {
          allowedX = FhirUnsignedIntBuilder.empty();
          return;
        }
      case 'allowedString':
        {
          allowedX = FhirStringBuilder.empty();
          return;
        }
      case 'allowedMoney':
        {
          allowedX = MoneyBuilder.empty();
          return;
        }
      case 'used':
      case 'usedX':
      case 'usedUnsignedInt':
        {
          usedX = FhirUnsignedIntBuilder.empty();
          return;
        }
      case 'usedMoney':
        {
          usedX = MoneyBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool type = false,
    bool allowed = false,
    bool used = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (type) this.type = null;
    if (allowed) allowedX = null;
    if (used) usedX = null;
  }

  @override
  ExplanationOfBenefitFinancialBuilder clone() => throw UnimplementedError();
  @override
  ExplanationOfBenefitFinancialBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    AllowedXExplanationOfBenefitFinancialBuilder? allowedX,
    UsedXExplanationOfBenefitFinancialBuilder? usedX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ExplanationOfBenefitFinancialBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      allowedX: allowedX ?? this.allowedX,
      usedX: usedX ?? this.usedX,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! ExplanationOfBenefitFinancialBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      allowedX,
      o.allowedX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      usedX,
      o.usedX,
    )) {
      return false;
    }
    return true;
  }
}
