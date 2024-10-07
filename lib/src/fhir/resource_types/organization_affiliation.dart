import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

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
  }) : super(resourceType: R4ResourceType.OrganizationAffiliation);

  @Id()
  @JsonKey(ignore: true)
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
  OrganizationAffiliation clone() => throw UnimplementedError();
  OrganizationAffiliation copy({
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
    );
  }
}
