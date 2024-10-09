import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [OrganizationAffiliation] /// Defines an affiliation/assotiation/relationship between 2 distinct
/// oganizations, that is not a part-of relationship/sub-division relationship.
class OrganizationAffiliation extends DomainResource {
  OrganizationAffiliation({
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
    this.active,
    this.activeElement,
    this.period,
    this.organization,
    this.participatingOrganization,
    this.network,
    this.code,
    this.specialty,
    this.location,
    this.healthcareService,
    this.telecom,
    this.endpoint,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(resourceType: R4ResourceType.OrganizationAffiliation);

  @override
  String get fhirType => 'OrganizationAffiliation';

  @Id()
  int dbId = 0;

  /// [identifier] /// Business identifiers that are specific to this role.
  final List<Identifier>? identifier;

  /// [active] /// Whether this organization affiliation record is in active use.
  final FhirBoolean? active;
  final Element? activeElement;

  /// [period] /// The period during which the participatingOrganization is affiliated with
  /// the primary organization.
  final Period? period;

  /// [organization] /// Organization where the role is available (primary organization/has
  /// members).
  final Reference? organization;

  /// [participatingOrganization] /// The Participating Organization provides/performs the role(s) defined by the
  /// code to the Primary Organization (e.g. providing services or is a member
  /// of).
  final Reference? participatingOrganization;

  /// [network] /// Health insurance provider network in which the participatingOrganization
  /// provides the role's services (if defined) at the indicated locations (if
  /// defined).
  final List<Reference>? network;

  /// [code] /// Definition of the role the participatingOrganization plays in the
  /// association.
  final List<CodeableConcept>? code;

  /// [specialty] /// Specific specialty of the participatingOrganization in the context of the
  /// role.
  final List<CodeableConcept>? specialty;

  /// [location] /// The location(s) at which the role occurs.
  final List<Reference>? location;

  /// [healthcareService] /// Healthcare services provided through the role.
  final List<Reference>? healthcareService;

  /// [telecom] /// Contact details at the participatingOrganization relevant to this
  /// Affiliation.
  final List<ContactPoint>? telecom;

  /// [endpoint] /// Technical endpoints providing access to services operated for this role.
  final List<Reference>? endpoint;
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
    if (active?.value != null) {
      json['active'] = active!.value;
    }
    if (activeElement != null) {
      json['_active'] = activeElement!.toJson();
    }
    if (period != null) {
      json['period'] = period!.toJson();
    }
    if (organization != null) {
      json['organization'] = organization!.toJson();
    }
    if (participatingOrganization != null) {
      json['participatingOrganization'] = participatingOrganization!.toJson();
    }
    if (network != null && network!.isNotEmpty) {
      json['network'] =
          network!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (code != null && code!.isNotEmpty) {
      json['code'] =
          code!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (specialty != null && specialty!.isNotEmpty) {
      json['specialty'] =
          specialty!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (location != null && location!.isNotEmpty) {
      json['location'] =
          location!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (healthcareService != null && healthcareService!.isNotEmpty) {
      json['healthcareService'] =
          healthcareService!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (telecom != null && telecom!.isNotEmpty) {
      json['telecom'] =
          telecom!.map<dynamic>((ContactPoint v) => v.toJson()).toList();
    }
    if (endpoint != null && endpoint!.isNotEmpty) {
      json['endpoint'] =
          endpoint!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    return json;
  }

  factory OrganizationAffiliation.fromJson(Map<String, dynamic> json) {
    return OrganizationAffiliation(
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
      active: json['active'] != null ? FhirBoolean(json['active']) : null,
      activeElement: json['_active'] != null
          ? Element.fromJson(json['_active'] as Map<String, dynamic>)
          : null,
      period: json['period'] != null
          ? Period.fromJson(json['period'] as Map<String, dynamic>)
          : null,
      organization: json['organization'] != null
          ? Reference.fromJson(json['organization'] as Map<String, dynamic>)
          : null,
      participatingOrganization: json['participatingOrganization'] != null
          ? Reference.fromJson(
              json['participatingOrganization'] as Map<String, dynamic>)
          : null,
      network: json['network'] != null
          ? (json['network'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      code: json['code'] != null
          ? (json['code'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      specialty: json['specialty'] != null
          ? (json['specialty'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      location: json['location'] != null
          ? (json['location'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      healthcareService: json['healthcareService'] != null
          ? (json['healthcareService'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      telecom: json['telecom'] != null
          ? (json['telecom'] as List<dynamic>)
              .map<ContactPoint>((dynamic v) =>
                  ContactPoint.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      endpoint: json['endpoint'] != null
          ? (json['endpoint'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  OrganizationAffiliation clone() => throw UnimplementedError();
  @override
  OrganizationAffiliation copyWith({
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
    FhirBoolean? active,
    Element? activeElement,
    Period? period,
    Reference? organization,
    Reference? participatingOrganization,
    List<Reference>? network,
    List<CodeableConcept>? code,
    List<CodeableConcept>? specialty,
    List<Reference>? location,
    List<Reference>? healthcareService,
    List<ContactPoint>? telecom,
    List<Reference>? endpoint,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return OrganizationAffiliation(
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
      active: active ?? this.active,
      activeElement: activeElement ?? this.activeElement,
      period: period ?? this.period,
      organization: organization ?? this.organization,
      participatingOrganization:
          participatingOrganization ?? this.participatingOrganization,
      network: network ?? this.network,
      code: code ?? this.code,
      specialty: specialty ?? this.specialty,
      location: location ?? this.location,
      healthcareService: healthcareService ?? this.healthcareService,
      telecom: telecom ?? this.telecom,
      endpoint: endpoint ?? this.endpoint,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory OrganizationAffiliation.fromYaml(dynamic yaml) => yaml is String
      ? OrganizationAffiliation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? OrganizationAffiliation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'OrganizationAffiliation cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory OrganizationAffiliation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return OrganizationAffiliation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
