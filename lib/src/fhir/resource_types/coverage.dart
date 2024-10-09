import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [Coverage] /// Financial instrument which may be used to reimburse or pay for health care
/// products and services. Includes both insurance and self-payment.
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
  }) : super(resourceType: R4ResourceType.Coverage);

  @override
  String get fhirType => 'Coverage';

  @Id()
  int dbId = 0;

  /// [identifier] /// A unique identifier assigned to this coverage.
  final List<Identifier>? identifier;

  /// [status] /// The status of the resource instance.
  final FinancialResourceStatusCodes status;
  final Element? statusElement;

  /// [type] /// The type of coverage: social program, medical plan, accident coverage
  /// (workers compensation, auto), group health or payment by an individual or
  /// organization.
  final CodeableConcept? type;

  /// [policyHolder] /// The party who 'owns' the insurance policy.
  final Reference? policyHolder;

  /// [subscriber] /// The party who has signed-up for or 'owns' the contractual relationship to
  /// the policy or to whom the benefit of the policy for services rendered to
  /// them or their family is due.
  final Reference? subscriber;

  /// [subscriberId] /// The insurer assigned ID for the Subscriber.
  final FhirString? subscriberId;
  final Element? subscriberIdElement;

  /// [beneficiary] /// The party who benefits from the insurance coverage; the patient when
  /// products and/or services are provided.
  final Reference beneficiary;

  /// [dependent] /// A unique identifier for a dependent under the coverage.
  final FhirString? dependent;
  final Element? dependentElement;

  /// [relationship] /// The relationship of beneficiary (patient) to the subscriber.
  final CodeableConcept? relationship;

  /// [period] /// Time period during which the coverage is in force. A missing start date
  /// indicates the start date isn't known, a missing end date means the coverage
  /// is continuing to be in force.
  final Period? period;

  /// [payor] /// The program or plan underwriter or payor including both insurance and
  /// non-insurance agreements, such as patient-pay agreements.
  final List<Reference> payor;

  /// [class_] /// A suite of underwriter specific classifiers.
  final List<CoverageClass>? class_;

  /// [order] /// The order of applicability of this coverage relative to other coverages
  /// which are currently in force. Note, there may be gaps in the numbering and
  /// this does not imply primary, secondary etc. as the specific positioning of
  /// coverages depends upon the episode of care.
  final FhirPositiveInt? order;
  final Element? orderElement;

  /// [network] /// The insurer-specific identifier for the insurer-defined network of
  /// providers to which the beneficiary may seek treatment which will be covered
  /// at the 'in-network' rate, otherwise 'out of network' terms and conditions
  /// apply.
  final FhirString? network;
  final Element? networkElement;

  /// [costToBeneficiary] /// A suite of codes indicating the cost category and associated amount which
  /// have been detailed in the policy and may have been included on the health
  /// card.
  final List<CoverageCostToBeneficiary>? costToBeneficiary;

  /// [subrogation] /// When 'subrogation=true' this insurance instance has been included not for
  /// adjudication but to provide insurers with the details to recover costs.
  final FhirBoolean? subrogation;
  final Element? subrogationElement;

  /// [contract] /// The policy(s) which constitute this insurance coverage.
  final List<Reference>? contract;
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
      json['implicitRules'] = implicitRules!.toJson();
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
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (policyHolder != null) {
      json['policyHolder'] = policyHolder!.toJson();
    }
    if (subscriber != null) {
      json['subscriber'] = subscriber!.toJson();
    }
    if (subscriberId?.value != null) {
      json['subscriberId'] = subscriberId!.toJson();
    }
    if (subscriberIdElement != null) {
      json['_subscriberId'] = subscriberIdElement!.toJson();
    }
    json['beneficiary'] = beneficiary.toJson();
    if (dependent?.value != null) {
      json['dependent'] = dependent!.toJson();
    }
    if (dependentElement != null) {
      json['_dependent'] = dependentElement!.toJson();
    }
    if (relationship != null) {
      json['relationship'] = relationship!.toJson();
    }
    if (period != null) {
      json['period'] = period!.toJson();
    }
    json['payor'] = payor.map<dynamic>((Reference v) => v.toJson()).toList();
    if (class_ != null && class_!.isNotEmpty) {
      json['class'] =
          class_!.map<dynamic>((CoverageClass v) => v.toJson()).toList();
    }
    if (order?.value != null) {
      json['order'] = order!.toJson();
    }
    if (orderElement != null) {
      json['_order'] = orderElement!.toJson();
    }
    if (network?.value != null) {
      json['network'] = network!.toJson();
    }
    if (networkElement != null) {
      json['_network'] = networkElement!.toJson();
    }
    if (costToBeneficiary != null && costToBeneficiary!.isNotEmpty) {
      json['costToBeneficiary'] = costToBeneficiary!
          .map<dynamic>((CoverageCostToBeneficiary v) => v.toJson())
          .toList();
    }
    if (subrogation?.value != null) {
      json['subrogation'] = subrogation!.toJson();
    }
    if (subrogationElement != null) {
      json['_subrogation'] = subrogationElement!.toJson();
    }
    if (contract != null && contract!.isNotEmpty) {
      json['contract'] =
          contract!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    return json;
  }

  factory Coverage.fromJson(Map<String, dynamic> json) {
    return Coverage(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson(json['implicitRules'])
          : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'])
          : null,
      languageElement: json['_language'] != null
          ? Element.fromJson(json['_language'] as Map<String, dynamic>)
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
      status: FinancialResourceStatusCodes.fromJson(json['status']),
      statusElement: json['_status'] != null
          ? Element.fromJson(json['_status'] as Map<String, dynamic>)
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
      policyHolder: json['policyHolder'] != null
          ? Reference.fromJson(json['policyHolder'] as Map<String, dynamic>)
          : null,
      subscriber: json['subscriber'] != null
          ? Reference.fromJson(json['subscriber'] as Map<String, dynamic>)
          : null,
      subscriberId: json['subscriberId'] != null
          ? FhirString.fromJson(json['subscriberId'])
          : null,
      subscriberIdElement: json['_subscriberId'] != null
          ? Element.fromJson(json['_subscriberId'] as Map<String, dynamic>)
          : null,
      beneficiary:
          Reference.fromJson(json['beneficiary'] as Map<String, dynamic>),
      dependent: json['dependent'] != null
          ? FhirString.fromJson(json['dependent'])
          : null,
      dependentElement: json['_dependent'] != null
          ? Element.fromJson(json['_dependent'] as Map<String, dynamic>)
          : null,
      relationship: json['relationship'] != null
          ? CodeableConcept.fromJson(
              json['relationship'] as Map<String, dynamic>)
          : null,
      period: json['period'] != null
          ? Period.fromJson(json['period'] as Map<String, dynamic>)
          : null,
      payor: (json['payor'] as List<dynamic>)
          .map<Reference>(
              (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
          .toList(),
      class_: json['class'] != null
          ? (json['class'] as List<dynamic>)
              .map<CoverageClass>((dynamic v) =>
                  CoverageClass.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      order: json['order'] != null
          ? FhirPositiveInt.fromJson(json['order'])
          : null,
      orderElement: json['_order'] != null
          ? Element.fromJson(json['_order'] as Map<String, dynamic>)
          : null,
      network:
          json['network'] != null ? FhirString.fromJson(json['network']) : null,
      networkElement: json['_network'] != null
          ? Element.fromJson(json['_network'] as Map<String, dynamic>)
          : null,
      costToBeneficiary: json['costToBeneficiary'] != null
          ? (json['costToBeneficiary'] as List<dynamic>)
              .map<CoverageCostToBeneficiary>((dynamic v) =>
                  CoverageCostToBeneficiary.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      subrogation: json['subrogation'] != null
          ? FhirBoolean.fromJson(json['subrogation'])
          : null,
      subrogationElement: json['_subrogation'] != null
          ? Element.fromJson(json['_subrogation'] as Map<String, dynamic>)
          : null,
      contract: json['contract'] != null
          ? (json['contract'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
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
    CodeableConcept? relationship,
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
  });

  @override
  String get fhirType => 'CoverageClass';

  @Id()
  int dbId = 0;

  /// [type] /// The type of classification for which an insurer-specific class label or
  /// number and optional name is provided, for example may be used to identify a
  /// class of coverage or employer group, Policy, Plan.
  final CodeableConcept type;

  /// [value] /// The alphanumeric string value associated with the insurer issued label.
  final FhirString value;
  final Element? valueElement;

  /// [name] /// A short description for the class.
  final FhirString? name;
  final Element? nameElement;
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
    json['value'] = value.toJson();
    if (valueElement != null) {
      json['_value'] = valueElement!.toJson();
    }
    if (name?.value != null) {
      json['name'] = name!.toJson();
    }
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    return json;
  }

  factory CoverageClass.fromJson(Map<String, dynamic> json) {
    return CoverageClass(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
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
      value: FhirString.fromJson(json['value']),
      valueElement: json['_value'] != null
          ? Element.fromJson(json['_value'] as Map<String, dynamic>)
          : null,
      name: json['name'] != null ? FhirString.fromJson(json['name']) : null,
      nameElement: json['_name'] != null
          ? Element.fromJson(json['_name'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  CoverageClass clone() => throw UnimplementedError();
  @override
  CoverageClass copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
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
class CoverageCostToBeneficiary extends BackboneElement {
  CoverageCostToBeneficiary({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.valueQuantity,
    this.valueMoney,
    this.exception,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'CoverageCostToBeneficiary';

  @Id()
  int dbId = 0;

  /// [type] /// The category of patient centric costs associated with treatment.
  final CodeableConcept? type;

  /// [valueQuantity] /// The amount due from the patient for the cost category.
  final Quantity? valueQuantity;

  /// [valueMoney] /// The amount due from the patient for the cost category.
  final Money? valueMoney;

  /// [exception] /// A suite of codes indicating exceptions or reductions to patient costs and
  /// their effective periods.
  final List<CoverageException>? exception;
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
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (valueQuantity != null) {
      json['valueQuantity'] = valueQuantity!.toJson();
    }
    if (valueMoney != null) {
      json['valueMoney'] = valueMoney!.toJson();
    }
    if (exception != null && exception!.isNotEmpty) {
      json['exception'] =
          exception!.map<dynamic>((CoverageException v) => v.toJson()).toList();
    }
    return json;
  }

  factory CoverageCostToBeneficiary.fromJson(Map<String, dynamic> json) {
    return CoverageCostToBeneficiary(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
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
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
      valueQuantity: json['valueQuantity'] != null
          ? Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>)
          : null,
      valueMoney: json['valueMoney'] != null
          ? Money.fromJson(json['valueMoney'] as Map<String, dynamic>)
          : null,
      exception: json['exception'] != null
          ? (json['exception'] as List<dynamic>)
              .map<CoverageException>((dynamic v) =>
                  CoverageException.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  CoverageCostToBeneficiary clone() => throw UnimplementedError();
  @override
  CoverageCostToBeneficiary copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
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
  });

  @override
  String get fhirType => 'CoverageException';

  @Id()
  int dbId = 0;

  /// [type] /// The code for the specific exception.
  final CodeableConcept type;

  /// [period] /// The timeframe during when the exception is in force.
  final Period? period;
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
    if (period != null) {
      json['period'] = period!.toJson();
    }
    return json;
  }

  factory CoverageException.fromJson(Map<String, dynamic> json) {
    return CoverageException(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
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
      period: json['period'] != null
          ? Period.fromJson(json['period'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  CoverageException clone() => throw UnimplementedError();
  @override
  CoverageException copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
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
