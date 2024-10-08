import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'coverage.g.dart';

/// [Coverage] /// Financial instrument which may be used to reimburse or pay for health care
/// products and services. Includes both insurance and self-payment.
@JsonSerializable()
class Coverage extends DomainResource {
  Coverage({
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
    this.type,
    this.policyHolder,
    this.subscriber,
    this.subscriberId,
    this.subscriberIdElement,
    required this.beneficiary,
    this.dependent,
    this.dependentElement,
    this.relationship,
    this.period,
    required this.payor,
    this.class_,
    this.order,
    this.orderElement,
    this.network,
    this.networkElement,
    this.costToBeneficiary,
    this.subrogation,
    this.subrogationElement,
    this.contract,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.Coverage, fhirType: 'Coverage');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// A unique identifier assigned to this coverage.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [status] /// The status of the resource instance.
  @JsonKey(name: 'status')
  final FinancialResourceStatusCodes status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [type] /// The type of coverage: social program, medical plan, accident coverage
  /// (workers compensation, auto), group health or payment by an individual or
  /// organization.
  @JsonKey(name: 'type')
  final CodeableConcept? type;

  /// [policyHolder] /// The party who 'owns' the insurance policy.
  @JsonKey(name: 'policyHolder')
  final Reference? policyHolder;

  /// [subscriber] /// The party who has signed-up for or 'owns' the contractual relationship to
  /// the policy or to whom the benefit of the policy for services rendered to
  /// them or their family is due.
  @JsonKey(name: 'subscriber')
  final Reference? subscriber;

  /// [subscriberId] /// The insurer assigned ID for the Subscriber.
  @JsonKey(name: 'subscriberId')
  final FhirString? subscriberId;
  @JsonKey(name: '_subscriberId')
  final Element? subscriberIdElement;

  /// [beneficiary] /// The party who benefits from the insurance coverage; the patient when
  /// products and/or services are provided.
  @JsonKey(name: 'beneficiary')
  final Reference beneficiary;

  /// [dependent] /// A unique identifier for a dependent under the coverage.
  @JsonKey(name: 'dependent')
  final FhirString? dependent;
  @JsonKey(name: '_dependent')
  final Element? dependentElement;

  /// [relationship] /// The relationship of beneficiary (patient) to the subscriber.
  @JsonKey(name: 'relationship')
  final SubscriberRelationshipCodes? relationship;

  /// [period] /// Time period during which the coverage is in force. A missing start date
  /// indicates the start date isn't known, a missing end date means the coverage
  /// is continuing to be in force.
  @JsonKey(name: 'period')
  final Period? period;

  /// [payor] /// The program or plan underwriter or payor including both insurance and
  /// non-insurance agreements, such as patient-pay agreements.
  @JsonKey(name: 'payor')
  final List<Reference> payor;

  /// [class_] /// A suite of underwriter specific classifiers.
  @JsonKey(name: 'class')
  final List<CoverageClass>? class_;

  /// [order] /// The order of applicability of this coverage relative to other coverages
  /// which are currently in force. Note, there may be gaps in the numbering and
  /// this does not imply primary, secondary etc. as the specific positioning of
  /// coverages depends upon the episode of care.
  @JsonKey(name: 'order')
  final FhirPositiveInt? order;
  @JsonKey(name: '_order')
  final Element? orderElement;

  /// [network] /// The insurer-specific identifier for the insurer-defined network of
  /// providers to which the beneficiary may seek treatment which will be covered
  /// at the 'in-network' rate, otherwise 'out of network' terms and conditions
  /// apply.
  @JsonKey(name: 'network')
  final FhirString? network;
  @JsonKey(name: '_network')
  final Element? networkElement;

  /// [costToBeneficiary] /// A suite of codes indicating the cost category and associated amount which
  /// have been detailed in the policy and may have been included on the health
  /// card.
  @JsonKey(name: 'costToBeneficiary')
  final List<CoverageCostToBeneficiary>? costToBeneficiary;

  /// [subrogation] /// When 'subrogation=true' this insurance instance has been included not for
  /// adjudication but to provide insurers with the details to recover costs.
  @JsonKey(name: 'subrogation')
  final FhirBoolean? subrogation;
  @JsonKey(name: '_subrogation')
  final Element? subrogationElement;

  /// [contract] /// The policy(s) which constitute this insurance coverage.
  @JsonKey(name: 'contract')
  final List<Reference>? contract;
  factory Coverage.fromJson(Map<String, dynamic> json) =>
      _$CoverageFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CoverageToJson(this);

  @override
  Coverage clone() => throw UnimplementedError();
  @override
  Coverage copyWith({
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
    Reference? policyHolder,
    Reference? subscriber,
    FhirString? subscriberId,
    Element? subscriberIdElement,
    Reference? beneficiary,
    FhirString? dependent,
    Element? dependentElement,
    SubscriberRelationshipCodes? relationship,
    Period? period,
    List<Reference>? payor,
    List<CoverageClass>? class_,
    FhirPositiveInt? order,
    Element? orderElement,
    FhirString? network,
    Element? networkElement,
    List<CoverageCostToBeneficiary>? costToBeneficiary,
    FhirBoolean? subrogation,
    Element? subrogationElement,
    List<Reference>? contract,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Coverage(
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
      policyHolder: policyHolder ?? this.policyHolder,
      subscriber: subscriber ?? this.subscriber,
      subscriberId: subscriberId ?? this.subscriberId,
      subscriberIdElement: subscriberIdElement ?? this.subscriberIdElement,
      beneficiary: beneficiary ?? this.beneficiary,
      dependent: dependent ?? this.dependent,
      dependentElement: dependentElement ?? this.dependentElement,
      relationship: relationship ?? this.relationship,
      period: period ?? this.period,
      payor: payor ?? this.payor,
      class_: class_ ?? this.class_,
      order: order ?? this.order,
      orderElement: orderElement ?? this.orderElement,
      network: network ?? this.network,
      networkElement: networkElement ?? this.networkElement,
      costToBeneficiary: costToBeneficiary ?? this.costToBeneficiary,
      subrogation: subrogation ?? this.subrogation,
      subrogationElement: subrogationElement ?? this.subrogationElement,
      contract: contract ?? this.contract,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory Coverage.fromYaml(dynamic yaml) => yaml is String
      ? Coverage.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Coverage.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Coverage cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Coverage.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Coverage.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [CoverageClass] /// A suite of underwriter specific classifiers.
@JsonSerializable()
class CoverageClass extends BackboneElement {
  CoverageClass({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    required this.value,
    this.valueElement,
    this.name,
    this.nameElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'CoverageClass');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// The type of classification for which an insurer-specific class label or
  /// number and optional name is provided, for example may be used to identify a
  /// class of coverage or employer group, Policy, Plan.
  @JsonKey(name: 'type')
  final CoverageClassCodes type;

  /// [value] /// The alphanumeric string value associated with the insurer issued label.
  @JsonKey(name: 'value')
  final FhirString value;
  @JsonKey(name: '_value')
  final Element? valueElement;

  /// [name] /// A short description for the class.
  @JsonKey(name: 'name')
  final FhirString? name;
  @JsonKey(name: '_name')
  final Element? nameElement;
  factory CoverageClass.fromJson(Map<String, dynamic> json) =>
      _$CoverageClassFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CoverageClassToJson(this);

  @override
  CoverageClass clone() => throw UnimplementedError();
  @override
  CoverageClass copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CoverageClassCodes? type,
    FhirString? value,
    Element? valueElement,
    FhirString? name,
    Element? nameElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CoverageClass(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      value: value ?? this.value,
      valueElement: valueElement ?? this.valueElement,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CoverageClass.fromYaml(dynamic yaml) => yaml is String
      ? CoverageClass.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CoverageClass.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CoverageClass cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CoverageClass.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CoverageClass.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [CoverageCostToBeneficiary] /// A suite of codes indicating the cost category and associated amount which
/// have been detailed in the policy and may have been included on the health
/// card.
@JsonSerializable()
class CoverageCostToBeneficiary extends BackboneElement {
  CoverageCostToBeneficiary({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    required this.valueQuantity,
    required this.valueMoney,
    this.exception,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'CoverageCostToBeneficiary');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// The category of patient centric costs associated with treatment.
  @JsonKey(name: 'type')
  final CoverageCopayTypeCodes? type;

  /// [valueQuantity] /// The amount due from the patient for the cost category.
  @JsonKey(name: 'valueQuantity')
  final Quantity valueQuantity;

  /// [valueMoney] /// The amount due from the patient for the cost category.
  @JsonKey(name: 'valueMoney')
  final Money valueMoney;

  /// [exception] /// A suite of codes indicating exceptions or reductions to patient costs and
  /// their effective periods.
  @JsonKey(name: 'exception')
  final List<CoverageException>? exception;
  factory CoverageCostToBeneficiary.fromJson(Map<String, dynamic> json) =>
      _$CoverageCostToBeneficiaryFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CoverageCostToBeneficiaryToJson(this);

  @override
  CoverageCostToBeneficiary clone() => throw UnimplementedError();
  @override
  CoverageCostToBeneficiary copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CoverageCopayTypeCodes? type,
    Quantity? valueQuantity,
    Money? valueMoney,
    List<CoverageException>? exception,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CoverageCostToBeneficiary(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      valueQuantity: valueQuantity ?? this.valueQuantity,
      valueMoney: valueMoney ?? this.valueMoney,
      exception: exception ?? this.exception,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CoverageCostToBeneficiary.fromYaml(dynamic yaml) => yaml is String
      ? CoverageCostToBeneficiary.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CoverageCostToBeneficiary.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CoverageCostToBeneficiary cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CoverageCostToBeneficiary.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CoverageCostToBeneficiary.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [CoverageException] /// A suite of codes indicating exceptions or reductions to patient costs and
/// their effective periods.
@JsonSerializable()
class CoverageException extends BackboneElement {
  CoverageException({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.period,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'CoverageException');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// The code for the specific exception.
  @JsonKey(name: 'type')
  final ExampleCoverageFinancialExceptionCodes type;

  /// [period] /// The timeframe during when the exception is in force.
  @JsonKey(name: 'period')
  final Period? period;
  factory CoverageException.fromJson(Map<String, dynamic> json) =>
      _$CoverageExceptionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CoverageExceptionToJson(this);

  @override
  CoverageException clone() => throw UnimplementedError();
  @override
  CoverageException copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ExampleCoverageFinancialExceptionCodes? type,
    Period? period,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CoverageException(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      period: period ?? this.period,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CoverageException.fromYaml(dynamic yaml) => yaml is String
      ? CoverageException.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CoverageException.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CoverageException cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CoverageException.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CoverageException.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
