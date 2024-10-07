import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'organization_affiliation.g.dart';

/// [OrganizationAffiliation] /// Defines an affiliation/assotiation/relationship between 2 distinct
/// oganizations, that is not a part-of relationship/sub-division relationship.
@JsonSerializable()
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
  }) : super(
            resourceType: R4ResourceType.OrganizationAffiliation,
            fhirType: 'OrganizationAffiliation');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Business identifiers that are specific to this role.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [active] /// Whether this organization affiliation record is in active use.
  @JsonKey(name: 'active')
  final FhirBoolean? active;
  @JsonKey(name: '_active')
  final Element? activeElement;

  /// [period] /// The period during which the participatingOrganization is affiliated with
  /// the primary organization.
  @JsonKey(name: 'period')
  final Period? period;

  /// [organization] /// Organization where the role is available (primary organization/has
  /// members).
  @JsonKey(name: 'organization')
  final Reference? organization;

  /// [participatingOrganization] /// The Participating Organization provides/performs the role(s) defined by the
  /// code to the Primary Organization (e.g. providing services or is a member
  /// of).
  @JsonKey(name: 'participatingOrganization')
  final Reference? participatingOrganization;

  /// [network] /// Health insurance provider network in which the participatingOrganization
  /// provides the role's services (if defined) at the indicated locations (if
  /// defined).
  @JsonKey(name: 'network')
  final List<Reference>? network;

  /// [code] /// Definition of the role the participatingOrganization plays in the
  /// association.
  @JsonKey(name: 'code')
  final List<CodeableConcept>? code;

  /// [specialty] /// Specific specialty of the participatingOrganization in the context of the
  /// role.
  @JsonKey(name: 'specialty')
  final List<CodeableConcept>? specialty;

  /// [location] /// The location(s) at which the role occurs.
  @JsonKey(name: 'location')
  final List<Reference>? location;

  /// [healthcareService] /// Healthcare services provided through the role.
  @JsonKey(name: 'healthcareService')
  final List<Reference>? healthcareService;

  /// [telecom] /// Contact details at the participatingOrganization relevant to this
  /// Affiliation.
  @JsonKey(name: 'telecom')
  final List<ContactPoint>? telecom;

  /// [endpoint] /// Technical endpoints providing access to services operated for this role.
  @JsonKey(name: 'endpoint')
  final List<Reference>? endpoint;
  factory OrganizationAffiliation.fromJson(Map<String, dynamic> json) =>
      _$OrganizationAffiliationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$OrganizationAffiliationToJson(this);

  @override
  OrganizationAffiliation clone() => throw UnimplementedError();
  @override
  OrganizationAffiliation copyWith({
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
