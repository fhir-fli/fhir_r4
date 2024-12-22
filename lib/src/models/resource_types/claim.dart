import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

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
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      supportingInfo: (json['supportingInfo'] as List<dynamic>?)
          ?.map<ClaimSupportingInfo>(
            (v) => ClaimSupportingInfo.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      diagnosis: (json['diagnosis'] as List<dynamic>?)
          ?.map<ClaimDiagnosis>(
            (v) => ClaimDiagnosis.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      procedure: (json['procedure'] as List<dynamic>?)
          ?.map<ClaimProcedure>(
            (v) => ClaimProcedure.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      insurance: (json['insurance'] as List<dynamic>)
          .map<ClaimInsurance>(
            (v) => ClaimInsurance.fromJson(
              v as Map<String, dynamic>,
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
              v as Map<String, dynamic>,
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
    if (json is Map<String, Object?>) {
      return Claim.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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

  @override
  Claim clone() => throw UnimplementedError();
  @override
  Claim copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FinancialResourceStatusCodes? status,
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
    CodeableConcept? fundsReserve,
    List<ClaimRelated>? related,
    Reference? prescription,
    Reference? originalPrescription,
    ClaimPayee? payee,
    Reference? referral,
    Reference? facility,
    List<ClaimCareTeam>? careTeam,
    List<ClaimSupportingInfo>? supportingInfo,
    List<ClaimDiagnosis>? diagnosis,
    List<ClaimProcedure>? procedure,
    List<ClaimInsurance>? insurance,
    ClaimAccident? accident,
    List<ClaimItem>? item,
    Money? total,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return Claim(
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
  });

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
    if (json is Map<String, Object?>) {
      return ClaimRelated.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
  ClaimRelated clone() => throw UnimplementedError();
  @override
  ClaimRelated copyWith({
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
    return ClaimRelated(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      claim: claim ?? this.claim,
      relationship: relationship ?? this.relationship,
      reference: reference ?? this.reference,
    );
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
  });

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
    if (json is Map<String, Object?>) {
      return ClaimPayee.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
  ClaimPayee clone() => throw UnimplementedError();
  @override
  ClaimPayee copyWith({
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
    return ClaimPayee(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      party: party ?? this.party,
    );
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
  });

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
    if (json is Map<String, Object?>) {
      return ClaimCareTeam.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
  ClaimCareTeam clone() => throw UnimplementedError();
  @override
  ClaimCareTeam copyWith({
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
    return ClaimCareTeam(
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
    this.timingX,
    this.valueX,
    this.reason,
    super.disallowExtensions,
  });

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
      timingX: JsonParser.parsePolymorphic<TimingXClaimSupportingInfo>(json, {
        'timingDate': FhirDate.fromJson,
        'timingPeriod': Period.fromJson,
      }),
      valueX: JsonParser.parsePolymorphic<ValueXClaimSupportingInfo>(json, {
        'valueBoolean': FhirBoolean.fromJson,
        'valueString': FhirString.fromJson,
        'valueQuantity': Quantity.fromJson,
        'valueAttachment': Attachment.fromJson,
        'valueReference': Reference.fromJson,
      }),
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
    if (json is Map<String, Object?>) {
      return ClaimSupportingInfo.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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

  /// [valueX]
  /// Additional data or information such as resources, documents, images
  /// etc. including references to the data or the actual inclusion of the
  /// data.
  final ValueXClaimSupportingInfo? valueX;

  /// [reason]
  /// Provides the reason in the situation where a reason code is required in
  /// addition to the content.
  final CodeableConcept? reason;
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
  ClaimSupportingInfo clone() => throw UnimplementedError();
  @override
  ClaimSupportingInfo copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? sequence,
    CodeableConcept? category,
    CodeableConcept? code,
    TimingXClaimSupportingInfo? timingX,
    ValueXClaimSupportingInfo? valueX,
    CodeableConcept? reason,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ClaimSupportingInfo(
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
  });

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
      diagnosisX: JsonParser.parsePolymorphic<DiagnosisXClaimDiagnosis>(json, {
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
    if (json is Map<String, Object?>) {
      return ClaimDiagnosis.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
  ClaimDiagnosis clone() => throw UnimplementedError();
  @override
  ClaimDiagnosis copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? sequence,
    DiagnosisXClaimDiagnosis? diagnosisX,
    List<CodeableConcept>? type,
    CodeableConcept? onAdmission,
    CodeableConcept? packageCode,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ClaimDiagnosis(
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
  });

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
      procedureX: JsonParser.parsePolymorphic<ProcedureXClaimProcedure>(json, {
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
    if (json is Map<String, Object?>) {
      return ClaimProcedure.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
  ClaimProcedure clone() => throw UnimplementedError();
  @override
  ClaimProcedure copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? sequence,
    List<CodeableConcept>? type,
    FhirDateTime? date,
    ProcedureXClaimProcedure? procedureX,
    List<Reference>? udi,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ClaimProcedure(
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
  });

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
    if (json is Map<String, Object?>) {
      return ClaimInsurance.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    addField('focal', focal);
    addField('identifier', identifier);
    addField('coverage', coverage);
    addField('businessArrangement', businessArrangement);
    addField('preAuthRef', preAuthRef);
    addField('claimResponse', claimResponse);
    return json;
  }

  @override
  ClaimInsurance clone() => throw UnimplementedError();
  @override
  ClaimInsurance copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? sequence,
    FhirBoolean? focal,
    Identifier? identifier,
    Reference? coverage,
    FhirString? businessArrangement,
    List<FhirString>? preAuthRef,
    Reference? claimResponse,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ClaimInsurance(
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
    this.locationX,
    super.disallowExtensions,
  });

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
      )!,
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      locationX: JsonParser.parsePolymorphic<LocationXClaimAccident>(json, {
        'locationAddress': Address.fromJson,
        'locationReference': Reference.fromJson,
      }),
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
    if (json is Map<String, Object?>) {
      return ClaimAccident.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
  ClaimAccident clone() => throw UnimplementedError();
  @override
  ClaimAccident copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirDate? date,
    CodeableConcept? type,
    LocationXClaimAccident? locationX,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ClaimAccident(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      date: date ?? this.date,
      type: type ?? this.type,
      locationX: locationX ?? this.locationX,
    );
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
  });

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
      servicedX: JsonParser.parsePolymorphic<ServicedXClaimItem>(json, {
        'servicedDate': FhirDate.fromJson,
        'servicedPeriod': Period.fromJson,
      }),
      locationX: JsonParser.parsePolymorphic<LocationXClaimItem>(json, {
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
      detail: (json['detail'] as List<dynamic>?)
          ?.map<ClaimDetail>(
            (v) => ClaimDetail.fromJson(
              v as Map<String, dynamic>,
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
    if (json is Map<String, Object?>) {
      return ClaimItem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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

  /// [locationX]
  /// Where the product or service was provided.
  final LocationXClaimItem? locationX;

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
    addField('detail', detail);
    return json;
  }

  @override
  ClaimItem clone() => throw UnimplementedError();
  @override
  ClaimItem copyWith({
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
    ServicedXClaimItem? servicedX,
    LocationXClaimItem? locationX,
    Quantity? quantity,
    Money? unitPrice,
    FhirDecimal? factor,
    Money? net,
    List<Reference>? udi,
    CodeableConcept? bodySite,
    List<CodeableConcept>? subSite,
    List<Reference>? encounter,
    List<ClaimDetail>? detail,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ClaimItem(
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
  });

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
      subDetail: (json['subDetail'] as List<dynamic>?)
          ?.map<ClaimSubDetail>(
            (v) => ClaimSubDetail.fromJson(
              v as Map<String, dynamic>,
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
    if (json is Map<String, Object?>) {
      return ClaimDetail.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    addField('subDetail', subDetail);
    return json;
  }

  @override
  ClaimDetail clone() => throw UnimplementedError();
  @override
  ClaimDetail copyWith({
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
    List<ClaimSubDetail>? subDetail,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ClaimDetail(
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
  });

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
    if (json is Map<String, Object?>) {
      return ClaimSubDetail.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    return json;
  }

  @override
  ClaimSubDetail clone() => throw UnimplementedError();
  @override
  ClaimSubDetail copyWith({
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ClaimSubDetail(
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
  }
}
