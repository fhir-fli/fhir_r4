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
          objectPath: 'ExplanationOfBenefit',
          resourceType: R4ResourceType.ExplanationOfBenefit,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ExplanationOfBenefit.empty() => ExplanationOfBenefit(
        status: ExplanationOfBenefitStatus.values.first,
        type: CodeableConcept.empty(),
        use: Use.values.first,
        patient: Reference.empty(),
        created: FhirDateTime.empty(),
        insurer: Reference.empty(),
        provider: Reference.empty(),
        outcome: RemittanceOutcome.values.first,
        insurance: <ExplanationOfBenefitInsurance>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefit.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit';
    return ExplanationOfBenefit(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<ExplanationOfBenefitStatus>(
        json,
        'status',
        ExplanationOfBenefitStatus.fromJson,
        '$objectPath.status',
      )!,
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      )!,
      subType: JsonParser.parseObject<CodeableConcept>(
        json,
        'subType',
        CodeableConcept.fromJson,
        '$objectPath.subType',
      ),
      use: JsonParser.parsePrimitive<Use>(
        json,
        'use',
        Use.fromJson,
        '$objectPath.use',
      )!,
      patient: JsonParser.parseObject<Reference>(
        json,
        'patient',
        Reference.fromJson,
        '$objectPath.patient',
      )!,
      billablePeriod: JsonParser.parseObject<Period>(
        json,
        'billablePeriod',
        Period.fromJson,
        '$objectPath.billablePeriod',
      ),
      created: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'created',
        FhirDateTime.fromJson,
        '$objectPath.created',
      )!,
      enterer: JsonParser.parseObject<Reference>(
        json,
        'enterer',
        Reference.fromJson,
        '$objectPath.enterer',
      ),
      insurer: JsonParser.parseObject<Reference>(
        json,
        'insurer',
        Reference.fromJson,
        '$objectPath.insurer',
      )!,
      provider: JsonParser.parseObject<Reference>(
        json,
        'provider',
        Reference.fromJson,
        '$objectPath.provider',
      )!,
      priority: JsonParser.parseObject<CodeableConcept>(
        json,
        'priority',
        CodeableConcept.fromJson,
        '$objectPath.priority',
      ),
      fundsReserveRequested: JsonParser.parseObject<CodeableConcept>(
        json,
        'fundsReserveRequested',
        CodeableConcept.fromJson,
        '$objectPath.fundsReserveRequested',
      ),
      fundsReserve: JsonParser.parseObject<CodeableConcept>(
        json,
        'fundsReserve',
        CodeableConcept.fromJson,
        '$objectPath.fundsReserve',
      ),
      related: (json['related'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitRelated>(
            (v) => ExplanationOfBenefitRelated.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.related',
              },
            ),
          )
          .toList(),
      prescription: JsonParser.parseObject<Reference>(
        json,
        'prescription',
        Reference.fromJson,
        '$objectPath.prescription',
      ),
      originalPrescription: JsonParser.parseObject<Reference>(
        json,
        'originalPrescription',
        Reference.fromJson,
        '$objectPath.originalPrescription',
      ),
      payee: JsonParser.parseObject<ExplanationOfBenefitPayee>(
        json,
        'payee',
        ExplanationOfBenefitPayee.fromJson,
        '$objectPath.payee',
      ),
      referral: JsonParser.parseObject<Reference>(
        json,
        'referral',
        Reference.fromJson,
        '$objectPath.referral',
      ),
      facility: JsonParser.parseObject<Reference>(
        json,
        'facility',
        Reference.fromJson,
        '$objectPath.facility',
      ),
      claim: JsonParser.parseObject<Reference>(
        json,
        'claim',
        Reference.fromJson,
        '$objectPath.claim',
      ),
      claimResponse: JsonParser.parseObject<Reference>(
        json,
        'claimResponse',
        Reference.fromJson,
        '$objectPath.claimResponse',
      ),
      outcome: JsonParser.parsePrimitive<RemittanceOutcome>(
        json,
        'outcome',
        RemittanceOutcome.fromJson,
        '$objectPath.outcome',
      )!,
      disposition: JsonParser.parsePrimitive<FhirString>(
        json,
        'disposition',
        FhirString.fromJson,
        '$objectPath.disposition',
      ),
      preAuthRef: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'preAuthRef',
        FhirString.fromJson,
        '$objectPath.preAuthRef',
      ),
      preAuthRefPeriod: (json['preAuthRefPeriod'] as List<dynamic>?)
          ?.map<Period>(
            (v) => Period.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.preAuthRefPeriod',
              },
            ),
          )
          .toList(),
      careTeam: (json['careTeam'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitCareTeam>(
            (v) => ExplanationOfBenefitCareTeam.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.careTeam',
              },
            ),
          )
          .toList(),
      supportingInfo: (json['supportingInfo'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitSupportingInfo>(
            (v) => ExplanationOfBenefitSupportingInfo.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.supportingInfo',
              },
            ),
          )
          .toList(),
      diagnosis: (json['diagnosis'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitDiagnosis>(
            (v) => ExplanationOfBenefitDiagnosis.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.diagnosis',
              },
            ),
          )
          .toList(),
      procedure: (json['procedure'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitProcedure>(
            (v) => ExplanationOfBenefitProcedure.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.procedure',
              },
            ),
          )
          .toList(),
      precedence: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'precedence',
        FhirPositiveInt.fromJson,
        '$objectPath.precedence',
      ),
      insurance: (json['insurance'] as List<dynamic>)
          .map<ExplanationOfBenefitInsurance>(
            (v) => ExplanationOfBenefitInsurance.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.insurance',
              },
            ),
          )
          .toList(),
      accident: JsonParser.parseObject<ExplanationOfBenefitAccident>(
        json,
        'accident',
        ExplanationOfBenefitAccident.fromJson,
        '$objectPath.accident',
      ),
      item: (json['item'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitItem>(
            (v) => ExplanationOfBenefitItem.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.item',
              },
            ),
          )
          .toList(),
      addItem: (json['addItem'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitAddItem>(
            (v) => ExplanationOfBenefitAddItem.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.addItem',
              },
            ),
          )
          .toList(),
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitAdjudication>(
            (v) => ExplanationOfBenefitAdjudication.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.adjudication',
              },
            ),
          )
          .toList(),
      total: (json['total'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitTotal>(
            (v) => ExplanationOfBenefitTotal.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.total',
              },
            ),
          )
          .toList(),
      payment: JsonParser.parseObject<ExplanationOfBenefitPayment>(
        json,
        'payment',
        ExplanationOfBenefitPayment.fromJson,
        '$objectPath.payment',
      ),
      formCode: JsonParser.parseObject<CodeableConcept>(
        json,
        'formCode',
        CodeableConcept.fromJson,
        '$objectPath.formCode',
      ),
      form: JsonParser.parseObject<Attachment>(
        json,
        'form',
        Attachment.fromJson,
        '$objectPath.form',
      ),
      processNote: (json['processNote'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitProcessNote>(
            (v) => ExplanationOfBenefitProcessNote.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.processNote',
              },
            ),
          )
          .toList(),
      benefitPeriod: JsonParser.parseObject<Period>(
        json,
        'benefitPeriod',
        Period.fromJson,
        '$objectPath.benefitPeriod',
      ),
      benefitBalance: (json['benefitBalance'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitBenefitBalance>(
            (v) => ExplanationOfBenefitBenefitBalance.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.benefitBalance',
              },
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
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefit.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    addField(
      'id',
      id,
    );
    addField(
      'meta',
      meta,
    );
    addField(
      'implicitRules',
      implicitRules,
    );
    addField(
      'language',
      language,
    );
    addField(
      'text',
      text,
    );
    addField(
      'contained',
      contained,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'identifier',
      identifier,
    );
    addField(
      'status',
      status,
    );
    addField(
      'type',
      type,
    );
    addField(
      'subType',
      subType,
    );
    addField(
      'use',
      use,
    );
    addField(
      'patient',
      patient,
    );
    addField(
      'billablePeriod',
      billablePeriod,
    );
    addField(
      'created',
      created,
    );
    addField(
      'enterer',
      enterer,
    );
    addField(
      'insurer',
      insurer,
    );
    addField(
      'provider',
      provider,
    );
    addField(
      'priority',
      priority,
    );
    addField(
      'fundsReserveRequested',
      fundsReserveRequested,
    );
    addField(
      'fundsReserve',
      fundsReserve,
    );
    addField(
      'related',
      related,
    );
    addField(
      'prescription',
      prescription,
    );
    addField(
      'originalPrescription',
      originalPrescription,
    );
    addField(
      'payee',
      payee,
    );
    addField(
      'referral',
      referral,
    );
    addField(
      'facility',
      facility,
    );
    addField(
      'claim',
      claim,
    );
    addField(
      'claimResponse',
      claimResponse,
    );
    addField(
      'outcome',
      outcome,
    );
    addField(
      'disposition',
      disposition,
    );
    addField(
      'preAuthRef',
      preAuthRef,
    );
    addField(
      'preAuthRefPeriod',
      preAuthRefPeriod,
    );
    addField(
      'careTeam',
      careTeam,
    );
    addField(
      'supportingInfo',
      supportingInfo,
    );
    addField(
      'diagnosis',
      diagnosis,
    );
    addField(
      'procedure',
      procedure,
    );
    addField(
      'precedence',
      precedence,
    );
    addField(
      'insurance',
      insurance,
    );
    addField(
      'accident',
      accident,
    );
    addField(
      'item',
      item,
    );
    addField(
      'addItem',
      addItem,
    );
    addField(
      'adjudication',
      adjudication,
    );
    addField(
      'total',
      total,
    );
    addField(
      'payment',
      payment,
    );
    addField(
      'formCode',
      formCode,
    );
    addField(
      'form',
      form,
    );
    addField(
      'processNote',
      processNote,
    );
    addField(
      'benefitPeriod',
      benefitPeriod,
    );
    addField(
      'benefitBalance',
      benefitBalance,
    );
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
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
        fields.add(status);
      case 'type':
        fields.add(type);
      case 'subType':
        if (subType != null) {
          fields.add(subType!);
        }
      case 'use':
        fields.add(use);
      case 'patient':
        fields.add(patient);
      case 'billablePeriod':
        if (billablePeriod != null) {
          fields.add(billablePeriod!);
        }
      case 'created':
        fields.add(created);
      case 'enterer':
        if (enterer != null) {
          fields.add(enterer!);
        }
      case 'insurer':
        fields.add(insurer);
      case 'provider':
        fields.add(provider);
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
        fields.add(outcome);
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
        fields.addAll(insurance);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'meta':
        {
          if (child is FhirMeta) {
            return copyWith(meta: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUri) {
            return copyWith(implicitRules: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'language':
        {
          if (child is CommonLanguages) {
            return copyWith(language: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'text':
        {
          if (child is Narrative) {
            return copyWith(text: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contained':
        {
          if (child is List<Resource>) {
            // Add all elements from passed list
            final newList = [...?contained, ...child];
            return copyWith(contained: newList);
          } else if (child is Resource) {
            // Add single element to existing list or create new list
            final newList = [
              ...?contained,
              child,
            ];
            return copyWith(contained: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'identifier':
        {
          if (child is List<Identifier>) {
            // Add all elements from passed list
            final newList = [...?identifier, ...child];
            return copyWith(identifier: newList);
          } else if (child is Identifier) {
            // Add single element to existing list or create new list
            final newList = [
              ...?identifier,
              child,
            ];
            return copyWith(identifier: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'status':
        {
          if (child is ExplanationOfBenefitStatus) {
            return copyWith(status: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subType':
        {
          if (child is CodeableConcept) {
            return copyWith(subType: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'use':
        {
          if (child is Use) {
            return copyWith(use: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patient':
        {
          if (child is Reference) {
            return copyWith(patient: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'billablePeriod':
        {
          if (child is Period) {
            return copyWith(billablePeriod: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'created':
        {
          if (child is FhirDateTime) {
            return copyWith(created: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'enterer':
        {
          if (child is Reference) {
            return copyWith(enterer: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'insurer':
        {
          if (child is Reference) {
            return copyWith(insurer: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'provider':
        {
          if (child is Reference) {
            return copyWith(provider: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'priority':
        {
          if (child is CodeableConcept) {
            return copyWith(priority: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fundsReserveRequested':
        {
          if (child is CodeableConcept) {
            return copyWith(fundsReserveRequested: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fundsReserve':
        {
          if (child is CodeableConcept) {
            return copyWith(fundsReserve: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'related':
        {
          if (child is List<ExplanationOfBenefitRelated>) {
            // Add all elements from passed list
            final newList = [...?related, ...child];
            return copyWith(related: newList);
          } else if (child is ExplanationOfBenefitRelated) {
            // Add single element to existing list or create new list
            final newList = [
              ...?related,
              child,
            ];
            return copyWith(related: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'prescription':
        {
          if (child is Reference) {
            return copyWith(prescription: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'originalPrescription':
        {
          if (child is Reference) {
            return copyWith(originalPrescription: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'payee':
        {
          if (child is ExplanationOfBenefitPayee) {
            return copyWith(payee: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'referral':
        {
          if (child is Reference) {
            return copyWith(referral: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'facility':
        {
          if (child is Reference) {
            return copyWith(facility: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'claim':
        {
          if (child is Reference) {
            return copyWith(claim: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'claimResponse':
        {
          if (child is Reference) {
            return copyWith(claimResponse: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'outcome':
        {
          if (child is RemittanceOutcome) {
            return copyWith(outcome: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'disposition':
        {
          if (child is FhirString) {
            return copyWith(disposition: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'preAuthRef':
        {
          if (child is List<FhirString>) {
            // Add all elements from passed list
            final newList = [...?preAuthRef, ...child];
            return copyWith(preAuthRef: newList);
          } else if (child is FhirString) {
            // Add single element to existing list or create new list
            final newList = [
              ...?preAuthRef,
              child,
            ];
            return copyWith(preAuthRef: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'preAuthRefPeriod':
        {
          if (child is List<Period>) {
            // Add all elements from passed list
            final newList = [...?preAuthRefPeriod, ...child];
            return copyWith(preAuthRefPeriod: newList);
          } else if (child is Period) {
            // Add single element to existing list or create new list
            final newList = [
              ...?preAuthRefPeriod,
              child,
            ];
            return copyWith(preAuthRefPeriod: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'careTeam':
        {
          if (child is List<ExplanationOfBenefitCareTeam>) {
            // Add all elements from passed list
            final newList = [...?careTeam, ...child];
            return copyWith(careTeam: newList);
          } else if (child is ExplanationOfBenefitCareTeam) {
            // Add single element to existing list or create new list
            final newList = [
              ...?careTeam,
              child,
            ];
            return copyWith(careTeam: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'supportingInfo':
        {
          if (child is List<ExplanationOfBenefitSupportingInfo>) {
            // Add all elements from passed list
            final newList = [...?supportingInfo, ...child];
            return copyWith(supportingInfo: newList);
          } else if (child is ExplanationOfBenefitSupportingInfo) {
            // Add single element to existing list or create new list
            final newList = [
              ...?supportingInfo,
              child,
            ];
            return copyWith(supportingInfo: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'diagnosis':
        {
          if (child is List<ExplanationOfBenefitDiagnosis>) {
            // Add all elements from passed list
            final newList = [...?diagnosis, ...child];
            return copyWith(diagnosis: newList);
          } else if (child is ExplanationOfBenefitDiagnosis) {
            // Add single element to existing list or create new list
            final newList = [
              ...?diagnosis,
              child,
            ];
            return copyWith(diagnosis: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'procedure':
        {
          if (child is List<ExplanationOfBenefitProcedure>) {
            // Add all elements from passed list
            final newList = [...?procedure, ...child];
            return copyWith(procedure: newList);
          } else if (child is ExplanationOfBenefitProcedure) {
            // Add single element to existing list or create new list
            final newList = [
              ...?procedure,
              child,
            ];
            return copyWith(procedure: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'precedence':
        {
          if (child is FhirPositiveInt) {
            return copyWith(precedence: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'insurance':
        {
          if (child is List<ExplanationOfBenefitInsurance>) {
            // Add all elements from passed list
            final newList = [...insurance, ...child];
            return copyWith(insurance: newList);
          } else if (child is ExplanationOfBenefitInsurance) {
            // Add single element to existing list or create new list
            final newList = [
              ...insurance,
              child,
            ];
            return copyWith(insurance: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'accident':
        {
          if (child is ExplanationOfBenefitAccident) {
            return copyWith(accident: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'item':
        {
          if (child is List<ExplanationOfBenefitItem>) {
            // Add all elements from passed list
            final newList = [...?item, ...child];
            return copyWith(item: newList);
          } else if (child is ExplanationOfBenefitItem) {
            // Add single element to existing list or create new list
            final newList = [
              ...?item,
              child,
            ];
            return copyWith(item: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'addItem':
        {
          if (child is List<ExplanationOfBenefitAddItem>) {
            // Add all elements from passed list
            final newList = [...?addItem, ...child];
            return copyWith(addItem: newList);
          } else if (child is ExplanationOfBenefitAddItem) {
            // Add single element to existing list or create new list
            final newList = [
              ...?addItem,
              child,
            ];
            return copyWith(addItem: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'adjudication':
        {
          if (child is List<ExplanationOfBenefitAdjudication>) {
            // Add all elements from passed list
            final newList = [...?adjudication, ...child];
            return copyWith(adjudication: newList);
          } else if (child is ExplanationOfBenefitAdjudication) {
            // Add single element to existing list or create new list
            final newList = [
              ...?adjudication,
              child,
            ];
            return copyWith(adjudication: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'total':
        {
          if (child is List<ExplanationOfBenefitTotal>) {
            // Add all elements from passed list
            final newList = [...?total, ...child];
            return copyWith(total: newList);
          } else if (child is ExplanationOfBenefitTotal) {
            // Add single element to existing list or create new list
            final newList = [
              ...?total,
              child,
            ];
            return copyWith(total: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'payment':
        {
          if (child is ExplanationOfBenefitPayment) {
            return copyWith(payment: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'formCode':
        {
          if (child is CodeableConcept) {
            return copyWith(formCode: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'form':
        {
          if (child is Attachment) {
            return copyWith(form: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'processNote':
        {
          if (child is List<ExplanationOfBenefitProcessNote>) {
            // Add all elements from passed list
            final newList = [...?processNote, ...child];
            return copyWith(processNote: newList);
          } else if (child is ExplanationOfBenefitProcessNote) {
            // Add single element to existing list or create new list
            final newList = [
              ...?processNote,
              child,
            ];
            return copyWith(processNote: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'benefitPeriod':
        {
          if (child is Period) {
            return copyWith(benefitPeriod: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'benefitBalance':
        {
          if (child is List<ExplanationOfBenefitBenefitBalance>) {
            // Add all elements from passed list
            final newList = [...?benefitBalance, ...child];
            return copyWith(benefitBalance: newList);
          } else if (child is ExplanationOfBenefitBenefitBalance) {
            // Add single element to existing list or create new list
            final newList = [
              ...?benefitBalance,
              child,
            ];
            return copyWith(benefitBalance: newList);
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
        return ['FhirString'];
      case 'meta':
        return ['FhirMeta'];
      case 'implicitRules':
        return ['FhirUri'];
      case 'language':
        return ['FhirCode'];
      case 'text':
        return ['Narrative'];
      case 'contained':
        return ['Resource'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'identifier':
        return ['Identifier'];
      case 'status':
        return ['FhirCode'];
      case 'type':
        return ['CodeableConcept'];
      case 'subType':
        return ['CodeableConcept'];
      case 'use':
        return ['FhirCode'];
      case 'patient':
        return ['Reference'];
      case 'billablePeriod':
        return ['Period'];
      case 'created':
        return ['FhirDateTime'];
      case 'enterer':
        return ['Reference'];
      case 'insurer':
        return ['Reference'];
      case 'provider':
        return ['Reference'];
      case 'priority':
        return ['CodeableConcept'];
      case 'fundsReserveRequested':
        return ['CodeableConcept'];
      case 'fundsReserve':
        return ['CodeableConcept'];
      case 'related':
        return ['ExplanationOfBenefitRelated'];
      case 'prescription':
        return ['Reference'];
      case 'originalPrescription':
        return ['Reference'];
      case 'payee':
        return ['ExplanationOfBenefitPayee'];
      case 'referral':
        return ['Reference'];
      case 'facility':
        return ['Reference'];
      case 'claim':
        return ['Reference'];
      case 'claimResponse':
        return ['Reference'];
      case 'outcome':
        return ['FhirCode'];
      case 'disposition':
        return ['FhirString'];
      case 'preAuthRef':
        return ['FhirString'];
      case 'preAuthRefPeriod':
        return ['Period'];
      case 'careTeam':
        return ['ExplanationOfBenefitCareTeam'];
      case 'supportingInfo':
        return ['ExplanationOfBenefitSupportingInfo'];
      case 'diagnosis':
        return ['ExplanationOfBenefitDiagnosis'];
      case 'procedure':
        return ['ExplanationOfBenefitProcedure'];
      case 'precedence':
        return ['FhirPositiveInt'];
      case 'insurance':
        return ['ExplanationOfBenefitInsurance'];
      case 'accident':
        return ['ExplanationOfBenefitAccident'];
      case 'item':
        return ['ExplanationOfBenefitItem'];
      case 'addItem':
        return ['ExplanationOfBenefitAddItem'];
      case 'adjudication':
        return ['ExplanationOfBenefitAdjudication'];
      case 'total':
        return ['ExplanationOfBenefitTotal'];
      case 'payment':
        return ['ExplanationOfBenefitPayment'];
      case 'formCode':
        return ['CodeableConcept'];
      case 'form':
        return ['Attachment'];
      case 'processNote':
        return ['ExplanationOfBenefitProcessNote'];
      case 'benefitPeriod':
        return ['Period'];
      case 'benefitBalance':
        return ['ExplanationOfBenefitBenefitBalance'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefit]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ExplanationOfBenefit createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'meta':
        {
          return copyWith(
            meta: FhirMeta.empty(),
          );
        }
      case 'implicitRules':
        {
          return copyWith(
            implicitRules: FhirUri.empty(),
          );
        }
      case 'language':
        {
          return copyWith(
            language: CommonLanguages.empty(),
          );
        }
      case 'text':
        {
          return copyWith(
            text: Narrative.empty(),
          );
        }
      case 'contained':
        {
          return copyWith(
            contained: <Resource>[],
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'identifier':
        {
          return copyWith(
            identifier: <Identifier>[],
          );
        }
      case 'status':
        {
          return copyWith(
            status: ExplanationOfBenefitStatus.empty(),
          );
        }
      case 'type':
        {
          return copyWith(
            type: CodeableConcept.empty(),
          );
        }
      case 'subType':
        {
          return copyWith(
            subType: CodeableConcept.empty(),
          );
        }
      case 'use':
        {
          return copyWith(
            use: Use.empty(),
          );
        }
      case 'patient':
        {
          return copyWith(
            patient: Reference.empty(),
          );
        }
      case 'billablePeriod':
        {
          return copyWith(
            billablePeriod: Period.empty(),
          );
        }
      case 'created':
        {
          return copyWith(
            created: FhirDateTime.empty(),
          );
        }
      case 'enterer':
        {
          return copyWith(
            enterer: Reference.empty(),
          );
        }
      case 'insurer':
        {
          return copyWith(
            insurer: Reference.empty(),
          );
        }
      case 'provider':
        {
          return copyWith(
            provider: Reference.empty(),
          );
        }
      case 'priority':
        {
          return copyWith(
            priority: CodeableConcept.empty(),
          );
        }
      case 'fundsReserveRequested':
        {
          return copyWith(
            fundsReserveRequested: CodeableConcept.empty(),
          );
        }
      case 'fundsReserve':
        {
          return copyWith(
            fundsReserve: CodeableConcept.empty(),
          );
        }
      case 'related':
        {
          return copyWith(
            related: <ExplanationOfBenefitRelated>[],
          );
        }
      case 'prescription':
        {
          return copyWith(
            prescription: Reference.empty(),
          );
        }
      case 'originalPrescription':
        {
          return copyWith(
            originalPrescription: Reference.empty(),
          );
        }
      case 'payee':
        {
          return copyWith(
            payee: ExplanationOfBenefitPayee.empty(),
          );
        }
      case 'referral':
        {
          return copyWith(
            referral: Reference.empty(),
          );
        }
      case 'facility':
        {
          return copyWith(
            facility: Reference.empty(),
          );
        }
      case 'claim':
        {
          return copyWith(
            claim: Reference.empty(),
          );
        }
      case 'claimResponse':
        {
          return copyWith(
            claimResponse: Reference.empty(),
          );
        }
      case 'outcome':
        {
          return copyWith(
            outcome: RemittanceOutcome.empty(),
          );
        }
      case 'disposition':
        {
          return copyWith(
            disposition: FhirString.empty(),
          );
        }
      case 'preAuthRef':
        {
          return copyWith(
            preAuthRef: <FhirString>[],
          );
        }
      case 'preAuthRefPeriod':
        {
          return copyWith(
            preAuthRefPeriod: <Period>[],
          );
        }
      case 'careTeam':
        {
          return copyWith(
            careTeam: <ExplanationOfBenefitCareTeam>[],
          );
        }
      case 'supportingInfo':
        {
          return copyWith(
            supportingInfo: <ExplanationOfBenefitSupportingInfo>[],
          );
        }
      case 'diagnosis':
        {
          return copyWith(
            diagnosis: <ExplanationOfBenefitDiagnosis>[],
          );
        }
      case 'procedure':
        {
          return copyWith(
            procedure: <ExplanationOfBenefitProcedure>[],
          );
        }
      case 'precedence':
        {
          return copyWith(
            precedence: FhirPositiveInt.empty(),
          );
        }
      case 'insurance':
        {
          return copyWith(
            insurance: <ExplanationOfBenefitInsurance>[],
          );
        }
      case 'accident':
        {
          return copyWith(
            accident: ExplanationOfBenefitAccident.empty(),
          );
        }
      case 'item':
        {
          return copyWith(
            item: <ExplanationOfBenefitItem>[],
          );
        }
      case 'addItem':
        {
          return copyWith(
            addItem: <ExplanationOfBenefitAddItem>[],
          );
        }
      case 'adjudication':
        {
          return copyWith(
            adjudication: <ExplanationOfBenefitAdjudication>[],
          );
        }
      case 'total':
        {
          return copyWith(
            total: <ExplanationOfBenefitTotal>[],
          );
        }
      case 'payment':
        {
          return copyWith(
            payment: ExplanationOfBenefitPayment.empty(),
          );
        }
      case 'formCode':
        {
          return copyWith(
            formCode: CodeableConcept.empty(),
          );
        }
      case 'form':
        {
          return copyWith(
            form: Attachment.empty(),
          );
        }
      case 'processNote':
        {
          return copyWith(
            processNote: <ExplanationOfBenefitProcessNote>[],
          );
        }
      case 'benefitPeriod':
        {
          return copyWith(
            benefitPeriod: Period.empty(),
          );
        }
      case 'benefitBalance':
        {
          return copyWith(
            benefitBalance: <ExplanationOfBenefitBenefitBalance>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ExplanationOfBenefit clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool identifier = false,
    bool subType = false,
    bool billablePeriod = false,
    bool enterer = false,
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
    bool disposition = false,
    bool preAuthRef = false,
    bool preAuthRefPeriod = false,
    bool careTeam = false,
    bool supportingInfo = false,
    bool diagnosis = false,
    bool procedure = false,
    bool precedence = false,
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
    return ExplanationOfBenefit(
      id: id ? null : this.id,
      meta: meta ? null : this.meta,
      implicitRules: implicitRules ? null : this.implicitRules,
      language: language ? null : this.language,
      text: text ? null : this.text,
      contained: contained ? null : this.contained,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      identifier: identifier ? null : this.identifier,
      status: status,
      type: type,
      subType: subType ? null : this.subType,
      use: use,
      patient: patient,
      billablePeriod: billablePeriod ? null : this.billablePeriod,
      created: created,
      enterer: enterer ? null : this.enterer,
      insurer: insurer,
      provider: provider,
      priority: priority ? null : this.priority,
      fundsReserveRequested:
          fundsReserveRequested ? null : this.fundsReserveRequested,
      fundsReserve: fundsReserve ? null : this.fundsReserve,
      related: related ? null : this.related,
      prescription: prescription ? null : this.prescription,
      originalPrescription:
          originalPrescription ? null : this.originalPrescription,
      payee: payee ? null : this.payee,
      referral: referral ? null : this.referral,
      facility: facility ? null : this.facility,
      claim: claim ? null : this.claim,
      claimResponse: claimResponse ? null : this.claimResponse,
      outcome: outcome,
      disposition: disposition ? null : this.disposition,
      preAuthRef: preAuthRef ? null : this.preAuthRef,
      preAuthRefPeriod: preAuthRefPeriod ? null : this.preAuthRefPeriod,
      careTeam: careTeam ? null : this.careTeam,
      supportingInfo: supportingInfo ? null : this.supportingInfo,
      diagnosis: diagnosis ? null : this.diagnosis,
      procedure: procedure ? null : this.procedure,
      precedence: precedence ? null : this.precedence,
      insurance: insurance,
      accident: accident ? null : this.accident,
      item: item ? null : this.item,
      addItem: addItem ? null : this.addItem,
      adjudication: adjudication ? null : this.adjudication,
      total: total ? null : this.total,
      payment: payment ? null : this.payment,
      formCode: formCode ? null : this.formCode,
      form: form ? null : this.form,
      processNote: processNote ? null : this.processNote,
      benefitPeriod: benefitPeriod ? null : this.benefitPeriod,
      benefitBalance: benefitBalance ? null : this.benefitBalance,
    );
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return ExplanationOfBenefit(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      meta: meta?.copyWith(
            objectPath: '$newObjectPath.meta',
          ) ??
          this.meta,
      implicitRules: implicitRules?.copyWith(
            objectPath: '$newObjectPath.implicitRules',
          ) ??
          this.implicitRules,
      language: language?.copyWith(
            objectPath: '$newObjectPath.language',
          ) ??
          this.language,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
      contained: contained ?? this.contained,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      identifier: identifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.identifier',
                ),
              )
              .toList() ??
          this.identifier,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      subType: subType?.copyWith(
            objectPath: '$newObjectPath.subType',
          ) ??
          this.subType,
      use: use?.copyWith(
            objectPath: '$newObjectPath.use',
          ) ??
          this.use,
      patient: patient?.copyWith(
            objectPath: '$newObjectPath.patient',
          ) ??
          this.patient,
      billablePeriod: billablePeriod?.copyWith(
            objectPath: '$newObjectPath.billablePeriod',
          ) ??
          this.billablePeriod,
      created: created?.copyWith(
            objectPath: '$newObjectPath.created',
          ) ??
          this.created,
      enterer: enterer?.copyWith(
            objectPath: '$newObjectPath.enterer',
          ) ??
          this.enterer,
      insurer: insurer?.copyWith(
            objectPath: '$newObjectPath.insurer',
          ) ??
          this.insurer,
      provider: provider?.copyWith(
            objectPath: '$newObjectPath.provider',
          ) ??
          this.provider,
      priority: priority?.copyWith(
            objectPath: '$newObjectPath.priority',
          ) ??
          this.priority,
      fundsReserveRequested: fundsReserveRequested?.copyWith(
            objectPath: '$newObjectPath.fundsReserveRequested',
          ) ??
          this.fundsReserveRequested,
      fundsReserve: fundsReserve?.copyWith(
            objectPath: '$newObjectPath.fundsReserve',
          ) ??
          this.fundsReserve,
      related: related
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.related',
                ),
              )
              .toList() ??
          this.related,
      prescription: prescription?.copyWith(
            objectPath: '$newObjectPath.prescription',
          ) ??
          this.prescription,
      originalPrescription: originalPrescription?.copyWith(
            objectPath: '$newObjectPath.originalPrescription',
          ) ??
          this.originalPrescription,
      payee: payee?.copyWith(
            objectPath: '$newObjectPath.payee',
          ) ??
          this.payee,
      referral: referral?.copyWith(
            objectPath: '$newObjectPath.referral',
          ) ??
          this.referral,
      facility: facility?.copyWith(
            objectPath: '$newObjectPath.facility',
          ) ??
          this.facility,
      claim: claim?.copyWith(
            objectPath: '$newObjectPath.claim',
          ) ??
          this.claim,
      claimResponse: claimResponse?.copyWith(
            objectPath: '$newObjectPath.claimResponse',
          ) ??
          this.claimResponse,
      outcome: outcome?.copyWith(
            objectPath: '$newObjectPath.outcome',
          ) ??
          this.outcome,
      disposition: disposition?.copyWith(
            objectPath: '$newObjectPath.disposition',
          ) ??
          this.disposition,
      preAuthRef: preAuthRef
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.preAuthRef',
                ),
              )
              .toList() ??
          this.preAuthRef,
      preAuthRefPeriod: preAuthRefPeriod
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.preAuthRefPeriod',
                ),
              )
              .toList() ??
          this.preAuthRefPeriod,
      careTeam: careTeam
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.careTeam',
                ),
              )
              .toList() ??
          this.careTeam,
      supportingInfo: supportingInfo
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.supportingInfo',
                ),
              )
              .toList() ??
          this.supportingInfo,
      diagnosis: diagnosis
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.diagnosis',
                ),
              )
              .toList() ??
          this.diagnosis,
      procedure: procedure
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.procedure',
                ),
              )
              .toList() ??
          this.procedure,
      precedence: precedence?.copyWith(
            objectPath: '$newObjectPath.precedence',
          ) ??
          this.precedence,
      insurance: insurance
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.insurance',
                ),
              )
              .toList() ??
          this.insurance,
      accident: accident?.copyWith(
            objectPath: '$newObjectPath.accident',
          ) ??
          this.accident,
      item: item
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.item',
                ),
              )
              .toList() ??
          this.item,
      addItem: addItem
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.addItem',
                ),
              )
              .toList() ??
          this.addItem,
      adjudication: adjudication
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.adjudication',
                ),
              )
              .toList() ??
          this.adjudication,
      total: total
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.total',
                ),
              )
              .toList() ??
          this.total,
      payment: payment?.copyWith(
            objectPath: '$newObjectPath.payment',
          ) ??
          this.payment,
      formCode: formCode?.copyWith(
            objectPath: '$newObjectPath.formCode',
          ) ??
          this.formCode,
      form: form?.copyWith(
            objectPath: '$newObjectPath.form',
          ) ??
          this.form,
      processNote: processNote
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.processNote',
                ),
              )
              .toList() ??
          this.processNote,
      benefitPeriod: benefitPeriod?.copyWith(
            objectPath: '$newObjectPath.benefitPeriod',
          ) ??
          this.benefitPeriod,
      benefitBalance: benefitBalance
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.benefitBalance',
                ),
              )
              .toList() ??
          this.benefitBalance,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ExplanationOfBenefit) {
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
    if (!listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<Identifier>(
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
    if (!listEquals<ExplanationOfBenefitRelated>(
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
    if (!listEquals<FhirString>(
      preAuthRef,
      o.preAuthRef,
    )) {
      return false;
    }
    if (!listEquals<Period>(
      preAuthRefPeriod,
      o.preAuthRefPeriod,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitCareTeam>(
      careTeam,
      o.careTeam,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitSupportingInfo>(
      supportingInfo,
      o.supportingInfo,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitDiagnosis>(
      diagnosis,
      o.diagnosis,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitProcedure>(
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
    if (!listEquals<ExplanationOfBenefitInsurance>(
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
    if (!listEquals<ExplanationOfBenefitItem>(
      item,
      o.item,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitAddItem>(
      addItem,
      o.addItem,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitAdjudication>(
      adjudication,
      o.adjudication,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitTotal>(
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
    if (!listEquals<ExplanationOfBenefitProcessNote>(
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
    if (!listEquals<ExplanationOfBenefitBenefitBalance>(
      benefitBalance,
      o.benefitBalance,
    )) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'ExplanationOfBenefit.related',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ExplanationOfBenefitRelated.empty() =>
      const ExplanationOfBenefitRelated();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitRelated.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.related';
    return ExplanationOfBenefitRelated(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      claim: JsonParser.parseObject<Reference>(
        json,
        'claim',
        Reference.fromJson,
        '$objectPath.claim',
      ),
      relationship: JsonParser.parseObject<CodeableConcept>(
        json,
        'relationship',
        CodeableConcept.fromJson,
        '$objectPath.relationship',
      ),
      reference: JsonParser.parseObject<Identifier>(
        json,
        'reference',
        Identifier.fromJson,
        '$objectPath.reference',
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
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitRelated.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'claim',
      claim,
    );
    addField(
      'relationship',
      relationship,
    );
    addField(
      'reference',
      reference,
    );
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
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'claim':
        {
          if (child is Reference) {
            return copyWith(claim: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'relationship':
        {
          if (child is CodeableConcept) {
            return copyWith(relationship: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reference':
        {
          if (child is Identifier) {
            return copyWith(reference: child);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'claim':
        return ['Reference'];
      case 'relationship':
        return ['CodeableConcept'];
      case 'reference':
        return ['Identifier'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitRelated]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ExplanationOfBenefitRelated createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'claim':
        {
          return copyWith(
            claim: Reference.empty(),
          );
        }
      case 'relationship':
        {
          return copyWith(
            relationship: CodeableConcept.empty(),
          );
        }
      case 'reference':
        {
          return copyWith(
            reference: Identifier.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ExplanationOfBenefitRelated clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool claim = false,
    bool relationship = false,
    bool reference = false,
  }) {
    return ExplanationOfBenefitRelated(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      claim: claim ? null : this.claim,
      relationship: relationship ? null : this.relationship,
      reference: reference ? null : this.reference,
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ExplanationOfBenefitRelated(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      claim: claim?.copyWith(
            objectPath: '$newObjectPath.claim',
          ) ??
          this.claim,
      relationship: relationship?.copyWith(
            objectPath: '$newObjectPath.relationship',
          ) ??
          this.relationship,
      reference: reference?.copyWith(
            objectPath: '$newObjectPath.reference',
          ) ??
          this.reference,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ExplanationOfBenefitRelated) {
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
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
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
  }) : super(
          objectPath: 'ExplanationOfBenefit.payee',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ExplanationOfBenefitPayee.empty() =>
      const ExplanationOfBenefitPayee();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitPayee.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.payee';
    return ExplanationOfBenefitPayee(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
      party: JsonParser.parseObject<Reference>(
        json,
        'party',
        Reference.fromJson,
        '$objectPath.party',
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
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitPayee.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'type',
      type,
    );
    addField(
      'party',
      party,
    );
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
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'party':
        {
          if (child is Reference) {
            return copyWith(party: child);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'type':
        return ['CodeableConcept'];
      case 'party':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitPayee]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ExplanationOfBenefitPayee createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'type':
        {
          return copyWith(
            type: CodeableConcept.empty(),
          );
        }
      case 'party':
        {
          return copyWith(
            party: Reference.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ExplanationOfBenefitPayee clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool type = false,
    bool party = false,
  }) {
    return ExplanationOfBenefitPayee(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      type: type ? null : this.type,
      party: party ? null : this.party,
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ExplanationOfBenefitPayee(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      party: party?.copyWith(
            objectPath: '$newObjectPath.party',
          ) ??
          this.party,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ExplanationOfBenefitPayee) {
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
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
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
  }) : super(
          objectPath: 'ExplanationOfBenefit.careTeam',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ExplanationOfBenefitCareTeam.empty() => ExplanationOfBenefitCareTeam(
        sequence: FhirPositiveInt.empty(),
        provider: Reference.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitCareTeam.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.careTeam';
    return ExplanationOfBenefitCareTeam(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      sequence: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'sequence',
        FhirPositiveInt.fromJson,
        '$objectPath.sequence',
      )!,
      provider: JsonParser.parseObject<Reference>(
        json,
        'provider',
        Reference.fromJson,
        '$objectPath.provider',
      )!,
      responsible: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'responsible',
        FhirBoolean.fromJson,
        '$objectPath.responsible',
      ),
      role: JsonParser.parseObject<CodeableConcept>(
        json,
        'role',
        CodeableConcept.fromJson,
        '$objectPath.role',
      ),
      qualification: JsonParser.parseObject<CodeableConcept>(
        json,
        'qualification',
        CodeableConcept.fromJson,
        '$objectPath.qualification',
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
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitCareTeam.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'sequence',
      sequence,
    );
    addField(
      'provider',
      provider,
    );
    addField(
      'responsible',
      responsible,
    );
    addField(
      'role',
      role,
    );
    addField(
      'qualification',
      qualification,
    );
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
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
        fields.add(sequence);
      case 'provider':
        fields.add(provider);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'sequence':
        {
          if (child is FhirPositiveInt) {
            return copyWith(sequence: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'provider':
        {
          if (child is Reference) {
            return copyWith(provider: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'responsible':
        {
          if (child is FhirBoolean) {
            return copyWith(responsible: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'role':
        {
          if (child is CodeableConcept) {
            return copyWith(role: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'qualification':
        {
          if (child is CodeableConcept) {
            return copyWith(qualification: child);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'sequence':
        return ['FhirPositiveInt'];
      case 'provider':
        return ['Reference'];
      case 'responsible':
        return ['FhirBoolean'];
      case 'role':
        return ['CodeableConcept'];
      case 'qualification':
        return ['CodeableConcept'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitCareTeam]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ExplanationOfBenefitCareTeam createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'sequence':
        {
          return copyWith(
            sequence: FhirPositiveInt.empty(),
          );
        }
      case 'provider':
        {
          return copyWith(
            provider: Reference.empty(),
          );
        }
      case 'responsible':
        {
          return copyWith(
            responsible: FhirBoolean.empty(),
          );
        }
      case 'role':
        {
          return copyWith(
            role: CodeableConcept.empty(),
          );
        }
      case 'qualification':
        {
          return copyWith(
            qualification: CodeableConcept.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ExplanationOfBenefitCareTeam clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool responsible = false,
    bool role = false,
    bool qualification = false,
  }) {
    return ExplanationOfBenefitCareTeam(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      sequence: sequence,
      provider: provider,
      responsible: responsible ? null : this.responsible,
      role: role ? null : this.role,
      qualification: qualification ? null : this.qualification,
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
    Reference? provider,
    FhirBoolean? responsible,
    CodeableConcept? role,
    CodeableConcept? qualification,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ExplanationOfBenefitCareTeam(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      sequence: sequence?.copyWith(
            objectPath: '$newObjectPath.sequence',
          ) ??
          this.sequence,
      provider: provider?.copyWith(
            objectPath: '$newObjectPath.provider',
          ) ??
          this.provider,
      responsible: responsible?.copyWith(
            objectPath: '$newObjectPath.responsible',
          ) ??
          this.responsible,
      role: role?.copyWith(
            objectPath: '$newObjectPath.role',
          ) ??
          this.role,
      qualification: qualification?.copyWith(
            objectPath: '$newObjectPath.qualification',
          ) ??
          this.qualification,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ExplanationOfBenefitCareTeam) {
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
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
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
  }) : super(
          objectPath: 'ExplanationOfBenefit.supportingInfo',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ExplanationOfBenefitSupportingInfo.empty() =>
      ExplanationOfBenefitSupportingInfo(
        sequence: FhirPositiveInt.empty(),
        category: CodeableConcept.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitSupportingInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.supportingInfo';
    return ExplanationOfBenefitSupportingInfo(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      sequence: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'sequence',
        FhirPositiveInt.fromJson,
        '$objectPath.sequence',
      )!,
      category: JsonParser.parseObject<CodeableConcept>(
        json,
        'category',
        CodeableConcept.fromJson,
        '$objectPath.category',
      )!,
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
        '$objectPath.code',
      ),
      timingX: JsonParser.parsePolymorphic<
          TimingXExplanationOfBenefitSupportingInfo>(
        json,
        {
          'timingDate': FhirDate.fromJson,
          'timingPeriod': Period.fromJson,
        },
        objectPath,
      ),
      valueX:
          JsonParser.parsePolymorphic<ValueXExplanationOfBenefitSupportingInfo>(
        json,
        {
          'valueBoolean': FhirBoolean.fromJson,
          'valueString': FhirString.fromJson,
          'valueQuantity': Quantity.fromJson,
          'valueAttachment': Attachment.fromJson,
          'valueReference': Reference.fromJson,
        },
        objectPath,
      ),
      reason: JsonParser.parseObject<Coding>(
        json,
        'reason',
        Coding.fromJson,
        '$objectPath.reason',
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
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitSupportingInfo.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Getter for [timingDate] as a FhirDate
  FhirDate? get timingDate => timingX?.isAs<FhirDate>();

  /// Getter for [timingPeriod] as a Period
  Period? get timingPeriod => timingX?.isAs<Period>();

  /// [valueX]
  /// Additional data or information such as resources, documents, images
  /// etc. including references to the data or the actual inclusion of the
  /// data.
  final ValueXExplanationOfBenefitSupportingInfo? valueX;

  /// Getter for [valueBoolean] as a FhirBoolean
  FhirBoolean? get valueBoolean => valueX?.isAs<FhirBoolean>();

  /// Getter for [valueString] as a FhirString
  FhirString? get valueString => valueX?.isAs<FhirString>();

  /// Getter for [valueQuantity] as a Quantity
  Quantity? get valueQuantity => valueX?.isAs<Quantity>();

  /// Getter for [valueAttachment] as a Attachment
  Attachment? get valueAttachment => valueX?.isAs<Attachment>();

  /// Getter for [valueReference] as a Reference
  Reference? get valueReference => valueX?.isAs<Reference>();

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

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'sequence',
      sequence,
    );
    addField(
      'category',
      category,
    );
    addField(
      'code',
      code,
    );
    if (timingX != null) {
      final fhirType = timingX!.fhirType;
      addField(
        'timing${fhirType.capitalize()}',
        timingX,
      );
    }

    if (valueX != null) {
      final fhirType = valueX!.fhirType;
      addField(
        'value${fhirType.capitalize()}',
        valueX,
      );
    }

    addField(
      'reason',
      reason,
    );
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
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
        fields.add(sequence);
      case 'category':
        fields.add(category);
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'timing':
        fields.add(timingX!);
      case 'timingX':
        fields.add(timingX!);
      case 'timingDate':
        if (timingX is FhirDate) {
          fields.add(timingX!);
        }
      case 'timingPeriod':
        if (timingX is Period) {
          fields.add(timingX!);
        }
      case 'value':
        fields.add(valueX!);
      case 'valueX':
        fields.add(valueX!);
      case 'valueBoolean':
        if (valueX is FhirBoolean) {
          fields.add(valueX!);
        }
      case 'valueString':
        if (valueX is FhirString) {
          fields.add(valueX!);
        }
      case 'valueQuantity':
        if (valueX is Quantity) {
          fields.add(valueX!);
        }
      case 'valueAttachment':
        if (valueX is Attachment) {
          fields.add(valueX!);
        }
      case 'valueReference':
        if (valueX is Reference) {
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'sequence':
        {
          if (child is FhirPositiveInt) {
            return copyWith(sequence: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'category':
        {
          if (child is CodeableConcept) {
            return copyWith(category: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'code':
        {
          if (child is CodeableConcept) {
            return copyWith(code: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'timingX':
        {
          if (child is TimingXExplanationOfBenefitSupportingInfo) {
            return copyWith(timingX: child);
          } else {
            if (child is FhirDate) {
              return copyWith(timingX: child);
            }
            if (child is Period) {
              return copyWith(timingX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'timingFhirDate':
        {
          if (child is FhirDate) {
            return copyWith(timingX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'timingPeriod':
        {
          if (child is Period) {
            return copyWith(timingX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueX':
        {
          if (child is ValueXExplanationOfBenefitSupportingInfo) {
            return copyWith(valueX: child);
          } else {
            if (child is FhirBoolean) {
              return copyWith(valueX: child);
            }
            if (child is FhirString) {
              return copyWith(valueX: child);
            }
            if (child is Quantity) {
              return copyWith(valueX: child);
            }
            if (child is Attachment) {
              return copyWith(valueX: child);
            }
            if (child is Reference) {
              return copyWith(valueX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'valueFhirBoolean':
        {
          if (child is FhirBoolean) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirString':
        {
          if (child is FhirString) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueQuantity':
        {
          if (child is Quantity) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueAttachment':
        {
          if (child is Attachment) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueReference':
        {
          if (child is Reference) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reason':
        {
          if (child is Coding) {
            return copyWith(reason: child);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'sequence':
        return ['FhirPositiveInt'];
      case 'category':
        return ['CodeableConcept'];
      case 'code':
        return ['CodeableConcept'];
      case 'timing':
      case 'timingX':
        return [
          'FhirDate',
          'Period',
        ];
      case 'timingDate':
        return ['FhirDate'];
      case 'timingPeriod':
        return ['Period'];
      case 'value':
      case 'valueX':
        return [
          'FhirBoolean',
          'FhirString',
          'Quantity',
          'Attachment',
          'Reference',
        ];
      case 'valueBoolean':
        return ['FhirBoolean'];
      case 'valueString':
        return ['FhirString'];
      case 'valueQuantity':
        return ['Quantity'];
      case 'valueAttachment':
        return ['Attachment'];
      case 'valueReference':
        return ['Reference'];
      case 'reason':
        return ['Coding'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitSupportingInfo]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ExplanationOfBenefitSupportingInfo createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'sequence':
        {
          return copyWith(
            sequence: FhirPositiveInt.empty(),
          );
        }
      case 'category':
        {
          return copyWith(
            category: CodeableConcept.empty(),
          );
        }
      case 'code':
        {
          return copyWith(
            code: CodeableConcept.empty(),
          );
        }
      case 'timing':
      case 'timingX':
      case 'timingDate':
        {
          return copyWith(
            timingX: FhirDate.empty(),
          );
        }
      case 'timingPeriod':
        {
          return copyWith(
            timingX: Period.empty(),
          );
        }
      case 'value':
      case 'valueX':
      case 'valueBoolean':
        {
          return copyWith(
            valueX: FhirBoolean.empty(),
          );
        }
      case 'valueString':
        {
          return copyWith(
            valueX: FhirString.empty(),
          );
        }
      case 'valueQuantity':
        {
          return copyWith(
            valueX: Quantity.empty(),
          );
        }
      case 'valueAttachment':
        {
          return copyWith(
            valueX: Attachment.empty(),
          );
        }
      case 'valueReference':
        {
          return copyWith(
            valueX: Reference.empty(),
          );
        }
      case 'reason':
        {
          return copyWith(
            reason: Coding.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ExplanationOfBenefitSupportingInfo clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool code = false,
    bool timing = false,
    bool value = false,
    bool reason = false,
  }) {
    return ExplanationOfBenefitSupportingInfo(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      sequence: sequence,
      category: category,
      code: code ? null : this.code,
      timingX: timing ? null : timingX,
      valueX: value ? null : valueX,
      reason: reason ? null : this.reason,
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
    CodeableConcept? category,
    CodeableConcept? code,
    TimingXExplanationOfBenefitSupportingInfo? timingX,
    ValueXExplanationOfBenefitSupportingInfo? valueX,
    Coding? reason,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ExplanationOfBenefitSupportingInfo(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      sequence: sequence?.copyWith(
            objectPath: '$newObjectPath.sequence',
          ) ??
          this.sequence,
      category: category?.copyWith(
            objectPath: '$newObjectPath.category',
          ) ??
          this.category,
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
      timingX: timingX?.copyWith(
            objectPath: '$newObjectPath.timingX',
          ) as TimingXExplanationOfBenefitSupportingInfo? ??
          this.timingX,
      valueX: valueX?.copyWith(
            objectPath: '$newObjectPath.valueX',
          ) as ValueXExplanationOfBenefitSupportingInfo? ??
          this.valueX,
      reason: reason?.copyWith(
            objectPath: '$newObjectPath.reason',
          ) ??
          this.reason,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ExplanationOfBenefitSupportingInfo) {
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
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
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
  }) : super(
          objectPath: 'ExplanationOfBenefit.diagnosis',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ExplanationOfBenefitDiagnosis.empty() =>
      ExplanationOfBenefitDiagnosis(
        sequence: FhirPositiveInt.empty(),
        diagnosisX: CodeableConcept.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitDiagnosis.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.diagnosis';
    return ExplanationOfBenefitDiagnosis(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      sequence: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'sequence',
        FhirPositiveInt.fromJson,
        '$objectPath.sequence',
      )!,
      diagnosisX:
          JsonParser.parsePolymorphic<DiagnosisXExplanationOfBenefitDiagnosis>(
        json,
        {
          'diagnosisCodeableConcept': CodeableConcept.fromJson,
          'diagnosisReference': Reference.fromJson,
        },
        objectPath,
      )!,
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.type',
              },
            ),
          )
          .toList(),
      onAdmission: JsonParser.parseObject<CodeableConcept>(
        json,
        'onAdmission',
        CodeableConcept.fromJson,
        '$objectPath.onAdmission',
      ),
      packageCode: JsonParser.parseObject<CodeableConcept>(
        json,
        'packageCode',
        CodeableConcept.fromJson,
        '$objectPath.packageCode',
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
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitDiagnosis.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Getter for [diagnosisCodeableConcept] as a CodeableConcept
  CodeableConcept? get diagnosisCodeableConcept =>
      diagnosisX.isAs<CodeableConcept>();

  /// Getter for [diagnosisReference] as a Reference
  Reference? get diagnosisReference => diagnosisX.isAs<Reference>();

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

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'sequence',
      sequence,
    );
    final diagnosisXFhirType = diagnosisX.fhirType;
    addField(
      'diagnosis${diagnosisXFhirType.capitalize()}',
      diagnosisX,
    );

    addField(
      'type',
      type,
    );
    addField(
      'onAdmission',
      onAdmission,
    );
    addField(
      'packageCode',
      packageCode,
    );
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
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
        fields.add(sequence);
      case 'diagnosis':
        fields.add(diagnosisX);
      case 'diagnosisX':
        fields.add(diagnosisX);
      case 'diagnosisCodeableConcept':
        if (diagnosisX is CodeableConcept) {
          fields.add(diagnosisX);
        }
      case 'diagnosisReference':
        if (diagnosisX is Reference) {
          fields.add(diagnosisX);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'sequence':
        {
          if (child is FhirPositiveInt) {
            return copyWith(sequence: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'diagnosisX':
        {
          if (child is DiagnosisXExplanationOfBenefitDiagnosis) {
            return copyWith(diagnosisX: child);
          } else {
            if (child is CodeableConcept) {
              return copyWith(diagnosisX: child);
            }
            if (child is Reference) {
              return copyWith(diagnosisX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'diagnosisCodeableConcept':
        {
          if (child is CodeableConcept) {
            return copyWith(diagnosisX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'diagnosisReference':
        {
          if (child is Reference) {
            return copyWith(diagnosisX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?type, ...child];
            return copyWith(type: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [
              ...?type,
              child,
            ];
            return copyWith(type: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'onAdmission':
        {
          if (child is CodeableConcept) {
            return copyWith(onAdmission: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'packageCode':
        {
          if (child is CodeableConcept) {
            return copyWith(packageCode: child);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'sequence':
        return ['FhirPositiveInt'];
      case 'diagnosis':
      case 'diagnosisX':
        return [
          'CodeableConcept',
          'Reference',
        ];
      case 'diagnosisCodeableConcept':
        return ['CodeableConcept'];
      case 'diagnosisReference':
        return ['Reference'];
      case 'type':
        return ['CodeableConcept'];
      case 'onAdmission':
        return ['CodeableConcept'];
      case 'packageCode':
        return ['CodeableConcept'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitDiagnosis]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ExplanationOfBenefitDiagnosis createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'sequence':
        {
          return copyWith(
            sequence: FhirPositiveInt.empty(),
          );
        }
      case 'diagnosis':
      case 'diagnosisX':
      case 'diagnosisCodeableConcept':
        {
          return copyWith(
            diagnosisX: CodeableConcept.empty(),
          );
        }
      case 'diagnosisReference':
        {
          return copyWith(
            diagnosisX: Reference.empty(),
          );
        }
      case 'type':
        {
          return copyWith(
            type: <CodeableConcept>[],
          );
        }
      case 'onAdmission':
        {
          return copyWith(
            onAdmission: CodeableConcept.empty(),
          );
        }
      case 'packageCode':
        {
          return copyWith(
            packageCode: CodeableConcept.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ExplanationOfBenefitDiagnosis clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool type = false,
    bool onAdmission = false,
    bool packageCode = false,
  }) {
    return ExplanationOfBenefitDiagnosis(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      sequence: sequence,
      diagnosisX: diagnosisX,
      type: type ? null : this.type,
      onAdmission: onAdmission ? null : this.onAdmission,
      packageCode: packageCode ? null : this.packageCode,
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
    DiagnosisXExplanationOfBenefitDiagnosis? diagnosisX,
    List<CodeableConcept>? type,
    CodeableConcept? onAdmission,
    CodeableConcept? packageCode,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ExplanationOfBenefitDiagnosis(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      sequence: sequence?.copyWith(
            objectPath: '$newObjectPath.sequence',
          ) ??
          this.sequence,
      diagnosisX: diagnosisX?.copyWith(
            objectPath: '$newObjectPath.diagnosisX',
          ) as DiagnosisXExplanationOfBenefitDiagnosis? ??
          this.diagnosisX,
      type: type
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.type',
                ),
              )
              .toList() ??
          this.type,
      onAdmission: onAdmission?.copyWith(
            objectPath: '$newObjectPath.onAdmission',
          ) ??
          this.onAdmission,
      packageCode: packageCode?.copyWith(
            objectPath: '$newObjectPath.packageCode',
          ) ??
          this.packageCode,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ExplanationOfBenefitDiagnosis) {
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
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
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
    if (!listEquals<CodeableConcept>(
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
  }) : super(
          objectPath: 'ExplanationOfBenefit.procedure',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ExplanationOfBenefitProcedure.empty() =>
      ExplanationOfBenefitProcedure(
        sequence: FhirPositiveInt.empty(),
        procedureX: CodeableConcept.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitProcedure.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.procedure';
    return ExplanationOfBenefitProcedure(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      sequence: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'sequence',
        FhirPositiveInt.fromJson,
        '$objectPath.sequence',
      )!,
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.type',
              },
            ),
          )
          .toList(),
      date: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'date',
        FhirDateTime.fromJson,
        '$objectPath.date',
      ),
      procedureX:
          JsonParser.parsePolymorphic<ProcedureXExplanationOfBenefitProcedure>(
        json,
        {
          'procedureCodeableConcept': CodeableConcept.fromJson,
          'procedureReference': Reference.fromJson,
        },
        objectPath,
      )!,
      udi: (json['udi'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.udi',
              },
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
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitProcedure.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Getter for [procedureCodeableConcept] as a CodeableConcept
  CodeableConcept? get procedureCodeableConcept =>
      procedureX.isAs<CodeableConcept>();

  /// Getter for [procedureReference] as a Reference
  Reference? get procedureReference => procedureX.isAs<Reference>();

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

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'sequence',
      sequence,
    );
    addField(
      'type',
      type,
    );
    addField(
      'date',
      date,
    );
    final procedureXFhirType = procedureX.fhirType;
    addField(
      'procedure${procedureXFhirType.capitalize()}',
      procedureX,
    );

    addField(
      'udi',
      udi,
    );
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
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
        fields.add(sequence);
      case 'type':
        if (type != null) {
          fields.addAll(type!);
        }
      case 'date':
        if (date != null) {
          fields.add(date!);
        }
      case 'procedure':
        fields.add(procedureX);
      case 'procedureX':
        fields.add(procedureX);
      case 'procedureCodeableConcept':
        if (procedureX is CodeableConcept) {
          fields.add(procedureX);
        }
      case 'procedureReference':
        if (procedureX is Reference) {
          fields.add(procedureX);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'sequence':
        {
          if (child is FhirPositiveInt) {
            return copyWith(sequence: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?type, ...child];
            return copyWith(type: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [
              ...?type,
              child,
            ];
            return copyWith(type: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'date':
        {
          if (child is FhirDateTime) {
            return copyWith(date: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'procedureX':
        {
          if (child is ProcedureXExplanationOfBenefitProcedure) {
            return copyWith(procedureX: child);
          } else {
            if (child is CodeableConcept) {
              return copyWith(procedureX: child);
            }
            if (child is Reference) {
              return copyWith(procedureX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'procedureCodeableConcept':
        {
          if (child is CodeableConcept) {
            return copyWith(procedureX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'procedureReference':
        {
          if (child is Reference) {
            return copyWith(procedureX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'udi':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?udi, ...child];
            return copyWith(udi: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [
              ...?udi,
              child,
            ];
            return copyWith(udi: newList);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'sequence':
        return ['FhirPositiveInt'];
      case 'type':
        return ['CodeableConcept'];
      case 'date':
        return ['FhirDateTime'];
      case 'procedure':
      case 'procedureX':
        return [
          'CodeableConcept',
          'Reference',
        ];
      case 'procedureCodeableConcept':
        return ['CodeableConcept'];
      case 'procedureReference':
        return ['Reference'];
      case 'udi':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitProcedure]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ExplanationOfBenefitProcedure createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'sequence':
        {
          return copyWith(
            sequence: FhirPositiveInt.empty(),
          );
        }
      case 'type':
        {
          return copyWith(
            type: <CodeableConcept>[],
          );
        }
      case 'date':
        {
          return copyWith(
            date: FhirDateTime.empty(),
          );
        }
      case 'procedure':
      case 'procedureX':
      case 'procedureCodeableConcept':
        {
          return copyWith(
            procedureX: CodeableConcept.empty(),
          );
        }
      case 'procedureReference':
        {
          return copyWith(
            procedureX: Reference.empty(),
          );
        }
      case 'udi':
        {
          return copyWith(
            udi: <Reference>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ExplanationOfBenefitProcedure clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool type = false,
    bool date = false,
    bool udi = false,
  }) {
    return ExplanationOfBenefitProcedure(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      sequence: sequence,
      type: type ? null : this.type,
      date: date ? null : this.date,
      procedureX: procedureX,
      udi: udi ? null : this.udi,
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
    List<CodeableConcept>? type,
    FhirDateTime? date,
    ProcedureXExplanationOfBenefitProcedure? procedureX,
    List<Reference>? udi,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ExplanationOfBenefitProcedure(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      sequence: sequence?.copyWith(
            objectPath: '$newObjectPath.sequence',
          ) ??
          this.sequence,
      type: type
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.type',
                ),
              )
              .toList() ??
          this.type,
      date: date?.copyWith(
            objectPath: '$newObjectPath.date',
          ) ??
          this.date,
      procedureX: procedureX?.copyWith(
            objectPath: '$newObjectPath.procedureX',
          ) as ProcedureXExplanationOfBenefitProcedure? ??
          this.procedureX,
      udi: udi
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.udi',
                ),
              )
              .toList() ??
          this.udi,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ExplanationOfBenefitProcedure) {
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
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
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
    if (!listEquals<CodeableConcept>(
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
    if (!listEquals<Reference>(
      udi,
      o.udi,
    )) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'ExplanationOfBenefit.insurance',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ExplanationOfBenefitInsurance.empty() =>
      ExplanationOfBenefitInsurance(
        focal: FhirBoolean.empty(),
        coverage: Reference.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitInsurance.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.insurance';
    return ExplanationOfBenefitInsurance(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      focal: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'focal',
        FhirBoolean.fromJson,
        '$objectPath.focal',
      )!,
      coverage: JsonParser.parseObject<Reference>(
        json,
        'coverage',
        Reference.fromJson,
        '$objectPath.coverage',
      )!,
      preAuthRef: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'preAuthRef',
        FhirString.fromJson,
        '$objectPath.preAuthRef',
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
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitInsurance.fromJson(json);
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

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'focal',
      focal,
    );
    addField(
      'coverage',
      coverage,
    );
    addField(
      'preAuthRef',
      preAuthRef,
    );
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
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
        fields.add(focal);
      case 'coverage':
        fields.add(coverage);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'focal':
        {
          if (child is FhirBoolean) {
            return copyWith(focal: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'coverage':
        {
          if (child is Reference) {
            return copyWith(coverage: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'preAuthRef':
        {
          if (child is List<FhirString>) {
            // Add all elements from passed list
            final newList = [...?preAuthRef, ...child];
            return copyWith(preAuthRef: newList);
          } else if (child is FhirString) {
            // Add single element to existing list or create new list
            final newList = [
              ...?preAuthRef,
              child,
            ];
            return copyWith(preAuthRef: newList);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'focal':
        return ['FhirBoolean'];
      case 'coverage':
        return ['Reference'];
      case 'preAuthRef':
        return ['FhirString'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitInsurance]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ExplanationOfBenefitInsurance createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'focal':
        {
          return copyWith(
            focal: FhirBoolean.empty(),
          );
        }
      case 'coverage':
        {
          return copyWith(
            coverage: Reference.empty(),
          );
        }
      case 'preAuthRef':
        {
          return copyWith(
            preAuthRef: <FhirString>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ExplanationOfBenefitInsurance clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool preAuthRef = false,
  }) {
    return ExplanationOfBenefitInsurance(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      focal: focal,
      coverage: coverage,
      preAuthRef: preAuthRef ? null : this.preAuthRef,
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
    Reference? coverage,
    List<FhirString>? preAuthRef,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ExplanationOfBenefitInsurance(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      focal: focal?.copyWith(
            objectPath: '$newObjectPath.focal',
          ) ??
          this.focal,
      coverage: coverage?.copyWith(
            objectPath: '$newObjectPath.coverage',
          ) ??
          this.coverage,
      preAuthRef: preAuthRef
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.preAuthRef',
                ),
              )
              .toList() ??
          this.preAuthRef,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ExplanationOfBenefitInsurance) {
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
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
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
    if (!listEquals<FhirString>(
      preAuthRef,
      o.preAuthRef,
    )) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'ExplanationOfBenefit.accident',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ExplanationOfBenefitAccident.empty() =>
      const ExplanationOfBenefitAccident();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitAccident.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.accident';
    return ExplanationOfBenefitAccident(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      date: JsonParser.parsePrimitive<FhirDate>(
        json,
        'date',
        FhirDate.fromJson,
        '$objectPath.date',
      ),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
      locationX:
          JsonParser.parsePolymorphic<LocationXExplanationOfBenefitAccident>(
        json,
        {
          'locationAddress': Address.fromJson,
          'locationReference': Reference.fromJson,
        },
        objectPath,
      ),
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
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitAccident.fromJson(json);
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
  final FhirDate? date;

  /// [type]
  /// The type or context of the accident event for the purposes of selection
  /// of potential insurance coverages and determination of coordination
  /// between insurers.
  final CodeableConcept? type;

  /// [locationX]
  /// The physical location of the accident event.
  final LocationXExplanationOfBenefitAccident? locationX;

  /// Getter for [locationAddress] as a Address
  Address? get locationAddress => locationX?.isAs<Address>();

  /// Getter for [locationReference] as a Reference
  Reference? get locationReference => locationX?.isAs<Reference>();
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

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'date',
      date,
    );
    addField(
      'type',
      type,
    );
    if (locationX != null) {
      final fhirType = locationX!.fhirType;
      addField(
        'location${fhirType.capitalize()}',
        locationX,
      );
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
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
        fields.add(locationX!);
      case 'locationX':
        fields.add(locationX!);
      case 'locationAddress':
        if (locationX is Address) {
          fields.add(locationX!);
        }
      case 'locationReference':
        if (locationX is Reference) {
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'date':
        {
          if (child is FhirDate) {
            return copyWith(date: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'locationX':
        {
          if (child is LocationXExplanationOfBenefitAccident) {
            return copyWith(locationX: child);
          } else {
            if (child is Address) {
              return copyWith(locationX: child);
            }
            if (child is Reference) {
              return copyWith(locationX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'locationAddress':
        {
          if (child is Address) {
            return copyWith(locationX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'locationReference':
        {
          if (child is Reference) {
            return copyWith(locationX: child);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'date':
        return ['FhirDate'];
      case 'type':
        return ['CodeableConcept'];
      case 'location':
      case 'locationX':
        return [
          'Address',
          'Reference',
        ];
      case 'locationAddress':
        return ['Address'];
      case 'locationReference':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitAccident]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ExplanationOfBenefitAccident createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'date':
        {
          return copyWith(
            date: FhirDate.empty(),
          );
        }
      case 'type':
        {
          return copyWith(
            type: CodeableConcept.empty(),
          );
        }
      case 'location':
      case 'locationX':
      case 'locationAddress':
        {
          return copyWith(
            locationX: Address.empty(),
          );
        }
      case 'locationReference':
        {
          return copyWith(
            locationX: Reference.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ExplanationOfBenefitAccident clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool date = false,
    bool type = false,
    bool location = false,
  }) {
    return ExplanationOfBenefitAccident(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      date: date ? null : this.date,
      type: type ? null : this.type,
      locationX: location ? null : locationX,
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
    CodeableConcept? type,
    LocationXExplanationOfBenefitAccident? locationX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ExplanationOfBenefitAccident(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      date: date?.copyWith(
            objectPath: '$newObjectPath.date',
          ) ??
          this.date,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      locationX: locationX?.copyWith(
            objectPath: '$newObjectPath.locationX',
          ) as LocationXExplanationOfBenefitAccident? ??
          this.locationX,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ExplanationOfBenefitAccident) {
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
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
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
  }) : super(
          objectPath: 'ExplanationOfBenefit.item',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ExplanationOfBenefitItem.empty() => ExplanationOfBenefitItem(
        sequence: FhirPositiveInt.empty(),
        productOrService: CodeableConcept.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitItem.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.item';
    return ExplanationOfBenefitItem(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      sequence: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'sequence',
        FhirPositiveInt.fromJson,
        '$objectPath.sequence',
      )!,
      careTeamSequence: JsonParser.parsePrimitiveList<FhirPositiveInt>(
        json,
        'careTeamSequence',
        FhirPositiveInt.fromJson,
        '$objectPath.careTeamSequence',
      ),
      diagnosisSequence: JsonParser.parsePrimitiveList<FhirPositiveInt>(
        json,
        'diagnosisSequence',
        FhirPositiveInt.fromJson,
        '$objectPath.diagnosisSequence',
      ),
      procedureSequence: JsonParser.parsePrimitiveList<FhirPositiveInt>(
        json,
        'procedureSequence',
        FhirPositiveInt.fromJson,
        '$objectPath.procedureSequence',
      ),
      informationSequence: JsonParser.parsePrimitiveList<FhirPositiveInt>(
        json,
        'informationSequence',
        FhirPositiveInt.fromJson,
        '$objectPath.informationSequence',
      ),
      revenue: JsonParser.parseObject<CodeableConcept>(
        json,
        'revenue',
        CodeableConcept.fromJson,
        '$objectPath.revenue',
      ),
      category: JsonParser.parseObject<CodeableConcept>(
        json,
        'category',
        CodeableConcept.fromJson,
        '$objectPath.category',
      ),
      productOrService: JsonParser.parseObject<CodeableConcept>(
        json,
        'productOrService',
        CodeableConcept.fromJson,
        '$objectPath.productOrService',
      )!,
      modifier: (json['modifier'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifier',
              },
            ),
          )
          .toList(),
      programCode: (json['programCode'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.programCode',
              },
            ),
          )
          .toList(),
      servicedX: JsonParser.parsePolymorphic<ServicedXExplanationOfBenefitItem>(
        json,
        {
          'servicedDate': FhirDate.fromJson,
          'servicedPeriod': Period.fromJson,
        },
        objectPath,
      ),
      locationX: JsonParser.parsePolymorphic<LocationXExplanationOfBenefitItem>(
        json,
        {
          'locationCodeableConcept': CodeableConcept.fromJson,
          'locationAddress': Address.fromJson,
          'locationReference': Reference.fromJson,
        },
        objectPath,
      ),
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
        '$objectPath.quantity',
      ),
      unitPrice: JsonParser.parseObject<Money>(
        json,
        'unitPrice',
        Money.fromJson,
        '$objectPath.unitPrice',
      ),
      factor: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'factor',
        FhirDecimal.fromJson,
        '$objectPath.factor',
      ),
      net: JsonParser.parseObject<Money>(
        json,
        'net',
        Money.fromJson,
        '$objectPath.net',
      ),
      udi: (json['udi'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.udi',
              },
            ),
          )
          .toList(),
      bodySite: JsonParser.parseObject<CodeableConcept>(
        json,
        'bodySite',
        CodeableConcept.fromJson,
        '$objectPath.bodySite',
      ),
      subSite: (json['subSite'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.subSite',
              },
            ),
          )
          .toList(),
      encounter: (json['encounter'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.encounter',
              },
            ),
          )
          .toList(),
      noteNumber: JsonParser.parsePrimitiveList<FhirPositiveInt>(
        json,
        'noteNumber',
        FhirPositiveInt.fromJson,
        '$objectPath.noteNumber',
      ),
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitAdjudication>(
            (v) => ExplanationOfBenefitAdjudication.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.adjudication',
              },
            ),
          )
          .toList(),
      detail: (json['detail'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitDetail>(
            (v) => ExplanationOfBenefitDetail.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.detail',
              },
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
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitItem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Getter for [servicedDate] as a FhirDate
  FhirDate? get servicedDate => servicedX?.isAs<FhirDate>();

  /// Getter for [servicedPeriod] as a Period
  Period? get servicedPeriod => servicedX?.isAs<Period>();

  /// [locationX]
  /// Where the product or service was provided.
  final LocationXExplanationOfBenefitItem? locationX;

  /// Getter for [locationCodeableConcept] as a CodeableConcept
  CodeableConcept? get locationCodeableConcept =>
      locationX?.isAs<CodeableConcept>();

  /// Getter for [locationAddress] as a Address
  Address? get locationAddress => locationX?.isAs<Address>();

  /// Getter for [locationReference] as a Reference
  Reference? get locationReference => locationX?.isAs<Reference>();

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

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'sequence',
      sequence,
    );
    addField(
      'careTeamSequence',
      careTeamSequence,
    );
    addField(
      'diagnosisSequence',
      diagnosisSequence,
    );
    addField(
      'procedureSequence',
      procedureSequence,
    );
    addField(
      'informationSequence',
      informationSequence,
    );
    addField(
      'revenue',
      revenue,
    );
    addField(
      'category',
      category,
    );
    addField(
      'productOrService',
      productOrService,
    );
    addField(
      'modifier',
      modifier,
    );
    addField(
      'programCode',
      programCode,
    );
    if (servicedX != null) {
      final fhirType = servicedX!.fhirType;
      addField(
        'serviced${fhirType.capitalize()}',
        servicedX,
      );
    }

    if (locationX != null) {
      final fhirType = locationX!.fhirType;
      addField(
        'location${fhirType.capitalize()}',
        locationX,
      );
    }

    addField(
      'quantity',
      quantity,
    );
    addField(
      'unitPrice',
      unitPrice,
    );
    addField(
      'factor',
      factor,
    );
    addField(
      'net',
      net,
    );
    addField(
      'udi',
      udi,
    );
    addField(
      'bodySite',
      bodySite,
    );
    addField(
      'subSite',
      subSite,
    );
    addField(
      'encounter',
      encounter,
    );
    addField(
      'noteNumber',
      noteNumber,
    );
    addField(
      'adjudication',
      adjudication,
    );
    addField(
      'detail',
      detail,
    );
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
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
        fields.add(sequence);
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
        fields.add(productOrService);
      case 'modifier':
        if (modifier != null) {
          fields.addAll(modifier!);
        }
      case 'programCode':
        if (programCode != null) {
          fields.addAll(programCode!);
        }
      case 'serviced':
        fields.add(servicedX!);
      case 'servicedX':
        fields.add(servicedX!);
      case 'servicedDate':
        if (servicedX is FhirDate) {
          fields.add(servicedX!);
        }
      case 'servicedPeriod':
        if (servicedX is Period) {
          fields.add(servicedX!);
        }
      case 'location':
        fields.add(locationX!);
      case 'locationX':
        fields.add(locationX!);
      case 'locationCodeableConcept':
        if (locationX is CodeableConcept) {
          fields.add(locationX!);
        }
      case 'locationAddress':
        if (locationX is Address) {
          fields.add(locationX!);
        }
      case 'locationReference':
        if (locationX is Reference) {
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'sequence':
        {
          if (child is FhirPositiveInt) {
            return copyWith(sequence: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'careTeamSequence':
        {
          if (child is List<FhirPositiveInt>) {
            // Add all elements from passed list
            final newList = [...?careTeamSequence, ...child];
            return copyWith(careTeamSequence: newList);
          } else if (child is FhirPositiveInt) {
            // Add single element to existing list or create new list
            final newList = [
              ...?careTeamSequence,
              child,
            ];
            return copyWith(careTeamSequence: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'diagnosisSequence':
        {
          if (child is List<FhirPositiveInt>) {
            // Add all elements from passed list
            final newList = [...?diagnosisSequence, ...child];
            return copyWith(diagnosisSequence: newList);
          } else if (child is FhirPositiveInt) {
            // Add single element to existing list or create new list
            final newList = [
              ...?diagnosisSequence,
              child,
            ];
            return copyWith(diagnosisSequence: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'procedureSequence':
        {
          if (child is List<FhirPositiveInt>) {
            // Add all elements from passed list
            final newList = [...?procedureSequence, ...child];
            return copyWith(procedureSequence: newList);
          } else if (child is FhirPositiveInt) {
            // Add single element to existing list or create new list
            final newList = [
              ...?procedureSequence,
              child,
            ];
            return copyWith(procedureSequence: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'informationSequence':
        {
          if (child is List<FhirPositiveInt>) {
            // Add all elements from passed list
            final newList = [...?informationSequence, ...child];
            return copyWith(informationSequence: newList);
          } else if (child is FhirPositiveInt) {
            // Add single element to existing list or create new list
            final newList = [
              ...?informationSequence,
              child,
            ];
            return copyWith(informationSequence: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'revenue':
        {
          if (child is CodeableConcept) {
            return copyWith(revenue: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'category':
        {
          if (child is CodeableConcept) {
            return copyWith(category: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'productOrService':
        {
          if (child is CodeableConcept) {
            return copyWith(productOrService: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifier':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?modifier, ...child];
            return copyWith(modifier: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifier,
              child,
            ];
            return copyWith(modifier: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'programCode':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?programCode, ...child];
            return copyWith(programCode: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [
              ...?programCode,
              child,
            ];
            return copyWith(programCode: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'servicedX':
        {
          if (child is ServicedXExplanationOfBenefitItem) {
            return copyWith(servicedX: child);
          } else {
            if (child is FhirDate) {
              return copyWith(servicedX: child);
            }
            if (child is Period) {
              return copyWith(servicedX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'servicedFhirDate':
        {
          if (child is FhirDate) {
            return copyWith(servicedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'servicedPeriod':
        {
          if (child is Period) {
            return copyWith(servicedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'locationX':
        {
          if (child is LocationXExplanationOfBenefitItem) {
            return copyWith(locationX: child);
          } else {
            if (child is CodeableConcept) {
              return copyWith(locationX: child);
            }
            if (child is Address) {
              return copyWith(locationX: child);
            }
            if (child is Reference) {
              return copyWith(locationX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'locationCodeableConcept':
        {
          if (child is CodeableConcept) {
            return copyWith(locationX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'locationAddress':
        {
          if (child is Address) {
            return copyWith(locationX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'locationReference':
        {
          if (child is Reference) {
            return copyWith(locationX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'quantity':
        {
          if (child is Quantity) {
            return copyWith(quantity: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'unitPrice':
        {
          if (child is Money) {
            return copyWith(unitPrice: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'factor':
        {
          if (child is FhirDecimal) {
            return copyWith(factor: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'net':
        {
          if (child is Money) {
            return copyWith(net: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'udi':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?udi, ...child];
            return copyWith(udi: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [
              ...?udi,
              child,
            ];
            return copyWith(udi: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'bodySite':
        {
          if (child is CodeableConcept) {
            return copyWith(bodySite: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subSite':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?subSite, ...child];
            return copyWith(subSite: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [
              ...?subSite,
              child,
            ];
            return copyWith(subSite: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'encounter':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?encounter, ...child];
            return copyWith(encounter: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [
              ...?encounter,
              child,
            ];
            return copyWith(encounter: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'noteNumber':
        {
          if (child is List<FhirPositiveInt>) {
            // Add all elements from passed list
            final newList = [...?noteNumber, ...child];
            return copyWith(noteNumber: newList);
          } else if (child is FhirPositiveInt) {
            // Add single element to existing list or create new list
            final newList = [
              ...?noteNumber,
              child,
            ];
            return copyWith(noteNumber: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'adjudication':
        {
          if (child is List<ExplanationOfBenefitAdjudication>) {
            // Add all elements from passed list
            final newList = [...?adjudication, ...child];
            return copyWith(adjudication: newList);
          } else if (child is ExplanationOfBenefitAdjudication) {
            // Add single element to existing list or create new list
            final newList = [
              ...?adjudication,
              child,
            ];
            return copyWith(adjudication: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'detail':
        {
          if (child is List<ExplanationOfBenefitDetail>) {
            // Add all elements from passed list
            final newList = [...?detail, ...child];
            return copyWith(detail: newList);
          } else if (child is ExplanationOfBenefitDetail) {
            // Add single element to existing list or create new list
            final newList = [
              ...?detail,
              child,
            ];
            return copyWith(detail: newList);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'sequence':
        return ['FhirPositiveInt'];
      case 'careTeamSequence':
        return ['FhirPositiveInt'];
      case 'diagnosisSequence':
        return ['FhirPositiveInt'];
      case 'procedureSequence':
        return ['FhirPositiveInt'];
      case 'informationSequence':
        return ['FhirPositiveInt'];
      case 'revenue':
        return ['CodeableConcept'];
      case 'category':
        return ['CodeableConcept'];
      case 'productOrService':
        return ['CodeableConcept'];
      case 'modifier':
        return ['CodeableConcept'];
      case 'programCode':
        return ['CodeableConcept'];
      case 'serviced':
      case 'servicedX':
        return [
          'FhirDate',
          'Period',
        ];
      case 'servicedDate':
        return ['FhirDate'];
      case 'servicedPeriod':
        return ['Period'];
      case 'location':
      case 'locationX':
        return [
          'CodeableConcept',
          'Address',
          'Reference',
        ];
      case 'locationCodeableConcept':
        return ['CodeableConcept'];
      case 'locationAddress':
        return ['Address'];
      case 'locationReference':
        return ['Reference'];
      case 'quantity':
        return ['Quantity'];
      case 'unitPrice':
        return ['Money'];
      case 'factor':
        return ['FhirDecimal'];
      case 'net':
        return ['Money'];
      case 'udi':
        return ['Reference'];
      case 'bodySite':
        return ['CodeableConcept'];
      case 'subSite':
        return ['CodeableConcept'];
      case 'encounter':
        return ['Reference'];
      case 'noteNumber':
        return ['FhirPositiveInt'];
      case 'adjudication':
        return ['ExplanationOfBenefitAdjudication'];
      case 'detail':
        return ['ExplanationOfBenefitDetail'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitItem]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ExplanationOfBenefitItem createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'sequence':
        {
          return copyWith(
            sequence: FhirPositiveInt.empty(),
          );
        }
      case 'careTeamSequence':
        {
          return copyWith(
            careTeamSequence: <FhirPositiveInt>[],
          );
        }
      case 'diagnosisSequence':
        {
          return copyWith(
            diagnosisSequence: <FhirPositiveInt>[],
          );
        }
      case 'procedureSequence':
        {
          return copyWith(
            procedureSequence: <FhirPositiveInt>[],
          );
        }
      case 'informationSequence':
        {
          return copyWith(
            informationSequence: <FhirPositiveInt>[],
          );
        }
      case 'revenue':
        {
          return copyWith(
            revenue: CodeableConcept.empty(),
          );
        }
      case 'category':
        {
          return copyWith(
            category: CodeableConcept.empty(),
          );
        }
      case 'productOrService':
        {
          return copyWith(
            productOrService: CodeableConcept.empty(),
          );
        }
      case 'modifier':
        {
          return copyWith(
            modifier: <CodeableConcept>[],
          );
        }
      case 'programCode':
        {
          return copyWith(
            programCode: <CodeableConcept>[],
          );
        }
      case 'serviced':
      case 'servicedX':
      case 'servicedDate':
        {
          return copyWith(
            servicedX: FhirDate.empty(),
          );
        }
      case 'servicedPeriod':
        {
          return copyWith(
            servicedX: Period.empty(),
          );
        }
      case 'location':
      case 'locationX':
      case 'locationCodeableConcept':
        {
          return copyWith(
            locationX: CodeableConcept.empty(),
          );
        }
      case 'locationAddress':
        {
          return copyWith(
            locationX: Address.empty(),
          );
        }
      case 'locationReference':
        {
          return copyWith(
            locationX: Reference.empty(),
          );
        }
      case 'quantity':
        {
          return copyWith(
            quantity: Quantity.empty(),
          );
        }
      case 'unitPrice':
        {
          return copyWith(
            unitPrice: Money.empty(),
          );
        }
      case 'factor':
        {
          return copyWith(
            factor: FhirDecimal.empty(),
          );
        }
      case 'net':
        {
          return copyWith(
            net: Money.empty(),
          );
        }
      case 'udi':
        {
          return copyWith(
            udi: <Reference>[],
          );
        }
      case 'bodySite':
        {
          return copyWith(
            bodySite: CodeableConcept.empty(),
          );
        }
      case 'subSite':
        {
          return copyWith(
            subSite: <CodeableConcept>[],
          );
        }
      case 'encounter':
        {
          return copyWith(
            encounter: <Reference>[],
          );
        }
      case 'noteNumber':
        {
          return copyWith(
            noteNumber: <FhirPositiveInt>[],
          );
        }
      case 'adjudication':
        {
          return copyWith(
            adjudication: <ExplanationOfBenefitAdjudication>[],
          );
        }
      case 'detail':
        {
          return copyWith(
            detail: <ExplanationOfBenefitDetail>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ExplanationOfBenefitItem clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool careTeamSequence = false,
    bool diagnosisSequence = false,
    bool procedureSequence = false,
    bool informationSequence = false,
    bool revenue = false,
    bool category = false,
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
    return ExplanationOfBenefitItem(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      sequence: sequence,
      careTeamSequence: careTeamSequence ? null : this.careTeamSequence,
      diagnosisSequence: diagnosisSequence ? null : this.diagnosisSequence,
      procedureSequence: procedureSequence ? null : this.procedureSequence,
      informationSequence:
          informationSequence ? null : this.informationSequence,
      revenue: revenue ? null : this.revenue,
      category: category ? null : this.category,
      productOrService: productOrService,
      modifier: modifier ? null : this.modifier,
      programCode: programCode ? null : this.programCode,
      servicedX: serviced ? null : servicedX,
      locationX: location ? null : locationX,
      quantity: quantity ? null : this.quantity,
      unitPrice: unitPrice ? null : this.unitPrice,
      factor: factor ? null : this.factor,
      net: net ? null : this.net,
      udi: udi ? null : this.udi,
      bodySite: bodySite ? null : this.bodySite,
      subSite: subSite ? null : this.subSite,
      encounter: encounter ? null : this.encounter,
      noteNumber: noteNumber ? null : this.noteNumber,
      adjudication: adjudication ? null : this.adjudication,
      detail: detail ? null : this.detail,
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ExplanationOfBenefitItem(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      sequence: sequence?.copyWith(
            objectPath: '$newObjectPath.sequence',
          ) ??
          this.sequence,
      careTeamSequence: careTeamSequence
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.careTeamSequence',
                ),
              )
              .toList() ??
          this.careTeamSequence,
      diagnosisSequence: diagnosisSequence
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.diagnosisSequence',
                ),
              )
              .toList() ??
          this.diagnosisSequence,
      procedureSequence: procedureSequence
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.procedureSequence',
                ),
              )
              .toList() ??
          this.procedureSequence,
      informationSequence: informationSequence
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.informationSequence',
                ),
              )
              .toList() ??
          this.informationSequence,
      revenue: revenue?.copyWith(
            objectPath: '$newObjectPath.revenue',
          ) ??
          this.revenue,
      category: category?.copyWith(
            objectPath: '$newObjectPath.category',
          ) ??
          this.category,
      productOrService: productOrService?.copyWith(
            objectPath: '$newObjectPath.productOrService',
          ) ??
          this.productOrService,
      modifier: modifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifier',
                ),
              )
              .toList() ??
          this.modifier,
      programCode: programCode
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.programCode',
                ),
              )
              .toList() ??
          this.programCode,
      servicedX: servicedX?.copyWith(
            objectPath: '$newObjectPath.servicedX',
          ) as ServicedXExplanationOfBenefitItem? ??
          this.servicedX,
      locationX: locationX?.copyWith(
            objectPath: '$newObjectPath.locationX',
          ) as LocationXExplanationOfBenefitItem? ??
          this.locationX,
      quantity: quantity?.copyWith(
            objectPath: '$newObjectPath.quantity',
          ) ??
          this.quantity,
      unitPrice: unitPrice?.copyWith(
            objectPath: '$newObjectPath.unitPrice',
          ) ??
          this.unitPrice,
      factor: factor?.copyWith(
            objectPath: '$newObjectPath.factor',
          ) ??
          this.factor,
      net: net?.copyWith(
            objectPath: '$newObjectPath.net',
          ) ??
          this.net,
      udi: udi
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.udi',
                ),
              )
              .toList() ??
          this.udi,
      bodySite: bodySite?.copyWith(
            objectPath: '$newObjectPath.bodySite',
          ) ??
          this.bodySite,
      subSite: subSite
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.subSite',
                ),
              )
              .toList() ??
          this.subSite,
      encounter: encounter
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.encounter',
                ),
              )
              .toList() ??
          this.encounter,
      noteNumber: noteNumber
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.noteNumber',
                ),
              )
              .toList() ??
          this.noteNumber,
      adjudication: adjudication
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.adjudication',
                ),
              )
              .toList() ??
          this.adjudication,
      detail: detail
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.detail',
                ),
              )
              .toList() ??
          this.detail,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ExplanationOfBenefitItem) {
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
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
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
    if (!listEquals<FhirPositiveInt>(
      careTeamSequence,
      o.careTeamSequence,
    )) {
      return false;
    }
    if (!listEquals<FhirPositiveInt>(
      diagnosisSequence,
      o.diagnosisSequence,
    )) {
      return false;
    }
    if (!listEquals<FhirPositiveInt>(
      procedureSequence,
      o.procedureSequence,
    )) {
      return false;
    }
    if (!listEquals<FhirPositiveInt>(
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
    if (!listEquals<CodeableConcept>(
      modifier,
      o.modifier,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
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
    if (!listEquals<Reference>(
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
    if (!listEquals<CodeableConcept>(
      subSite,
      o.subSite,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      encounter,
      o.encounter,
    )) {
      return false;
    }
    if (!listEquals<FhirPositiveInt>(
      noteNumber,
      o.noteNumber,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitAdjudication>(
      adjudication,
      o.adjudication,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitDetail>(
      detail,
      o.detail,
    )) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'ExplanationOfBenefit.item.adjudication',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ExplanationOfBenefitAdjudication.empty() =>
      ExplanationOfBenefitAdjudication(
        category: CodeableConcept.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitAdjudication.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.item.adjudication';
    return ExplanationOfBenefitAdjudication(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      category: JsonParser.parseObject<CodeableConcept>(
        json,
        'category',
        CodeableConcept.fromJson,
        '$objectPath.category',
      )!,
      reason: JsonParser.parseObject<CodeableConcept>(
        json,
        'reason',
        CodeableConcept.fromJson,
        '$objectPath.reason',
      ),
      amount: JsonParser.parseObject<Money>(
        json,
        'amount',
        Money.fromJson,
        '$objectPath.amount',
      ),
      value: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'value',
        FhirDecimal.fromJson,
        '$objectPath.value',
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
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitAdjudication.fromJson(json);
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

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'category',
      category,
    );
    addField(
      'reason',
      reason,
    );
    addField(
      'amount',
      amount,
    );
    addField(
      'value',
      value,
    );
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
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
        fields.add(category);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'category':
        {
          if (child is CodeableConcept) {
            return copyWith(category: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reason':
        {
          if (child is CodeableConcept) {
            return copyWith(reason: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'amount':
        {
          if (child is Money) {
            return copyWith(amount: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'value':
        {
          if (child is FhirDecimal) {
            return copyWith(value: child);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'category':
        return ['CodeableConcept'];
      case 'reason':
        return ['CodeableConcept'];
      case 'amount':
        return ['Money'];
      case 'value':
        return ['FhirDecimal'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitAdjudication]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ExplanationOfBenefitAdjudication createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'category':
        {
          return copyWith(
            category: CodeableConcept.empty(),
          );
        }
      case 'reason':
        {
          return copyWith(
            reason: CodeableConcept.empty(),
          );
        }
      case 'amount':
        {
          return copyWith(
            amount: Money.empty(),
          );
        }
      case 'value':
        {
          return copyWith(
            value: FhirDecimal.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ExplanationOfBenefitAdjudication clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool reason = false,
    bool amount = false,
    bool value = false,
  }) {
    return ExplanationOfBenefitAdjudication(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      category: category,
      reason: reason ? null : this.reason,
      amount: amount ? null : this.amount,
      value: value ? null : this.value,
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ExplanationOfBenefitAdjudication(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      category: category?.copyWith(
            objectPath: '$newObjectPath.category',
          ) ??
          this.category,
      reason: reason?.copyWith(
            objectPath: '$newObjectPath.reason',
          ) ??
          this.reason,
      amount: amount?.copyWith(
            objectPath: '$newObjectPath.amount',
          ) ??
          this.amount,
      value: value?.copyWith(
            objectPath: '$newObjectPath.value',
          ) ??
          this.value,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ExplanationOfBenefitAdjudication) {
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
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
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
  }) : super(
          objectPath: 'ExplanationOfBenefit.item.detail',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ExplanationOfBenefitDetail.empty() => ExplanationOfBenefitDetail(
        sequence: FhirPositiveInt.empty(),
        productOrService: CodeableConcept.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitDetail.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.item.detail';
    return ExplanationOfBenefitDetail(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      sequence: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'sequence',
        FhirPositiveInt.fromJson,
        '$objectPath.sequence',
      )!,
      revenue: JsonParser.parseObject<CodeableConcept>(
        json,
        'revenue',
        CodeableConcept.fromJson,
        '$objectPath.revenue',
      ),
      category: JsonParser.parseObject<CodeableConcept>(
        json,
        'category',
        CodeableConcept.fromJson,
        '$objectPath.category',
      ),
      productOrService: JsonParser.parseObject<CodeableConcept>(
        json,
        'productOrService',
        CodeableConcept.fromJson,
        '$objectPath.productOrService',
      )!,
      modifier: (json['modifier'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifier',
              },
            ),
          )
          .toList(),
      programCode: (json['programCode'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.programCode',
              },
            ),
          )
          .toList(),
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
        '$objectPath.quantity',
      ),
      unitPrice: JsonParser.parseObject<Money>(
        json,
        'unitPrice',
        Money.fromJson,
        '$objectPath.unitPrice',
      ),
      factor: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'factor',
        FhirDecimal.fromJson,
        '$objectPath.factor',
      ),
      net: JsonParser.parseObject<Money>(
        json,
        'net',
        Money.fromJson,
        '$objectPath.net',
      ),
      udi: (json['udi'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.udi',
              },
            ),
          )
          .toList(),
      noteNumber: JsonParser.parsePrimitiveList<FhirPositiveInt>(
        json,
        'noteNumber',
        FhirPositiveInt.fromJson,
        '$objectPath.noteNumber',
      ),
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitAdjudication>(
            (v) => ExplanationOfBenefitAdjudication.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.adjudication',
              },
            ),
          )
          .toList(),
      subDetail: (json['subDetail'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitSubDetail>(
            (v) => ExplanationOfBenefitSubDetail.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.subDetail',
              },
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
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitDetail.fromJson(json);
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

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'sequence',
      sequence,
    );
    addField(
      'revenue',
      revenue,
    );
    addField(
      'category',
      category,
    );
    addField(
      'productOrService',
      productOrService,
    );
    addField(
      'modifier',
      modifier,
    );
    addField(
      'programCode',
      programCode,
    );
    addField(
      'quantity',
      quantity,
    );
    addField(
      'unitPrice',
      unitPrice,
    );
    addField(
      'factor',
      factor,
    );
    addField(
      'net',
      net,
    );
    addField(
      'udi',
      udi,
    );
    addField(
      'noteNumber',
      noteNumber,
    );
    addField(
      'adjudication',
      adjudication,
    );
    addField(
      'subDetail',
      subDetail,
    );
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
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
        fields.add(sequence);
      case 'revenue':
        if (revenue != null) {
          fields.add(revenue!);
        }
      case 'category':
        if (category != null) {
          fields.add(category!);
        }
      case 'productOrService':
        fields.add(productOrService);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'sequence':
        {
          if (child is FhirPositiveInt) {
            return copyWith(sequence: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'revenue':
        {
          if (child is CodeableConcept) {
            return copyWith(revenue: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'category':
        {
          if (child is CodeableConcept) {
            return copyWith(category: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'productOrService':
        {
          if (child is CodeableConcept) {
            return copyWith(productOrService: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifier':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?modifier, ...child];
            return copyWith(modifier: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifier,
              child,
            ];
            return copyWith(modifier: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'programCode':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?programCode, ...child];
            return copyWith(programCode: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [
              ...?programCode,
              child,
            ];
            return copyWith(programCode: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'quantity':
        {
          if (child is Quantity) {
            return copyWith(quantity: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'unitPrice':
        {
          if (child is Money) {
            return copyWith(unitPrice: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'factor':
        {
          if (child is FhirDecimal) {
            return copyWith(factor: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'net':
        {
          if (child is Money) {
            return copyWith(net: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'udi':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?udi, ...child];
            return copyWith(udi: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [
              ...?udi,
              child,
            ];
            return copyWith(udi: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'noteNumber':
        {
          if (child is List<FhirPositiveInt>) {
            // Add all elements from passed list
            final newList = [...?noteNumber, ...child];
            return copyWith(noteNumber: newList);
          } else if (child is FhirPositiveInt) {
            // Add single element to existing list or create new list
            final newList = [
              ...?noteNumber,
              child,
            ];
            return copyWith(noteNumber: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'adjudication':
        {
          if (child is List<ExplanationOfBenefitAdjudication>) {
            // Add all elements from passed list
            final newList = [...?adjudication, ...child];
            return copyWith(adjudication: newList);
          } else if (child is ExplanationOfBenefitAdjudication) {
            // Add single element to existing list or create new list
            final newList = [
              ...?adjudication,
              child,
            ];
            return copyWith(adjudication: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subDetail':
        {
          if (child is List<ExplanationOfBenefitSubDetail>) {
            // Add all elements from passed list
            final newList = [...?subDetail, ...child];
            return copyWith(subDetail: newList);
          } else if (child is ExplanationOfBenefitSubDetail) {
            // Add single element to existing list or create new list
            final newList = [
              ...?subDetail,
              child,
            ];
            return copyWith(subDetail: newList);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'sequence':
        return ['FhirPositiveInt'];
      case 'revenue':
        return ['CodeableConcept'];
      case 'category':
        return ['CodeableConcept'];
      case 'productOrService':
        return ['CodeableConcept'];
      case 'modifier':
        return ['CodeableConcept'];
      case 'programCode':
        return ['CodeableConcept'];
      case 'quantity':
        return ['Quantity'];
      case 'unitPrice':
        return ['Money'];
      case 'factor':
        return ['FhirDecimal'];
      case 'net':
        return ['Money'];
      case 'udi':
        return ['Reference'];
      case 'noteNumber':
        return ['FhirPositiveInt'];
      case 'adjudication':
        return ['ExplanationOfBenefitAdjudication'];
      case 'subDetail':
        return ['ExplanationOfBenefitSubDetail'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitDetail]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ExplanationOfBenefitDetail createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'sequence':
        {
          return copyWith(
            sequence: FhirPositiveInt.empty(),
          );
        }
      case 'revenue':
        {
          return copyWith(
            revenue: CodeableConcept.empty(),
          );
        }
      case 'category':
        {
          return copyWith(
            category: CodeableConcept.empty(),
          );
        }
      case 'productOrService':
        {
          return copyWith(
            productOrService: CodeableConcept.empty(),
          );
        }
      case 'modifier':
        {
          return copyWith(
            modifier: <CodeableConcept>[],
          );
        }
      case 'programCode':
        {
          return copyWith(
            programCode: <CodeableConcept>[],
          );
        }
      case 'quantity':
        {
          return copyWith(
            quantity: Quantity.empty(),
          );
        }
      case 'unitPrice':
        {
          return copyWith(
            unitPrice: Money.empty(),
          );
        }
      case 'factor':
        {
          return copyWith(
            factor: FhirDecimal.empty(),
          );
        }
      case 'net':
        {
          return copyWith(
            net: Money.empty(),
          );
        }
      case 'udi':
        {
          return copyWith(
            udi: <Reference>[],
          );
        }
      case 'noteNumber':
        {
          return copyWith(
            noteNumber: <FhirPositiveInt>[],
          );
        }
      case 'adjudication':
        {
          return copyWith(
            adjudication: <ExplanationOfBenefitAdjudication>[],
          );
        }
      case 'subDetail':
        {
          return copyWith(
            subDetail: <ExplanationOfBenefitSubDetail>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ExplanationOfBenefitDetail clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool revenue = false,
    bool category = false,
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
    return ExplanationOfBenefitDetail(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      sequence: sequence,
      revenue: revenue ? null : this.revenue,
      category: category ? null : this.category,
      productOrService: productOrService,
      modifier: modifier ? null : this.modifier,
      programCode: programCode ? null : this.programCode,
      quantity: quantity ? null : this.quantity,
      unitPrice: unitPrice ? null : this.unitPrice,
      factor: factor ? null : this.factor,
      net: net ? null : this.net,
      udi: udi ? null : this.udi,
      noteNumber: noteNumber ? null : this.noteNumber,
      adjudication: adjudication ? null : this.adjudication,
      subDetail: subDetail ? null : this.subDetail,
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ExplanationOfBenefitDetail(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      sequence: sequence?.copyWith(
            objectPath: '$newObjectPath.sequence',
          ) ??
          this.sequence,
      revenue: revenue?.copyWith(
            objectPath: '$newObjectPath.revenue',
          ) ??
          this.revenue,
      category: category?.copyWith(
            objectPath: '$newObjectPath.category',
          ) ??
          this.category,
      productOrService: productOrService?.copyWith(
            objectPath: '$newObjectPath.productOrService',
          ) ??
          this.productOrService,
      modifier: modifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifier',
                ),
              )
              .toList() ??
          this.modifier,
      programCode: programCode
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.programCode',
                ),
              )
              .toList() ??
          this.programCode,
      quantity: quantity?.copyWith(
            objectPath: '$newObjectPath.quantity',
          ) ??
          this.quantity,
      unitPrice: unitPrice?.copyWith(
            objectPath: '$newObjectPath.unitPrice',
          ) ??
          this.unitPrice,
      factor: factor?.copyWith(
            objectPath: '$newObjectPath.factor',
          ) ??
          this.factor,
      net: net?.copyWith(
            objectPath: '$newObjectPath.net',
          ) ??
          this.net,
      udi: udi
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.udi',
                ),
              )
              .toList() ??
          this.udi,
      noteNumber: noteNumber
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.noteNumber',
                ),
              )
              .toList() ??
          this.noteNumber,
      adjudication: adjudication
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.adjudication',
                ),
              )
              .toList() ??
          this.adjudication,
      subDetail: subDetail
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.subDetail',
                ),
              )
              .toList() ??
          this.subDetail,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ExplanationOfBenefitDetail) {
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
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
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
    if (!listEquals<CodeableConcept>(
      modifier,
      o.modifier,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
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
    if (!listEquals<Reference>(
      udi,
      o.udi,
    )) {
      return false;
    }
    if (!listEquals<FhirPositiveInt>(
      noteNumber,
      o.noteNumber,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitAdjudication>(
      adjudication,
      o.adjudication,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitSubDetail>(
      subDetail,
      o.subDetail,
    )) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'ExplanationOfBenefit.item.detail.subDetail',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ExplanationOfBenefitSubDetail.empty() =>
      ExplanationOfBenefitSubDetail(
        sequence: FhirPositiveInt.empty(),
        productOrService: CodeableConcept.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitSubDetail.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.item.detail.subDetail';
    return ExplanationOfBenefitSubDetail(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      sequence: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'sequence',
        FhirPositiveInt.fromJson,
        '$objectPath.sequence',
      )!,
      revenue: JsonParser.parseObject<CodeableConcept>(
        json,
        'revenue',
        CodeableConcept.fromJson,
        '$objectPath.revenue',
      ),
      category: JsonParser.parseObject<CodeableConcept>(
        json,
        'category',
        CodeableConcept.fromJson,
        '$objectPath.category',
      ),
      productOrService: JsonParser.parseObject<CodeableConcept>(
        json,
        'productOrService',
        CodeableConcept.fromJson,
        '$objectPath.productOrService',
      )!,
      modifier: (json['modifier'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifier',
              },
            ),
          )
          .toList(),
      programCode: (json['programCode'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.programCode',
              },
            ),
          )
          .toList(),
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
        '$objectPath.quantity',
      ),
      unitPrice: JsonParser.parseObject<Money>(
        json,
        'unitPrice',
        Money.fromJson,
        '$objectPath.unitPrice',
      ),
      factor: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'factor',
        FhirDecimal.fromJson,
        '$objectPath.factor',
      ),
      net: JsonParser.parseObject<Money>(
        json,
        'net',
        Money.fromJson,
        '$objectPath.net',
      ),
      udi: (json['udi'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.udi',
              },
            ),
          )
          .toList(),
      noteNumber: JsonParser.parsePrimitiveList<FhirPositiveInt>(
        json,
        'noteNumber',
        FhirPositiveInt.fromJson,
        '$objectPath.noteNumber',
      ),
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitAdjudication>(
            (v) => ExplanationOfBenefitAdjudication.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.adjudication',
              },
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
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitSubDetail.fromJson(json);
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

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'sequence',
      sequence,
    );
    addField(
      'revenue',
      revenue,
    );
    addField(
      'category',
      category,
    );
    addField(
      'productOrService',
      productOrService,
    );
    addField(
      'modifier',
      modifier,
    );
    addField(
      'programCode',
      programCode,
    );
    addField(
      'quantity',
      quantity,
    );
    addField(
      'unitPrice',
      unitPrice,
    );
    addField(
      'factor',
      factor,
    );
    addField(
      'net',
      net,
    );
    addField(
      'udi',
      udi,
    );
    addField(
      'noteNumber',
      noteNumber,
    );
    addField(
      'adjudication',
      adjudication,
    );
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
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
        fields.add(sequence);
      case 'revenue':
        if (revenue != null) {
          fields.add(revenue!);
        }
      case 'category':
        if (category != null) {
          fields.add(category!);
        }
      case 'productOrService':
        fields.add(productOrService);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'sequence':
        {
          if (child is FhirPositiveInt) {
            return copyWith(sequence: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'revenue':
        {
          if (child is CodeableConcept) {
            return copyWith(revenue: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'category':
        {
          if (child is CodeableConcept) {
            return copyWith(category: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'productOrService':
        {
          if (child is CodeableConcept) {
            return copyWith(productOrService: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifier':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?modifier, ...child];
            return copyWith(modifier: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifier,
              child,
            ];
            return copyWith(modifier: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'programCode':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?programCode, ...child];
            return copyWith(programCode: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [
              ...?programCode,
              child,
            ];
            return copyWith(programCode: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'quantity':
        {
          if (child is Quantity) {
            return copyWith(quantity: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'unitPrice':
        {
          if (child is Money) {
            return copyWith(unitPrice: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'factor':
        {
          if (child is FhirDecimal) {
            return copyWith(factor: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'net':
        {
          if (child is Money) {
            return copyWith(net: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'udi':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?udi, ...child];
            return copyWith(udi: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [
              ...?udi,
              child,
            ];
            return copyWith(udi: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'noteNumber':
        {
          if (child is List<FhirPositiveInt>) {
            // Add all elements from passed list
            final newList = [...?noteNumber, ...child];
            return copyWith(noteNumber: newList);
          } else if (child is FhirPositiveInt) {
            // Add single element to existing list or create new list
            final newList = [
              ...?noteNumber,
              child,
            ];
            return copyWith(noteNumber: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'adjudication':
        {
          if (child is List<ExplanationOfBenefitAdjudication>) {
            // Add all elements from passed list
            final newList = [...?adjudication, ...child];
            return copyWith(adjudication: newList);
          } else if (child is ExplanationOfBenefitAdjudication) {
            // Add single element to existing list or create new list
            final newList = [
              ...?adjudication,
              child,
            ];
            return copyWith(adjudication: newList);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'sequence':
        return ['FhirPositiveInt'];
      case 'revenue':
        return ['CodeableConcept'];
      case 'category':
        return ['CodeableConcept'];
      case 'productOrService':
        return ['CodeableConcept'];
      case 'modifier':
        return ['CodeableConcept'];
      case 'programCode':
        return ['CodeableConcept'];
      case 'quantity':
        return ['Quantity'];
      case 'unitPrice':
        return ['Money'];
      case 'factor':
        return ['FhirDecimal'];
      case 'net':
        return ['Money'];
      case 'udi':
        return ['Reference'];
      case 'noteNumber':
        return ['FhirPositiveInt'];
      case 'adjudication':
        return ['ExplanationOfBenefitAdjudication'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitSubDetail]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ExplanationOfBenefitSubDetail createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'sequence':
        {
          return copyWith(
            sequence: FhirPositiveInt.empty(),
          );
        }
      case 'revenue':
        {
          return copyWith(
            revenue: CodeableConcept.empty(),
          );
        }
      case 'category':
        {
          return copyWith(
            category: CodeableConcept.empty(),
          );
        }
      case 'productOrService':
        {
          return copyWith(
            productOrService: CodeableConcept.empty(),
          );
        }
      case 'modifier':
        {
          return copyWith(
            modifier: <CodeableConcept>[],
          );
        }
      case 'programCode':
        {
          return copyWith(
            programCode: <CodeableConcept>[],
          );
        }
      case 'quantity':
        {
          return copyWith(
            quantity: Quantity.empty(),
          );
        }
      case 'unitPrice':
        {
          return copyWith(
            unitPrice: Money.empty(),
          );
        }
      case 'factor':
        {
          return copyWith(
            factor: FhirDecimal.empty(),
          );
        }
      case 'net':
        {
          return copyWith(
            net: Money.empty(),
          );
        }
      case 'udi':
        {
          return copyWith(
            udi: <Reference>[],
          );
        }
      case 'noteNumber':
        {
          return copyWith(
            noteNumber: <FhirPositiveInt>[],
          );
        }
      case 'adjudication':
        {
          return copyWith(
            adjudication: <ExplanationOfBenefitAdjudication>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ExplanationOfBenefitSubDetail clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool revenue = false,
    bool category = false,
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
    return ExplanationOfBenefitSubDetail(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      sequence: sequence,
      revenue: revenue ? null : this.revenue,
      category: category ? null : this.category,
      productOrService: productOrService,
      modifier: modifier ? null : this.modifier,
      programCode: programCode ? null : this.programCode,
      quantity: quantity ? null : this.quantity,
      unitPrice: unitPrice ? null : this.unitPrice,
      factor: factor ? null : this.factor,
      net: net ? null : this.net,
      udi: udi ? null : this.udi,
      noteNumber: noteNumber ? null : this.noteNumber,
      adjudication: adjudication ? null : this.adjudication,
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ExplanationOfBenefitSubDetail(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      sequence: sequence?.copyWith(
            objectPath: '$newObjectPath.sequence',
          ) ??
          this.sequence,
      revenue: revenue?.copyWith(
            objectPath: '$newObjectPath.revenue',
          ) ??
          this.revenue,
      category: category?.copyWith(
            objectPath: '$newObjectPath.category',
          ) ??
          this.category,
      productOrService: productOrService?.copyWith(
            objectPath: '$newObjectPath.productOrService',
          ) ??
          this.productOrService,
      modifier: modifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifier',
                ),
              )
              .toList() ??
          this.modifier,
      programCode: programCode
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.programCode',
                ),
              )
              .toList() ??
          this.programCode,
      quantity: quantity?.copyWith(
            objectPath: '$newObjectPath.quantity',
          ) ??
          this.quantity,
      unitPrice: unitPrice?.copyWith(
            objectPath: '$newObjectPath.unitPrice',
          ) ??
          this.unitPrice,
      factor: factor?.copyWith(
            objectPath: '$newObjectPath.factor',
          ) ??
          this.factor,
      net: net?.copyWith(
            objectPath: '$newObjectPath.net',
          ) ??
          this.net,
      udi: udi
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.udi',
                ),
              )
              .toList() ??
          this.udi,
      noteNumber: noteNumber
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.noteNumber',
                ),
              )
              .toList() ??
          this.noteNumber,
      adjudication: adjudication
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.adjudication',
                ),
              )
              .toList() ??
          this.adjudication,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ExplanationOfBenefitSubDetail) {
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
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
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
    if (!listEquals<CodeableConcept>(
      modifier,
      o.modifier,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
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
    if (!listEquals<Reference>(
      udi,
      o.udi,
    )) {
      return false;
    }
    if (!listEquals<FhirPositiveInt>(
      noteNumber,
      o.noteNumber,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitAdjudication>(
      adjudication,
      o.adjudication,
    )) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'ExplanationOfBenefit.addItem',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ExplanationOfBenefitAddItem.empty() => ExplanationOfBenefitAddItem(
        productOrService: CodeableConcept.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitAddItem.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.addItem';
    return ExplanationOfBenefitAddItem(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      itemSequence: JsonParser.parsePrimitiveList<FhirPositiveInt>(
        json,
        'itemSequence',
        FhirPositiveInt.fromJson,
        '$objectPath.itemSequence',
      ),
      detailSequence: JsonParser.parsePrimitiveList<FhirPositiveInt>(
        json,
        'detailSequence',
        FhirPositiveInt.fromJson,
        '$objectPath.detailSequence',
      ),
      subDetailSequence: JsonParser.parsePrimitiveList<FhirPositiveInt>(
        json,
        'subDetailSequence',
        FhirPositiveInt.fromJson,
        '$objectPath.subDetailSequence',
      ),
      provider: (json['provider'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.provider',
              },
            ),
          )
          .toList(),
      productOrService: JsonParser.parseObject<CodeableConcept>(
        json,
        'productOrService',
        CodeableConcept.fromJson,
        '$objectPath.productOrService',
      )!,
      modifier: (json['modifier'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifier',
              },
            ),
          )
          .toList(),
      programCode: (json['programCode'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.programCode',
              },
            ),
          )
          .toList(),
      servicedX:
          JsonParser.parsePolymorphic<ServicedXExplanationOfBenefitAddItem>(
        json,
        {
          'servicedDate': FhirDate.fromJson,
          'servicedPeriod': Period.fromJson,
        },
        objectPath,
      ),
      locationX:
          JsonParser.parsePolymorphic<LocationXExplanationOfBenefitAddItem>(
        json,
        {
          'locationCodeableConcept': CodeableConcept.fromJson,
          'locationAddress': Address.fromJson,
          'locationReference': Reference.fromJson,
        },
        objectPath,
      ),
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
        '$objectPath.quantity',
      ),
      unitPrice: JsonParser.parseObject<Money>(
        json,
        'unitPrice',
        Money.fromJson,
        '$objectPath.unitPrice',
      ),
      factor: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'factor',
        FhirDecimal.fromJson,
        '$objectPath.factor',
      ),
      net: JsonParser.parseObject<Money>(
        json,
        'net',
        Money.fromJson,
        '$objectPath.net',
      ),
      bodySite: JsonParser.parseObject<CodeableConcept>(
        json,
        'bodySite',
        CodeableConcept.fromJson,
        '$objectPath.bodySite',
      ),
      subSite: (json['subSite'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.subSite',
              },
            ),
          )
          .toList(),
      noteNumber: JsonParser.parsePrimitiveList<FhirPositiveInt>(
        json,
        'noteNumber',
        FhirPositiveInt.fromJson,
        '$objectPath.noteNumber',
      ),
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitAdjudication>(
            (v) => ExplanationOfBenefitAdjudication.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.adjudication',
              },
            ),
          )
          .toList(),
      detail: (json['detail'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitDetail>(
            (v) => ExplanationOfBenefitDetail.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.detail',
              },
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
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitAddItem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Getter for [servicedDate] as a FhirDate
  FhirDate? get servicedDate => servicedX?.isAs<FhirDate>();

  /// Getter for [servicedPeriod] as a Period
  Period? get servicedPeriod => servicedX?.isAs<Period>();

  /// [locationX]
  /// Where the product or service was provided.
  final LocationXExplanationOfBenefitAddItem? locationX;

  /// Getter for [locationCodeableConcept] as a CodeableConcept
  CodeableConcept? get locationCodeableConcept =>
      locationX?.isAs<CodeableConcept>();

  /// Getter for [locationAddress] as a Address
  Address? get locationAddress => locationX?.isAs<Address>();

  /// Getter for [locationReference] as a Reference
  Reference? get locationReference => locationX?.isAs<Reference>();

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

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'itemSequence',
      itemSequence,
    );
    addField(
      'detailSequence',
      detailSequence,
    );
    addField(
      'subDetailSequence',
      subDetailSequence,
    );
    addField(
      'provider',
      provider,
    );
    addField(
      'productOrService',
      productOrService,
    );
    addField(
      'modifier',
      modifier,
    );
    addField(
      'programCode',
      programCode,
    );
    if (servicedX != null) {
      final fhirType = servicedX!.fhirType;
      addField(
        'serviced${fhirType.capitalize()}',
        servicedX,
      );
    }

    if (locationX != null) {
      final fhirType = locationX!.fhirType;
      addField(
        'location${fhirType.capitalize()}',
        locationX,
      );
    }

    addField(
      'quantity',
      quantity,
    );
    addField(
      'unitPrice',
      unitPrice,
    );
    addField(
      'factor',
      factor,
    );
    addField(
      'net',
      net,
    );
    addField(
      'bodySite',
      bodySite,
    );
    addField(
      'subSite',
      subSite,
    );
    addField(
      'noteNumber',
      noteNumber,
    );
    addField(
      'adjudication',
      adjudication,
    );
    addField(
      'detail',
      detail,
    );
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
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
        fields.add(productOrService);
      case 'modifier':
        if (modifier != null) {
          fields.addAll(modifier!);
        }
      case 'programCode':
        if (programCode != null) {
          fields.addAll(programCode!);
        }
      case 'serviced':
        fields.add(servicedX!);
      case 'servicedX':
        fields.add(servicedX!);
      case 'servicedDate':
        if (servicedX is FhirDate) {
          fields.add(servicedX!);
        }
      case 'servicedPeriod':
        if (servicedX is Period) {
          fields.add(servicedX!);
        }
      case 'location':
        fields.add(locationX!);
      case 'locationX':
        fields.add(locationX!);
      case 'locationCodeableConcept':
        if (locationX is CodeableConcept) {
          fields.add(locationX!);
        }
      case 'locationAddress':
        if (locationX is Address) {
          fields.add(locationX!);
        }
      case 'locationReference':
        if (locationX is Reference) {
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'itemSequence':
        {
          if (child is List<FhirPositiveInt>) {
            // Add all elements from passed list
            final newList = [...?itemSequence, ...child];
            return copyWith(itemSequence: newList);
          } else if (child is FhirPositiveInt) {
            // Add single element to existing list or create new list
            final newList = [
              ...?itemSequence,
              child,
            ];
            return copyWith(itemSequence: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'detailSequence':
        {
          if (child is List<FhirPositiveInt>) {
            // Add all elements from passed list
            final newList = [...?detailSequence, ...child];
            return copyWith(detailSequence: newList);
          } else if (child is FhirPositiveInt) {
            // Add single element to existing list or create new list
            final newList = [
              ...?detailSequence,
              child,
            ];
            return copyWith(detailSequence: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subDetailSequence':
        {
          if (child is List<FhirPositiveInt>) {
            // Add all elements from passed list
            final newList = [...?subDetailSequence, ...child];
            return copyWith(subDetailSequence: newList);
          } else if (child is FhirPositiveInt) {
            // Add single element to existing list or create new list
            final newList = [
              ...?subDetailSequence,
              child,
            ];
            return copyWith(subDetailSequence: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'provider':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?provider, ...child];
            return copyWith(provider: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [
              ...?provider,
              child,
            ];
            return copyWith(provider: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'productOrService':
        {
          if (child is CodeableConcept) {
            return copyWith(productOrService: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifier':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?modifier, ...child];
            return copyWith(modifier: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifier,
              child,
            ];
            return copyWith(modifier: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'programCode':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?programCode, ...child];
            return copyWith(programCode: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [
              ...?programCode,
              child,
            ];
            return copyWith(programCode: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'servicedX':
        {
          if (child is ServicedXExplanationOfBenefitAddItem) {
            return copyWith(servicedX: child);
          } else {
            if (child is FhirDate) {
              return copyWith(servicedX: child);
            }
            if (child is Period) {
              return copyWith(servicedX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'servicedFhirDate':
        {
          if (child is FhirDate) {
            return copyWith(servicedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'servicedPeriod':
        {
          if (child is Period) {
            return copyWith(servicedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'locationX':
        {
          if (child is LocationXExplanationOfBenefitAddItem) {
            return copyWith(locationX: child);
          } else {
            if (child is CodeableConcept) {
              return copyWith(locationX: child);
            }
            if (child is Address) {
              return copyWith(locationX: child);
            }
            if (child is Reference) {
              return copyWith(locationX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'locationCodeableConcept':
        {
          if (child is CodeableConcept) {
            return copyWith(locationX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'locationAddress':
        {
          if (child is Address) {
            return copyWith(locationX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'locationReference':
        {
          if (child is Reference) {
            return copyWith(locationX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'quantity':
        {
          if (child is Quantity) {
            return copyWith(quantity: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'unitPrice':
        {
          if (child is Money) {
            return copyWith(unitPrice: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'factor':
        {
          if (child is FhirDecimal) {
            return copyWith(factor: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'net':
        {
          if (child is Money) {
            return copyWith(net: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'bodySite':
        {
          if (child is CodeableConcept) {
            return copyWith(bodySite: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subSite':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?subSite, ...child];
            return copyWith(subSite: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [
              ...?subSite,
              child,
            ];
            return copyWith(subSite: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'noteNumber':
        {
          if (child is List<FhirPositiveInt>) {
            // Add all elements from passed list
            final newList = [...?noteNumber, ...child];
            return copyWith(noteNumber: newList);
          } else if (child is FhirPositiveInt) {
            // Add single element to existing list or create new list
            final newList = [
              ...?noteNumber,
              child,
            ];
            return copyWith(noteNumber: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'adjudication':
        {
          if (child is List<ExplanationOfBenefitAdjudication>) {
            // Add all elements from passed list
            final newList = [...?adjudication, ...child];
            return copyWith(adjudication: newList);
          } else if (child is ExplanationOfBenefitAdjudication) {
            // Add single element to existing list or create new list
            final newList = [
              ...?adjudication,
              child,
            ];
            return copyWith(adjudication: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'detail':
        {
          if (child is List<ExplanationOfBenefitDetail>) {
            // Add all elements from passed list
            final newList = [...?detail, ...child];
            return copyWith(detail: newList);
          } else if (child is ExplanationOfBenefitDetail) {
            // Add single element to existing list or create new list
            final newList = [
              ...?detail,
              child,
            ];
            return copyWith(detail: newList);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'itemSequence':
        return ['FhirPositiveInt'];
      case 'detailSequence':
        return ['FhirPositiveInt'];
      case 'subDetailSequence':
        return ['FhirPositiveInt'];
      case 'provider':
        return ['Reference'];
      case 'productOrService':
        return ['CodeableConcept'];
      case 'modifier':
        return ['CodeableConcept'];
      case 'programCode':
        return ['CodeableConcept'];
      case 'serviced':
      case 'servicedX':
        return [
          'FhirDate',
          'Period',
        ];
      case 'servicedDate':
        return ['FhirDate'];
      case 'servicedPeriod':
        return ['Period'];
      case 'location':
      case 'locationX':
        return [
          'CodeableConcept',
          'Address',
          'Reference',
        ];
      case 'locationCodeableConcept':
        return ['CodeableConcept'];
      case 'locationAddress':
        return ['Address'];
      case 'locationReference':
        return ['Reference'];
      case 'quantity':
        return ['Quantity'];
      case 'unitPrice':
        return ['Money'];
      case 'factor':
        return ['FhirDecimal'];
      case 'net':
        return ['Money'];
      case 'bodySite':
        return ['CodeableConcept'];
      case 'subSite':
        return ['CodeableConcept'];
      case 'noteNumber':
        return ['FhirPositiveInt'];
      case 'adjudication':
        return ['ExplanationOfBenefitAdjudication'];
      case 'detail':
        return ['ExplanationOfBenefitDetail'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitAddItem]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ExplanationOfBenefitAddItem createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'itemSequence':
        {
          return copyWith(
            itemSequence: <FhirPositiveInt>[],
          );
        }
      case 'detailSequence':
        {
          return copyWith(
            detailSequence: <FhirPositiveInt>[],
          );
        }
      case 'subDetailSequence':
        {
          return copyWith(
            subDetailSequence: <FhirPositiveInt>[],
          );
        }
      case 'provider':
        {
          return copyWith(
            provider: <Reference>[],
          );
        }
      case 'productOrService':
        {
          return copyWith(
            productOrService: CodeableConcept.empty(),
          );
        }
      case 'modifier':
        {
          return copyWith(
            modifier: <CodeableConcept>[],
          );
        }
      case 'programCode':
        {
          return copyWith(
            programCode: <CodeableConcept>[],
          );
        }
      case 'serviced':
      case 'servicedX':
      case 'servicedDate':
        {
          return copyWith(
            servicedX: FhirDate.empty(),
          );
        }
      case 'servicedPeriod':
        {
          return copyWith(
            servicedX: Period.empty(),
          );
        }
      case 'location':
      case 'locationX':
      case 'locationCodeableConcept':
        {
          return copyWith(
            locationX: CodeableConcept.empty(),
          );
        }
      case 'locationAddress':
        {
          return copyWith(
            locationX: Address.empty(),
          );
        }
      case 'locationReference':
        {
          return copyWith(
            locationX: Reference.empty(),
          );
        }
      case 'quantity':
        {
          return copyWith(
            quantity: Quantity.empty(),
          );
        }
      case 'unitPrice':
        {
          return copyWith(
            unitPrice: Money.empty(),
          );
        }
      case 'factor':
        {
          return copyWith(
            factor: FhirDecimal.empty(),
          );
        }
      case 'net':
        {
          return copyWith(
            net: Money.empty(),
          );
        }
      case 'bodySite':
        {
          return copyWith(
            bodySite: CodeableConcept.empty(),
          );
        }
      case 'subSite':
        {
          return copyWith(
            subSite: <CodeableConcept>[],
          );
        }
      case 'noteNumber':
        {
          return copyWith(
            noteNumber: <FhirPositiveInt>[],
          );
        }
      case 'adjudication':
        {
          return copyWith(
            adjudication: <ExplanationOfBenefitAdjudication>[],
          );
        }
      case 'detail':
        {
          return copyWith(
            detail: <ExplanationOfBenefitDetail>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ExplanationOfBenefitAddItem clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool itemSequence = false,
    bool detailSequence = false,
    bool subDetailSequence = false,
    bool provider = false,
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
    return ExplanationOfBenefitAddItem(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      itemSequence: itemSequence ? null : this.itemSequence,
      detailSequence: detailSequence ? null : this.detailSequence,
      subDetailSequence: subDetailSequence ? null : this.subDetailSequence,
      provider: provider ? null : this.provider,
      productOrService: productOrService,
      modifier: modifier ? null : this.modifier,
      programCode: programCode ? null : this.programCode,
      servicedX: serviced ? null : servicedX,
      locationX: location ? null : locationX,
      quantity: quantity ? null : this.quantity,
      unitPrice: unitPrice ? null : this.unitPrice,
      factor: factor ? null : this.factor,
      net: net ? null : this.net,
      bodySite: bodySite ? null : this.bodySite,
      subSite: subSite ? null : this.subSite,
      noteNumber: noteNumber ? null : this.noteNumber,
      adjudication: adjudication ? null : this.adjudication,
      detail: detail ? null : this.detail,
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ExplanationOfBenefitAddItem(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      itemSequence: itemSequence
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.itemSequence',
                ),
              )
              .toList() ??
          this.itemSequence,
      detailSequence: detailSequence
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.detailSequence',
                ),
              )
              .toList() ??
          this.detailSequence,
      subDetailSequence: subDetailSequence
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.subDetailSequence',
                ),
              )
              .toList() ??
          this.subDetailSequence,
      provider: provider
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.provider',
                ),
              )
              .toList() ??
          this.provider,
      productOrService: productOrService?.copyWith(
            objectPath: '$newObjectPath.productOrService',
          ) ??
          this.productOrService,
      modifier: modifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifier',
                ),
              )
              .toList() ??
          this.modifier,
      programCode: programCode
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.programCode',
                ),
              )
              .toList() ??
          this.programCode,
      servicedX: servicedX?.copyWith(
            objectPath: '$newObjectPath.servicedX',
          ) as ServicedXExplanationOfBenefitAddItem? ??
          this.servicedX,
      locationX: locationX?.copyWith(
            objectPath: '$newObjectPath.locationX',
          ) as LocationXExplanationOfBenefitAddItem? ??
          this.locationX,
      quantity: quantity?.copyWith(
            objectPath: '$newObjectPath.quantity',
          ) ??
          this.quantity,
      unitPrice: unitPrice?.copyWith(
            objectPath: '$newObjectPath.unitPrice',
          ) ??
          this.unitPrice,
      factor: factor?.copyWith(
            objectPath: '$newObjectPath.factor',
          ) ??
          this.factor,
      net: net?.copyWith(
            objectPath: '$newObjectPath.net',
          ) ??
          this.net,
      bodySite: bodySite?.copyWith(
            objectPath: '$newObjectPath.bodySite',
          ) ??
          this.bodySite,
      subSite: subSite
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.subSite',
                ),
              )
              .toList() ??
          this.subSite,
      noteNumber: noteNumber
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.noteNumber',
                ),
              )
              .toList() ??
          this.noteNumber,
      adjudication: adjudication
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.adjudication',
                ),
              )
              .toList() ??
          this.adjudication,
      detail: detail
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.detail',
                ),
              )
              .toList() ??
          this.detail,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ExplanationOfBenefitAddItem) {
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
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<FhirPositiveInt>(
      itemSequence,
      o.itemSequence,
    )) {
      return false;
    }
    if (!listEquals<FhirPositiveInt>(
      detailSequence,
      o.detailSequence,
    )) {
      return false;
    }
    if (!listEquals<FhirPositiveInt>(
      subDetailSequence,
      o.subDetailSequence,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
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
    if (!listEquals<CodeableConcept>(
      modifier,
      o.modifier,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
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
    if (!listEquals<CodeableConcept>(
      subSite,
      o.subSite,
    )) {
      return false;
    }
    if (!listEquals<FhirPositiveInt>(
      noteNumber,
      o.noteNumber,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitAdjudication>(
      adjudication,
      o.adjudication,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitDetail>(
      detail,
      o.detail,
    )) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'ExplanationOfBenefit.addItem.detail',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ExplanationOfBenefitDetail1.empty() => ExplanationOfBenefitDetail1(
        productOrService: CodeableConcept.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitDetail1.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.addItem.detail';
    return ExplanationOfBenefitDetail1(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      productOrService: JsonParser.parseObject<CodeableConcept>(
        json,
        'productOrService',
        CodeableConcept.fromJson,
        '$objectPath.productOrService',
      )!,
      modifier: (json['modifier'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifier',
              },
            ),
          )
          .toList(),
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
        '$objectPath.quantity',
      ),
      unitPrice: JsonParser.parseObject<Money>(
        json,
        'unitPrice',
        Money.fromJson,
        '$objectPath.unitPrice',
      ),
      factor: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'factor',
        FhirDecimal.fromJson,
        '$objectPath.factor',
      ),
      net: JsonParser.parseObject<Money>(
        json,
        'net',
        Money.fromJson,
        '$objectPath.net',
      ),
      noteNumber: JsonParser.parsePrimitiveList<FhirPositiveInt>(
        json,
        'noteNumber',
        FhirPositiveInt.fromJson,
        '$objectPath.noteNumber',
      ),
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitAdjudication>(
            (v) => ExplanationOfBenefitAdjudication.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.adjudication',
              },
            ),
          )
          .toList(),
      subDetail: (json['subDetail'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitSubDetail>(
            (v) => ExplanationOfBenefitSubDetail.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.subDetail',
              },
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
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitDetail1.fromJson(json);
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

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'productOrService',
      productOrService,
    );
    addField(
      'modifier',
      modifier,
    );
    addField(
      'quantity',
      quantity,
    );
    addField(
      'unitPrice',
      unitPrice,
    );
    addField(
      'factor',
      factor,
    );
    addField(
      'net',
      net,
    );
    addField(
      'noteNumber',
      noteNumber,
    );
    addField(
      'adjudication',
      adjudication,
    );
    addField(
      'subDetail',
      subDetail,
    );
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
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
        fields.add(productOrService);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'productOrService':
        {
          if (child is CodeableConcept) {
            return copyWith(productOrService: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifier':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?modifier, ...child];
            return copyWith(modifier: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifier,
              child,
            ];
            return copyWith(modifier: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'quantity':
        {
          if (child is Quantity) {
            return copyWith(quantity: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'unitPrice':
        {
          if (child is Money) {
            return copyWith(unitPrice: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'factor':
        {
          if (child is FhirDecimal) {
            return copyWith(factor: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'net':
        {
          if (child is Money) {
            return copyWith(net: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'noteNumber':
        {
          if (child is List<FhirPositiveInt>) {
            // Add all elements from passed list
            final newList = [...?noteNumber, ...child];
            return copyWith(noteNumber: newList);
          } else if (child is FhirPositiveInt) {
            // Add single element to existing list or create new list
            final newList = [
              ...?noteNumber,
              child,
            ];
            return copyWith(noteNumber: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'adjudication':
        {
          if (child is List<ExplanationOfBenefitAdjudication>) {
            // Add all elements from passed list
            final newList = [...?adjudication, ...child];
            return copyWith(adjudication: newList);
          } else if (child is ExplanationOfBenefitAdjudication) {
            // Add single element to existing list or create new list
            final newList = [
              ...?adjudication,
              child,
            ];
            return copyWith(adjudication: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subDetail':
        {
          if (child is List<ExplanationOfBenefitSubDetail>) {
            // Add all elements from passed list
            final newList = [...?subDetail, ...child];
            return copyWith(subDetail: newList);
          } else if (child is ExplanationOfBenefitSubDetail) {
            // Add single element to existing list or create new list
            final newList = [
              ...?subDetail,
              child,
            ];
            return copyWith(subDetail: newList);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'productOrService':
        return ['CodeableConcept'];
      case 'modifier':
        return ['CodeableConcept'];
      case 'quantity':
        return ['Quantity'];
      case 'unitPrice':
        return ['Money'];
      case 'factor':
        return ['FhirDecimal'];
      case 'net':
        return ['Money'];
      case 'noteNumber':
        return ['FhirPositiveInt'];
      case 'adjudication':
        return ['ExplanationOfBenefitAdjudication'];
      case 'subDetail':
        return ['ExplanationOfBenefitSubDetail'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitDetail1]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ExplanationOfBenefitDetail1 createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'productOrService':
        {
          return copyWith(
            productOrService: CodeableConcept.empty(),
          );
        }
      case 'modifier':
        {
          return copyWith(
            modifier: <CodeableConcept>[],
          );
        }
      case 'quantity':
        {
          return copyWith(
            quantity: Quantity.empty(),
          );
        }
      case 'unitPrice':
        {
          return copyWith(
            unitPrice: Money.empty(),
          );
        }
      case 'factor':
        {
          return copyWith(
            factor: FhirDecimal.empty(),
          );
        }
      case 'net':
        {
          return copyWith(
            net: Money.empty(),
          );
        }
      case 'noteNumber':
        {
          return copyWith(
            noteNumber: <FhirPositiveInt>[],
          );
        }
      case 'adjudication':
        {
          return copyWith(
            adjudication: <ExplanationOfBenefitAdjudication>[],
          );
        }
      case 'subDetail':
        {
          return copyWith(
            subDetail: <ExplanationOfBenefitSubDetail>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ExplanationOfBenefitDetail1 clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool modifier = false,
    bool quantity = false,
    bool unitPrice = false,
    bool factor = false,
    bool net = false,
    bool noteNumber = false,
    bool adjudication = false,
    bool subDetail = false,
  }) {
    return ExplanationOfBenefitDetail1(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      productOrService: productOrService,
      modifier: modifier ? null : this.modifier,
      quantity: quantity ? null : this.quantity,
      unitPrice: unitPrice ? null : this.unitPrice,
      factor: factor ? null : this.factor,
      net: net ? null : this.net,
      noteNumber: noteNumber ? null : this.noteNumber,
      adjudication: adjudication ? null : this.adjudication,
      subDetail: subDetail ? null : this.subDetail,
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
    Money? net,
    List<FhirPositiveInt>? noteNumber,
    List<ExplanationOfBenefitAdjudication>? adjudication,
    List<ExplanationOfBenefitSubDetail>? subDetail,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ExplanationOfBenefitDetail1(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      productOrService: productOrService?.copyWith(
            objectPath: '$newObjectPath.productOrService',
          ) ??
          this.productOrService,
      modifier: modifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifier',
                ),
              )
              .toList() ??
          this.modifier,
      quantity: quantity?.copyWith(
            objectPath: '$newObjectPath.quantity',
          ) ??
          this.quantity,
      unitPrice: unitPrice?.copyWith(
            objectPath: '$newObjectPath.unitPrice',
          ) ??
          this.unitPrice,
      factor: factor?.copyWith(
            objectPath: '$newObjectPath.factor',
          ) ??
          this.factor,
      net: net?.copyWith(
            objectPath: '$newObjectPath.net',
          ) ??
          this.net,
      noteNumber: noteNumber
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.noteNumber',
                ),
              )
              .toList() ??
          this.noteNumber,
      adjudication: adjudication
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.adjudication',
                ),
              )
              .toList() ??
          this.adjudication,
      subDetail: subDetail
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.subDetail',
                ),
              )
              .toList() ??
          this.subDetail,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ExplanationOfBenefitDetail1) {
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
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
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
    if (!listEquals<CodeableConcept>(
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
    if (!listEquals<FhirPositiveInt>(
      noteNumber,
      o.noteNumber,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitAdjudication>(
      adjudication,
      o.adjudication,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitSubDetail>(
      subDetail,
      o.subDetail,
    )) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'ExplanationOfBenefit.addItem.detail.subDetail',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ExplanationOfBenefitSubDetail1.empty() =>
      ExplanationOfBenefitSubDetail1(
        productOrService: CodeableConcept.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitSubDetail1.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.addItem.detail.subDetail';
    return ExplanationOfBenefitSubDetail1(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      productOrService: JsonParser.parseObject<CodeableConcept>(
        json,
        'productOrService',
        CodeableConcept.fromJson,
        '$objectPath.productOrService',
      )!,
      modifier: (json['modifier'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifier',
              },
            ),
          )
          .toList(),
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
        '$objectPath.quantity',
      ),
      unitPrice: JsonParser.parseObject<Money>(
        json,
        'unitPrice',
        Money.fromJson,
        '$objectPath.unitPrice',
      ),
      factor: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'factor',
        FhirDecimal.fromJson,
        '$objectPath.factor',
      ),
      net: JsonParser.parseObject<Money>(
        json,
        'net',
        Money.fromJson,
        '$objectPath.net',
      ),
      noteNumber: JsonParser.parsePrimitiveList<FhirPositiveInt>(
        json,
        'noteNumber',
        FhirPositiveInt.fromJson,
        '$objectPath.noteNumber',
      ),
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitAdjudication>(
            (v) => ExplanationOfBenefitAdjudication.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.adjudication',
              },
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
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitSubDetail1.fromJson(json);
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

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'productOrService',
      productOrService,
    );
    addField(
      'modifier',
      modifier,
    );
    addField(
      'quantity',
      quantity,
    );
    addField(
      'unitPrice',
      unitPrice,
    );
    addField(
      'factor',
      factor,
    );
    addField(
      'net',
      net,
    );
    addField(
      'noteNumber',
      noteNumber,
    );
    addField(
      'adjudication',
      adjudication,
    );
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
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
        fields.add(productOrService);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'productOrService':
        {
          if (child is CodeableConcept) {
            return copyWith(productOrService: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifier':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?modifier, ...child];
            return copyWith(modifier: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifier,
              child,
            ];
            return copyWith(modifier: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'quantity':
        {
          if (child is Quantity) {
            return copyWith(quantity: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'unitPrice':
        {
          if (child is Money) {
            return copyWith(unitPrice: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'factor':
        {
          if (child is FhirDecimal) {
            return copyWith(factor: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'net':
        {
          if (child is Money) {
            return copyWith(net: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'noteNumber':
        {
          if (child is List<FhirPositiveInt>) {
            // Add all elements from passed list
            final newList = [...?noteNumber, ...child];
            return copyWith(noteNumber: newList);
          } else if (child is FhirPositiveInt) {
            // Add single element to existing list or create new list
            final newList = [
              ...?noteNumber,
              child,
            ];
            return copyWith(noteNumber: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'adjudication':
        {
          if (child is List<ExplanationOfBenefitAdjudication>) {
            // Add all elements from passed list
            final newList = [...?adjudication, ...child];
            return copyWith(adjudication: newList);
          } else if (child is ExplanationOfBenefitAdjudication) {
            // Add single element to existing list or create new list
            final newList = [
              ...?adjudication,
              child,
            ];
            return copyWith(adjudication: newList);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'productOrService':
        return ['CodeableConcept'];
      case 'modifier':
        return ['CodeableConcept'];
      case 'quantity':
        return ['Quantity'];
      case 'unitPrice':
        return ['Money'];
      case 'factor':
        return ['FhirDecimal'];
      case 'net':
        return ['Money'];
      case 'noteNumber':
        return ['FhirPositiveInt'];
      case 'adjudication':
        return ['ExplanationOfBenefitAdjudication'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitSubDetail1]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ExplanationOfBenefitSubDetail1 createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'productOrService':
        {
          return copyWith(
            productOrService: CodeableConcept.empty(),
          );
        }
      case 'modifier':
        {
          return copyWith(
            modifier: <CodeableConcept>[],
          );
        }
      case 'quantity':
        {
          return copyWith(
            quantity: Quantity.empty(),
          );
        }
      case 'unitPrice':
        {
          return copyWith(
            unitPrice: Money.empty(),
          );
        }
      case 'factor':
        {
          return copyWith(
            factor: FhirDecimal.empty(),
          );
        }
      case 'net':
        {
          return copyWith(
            net: Money.empty(),
          );
        }
      case 'noteNumber':
        {
          return copyWith(
            noteNumber: <FhirPositiveInt>[],
          );
        }
      case 'adjudication':
        {
          return copyWith(
            adjudication: <ExplanationOfBenefitAdjudication>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ExplanationOfBenefitSubDetail1 clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool modifier = false,
    bool quantity = false,
    bool unitPrice = false,
    bool factor = false,
    bool net = false,
    bool noteNumber = false,
    bool adjudication = false,
  }) {
    return ExplanationOfBenefitSubDetail1(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      productOrService: productOrService,
      modifier: modifier ? null : this.modifier,
      quantity: quantity ? null : this.quantity,
      unitPrice: unitPrice ? null : this.unitPrice,
      factor: factor ? null : this.factor,
      net: net ? null : this.net,
      noteNumber: noteNumber ? null : this.noteNumber,
      adjudication: adjudication ? null : this.adjudication,
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
    Money? net,
    List<FhirPositiveInt>? noteNumber,
    List<ExplanationOfBenefitAdjudication>? adjudication,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ExplanationOfBenefitSubDetail1(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      productOrService: productOrService?.copyWith(
            objectPath: '$newObjectPath.productOrService',
          ) ??
          this.productOrService,
      modifier: modifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifier',
                ),
              )
              .toList() ??
          this.modifier,
      quantity: quantity?.copyWith(
            objectPath: '$newObjectPath.quantity',
          ) ??
          this.quantity,
      unitPrice: unitPrice?.copyWith(
            objectPath: '$newObjectPath.unitPrice',
          ) ??
          this.unitPrice,
      factor: factor?.copyWith(
            objectPath: '$newObjectPath.factor',
          ) ??
          this.factor,
      net: net?.copyWith(
            objectPath: '$newObjectPath.net',
          ) ??
          this.net,
      noteNumber: noteNumber
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.noteNumber',
                ),
              )
              .toList() ??
          this.noteNumber,
      adjudication: adjudication
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.adjudication',
                ),
              )
              .toList() ??
          this.adjudication,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ExplanationOfBenefitSubDetail1) {
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
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
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
    if (!listEquals<CodeableConcept>(
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
    if (!listEquals<FhirPositiveInt>(
      noteNumber,
      o.noteNumber,
    )) {
      return false;
    }
    if (!listEquals<ExplanationOfBenefitAdjudication>(
      adjudication,
      o.adjudication,
    )) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'ExplanationOfBenefit.total',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ExplanationOfBenefitTotal.empty() => ExplanationOfBenefitTotal(
        category: CodeableConcept.empty(),
        amount: Money.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitTotal.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.total';
    return ExplanationOfBenefitTotal(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      category: JsonParser.parseObject<CodeableConcept>(
        json,
        'category',
        CodeableConcept.fromJson,
        '$objectPath.category',
      )!,
      amount: JsonParser.parseObject<Money>(
        json,
        'amount',
        Money.fromJson,
        '$objectPath.amount',
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
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitTotal.fromJson(json);
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

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'category',
      category,
    );
    addField(
      'amount',
      amount,
    );
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
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
        fields.add(category);
      case 'amount':
        fields.add(amount);
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'category':
        {
          if (child is CodeableConcept) {
            return copyWith(category: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'amount':
        {
          if (child is Money) {
            return copyWith(amount: child);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'category':
        return ['CodeableConcept'];
      case 'amount':
        return ['Money'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitTotal]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ExplanationOfBenefitTotal createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'category':
        {
          return copyWith(
            category: CodeableConcept.empty(),
          );
        }
      case 'amount':
        {
          return copyWith(
            amount: Money.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ExplanationOfBenefitTotal clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
  }) {
    return ExplanationOfBenefitTotal(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      category: category,
      amount: amount,
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ExplanationOfBenefitTotal(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      category: category?.copyWith(
            objectPath: '$newObjectPath.category',
          ) ??
          this.category,
      amount: amount?.copyWith(
            objectPath: '$newObjectPath.amount',
          ) ??
          this.amount,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ExplanationOfBenefitTotal) {
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
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
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
  }) : super(
          objectPath: 'ExplanationOfBenefit.payment',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ExplanationOfBenefitPayment.empty() =>
      const ExplanationOfBenefitPayment();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitPayment.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.payment';
    return ExplanationOfBenefitPayment(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
      adjustment: JsonParser.parseObject<Money>(
        json,
        'adjustment',
        Money.fromJson,
        '$objectPath.adjustment',
      ),
      adjustmentReason: JsonParser.parseObject<CodeableConcept>(
        json,
        'adjustmentReason',
        CodeableConcept.fromJson,
        '$objectPath.adjustmentReason',
      ),
      date: JsonParser.parsePrimitive<FhirDate>(
        json,
        'date',
        FhirDate.fromJson,
        '$objectPath.date',
      ),
      amount: JsonParser.parseObject<Money>(
        json,
        'amount',
        Money.fromJson,
        '$objectPath.amount',
      ),
      identifier: JsonParser.parseObject<Identifier>(
        json,
        'identifier',
        Identifier.fromJson,
        '$objectPath.identifier',
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
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitPayment.fromJson(json);
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

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'type',
      type,
    );
    addField(
      'adjustment',
      adjustment,
    );
    addField(
      'adjustmentReason',
      adjustmentReason,
    );
    addField(
      'date',
      date,
    );
    addField(
      'amount',
      amount,
    );
    addField(
      'identifier',
      identifier,
    );
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
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'adjustment':
        {
          if (child is Money) {
            return copyWith(adjustment: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'adjustmentReason':
        {
          if (child is CodeableConcept) {
            return copyWith(adjustmentReason: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'date':
        {
          if (child is FhirDate) {
            return copyWith(date: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'amount':
        {
          if (child is Money) {
            return copyWith(amount: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'identifier':
        {
          if (child is Identifier) {
            return copyWith(identifier: child);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'type':
        return ['CodeableConcept'];
      case 'adjustment':
        return ['Money'];
      case 'adjustmentReason':
        return ['CodeableConcept'];
      case 'date':
        return ['FhirDate'];
      case 'amount':
        return ['Money'];
      case 'identifier':
        return ['Identifier'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitPayment]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ExplanationOfBenefitPayment createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'type':
        {
          return copyWith(
            type: CodeableConcept.empty(),
          );
        }
      case 'adjustment':
        {
          return copyWith(
            adjustment: Money.empty(),
          );
        }
      case 'adjustmentReason':
        {
          return copyWith(
            adjustmentReason: CodeableConcept.empty(),
          );
        }
      case 'date':
        {
          return copyWith(
            date: FhirDate.empty(),
          );
        }
      case 'amount':
        {
          return copyWith(
            amount: Money.empty(),
          );
        }
      case 'identifier':
        {
          return copyWith(
            identifier: Identifier.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ExplanationOfBenefitPayment clear({
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
    return ExplanationOfBenefitPayment(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      type: type ? null : this.type,
      adjustment: adjustment ? null : this.adjustment,
      adjustmentReason: adjustmentReason ? null : this.adjustmentReason,
      date: date ? null : this.date,
      amount: amount ? null : this.amount,
      identifier: identifier ? null : this.identifier,
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
    Money? amount,
    Identifier? identifier,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ExplanationOfBenefitPayment(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      adjustment: adjustment?.copyWith(
            objectPath: '$newObjectPath.adjustment',
          ) ??
          this.adjustment,
      adjustmentReason: adjustmentReason?.copyWith(
            objectPath: '$newObjectPath.adjustmentReason',
          ) ??
          this.adjustmentReason,
      date: date?.copyWith(
            objectPath: '$newObjectPath.date',
          ) ??
          this.date,
      amount: amount?.copyWith(
            objectPath: '$newObjectPath.amount',
          ) ??
          this.amount,
      identifier: identifier?.copyWith(
            objectPath: '$newObjectPath.identifier',
          ) ??
          this.identifier,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ExplanationOfBenefitPayment) {
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
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
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
  }) : super(
          objectPath: 'ExplanationOfBenefit.processNote',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ExplanationOfBenefitProcessNote.empty() =>
      const ExplanationOfBenefitProcessNote();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitProcessNote.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.processNote';
    return ExplanationOfBenefitProcessNote(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      number: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'number',
        FhirPositiveInt.fromJson,
        '$objectPath.number',
      ),
      type: JsonParser.parsePrimitive<NoteType>(
        json,
        'type',
        NoteType.fromJson,
        '$objectPath.type',
      ),
      text: JsonParser.parsePrimitive<FhirString>(
        json,
        'text',
        FhirString.fromJson,
        '$objectPath.text',
      ),
      language: JsonParser.parseObject<CodeableConcept>(
        json,
        'language',
        CodeableConcept.fromJson,
        '$objectPath.language',
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
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitProcessNote.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'number',
      number,
    );
    addField(
      'type',
      type,
    );
    addField(
      'text',
      text,
    );
    addField(
      'language',
      language,
    );
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
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'number':
        {
          if (child is FhirPositiveInt) {
            return copyWith(number: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is NoteType) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'text':
        {
          if (child is FhirString) {
            return copyWith(text: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'language':
        {
          if (child is CodeableConcept) {
            return copyWith(language: child);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'number':
        return ['FhirPositiveInt'];
      case 'type':
        return ['FhirCode'];
      case 'text':
        return ['FhirString'];
      case 'language':
        return ['CodeableConcept'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitProcessNote]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ExplanationOfBenefitProcessNote createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'number':
        {
          return copyWith(
            number: FhirPositiveInt.empty(),
          );
        }
      case 'type':
        {
          return copyWith(
            type: NoteType.empty(),
          );
        }
      case 'text':
        {
          return copyWith(
            text: FhirString.empty(),
          );
        }
      case 'language':
        {
          return copyWith(
            language: CodeableConcept.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ExplanationOfBenefitProcessNote clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool number = false,
    bool type = false,
    bool text = false,
    bool language = false,
  }) {
    return ExplanationOfBenefitProcessNote(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      number: number ? null : this.number,
      type: type ? null : this.type,
      text: text ? null : this.text,
      language: language ? null : this.language,
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
    NoteType? type,
    FhirString? text,
    CodeableConcept? language,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ExplanationOfBenefitProcessNote(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      number: number?.copyWith(
            objectPath: '$newObjectPath.number',
          ) ??
          this.number,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
      language: language?.copyWith(
            objectPath: '$newObjectPath.language',
          ) ??
          this.language,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ExplanationOfBenefitProcessNote) {
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
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
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
  }) : super(
          objectPath: 'ExplanationOfBenefit.benefitBalance',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ExplanationOfBenefitBenefitBalance.empty() =>
      ExplanationOfBenefitBenefitBalance(
        category: CodeableConcept.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitBenefitBalance.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.benefitBalance';
    return ExplanationOfBenefitBenefitBalance(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      category: JsonParser.parseObject<CodeableConcept>(
        json,
        'category',
        CodeableConcept.fromJson,
        '$objectPath.category',
      )!,
      excluded: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'excluded',
        FhirBoolean.fromJson,
        '$objectPath.excluded',
      ),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
        '$objectPath.name',
      ),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
        '$objectPath.description',
      ),
      network: JsonParser.parseObject<CodeableConcept>(
        json,
        'network',
        CodeableConcept.fromJson,
        '$objectPath.network',
      ),
      unit: JsonParser.parseObject<CodeableConcept>(
        json,
        'unit',
        CodeableConcept.fromJson,
        '$objectPath.unit',
      ),
      term: JsonParser.parseObject<CodeableConcept>(
        json,
        'term',
        CodeableConcept.fromJson,
        '$objectPath.term',
      ),
      financial: (json['financial'] as List<dynamic>?)
          ?.map<ExplanationOfBenefitFinancial>(
            (v) => ExplanationOfBenefitFinancial.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.financial',
              },
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
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitBenefitBalance.fromJson(json);
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

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'category',
      category,
    );
    addField(
      'excluded',
      excluded,
    );
    addField(
      'name',
      name,
    );
    addField(
      'description',
      description,
    );
    addField(
      'network',
      network,
    );
    addField(
      'unit',
      unit,
    );
    addField(
      'term',
      term,
    );
    addField(
      'financial',
      financial,
    );
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
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
        fields.add(category);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'category':
        {
          if (child is CodeableConcept) {
            return copyWith(category: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'excluded':
        {
          if (child is FhirBoolean) {
            return copyWith(excluded: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'name':
        {
          if (child is FhirString) {
            return copyWith(name: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'description':
        {
          if (child is FhirString) {
            return copyWith(description: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'network':
        {
          if (child is CodeableConcept) {
            return copyWith(network: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'unit':
        {
          if (child is CodeableConcept) {
            return copyWith(unit: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'term':
        {
          if (child is CodeableConcept) {
            return copyWith(term: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'financial':
        {
          if (child is List<ExplanationOfBenefitFinancial>) {
            // Add all elements from passed list
            final newList = [...?financial, ...child];
            return copyWith(financial: newList);
          } else if (child is ExplanationOfBenefitFinancial) {
            // Add single element to existing list or create new list
            final newList = [
              ...?financial,
              child,
            ];
            return copyWith(financial: newList);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'category':
        return ['CodeableConcept'];
      case 'excluded':
        return ['FhirBoolean'];
      case 'name':
        return ['FhirString'];
      case 'description':
        return ['FhirString'];
      case 'network':
        return ['CodeableConcept'];
      case 'unit':
        return ['CodeableConcept'];
      case 'term':
        return ['CodeableConcept'];
      case 'financial':
        return ['ExplanationOfBenefitFinancial'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitBenefitBalance]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ExplanationOfBenefitBenefitBalance createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'category':
        {
          return copyWith(
            category: CodeableConcept.empty(),
          );
        }
      case 'excluded':
        {
          return copyWith(
            excluded: FhirBoolean.empty(),
          );
        }
      case 'name':
        {
          return copyWith(
            name: FhirString.empty(),
          );
        }
      case 'description':
        {
          return copyWith(
            description: FhirString.empty(),
          );
        }
      case 'network':
        {
          return copyWith(
            network: CodeableConcept.empty(),
          );
        }
      case 'unit':
        {
          return copyWith(
            unit: CodeableConcept.empty(),
          );
        }
      case 'term':
        {
          return copyWith(
            term: CodeableConcept.empty(),
          );
        }
      case 'financial':
        {
          return copyWith(
            financial: <ExplanationOfBenefitFinancial>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ExplanationOfBenefitBenefitBalance clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool excluded = false,
    bool name = false,
    bool description = false,
    bool network = false,
    bool unit = false,
    bool term = false,
    bool financial = false,
  }) {
    return ExplanationOfBenefitBenefitBalance(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      category: category,
      excluded: excluded ? null : this.excluded,
      name: name ? null : this.name,
      description: description ? null : this.description,
      network: network ? null : this.network,
      unit: unit ? null : this.unit,
      term: term ? null : this.term,
      financial: financial ? null : this.financial,
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
    FhirString? name,
    FhirString? description,
    CodeableConcept? network,
    CodeableConcept? unit,
    CodeableConcept? term,
    List<ExplanationOfBenefitFinancial>? financial,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ExplanationOfBenefitBenefitBalance(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      category: category?.copyWith(
            objectPath: '$newObjectPath.category',
          ) ??
          this.category,
      excluded: excluded?.copyWith(
            objectPath: '$newObjectPath.excluded',
          ) ??
          this.excluded,
      name: name?.copyWith(
            objectPath: '$newObjectPath.name',
          ) ??
          this.name,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      network: network?.copyWith(
            objectPath: '$newObjectPath.network',
          ) ??
          this.network,
      unit: unit?.copyWith(
            objectPath: '$newObjectPath.unit',
          ) ??
          this.unit,
      term: term?.copyWith(
            objectPath: '$newObjectPath.term',
          ) ??
          this.term,
      financial: financial
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.financial',
                ),
              )
              .toList() ??
          this.financial,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ExplanationOfBenefitBenefitBalance) {
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
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
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
    if (!listEquals<ExplanationOfBenefitFinancial>(
      financial,
      o.financial,
    )) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'ExplanationOfBenefit.benefitBalance.financial',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ExplanationOfBenefitFinancial.empty() =>
      ExplanationOfBenefitFinancial(
        type: CodeableConcept.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExplanationOfBenefitFinancial.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ExplanationOfBenefit.benefitBalance.financial';
    return ExplanationOfBenefitFinancial(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      )!,
      allowedX:
          JsonParser.parsePolymorphic<AllowedXExplanationOfBenefitFinancial>(
        json,
        {
          'allowedUnsignedInt': FhirUnsignedInt.fromJson,
          'allowedString': FhirString.fromJson,
          'allowedMoney': Money.fromJson,
        },
        objectPath,
      ),
      usedX: JsonParser.parsePolymorphic<UsedXExplanationOfBenefitFinancial>(
        json,
        {
          'usedUnsignedInt': FhirUnsignedInt.fromJson,
          'usedMoney': Money.fromJson,
        },
        objectPath,
      ),
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
    if (json is Map<String, dynamic>) {
      return ExplanationOfBenefitFinancial.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Getter for [allowedUnsignedInt] as a FhirUnsignedInt
  FhirUnsignedInt? get allowedUnsignedInt => allowedX?.isAs<FhirUnsignedInt>();

  /// Getter for [allowedString] as a FhirString
  FhirString? get allowedString => allowedX?.isAs<FhirString>();

  /// Getter for [allowedMoney] as a Money
  Money? get allowedMoney => allowedX?.isAs<Money>();

  /// [usedX]
  /// The quantity of the benefit which have been consumed to date.
  final UsedXExplanationOfBenefitFinancial? usedX;

  /// Getter for [usedUnsignedInt] as a FhirUnsignedInt
  FhirUnsignedInt? get usedUnsignedInt => usedX?.isAs<FhirUnsignedInt>();

  /// Getter for [usedMoney] as a Money
  Money? get usedMoney => usedX?.isAs<Money>();
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

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'type',
      type,
    );
    if (allowedX != null) {
      final fhirType = allowedX!.fhirType;
      addField(
        'allowed${fhirType.capitalize()}',
        allowedX,
      );
    }

    if (usedX != null) {
      final fhirType = usedX!.fhirType;
      addField(
        'used${fhirType.capitalize()}',
        usedX,
      );
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
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
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
        fields.add(type);
      case 'allowed':
        fields.add(allowedX!);
      case 'allowedX':
        fields.add(allowedX!);
      case 'allowedUnsignedInt':
        if (allowedX is FhirUnsignedInt) {
          fields.add(allowedX!);
        }
      case 'allowedString':
        if (allowedX is FhirString) {
          fields.add(allowedX!);
        }
      case 'allowedMoney':
        if (allowedX is Money) {
          fields.add(allowedX!);
        }
      case 'used':
        fields.add(usedX!);
      case 'usedX':
        fields.add(usedX!);
      case 'usedUnsignedInt':
        if (usedX is FhirUnsignedInt) {
          fields.add(usedX!);
        }
      case 'usedMoney':
        if (usedX is Money) {
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'allowedX':
        {
          if (child is AllowedXExplanationOfBenefitFinancial) {
            return copyWith(allowedX: child);
          } else {
            if (child is FhirUnsignedInt) {
              return copyWith(allowedX: child);
            }
            if (child is FhirString) {
              return copyWith(allowedX: child);
            }
            if (child is Money) {
              return copyWith(allowedX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'allowedFhirUnsignedInt':
        {
          if (child is FhirUnsignedInt) {
            return copyWith(allowedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'allowedFhirString':
        {
          if (child is FhirString) {
            return copyWith(allowedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'allowedMoney':
        {
          if (child is Money) {
            return copyWith(allowedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'usedX':
        {
          if (child is UsedXExplanationOfBenefitFinancial) {
            return copyWith(usedX: child);
          } else {
            if (child is FhirUnsignedInt) {
              return copyWith(usedX: child);
            }
            if (child is Money) {
              return copyWith(usedX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'usedFhirUnsignedInt':
        {
          if (child is FhirUnsignedInt) {
            return copyWith(usedX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'usedMoney':
        {
          if (child is Money) {
            return copyWith(usedX: child);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'type':
        return ['CodeableConcept'];
      case 'allowed':
      case 'allowedX':
        return [
          'FhirUnsignedInt',
          'FhirString',
          'Money',
        ];
      case 'allowedUnsignedInt':
        return ['FhirUnsignedInt'];
      case 'allowedString':
        return ['FhirString'];
      case 'allowedMoney':
        return ['Money'];
      case 'used':
      case 'usedX':
        return [
          'FhirUnsignedInt',
          'Money',
        ];
      case 'usedUnsignedInt':
        return ['FhirUnsignedInt'];
      case 'usedMoney':
        return ['Money'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ExplanationOfBenefitFinancial]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ExplanationOfBenefitFinancial createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'type':
        {
          return copyWith(
            type: CodeableConcept.empty(),
          );
        }
      case 'allowed':
      case 'allowedX':
      case 'allowedUnsignedInt':
        {
          return copyWith(
            allowedX: FhirUnsignedInt.empty(),
          );
        }
      case 'allowedString':
        {
          return copyWith(
            allowedX: FhirString.empty(),
          );
        }
      case 'allowedMoney':
        {
          return copyWith(
            allowedX: Money.empty(),
          );
        }
      case 'used':
      case 'usedX':
      case 'usedUnsignedInt':
        {
          return copyWith(
            usedX: FhirUnsignedInt.empty(),
          );
        }
      case 'usedMoney':
        {
          return copyWith(
            usedX: Money.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ExplanationOfBenefitFinancial clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool allowed = false,
    bool used = false,
  }) {
    return ExplanationOfBenefitFinancial(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      type: type,
      allowedX: allowed ? null : allowedX,
      usedX: used ? null : usedX,
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
    AllowedXExplanationOfBenefitFinancial? allowedX,
    UsedXExplanationOfBenefitFinancial? usedX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ExplanationOfBenefitFinancial(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      allowedX: allowedX?.copyWith(
            objectPath: '$newObjectPath.allowedX',
          ) as AllowedXExplanationOfBenefitFinancial? ??
          this.allowedX,
      usedX: usedX?.copyWith(
            objectPath: '$newObjectPath.usedX',
          ) as UsedXExplanationOfBenefitFinancial? ??
          this.usedX,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ExplanationOfBenefitFinancial) {
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
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
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
