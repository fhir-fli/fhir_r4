import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'coverage_eligibility_request.g.dart';

/// [CoverageEligibilityRequest] /// The CoverageEligibilityRequest provides patient and insurance coverage
/// information to an insurer for them to respond, in the form of an
/// CoverageEligibilityResponse, with information regarding whether the stated
/// coverage is valid and in-force and optionally to provide the insurance
/// details of the policy.
@JsonSerializable()
class CoverageEligibilityRequest extends DomainResource {
  CoverageEligibilityRequest({
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
    this.priority,
    required this.purpose,
    this.purposeElement,
    required this.patient,
    this.servicedDate,
    this.servicedDateElement,
    this.servicedPeriod,
    required this.created,
    this.createdElement,
    this.enterer,
    this.provider,
    required this.insurer,
    this.facility,
    this.supportingInfo,
    this.insurance,
    this.item,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    // ignore: avoid_unused_constructor_parameters
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.CoverageEligibilityRequest);
  @override
  String get fhirType => 'CoverageEligibilityRequest';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// A unique identifier assigned to this coverage eligiblity request.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [status] /// The status of the resource instance.
  @JsonKey(name: 'status')
  final FinancialResourceStatusCodes status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [priority] /// When the requestor expects the processor to complete processing.
  @JsonKey(name: 'priority')
  final CodeableConcept? priority;

  /// [purpose] /// Code to specify whether requesting: prior authorization requirements for
  /// some service categories or billing codes; benefits for coverages specified
  /// or discovered; discovery and return of coverages for the patient; and/or
  /// validation that the specified coverage is in-force at the date/period
  /// specified or 'now' if not specified.
  @JsonKey(name: 'purpose')
  final List<EligibilityRequestPurpose> purpose;
  @JsonKey(name: '_purpose')
  final List<Element>? purposeElement;

  /// [patient] /// The party who is the beneficiary of the supplied coverage and for whom
  /// eligibility is sought.
  @JsonKey(name: 'patient')
  final Reference patient;

  /// [servicedDate] /// The date or dates when the enclosed suite of services were performed or
  /// completed.
  @JsonKey(name: 'servicedDate')
  final FhirDate? servicedDate;
  @JsonKey(name: '_servicedDate')
  final Element? servicedDateElement;

  /// [servicedPeriod] /// The date or dates when the enclosed suite of services were performed or
  /// completed.
  @JsonKey(name: 'servicedPeriod')
  final Period? servicedPeriod;

  /// [created] /// The date when this resource was created.
  @JsonKey(name: 'created')
  final FhirDateTime created;
  @JsonKey(name: '_created')
  final Element? createdElement;

  /// [enterer] /// Person who created the request.
  @JsonKey(name: 'enterer')
  final Reference? enterer;

  /// [provider] /// The provider which is responsible for the request.
  @JsonKey(name: 'provider')
  final Reference? provider;

  /// [insurer] /// The Insurer who issued the coverage in question and is the recipient of the
  /// request.
  @JsonKey(name: 'insurer')
  final Reference insurer;

  /// [facility] /// Facility where the services are intended to be provided.
  @JsonKey(name: 'facility')
  final Reference? facility;

  /// [supportingInfo] /// Additional information codes regarding exceptions, special considerations,
  /// the condition, situation, prior or concurrent issues.
  @JsonKey(name: 'supportingInfo')
  final List<CoverageEligibilityRequestSupportingInfo>? supportingInfo;

  /// [insurance] /// Financial instruments for reimbursement for the health care products and
  /// services.
  @JsonKey(name: 'insurance')
  final List<CoverageEligibilityRequestInsurance>? insurance;

  /// [item] /// Service categories or billable services for which benefit details and/or an
  /// authorization prior to service delivery may be required by the payor.
  @JsonKey(name: 'item')
  final List<CoverageEligibilityRequestItem>? item;
  factory CoverageEligibilityRequest.fromJson(Map<String, dynamic> json) =>
      _$CoverageEligibilityRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CoverageEligibilityRequestToJson(this);

  @override
  CoverageEligibilityRequest clone() => throw UnimplementedError();
  @override
  CoverageEligibilityRequest copyWith({
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
    CodeableConcept? priority,
    List<EligibilityRequestPurpose>? purpose,
    List<Element>? purposeElement,
    Reference? patient,
    FhirDate? servicedDate,
    Element? servicedDateElement,
    Period? servicedPeriod,
    FhirDateTime? created,
    Element? createdElement,
    Reference? enterer,
    Reference? provider,
    Reference? insurer,
    Reference? facility,
    List<CoverageEligibilityRequestSupportingInfo>? supportingInfo,
    List<CoverageEligibilityRequestInsurance>? insurance,
    List<CoverageEligibilityRequestItem>? item,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CoverageEligibilityRequest(
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
      priority: priority ?? this.priority,
      purpose: purpose ?? this.purpose,
      purposeElement: purposeElement ?? this.purposeElement,
      patient: patient ?? this.patient,
      servicedDate: servicedDate ?? this.servicedDate,
      servicedDateElement: servicedDateElement ?? this.servicedDateElement,
      servicedPeriod: servicedPeriod ?? this.servicedPeriod,
      created: created ?? this.created,
      createdElement: createdElement ?? this.createdElement,
      enterer: enterer ?? this.enterer,
      provider: provider ?? this.provider,
      insurer: insurer ?? this.insurer,
      facility: facility ?? this.facility,
      supportingInfo: supportingInfo ?? this.supportingInfo,
      insurance: insurance ?? this.insurance,
      item: item ?? this.item,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CoverageEligibilityRequest.fromYaml(dynamic yaml) => yaml is String
      ? CoverageEligibilityRequest.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CoverageEligibilityRequest.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CoverageEligibilityRequest cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CoverageEligibilityRequest.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CoverageEligibilityRequest.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [CoverageEligibilityRequestSupportingInfo] /// Additional information codes regarding exceptions, special considerations,
/// the condition, situation, prior or concurrent issues.
@JsonSerializable()
class CoverageEligibilityRequestSupportingInfo extends BackboneElement {
  CoverageEligibilityRequestSupportingInfo({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequence,
    this.sequenceElement,
    required this.information,
    this.appliesToAll,
    this.appliesToAllElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'CoverageEligibilityRequestSupportingInfo';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [sequence] /// A number to uniquely identify supporting information entries.
  @JsonKey(name: 'sequence')
  final FhirPositiveInt sequence;
  @JsonKey(name: '_sequence')
  final Element? sequenceElement;

  /// [information] /// Additional data or information such as resources, documents, images etc.
  /// including references to the data or the actual inclusion of the data.
  @JsonKey(name: 'information')
  final Reference information;

  /// [appliesToAll] /// The supporting materials are applicable for all detail items,
  /// product/servce categories and specific billing codes.
  @JsonKey(name: 'appliesToAll')
  final FhirBoolean? appliesToAll;
  @JsonKey(name: '_appliesToAll')
  final Element? appliesToAllElement;
  factory CoverageEligibilityRequestSupportingInfo.fromJson(
          Map<String, dynamic> json) =>
      _$CoverageEligibilityRequestSupportingInfoFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$CoverageEligibilityRequestSupportingInfoToJson(this);

  @override
  CoverageEligibilityRequestSupportingInfo clone() =>
      throw UnimplementedError();
  @override
  CoverageEligibilityRequestSupportingInfo copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? sequence,
    Element? sequenceElement,
    Reference? information,
    FhirBoolean? appliesToAll,
    Element? appliesToAllElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CoverageEligibilityRequestSupportingInfo(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      sequenceElement: sequenceElement ?? this.sequenceElement,
      information: information ?? this.information,
      appliesToAll: appliesToAll ?? this.appliesToAll,
      appliesToAllElement: appliesToAllElement ?? this.appliesToAllElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CoverageEligibilityRequestSupportingInfo.fromYaml(dynamic yaml) => yaml
          is String
      ? CoverageEligibilityRequestSupportingInfo.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CoverageEligibilityRequestSupportingInfo.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CoverageEligibilityRequestSupportingInfo cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CoverageEligibilityRequestSupportingInfo.fromJsonString(
      String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CoverageEligibilityRequestSupportingInfo.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [CoverageEligibilityRequestInsurance] /// Financial instruments for reimbursement for the health care products and
/// services.
@JsonSerializable()
class CoverageEligibilityRequestInsurance extends BackboneElement {
  CoverageEligibilityRequestInsurance({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.focal,
    this.focalElement,
    required this.coverage,
    this.businessArrangement,
    this.businessArrangementElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'CoverageEligibilityRequestInsurance';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [focal] /// A flag to indicate that this Coverage is to be used for evaluation of this
  /// request when set to true.
  @JsonKey(name: 'focal')
  final FhirBoolean? focal;
  @JsonKey(name: '_focal')
  final Element? focalElement;

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
  factory CoverageEligibilityRequestInsurance.fromJson(
          Map<String, dynamic> json) =>
      _$CoverageEligibilityRequestInsuranceFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$CoverageEligibilityRequestInsuranceToJson(this);

  @override
  CoverageEligibilityRequestInsurance clone() => throw UnimplementedError();
  @override
  CoverageEligibilityRequestInsurance copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? focal,
    Element? focalElement,
    Reference? coverage,
    FhirString? businessArrangement,
    Element? businessArrangementElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CoverageEligibilityRequestInsurance(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      focal: focal ?? this.focal,
      focalElement: focalElement ?? this.focalElement,
      coverage: coverage ?? this.coverage,
      businessArrangement: businessArrangement ?? this.businessArrangement,
      businessArrangementElement:
          businessArrangementElement ?? this.businessArrangementElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CoverageEligibilityRequestInsurance.fromYaml(dynamic yaml) => yaml
          is String
      ? CoverageEligibilityRequestInsurance.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CoverageEligibilityRequestInsurance.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CoverageEligibilityRequestInsurance cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CoverageEligibilityRequestInsurance.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CoverageEligibilityRequestInsurance.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [CoverageEligibilityRequestItem] /// Service categories or billable services for which benefit details and/or an
/// authorization prior to service delivery may be required by the payor.
@JsonSerializable()
class CoverageEligibilityRequestItem extends BackboneElement {
  CoverageEligibilityRequestItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.supportingInfoSequence,
    this.supportingInfoSequenceElement,
    this.category,
    this.productOrService,
    this.modifier,
    this.provider,
    this.quantity,
    this.unitPrice,
    this.facility,
    this.diagnosis,
    this.detail,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'CoverageEligibilityRequestItem';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [supportingInfoSequence] /// Exceptions, special conditions and supporting information applicable for
  /// this service or product line.
  @JsonKey(name: 'supportingInfoSequence')
  final List<FhirPositiveInt>? supportingInfoSequence;
  @JsonKey(name: '_supportingInfoSequence')
  final List<Element>? supportingInfoSequenceElement;

  /// [category] /// Code to identify the general type of benefits under which products and
  /// services are provided.
  @JsonKey(name: 'category')
  final CodeableConcept? category;

  /// [productOrService] /// This contains the product, service, drug or other billing code for the
  /// item.
  @JsonKey(name: 'productOrService')
  final CodeableConcept? productOrService;

  /// [modifier] /// Item typification or modifiers codes to convey additional context for the
  /// product or service.
  @JsonKey(name: 'modifier')
  final List<CodeableConcept>? modifier;

  /// [provider] /// The practitioner who is responsible for the product or service to be
  /// rendered to the patient.
  @JsonKey(name: 'provider')
  final Reference? provider;

  /// [quantity] /// The number of repetitions of a service or product.
  @JsonKey(name: 'quantity')
  final Quantity? quantity;

  /// [unitPrice] /// The amount charged to the patient by the provider for a single unit.
  @JsonKey(name: 'unitPrice')
  final Money? unitPrice;

  /// [facility] /// Facility where the services will be provided.
  @JsonKey(name: 'facility')
  final Reference? facility;

  /// [diagnosis] /// Patient diagnosis for which care is sought.
  @JsonKey(name: 'diagnosis')
  final List<CoverageEligibilityRequestDiagnosis>? diagnosis;

  /// [detail] /// The plan/proposal/order describing the proposed service in detail.
  @JsonKey(name: 'detail')
  final List<Reference>? detail;
  factory CoverageEligibilityRequestItem.fromJson(Map<String, dynamic> json) =>
      _$CoverageEligibilityRequestItemFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CoverageEligibilityRequestItemToJson(this);

  @override
  CoverageEligibilityRequestItem clone() => throw UnimplementedError();
  @override
  CoverageEligibilityRequestItem copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<FhirPositiveInt>? supportingInfoSequence,
    List<Element>? supportingInfoSequenceElement,
    CodeableConcept? category,
    CodeableConcept? productOrService,
    List<CodeableConcept>? modifier,
    Reference? provider,
    Quantity? quantity,
    Money? unitPrice,
    Reference? facility,
    List<CoverageEligibilityRequestDiagnosis>? diagnosis,
    List<Reference>? detail,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CoverageEligibilityRequestItem(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      supportingInfoSequence:
          supportingInfoSequence ?? this.supportingInfoSequence,
      supportingInfoSequenceElement:
          supportingInfoSequenceElement ?? this.supportingInfoSequenceElement,
      category: category ?? this.category,
      productOrService: productOrService ?? this.productOrService,
      modifier: modifier ?? this.modifier,
      provider: provider ?? this.provider,
      quantity: quantity ?? this.quantity,
      unitPrice: unitPrice ?? this.unitPrice,
      facility: facility ?? this.facility,
      diagnosis: diagnosis ?? this.diagnosis,
      detail: detail ?? this.detail,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CoverageEligibilityRequestItem.fromYaml(dynamic yaml) => yaml
          is String
      ? CoverageEligibilityRequestItem.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CoverageEligibilityRequestItem.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CoverageEligibilityRequestItem cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CoverageEligibilityRequestItem.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CoverageEligibilityRequestItem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [CoverageEligibilityRequestDiagnosis] /// Patient diagnosis for which care is sought.
@JsonSerializable()
class CoverageEligibilityRequestDiagnosis extends BackboneElement {
  CoverageEligibilityRequestDiagnosis({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.diagnosisCodeableConcept,
    this.diagnosisReference,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'CoverageEligibilityRequestDiagnosis';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [diagnosisCodeableConcept] /// The nature of illness or problem in a coded form or as a reference to an
  /// external defined Condition.
  @JsonKey(name: 'diagnosisCodeableConcept')
  final CodeableConcept? diagnosisCodeableConcept;

  /// [diagnosisReference] /// The nature of illness or problem in a coded form or as a reference to an
  /// external defined Condition.
  @JsonKey(name: 'diagnosisReference')
  final Reference? diagnosisReference;
  factory CoverageEligibilityRequestDiagnosis.fromJson(
          Map<String, dynamic> json) =>
      _$CoverageEligibilityRequestDiagnosisFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$CoverageEligibilityRequestDiagnosisToJson(this);

  @override
  CoverageEligibilityRequestDiagnosis clone() => throw UnimplementedError();
  @override
  CoverageEligibilityRequestDiagnosis copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? diagnosisCodeableConcept,
    Reference? diagnosisReference,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CoverageEligibilityRequestDiagnosis(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      diagnosisCodeableConcept:
          diagnosisCodeableConcept ?? this.diagnosisCodeableConcept,
      diagnosisReference: diagnosisReference ?? this.diagnosisReference,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CoverageEligibilityRequestDiagnosis.fromYaml(dynamic yaml) => yaml
          is String
      ? CoverageEligibilityRequestDiagnosis.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CoverageEligibilityRequestDiagnosis.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CoverageEligibilityRequestDiagnosis cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CoverageEligibilityRequestDiagnosis.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CoverageEligibilityRequestDiagnosis.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
