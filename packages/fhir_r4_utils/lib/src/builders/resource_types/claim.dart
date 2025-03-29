import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        yamlMapToJson,
        yamlToJson,
        R4ResourceType,
        StringExtensionForFHIR,
        Claim,
        ClaimRelated,
        ClaimPayee,
        ClaimCareTeam,
        ClaimSupportingInfo,
        ClaimDiagnosis,
        ClaimProcedure,
        ClaimInsurance,
        ClaimAccident,
        ClaimItem,
        ClaimDetail,
        ClaimSubDetail;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// Extension to change [Claim] to a Builder
extension BuilderClaim on Claim {
  /// Converts [Claim] to a [ClaimBuilder]
  ClaimBuilder get toBuilder => ClaimBuilder.fromJson(toJson());
}

/// [ClaimBuilder]
/// A provider issued list of professional services and products which have
/// been provided, or are to be provided, to a patient which is sent to an
/// insurer for reimbursement.
class ClaimBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [ClaimBuilder]

  ClaimBuilder({
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
    this.fundsReserve,
    this.related,
    this.prescription,
    this.originalPrescription,
    this.payee,
    this.referral,
    this.facility,
    this.careTeam,
    this.supportingInfo,
    this.diagnosis,
    this.procedure,
    this.insurance,
    this.accident,
    this.item,
    this.total,
  }) : super(
          objectPath: 'Claim',
          resourceType: R4ResourceType.Claim,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ClaimBuilder.empty() => ClaimBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Claim';
    return ClaimBuilder(
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
      status: JsonParser.parsePrimitive<FinancialResourceStatusCodesBuilder>(
        json,
        'status',
        FinancialResourceStatusCodesBuilder.fromJson,
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
      fundsReserve: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'fundsReserve',
        CodeableConceptBuilder.fromJson,
        '$objectPath.fundsReserve',
      ),
      related: (json['related'] as List<dynamic>?)
          ?.map<ClaimRelatedBuilder>(
            (v) => ClaimRelatedBuilder.fromJson(
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
      payee: JsonParser.parseObject<ClaimPayeeBuilder>(
        json,
        'payee',
        ClaimPayeeBuilder.fromJson,
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
      careTeam: (json['careTeam'] as List<dynamic>?)
          ?.map<ClaimCareTeamBuilder>(
            (v) => ClaimCareTeamBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.careTeam',
              },
            ),
          )
          .toList(),
      supportingInfo: (json['supportingInfo'] as List<dynamic>?)
          ?.map<ClaimSupportingInfoBuilder>(
            (v) => ClaimSupportingInfoBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.supportingInfo',
              },
            ),
          )
          .toList(),
      diagnosis: (json['diagnosis'] as List<dynamic>?)
          ?.map<ClaimDiagnosisBuilder>(
            (v) => ClaimDiagnosisBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.diagnosis',
              },
            ),
          )
          .toList(),
      procedure: (json['procedure'] as List<dynamic>?)
          ?.map<ClaimProcedureBuilder>(
            (v) => ClaimProcedureBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.procedure',
              },
            ),
          )
          .toList(),
      insurance: (json['insurance'] as List<dynamic>?)
          ?.map<ClaimInsuranceBuilder>(
            (v) => ClaimInsuranceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.insurance',
              },
            ),
          )
          .toList(),
      accident: JsonParser.parseObject<ClaimAccidentBuilder>(
        json,
        'accident',
        ClaimAccidentBuilder.fromJson,
        '$objectPath.accident',
      ),
      item: (json['item'] as List<dynamic>?)
          ?.map<ClaimItemBuilder>(
            (v) => ClaimItemBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.item',
              },
            ),
          )
          .toList(),
      total: JsonParser.parseObject<MoneyBuilder>(
        json,
        'total',
        MoneyBuilder.fromJson,
        '$objectPath.total',
      ),
    );
  }

  /// Deserialize [ClaimBuilder]
  /// from a [String] or [YamlMap] object
  factory ClaimBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClaimBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClaimBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClaimBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClaimBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClaimBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Claim';

  /// [identifier]
  /// A unique identifier assigned to this claim.
  List<IdentifierBuilder>? identifier;

  /// [status]
  /// The status of the resource instance.
  FinancialResourceStatusCodesBuilder? status;

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
  /// supplied or are being considered and for whom actual or forecast
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
  /// The Insurer who is target of the request.
  ReferenceBuilder? insurer;

  /// [provider]
  /// The provider which is responsible for the claim, predetermination or
  /// preauthorization.
  ReferenceBuilder? provider;

  /// [priority]
  /// The provider-required urgency of processing the request. Typical values
  /// include: stat, routine deferred.
  CodeableConceptBuilder? priority;

  /// [fundsReserve]
  /// A code to indicate whether and for whom funds are to be reserved for
  /// future claims.
  CodeableConceptBuilder? fundsReserve;

  /// [related]
  /// Other claims which are related to this claim such as prior submissions
  /// or claims for related services or for the same event.
  List<ClaimRelatedBuilder>? related;

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
  ClaimPayeeBuilder? payee;

  /// [referral]
  /// A reference to a referral resource.
  ReferenceBuilder? referral;

  /// [facility]
  /// Facility where the services were provided.
  ReferenceBuilder? facility;

  /// [careTeam]
  /// The members of the team who provided the products and services.
  List<ClaimCareTeamBuilder>? careTeam;

  /// [supportingInfo]
  /// Additional information codes regarding exceptions, special
  /// considerations, the condition, situation, prior or concurrent issues.
  List<ClaimSupportingInfoBuilder>? supportingInfo;

  /// [diagnosis]
  /// Information about diagnoses relevant to the claim items.
  List<ClaimDiagnosisBuilder>? diagnosis;

  /// [procedure]
  /// Procedures performed on the patient relevant to the billing items with
  /// the claim.
  List<ClaimProcedureBuilder>? procedure;

  /// [insurance]
  /// Financial instruments for reimbursement for the health care products
  /// and services specified on the claim.
  List<ClaimInsuranceBuilder>? insurance;

  /// [accident]
  /// Details of an accident which resulted in injuries which required the
  /// products and services listed in the claim.
  ClaimAccidentBuilder? accident;

  /// [item]
  /// A claim line. Either a simple product or service or a 'group' of
  /// details which can each be a simple items or groups of sub-details.
  List<ClaimItemBuilder>? item;

  /// [total]
  /// The total value of the all the items in the claim.
  MoneyBuilder? total;

  /// Converts a ClaimBuilder to [Claim]
  Claim build() => Claim.fromJson(toJson());

  /// Converts a [ClaimBuilder] to a [Map<String, dynamic>]
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
    addField('fundsReserve', fundsReserve);
    addField('related', related);
    addField('prescription', prescription);
    addField('originalPrescription', originalPrescription);
    addField('payee', payee);
    addField('referral', referral);
    addField('facility', facility);
    addField('careTeam', careTeam);
    addField('supportingInfo', supportingInfo);
    addField('diagnosis', diagnosis);
    addField('procedure', procedure);
    addField('insurance', insurance);
    addField('accident', accident);
    addField('item', item);
    addField('total', total);
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
      'fundsReserve',
      'related',
      'prescription',
      'originalPrescription',
      'payee',
      'referral',
      'facility',
      'careTeam',
      'supportingInfo',
      'diagnosis',
      'procedure',
      'insurance',
      'accident',
      'item',
      'total',
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
      case 'total':
        if (total != null) {
          fields.add(total!);
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
          if (child is FinancialResourceStatusCodesBuilder) {
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
          if (child is List<ClaimRelatedBuilder>) {
            // Replace or create new list
            related = child;
            return;
          } else if (child is ClaimRelatedBuilder) {
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
          if (child is ClaimPayeeBuilder) {
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
      case 'careTeam':
        {
          if (child is List<ClaimCareTeamBuilder>) {
            // Replace or create new list
            careTeam = child;
            return;
          } else if (child is ClaimCareTeamBuilder) {
            // Add single element to existing list or create new list
            careTeam = [...(careTeam ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'supportingInfo':
        {
          if (child is List<ClaimSupportingInfoBuilder>) {
            // Replace or create new list
            supportingInfo = child;
            return;
          } else if (child is ClaimSupportingInfoBuilder) {
            // Add single element to existing list or create new list
            supportingInfo = [...(supportingInfo ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'diagnosis':
        {
          if (child is List<ClaimDiagnosisBuilder>) {
            // Replace or create new list
            diagnosis = child;
            return;
          } else if (child is ClaimDiagnosisBuilder) {
            // Add single element to existing list or create new list
            diagnosis = [...(diagnosis ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'procedure':
        {
          if (child is List<ClaimProcedureBuilder>) {
            // Replace or create new list
            procedure = child;
            return;
          } else if (child is ClaimProcedureBuilder) {
            // Add single element to existing list or create new list
            procedure = [...(procedure ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'insurance':
        {
          if (child is List<ClaimInsuranceBuilder>) {
            // Replace or create new list
            insurance = child;
            return;
          } else if (child is ClaimInsuranceBuilder) {
            // Add single element to existing list or create new list
            insurance = [...(insurance ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'accident':
        {
          if (child is ClaimAccidentBuilder) {
            accident = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'item':
        {
          if (child is List<ClaimItemBuilder>) {
            // Replace or create new list
            item = child;
            return;
          } else if (child is ClaimItemBuilder) {
            // Add single element to existing list or create new list
            item = [...(item ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'total':
        {
          if (child is MoneyBuilder) {
            total = child;
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
      case 'fundsReserve':
        return ['CodeableConceptBuilder'];
      case 'related':
        return ['ClaimRelatedBuilder'];
      case 'prescription':
        return ['ReferenceBuilder'];
      case 'originalPrescription':
        return ['ReferenceBuilder'];
      case 'payee':
        return ['ClaimPayeeBuilder'];
      case 'referral':
        return ['ReferenceBuilder'];
      case 'facility':
        return ['ReferenceBuilder'];
      case 'careTeam':
        return ['ClaimCareTeamBuilder'];
      case 'supportingInfo':
        return ['ClaimSupportingInfoBuilder'];
      case 'diagnosis':
        return ['ClaimDiagnosisBuilder'];
      case 'procedure':
        return ['ClaimProcedureBuilder'];
      case 'insurance':
        return ['ClaimInsuranceBuilder'];
      case 'accident':
        return ['ClaimAccidentBuilder'];
      case 'item':
        return ['ClaimItemBuilder'];
      case 'total':
        return ['MoneyBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ClaimBuilder]
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
          status = FinancialResourceStatusCodesBuilder.empty();
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
      case 'fundsReserve':
        {
          fundsReserve = CodeableConceptBuilder.empty();
          return;
        }
      case 'related':
        {
          related = <ClaimRelatedBuilder>[];
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
          payee = ClaimPayeeBuilder.empty();
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
      case 'careTeam':
        {
          careTeam = <ClaimCareTeamBuilder>[];
          return;
        }
      case 'supportingInfo':
        {
          supportingInfo = <ClaimSupportingInfoBuilder>[];
          return;
        }
      case 'diagnosis':
        {
          diagnosis = <ClaimDiagnosisBuilder>[];
          return;
        }
      case 'procedure':
        {
          procedure = <ClaimProcedureBuilder>[];
          return;
        }
      case 'insurance':
        {
          insurance = <ClaimInsuranceBuilder>[];
          return;
        }
      case 'accident':
        {
          accident = ClaimAccidentBuilder.empty();
          return;
        }
      case 'item':
        {
          item = <ClaimItemBuilder>[];
          return;
        }
      case 'total':
        {
          total = MoneyBuilder.empty();
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
    bool fundsReserve = false,
    bool related = false,
    bool prescription = false,
    bool originalPrescription = false,
    bool payee = false,
    bool referral = false,
    bool facility = false,
    bool careTeam = false,
    bool supportingInfo = false,
    bool diagnosis = false,
    bool procedure = false,
    bool insurance = false,
    bool accident = false,
    bool item = false,
    bool total = false,
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
    if (fundsReserve) this.fundsReserve = null;
    if (related) this.related = null;
    if (prescription) this.prescription = null;
    if (originalPrescription) this.originalPrescription = null;
    if (payee) this.payee = null;
    if (referral) this.referral = null;
    if (facility) this.facility = null;
    if (careTeam) this.careTeam = null;
    if (supportingInfo) this.supportingInfo = null;
    if (diagnosis) this.diagnosis = null;
    if (procedure) this.procedure = null;
    if (insurance) this.insurance = null;
    if (accident) this.accident = null;
    if (item) this.item = null;
    if (total) this.total = null;
  }

  @override
  ClaimBuilder clone() => throw UnimplementedError();
  @override
  ClaimBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    FinancialResourceStatusCodesBuilder? status,
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
    CodeableConceptBuilder? fundsReserve,
    List<ClaimRelatedBuilder>? related,
    ReferenceBuilder? prescription,
    ReferenceBuilder? originalPrescription,
    ClaimPayeeBuilder? payee,
    ReferenceBuilder? referral,
    ReferenceBuilder? facility,
    List<ClaimCareTeamBuilder>? careTeam,
    List<ClaimSupportingInfoBuilder>? supportingInfo,
    List<ClaimDiagnosisBuilder>? diagnosis,
    List<ClaimProcedureBuilder>? procedure,
    List<ClaimInsuranceBuilder>? insurance,
    ClaimAccidentBuilder? accident,
    List<ClaimItemBuilder>? item,
    MoneyBuilder? total,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = ClaimBuilder(
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
      fundsReserve: fundsReserve ?? this.fundsReserve,
      related: related ?? this.related,
      prescription: prescription ?? this.prescription,
      originalPrescription: originalPrescription ?? this.originalPrescription,
      payee: payee ?? this.payee,
      referral: referral ?? this.referral,
      facility: facility ?? this.facility,
      careTeam: careTeam ?? this.careTeam,
      supportingInfo: supportingInfo ?? this.supportingInfo,
      diagnosis: diagnosis ?? this.diagnosis,
      procedure: procedure ?? this.procedure,
      insurance: insurance ?? this.insurance,
      accident: accident ?? this.accident,
      item: item ?? this.item,
      total: total ?? this.total,
    );

    newResult.objectPath = newObjectPath;
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
    if (o is! ClaimBuilder) {
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
      fundsReserve,
      o.fundsReserve,
    )) {
      return false;
    }
    if (!listEquals<ClaimRelatedBuilder>(
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
    if (!listEquals<ClaimCareTeamBuilder>(
      careTeam,
      o.careTeam,
    )) {
      return false;
    }
    if (!listEquals<ClaimSupportingInfoBuilder>(
      supportingInfo,
      o.supportingInfo,
    )) {
      return false;
    }
    if (!listEquals<ClaimDiagnosisBuilder>(
      diagnosis,
      o.diagnosis,
    )) {
      return false;
    }
    if (!listEquals<ClaimProcedureBuilder>(
      procedure,
      o.procedure,
    )) {
      return false;
    }
    if (!listEquals<ClaimInsuranceBuilder>(
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
    if (!listEquals<ClaimItemBuilder>(
      item,
      o.item,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      total,
      o.total,
    )) {
      return false;
    }
    return true;
  }
}

/// Extension to change [ClaimRelated] to a Builder
extension BuilderClaimRelated on ClaimRelated {
  /// Converts [ClaimRelated] to a [ClaimRelatedBuilder]
  ClaimRelatedBuilder get toBuilder => ClaimRelatedBuilder.fromJson(toJson());
}

/// [ClaimRelatedBuilder]
/// Other claims which are related to this claim such as prior submissions
/// or claims for related services or for the same event.
class ClaimRelatedBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ClaimRelatedBuilder]

  ClaimRelatedBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.claim,
    this.relationship,
    this.reference,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Claim.related',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ClaimRelatedBuilder.empty() => ClaimRelatedBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimRelatedBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Claim.related';
    return ClaimRelatedBuilder(
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

  /// Deserialize [ClaimRelatedBuilder]
  /// from a [String] or [YamlMap] object
  factory ClaimRelatedBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClaimRelatedBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClaimRelatedBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClaimRelatedBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClaimRelatedBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimRelatedBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClaimRelatedBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClaimRelated';

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

  /// Converts a ClaimRelatedBuilder to [ClaimRelated]
  ClaimRelated build() => ClaimRelated.fromJson(toJson());

  /// Converts a [ClaimRelatedBuilder] to a [Map<String, dynamic>]
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

  /// Creates a new [ClaimRelatedBuilder]
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
  ClaimRelatedBuilder clone() => throw UnimplementedError();
  @override
  ClaimRelatedBuilder copyWith({
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
    final newResult = ClaimRelatedBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      claim: claim ?? this.claim,
      relationship: relationship ?? this.relationship,
      reference: reference ?? this.reference,
    );

    newResult.objectPath = newObjectPath;
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
    if (o is! ClaimRelatedBuilder) {
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

/// Extension to change [ClaimPayee] to a Builder
extension BuilderClaimPayee on ClaimPayee {
  /// Converts [ClaimPayee] to a [ClaimPayeeBuilder]
  ClaimPayeeBuilder get toBuilder => ClaimPayeeBuilder.fromJson(toJson());
}

/// [ClaimPayeeBuilder]
/// The party to be reimbursed for cost of the products and services
/// according to the terms of the policy.
class ClaimPayeeBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ClaimPayeeBuilder]

  ClaimPayeeBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.party,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Claim.payee',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ClaimPayeeBuilder.empty() => ClaimPayeeBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimPayeeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Claim.payee';
    return ClaimPayeeBuilder(
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

  /// Deserialize [ClaimPayeeBuilder]
  /// from a [String] or [YamlMap] object
  factory ClaimPayeeBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClaimPayeeBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClaimPayeeBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClaimPayeeBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClaimPayeeBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimPayeeBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClaimPayeeBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClaimPayee';

  /// [type]
  /// Type of Party to be reimbursed: subscriber, provider, other.
  CodeableConceptBuilder? type;

  /// [party]
  /// Reference to the individual or organization to whom any payment will be
  /// made.
  ReferenceBuilder? party;

  /// Converts a ClaimPayeeBuilder to [ClaimPayee]
  ClaimPayee build() => ClaimPayee.fromJson(toJson());

  /// Converts a [ClaimPayeeBuilder] to a [Map<String, dynamic>]
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

  /// Creates a new [ClaimPayeeBuilder]
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
  ClaimPayeeBuilder clone() => throw UnimplementedError();
  @override
  ClaimPayeeBuilder copyWith({
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
    final newResult = ClaimPayeeBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      party: party ?? this.party,
    );

    newResult.objectPath = newObjectPath;
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
    if (o is! ClaimPayeeBuilder) {
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

/// Extension to change [ClaimCareTeam] to a Builder
extension BuilderClaimCareTeam on ClaimCareTeam {
  /// Converts [ClaimCareTeam] to a [ClaimCareTeamBuilder]
  ClaimCareTeamBuilder get toBuilder => ClaimCareTeamBuilder.fromJson(toJson());
}

/// [ClaimCareTeamBuilder]
/// The members of the team who provided the products and services.
class ClaimCareTeamBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ClaimCareTeamBuilder]

  ClaimCareTeamBuilder({
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
          objectPath: 'Claim.careTeam',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ClaimCareTeamBuilder.empty() => ClaimCareTeamBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimCareTeamBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Claim.careTeam';
    return ClaimCareTeamBuilder(
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

  /// Deserialize [ClaimCareTeamBuilder]
  /// from a [String] or [YamlMap] object
  factory ClaimCareTeamBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClaimCareTeamBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClaimCareTeamBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClaimCareTeamBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClaimCareTeamBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimCareTeamBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClaimCareTeamBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClaimCareTeam';

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

  /// Converts a ClaimCareTeamBuilder to [ClaimCareTeam]
  ClaimCareTeam build() => ClaimCareTeam.fromJson(toJson());

  /// Converts a [ClaimCareTeamBuilder] to a [Map<String, dynamic>]
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

  /// Creates a new [ClaimCareTeamBuilder]
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
  ClaimCareTeamBuilder clone() => throw UnimplementedError();
  @override
  ClaimCareTeamBuilder copyWith({
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
    final newResult = ClaimCareTeamBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      provider: provider ?? this.provider,
      responsible: responsible ?? this.responsible,
      role: role ?? this.role,
      qualification: qualification ?? this.qualification,
    );

    newResult.objectPath = newObjectPath;
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
    if (o is! ClaimCareTeamBuilder) {
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

/// Extension to change [ClaimSupportingInfo] to a Builder
extension BuilderClaimSupportingInfo on ClaimSupportingInfo {
  /// Converts [ClaimSupportingInfo] to a [ClaimSupportingInfoBuilder]
  ClaimSupportingInfoBuilder get toBuilder =>
      ClaimSupportingInfoBuilder.fromJson(toJson());
}

/// [ClaimSupportingInfoBuilder]
/// Additional information codes regarding exceptions, special
/// considerations, the condition, situation, prior or concurrent issues.
class ClaimSupportingInfoBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ClaimSupportingInfoBuilder]

  ClaimSupportingInfoBuilder({
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
          objectPath: 'Claim.supportingInfo',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ClaimSupportingInfoBuilder.empty() => ClaimSupportingInfoBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimSupportingInfoBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Claim.supportingInfo';
    return ClaimSupportingInfoBuilder(
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
      timingX: JsonParser.parsePolymorphic<TimingXClaimSupportingInfoBuilder>(
        json,
        {
          'timingDate': FhirDateBuilder.fromJson,
          'timingPeriod': PeriodBuilder.fromJson,
        },
        objectPath,
      ),
      valueX: JsonParser.parsePolymorphic<ValueXClaimSupportingInfoBuilder>(
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
      reason: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'reason',
        CodeableConceptBuilder.fromJson,
        '$objectPath.reason',
      ),
    );
  }

  /// Deserialize [ClaimSupportingInfoBuilder]
  /// from a [String] or [YamlMap] object
  factory ClaimSupportingInfoBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClaimSupportingInfoBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClaimSupportingInfoBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClaimSupportingInfoBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClaimSupportingInfoBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimSupportingInfoBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClaimSupportingInfoBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClaimSupportingInfo';

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
  TimingXClaimSupportingInfoBuilder? timingX;

  /// Getter for [timingDate] as a FhirDateBuilder
  FhirDateBuilder? get timingDate => timingX?.isAs<FhirDateBuilder>();

  /// Getter for [timingPeriod] as a PeriodBuilder
  PeriodBuilder? get timingPeriod => timingX?.isAs<PeriodBuilder>();

  /// [valueX]
  /// Additional data or information such as resources, documents, images
  /// etc. including references to the data or the actual inclusion of the
  /// data.
  ValueXClaimSupportingInfoBuilder? valueX;

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
  CodeableConceptBuilder? reason;

  /// Converts a ClaimSupportingInfoBuilder to [ClaimSupportingInfo]
  ClaimSupportingInfo build() => ClaimSupportingInfo.fromJson(toJson());

  /// Converts a [ClaimSupportingInfoBuilder] to a [Map<String, dynamic>]
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
          if (child is TimingXClaimSupportingInfoBuilder) {
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
          if (child is ValueXClaimSupportingInfoBuilder) {
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
          if (child is CodeableConceptBuilder) {
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
          'ReferenceBuilder'
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
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ClaimSupportingInfoBuilder]
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
          reason = CodeableConceptBuilder.empty();
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
    if (timing) this.timingX = null;
    if (value) this.valueX = null;
    if (reason) this.reason = null;
  }

  @override
  ClaimSupportingInfoBuilder clone() => throw UnimplementedError();
  @override
  ClaimSupportingInfoBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirPositiveIntBuilder? sequence,
    CodeableConceptBuilder? category,
    CodeableConceptBuilder? code,
    TimingXClaimSupportingInfoBuilder? timingX,
    ValueXClaimSupportingInfoBuilder? valueX,
    CodeableConceptBuilder? reason,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ClaimSupportingInfoBuilder(
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

    newResult.objectPath = newObjectPath;
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
    if (o is! ClaimSupportingInfoBuilder) {
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

/// Extension to change [ClaimDiagnosis] to a Builder
extension BuilderClaimDiagnosis on ClaimDiagnosis {
  /// Converts [ClaimDiagnosis] to a [ClaimDiagnosisBuilder]
  ClaimDiagnosisBuilder get toBuilder =>
      ClaimDiagnosisBuilder.fromJson(toJson());
}

/// [ClaimDiagnosisBuilder]
/// Information about diagnoses relevant to the claim items.
class ClaimDiagnosisBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ClaimDiagnosisBuilder]

  ClaimDiagnosisBuilder({
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
          objectPath: 'Claim.diagnosis',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ClaimDiagnosisBuilder.empty() => ClaimDiagnosisBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimDiagnosisBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Claim.diagnosis';
    return ClaimDiagnosisBuilder(
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
      diagnosisX: JsonParser.parsePolymorphic<DiagnosisXClaimDiagnosisBuilder>(
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

  /// Deserialize [ClaimDiagnosisBuilder]
  /// from a [String] or [YamlMap] object
  factory ClaimDiagnosisBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClaimDiagnosisBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClaimDiagnosisBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClaimDiagnosisBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClaimDiagnosisBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimDiagnosisBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClaimDiagnosisBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClaimDiagnosis';

  /// [sequence]
  /// A number to uniquely identify diagnosis entries.
  FhirPositiveIntBuilder? sequence;

  /// [diagnosisX]
  /// The nature of illness or problem in a coded form or as a reference to
  /// an external defined Condition.
  DiagnosisXClaimDiagnosisBuilder? diagnosisX;

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

  /// Converts a ClaimDiagnosisBuilder to [ClaimDiagnosis]
  ClaimDiagnosis build() => ClaimDiagnosis.fromJson(toJson());

  /// Converts a [ClaimDiagnosisBuilder] to a [Map<String, dynamic>]
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
          if (child is DiagnosisXClaimDiagnosisBuilder) {
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

  /// Creates a new [ClaimDiagnosisBuilder]
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
    if (diagnosis) this.diagnosisX = null;
    if (type) this.type = null;
    if (onAdmission) this.onAdmission = null;
    if (packageCode) this.packageCode = null;
  }

  @override
  ClaimDiagnosisBuilder clone() => throw UnimplementedError();
  @override
  ClaimDiagnosisBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirPositiveIntBuilder? sequence,
    DiagnosisXClaimDiagnosisBuilder? diagnosisX,
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
    final newResult = ClaimDiagnosisBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      diagnosisX: diagnosisX ?? this.diagnosisX,
      type: type ?? this.type,
      onAdmission: onAdmission ?? this.onAdmission,
      packageCode: packageCode ?? this.packageCode,
    );

    newResult.objectPath = newObjectPath;
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
    if (o is! ClaimDiagnosisBuilder) {
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

/// Extension to change [ClaimProcedure] to a Builder
extension BuilderClaimProcedure on ClaimProcedure {
  /// Converts [ClaimProcedure] to a [ClaimProcedureBuilder]
  ClaimProcedureBuilder get toBuilder =>
      ClaimProcedureBuilder.fromJson(toJson());
}

/// [ClaimProcedureBuilder]
/// Procedures performed on the patient relevant to the billing items with
/// the claim.
class ClaimProcedureBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ClaimProcedureBuilder]

  ClaimProcedureBuilder({
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
          objectPath: 'Claim.procedure',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ClaimProcedureBuilder.empty() => ClaimProcedureBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimProcedureBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Claim.procedure';
    return ClaimProcedureBuilder(
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
      procedureX: JsonParser.parsePolymorphic<ProcedureXClaimProcedureBuilder>(
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

  /// Deserialize [ClaimProcedureBuilder]
  /// from a [String] or [YamlMap] object
  factory ClaimProcedureBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClaimProcedureBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClaimProcedureBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClaimProcedureBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClaimProcedureBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimProcedureBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClaimProcedureBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClaimProcedure';

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
  ProcedureXClaimProcedureBuilder? procedureX;

  /// Getter for [procedureCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get procedureCodeableConcept =>
      procedureX?.isAs<CodeableConceptBuilder>();

  /// Getter for [procedureReference] as a ReferenceBuilder
  ReferenceBuilder? get procedureReference =>
      procedureX?.isAs<ReferenceBuilder>();

  /// [udi]
  /// Unique Device Identifiers associated with this line item.
  List<ReferenceBuilder>? udi;

  /// Converts a ClaimProcedureBuilder to [ClaimProcedure]
  ClaimProcedure build() => ClaimProcedure.fromJson(toJson());

  /// Converts a [ClaimProcedureBuilder] to a [Map<String, dynamic>]
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
          if (child is ProcedureXClaimProcedureBuilder) {
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

  /// Creates a new [ClaimProcedureBuilder]
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
    if (procedure) this.procedureX = null;
    if (udi) this.udi = null;
  }

  @override
  ClaimProcedureBuilder clone() => throw UnimplementedError();
  @override
  ClaimProcedureBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirPositiveIntBuilder? sequence,
    List<CodeableConceptBuilder>? type,
    FhirDateTimeBuilder? date,
    ProcedureXClaimProcedureBuilder? procedureX,
    List<ReferenceBuilder>? udi,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ClaimProcedureBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      type: type ?? this.type,
      date: date ?? this.date,
      procedureX: procedureX ?? this.procedureX,
      udi: udi ?? this.udi,
    );

    newResult.objectPath = newObjectPath;
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
    if (o is! ClaimProcedureBuilder) {
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

/// Extension to change [ClaimInsurance] to a Builder
extension BuilderClaimInsurance on ClaimInsurance {
  /// Converts [ClaimInsurance] to a [ClaimInsuranceBuilder]
  ClaimInsuranceBuilder get toBuilder =>
      ClaimInsuranceBuilder.fromJson(toJson());
}

/// [ClaimInsuranceBuilder]
/// Financial instruments for reimbursement for the health care products
/// and services specified on the claim.
class ClaimInsuranceBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ClaimInsuranceBuilder]

  ClaimInsuranceBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.sequence,
    this.focal,
    this.identifier,
    this.coverage,
    this.businessArrangement,
    this.preAuthRef,
    this.claimResponse,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Claim.insurance',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ClaimInsuranceBuilder.empty() => ClaimInsuranceBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimInsuranceBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Claim.insurance';
    return ClaimInsuranceBuilder(
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
      focal: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'focal',
        FhirBooleanBuilder.fromJson,
        '$objectPath.focal',
      ),
      identifier: JsonParser.parseObject<IdentifierBuilder>(
        json,
        'identifier',
        IdentifierBuilder.fromJson,
        '$objectPath.identifier',
      ),
      coverage: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'coverage',
        ReferenceBuilder.fromJson,
        '$objectPath.coverage',
      ),
      businessArrangement: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'businessArrangement',
        FhirStringBuilder.fromJson,
        '$objectPath.businessArrangement',
      ),
      preAuthRef: JsonParser.parsePrimitiveList<FhirStringBuilder>(
        json,
        'preAuthRef',
        FhirStringBuilder.fromJson,
        '$objectPath.preAuthRef',
      ),
      claimResponse: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'claimResponse',
        ReferenceBuilder.fromJson,
        '$objectPath.claimResponse',
      ),
    );
  }

  /// Deserialize [ClaimInsuranceBuilder]
  /// from a [String] or [YamlMap] object
  factory ClaimInsuranceBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClaimInsuranceBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClaimInsuranceBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClaimInsuranceBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClaimInsuranceBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimInsuranceBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClaimInsuranceBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClaimInsurance';

  /// [sequence]
  /// A number to uniquely identify insurance entries and provide a sequence
  /// of coverages to convey coordination of benefit order.
  FhirPositiveIntBuilder? sequence;

  /// [focal]
  /// A flag to indicate that this Coverage is to be used for adjudication of
  /// this claim when set to true.
  FhirBooleanBuilder? focal;

  /// [identifier]
  /// The business identifier to be used when the claim is sent for
  /// adjudication against this insurance policy.
  IdentifierBuilder? identifier;

  /// [coverage]
  /// Reference to the insurance card level information contained in the
  /// Coverage resource. The coverage issuing insurer will use these details
  /// to locate the patient's actual coverage within the insurer's
  /// information system.
  ReferenceBuilder? coverage;

  /// [businessArrangement]
  /// A business agreement number established between the provider and the
  /// insurer for special business processing purposes.
  FhirStringBuilder? businessArrangement;

  /// [preAuthRef]
  /// Reference numbers previously provided by the insurer to the provider to
  /// be quoted on subsequent claims containing services or products related
  /// to the prior authorization.
  List<FhirStringBuilder>? preAuthRef;

  /// [claimResponse]
  /// The result of the adjudication of the line items for the Coverage
  /// specified in this insurance.
  ReferenceBuilder? claimResponse;

  /// Converts a ClaimInsuranceBuilder to [ClaimInsurance]
  ClaimInsurance build() => ClaimInsurance.fromJson(toJson());

  /// Converts a [ClaimInsuranceBuilder] to a [Map<String, dynamic>]
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
    addField('focal', focal);
    addField('identifier', identifier);
    addField('coverage', coverage);
    addField('businessArrangement', businessArrangement);
    addField('preAuthRef', preAuthRef);
    addField('claimResponse', claimResponse);
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
      'focal',
      'identifier',
      'coverage',
      'businessArrangement',
      'preAuthRef',
      'claimResponse',
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
      case 'focal':
        if (focal != null) {
          fields.add(focal!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.add(identifier!);
        }
      case 'coverage':
        if (coverage != null) {
          fields.add(coverage!);
        }
      case 'businessArrangement':
        if (businessArrangement != null) {
          fields.add(businessArrangement!);
        }
      case 'preAuthRef':
        if (preAuthRef != null) {
          fields.addAll(preAuthRef!);
        }
      case 'claimResponse':
        if (claimResponse != null) {
          fields.add(claimResponse!);
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
      case 'focal':
        {
          if (child is FhirBooleanBuilder) {
            focal = child;
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
      case 'coverage':
        {
          if (child is ReferenceBuilder) {
            coverage = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'businessArrangement':
        {
          if (child is FhirStringBuilder) {
            businessArrangement = child;
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
      case 'claimResponse':
        {
          if (child is ReferenceBuilder) {
            claimResponse = child;
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
      case 'focal':
        return ['FhirBooleanBuilder'];
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'coverage':
        return ['ReferenceBuilder'];
      case 'businessArrangement':
        return ['FhirStringBuilder'];
      case 'preAuthRef':
        return ['FhirStringBuilder'];
      case 'claimResponse':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ClaimInsuranceBuilder]
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
      case 'focal':
        {
          focal = FhirBooleanBuilder.empty();
          return;
        }
      case 'identifier':
        {
          identifier = IdentifierBuilder.empty();
          return;
        }
      case 'coverage':
        {
          coverage = ReferenceBuilder.empty();
          return;
        }
      case 'businessArrangement':
        {
          businessArrangement = FhirStringBuilder.empty();
          return;
        }
      case 'preAuthRef':
        {
          preAuthRef = <FhirStringBuilder>[];
          return;
        }
      case 'claimResponse':
        {
          claimResponse = ReferenceBuilder.empty();
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
    bool focal = false,
    bool identifier = false,
    bool coverage = false,
    bool businessArrangement = false,
    bool preAuthRef = false,
    bool claimResponse = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (sequence) this.sequence = null;
    if (focal) this.focal = null;
    if (identifier) this.identifier = null;
    if (coverage) this.coverage = null;
    if (businessArrangement) this.businessArrangement = null;
    if (preAuthRef) this.preAuthRef = null;
    if (claimResponse) this.claimResponse = null;
  }

  @override
  ClaimInsuranceBuilder clone() => throw UnimplementedError();
  @override
  ClaimInsuranceBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirPositiveIntBuilder? sequence,
    FhirBooleanBuilder? focal,
    IdentifierBuilder? identifier,
    ReferenceBuilder? coverage,
    FhirStringBuilder? businessArrangement,
    List<FhirStringBuilder>? preAuthRef,
    ReferenceBuilder? claimResponse,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ClaimInsuranceBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      focal: focal ?? this.focal,
      identifier: identifier ?? this.identifier,
      coverage: coverage ?? this.coverage,
      businessArrangement: businessArrangement ?? this.businessArrangement,
      preAuthRef: preAuthRef ?? this.preAuthRef,
      claimResponse: claimResponse ?? this.claimResponse,
    );

    newResult.objectPath = newObjectPath;
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
    if (o is! ClaimInsuranceBuilder) {
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
      focal,
      o.focal,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      coverage,
      o.coverage,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      businessArrangement,
      o.businessArrangement,
    )) {
      return false;
    }
    if (!listEquals<FhirStringBuilder>(
      preAuthRef,
      o.preAuthRef,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      claimResponse,
      o.claimResponse,
    )) {
      return false;
    }
    return true;
  }
}

/// Extension to change [ClaimAccident] to a Builder
extension BuilderClaimAccident on ClaimAccident {
  /// Converts [ClaimAccident] to a [ClaimAccidentBuilder]
  ClaimAccidentBuilder get toBuilder => ClaimAccidentBuilder.fromJson(toJson());
}

/// [ClaimAccidentBuilder]
/// Details of an accident which resulted in injuries which required the
/// products and services listed in the claim.
class ClaimAccidentBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ClaimAccidentBuilder]

  ClaimAccidentBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.date,
    this.type,
    this.locationX,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Claim.accident',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ClaimAccidentBuilder.empty() => ClaimAccidentBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimAccidentBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Claim.accident';
    return ClaimAccidentBuilder(
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
      locationX: JsonParser.parsePolymorphic<LocationXClaimAccidentBuilder>(
        json,
        {
          'locationAddress': AddressBuilder.fromJson,
          'locationReference': ReferenceBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [ClaimAccidentBuilder]
  /// from a [String] or [YamlMap] object
  factory ClaimAccidentBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClaimAccidentBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClaimAccidentBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClaimAccidentBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClaimAccidentBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimAccidentBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClaimAccidentBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClaimAccident';

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
  LocationXClaimAccidentBuilder? locationX;

  /// Getter for [locationAddress] as a AddressBuilder
  AddressBuilder? get locationAddress => locationX?.isAs<AddressBuilder>();

  /// Getter for [locationReference] as a ReferenceBuilder
  ReferenceBuilder? get locationReference =>
      locationX?.isAs<ReferenceBuilder>();

  /// Converts a ClaimAccidentBuilder to [ClaimAccident]
  ClaimAccident build() => ClaimAccident.fromJson(toJson());

  /// Converts a [ClaimAccidentBuilder] to a [Map<String, dynamic>]
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
          if (child is LocationXClaimAccidentBuilder) {
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

  /// Creates a new [ClaimAccidentBuilder]
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
    if (location) this.locationX = null;
  }

  @override
  ClaimAccidentBuilder clone() => throw UnimplementedError();
  @override
  ClaimAccidentBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirDateBuilder? date,
    CodeableConceptBuilder? type,
    LocationXClaimAccidentBuilder? locationX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ClaimAccidentBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      date: date ?? this.date,
      type: type ?? this.type,
      locationX: locationX ?? this.locationX,
    );

    newResult.objectPath = newObjectPath;
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
    if (o is! ClaimAccidentBuilder) {
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

/// Extension to change [ClaimItem] to a Builder
extension BuilderClaimItem on ClaimItem {
  /// Converts [ClaimItem] to a [ClaimItemBuilder]
  ClaimItemBuilder get toBuilder => ClaimItemBuilder.fromJson(toJson());
}

/// [ClaimItemBuilder]
/// A claim line. Either a simple product or service or a 'group' of
/// details which can each be a simple items or groups of sub-details.
class ClaimItemBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ClaimItemBuilder]

  ClaimItemBuilder({
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
    this.detail,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Claim.item',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ClaimItemBuilder.empty() => ClaimItemBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimItemBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Claim.item';
    return ClaimItemBuilder(
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
      servicedX: JsonParser.parsePolymorphic<ServicedXClaimItemBuilder>(
        json,
        {
          'servicedDate': FhirDateBuilder.fromJson,
          'servicedPeriod': PeriodBuilder.fromJson,
        },
        objectPath,
      ),
      locationX: JsonParser.parsePolymorphic<LocationXClaimItemBuilder>(
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
      detail: (json['detail'] as List<dynamic>?)
          ?.map<ClaimDetailBuilder>(
            (v) => ClaimDetailBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.detail',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ClaimItemBuilder]
  /// from a [String] or [YamlMap] object
  factory ClaimItemBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClaimItemBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClaimItemBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClaimItemBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClaimItemBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimItemBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClaimItemBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClaimItem';

  /// [sequence]
  /// A number to uniquely identify item entries.
  FhirPositiveIntBuilder? sequence;

  /// [careTeamSequence]
  /// CareTeam members related to this service or product.
  List<FhirPositiveIntBuilder>? careTeamSequence;

  /// [diagnosisSequence]
  /// Diagnosis applicable for this service or product.
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
  ServicedXClaimItemBuilder? servicedX;

  /// Getter for [servicedDate] as a FhirDateBuilder
  FhirDateBuilder? get servicedDate => servicedX?.isAs<FhirDateBuilder>();

  /// Getter for [servicedPeriod] as a PeriodBuilder
  PeriodBuilder? get servicedPeriod => servicedX?.isAs<PeriodBuilder>();

  /// [locationX]
  /// Where the product or service was provided.
  LocationXClaimItemBuilder? locationX;

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
  /// The Encounters during which this Claim was created or to which the
  /// creation of this record is tightly associated.
  List<ReferenceBuilder>? encounter;

  /// [detail]
  /// A claim detail line. Either a simple (a product or service) or a
  /// 'group' of sub-details which are simple items.
  List<ClaimDetailBuilder>? detail;

  /// Converts a ClaimItemBuilder to [ClaimItem]
  ClaimItem build() => ClaimItem.fromJson(toJson());

  /// Converts a [ClaimItemBuilder] to a [Map<String, dynamic>]
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
          if (child is ServicedXClaimItemBuilder) {
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
          if (child is LocationXClaimItemBuilder) {
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
      case 'detail':
        {
          if (child is List<ClaimDetailBuilder>) {
            // Replace or create new list
            detail = child;
            return;
          } else if (child is ClaimDetailBuilder) {
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
      case 'detail':
        return ['ClaimDetailBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ClaimItemBuilder]
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
      case 'detail':
        {
          detail = <ClaimDetailBuilder>[];
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
    if (serviced) this.servicedX = null;
    if (location) this.locationX = null;
    if (quantity) this.quantity = null;
    if (unitPrice) this.unitPrice = null;
    if (factor) this.factor = null;
    if (net) this.net = null;
    if (udi) this.udi = null;
    if (bodySite) this.bodySite = null;
    if (subSite) this.subSite = null;
    if (encounter) this.encounter = null;
    if (detail) this.detail = null;
  }

  @override
  ClaimItemBuilder clone() => throw UnimplementedError();
  @override
  ClaimItemBuilder copyWith({
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
    ServicedXClaimItemBuilder? servicedX,
    LocationXClaimItemBuilder? locationX,
    QuantityBuilder? quantity,
    MoneyBuilder? unitPrice,
    FhirDecimalBuilder? factor,
    MoneyBuilder? net,
    List<ReferenceBuilder>? udi,
    CodeableConceptBuilder? bodySite,
    List<CodeableConceptBuilder>? subSite,
    List<ReferenceBuilder>? encounter,
    List<ClaimDetailBuilder>? detail,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ClaimItemBuilder(
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
      detail: detail ?? this.detail,
    );

    newResult.objectPath = newObjectPath;
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
    if (o is! ClaimItemBuilder) {
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
    if (!listEquals<ClaimDetailBuilder>(
      detail,
      o.detail,
    )) {
      return false;
    }
    return true;
  }
}

/// Extension to change [ClaimDetail] to a Builder
extension BuilderClaimDetail on ClaimDetail {
  /// Converts [ClaimDetail] to a [ClaimDetailBuilder]
  ClaimDetailBuilder get toBuilder => ClaimDetailBuilder.fromJson(toJson());
}

/// [ClaimDetailBuilder]
/// A claim detail line. Either a simple (a product or service) or a
/// 'group' of sub-details which are simple items.
class ClaimDetailBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ClaimDetailBuilder]

  ClaimDetailBuilder({
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
    this.subDetail,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Claim.item.detail',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ClaimDetailBuilder.empty() => ClaimDetailBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimDetailBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Claim.item.detail';
    return ClaimDetailBuilder(
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
      subDetail: (json['subDetail'] as List<dynamic>?)
          ?.map<ClaimSubDetailBuilder>(
            (v) => ClaimSubDetailBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.subDetail',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ClaimDetailBuilder]
  /// from a [String] or [YamlMap] object
  factory ClaimDetailBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClaimDetailBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClaimDetailBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClaimDetailBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClaimDetailBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimDetailBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClaimDetailBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClaimDetail';

  /// [sequence]
  /// A number to uniquely identify item entries.
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

  /// [subDetail]
  /// A claim detail line. Either a simple (a product or service) or a
  /// 'group' of sub-details which are simple items.
  List<ClaimSubDetailBuilder>? subDetail;

  /// Converts a ClaimDetailBuilder to [ClaimDetail]
  ClaimDetail build() => ClaimDetail.fromJson(toJson());

  /// Converts a [ClaimDetailBuilder] to a [Map<String, dynamic>]
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
      case 'subDetail':
        {
          if (child is List<ClaimSubDetailBuilder>) {
            // Replace or create new list
            subDetail = child;
            return;
          } else if (child is ClaimSubDetailBuilder) {
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
      case 'subDetail':
        return ['ClaimSubDetailBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ClaimDetailBuilder]
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
      case 'subDetail':
        {
          subDetail = <ClaimSubDetailBuilder>[];
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
    if (subDetail) this.subDetail = null;
  }

  @override
  ClaimDetailBuilder clone() => throw UnimplementedError();
  @override
  ClaimDetailBuilder copyWith({
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
    List<ClaimSubDetailBuilder>? subDetail,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ClaimDetailBuilder(
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
      subDetail: subDetail ?? this.subDetail,
    );

    newResult.objectPath = newObjectPath;
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
    if (o is! ClaimDetailBuilder) {
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
    if (!listEquals<ClaimSubDetailBuilder>(
      subDetail,
      o.subDetail,
    )) {
      return false;
    }
    return true;
  }
}

/// Extension to change [ClaimSubDetail] to a Builder
extension BuilderClaimSubDetail on ClaimSubDetail {
  /// Converts [ClaimSubDetail] to a [ClaimSubDetailBuilder]
  ClaimSubDetailBuilder get toBuilder =>
      ClaimSubDetailBuilder.fromJson(toJson());
}

/// [ClaimSubDetailBuilder]
/// A claim detail line. Either a simple (a product or service) or a
/// 'group' of sub-details which are simple items.
class ClaimSubDetailBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ClaimSubDetailBuilder]

  ClaimSubDetailBuilder({
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
    super.disallowExtensions,
  }) : super(
          objectPath: 'Claim.item.detail.subDetail',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ClaimSubDetailBuilder.empty() => ClaimSubDetailBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimSubDetailBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Claim.item.detail.subDetail';
    return ClaimSubDetailBuilder(
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
    );
  }

  /// Deserialize [ClaimSubDetailBuilder]
  /// from a [String] or [YamlMap] object
  factory ClaimSubDetailBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClaimSubDetailBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClaimSubDetailBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClaimSubDetailBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClaimSubDetailBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimSubDetailBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClaimSubDetailBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClaimSubDetail';

  /// [sequence]
  /// A number to uniquely identify item entries.
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

  /// Converts a ClaimSubDetailBuilder to [ClaimSubDetail]
  ClaimSubDetail build() => ClaimSubDetail.fromJson(toJson());

  /// Converts a [ClaimSubDetailBuilder] to a [Map<String, dynamic>]
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
      default:
        return <String>[];
    }
  }

  /// Creates a new [ClaimSubDetailBuilder]
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
  }

  @override
  ClaimSubDetailBuilder clone() => throw UnimplementedError();
  @override
  ClaimSubDetailBuilder copyWith({
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ClaimSubDetailBuilder(
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
    );

    newResult.objectPath = newObjectPath;
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
    if (o is! ClaimSubDetailBuilder) {
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
    return true;
  }
}
