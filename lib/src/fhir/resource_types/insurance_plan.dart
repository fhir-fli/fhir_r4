import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [InsurancePlan] /// Details of a Health Insurance product/plan provided by an organization.
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
  }) : super(resourceType: R4ResourceType.InsurancePlan);

  @override
  String get fhirType => 'InsurancePlan';

  @Id()
  int dbId = 0;

  /// [identifier] /// Business identifiers assigned to this health insurance product which remain
  /// constant as the resource is updated and propagates from server to server.
  final List<Identifier>? identifier;

  /// [status] /// The current state of the health insurance product.
  final PublicationStatus? status;
  final Element? statusElement;

  /// [type] /// The kind of health insurance product.
  final List<CodeableConcept>? type;

  /// [name] /// Official name of the health insurance product as designated by the owner.
  final FhirString? name;
  final Element? nameElement;

  /// [alias] /// A list of alternate names that the product is known as, or was known as in
  /// the past.
  final List<FhirString>? alias;
  final List<Element>? aliasElement;

  /// [period] /// The period of time that the health insurance product is available.
  final Period? period;

  /// [ownedBy] /// The entity that is providing the health insurance product and underwriting
  /// the risk. This is typically an insurance carriers, other third-party
  /// payers, or health plan sponsors comonly referred to as 'payers'.
  final Reference? ownedBy;

  /// [administeredBy] /// An organization which administer other services such as underwriting,
  /// customer service and/or claims processing on behalf of the health insurance
  /// product owner.
  final Reference? administeredBy;

  /// [coverageArea] /// The geographic region in which a health insurance product's benefits apply.
  final List<Reference>? coverageArea;

  /// [contact] /// The contact for the health insurance product for a certain purpose.
  final List<InsurancePlanContact>? contact;

  /// [endpoint] /// The technical endpoints providing access to services operated for the
  /// health insurance product.
  final List<Reference>? endpoint;

  /// [network] /// Reference to the network included in the health insurance product.
  final List<Reference>? network;

  /// [coverage] /// Details about the coverage offered by the insurance product.
  final List<InsurancePlanCoverage>? coverage;

  /// [plan] /// Details about an insurance plan.
  final List<InsurancePlanPlan>? plan;
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
    if (status != null) {
      json['status'] = status!.toJson();
    }
    if (type != null && type!.isNotEmpty) {
      json['type'] =
          type!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (name?.value != null) {
      json['name'] = name!.value;
    }
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    if (alias != null && alias!.isNotEmpty) {
      json['alias'] = alias!.map((FhirString v) => v.value).toList();
    }
    if (aliasElement != null && aliasElement!.isNotEmpty) {
      json['_alias'] = aliasElement!.map((Element v) => v.toJson()).toList();
    }
    if (period != null) {
      json['period'] = period!.toJson();
    }
    if (ownedBy != null) {
      json['ownedBy'] = ownedBy!.toJson();
    }
    if (administeredBy != null) {
      json['administeredBy'] = administeredBy!.toJson();
    }
    if (coverageArea != null && coverageArea!.isNotEmpty) {
      json['coverageArea'] =
          coverageArea!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (contact != null && contact!.isNotEmpty) {
      json['contact'] = contact!
          .map<dynamic>((InsurancePlanContact v) => v.toJson())
          .toList();
    }
    if (endpoint != null && endpoint!.isNotEmpty) {
      json['endpoint'] =
          endpoint!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (network != null && network!.isNotEmpty) {
      json['network'] =
          network!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (coverage != null && coverage!.isNotEmpty) {
      json['coverage'] = coverage!
          .map<dynamic>((InsurancePlanCoverage v) => v.toJson())
          .toList();
    }
    if (plan != null && plan!.isNotEmpty) {
      json['plan'] =
          plan!.map<dynamic>((InsurancePlanPlan v) => v.toJson()).toList();
    }
    return json;
  }

  factory InsurancePlan.fromJson(Map<String, dynamic> json) {
    return InsurancePlan(
      id: json['id'] != null ? FhirString(json['id']) : null,
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
      status: json['status'] != null
          ? PublicationStatus.fromJson(json['status'] as Map<String, dynamic>)
          : null,
      type: json['type'] != null
          ? (json['type'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      name: json['name'] != null ? FhirString(json['name']) : null,
      nameElement: json['_name'] != null
          ? Element.fromJson(json['_name'] as Map<String, dynamic>)
          : null,
      alias: json['alias'] != null
          ? (json['alias'] as List<dynamic>)
              .map<FhirString>((dynamic v) => FhirString.fromJson(v as dynamic))
              .toList()
          : null,
      aliasElement: json['_alias'] != null
          ? (json['_alias'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      period: json['period'] != null
          ? Period.fromJson(json['period'] as Map<String, dynamic>)
          : null,
      ownedBy: json['ownedBy'] != null
          ? Reference.fromJson(json['ownedBy'] as Map<String, dynamic>)
          : null,
      administeredBy: json['administeredBy'] != null
          ? Reference.fromJson(json['administeredBy'] as Map<String, dynamic>)
          : null,
      coverageArea: json['coverageArea'] != null
          ? (json['coverageArea'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      contact: json['contact'] != null
          ? (json['contact'] as List<dynamic>)
              .map<InsurancePlanContact>((dynamic v) =>
                  InsurancePlanContact.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      endpoint: json['endpoint'] != null
          ? (json['endpoint'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      network: json['network'] != null
          ? (json['network'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      coverage: json['coverage'] != null
          ? (json['coverage'] as List<dynamic>)
              .map<InsurancePlanCoverage>((dynamic v) =>
                  InsurancePlanCoverage.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      plan: json['plan'] != null
          ? (json['plan'] as List<dynamic>)
              .map<InsurancePlanPlan>((dynamic v) =>
                  InsurancePlanPlan.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  InsurancePlan clone() => throw UnimplementedError();
  @override
  InsurancePlan copyWith({
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
    PublicationStatus? status,
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
  });

  @override
  String get fhirType => 'InsurancePlanContact';

  @Id()
  int dbId = 0;

  /// [purpose] /// Indicates a purpose for which the contact can be reached.
  final CodeableConcept? purpose;

  /// [name] /// A name associated with the contact.
  final HumanName? name;

  /// [telecom] /// A contact detail (e.g. a telephone number or an email address) by which the
  /// party may be contacted.
  final List<ContactPoint>? telecom;

  /// [address] /// Visiting or postal addresses for the contact.
  final Address? address;
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
    if (purpose != null) {
      json['purpose'] = purpose!.toJson();
    }
    if (name != null) {
      json['name'] = name!.toJson();
    }
    if (telecom != null && telecom!.isNotEmpty) {
      json['telecom'] =
          telecom!.map<dynamic>((ContactPoint v) => v.toJson()).toList();
    }
    if (address != null) {
      json['address'] = address!.toJson();
    }
    return json;
  }

  factory InsurancePlanContact.fromJson(Map<String, dynamic> json) {
    return InsurancePlanContact(
      id: json['id'] != null ? FhirString(json['id']) : null,
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
      purpose: json['purpose'] != null
          ? CodeableConcept.fromJson(json['purpose'] as Map<String, dynamic>)
          : null,
      name: json['name'] != null
          ? HumanName.fromJson(json['name'] as Map<String, dynamic>)
          : null,
      telecom: json['telecom'] != null
          ? (json['telecom'] as List<dynamic>)
              .map<ContactPoint>((dynamic v) =>
                  ContactPoint.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      address: json['address'] != null
          ? Address.fromJson(json['address'] as Map<String, dynamic>)
          : null,
    );
  }
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
  });

  @override
  String get fhirType => 'InsurancePlanCoverage';

  @Id()
  int dbId = 0;

  /// [type] /// Type of coverage (Medical; Dental; Mental Health; Substance Abuse; Vision;
  /// Drug; Short Term; Long Term Care; Hospice; Home Health).
  final CodeableConcept type;

  /// [network] /// Reference to the network that providing the type of coverage.
  final List<Reference>? network;

  /// [benefit] /// Specific benefits under this type of coverage.
  final List<InsurancePlanBenefit> benefit;
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
    if (network != null && network!.isNotEmpty) {
      json['network'] =
          network!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    json['benefit'] =
        benefit.map<dynamic>((InsurancePlanBenefit v) => v.toJson()).toList();
    return json;
  }

  factory InsurancePlanCoverage.fromJson(Map<String, dynamic> json) {
    return InsurancePlanCoverage(
      id: json['id'] != null ? FhirString(json['id']) : null,
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
      network: json['network'] != null
          ? (json['network'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      benefit: (json['benefit'] as List<dynamic>)
          .map<InsurancePlanBenefit>((dynamic v) =>
              InsurancePlanBenefit.fromJson(v as Map<String, dynamic>))
          .toList(),
    );
  }
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
  });

  @override
  String get fhirType => 'InsurancePlanBenefit';

  @Id()
  int dbId = 0;

  /// [type] /// Type of benefit (primary care; speciality care; inpatient; outpatient).
  final CodeableConcept type;

  /// [requirement] /// The referral requirements to have access/coverage for this benefit.
  final FhirString? requirement;
  final Element? requirementElement;

  /// [limit] /// The specific limits on the benefit.
  final List<InsurancePlanLimit>? limit;
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
    if (requirement?.value != null) {
      json['requirement'] = requirement!.value;
    }
    if (requirementElement != null) {
      json['_requirement'] = requirementElement!.toJson();
    }
    if (limit != null && limit!.isNotEmpty) {
      json['limit'] =
          limit!.map<dynamic>((InsurancePlanLimit v) => v.toJson()).toList();
    }
    return json;
  }

  factory InsurancePlanBenefit.fromJson(Map<String, dynamic> json) {
    return InsurancePlanBenefit(
      id: json['id'] != null ? FhirString(json['id']) : null,
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
      requirement:
          json['requirement'] != null ? FhirString(json['requirement']) : null,
      requirementElement: json['_requirement'] != null
          ? Element.fromJson(json['_requirement'] as Map<String, dynamic>)
          : null,
      limit: json['limit'] != null
          ? (json['limit'] as List<dynamic>)
              .map<InsurancePlanLimit>((dynamic v) =>
                  InsurancePlanLimit.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
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
  });

  @override
  String get fhirType => 'InsurancePlanLimit';

  @Id()
  int dbId = 0;

  /// [value] /// The maximum amount of a service item a plan will pay for a covered benefit.
  /// For examples. wellness visits, or eyeglasses.
  final Quantity? value;

  /// [code] /// The specific limit on the benefit.
  final CodeableConcept? code;
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
    if (value != null) {
      json['value'] = value!.toJson();
    }
    if (code != null) {
      json['code'] = code!.toJson();
    }
    return json;
  }

  factory InsurancePlanLimit.fromJson(Map<String, dynamic> json) {
    return InsurancePlanLimit(
      id: json['id'] != null ? FhirString(json['id']) : null,
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
      value: json['value'] != null
          ? Quantity.fromJson(json['value'] as Map<String, dynamic>)
          : null,
      code: json['code'] != null
          ? CodeableConcept.fromJson(json['code'] as Map<String, dynamic>)
          : null,
    );
  }
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
  });

  @override
  String get fhirType => 'InsurancePlanPlan';

  @Id()
  int dbId = 0;

  /// [identifier] /// Business identifiers assigned to this health insurance plan which remain
  /// constant as the resource is updated and propagates from server to server.
  final List<Identifier>? identifier;

  /// [type] /// Type of plan. For example, "Platinum" or "High Deductable".
  final CodeableConcept? type;

  /// [coverageArea] /// The geographic region in which a health insurance plan's benefits apply.
  final List<Reference>? coverageArea;

  /// [network] /// Reference to the network that providing the type of coverage.
  final List<Reference>? network;

  /// [generalCost] /// Overall costs associated with the plan.
  final List<InsurancePlanGeneralCost>? generalCost;

  /// [specificCost] /// Costs associated with the coverage provided by the product.
  final List<InsurancePlanSpecificCost>? specificCost;
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
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map<dynamic>((Identifier v) => v.toJson()).toList();
    }
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (coverageArea != null && coverageArea!.isNotEmpty) {
      json['coverageArea'] =
          coverageArea!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (network != null && network!.isNotEmpty) {
      json['network'] =
          network!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (generalCost != null && generalCost!.isNotEmpty) {
      json['generalCost'] = generalCost!
          .map<dynamic>((InsurancePlanGeneralCost v) => v.toJson())
          .toList();
    }
    if (specificCost != null && specificCost!.isNotEmpty) {
      json['specificCost'] = specificCost!
          .map<dynamic>((InsurancePlanSpecificCost v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory InsurancePlanPlan.fromJson(Map<String, dynamic> json) {
    return InsurancePlanPlan(
      id: json['id'] != null ? FhirString(json['id']) : null,
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
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
      coverageArea: json['coverageArea'] != null
          ? (json['coverageArea'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      network: json['network'] != null
          ? (json['network'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      generalCost: json['generalCost'] != null
          ? (json['generalCost'] as List<dynamic>)
              .map<InsurancePlanGeneralCost>((dynamic v) =>
                  InsurancePlanGeneralCost.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      specificCost: json['specificCost'] != null
          ? (json['specificCost'] as List<dynamic>)
              .map<InsurancePlanSpecificCost>((dynamic v) =>
                  InsurancePlanSpecificCost.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
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
  });

  @override
  String get fhirType => 'InsurancePlanGeneralCost';

  @Id()
  int dbId = 0;

  /// [type] /// Type of cost.
  final CodeableConcept? type;

  /// [groupSize] /// Number of participants enrolled in the plan.
  final FhirPositiveInt? groupSize;
  final Element? groupSizeElement;

  /// [cost] /// Value of the cost.
  final Money? cost;

  /// [comment] /// Additional information about the general costs associated with this plan.
  final FhirString? comment;
  final Element? commentElement;
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
    if (groupSize?.value != null) {
      json['groupSize'] = groupSize!.value;
    }
    if (groupSizeElement != null) {
      json['_groupSize'] = groupSizeElement!.toJson();
    }
    if (cost != null) {
      json['cost'] = cost!.toJson();
    }
    if (comment?.value != null) {
      json['comment'] = comment!.value;
    }
    if (commentElement != null) {
      json['_comment'] = commentElement!.toJson();
    }
    return json;
  }

  factory InsurancePlanGeneralCost.fromJson(Map<String, dynamic> json) {
    return InsurancePlanGeneralCost(
      id: json['id'] != null ? FhirString(json['id']) : null,
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
      groupSize:
          json['groupSize'] != null ? FhirPositiveInt(json['groupSize']) : null,
      groupSizeElement: json['_groupSize'] != null
          ? Element.fromJson(json['_groupSize'] as Map<String, dynamic>)
          : null,
      cost: json['cost'] != null
          ? Money.fromJson(json['cost'] as Map<String, dynamic>)
          : null,
      comment: json['comment'] != null ? FhirString(json['comment']) : null,
      commentElement: json['_comment'] != null
          ? Element.fromJson(json['_comment'] as Map<String, dynamic>)
          : null,
    );
  }
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
  });

  @override
  String get fhirType => 'InsurancePlanSpecificCost';

  @Id()
  int dbId = 0;

  /// [category] /// General category of benefit (Medical; Dental; Vision; Drug; Mental Health;
  /// Substance Abuse; Hospice, Home Health).
  final CodeableConcept category;

  /// [benefit] /// List of the specific benefits under this category of benefit.
  final List<InsurancePlanBenefit>? benefit;
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
    json['category'] = category.toJson();
    if (benefit != null && benefit!.isNotEmpty) {
      json['benefit'] = benefit!
          .map<dynamic>((InsurancePlanBenefit v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory InsurancePlanSpecificCost.fromJson(Map<String, dynamic> json) {
    return InsurancePlanSpecificCost(
      id: json['id'] != null ? FhirString(json['id']) : null,
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
      category:
          CodeableConcept.fromJson(json['category'] as Map<String, dynamic>),
      benefit: json['benefit'] != null
          ? (json['benefit'] as List<dynamic>)
              .map<InsurancePlanBenefit>((dynamic v) =>
                  InsurancePlanBenefit.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
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
  });

  @override
  String get fhirType => 'InsurancePlanBenefit1';

  @Id()
  int dbId = 0;

  /// [type] /// Type of specific benefit (preventative; primary care office visit;
  /// speciality office visit; hospitalization; emergency room; urgent care).
  final CodeableConcept type;

  /// [cost] /// List of the costs associated with a specific benefit.
  final List<InsurancePlanCost>? cost;
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
    if (cost != null && cost!.isNotEmpty) {
      json['cost'] =
          cost!.map<dynamic>((InsurancePlanCost v) => v.toJson()).toList();
    }
    return json;
  }

  factory InsurancePlanBenefit1.fromJson(Map<String, dynamic> json) {
    return InsurancePlanBenefit1(
      id: json['id'] != null ? FhirString(json['id']) : null,
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
      cost: json['cost'] != null
          ? (json['cost'] as List<dynamic>)
              .map<InsurancePlanCost>((dynamic v) =>
                  InsurancePlanCost.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
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
  });

  @override
  String get fhirType => 'InsurancePlanCost';

  @Id()
  int dbId = 0;

  /// [type] /// Type of cost (copay; individual cap; family cap; coinsurance; deductible).
  final CodeableConcept type;

  /// [applicability] /// Whether the cost applies to in-network or out-of-network providers
  /// (in-network; out-of-network; other).
  final CodeableConcept? applicability;

  /// [qualifiers] /// Additional information about the cost, such as information about funding
  /// sources (e.g. HSA, HRA, FSA, RRA).
  final List<CodeableConcept>? qualifiers;

  /// [value] /// The actual cost value. (some of the costs may be represented as percentages
  /// rather than currency, e.g. 10% coinsurance).
  final Quantity? value;
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
    if (applicability != null) {
      json['applicability'] = applicability!.toJson();
    }
    if (qualifiers != null && qualifiers!.isNotEmpty) {
      json['qualifiers'] =
          qualifiers!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (value != null) {
      json['value'] = value!.toJson();
    }
    return json;
  }

  factory InsurancePlanCost.fromJson(Map<String, dynamic> json) {
    return InsurancePlanCost(
      id: json['id'] != null ? FhirString(json['id']) : null,
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
      applicability: json['applicability'] != null
          ? CodeableConcept.fromJson(
              json['applicability'] as Map<String, dynamic>)
          : null,
      qualifiers: json['qualifiers'] != null
          ? (json['qualifiers'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      value: json['value'] != null
          ? Quantity.fromJson(json['value'] as Map<String, dynamic>)
          : null,
    );
  }
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
