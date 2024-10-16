import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Claim]
/// A provider issued list of professional services and products which have
/// been provided, or are to be provided, to a patient which is sent to an
/// insurer for reimbursement.
class Claim extends DomainResource {
  /// Primary constructor for [Claim]

  Claim({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.Claim,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Claim.fromJson(Map<String, dynamic> json) {
    return Claim(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson({
              'value': json['implicitRules'],
              '_value': json['_implicitRules'],
            })
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson({
              'value': json['language'],
              '_value': json['_language'],
            })
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      status: FinancialResourceStatusCodes.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      type: CodeableConcept.fromJson(
        json['type'] as Map<String, dynamic>,
      ),
      subType: json['subType'] != null
          ? CodeableConcept.fromJson(
              json['subType'] as Map<String, dynamic>,
            )
          : null,
      use: Use.fromJson({
        'value': json['use'],
        '_value': json['_use'],
      }),
      patient: Reference.fromJson(
        json['patient'] as Map<String, dynamic>,
      ),
      billablePeriod: json['billablePeriod'] != null
          ? Period.fromJson(
              json['billablePeriod'] as Map<String, dynamic>,
            )
          : null,
      created: FhirDateTime.fromJson({
        'value': json['created'],
        '_value': json['_created'],
      }),
      enterer: json['enterer'] != null
          ? Reference.fromJson(
              json['enterer'] as Map<String, dynamic>,
            )
          : null,
      insurer: json['insurer'] != null
          ? Reference.fromJson(
              json['insurer'] as Map<String, dynamic>,
            )
          : null,
      provider: Reference.fromJson(
        json['provider'] as Map<String, dynamic>,
      ),
      priority: CodeableConcept.fromJson(
        json['priority'] as Map<String, dynamic>,
      ),
      fundsReserve: json['fundsReserve'] != null
          ? CodeableConcept.fromJson(
              json['fundsReserve'] as Map<String, dynamic>,
            )
          : null,
      related: json['related'] != null
          ? (json['related'] as List<dynamic>)
              .map<ClaimRelated>(
                (v) => ClaimRelated.fromJson(
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
          ? ClaimPayee.fromJson(
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
      careTeam: json['careTeam'] != null
          ? (json['careTeam'] as List<dynamic>)
              .map<ClaimCareTeam>(
                (v) => ClaimCareTeam.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      supportingInfo: json['supportingInfo'] != null
          ? (json['supportingInfo'] as List<dynamic>)
              .map<ClaimSupportingInfo>(
                (v) => ClaimSupportingInfo.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      diagnosis: json['diagnosis'] != null
          ? (json['diagnosis'] as List<dynamic>)
              .map<ClaimDiagnosis>(
                (v) => ClaimDiagnosis.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      procedure: json['procedure'] != null
          ? (json['procedure'] as List<dynamic>)
              .map<ClaimProcedure>(
                (v) => ClaimProcedure.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      insurance: ensureNonNullList((json['insurance'] as List<dynamic>)
          .map<ClaimInsurance>(
            (v) => ClaimInsurance.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList()),
      accident: json['accident'] != null
          ? ClaimAccident.fromJson(
              json['accident'] as Map<String, dynamic>,
            )
          : null,
      item: json['item'] != null
          ? (json['item'] as List<dynamic>)
              .map<ClaimItem>(
                (v) => ClaimItem.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      total: json['total'] != null
          ? Money.fromJson(
              json['total'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [Claim] from a [String]
  /// or [YamlMap] object
  factory Claim.fromYaml(dynamic yaml) => yaml is String
      ? Claim.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? Claim.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('Claim cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [Claim]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Claim.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (meta != null) {
      final fieldJson1 = meta!.toJson();
      json['meta'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_meta'] = fieldJson1['_value'];
      }
    }

    if (implicitRules != null) {
      final fieldJson2 = implicitRules!.toJson();
      json['implicitRules'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_implicitRules'] = fieldJson2['_value'];
      }
    }

    if (language != null) {
      final fieldJson3 = language!.toJson();
      json['language'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_language'] = fieldJson3['_value'];
      }
    }

    if (text != null) {
      final fieldJson4 = text!.toJson();
      json['text'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_text'] = fieldJson4['_value'];
      }
    }

    if (contained != null && contained!.isNotEmpty) {
      final fieldJson5 = contained!.map((e) => e.toJson()).toList();
      json['contained'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_contained'] = fieldJson5.map((e) => e['_value']).toList();
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson6 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson6.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson7 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson7.map((e) => e['value']).toList();
      if (fieldJson7.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson7.map((e) => e['_value']).toList();
      }
    }

    if (identifier != null && identifier!.isNotEmpty) {
      final fieldJson8 = identifier!.map((e) => e.toJson()).toList();
      json['identifier'] = fieldJson8.map((e) => e['value']).toList();
      if (fieldJson8.any((e) => e['_value'] != null)) {
        json['_identifier'] = fieldJson8.map((e) => e['_value']).toList();
      }
    }

    final fieldJson9 = status.toJson();
    json['status'] = fieldJson9['value'];
    if (fieldJson9['_value'] != null) {
      json['_status'] = fieldJson9['_value'];
    }

    final fieldJson10 = type.toJson();
    json['type'] = fieldJson10['value'];
    if (fieldJson10['_value'] != null) {
      json['_type'] = fieldJson10['_value'];
    }

    if (subType != null) {
      final fieldJson11 = subType!.toJson();
      json['subType'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_subType'] = fieldJson11['_value'];
      }
    }

    final fieldJson12 = use.toJson();
    json['use'] = fieldJson12['value'];
    if (fieldJson12['_value'] != null) {
      json['_use'] = fieldJson12['_value'];
    }

    final fieldJson13 = patient.toJson();
    json['patient'] = fieldJson13['value'];
    if (fieldJson13['_value'] != null) {
      json['_patient'] = fieldJson13['_value'];
    }

    if (billablePeriod != null) {
      final fieldJson14 = billablePeriod!.toJson();
      json['billablePeriod'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_billablePeriod'] = fieldJson14['_value'];
      }
    }

    final fieldJson15 = created.toJson();
    json['created'] = fieldJson15['value'];
    if (fieldJson15['_value'] != null) {
      json['_created'] = fieldJson15['_value'];
    }

    if (enterer != null) {
      final fieldJson16 = enterer!.toJson();
      json['enterer'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_enterer'] = fieldJson16['_value'];
      }
    }

    if (insurer != null) {
      final fieldJson17 = insurer!.toJson();
      json['insurer'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_insurer'] = fieldJson17['_value'];
      }
    }

    final fieldJson18 = provider.toJson();
    json['provider'] = fieldJson18['value'];
    if (fieldJson18['_value'] != null) {
      json['_provider'] = fieldJson18['_value'];
    }

    final fieldJson19 = priority.toJson();
    json['priority'] = fieldJson19['value'];
    if (fieldJson19['_value'] != null) {
      json['_priority'] = fieldJson19['_value'];
    }

    if (fundsReserve != null) {
      final fieldJson20 = fundsReserve!.toJson();
      json['fundsReserve'] = fieldJson20['value'];
      if (fieldJson20['_value'] != null) {
        json['_fundsReserve'] = fieldJson20['_value'];
      }
    }

    if (related != null && related!.isNotEmpty) {
      final fieldJson21 = related!.map((e) => e.toJson()).toList();
      json['related'] = fieldJson21.map((e) => e['value']).toList();
      if (fieldJson21.any((e) => e['_value'] != null)) {
        json['_related'] = fieldJson21.map((e) => e['_value']).toList();
      }
    }

    if (prescription != null) {
      final fieldJson22 = prescription!.toJson();
      json['prescription'] = fieldJson22['value'];
      if (fieldJson22['_value'] != null) {
        json['_prescription'] = fieldJson22['_value'];
      }
    }

    if (originalPrescription != null) {
      final fieldJson23 = originalPrescription!.toJson();
      json['originalPrescription'] = fieldJson23['value'];
      if (fieldJson23['_value'] != null) {
        json['_originalPrescription'] = fieldJson23['_value'];
      }
    }

    if (payee != null) {
      final fieldJson24 = payee!.toJson();
      json['payee'] = fieldJson24['value'];
      if (fieldJson24['_value'] != null) {
        json['_payee'] = fieldJson24['_value'];
      }
    }

    if (referral != null) {
      final fieldJson25 = referral!.toJson();
      json['referral'] = fieldJson25['value'];
      if (fieldJson25['_value'] != null) {
        json['_referral'] = fieldJson25['_value'];
      }
    }

    if (facility != null) {
      final fieldJson26 = facility!.toJson();
      json['facility'] = fieldJson26['value'];
      if (fieldJson26['_value'] != null) {
        json['_facility'] = fieldJson26['_value'];
      }
    }

    if (careTeam != null && careTeam!.isNotEmpty) {
      final fieldJson27 = careTeam!.map((e) => e.toJson()).toList();
      json['careTeam'] = fieldJson27.map((e) => e['value']).toList();
      if (fieldJson27.any((e) => e['_value'] != null)) {
        json['_careTeam'] = fieldJson27.map((e) => e['_value']).toList();
      }
    }

    if (supportingInfo != null && supportingInfo!.isNotEmpty) {
      final fieldJson28 = supportingInfo!.map((e) => e.toJson()).toList();
      json['supportingInfo'] = fieldJson28.map((e) => e['value']).toList();
      if (fieldJson28.any((e) => e['_value'] != null)) {
        json['_supportingInfo'] = fieldJson28.map((e) => e['_value']).toList();
      }
    }

    if (diagnosis != null && diagnosis!.isNotEmpty) {
      final fieldJson29 = diagnosis!.map((e) => e.toJson()).toList();
      json['diagnosis'] = fieldJson29.map((e) => e['value']).toList();
      if (fieldJson29.any((e) => e['_value'] != null)) {
        json['_diagnosis'] = fieldJson29.map((e) => e['_value']).toList();
      }
    }

    if (procedure != null && procedure!.isNotEmpty) {
      final fieldJson30 = procedure!.map((e) => e.toJson()).toList();
      json['procedure'] = fieldJson30.map((e) => e['value']).toList();
      if (fieldJson30.any((e) => e['_value'] != null)) {
        json['_procedure'] = fieldJson30.map((e) => e['_value']).toList();
      }
    }

    final fieldJson31 = insurance.map((e) => e.toJson()).toList();
    json['insurance'] = fieldJson31.map((e) => e['value']).toList();
    if (fieldJson31.any((e) => e['_value'] != null)) {
      json['_insurance'] = fieldJson31.map((e) => e['_value']).toList();
    }

    if (accident != null) {
      final fieldJson32 = accident!.toJson();
      json['accident'] = fieldJson32['value'];
      if (fieldJson32['_value'] != null) {
        json['_accident'] = fieldJson32['_value'];
      }
    }

    if (item != null && item!.isNotEmpty) {
      final fieldJson33 = item!.map((e) => e.toJson()).toList();
      json['item'] = fieldJson33.map((e) => e['value']).toList();
      if (fieldJson33.any((e) => e['_value'] != null)) {
        json['_item'] = fieldJson33.map((e) => e['_value']).toList();
      }
    }

    if (total != null) {
      final fieldJson34 = total!.toJson();
      json['total'] = fieldJson34['value'];
      if (fieldJson34['_value'] != null) {
        json['_total'] = fieldJson34['_value'];
      }
    }

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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ClaimRelated]
/// Other claims which are related to this claim such as prior submissions
/// or claims for related services or for the same event.
class ClaimRelated extends BackboneElement {
  /// Primary constructor for [ClaimRelated]

  ClaimRelated({
    super.id,
    this.extension_,
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
  factory ClaimRelated.fromJson(Map<String, dynamic> json) {
    return ClaimRelated(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
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

  /// Deserialize [ClaimRelated] from a [String]
  /// or [YamlMap] object
  factory ClaimRelated.fromYaml(dynamic yaml) => yaml is String
      ? ClaimRelated.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ClaimRelated.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('ClaimRelated cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ClaimRelated]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimRelated.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (claim != null) {
      final fieldJson3 = claim!.toJson();
      json['claim'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_claim'] = fieldJson3['_value'];
      }
    }

    if (relationship != null) {
      final fieldJson4 = relationship!.toJson();
      json['relationship'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_relationship'] = fieldJson4['_value'];
      }
    }

    if (reference != null) {
      final fieldJson5 = reference!.toJson();
      json['reference'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_reference'] = fieldJson5['_value'];
      }
    }

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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ClaimRelated(
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

/// [ClaimPayee]
/// The party to be reimbursed for cost of the products and services
/// according to the terms of the policy.
class ClaimPayee extends BackboneElement {
  /// Primary constructor for [ClaimPayee]

  ClaimPayee({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.type,
    this.party,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimPayee.fromJson(Map<String, dynamic> json) {
    return ClaimPayee(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      type: CodeableConcept.fromJson(
        json['type'] as Map<String, dynamic>,
      ),
      party: json['party'] != null
          ? Reference.fromJson(
              json['party'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [ClaimPayee] from a [String]
  /// or [YamlMap] object
  factory ClaimPayee.fromYaml(dynamic yaml) => yaml is String
      ? ClaimPayee.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ClaimPayee.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('ClaimPayee cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ClaimPayee]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimPayee.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    final fieldJson3 = type.toJson();
    json['type'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_type'] = fieldJson3['_value'];
    }

    if (party != null) {
      final fieldJson4 = party!.toJson();
      json['party'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_party'] = fieldJson4['_value'];
      }
    }

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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ClaimPayee(
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

/// [ClaimCareTeam]
/// The members of the team who provided the products and services.
class ClaimCareTeam extends BackboneElement {
  /// Primary constructor for [ClaimCareTeam]

  ClaimCareTeam({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.sequence,
    required this.provider,
    this.responsible,
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
  factory ClaimCareTeam.fromJson(Map<String, dynamic> json) {
    return ClaimCareTeam(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      sequence: FhirPositiveInt.fromJson({
        'value': json['sequence'],
        '_value': json['_sequence'],
      }),
      provider: Reference.fromJson(
        json['provider'] as Map<String, dynamic>,
      ),
      responsible: json['responsible'] != null
          ? FhirBoolean.fromJson({
              'value': json['responsible'],
              '_value': json['_responsible'],
            })
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

  /// Deserialize [ClaimCareTeam] from a [String]
  /// or [YamlMap] object
  factory ClaimCareTeam.fromYaml(dynamic yaml) => yaml is String
      ? ClaimCareTeam.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ClaimCareTeam.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('ClaimCareTeam cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ClaimCareTeam]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimCareTeam.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    final fieldJson3 = sequence.toJson();
    json['sequence'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_sequence'] = fieldJson3['_value'];
    }

    final fieldJson4 = provider.toJson();
    json['provider'] = fieldJson4['value'];
    if (fieldJson4['_value'] != null) {
      json['_provider'] = fieldJson4['_value'];
    }

    if (responsible != null) {
      final fieldJson5 = responsible!.toJson();
      json['responsible'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_responsible'] = fieldJson5['_value'];
      }
    }

    if (role != null) {
      final fieldJson6 = role!.toJson();
      json['role'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_role'] = fieldJson6['_value'];
      }
    }

    if (qualification != null) {
      final fieldJson7 = qualification!.toJson();
      json['qualification'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_qualification'] = fieldJson7['_value'];
      }
    }

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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ClaimSupportingInfo]
/// Additional information codes regarding exceptions, special
/// considerations, the condition, situation, prior or concurrent issues.
class ClaimSupportingInfo extends BackboneElement {
  /// Primary constructor for [ClaimSupportingInfo]

  ClaimSupportingInfo({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.sequence,
    required this.category,
    this.code,
    this.timingDate,
    this.timingPeriod,
    this.valueBoolean,
    this.valueString,
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
  factory ClaimSupportingInfo.fromJson(Map<String, dynamic> json) {
    return ClaimSupportingInfo(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      sequence: FhirPositiveInt.fromJson({
        'value': json['sequence'],
        '_value': json['_sequence'],
      }),
      category: CodeableConcept.fromJson(
        json['category'] as Map<String, dynamic>,
      ),
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              json['code'] as Map<String, dynamic>,
            )
          : null,
      timingDate: json['timingDate'] != null
          ? FhirDate.fromJson({
              'value': json['timingDate'],
              '_value': json['_timingDate'],
            })
          : null,
      timingPeriod: json['timingPeriod'] != null
          ? Period.fromJson(
              json['timingPeriod'] as Map<String, dynamic>,
            )
          : null,
      valueBoolean: json['valueBoolean'] != null
          ? FhirBoolean.fromJson({
              'value': json['valueBoolean'],
              '_value': json['_valueBoolean'],
            })
          : null,
      valueString: json['valueString'] != null
          ? FhirString.fromJson({
              'value': json['valueString'],
              '_value': json['_valueString'],
            })
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
          ? CodeableConcept.fromJson(
              json['reason'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [ClaimSupportingInfo] from a [String]
  /// or [YamlMap] object
  factory ClaimSupportingInfo.fromYaml(dynamic yaml) => yaml is String
      ? ClaimSupportingInfo.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ClaimSupportingInfo.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ClaimSupportingInfo cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ClaimSupportingInfo]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimSupportingInfo.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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

  /// [timingDate]
  /// The date when or period to which this information refers.
  final FhirDate? timingDate;

  /// [timingPeriod]
  /// The date when or period to which this information refers.
  final Period? timingPeriod;

  /// [valueBoolean]
  /// Additional data or information such as resources, documents, images
  /// etc. including references to the data or the actual inclusion of the
  /// data.
  final FhirBoolean? valueBoolean;

  /// [valueString]
  /// Additional data or information such as resources, documents, images
  /// etc. including references to the data or the actual inclusion of the
  /// data.
  final FhirString? valueString;

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
  final CodeableConcept? reason;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    final fieldJson3 = sequence.toJson();
    json['sequence'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_sequence'] = fieldJson3['_value'];
    }

    final fieldJson4 = category.toJson();
    json['category'] = fieldJson4['value'];
    if (fieldJson4['_value'] != null) {
      json['_category'] = fieldJson4['_value'];
    }

    if (code != null) {
      final fieldJson5 = code!.toJson();
      json['code'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_code'] = fieldJson5['_value'];
      }
    }

    if (timingDate != null) {
      final fieldJson6 = timingDate!.toJson();
      json['timingDate'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_timingDate'] = fieldJson6['_value'];
      }
    }

    if (timingPeriod != null) {
      final fieldJson7 = timingPeriod!.toJson();
      json['timingPeriod'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_timingPeriod'] = fieldJson7['_value'];
      }
    }

    if (valueBoolean != null) {
      final fieldJson8 = valueBoolean!.toJson();
      json['valueBoolean'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_valueBoolean'] = fieldJson8['_value'];
      }
    }

    if (valueString != null) {
      final fieldJson9 = valueString!.toJson();
      json['valueString'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_valueString'] = fieldJson9['_value'];
      }
    }

    if (valueQuantity != null) {
      final fieldJson10 = valueQuantity!.toJson();
      json['valueQuantity'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_valueQuantity'] = fieldJson10['_value'];
      }
    }

    if (valueAttachment != null) {
      final fieldJson11 = valueAttachment!.toJson();
      json['valueAttachment'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_valueAttachment'] = fieldJson11['_value'];
      }
    }

    if (valueReference != null) {
      final fieldJson12 = valueReference!.toJson();
      json['valueReference'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_valueReference'] = fieldJson12['_value'];
      }
    }

    if (reason != null) {
      final fieldJson13 = reason!.toJson();
      json['reason'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_reason'] = fieldJson13['_value'];
      }
    }

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
    FhirDate? timingDate,
    Period? timingPeriod,
    FhirBoolean? valueBoolean,
    FhirString? valueString,
    Quantity? valueQuantity,
    Attachment? valueAttachment,
    Reference? valueReference,
    CodeableConcept? reason,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ClaimSupportingInfo(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      category: category ?? this.category,
      code: code ?? this.code,
      timingDate: timingDate ?? this.timingDate,
      timingPeriod: timingPeriod ?? this.timingPeriod,
      valueBoolean: valueBoolean ?? this.valueBoolean,
      valueString: valueString ?? this.valueString,
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

/// [ClaimDiagnosis]
/// Information about diagnoses relevant to the claim items.
class ClaimDiagnosis extends BackboneElement {
  /// Primary constructor for [ClaimDiagnosis]

  ClaimDiagnosis({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.sequence,
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
  factory ClaimDiagnosis.fromJson(Map<String, dynamic> json) {
    return ClaimDiagnosis(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      sequence: FhirPositiveInt.fromJson({
        'value': json['sequence'],
        '_value': json['_sequence'],
      }),
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
                (v) => CodeableConcept.fromJson(
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

  /// Deserialize [ClaimDiagnosis] from a [String]
  /// or [YamlMap] object
  factory ClaimDiagnosis.fromYaml(dynamic yaml) => yaml is String
      ? ClaimDiagnosis.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ClaimDiagnosis.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('ClaimDiagnosis cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ClaimDiagnosis]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimDiagnosis.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [sequence]
  /// A number to uniquely identify diagnosis entries.
  final FhirPositiveInt sequence;

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
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    final fieldJson3 = sequence.toJson();
    json['sequence'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_sequence'] = fieldJson3['_value'];
    }

    if (diagnosisCodeableConcept != null) {
      final fieldJson4 = diagnosisCodeableConcept!.toJson();
      json['diagnosisCodeableConcept'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_diagnosisCodeableConcept'] = fieldJson4['_value'];
      }
    }

    if (diagnosisReference != null) {
      final fieldJson5 = diagnosisReference!.toJson();
      json['diagnosisReference'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_diagnosisReference'] = fieldJson5['_value'];
      }
    }

    if (type != null && type!.isNotEmpty) {
      final fieldJson6 = type!.map((e) => e.toJson()).toList();
      json['type'] = fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_type'] = fieldJson6.map((e) => e['_value']).toList();
      }
    }

    if (onAdmission != null) {
      final fieldJson7 = onAdmission!.toJson();
      json['onAdmission'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_onAdmission'] = fieldJson7['_value'];
      }
    }

    if (packageCode != null) {
      final fieldJson8 = packageCode!.toJson();
      json['packageCode'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_packageCode'] = fieldJson8['_value'];
      }
    }

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
    return ClaimDiagnosis(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
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

/// [ClaimProcedure]
/// Procedures performed on the patient relevant to the billing items with
/// the claim.
class ClaimProcedure extends BackboneElement {
  /// Primary constructor for [ClaimProcedure]

  ClaimProcedure({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.sequence,
    this.type,
    this.date,
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
  factory ClaimProcedure.fromJson(Map<String, dynamic> json) {
    return ClaimProcedure(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      sequence: FhirPositiveInt.fromJson({
        'value': json['sequence'],
        '_value': json['_sequence'],
      }),
      type: json['type'] != null
          ? (json['type'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      date: json['date'] != null
          ? FhirDateTime.fromJson({
              'value': json['date'],
              '_value': json['_date'],
            })
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
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ClaimProcedure] from a [String]
  /// or [YamlMap] object
  factory ClaimProcedure.fromYaml(dynamic yaml) => yaml is String
      ? ClaimProcedure.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ClaimProcedure.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('ClaimProcedure cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ClaimProcedure]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimProcedure.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [sequence]
  /// A number to uniquely identify procedure entries.
  final FhirPositiveInt sequence;

  /// [type]
  /// When the condition was observed or the relative ranking.
  final List<CodeableConcept>? type;

  /// [date]
  /// Date and optionally time the procedure was performed.
  final FhirDateTime? date;

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
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    final fieldJson3 = sequence.toJson();
    json['sequence'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_sequence'] = fieldJson3['_value'];
    }

    if (type != null && type!.isNotEmpty) {
      final fieldJson4 = type!.map((e) => e.toJson()).toList();
      json['type'] = fieldJson4.map((e) => e['value']).toList();
      if (fieldJson4.any((e) => e['_value'] != null)) {
        json['_type'] = fieldJson4.map((e) => e['_value']).toList();
      }
    }

    if (date != null) {
      final fieldJson5 = date!.toJson();
      json['date'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_date'] = fieldJson5['_value'];
      }
    }

    if (procedureCodeableConcept != null) {
      final fieldJson6 = procedureCodeableConcept!.toJson();
      json['procedureCodeableConcept'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_procedureCodeableConcept'] = fieldJson6['_value'];
      }
    }

    if (procedureReference != null) {
      final fieldJson7 = procedureReference!.toJson();
      json['procedureReference'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_procedureReference'] = fieldJson7['_value'];
      }
    }

    if (udi != null && udi!.isNotEmpty) {
      final fieldJson8 = udi!.map((e) => e.toJson()).toList();
      json['udi'] = fieldJson8.map((e) => e['value']).toList();
      if (fieldJson8.any((e) => e['_value'] != null)) {
        json['_udi'] = fieldJson8.map((e) => e['_value']).toList();
      }
    }

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
    return ClaimProcedure(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      type: type ?? this.type,
      date: date ?? this.date,
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

/// [ClaimInsurance]
/// Financial instruments for reimbursement for the health care products
/// and services specified on the claim.
class ClaimInsurance extends BackboneElement {
  /// Primary constructor for [ClaimInsurance]

  ClaimInsurance({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.sequence,
    required this.focal,
    this.identifier,
    required this.coverage,
    this.businessArrangement,
    this.preAuthRef,
    this.claimResponse,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimInsurance.fromJson(Map<String, dynamic> json) {
    return ClaimInsurance(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      sequence: FhirPositiveInt.fromJson({
        'value': json['sequence'],
        '_value': json['_sequence'],
      }),
      focal: FhirBoolean.fromJson({
        'value': json['focal'],
        '_value': json['_focal'],
      }),
      identifier: json['identifier'] != null
          ? Identifier.fromJson(
              json['identifier'] as Map<String, dynamic>,
            )
          : null,
      coverage: Reference.fromJson(
        json['coverage'] as Map<String, dynamic>,
      ),
      businessArrangement: json['businessArrangement'] != null
          ? FhirString.fromJson({
              'value': json['businessArrangement'],
              '_value': json['_businessArrangement'],
            })
          : null,
      preAuthRef: parsePrimitiveList<FhirString>(
          json['preAuthRef'] as List<dynamic>?,
          json['_preAuthRef'] as List<dynamic>?,
          fromJson: FhirString.fromJson),
      claimResponse: json['claimResponse'] != null
          ? Reference.fromJson(
              json['claimResponse'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [ClaimInsurance] from a [String]
  /// or [YamlMap] object
  factory ClaimInsurance.fromYaml(dynamic yaml) => yaml is String
      ? ClaimInsurance.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ClaimInsurance.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('ClaimInsurance cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ClaimInsurance]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimInsurance.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    final fieldJson3 = sequence.toJson();
    json['sequence'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_sequence'] = fieldJson3['_value'];
    }

    final fieldJson4 = focal.toJson();
    json['focal'] = fieldJson4['value'];
    if (fieldJson4['_value'] != null) {
      json['_focal'] = fieldJson4['_value'];
    }

    if (identifier != null) {
      final fieldJson5 = identifier!.toJson();
      json['identifier'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_identifier'] = fieldJson5['_value'];
      }
    }

    final fieldJson6 = coverage.toJson();
    json['coverage'] = fieldJson6['value'];
    if (fieldJson6['_value'] != null) {
      json['_coverage'] = fieldJson6['_value'];
    }

    if (businessArrangement != null) {
      final fieldJson7 = businessArrangement!.toJson();
      json['businessArrangement'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_businessArrangement'] = fieldJson7['_value'];
      }
    }

    if (preAuthRef != null && preAuthRef!.isNotEmpty) {
      final fieldJson8 = preAuthRef!.map((e) => e.toJson()).toList();
      json['preAuthRef'] = fieldJson8.map((e) => e['value']).toList();
      if (fieldJson8.any((e) => e['_value'] != null)) {
        json['_preAuthRef'] = fieldJson8.map((e) => e['_value']).toList();
      }
    }

    if (claimResponse != null) {
      final fieldJson9 = claimResponse!.toJson();
      json['claimResponse'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_claimResponse'] = fieldJson9['_value'];
      }
    }

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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ClaimAccident]
/// Details of an accident which resulted in injuries which required the
/// products and services listed in the claim.
class ClaimAccident extends BackboneElement {
  /// Primary constructor for [ClaimAccident]

  ClaimAccident({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.date,
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
  factory ClaimAccident.fromJson(Map<String, dynamic> json) {
    return ClaimAccident(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      date: FhirDate.fromJson({
        'value': json['date'],
        '_value': json['_date'],
      }),
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

  /// Deserialize [ClaimAccident] from a [String]
  /// or [YamlMap] object
  factory ClaimAccident.fromYaml(dynamic yaml) => yaml is String
      ? ClaimAccident.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ClaimAccident.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('ClaimAccident cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ClaimAccident]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimAccident.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [date]
  /// Date of an accident event related to the products and services
  /// contained in the claim.
  final FhirDate date;

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
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    final fieldJson3 = date.toJson();
    json['date'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_date'] = fieldJson3['_value'];
    }

    if (type != null) {
      final fieldJson4 = type!.toJson();
      json['type'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_type'] = fieldJson4['_value'];
      }
    }

    if (locationAddress != null) {
      final fieldJson5 = locationAddress!.toJson();
      json['locationAddress'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_locationAddress'] = fieldJson5['_value'];
      }
    }

    if (locationReference != null) {
      final fieldJson6 = locationReference!.toJson();
      json['locationReference'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_locationReference'] = fieldJson6['_value'];
      }
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
    Address? locationAddress,
    Reference? locationReference,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ClaimAccident(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      date: date ?? this.date,
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

/// [ClaimItem]
/// A claim line. Either a simple product or service or a 'group' of
/// details which can each be a simple items or groups of sub-details.
class ClaimItem extends BackboneElement {
  /// Primary constructor for [ClaimItem]

  ClaimItem({
    super.id,
    this.extension_,
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
    this.servicedDate,
    this.servicedPeriod,
    this.locationCodeableConcept,
    this.locationAddress,
    this.locationReference,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.net,
    this.udi,
    this.bodySite,
    this.subSite,
    this.encounter,
    this.detail,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimItem.fromJson(Map<String, dynamic> json) {
    return ClaimItem(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      sequence: FhirPositiveInt.fromJson({
        'value': json['sequence'],
        '_value': json['_sequence'],
      }),
      careTeamSequence: parsePrimitiveList<FhirPositiveInt>(
          json['careTeamSequence'] as List<dynamic>?,
          json['_careTeamSequence'] as List<dynamic>?,
          fromJson: FhirPositiveInt.fromJson),
      diagnosisSequence: parsePrimitiveList<FhirPositiveInt>(
          json['diagnosisSequence'] as List<dynamic>?,
          json['_diagnosisSequence'] as List<dynamic>?,
          fromJson: FhirPositiveInt.fromJson),
      procedureSequence: parsePrimitiveList<FhirPositiveInt>(
          json['procedureSequence'] as List<dynamic>?,
          json['_procedureSequence'] as List<dynamic>?,
          fromJson: FhirPositiveInt.fromJson),
      informationSequence: parsePrimitiveList<FhirPositiveInt>(
          json['informationSequence'] as List<dynamic>?,
          json['_informationSequence'] as List<dynamic>?,
          fromJson: FhirPositiveInt.fromJson),
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
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      programCode: json['programCode'] != null
          ? (json['programCode'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      servicedDate: json['servicedDate'] != null
          ? FhirDate.fromJson({
              'value': json['servicedDate'],
              '_value': json['_servicedDate'],
            })
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
      factor: json['factor'] != null
          ? FhirDecimal.fromJson({
              'value': json['factor'],
              '_value': json['_factor'],
            })
          : null,
      net: json['net'] != null
          ? Money.fromJson(
              json['net'] as Map<String, dynamic>,
            )
          : null,
      udi: json['udi'] != null
          ? (json['udi'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
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
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      encounter: json['encounter'] != null
          ? (json['encounter'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      detail: json['detail'] != null
          ? (json['detail'] as List<dynamic>)
              .map<ClaimDetail>(
                (v) => ClaimDetail.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ClaimItem] from a [String]
  /// or [YamlMap] object
  factory ClaimItem.fromYaml(dynamic yaml) => yaml is String
      ? ClaimItem.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ClaimItem.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('ClaimItem cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ClaimItem]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimItem.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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

  /// [servicedDate]
  /// The date or dates when the service or product was supplied, performed
  /// or completed.
  final FhirDate? servicedDate;

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
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    final fieldJson3 = sequence.toJson();
    json['sequence'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_sequence'] = fieldJson3['_value'];
    }

    if (careTeamSequence != null && careTeamSequence!.isNotEmpty) {
      final fieldJson4 = careTeamSequence!.map((e) => e.toJson()).toList();
      json['careTeamSequence'] = fieldJson4.map((e) => e['value']).toList();
      if (fieldJson4.any((e) => e['_value'] != null)) {
        json['_careTeamSequence'] = fieldJson4.map((e) => e['_value']).toList();
      }
    }

    if (diagnosisSequence != null && diagnosisSequence!.isNotEmpty) {
      final fieldJson5 = diagnosisSequence!.map((e) => e.toJson()).toList();
      json['diagnosisSequence'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_diagnosisSequence'] =
            fieldJson5.map((e) => e['_value']).toList();
      }
    }

    if (procedureSequence != null && procedureSequence!.isNotEmpty) {
      final fieldJson6 = procedureSequence!.map((e) => e.toJson()).toList();
      json['procedureSequence'] = fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_procedureSequence'] =
            fieldJson6.map((e) => e['_value']).toList();
      }
    }

    if (informationSequence != null && informationSequence!.isNotEmpty) {
      final fieldJson7 = informationSequence!.map((e) => e.toJson()).toList();
      json['informationSequence'] = fieldJson7.map((e) => e['value']).toList();
      if (fieldJson7.any((e) => e['_value'] != null)) {
        json['_informationSequence'] =
            fieldJson7.map((e) => e['_value']).toList();
      }
    }

    if (revenue != null) {
      final fieldJson8 = revenue!.toJson();
      json['revenue'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_revenue'] = fieldJson8['_value'];
      }
    }

    if (category != null) {
      final fieldJson9 = category!.toJson();
      json['category'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_category'] = fieldJson9['_value'];
      }
    }

    final fieldJson10 = productOrService.toJson();
    json['productOrService'] = fieldJson10['value'];
    if (fieldJson10['_value'] != null) {
      json['_productOrService'] = fieldJson10['_value'];
    }

    if (modifier != null && modifier!.isNotEmpty) {
      final fieldJson11 = modifier!.map((e) => e.toJson()).toList();
      json['modifier'] = fieldJson11.map((e) => e['value']).toList();
      if (fieldJson11.any((e) => e['_value'] != null)) {
        json['_modifier'] = fieldJson11.map((e) => e['_value']).toList();
      }
    }

    if (programCode != null && programCode!.isNotEmpty) {
      final fieldJson12 = programCode!.map((e) => e.toJson()).toList();
      json['programCode'] = fieldJson12.map((e) => e['value']).toList();
      if (fieldJson12.any((e) => e['_value'] != null)) {
        json['_programCode'] = fieldJson12.map((e) => e['_value']).toList();
      }
    }

    if (servicedDate != null) {
      final fieldJson13 = servicedDate!.toJson();
      json['servicedDate'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_servicedDate'] = fieldJson13['_value'];
      }
    }

    if (servicedPeriod != null) {
      final fieldJson14 = servicedPeriod!.toJson();
      json['servicedPeriod'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_servicedPeriod'] = fieldJson14['_value'];
      }
    }

    if (locationCodeableConcept != null) {
      final fieldJson15 = locationCodeableConcept!.toJson();
      json['locationCodeableConcept'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_locationCodeableConcept'] = fieldJson15['_value'];
      }
    }

    if (locationAddress != null) {
      final fieldJson16 = locationAddress!.toJson();
      json['locationAddress'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_locationAddress'] = fieldJson16['_value'];
      }
    }

    if (locationReference != null) {
      final fieldJson17 = locationReference!.toJson();
      json['locationReference'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_locationReference'] = fieldJson17['_value'];
      }
    }

    if (quantity != null) {
      final fieldJson18 = quantity!.toJson();
      json['quantity'] = fieldJson18['value'];
      if (fieldJson18['_value'] != null) {
        json['_quantity'] = fieldJson18['_value'];
      }
    }

    if (unitPrice != null) {
      final fieldJson19 = unitPrice!.toJson();
      json['unitPrice'] = fieldJson19['value'];
      if (fieldJson19['_value'] != null) {
        json['_unitPrice'] = fieldJson19['_value'];
      }
    }

    if (factor != null) {
      final fieldJson20 = factor!.toJson();
      json['factor'] = fieldJson20['value'];
      if (fieldJson20['_value'] != null) {
        json['_factor'] = fieldJson20['_value'];
      }
    }

    if (net != null) {
      final fieldJson21 = net!.toJson();
      json['net'] = fieldJson21['value'];
      if (fieldJson21['_value'] != null) {
        json['_net'] = fieldJson21['_value'];
      }
    }

    if (udi != null && udi!.isNotEmpty) {
      final fieldJson22 = udi!.map((e) => e.toJson()).toList();
      json['udi'] = fieldJson22.map((e) => e['value']).toList();
      if (fieldJson22.any((e) => e['_value'] != null)) {
        json['_udi'] = fieldJson22.map((e) => e['_value']).toList();
      }
    }

    if (bodySite != null) {
      final fieldJson23 = bodySite!.toJson();
      json['bodySite'] = fieldJson23['value'];
      if (fieldJson23['_value'] != null) {
        json['_bodySite'] = fieldJson23['_value'];
      }
    }

    if (subSite != null && subSite!.isNotEmpty) {
      final fieldJson24 = subSite!.map((e) => e.toJson()).toList();
      json['subSite'] = fieldJson24.map((e) => e['value']).toList();
      if (fieldJson24.any((e) => e['_value'] != null)) {
        json['_subSite'] = fieldJson24.map((e) => e['_value']).toList();
      }
    }

    if (encounter != null && encounter!.isNotEmpty) {
      final fieldJson25 = encounter!.map((e) => e.toJson()).toList();
      json['encounter'] = fieldJson25.map((e) => e['value']).toList();
      if (fieldJson25.any((e) => e['_value'] != null)) {
        json['_encounter'] = fieldJson25.map((e) => e['_value']).toList();
      }
    }

    if (detail != null && detail!.isNotEmpty) {
      final fieldJson26 = detail!.map((e) => e.toJson()).toList();
      json['detail'] = fieldJson26.map((e) => e['value']).toList();
      if (fieldJson26.any((e) => e['_value'] != null)) {
        json['_detail'] = fieldJson26.map((e) => e['_value']).toList();
      }
    }

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
    FhirDate? servicedDate,
    Period? servicedPeriod,
    CodeableConcept? locationCodeableConcept,
    Address? locationAddress,
    Reference? locationReference,
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      servicedDate: servicedDate ?? this.servicedDate,
      servicedPeriod: servicedPeriod ?? this.servicedPeriod,
      locationCodeableConcept:
          locationCodeableConcept ?? this.locationCodeableConcept,
      locationAddress: locationAddress ?? this.locationAddress,
      locationReference: locationReference ?? this.locationReference,
      quantity: quantity ?? this.quantity,
      unitPrice: unitPrice ?? this.unitPrice,
      factor: factor ?? this.factor,
      net: net ?? this.net,
      udi: udi ?? this.udi,
      bodySite: bodySite ?? this.bodySite,
      subSite: subSite ?? this.subSite,
      encounter: encounter ?? this.encounter,
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

/// [ClaimDetail]
/// A claim detail line. Either a simple (a product or service) or a
/// 'group' of sub-details which are simple items.
class ClaimDetail extends BackboneElement {
  /// Primary constructor for [ClaimDetail]

  ClaimDetail({
    super.id,
    this.extension_,
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimDetail.fromJson(Map<String, dynamic> json) {
    return ClaimDetail(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      sequence: FhirPositiveInt.fromJson({
        'value': json['sequence'],
        '_value': json['_sequence'],
      }),
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
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      programCode: json['programCode'] != null
          ? (json['programCode'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
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
      factor: json['factor'] != null
          ? FhirDecimal.fromJson({
              'value': json['factor'],
              '_value': json['_factor'],
            })
          : null,
      net: json['net'] != null
          ? Money.fromJson(
              json['net'] as Map<String, dynamic>,
            )
          : null,
      udi: json['udi'] != null
          ? (json['udi'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      subDetail: json['subDetail'] != null
          ? (json['subDetail'] as List<dynamic>)
              .map<ClaimSubDetail>(
                (v) => ClaimSubDetail.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ClaimDetail] from a [String]
  /// or [YamlMap] object
  factory ClaimDetail.fromYaml(dynamic yaml) => yaml is String
      ? ClaimDetail.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ClaimDetail.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('ClaimDetail cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ClaimDetail]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimDetail.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    final fieldJson3 = sequence.toJson();
    json['sequence'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_sequence'] = fieldJson3['_value'];
    }

    if (revenue != null) {
      final fieldJson4 = revenue!.toJson();
      json['revenue'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_revenue'] = fieldJson4['_value'];
      }
    }

    if (category != null) {
      final fieldJson5 = category!.toJson();
      json['category'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_category'] = fieldJson5['_value'];
      }
    }

    final fieldJson6 = productOrService.toJson();
    json['productOrService'] = fieldJson6['value'];
    if (fieldJson6['_value'] != null) {
      json['_productOrService'] = fieldJson6['_value'];
    }

    if (modifier != null && modifier!.isNotEmpty) {
      final fieldJson7 = modifier!.map((e) => e.toJson()).toList();
      json['modifier'] = fieldJson7.map((e) => e['value']).toList();
      if (fieldJson7.any((e) => e['_value'] != null)) {
        json['_modifier'] = fieldJson7.map((e) => e['_value']).toList();
      }
    }

    if (programCode != null && programCode!.isNotEmpty) {
      final fieldJson8 = programCode!.map((e) => e.toJson()).toList();
      json['programCode'] = fieldJson8.map((e) => e['value']).toList();
      if (fieldJson8.any((e) => e['_value'] != null)) {
        json['_programCode'] = fieldJson8.map((e) => e['_value']).toList();
      }
    }

    if (quantity != null) {
      final fieldJson9 = quantity!.toJson();
      json['quantity'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_quantity'] = fieldJson9['_value'];
      }
    }

    if (unitPrice != null) {
      final fieldJson10 = unitPrice!.toJson();
      json['unitPrice'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_unitPrice'] = fieldJson10['_value'];
      }
    }

    if (factor != null) {
      final fieldJson11 = factor!.toJson();
      json['factor'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_factor'] = fieldJson11['_value'];
      }
    }

    if (net != null) {
      final fieldJson12 = net!.toJson();
      json['net'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_net'] = fieldJson12['_value'];
      }
    }

    if (udi != null && udi!.isNotEmpty) {
      final fieldJson13 = udi!.map((e) => e.toJson()).toList();
      json['udi'] = fieldJson13.map((e) => e['value']).toList();
      if (fieldJson13.any((e) => e['_value'] != null)) {
        json['_udi'] = fieldJson13.map((e) => e['_value']).toList();
      }
    }

    if (subDetail != null && subDetail!.isNotEmpty) {
      final fieldJson14 = subDetail!.map((e) => e.toJson()).toList();
      json['subDetail'] = fieldJson14.map((e) => e['value']).toList();
      if (fieldJson14.any((e) => e['_value'] != null)) {
        json['_subDetail'] = fieldJson14.map((e) => e['_value']).toList();
      }
    }

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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ClaimSubDetail]
/// A claim detail line. Either a simple (a product or service) or a
/// 'group' of sub-details which are simple items.
class ClaimSubDetail extends BackboneElement {
  /// Primary constructor for [ClaimSubDetail]

  ClaimSubDetail({
    super.id,
    this.extension_,
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClaimSubDetail.fromJson(Map<String, dynamic> json) {
    return ClaimSubDetail(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      sequence: FhirPositiveInt.fromJson({
        'value': json['sequence'],
        '_value': json['_sequence'],
      }),
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
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      programCode: json['programCode'] != null
          ? (json['programCode'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
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
      factor: json['factor'] != null
          ? FhirDecimal.fromJson({
              'value': json['factor'],
              '_value': json['_factor'],
            })
          : null,
      net: json['net'] != null
          ? Money.fromJson(
              json['net'] as Map<String, dynamic>,
            )
          : null,
      udi: json['udi'] != null
          ? (json['udi'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ClaimSubDetail] from a [String]
  /// or [YamlMap] object
  factory ClaimSubDetail.fromYaml(dynamic yaml) => yaml is String
      ? ClaimSubDetail.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ClaimSubDetail.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('ClaimSubDetail cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ClaimSubDetail]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClaimSubDetail.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    final fieldJson3 = sequence.toJson();
    json['sequence'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_sequence'] = fieldJson3['_value'];
    }

    if (revenue != null) {
      final fieldJson4 = revenue!.toJson();
      json['revenue'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_revenue'] = fieldJson4['_value'];
      }
    }

    if (category != null) {
      final fieldJson5 = category!.toJson();
      json['category'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_category'] = fieldJson5['_value'];
      }
    }

    final fieldJson6 = productOrService.toJson();
    json['productOrService'] = fieldJson6['value'];
    if (fieldJson6['_value'] != null) {
      json['_productOrService'] = fieldJson6['_value'];
    }

    if (modifier != null && modifier!.isNotEmpty) {
      final fieldJson7 = modifier!.map((e) => e.toJson()).toList();
      json['modifier'] = fieldJson7.map((e) => e['value']).toList();
      if (fieldJson7.any((e) => e['_value'] != null)) {
        json['_modifier'] = fieldJson7.map((e) => e['_value']).toList();
      }
    }

    if (programCode != null && programCode!.isNotEmpty) {
      final fieldJson8 = programCode!.map((e) => e.toJson()).toList();
      json['programCode'] = fieldJson8.map((e) => e['value']).toList();
      if (fieldJson8.any((e) => e['_value'] != null)) {
        json['_programCode'] = fieldJson8.map((e) => e['_value']).toList();
      }
    }

    if (quantity != null) {
      final fieldJson9 = quantity!.toJson();
      json['quantity'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_quantity'] = fieldJson9['_value'];
      }
    }

    if (unitPrice != null) {
      final fieldJson10 = unitPrice!.toJson();
      json['unitPrice'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_unitPrice'] = fieldJson10['_value'];
      }
    }

    if (factor != null) {
      final fieldJson11 = factor!.toJson();
      json['factor'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_factor'] = fieldJson11['_value'];
      }
    }

    if (net != null) {
      final fieldJson12 = net!.toJson();
      json['net'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_net'] = fieldJson12['_value'];
      }
    }

    if (udi != null && udi!.isNotEmpty) {
      final fieldJson13 = udi!.map((e) => e.toJson()).toList();
      json['udi'] = fieldJson13.map((e) => e['value']).toList();
      if (fieldJson13.any((e) => e['_value'] != null)) {
        json['_udi'] = fieldJson13.map((e) => e['_value']).toList();
      }
    }

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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
