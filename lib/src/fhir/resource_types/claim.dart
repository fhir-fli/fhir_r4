import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [Claim] /// A provider issued list of professional services and products which have
/// been provided, or are to be provided, to a patient which is sent to an
/// insurer for reimbursement.
@JsonSerializable()
class Claim extends DomainResource {
  Claim({
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
  }) : super(resourceType: R4ResourceType.Claim);
  @override
  String get fhirType => 'Claim';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// A unique identifier assigned to this claim.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [status] /// The status of the resource instance.
  @JsonKey(name: 'status')
  final FinancialResourceStatusCodes status;
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
  /// supplied or are being considered and for whom actual or forecast
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

  /// [insurer] /// The Insurer who is target of the request.
  @JsonKey(name: 'insurer')
  final Reference? insurer;

  /// [provider] /// The provider which is responsible for the claim, predetermination or
  /// preauthorization.
  @JsonKey(name: 'provider')
  final Reference provider;

  /// [priority] /// The provider-required urgency of processing the request. Typical values
  /// include: stat, routine deferred.
  @JsonKey(name: 'priority')
  final CodeableConcept priority;

  /// [fundsReserve] /// A code to indicate whether and for whom funds are to be reserved for future
  /// claims.
  @JsonKey(name: 'fundsReserve')
  final CodeableConcept? fundsReserve;

  /// [related] /// Other claims which are related to this claim such as prior submissions or
  /// claims for related services or for the same event.
  @JsonKey(name: 'related')
  final List<ClaimRelated>? related;

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
  final ClaimPayee? payee;

  /// [referral] /// A reference to a referral resource.
  @JsonKey(name: 'referral')
  final Reference? referral;

  /// [facility] /// Facility where the services were provided.
  @JsonKey(name: 'facility')
  final Reference? facility;

  /// [careTeam] /// The members of the team who provided the products and services.
  @JsonKey(name: 'careTeam')
  final List<ClaimCareTeam>? careTeam;

  /// [supportingInfo] /// Additional information codes regarding exceptions, special considerations,
  /// the condition, situation, prior or concurrent issues.
  @JsonKey(name: 'supportingInfo')
  final List<ClaimSupportingInfo>? supportingInfo;

  /// [diagnosis] /// Information about diagnoses relevant to the claim items.
  @JsonKey(name: 'diagnosis')
  final List<ClaimDiagnosis>? diagnosis;

  /// [procedure] /// Procedures performed on the patient relevant to the billing items with the
  /// claim.
  @JsonKey(name: 'procedure')
  final List<ClaimProcedure>? procedure;

  /// [insurance] /// Financial instruments for reimbursement for the health care products and
  /// services specified on the claim.
  @JsonKey(name: 'insurance')
  final List<ClaimInsurance> insurance;

  /// [accident] /// Details of an accident which resulted in injuries which required the
  /// products and services listed in the claim.
  @JsonKey(name: 'accident')
  final ClaimAccident? accident;

  /// [item] /// A claim line. Either a simple product or service or a 'group' of details
  /// which can each be a simple items or groups of sub-details.
  @JsonKey(name: 'item')
  final List<ClaimItem>? item;

  /// [total] /// The total value of the all the items in the claim.
  @JsonKey(name: 'total')
  final Money? total;
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
    if (insurer != null) {
      json['insurer'] = insurer!.toJson();
    }
    json['provider'] = provider.toJson();
    json['priority'] = priority.toJson();
    if (fundsReserve != null) {
      json['fundsReserve'] = fundsReserve!.toJson();
    }
    if (related != null && related!.isNotEmpty) {
      json['related'] =
          related!.map<dynamic>((ClaimRelated v) => v.toJson()).toList();
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
    if (careTeam != null && careTeam!.isNotEmpty) {
      json['careTeam'] =
          careTeam!.map<dynamic>((ClaimCareTeam v) => v.toJson()).toList();
    }
    if (supportingInfo != null && supportingInfo!.isNotEmpty) {
      json['supportingInfo'] = supportingInfo!
          .map<dynamic>((ClaimSupportingInfo v) => v.toJson())
          .toList();
    }
    if (diagnosis != null && diagnosis!.isNotEmpty) {
      json['diagnosis'] =
          diagnosis!.map<dynamic>((ClaimDiagnosis v) => v.toJson()).toList();
    }
    if (procedure != null && procedure!.isNotEmpty) {
      json['procedure'] =
          procedure!.map<dynamic>((ClaimProcedure v) => v.toJson()).toList();
    }
    json['insurance'] =
        insurance.map<dynamic>((ClaimInsurance v) => v.toJson()).toList();
    if (accident != null) {
      json['accident'] = accident!.toJson();
    }
    if (item != null && item!.isNotEmpty) {
      json['item'] = item!.map<dynamic>((ClaimItem v) => v.toJson()).toList();
    }
    if (total != null) {
      json['total'] = total!.toJson();
    }
    return json;
  }

