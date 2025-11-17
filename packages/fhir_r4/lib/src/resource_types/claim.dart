import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

part 'claim.g.dart';

/// [Claim]
/// A provider issued list of professional services and products which have
/// been provided, or are to be provided, to a patient which is sent to an
/// insurer for reimbursement.
class Claim extends DomainResource {
  /// Primary constructor for
  /// [Claim]

  const Claim({
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
    this.insurer,
    required this.provider,
    required this.priority,
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
    required this.insurance,
    this.accident,
    this.item,
    this.total,
  }) : super(
          resourceType: R4ResourceType.Claim,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Claim.fromJson(
    Map<String, dynamic> json,
  ) {
    return Claim(
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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<FinancialResourceStatusCodes>(
        json,
        'status',
        FinancialResourceStatusCodes.fromJson,
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
      ),
      provider: JsonParser.parseObject<Reference>(
        json,
        'provider',
        Reference.fromJson,
      )!,
      priority: JsonParser.parseObject<CodeableConcept>(
        json,
        'priority',
        CodeableConcept.fromJson,
      )!,
      fundsReserve: JsonParser.parseObject<CodeableConcept>(
        json,
        'fundsReserve',
        CodeableConcept.fromJson,
      ),
      related: (json['related'] as List<dynamic>?)
          ?.map<ClaimRelated>(
            (v) => ClaimRelated.fromJson(
              {...v as Map<String, dynamic>},
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
      payee: JsonParser.parseObject<ClaimPayee>(
        json,
        'payee',
        ClaimPayee.fromJson,
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
      careTeam: (json['careTeam'] as List<dynamic>?)
          ?.map<ClaimCareTeam>(
            (v) => ClaimCareTeam.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      supportingInfo: (json['supportingInfo'] as List<dynamic>?)
          ?.map<ClaimSupportingInfo>(
            (v) => ClaimSupportingInfo.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      diagnosis: (json['diagnosis'] as List<dynamic>?)
          ?.map<ClaimDiagnosis>(
            (v) => ClaimDiagnosis.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      procedure: (json['procedure'] as List<dynamic>?)
          ?.map<ClaimProcedure>(
            (v) => ClaimProcedure.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      insurance: (json['insurance'] as List<dynamic>)
          .map<ClaimInsurance>(
            (v) => ClaimInsurance.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      accident: JsonParser.parseObject<ClaimAccident>(
        json,
        'accident',
        ClaimAccident.fromJson,
      ),
      item: (json['item'] as List<dynamic>?)
          ?.map<ClaimItem>(
            (v) => ClaimItem.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      total: JsonParser.parseObject<Money>(
        json,
        'total',
        Money.fromJson,
      ),
    );
  }

  /// Deserialize [Claim]
  /// from a [String] or [YamlMap] object
  factory Claim.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Claim.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Claim.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Claim '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Claim]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Claim.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Claim.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Claim';

  /// [identifier]
  /// A unique identifier assigned to this claim.
  final List<Identifier>? identifier;

  /// [status]
  /// The status of the resource instance.
  final FinancialResourceStatusCodes status;

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
  /// supplied or are being considered and for whom actual or forecast
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
  /// The Insurer who is target of the request.
  final Reference? insurer;

  /// [provider]
  /// The provider which is responsible for the claim, predetermination or
  /// preauthorization.
  final Reference provider;

  /// [priority]
  /// The provider-required urgency of processing the request. Typical values
  /// include: stat, routine deferred.
  final CodeableConcept priority;

  /// [fundsReserve]
  /// A code to indicate whether and for whom funds are to be reserved for
  /// future claims.
  final CodeableConcept? fundsReserve;

  /// [related]
  /// Other claims which are related to this claim such as prior submissions
  /// or claims for related services or for the same event.
  final List<ClaimRelated>? related;

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
  final ClaimPayee? payee;

  /// [referral]
  /// A reference to a referral resource.
  final Reference? referral;

  /// [facility]
  /// Facility where the services were provided.
  final Reference? facility;

  /// [careTeam]
  /// The members of the team who provided the products and services.
  final List<ClaimCareTeam>? careTeam;

  /// [supportingInfo]
  /// Additional information codes regarding exceptions, special
  /// considerations, the condition, situation, prior or concurrent issues.
  final List<ClaimSupportingInfo>? supportingInfo;

  /// [diagnosis]
  /// Information about diagnoses relevant to the claim items.
  final List<ClaimDiagnosis>? diagnosis;

  /// [procedure]
  /// Procedures performed on the patient relevant to the billing items with
  /// the claim.
  final List<ClaimProcedure>? procedure;

  /// [insurance]
  /// Financial instruments for reimbursement for the health care products
  /// and services specified on the claim.
  final List<ClaimInsurance> insurance;

  /// [accident]
  /// Details of an accident which resulted in injuries which required the
  /// products and services listed in the claim.
  final ClaimAccident? accident;

  /// [item]
  /// A claim line. Either a simple product or service or a 'group' of
  /// details which can each be a simple items or groups of sub-details.
  final List<ClaimItem>? item;

  /// [total]
  /// The total value of the all the items in the claim.
  final Money? total;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
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
      'total',
      total,
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
        if (insurer != null) {
          fields.add(insurer!);
        }
      case 'provider':
        fields.add(provider);
      case 'priority':
        fields.add(priority);
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
        fields.addAll(insurance);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  Claim clone() => copyWith();

  /// Copy function for [Claim]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ClaimCopyWith<Claim> get copyWith => _$ClaimCopyWithImpl<Claim>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Claim) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      subType,
      o.subType,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      use,
      o.use,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      patient,
      o.patient,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      billablePeriod,
      o.billablePeriod,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      created,
      o.created,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      enterer,
      o.enterer,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      insurer,
      o.insurer,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      provider,
      o.provider,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      priority,
      o.priority,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      fundsReserve,
      o.fundsReserve,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<ClaimRelated>(
      related,
      o.related,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      prescription,
      o.prescription,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      originalPrescription,
      o.originalPrescription,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      payee,
      o.payee,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      referral,
      o.referral,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      facility,
      o.facility,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<ClaimCareTeam>(
      careTeam,
      o.careTeam,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<ClaimSupportingInfo>(
      supportingInfo,
      o.supportingInfo,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<ClaimDiagnosis>(
      diagnosis,
      o.diagnosis,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<ClaimProcedure>(
      procedure,
      o.procedure,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<ClaimInsurance>(
      insurance,
      o.insurance,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      accident,
      o.accident,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<ClaimItem>(
      item,
      o.item,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      total,
      o.total,
    )) {
      return false;
    }
    return true;
  }
}

/// [ClaimRelated]
/// Other claims which are related to this claim such as prior submissions
/// or claims for related services or for the same event.
class ClaimRelated extends BackboneElement {
  /// Primary constructor for
  /// [ClaimRelated]

  const ClaimRelated({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.claim,
    this.relationship,
    this.reference,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimRelated.fromJson(
    Map<String, dynamic> json,
  ) {
    return ClaimRelated(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
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

  /// Deserialize [ClaimRelated]
  /// from a [String] or [YamlMap] object
  factory ClaimRelated.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClaimRelated.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClaimRelated.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClaimRelated '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClaimRelated]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimRelated.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClaimRelated.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClaimRelated';

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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
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
  ClaimRelated clone() => copyWith();

  /// Copy function for [ClaimRelated]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ClaimRelatedCopyWith<ClaimRelated> get copyWith =>
      _$ClaimRelatedCopyWithImpl<ClaimRelated>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ClaimRelated) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      claim,
      o.claim,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      relationship,
      o.relationship,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      reference,
      o.reference,
    )) {
      return false;
    }
    return true;
  }
}

/// [ClaimPayee]
/// The party to be reimbursed for cost of the products and services
/// according to the terms of the policy.
class ClaimPayee extends BackboneElement {
  /// Primary constructor for
  /// [ClaimPayee]

  const ClaimPayee({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.party,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimPayee.fromJson(
    Map<String, dynamic> json,
  ) {
    return ClaimPayee(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      )!,
      party: JsonParser.parseObject<Reference>(
        json,
        'party',
        Reference.fromJson,
      ),
    );
  }

  /// Deserialize [ClaimPayee]
  /// from a [String] or [YamlMap] object
  factory ClaimPayee.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClaimPayee.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClaimPayee.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClaimPayee '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClaimPayee]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimPayee.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClaimPayee.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClaimPayee';

  /// [type]
  /// Type of Party to be reimbursed: subscriber, provider, other.
  final CodeableConcept type;

  /// [party]
  /// Reference to the individual or organization to whom any payment will be
  /// made.
  final Reference? party;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
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
        fields.add(type);
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
  ClaimPayee clone() => copyWith();

  /// Copy function for [ClaimPayee]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ClaimPayeeCopyWith<ClaimPayee> get copyWith =>
      _$ClaimPayeeCopyWithImpl<ClaimPayee>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ClaimPayee) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      party,
      o.party,
    )) {
      return false;
    }
    return true;
  }
}

/// [ClaimCareTeam]
/// The members of the team who provided the products and services.
class ClaimCareTeam extends BackboneElement {
  /// Primary constructor for
  /// [ClaimCareTeam]

  const ClaimCareTeam({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequence,
    required this.provider,
    this.responsible,
    this.role,
    this.qualification,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimCareTeam.fromJson(
    Map<String, dynamic> json,
  ) {
    return ClaimCareTeam(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
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

  /// Deserialize [ClaimCareTeam]
  /// from a [String] or [YamlMap] object
  factory ClaimCareTeam.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClaimCareTeam.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClaimCareTeam.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClaimCareTeam '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClaimCareTeam]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimCareTeam.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClaimCareTeam.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClaimCareTeam';

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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
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
  ClaimCareTeam clone() => copyWith();

  /// Copy function for [ClaimCareTeam]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ClaimCareTeamCopyWith<ClaimCareTeam> get copyWith =>
      _$ClaimCareTeamCopyWithImpl<ClaimCareTeam>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ClaimCareTeam) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      sequence,
      o.sequence,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      provider,
      o.provider,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      responsible,
      o.responsible,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      role,
      o.role,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      qualification,
      o.qualification,
    )) {
      return false;
    }
    return true;
  }
}

/// [ClaimSupportingInfo]
/// Additional information codes regarding exceptions, special
/// considerations, the condition, situation, prior or concurrent issues.
class ClaimSupportingInfo extends BackboneElement {
  /// Primary constructor for
  /// [ClaimSupportingInfo]

  const ClaimSupportingInfo({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequence,
    required this.category,
    this.code,
    TimingXClaimSupportingInfo? timingX,
    FhirDate? timingDate,
    Period? timingPeriod,
    ValueXClaimSupportingInfo? valueX,
    FhirBoolean? valueBoolean,
    FhirString? valueString,
    Quantity? valueQuantity,
    Attachment? valueAttachment,
    Reference? valueReference,
    this.reason,
    super.disallowExtensions,
  })  : timingX = timingX ?? timingDate ?? timingPeriod,
        valueX = valueX ??
            valueBoolean ??
            valueString ??
            valueQuantity ??
            valueAttachment ??
            valueReference,
        super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimSupportingInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    return ClaimSupportingInfo(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
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
      timingX: JsonParser.parsePolymorphic<TimingXClaimSupportingInfo>(
        json,
        {
          'timingDate': FhirDate.fromJson,
          'timingPeriod': Period.fromJson,
        },
      ),
      valueX: JsonParser.parsePolymorphic<ValueXClaimSupportingInfo>(
        json,
        {
          'valueBoolean': FhirBoolean.fromJson,
          'valueString': FhirString.fromJson,
          'valueQuantity': Quantity.fromJson,
          'valueAttachment': Attachment.fromJson,
          'valueReference': Reference.fromJson,
        },
      ),
      reason: JsonParser.parseObject<CodeableConcept>(
        json,
        'reason',
        CodeableConcept.fromJson,
      ),
    );
  }

  /// Deserialize [ClaimSupportingInfo]
  /// from a [String] or [YamlMap] object
  factory ClaimSupportingInfo.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClaimSupportingInfo.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClaimSupportingInfo.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClaimSupportingInfo '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClaimSupportingInfo]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimSupportingInfo.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClaimSupportingInfo.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClaimSupportingInfo';

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
  final TimingXClaimSupportingInfo? timingX;

  /// Getter for [timingDate] as a FhirDate
  FhirDate? get timingDate => timingX?.isAs<FhirDate>();

  /// Getter for [timingPeriod] as a Period
  Period? get timingPeriod => timingX?.isAs<Period>();

  /// [valueX]
  /// Additional data or information such as resources, documents, images
  /// etc. including references to the data or the actual inclusion of the
  /// data.
  final ValueXClaimSupportingInfo? valueX;

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
  final CodeableConcept? reason;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
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
  ClaimSupportingInfo clone() => copyWith();

  /// Copy function for [ClaimSupportingInfo]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ClaimSupportingInfoCopyWith<ClaimSupportingInfo> get copyWith =>
      _$ClaimSupportingInfoCopyWithImpl<ClaimSupportingInfo>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ClaimSupportingInfo) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      sequence,
      o.sequence,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      category,
      o.category,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      code,
      o.code,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      timingX,
      o.timingX,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      valueX,
      o.valueX,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      reason,
      o.reason,
    )) {
      return false;
    }
    return true;
  }
}

/// [ClaimDiagnosis]
/// Information about diagnoses relevant to the claim items.
class ClaimDiagnosis extends BackboneElement {
  /// Primary constructor for
  /// [ClaimDiagnosis]

  const ClaimDiagnosis({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequence,
    required this.diagnosisX,
    this.type,
    this.onAdmission,
    this.packageCode,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimDiagnosis.fromJson(
    Map<String, dynamic> json,
  ) {
    return ClaimDiagnosis(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      sequence: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'sequence',
        FhirPositiveInt.fromJson,
      )!,
      diagnosisX: JsonParser.parsePolymorphic<DiagnosisXClaimDiagnosis>(
        json,
        {
          'diagnosisCodeableConcept': CodeableConcept.fromJson,
          'diagnosisReference': Reference.fromJson,
        },
      )!,
      type: (json['type'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
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

  /// Deserialize [ClaimDiagnosis]
  /// from a [String] or [YamlMap] object
  factory ClaimDiagnosis.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClaimDiagnosis.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClaimDiagnosis.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClaimDiagnosis '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClaimDiagnosis]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimDiagnosis.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClaimDiagnosis.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClaimDiagnosis';

  /// [sequence]
  /// A number to uniquely identify diagnosis entries.
  final FhirPositiveInt sequence;

  /// [diagnosisX]
  /// The nature of illness or problem in a coded form or as a reference to
  /// an external defined Condition.
  final DiagnosisXClaimDiagnosis diagnosisX;

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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
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
  ClaimDiagnosis clone() => copyWith();

  /// Copy function for [ClaimDiagnosis]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ClaimDiagnosisCopyWith<ClaimDiagnosis> get copyWith =>
      _$ClaimDiagnosisCopyWithImpl<ClaimDiagnosis>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ClaimDiagnosis) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      sequence,
      o.sequence,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      diagnosisX,
      o.diagnosisX,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      type,
      o.type,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      onAdmission,
      o.onAdmission,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      packageCode,
      o.packageCode,
    )) {
      return false;
    }
    return true;
  }
}

/// [ClaimProcedure]
/// Procedures performed on the patient relevant to the billing items with
/// the claim.
class ClaimProcedure extends BackboneElement {
  /// Primary constructor for
  /// [ClaimProcedure]

  const ClaimProcedure({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequence,
    this.type,
    this.date,
    required this.procedureX,
    this.udi,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimProcedure.fromJson(
    Map<String, dynamic> json,
  ) {
    return ClaimProcedure(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      date: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'date',
        FhirDateTime.fromJson,
      ),
      procedureX: JsonParser.parsePolymorphic<ProcedureXClaimProcedure>(
        json,
        {
          'procedureCodeableConcept': CodeableConcept.fromJson,
          'procedureReference': Reference.fromJson,
        },
      )!,
      udi: (json['udi'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ClaimProcedure]
  /// from a [String] or [YamlMap] object
  factory ClaimProcedure.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClaimProcedure.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClaimProcedure.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClaimProcedure '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClaimProcedure]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimProcedure.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClaimProcedure.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClaimProcedure';

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
  final ProcedureXClaimProcedure procedureX;

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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
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
  ClaimProcedure clone() => copyWith();

  /// Copy function for [ClaimProcedure]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ClaimProcedureCopyWith<ClaimProcedure> get copyWith =>
      _$ClaimProcedureCopyWithImpl<ClaimProcedure>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ClaimProcedure) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      sequence,
      o.sequence,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      type,
      o.type,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      date,
      o.date,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      procedureX,
      o.procedureX,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Reference>(
      udi,
      o.udi,
    )) {
      return false;
    }
    return true;
  }
}

/// [ClaimInsurance]
/// Financial instruments for reimbursement for the health care products
/// and services specified on the claim.
class ClaimInsurance extends BackboneElement {
  /// Primary constructor for
  /// [ClaimInsurance]

  const ClaimInsurance({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequence,
    required this.focal,
    this.identifier,
    required this.coverage,
    this.businessArrangement,
    this.preAuthRef,
    this.claimResponse,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimInsurance.fromJson(
    Map<String, dynamic> json,
  ) {
    return ClaimInsurance(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      sequence: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'sequence',
        FhirPositiveInt.fromJson,
      )!,
      focal: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'focal',
        FhirBoolean.fromJson,
      )!,
      identifier: JsonParser.parseObject<Identifier>(
        json,
        'identifier',
        Identifier.fromJson,
      ),
      coverage: JsonParser.parseObject<Reference>(
        json,
        'coverage',
        Reference.fromJson,
      )!,
      businessArrangement: JsonParser.parsePrimitive<FhirString>(
        json,
        'businessArrangement',
        FhirString.fromJson,
      ),
      preAuthRef: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'preAuthRef',
        FhirString.fromJson,
      ),
      claimResponse: JsonParser.parseObject<Reference>(
        json,
        'claimResponse',
        Reference.fromJson,
      ),
    );
  }

  /// Deserialize [ClaimInsurance]
  /// from a [String] or [YamlMap] object
  factory ClaimInsurance.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClaimInsurance.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClaimInsurance.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClaimInsurance '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClaimInsurance]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimInsurance.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClaimInsurance.fromJson(json);
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
  final FhirPositiveInt sequence;

  /// [focal]
  /// A flag to indicate that this Coverage is to be used for adjudication of
  /// this claim when set to true.
  final FhirBoolean focal;

  /// [identifier]
  /// The business identifier to be used when the claim is sent for
  /// adjudication against this insurance policy.
  final Identifier? identifier;

  /// [coverage]
  /// Reference to the insurance card level information contained in the
  /// Coverage resource. The coverage issuing insurer will use these details
  /// to locate the patient's actual coverage within the insurer's
  /// information system.
  final Reference coverage;

  /// [businessArrangement]
  /// A business agreement number established between the provider and the
  /// insurer for special business processing purposes.
  final FhirString? businessArrangement;

  /// [preAuthRef]
  /// Reference numbers previously provided by the insurer to the provider to
  /// be quoted on subsequent claims containing services or products related
  /// to the prior authorization.
  final List<FhirString>? preAuthRef;

  /// [claimResponse]
  /// The result of the adjudication of the line items for the Coverage
  /// specified in this insurance.
  final Reference? claimResponse;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
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
      'focal',
      focal,
    );
    addField(
      'identifier',
      identifier,
    );
    addField(
      'coverage',
      coverage,
    );
    addField(
      'businessArrangement',
      businessArrangement,
    );
    addField(
      'preAuthRef',
      preAuthRef,
    );
    addField(
      'claimResponse',
      claimResponse,
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
      case 'focal':
        fields.add(focal);
      case 'identifier':
        if (identifier != null) {
          fields.add(identifier!);
        }
      case 'coverage':
        fields.add(coverage);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  ClaimInsurance clone() => copyWith();

  /// Copy function for [ClaimInsurance]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ClaimInsuranceCopyWith<ClaimInsurance> get copyWith =>
      _$ClaimInsuranceCopyWithImpl<ClaimInsurance>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ClaimInsurance) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      sequence,
      o.sequence,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      focal,
      o.focal,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      coverage,
      o.coverage,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      businessArrangement,
      o.businessArrangement,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirString>(
      preAuthRef,
      o.preAuthRef,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      claimResponse,
      o.claimResponse,
    )) {
      return false;
    }
    return true;
  }
}

/// [ClaimAccident]
/// Details of an accident which resulted in injuries which required the
/// products and services listed in the claim.
class ClaimAccident extends BackboneElement {
  /// Primary constructor for
  /// [ClaimAccident]

  const ClaimAccident({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.date,
    this.type,
    LocationXClaimAccident? locationX,
    Address? locationAddress,
    Reference? locationReference,
    super.disallowExtensions,
  })  : locationX = locationX ?? locationAddress ?? locationReference,
        super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimAccident.fromJson(
    Map<String, dynamic> json,
  ) {
    return ClaimAccident(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      date: JsonParser.parsePrimitive<FhirDate>(
        json,
        'date',
        FhirDate.fromJson,
      )!,
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      locationX: JsonParser.parsePolymorphic<LocationXClaimAccident>(
        json,
        {
          'locationAddress': Address.fromJson,
          'locationReference': Reference.fromJson,
        },
      ),
    );
  }

  /// Deserialize [ClaimAccident]
  /// from a [String] or [YamlMap] object
  factory ClaimAccident.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClaimAccident.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClaimAccident.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClaimAccident '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClaimAccident]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimAccident.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClaimAccident.fromJson(json);
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
  final FhirDate date;

  /// [type]
  /// The type or context of the accident event for the purposes of selection
  /// of potential insurance coverages and determination of coordination
  /// between insurers.
  final CodeableConcept? type;

  /// [locationX]
  /// The physical location of the accident event.
  final LocationXClaimAccident? locationX;

  /// Getter for [locationAddress] as a Address
  Address? get locationAddress => locationX?.isAs<Address>();

  /// Getter for [locationReference] as a Reference
  Reference? get locationReference => locationX?.isAs<Reference>();
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
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
        fields.add(date);
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
  ClaimAccident clone() => copyWith();

  /// Copy function for [ClaimAccident]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ClaimAccidentCopyWith<ClaimAccident> get copyWith =>
      _$ClaimAccidentCopyWithImpl<ClaimAccident>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ClaimAccident) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      date,
      o.date,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      locationX,
      o.locationX,
    )) {
      return false;
    }
    return true;
  }
}

