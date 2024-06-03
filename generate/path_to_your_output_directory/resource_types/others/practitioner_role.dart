import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [PractitionerRole] A specific set of
/// Roles/Locations/specialties/services that a practitioner may perform at an
/// organization for a period of time.

@freezed
class PractitionerRole with _$PractitionerRole {
  const PractitionerRole._();

  const factory PractitionerRole({
/// [resourceType] This is a PractitionerRole resource

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
/// [identifier] Business Identifiers that are specific to a role/location.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [active]  Whether this practitioner role record is in active use. Some
/// systems may use this property to mark non-active practitioners, such as
/// those that are not currently employed.

    @JsonKey(name: 'active') FhirBoolean? active,
/// [_active] Extensions for active

    @JsonKey(name: '_active') PrimitiveElement? activeElement,
/// [period] The period during which the person is authorized to act as a
/// practitioner in these role(s) for the organization.

    @JsonKey(name: 'period') Period? period,
/// [practitioner] Practitioner that is able to provide the defined
/// services for the organization.

    @JsonKey(name: 'practitioner') Reference? practitioner,
/// [organization] The organization where the Practitioner is available to
/// perform the roles associated.

    @JsonKey(name: 'organization') Reference? organization,
/// [code] Roles which this practitioner is authorized to perform for the
/// organization.

    @JsonKey(name: 'code') List<List<CodeableConcept>>? code,
/// [name] A name that describes the intersection of the practitioner,
/// organization, and the role of the practitioner within the organization.
/// This is not the human name of the practitioner, though the textual
/// representation of that human name may be a part of this property.

    @JsonKey(name: 'name') String? name,
/// [_name] Extensions for name

    @JsonKey(name: '_name') PrimitiveElement? nameElement,
/// [specialty] The specialty of a practitioner that describes the
/// functional role they are practicing at a given organization or location.

    @JsonKey(name: 'specialty') List<List<CodeableConcept>>? specialty,
/// [location] The location(s) at which this practitioner provides care.

    @JsonKey(name: 'location') List<List<Reference>>? location,
/// [healthcareService] The list of healthcare services that this worker
/// provides for this role's Organization/Location(s).

    @JsonKey(name: 'healthcareService') List<List<Reference>>? healthcareService,
/// [contact] The contact details of communication devices available
/// relevant to the specific PractitionerRole. This can include addresses,
/// phone numbers, fax numbers, mobile numbers, email addresses and web sites.

    @JsonKey(name: 'contact') List<List<ExtendedContactDetail>>? contact,
/// [characteristic] Collection of characteristics (attributes).

    @JsonKey(name: 'characteristic') List<List<CodeableConcept>>? characteristic,
/// [communication] A language the practitioner can use in patient
/// communication. The practitioner may know several languages (listed in
/// practitioner.communication), however these are the languages that could be
/// advertised in a directory for a patient to search.

    @JsonKey(name: 'communication') List<List<CodeableConcept>>? communication,
/// [availability] A collection of times the practitioner is available or
/// performing this role at the location and/or healthcareservice.

    @JsonKey(name: 'availability') Availability? availability,
/// [endpoint]  Technical endpoints providing access to services operated
/// for the practitioner with this role. Commonly used for locating scheduling
/// services, or identifying where to send referrals electronically.

    @JsonKey(name: 'endpoint') List<List<Reference>>? endpoint,
  }) = _$PractitionerRole;

  @override
  String get fhirType => 'PractitionerRole';

  factory PractitionerRole.fromJson(Map<String, dynamic> json) =>
      _$PractitionerRoleFromJson(json);

  factory PractitionerRole.fromYaml(dynamic yaml) => yaml is String
      ? PractitionerRole.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? PractitionerRole.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'PractitionerRole cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory PractitionerRole.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$PractitionerRoleFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
