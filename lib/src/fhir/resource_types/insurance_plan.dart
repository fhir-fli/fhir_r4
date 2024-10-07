import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'insurance_plan.g.dart';

/// [InsurancePlan] /// Details of a Health Insurance product/plan provided by an organization.
@JsonSerializable()
class InsurancePlan extends DomainResource {
  InsurancePlan({
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
    this.status,
    this.statusElement,
    this.type,
    this.name,
    this.nameElement,
    this.alias,
    this.aliasElement,
    this.period,
    this.ownedBy,
    this.administeredBy,
    this.coverageArea,
    this.contact,
    this.endpoint,
    this.network,
    this.coverage,
    this.plan,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
            resourceType: R4ResourceType.InsurancePlan,
            fhirType: 'InsurancePlan');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Business identifiers assigned to this health insurance product which remain
  /// constant as the resource is updated and propagates from server to server.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [status] /// The current state of the health insurance product.
  @JsonKey(name: 'status')
  final FhirCode? status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [type] /// The kind of health insurance product.
  @JsonKey(name: 'type')
  final List<CodeableConcept>? type;

  /// [name] /// Official name of the health insurance product as designated by the owner.
  @JsonKey(name: 'name')
  final FhirString? name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [alias] /// A list of alternate names that the product is known as, or was known as in
  /// the past.
  @JsonKey(name: 'alias')
  final List<FhirString>? alias;
  @JsonKey(name: '_alias')
  final List<Element>? aliasElement;

  /// [period] /// The period of time that the health insurance product is available.
  @JsonKey(name: 'period')
  final Period? period;

  /// [ownedBy] /// The entity that is providing the health insurance product and underwriting
  /// the risk. This is typically an insurance carriers, other third-party
  /// payers, or health plan sponsors comonly referred to as 'payers'.
  @JsonKey(name: 'ownedBy')
  final Reference? ownedBy;

  /// [administeredBy] /// An organization which administer other services such as underwriting,
  /// customer service and/or claims processing on behalf of the health insurance
  /// product owner.
  @JsonKey(name: 'administeredBy')
  final Reference? administeredBy;

  /// [coverageArea] /// The geographic region in which a health insurance product's benefits apply.
  @JsonKey(name: 'coverageArea')
  final List<Reference>? coverageArea;

  /// [contact] /// The contact for the health insurance product for a certain purpose.
  @JsonKey(name: 'contact')
  final List<InsurancePlanContact>? contact;

  /// [endpoint] /// The technical endpoints providing access to services operated for the
  /// health insurance product.
  @JsonKey(name: 'endpoint')
  final List<Reference>? endpoint;

  /// [network] /// Reference to the network included in the health insurance product.
  @JsonKey(name: 'network')
  final List<Reference>? network;

  /// [coverage] /// Details about the coverage offered by the insurance product.
  @JsonKey(name: 'coverage')
  final List<InsurancePlanCoverage>? coverage;

  /// [plan] /// Details about an insurance plan.
  @JsonKey(name: 'plan')
  final List<InsurancePlanPlan>? plan;
  factory InsurancePlan.fromJson(Map<String, dynamic> json) =>
      _$InsurancePlanFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InsurancePlanToJson(this);

  @override
  InsurancePlan clone() => throw UnimplementedError();
  @override
  InsurancePlan copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FhirCode? status,
    Element? statusElement,
    List<CodeableConcept>? type,
    FhirString? name,
    Element? nameElement,
    List<FhirString>? alias,
    List<Element>? aliasElement,
    Period? period,
    Reference? ownedBy,
    Reference? administeredBy,
    List<Reference>? coverageArea,
    List<InsurancePlanContact>? contact,
    List<Reference>? endpoint,
    List<Reference>? network,
    List<InsurancePlanCoverage>? coverage,
    List<InsurancePlanPlan>? plan,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return InsurancePlan(
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
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      alias: alias ?? this.alias,
      aliasElement: aliasElement ?? this.aliasElement,
      period: period ?? this.period,
      ownedBy: ownedBy ?? this.ownedBy,
      administeredBy: administeredBy ?? this.administeredBy,
      coverageArea: coverageArea ?? this.coverageArea,
      contact: contact ?? this.contact,
      endpoint: endpoint ?? this.endpoint,
      network: network ?? this.network,
      coverage: coverage ?? this.coverage,
      plan: plan ?? this.plan,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory InsurancePlan.fromYaml(dynamic yaml) => yaml is String
      ? InsurancePlan.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? InsurancePlan.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'InsurancePlan cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory InsurancePlan.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return InsurancePlan.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [InsurancePlanContact] /// The contact for the health insurance product for a certain purpose.
@JsonSerializable()
class InsurancePlanContact extends BackboneElement {
  InsurancePlanContact({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.purpose,
    this.name,
    this.telecom,
    this.address,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'InsurancePlanContact');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [purpose] /// Indicates a purpose for which the contact can be reached.
  @JsonKey(name: 'purpose')
  final CodeableConcept? purpose;

  /// [name] /// A name associated with the contact.
  @JsonKey(name: 'name')
  final HumanName? name;

  /// [telecom] /// A contact detail (e.g. a telephone number or an email address) by which the
  /// party may be contacted.
  @JsonKey(name: 'telecom')
  final List<ContactPoint>? telecom;

  /// [address] /// Visiting or postal addresses for the contact.
  @JsonKey(name: 'address')
  final Address? address;
  factory InsurancePlanContact.fromJson(Map<String, dynamic> json) =>
      _$InsurancePlanContactFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InsurancePlanContactToJson(this);

  @override
  InsurancePlanContact clone() => throw UnimplementedError();
  @override
  InsurancePlanContact copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? purpose,
    HumanName? name,
    List<ContactPoint>? telecom,
    Address? address,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return InsurancePlanContact(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      purpose: purpose ?? this.purpose,
      name: name ?? this.name,
      telecom: telecom ?? this.telecom,
      address: address ?? this.address,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory InsurancePlanContact.fromYaml(dynamic yaml) => yaml is String
      ? InsurancePlanContact.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? InsurancePlanContact.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'InsurancePlanContact cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory InsurancePlanContact.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return InsurancePlanContact.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [InsurancePlanCoverage] /// Details about the coverage offered by the insurance product.
@JsonSerializable()
class InsurancePlanCoverage extends BackboneElement {
  InsurancePlanCoverage({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.network,
    required this.benefit,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'InsurancePlanCoverage');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Type of coverage (Medical; Dental; Mental Health; Substance Abuse; Vision;
  /// Drug; Short Term; Long Term Care; Hospice; Home Health).
  @JsonKey(name: 'type')
  final CodeableConcept type;

  /// [network] /// Reference to the network that providing the type of coverage.
  @JsonKey(name: 'network')
  final List<Reference>? network;

  /// [benefit] /// Specific benefits under this type of coverage.
  @JsonKey(name: 'benefit')
  final List<InsurancePlanBenefit> benefit;
  factory InsurancePlanCoverage.fromJson(Map<String, dynamic> json) =>
      _$InsurancePlanCoverageFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InsurancePlanCoverageToJson(this);

  @override
  InsurancePlanCoverage clone() => throw UnimplementedError();
  @override
  InsurancePlanCoverage copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<Reference>? network,
    List<InsurancePlanBenefit>? benefit,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return InsurancePlanCoverage(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      network: network ?? this.network,
      benefit: benefit ?? this.benefit,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory InsurancePlanCoverage.fromYaml(dynamic yaml) => yaml is String
      ? InsurancePlanCoverage.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? InsurancePlanCoverage.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'InsurancePlanCoverage cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory InsurancePlanCoverage.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return InsurancePlanCoverage.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [InsurancePlanBenefit] /// Specific benefits under this type of coverage.
@JsonSerializable()
class InsurancePlanBenefit extends BackboneElement {
  InsurancePlanBenefit({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.requirement,
    this.requirementElement,
    this.limit,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'InsurancePlanBenefit');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Type of benefit (primary care; speciality care; inpatient; outpatient).
  @JsonKey(name: 'type')
  final CodeableConcept type;

  /// [requirement] /// The referral requirements to have access/coverage for this benefit.
  @JsonKey(name: 'requirement')
  final FhirString? requirement;
  @JsonKey(name: '_requirement')
  final Element? requirementElement;

  /// [limit] /// The specific limits on the benefit.
  @JsonKey(name: 'limit')
  final List<InsurancePlanLimit>? limit;
  factory InsurancePlanBenefit.fromJson(Map<String, dynamic> json) =>
      _$InsurancePlanBenefitFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InsurancePlanBenefitToJson(this);

  @override
  InsurancePlanBenefit clone() => throw UnimplementedError();
  @override
  InsurancePlanBenefit copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirString? requirement,
    Element? requirementElement,
    List<InsurancePlanLimit>? limit,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return InsurancePlanBenefit(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      requirement: requirement ?? this.requirement,
      requirementElement: requirementElement ?? this.requirementElement,
      limit: limit ?? this.limit,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory InsurancePlanBenefit.fromYaml(dynamic yaml) => yaml is String
      ? InsurancePlanBenefit.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? InsurancePlanBenefit.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'InsurancePlanBenefit cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory InsurancePlanBenefit.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return InsurancePlanBenefit.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [InsurancePlanLimit] /// The specific limits on the benefit.
@JsonSerializable()
class InsurancePlanLimit extends BackboneElement {
  InsurancePlanLimit({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.value,
    this.code,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'InsurancePlanLimit');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [value] /// The maximum amount of a service item a plan will pay for a covered benefit.
  /// For examples. wellness visits, or eyeglasses.
  @JsonKey(name: 'value')
  final Quantity? value;

  /// [code] /// The specific limit on the benefit.
  @JsonKey(name: 'code')
  final CodeableConcept? code;
  factory InsurancePlanLimit.fromJson(Map<String, dynamic> json) =>
      _$InsurancePlanLimitFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InsurancePlanLimitToJson(this);

  @override
  InsurancePlanLimit clone() => throw UnimplementedError();
  @override
  InsurancePlanLimit copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Quantity? value,
    CodeableConcept? code,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return InsurancePlanLimit(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      value: value ?? this.value,
      code: code ?? this.code,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory InsurancePlanLimit.fromYaml(dynamic yaml) => yaml is String
      ? InsurancePlanLimit.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? InsurancePlanLimit.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'InsurancePlanLimit cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory InsurancePlanLimit.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return InsurancePlanLimit.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [InsurancePlanPlan] /// Details about an insurance plan.
@JsonSerializable()
class InsurancePlanPlan extends BackboneElement {
  InsurancePlanPlan({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.type,
    this.coverageArea,
    this.network,
    this.generalCost,
    this.specificCost,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'InsurancePlanPlan');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Business identifiers assigned to this health insurance plan which remain
  /// constant as the resource is updated and propagates from server to server.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [type] /// Type of plan. For example, "Platinum" or "High Deductable".
  @JsonKey(name: 'type')
  final CodeableConcept? type;

  /// [coverageArea] /// The geographic region in which a health insurance plan's benefits apply.
  @JsonKey(name: 'coverageArea')
  final List<Reference>? coverageArea;

  /// [network] /// Reference to the network that providing the type of coverage.
  @JsonKey(name: 'network')
  final List<Reference>? network;

  /// [generalCost] /// Overall costs associated with the plan.
  @JsonKey(name: 'generalCost')
  final List<InsurancePlanGeneralCost>? generalCost;

  /// [specificCost] /// Costs associated with the coverage provided by the product.
  @JsonKey(name: 'specificCost')
  final List<InsurancePlanSpecificCost>? specificCost;
  factory InsurancePlanPlan.fromJson(Map<String, dynamic> json) =>
      _$InsurancePlanPlanFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InsurancePlanPlanToJson(this);

  @override
  InsurancePlanPlan clone() => throw UnimplementedError();
  @override
  InsurancePlanPlan copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    CodeableConcept? type,
    List<Reference>? coverageArea,
    List<Reference>? network,
    List<InsurancePlanGeneralCost>? generalCost,
    List<InsurancePlanSpecificCost>? specificCost,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return InsurancePlanPlan(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      type: type ?? this.type,
      coverageArea: coverageArea ?? this.coverageArea,
      network: network ?? this.network,
      generalCost: generalCost ?? this.generalCost,
      specificCost: specificCost ?? this.specificCost,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory InsurancePlanPlan.fromYaml(dynamic yaml) => yaml is String
      ? InsurancePlanPlan.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? InsurancePlanPlan.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'InsurancePlanPlan cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory InsurancePlanPlan.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return InsurancePlanPlan.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [InsurancePlanGeneralCost] /// Overall costs associated with the plan.
@JsonSerializable()
class InsurancePlanGeneralCost extends BackboneElement {
  InsurancePlanGeneralCost({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.groupSize,
    this.groupSizeElement,
    this.cost,
    this.comment,
    this.commentElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'InsurancePlanGeneralCost');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Type of cost.
  @JsonKey(name: 'type')
  final CodeableConcept? type;

  /// [groupSize] /// Number of participants enrolled in the plan.
  @JsonKey(name: 'groupSize')
  final FhirPositiveInt? groupSize;
  @JsonKey(name: '_groupSize')
  final Element? groupSizeElement;

  /// [cost] /// Value of the cost.
  @JsonKey(name: 'cost')
  final Money? cost;

  /// [comment] /// Additional information about the general costs associated with this plan.
  @JsonKey(name: 'comment')
  final FhirString? comment;
  @JsonKey(name: '_comment')
  final Element? commentElement;
  factory InsurancePlanGeneralCost.fromJson(Map<String, dynamic> json) =>
      _$InsurancePlanGeneralCostFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InsurancePlanGeneralCostToJson(this);

  @override
  InsurancePlanGeneralCost clone() => throw UnimplementedError();
  @override
  InsurancePlanGeneralCost copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirPositiveInt? groupSize,
    Element? groupSizeElement,
    Money? cost,
    FhirString? comment,
    Element? commentElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return InsurancePlanGeneralCost(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      groupSize: groupSize ?? this.groupSize,
      groupSizeElement: groupSizeElement ?? this.groupSizeElement,
      cost: cost ?? this.cost,
      comment: comment ?? this.comment,
      commentElement: commentElement ?? this.commentElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory InsurancePlanGeneralCost.fromYaml(dynamic yaml) => yaml is String
      ? InsurancePlanGeneralCost.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? InsurancePlanGeneralCost.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'InsurancePlanGeneralCost cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory InsurancePlanGeneralCost.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return InsurancePlanGeneralCost.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [InsurancePlanSpecificCost] /// Costs associated with the coverage provided by the product.
@JsonSerializable()
class InsurancePlanSpecificCost extends BackboneElement {
  InsurancePlanSpecificCost({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.category,
    this.benefit,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'InsurancePlanSpecificCost');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [category] /// General category of benefit (Medical; Dental; Vision; Drug; Mental Health;
  /// Substance Abuse; Hospice, Home Health).
  @JsonKey(name: 'category')
  final CodeableConcept category;

  /// [benefit] /// List of the specific benefits under this category of benefit.
  @JsonKey(name: 'benefit')
  final List<InsurancePlanBenefit>? benefit;
  factory InsurancePlanSpecificCost.fromJson(Map<String, dynamic> json) =>
      _$InsurancePlanSpecificCostFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InsurancePlanSpecificCostToJson(this);

  @override
  InsurancePlanSpecificCost clone() => throw UnimplementedError();
  @override
  InsurancePlanSpecificCost copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? category,
    List<InsurancePlanBenefit>? benefit,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return InsurancePlanSpecificCost(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      category: category ?? this.category,
      benefit: benefit ?? this.benefit,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory InsurancePlanSpecificCost.fromYaml(dynamic yaml) => yaml is String
      ? InsurancePlanSpecificCost.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? InsurancePlanSpecificCost.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'InsurancePlanSpecificCost cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory InsurancePlanSpecificCost.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return InsurancePlanSpecificCost.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [InsurancePlanBenefit1] /// List of the specific benefits under this category of benefit.
@JsonSerializable()
class InsurancePlanBenefit1 extends BackboneElement {
  InsurancePlanBenefit1({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.cost,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'InsurancePlanBenefit1');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Type of specific benefit (preventative; primary care office visit;
  /// speciality office visit; hospitalization; emergency room; urgent care).
  @JsonKey(name: 'type')
  final CodeableConcept type;

  /// [cost] /// List of the costs associated with a specific benefit.
  @JsonKey(name: 'cost')
  final List<InsurancePlanCost>? cost;
  factory InsurancePlanBenefit1.fromJson(Map<String, dynamic> json) =>
      _$InsurancePlanBenefit1FromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InsurancePlanBenefit1ToJson(this);

  @override
  InsurancePlanBenefit1 clone() => throw UnimplementedError();
  @override
  InsurancePlanBenefit1 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<InsurancePlanCost>? cost,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return InsurancePlanBenefit1(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      cost: cost ?? this.cost,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory InsurancePlanBenefit1.fromYaml(dynamic yaml) => yaml is String
      ? InsurancePlanBenefit1.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? InsurancePlanBenefit1.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'InsurancePlanBenefit1 cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory InsurancePlanBenefit1.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return InsurancePlanBenefit1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [InsurancePlanCost] /// List of the costs associated with a specific benefit.
@JsonSerializable()
class InsurancePlanCost extends BackboneElement {
  InsurancePlanCost({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.applicability,
    this.qualifiers,
    this.value,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'InsurancePlanCost');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Type of cost (copay; individual cap; family cap; coinsurance; deductible).
  @JsonKey(name: 'type')
  final CodeableConcept type;

  /// [applicability] /// Whether the cost applies to in-network or out-of-network providers
  /// (in-network; out-of-network; other).
  @JsonKey(name: 'applicability')
  final CodeableConcept? applicability;

  /// [qualifiers] /// Additional information about the cost, such as information about funding
  /// sources (e.g. HSA, HRA, FSA, RRA).
  @JsonKey(name: 'qualifiers')
  final List<CodeableConcept>? qualifiers;

  /// [value] /// The actual cost value. (some of the costs may be represented as percentages
  /// rather than currency, e.g. 10% coinsurance).
  @JsonKey(name: 'value')
  final Quantity? value;
  factory InsurancePlanCost.fromJson(Map<String, dynamic> json) =>
      _$InsurancePlanCostFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InsurancePlanCostToJson(this);

  @override
  InsurancePlanCost clone() => throw UnimplementedError();
  @override
  InsurancePlanCost copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    CodeableConcept? applicability,
    List<CodeableConcept>? qualifiers,
    Quantity? value,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return InsurancePlanCost(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      applicability: applicability ?? this.applicability,
      qualifiers: qualifiers ?? this.qualifiers,
      value: value ?? this.value,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory InsurancePlanCost.fromYaml(dynamic yaml) => yaml is String
      ? InsurancePlanCost.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? InsurancePlanCost.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'InsurancePlanCost cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory InsurancePlanCost.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return InsurancePlanCost.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