/// [ClaimItem]
/// A claim line. Either a simple product or service or a 'group' of
/// details which can each be a simple items or groups of sub-details.
class ClaimItem extends BackboneElement {
  /// Primary constructor for
  /// [ClaimItem]

  const ClaimItem({
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
    ServicedXClaimItem? servicedX,
    FhirDate? servicedDate,
    Period? servicedPeriod,
    LocationXClaimItem? locationX,
    CodeableConcept? locationCodeableConcept,
    Address? locationAddress,
    Reference? locationReference,
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
  })  : servicedX = servicedX ?? servicedDate ?? servicedPeriod,
        locationX = locationX ??
            locationCodeableConcept ??
            locationAddress ??
            locationReference,
        super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimItem.fromJson(
    Map<String, dynamic> json,
  ) {
    return ClaimItem(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      programCode: (json['programCode'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      servicedX: JsonParser.parsePolymorphic<ServicedXClaimItem>(
        json,
        {
          'servicedDate': FhirDate.fromJson,
          'servicedPeriod': Period.fromJson,
        },
      ),
      locationX: JsonParser.parsePolymorphic<LocationXClaimItem>(
        json,
        {
          'locationCodeableConcept': CodeableConcept.fromJson,
          'locationAddress': Address.fromJson,
          'locationReference': Reference.fromJson,
        },
      ),
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
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      encounter: (json['encounter'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      detail: (json['detail'] as List<dynamic>?)
          ?.map<ClaimDetail>(
            (v) => ClaimDetail.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ClaimItem]
  /// from a [String] or [YamlMap] object
  factory ClaimItem.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClaimItem.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClaimItem.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClaimItem '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClaimItem]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimItem.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClaimItem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClaimItem';

  /// [sequence]
  /// A number to uniquely identify item entries.
  final FhirPositiveInt sequence;

  /// [careTeamSequence]
  /// CareTeam members related to this service or product.
  final List<FhirPositiveInt>? careTeamSequence;

  /// [diagnosisSequence]
  /// Diagnosis applicable for this service or product.
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
  final ServicedXClaimItem? servicedX;

  /// Getter for [servicedDate] as a FhirDate
  FhirDate? get servicedDate => servicedX?.isAs<FhirDate>();

  /// Getter for [servicedPeriod] as a Period
  Period? get servicedPeriod => servicedX?.isAs<Period>();

  /// [locationX]
  /// Where the product or service was provided.
  final LocationXClaimItem? locationX;

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
  /// The Encounters during which this Claim was created or to which the
  /// creation of this record is tightly associated.
  final List<Reference>? encounter;

  /// [detail]
  /// A claim detail line. Either a simple (a product or service) or a
  /// 'group' of sub-details which are simple items.
  final List<ClaimDetail>? detail;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
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
  ClaimItem clone() => copyWith();

  /// Copy function for [ClaimItem]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ClaimItemCopyWith<ClaimItem> get copyWith =>
      _$ClaimItemCopyWithImpl<ClaimItem>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ClaimItem) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      sequence,
      o.sequence,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirPositiveInt>(
      careTeamSequence,
      o.careTeamSequence,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirPositiveInt>(
      diagnosisSequence,
      o.diagnosisSequence,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirPositiveInt>(
      procedureSequence,
      o.procedureSequence,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirPositiveInt>(
      informationSequence,
      o.informationSequence,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      revenue,
      o.revenue,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      category,
      o.category,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      productOrService,
      o.productOrService,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      modifier,
      o.modifier,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      programCode,
      o.programCode,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      servicedX,
      o.servicedX,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      locationX,
      o.locationX,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      quantity,
      o.quantity,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      unitPrice,
      o.unitPrice,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      factor,
      o.factor,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      net,
      o.net,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Reference>(
      udi,
      o.udi,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      bodySite,
      o.bodySite,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      subSite,
      o.subSite,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Reference>(
      encounter,
      o.encounter,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<ClaimDetail>(
      detail,
      o.detail,
    )) {
      return false;
    }
    return true;
  }
}

/// [ClaimDetail]
/// A claim detail line. Either a simple (a product or service) or a
/// 'group' of sub-details which are simple items.
class ClaimDetail extends BackboneElement {
  /// Primary constructor for
  /// [ClaimDetail]

  const ClaimDetail({
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
    this.subDetail,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimDetail.fromJson(
    Map<String, dynamic> json,
  ) {
    return ClaimDetail(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      programCode: (json['programCode'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      subDetail: (json['subDetail'] as List<dynamic>?)
          ?.map<ClaimSubDetail>(
            (v) => ClaimSubDetail.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ClaimDetail]
  /// from a [String] or [YamlMap] object
  factory ClaimDetail.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClaimDetail.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClaimDetail.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClaimDetail '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClaimDetail]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimDetail.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClaimDetail.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClaimDetail';

  /// [sequence]
  /// A number to uniquely identify item entries.
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

  /// [subDetail]
  /// A claim detail line. Either a simple (a product or service) or a
  /// 'group' of sub-details which are simple items.
  final List<ClaimSubDetail>? subDetail;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
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
  ClaimDetail clone() => copyWith();

  /// Copy function for [ClaimDetail]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ClaimDetailCopyWith<ClaimDetail> get copyWith =>
      _$ClaimDetailCopyWithImpl<ClaimDetail>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ClaimDetail) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      sequence,
      o.sequence,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      revenue,
      o.revenue,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      category,
      o.category,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      productOrService,
      o.productOrService,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      modifier,
      o.modifier,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      programCode,
      o.programCode,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      quantity,
      o.quantity,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      unitPrice,
      o.unitPrice,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      factor,
      o.factor,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      net,
      o.net,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Reference>(
      udi,
      o.udi,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<ClaimSubDetail>(
      subDetail,
      o.subDetail,
    )) {
      return false;
    }
    return true;
  }
}

/// [ClaimSubDetail]
/// A claim detail line. Either a simple (a product or service) or a
/// 'group' of sub-details which are simple items.
class ClaimSubDetail extends BackboneElement {
  /// Primary constructor for
  /// [ClaimSubDetail]

  const ClaimSubDetail({
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
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimSubDetail.fromJson(
    Map<String, dynamic> json,
  ) {
    return ClaimSubDetail(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      programCode: (json['programCode'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ClaimSubDetail]
  /// from a [String] or [YamlMap] object
  factory ClaimSubDetail.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClaimSubDetail.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClaimSubDetail.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClaimSubDetail '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClaimSubDetail]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimSubDetail.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClaimSubDetail.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClaimSubDetail';

  /// [sequence]
  /// A number to uniquely identify item entries.
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
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
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
  ClaimSubDetail clone() => copyWith();

  /// Copy function for [ClaimSubDetail]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ClaimSubDetailCopyWith<ClaimSubDetail> get copyWith =>
      _$ClaimSubDetailCopyWithImpl<ClaimSubDetail>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ClaimSubDetail) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      sequence,
      o.sequence,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      revenue,
      o.revenue,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      category,
      o.category,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      productOrService,
      o.productOrService,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      modifier,
      o.modifier,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      programCode,
      o.programCode,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      quantity,
      o.quantity,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      unitPrice,
      o.unitPrice,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      factor,
      o.factor,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      net,
      o.net,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Reference>(
      udi,
      o.udi,
    )) {
      return false;
    }
    return true;
  }
}