  factory Claim.fromJson(Map<String, dynamic> json) {
    return Claim(
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
      status: FinancialResourceStatusCodes.fromJson(
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
      insurer: json['insurer'] != null
          ? Reference.fromJson(json['insurer'] as Map<String, dynamic>)
          : null,
      provider: Reference.fromJson(json['provider'] as Map<String, dynamic>),
      priority:
          CodeableConcept.fromJson(json['priority'] as Map<String, dynamic>),
      fundsReserve: json['fundsReserve'] != null
          ? CodeableConcept.fromJson(
              json['fundsReserve'] as Map<String, dynamic>)
          : null,
      related: json['related'] != null
          ? (json['related'] as List<dynamic>)
              .map<ClaimRelated>((dynamic v) =>
                  ClaimRelated.fromJson(v as Map<String, dynamic>))
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
          ? ClaimPayee.fromJson(json['payee'] as Map<String, dynamic>)
          : null,
      referral: json['referral'] != null
          ? Reference.fromJson(json['referral'] as Map<String, dynamic>)
          : null,
      facility: json['facility'] != null
          ? Reference.fromJson(json['facility'] as Map<String, dynamic>)
          : null,
      careTeam: json['careTeam'] != null
          ? (json['careTeam'] as List<dynamic>)
              .map<ClaimCareTeam>((dynamic v) =>
                  ClaimCareTeam.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      supportingInfo: json['supportingInfo'] != null
          ? (json['supportingInfo'] as List<dynamic>)
              .map<ClaimSupportingInfo>((dynamic v) =>
                  ClaimSupportingInfo.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      diagnosis: json['diagnosis'] != null
          ? (json['diagnosis'] as List<dynamic>)
              .map<ClaimDiagnosis>((dynamic v) =>
                  ClaimDiagnosis.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      procedure: json['procedure'] != null
          ? (json['procedure'] as List<dynamic>)
              .map<ClaimProcedure>((dynamic v) =>
                  ClaimProcedure.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      insurance: (json['insurance'] as List<dynamic>)
          .map<ClaimInsurance>(
              (dynamic v) => ClaimInsurance.fromJson(v as Map<String, dynamic>))
          .toList(),
      accident: json['accident'] != null
          ? ClaimAccident.fromJson(json['accident'] as Map<String, dynamic>)
          : null,
      item: json['item'] != null
          ? (json['item'] as List<dynamic>)
              .map<ClaimItem>(
                  (dynamic v) => ClaimItem.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      total: json['total'] != null
          ? Money.fromJson(json['total'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  Claim clone() => throw UnimplementedError();
  @override
  Claim copyWith({
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
    FinancialResourceStatusCodes? status,
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

  factory Claim.fromYaml(dynamic yaml) => yaml is String
      ? Claim.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Claim.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Claim cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Claim.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Claim.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ClaimRelated] /// Other claims which are related to this claim such as prior submissions or
/// claims for related services or for the same event.
@JsonSerializable()
class ClaimRelated extends BackboneElement {
  ClaimRelated({
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
  String get fhirType => 'ClaimRelated';
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

  factory ClaimRelated.fromJson(Map<String, dynamic> json) {
    return ClaimRelated(
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

  factory ClaimRelated.fromYaml(dynamic yaml) => yaml is String
      ? ClaimRelated.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ClaimRelated.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ClaimRelated cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ClaimRelated.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClaimRelated.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ClaimPayee] /// The party to be reimbursed for cost of the products and services according
/// to the terms of the policy.
@JsonSerializable()
class ClaimPayee extends BackboneElement {
  ClaimPayee({
    super.id,
    super.extension_,
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
  @override
  String get fhirType => 'ClaimPayee';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Type of Party to be reimbursed: subscriber, provider, other.
  @JsonKey(name: 'type')
  final CodeableConcept type;

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
    json['type'] = type.toJson();
    if (party != null) {
      json['party'] = party!.toJson();
    }
    return json;
  }

  factory ClaimPayee.fromJson(Map<String, dynamic> json) {
    return ClaimPayee(
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
      party: json['party'] != null
          ? Reference.fromJson(json['party'] as Map<String, dynamic>)
          : null,
    );
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

  factory ClaimPayee.fromYaml(dynamic yaml) => yaml is String
      ? ClaimPayee.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ClaimPayee.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ClaimPayee cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ClaimPayee.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClaimPayee.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ClaimCareTeam] /// The members of the team who provided the products and services.
@JsonSerializable()
class ClaimCareTeam extends BackboneElement {
  ClaimCareTeam({
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
  String get fhirType => 'ClaimCareTeam';
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

  factory ClaimCareTeam.fromJson(Map<String, dynamic> json) {
    return ClaimCareTeam(
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
  ClaimCareTeam clone() => throw UnimplementedError();
  @override
  ClaimCareTeam copyWith({
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
    return ClaimCareTeam(
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

  factory ClaimCareTeam.fromYaml(dynamic yaml) => yaml is String
      ? ClaimCareTeam.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ClaimCareTeam.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ClaimCareTeam cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ClaimCareTeam.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClaimCareTeam.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ClaimSupportingInfo] /// Additional information codes regarding exceptions, special considerations,
/// the condition, situation, prior or concurrent issues.
@JsonSerializable()
class ClaimSupportingInfo extends BackboneElement {
  ClaimSupportingInfo({
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
  String get fhirType => 'ClaimSupportingInfo';
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
  final CodeableConcept? reason;
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

  factory ClaimSupportingInfo.fromJson(Map<String, dynamic> json) {
    return ClaimSupportingInfo(
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
          ? CodeableConcept.fromJson(json['reason'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  ClaimSupportingInfo clone() => throw UnimplementedError();
  @override
  ClaimSupportingInfo copyWith({
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

  factory ClaimSupportingInfo.fromYaml(dynamic yaml) => yaml is String
      ? ClaimSupportingInfo.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ClaimSupportingInfo.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ClaimSupportingInfo cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ClaimSupportingInfo.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClaimSupportingInfo.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ClaimDiagnosis] /// Information about diagnoses relevant to the claim items.
@JsonSerializable()
class ClaimDiagnosis extends BackboneElement {
  ClaimDiagnosis({
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
  String get fhirType => 'ClaimDiagnosis';
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

  factory ClaimDiagnosis.fromJson(Map<String, dynamic> json) {
    return ClaimDiagnosis(
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
  ClaimDiagnosis clone() => throw UnimplementedError();
  @override
  ClaimDiagnosis copyWith({
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
    return ClaimDiagnosis(
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

  factory ClaimDiagnosis.fromYaml(dynamic yaml) => yaml is String
      ? ClaimDiagnosis.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ClaimDiagnosis.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ClaimDiagnosis cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ClaimDiagnosis.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClaimDiagnosis.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ClaimProcedure] /// Procedures performed on the patient relevant to the billing items with the
/// claim.
@JsonSerializable()
class ClaimProcedure extends BackboneElement {
  ClaimProcedure({
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
  String get fhirType => 'ClaimProcedure';
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

  factory ClaimProcedure.fromJson(Map<String, dynamic> json) {
    return ClaimProcedure(
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
  ClaimProcedure clone() => throw UnimplementedError();
  @override
  ClaimProcedure copyWith({
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
    return ClaimProcedure(
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

  factory ClaimProcedure.fromYaml(dynamic yaml) => yaml is String
      ? ClaimProcedure.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ClaimProcedure.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ClaimProcedure cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ClaimProcedure.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClaimProcedure.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ClaimInsurance] /// Financial instruments for reimbursement for the health care products and
/// services specified on the claim.
@JsonSerializable()
class ClaimInsurance extends BackboneElement {
  ClaimInsurance({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequence,
    this.sequenceElement,
    required this.focal,
    this.focalElement,
    this.identifier,
    required this.coverage,
    this.businessArrangement,
    this.businessArrangementElement,
    this.preAuthRef,
    this.preAuthRefElement,
    this.claimResponse,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'ClaimInsurance';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [sequence] /// A number to uniquely identify insurance entries and provide a sequence of
  /// coverages to convey coordination of benefit order.
  @JsonKey(name: 'sequence')
  final FhirPositiveInt sequence;
  @JsonKey(name: '_sequence')
  final Element? sequenceElement;

  /// [focal] /// A flag to indicate that this Coverage is to be used for adjudication of
  /// this claim when set to true.
  @JsonKey(name: 'focal')
  final FhirBoolean focal;
  @JsonKey(name: '_focal')
  final Element? focalElement;

  /// [identifier] /// The business identifier to be used when the claim is sent for adjudication
  /// against this insurance policy.
  @JsonKey(name: 'identifier')
  final Identifier? identifier;

  /// [coverage] /// Reference to the insurance card level information contained in the Coverage
  /// resource. The coverage issuing insurer will use these details to locate the
  /// patient's actual coverage within the insurer's information system.
  @JsonKey(name: 'coverage')
  final Reference coverage;

  /// [businessArrangement] /// A business agreement number established between the provider and the
  /// insurer for special business processing purposes.
  @JsonKey(name: 'businessArrangement')
  final FhirString? businessArrangement;
  @JsonKey(name: '_businessArrangement')
  final Element? businessArrangementElement;

  /// [preAuthRef] /// Reference numbers previously provided by the insurer to the provider to be
  /// quoted on subsequent claims containing services or products related to the
  /// prior authorization.
  @JsonKey(name: 'preAuthRef')
  final List<FhirString>? preAuthRef;
  @JsonKey(name: '_preAuthRef')
  final List<Element>? preAuthRefElement;

  /// [claimResponse] /// The result of the adjudication of the line items for the Coverage specified
  /// in this insurance.
  @JsonKey(name: 'claimResponse')
  final Reference? claimResponse;
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
    json['focal'] = focal.value;
    if (focalElement != null) {
      json['_focal'] = focalElement!.toJson();
    }
    if (identifier != null) {
      json['identifier'] = identifier!.toJson();
    }
    json['coverage'] = coverage.toJson();
    if (businessArrangement?.value != null) {
      json['businessArrangement'] = businessArrangement!.value;
    }
    if (businessArrangementElement != null) {
      json['_businessArrangement'] = businessArrangementElement!.toJson();
    }
    if (preAuthRef != null && preAuthRef!.isNotEmpty) {
      json['preAuthRef'] = preAuthRef!.map((FhirString v) => v.value).toList();
    }
    if (preAuthRefElement != null && preAuthRefElement!.isNotEmpty) {
      json['_preAuthRef'] =
          preAuthRefElement!.map((Element v) => v.toJson()).toList();
    }
    if (claimResponse != null) {
      json['claimResponse'] = claimResponse!.toJson();
    }
    return json;
  }

  factory ClaimInsurance.fromJson(Map<String, dynamic> json) {
    return ClaimInsurance(
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
      focal: FhirBoolean(json['focal']),
      focalElement: Element.fromJson(json['_focal'] as Map<String, dynamic>),
      identifier: json['identifier'] != null
          ? Identifier.fromJson(json['identifier'] as Map<String, dynamic>)
          : null,
      coverage: Reference.fromJson(json['coverage'] as Map<String, dynamic>),
      businessArrangement: json['businessArrangement'] != null
          ? FhirString(json['businessArrangement'])
          : null,
      businessArrangementElement: json['_businessArrangement'] != null
          ? Element.fromJson(
              json['_businessArrangement'] as Map<String, dynamic>)
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
      claimResponse: json['claimResponse'] != null
          ? Reference.fromJson(json['claimResponse'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  ClaimInsurance clone() => throw UnimplementedError();
  @override
  ClaimInsurance copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? sequence,
    Element? sequenceElement,
    FhirBoolean? focal,
    Element? focalElement,
    Identifier? identifier,
    Reference? coverage,
    FhirString? businessArrangement,
    Element? businessArrangementElement,
    List<FhirString>? preAuthRef,
    List<Element>? preAuthRefElement,
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
      sequenceElement: sequenceElement ?? this.sequenceElement,
      focal: focal ?? this.focal,
      focalElement: focalElement ?? this.focalElement,
      identifier: identifier ?? this.identifier,
      coverage: coverage ?? this.coverage,
      businessArrangement: businessArrangement ?? this.businessArrangement,
      businessArrangementElement:
          businessArrangementElement ?? this.businessArrangementElement,
      preAuthRef: preAuthRef ?? this.preAuthRef,
      preAuthRefElement: preAuthRefElement ?? this.preAuthRefElement,
      claimResponse: claimResponse ?? this.claimResponse,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ClaimInsurance.fromYaml(dynamic yaml) => yaml is String
      ? ClaimInsurance.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ClaimInsurance.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ClaimInsurance cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ClaimInsurance.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClaimInsurance.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ClaimAccident] /// Details of an accident which resulted in injuries which required the
/// products and services listed in the claim.
@JsonSerializable()
class ClaimAccident extends BackboneElement {
  ClaimAccident({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.date,
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
  String get fhirType => 'ClaimAccident';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [date] /// Date of an accident event related to the products and services contained in
  /// the claim.
  @JsonKey(name: 'date')
  final FhirDate date;
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
    json['date'] = date.value;
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

  factory ClaimAccident.fromJson(Map<String, dynamic> json) {
    return ClaimAccident(
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
      date: FhirDate(json['date']),
      dateElement: Element.fromJson(json['_date'] as Map<String, dynamic>),
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
  ClaimAccident clone() => throw UnimplementedError();
  @override
  ClaimAccident copyWith({
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
    return ClaimAccident(
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

  factory ClaimAccident.fromYaml(dynamic yaml) => yaml is String
      ? ClaimAccident.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ClaimAccident.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ClaimAccident cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ClaimAccident.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClaimAccident.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ClaimItem] /// A claim line. Either a simple product or service or a 'group' of details
/// which can each be a simple items or groups of sub-details.
@JsonSerializable()
class ClaimItem extends BackboneElement {
  ClaimItem({
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
    this.detail,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'ClaimItem';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [sequence] /// A number to uniquely identify item entries.
  @JsonKey(name: 'sequence')
  final FhirPositiveInt sequence;
  @JsonKey(name: '_sequence')
  final Element? sequenceElement;

  /// [careTeamSequence] /// CareTeam members related to this service or product.
  @JsonKey(name: 'careTeamSequence')
  final List<FhirPositiveInt>? careTeamSequence;
  @JsonKey(name: '_careTeamSequence')
  final List<Element>? careTeamSequenceElement;

  /// [diagnosisSequence] /// Diagnosis applicable for this service or product.
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

  /// [encounter] /// The Encounters during which this Claim was created or to which the creation
  /// of this record is tightly associated.
  @JsonKey(name: 'encounter')
  final List<Reference>? encounter;

  /// [detail] /// A claim detail line. Either a simple (a product or service) or a 'group' of
  /// sub-details which are simple items.
  @JsonKey(name: 'detail')
  final List<ClaimDetail>? detail;
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
    if (detail != null && detail!.isNotEmpty) {
      json['detail'] =
          detail!.map<dynamic>((ClaimDetail v) => v.toJson()).toList();
    }
    return json;
  }

  factory ClaimItem.fromJson(Map<String, dynamic> json) {
    return ClaimItem(
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
      detail: json['detail'] != null
          ? (json['detail'] as List<dynamic>)
              .map<ClaimDetail>((dynamic v) =>
                  ClaimDetail.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  ClaimItem clone() => throw UnimplementedError();
  @override
  ClaimItem copyWith({
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
      detail: detail ?? this.detail,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ClaimItem.fromYaml(dynamic yaml) => yaml is String
      ? ClaimItem.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ClaimItem.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ClaimItem cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ClaimItem.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClaimItem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ClaimDetail] /// A claim detail line. Either a simple (a product or service) or a 'group' of
/// sub-details which are simple items.
@JsonSerializable()
class ClaimDetail extends BackboneElement {
  ClaimDetail({
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
    this.subDetail,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'ClaimDetail';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [sequence] /// A number to uniquely identify item entries.
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

  /// [subDetail] /// A claim detail line. Either a simple (a product or service) or a 'group' of
  /// sub-details which are simple items.
  @JsonKey(name: 'subDetail')
  final List<ClaimSubDetail>? subDetail;
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
    if (subDetail != null && subDetail!.isNotEmpty) {
      json['subDetail'] =
          subDetail!.map<dynamic>((ClaimSubDetail v) => v.toJson()).toList();
    }
    return json;
  }

  factory ClaimDetail.fromJson(Map<String, dynamic> json) {
    return ClaimDetail(
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
      subDetail: json['subDetail'] != null
          ? (json['subDetail'] as List<dynamic>)
              .map<ClaimSubDetail>((dynamic v) =>
                  ClaimSubDetail.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  ClaimDetail clone() => throw UnimplementedError();
  @override
  ClaimDetail copyWith({
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
      subDetail: subDetail ?? this.subDetail,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ClaimDetail.fromYaml(dynamic yaml) => yaml is String
      ? ClaimDetail.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ClaimDetail.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ClaimDetail cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ClaimDetail.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClaimDetail.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ClaimSubDetail] /// A claim detail line. Either a simple (a product or service) or a 'group' of
/// sub-details which are simple items.
@JsonSerializable()
class ClaimSubDetail extends BackboneElement {
  ClaimSubDetail({
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'ClaimSubDetail';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [sequence] /// A number to uniquely identify item entries.
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
    return json;
  }

  factory ClaimSubDetail.fromJson(Map<String, dynamic> json) {
    return ClaimSubDetail(
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
    );
  }
  @override
  ClaimSubDetail clone() => throw UnimplementedError();
  @override
  ClaimSubDetail copyWith({
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ClaimSubDetail.fromYaml(dynamic yaml) => yaml is String
      ? ClaimSubDetail.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ClaimSubDetail.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ClaimSubDetail cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ClaimSubDetail.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClaimSubDetail.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
