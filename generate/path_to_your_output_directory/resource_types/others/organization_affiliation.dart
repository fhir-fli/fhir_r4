import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [OrganizationAffiliation] Defines an
/// affiliation/association/relationship between 2 distinct organizations, that
/// is not a part-of relationship/sub-division relationship.

@freezed
class OrganizationAffiliation with _$OrganizationAffiliation {
  const OrganizationAffiliation._();

  const factory OrganizationAffiliation({
/// [resourceType] This is a OrganizationAffiliation resource

    @JsonKey(name: 'resourceType') dynamic? resourceType,
/// [id] The logical id of the resource, as used in the URL for the
/// resource. Once assigned, this value never changes.

    @JsonKey(name: 'id') FhirId? id,
/// [meta] The metadata about the resource. This is content that is
/// maintained by the infrastructure. Changes to the content might not always
/// be associated with version changes to the resource.

    @JsonKey(name: 'meta') FhirMeta? meta,
/// [implicitRules] A reference to a set of rules that were followed when
/// the resource was constructed, and which must be understood when processing
/// the content. Often, this is a reference to an implementation guide that
/// defines the special rules along with other profiles etc.

    @JsonKey(name: 'implicitRules') FhirUri? implicitRules,
/// [_implicitRules] Extensions for implicitRules

    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,
/// [language] The base language in which the resource is written.

    @JsonKey(name: 'language') FhirCode? language,
/// [_language] Extensions for language

    @JsonKey(name: '_language') PrimitiveElement? languageElement,
/// [text] A human-readable narrative that contains a summary of the
/// resource and can be used to represent the content of the resource to a
/// human. The narrative need not encode all the structured data, but is
/// required to contain sufficient detail to make it "clinically safe" for a
/// human to just read the narrative. Resource definitions may define what
/// content should be represented in the narrative to ensure clinical safety.

    @JsonKey(name: 'text') Narrative? text,
/// [contained] These resources do not have an independent existence apart
/// from the resource that contains them - they cannot be identified
/// independently, nor can they have their own independent transaction scope.
/// This is allowed to be a Parameters resource if and only if it is referenced
/// by a resource that provides context/meaning.

    @JsonKey(name: 'contained') List<List<ResourceList>>? contained,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the resource. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the resource and that modifies
/// the understanding of the element that contains it and/or the understanding
/// of the containing element's descendants. Usually modifier elements provide
/// negation or qualification. To make the use of extensions safe and
/// managable, there is a strict set of governance applied to the definition
/// and use of extensions. Though any implementer is allowed to define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.
///
/// Modifier extensions SHALL NOT change the meaning of any elements on
/// Resource or DomainResource (including cannot change the meaning of
/// modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [identifier] Business identifiers that are specific to this role.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [active] Whether this organization affiliation record is in active use.

    @JsonKey(name: 'active') FhirBoolean? active,
/// [_active] Extensions for active

    @JsonKey(name: '_active') PrimitiveElement? activeElement,
/// [period] The period during which the participatingOrganization is
/// affiliated with the primary organization.

    @JsonKey(name: 'period') Period? period,
/// [organization] Organization where the role is available (primary
/// organization/has members).

    @JsonKey(name: 'organization') Reference? organization,
/// [participatingOrganization] The Participating Organization
/// provides/performs the role(s) defined by the code to the Primary
/// Organization (e.g. providing services or is a member of).

    @JsonKey(name: 'participatingOrganization') Reference? participatingOrganization,
/// [network] The network in which the participatingOrganization provides
/// the role's services (if defined) at the indicated locations (if defined).

    @JsonKey(name: 'network') List<List<Reference>>? network,
/// [code] Definition of the role the participatingOrganization plays in
/// the association.

    @JsonKey(name: 'code') List<List<CodeableConcept>>? code,
/// [specialty] Specific specialty of the participatingOrganization in the
/// context of the role.

    @JsonKey(name: 'specialty') List<List<CodeableConcept>>? specialty,
/// [location] The location(s) at which the role occurs.

    @JsonKey(name: 'location') List<List<Reference>>? location,
/// [healthcareService] Healthcare services provided through the role.

    @JsonKey(name: 'healthcareService') List<List<Reference>>? healthcareService,
/// [contact] The contact details of communication devices available at the
/// participatingOrganization relevant to this Affiliation.

    @JsonKey(name: 'contact') List<List<ExtendedContactDetail>>? contact,
/// [endpoint] Technical endpoints providing access to services operated
/// for this role.

    @JsonKey(name: 'endpoint') List<List<Reference>>? endpoint,
  }) = _$OrganizationAffiliation;

  @override
  String get fhirType => 'OrganizationAffiliation';

  factory OrganizationAffiliation.fromJson(Map<String, dynamic> json) =>
      _$OrganizationAffiliationFromJson(json);

  factory OrganizationAffiliation.fromYaml(dynamic yaml) => yaml is String
      ? OrganizationAffiliation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? OrganizationAffiliation.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'OrganizationAffiliation cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory OrganizationAffiliation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$OrganizationAffiliationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
