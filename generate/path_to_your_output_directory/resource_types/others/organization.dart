import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Organization] A formally or informally recognized grouping of people
/// or organizations formed for the purpose of achieving some form of
/// collective action.

@freezed
class Organization with _$Organization {
  const Organization._();

  const factory Organization({
/// [resourceType] This is a Organization resource

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
/// [identifier] Identifier for the organization that is used to identify
/// the organization across multiple disparate systems.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [active] Whether the organization's record is still in active use.

    @JsonKey(name: 'active') FhirBoolean? active,
/// [_active] Extensions for active

    @JsonKey(name: '_active') PrimitiveElement? activeElement,
/// [type] The kind(s) of organization that this is.

    @JsonKey(name: 'type') List<List<CodeableConcept>>? type,
/// [name] A name associated with the organization.

    @JsonKey(name: 'name') String? name,
/// [_name] Extensions for name

    @JsonKey(name: '_name') PrimitiveElement? nameElement,
/// [alias] A list of alternate names that the organization is known as, or
/// was known as in the past.

    @JsonKey(name: 'alias') List<List<String>>? alias,
/// [_alias] Extensions for alias

    @JsonKey(name: '_alias') List<PrimitiveElement>? aliasElement,
/// [description] Description of the organization, which helps provide
/// additional general context on the organization to ensure that the correct
/// organization is selected.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// [_description] Extensions for description

    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
/// [contact] The contact details of communication devices available
/// relevant to the specific Organization. This can include addresses, phone
/// numbers, fax numbers, mobile numbers, email addresses and web sites.

    @JsonKey(name: 'contact') List<List<ExtendedContactDetail>>? contact,
/// [partOf] The organization of which this organization forms a part.

    @JsonKey(name: 'partOf') Reference? partOf,
/// [endpoint] Technical endpoints providing access to services operated
/// for the organization.

    @JsonKey(name: 'endpoint') List<List<Reference>>? endpoint,
/// [qualification] The official certifications, accreditations, training,
/// designations and licenses that authorize and/or otherwise endorse the
/// provision of care by the organization.For example, an approval to provide
/// a type of services issued by a certifying body (such as the US Joint
/// Commission) to an organization.

    @JsonKey(name: 'qualification') List<List<Organization_Qualification>>? qualification,
  }) = _$Organization;

  @override
  String get fhirType => 'Organization';

  factory Organization.fromJson(Map<String, dynamic> json) =>
      _$OrganizationFromJson(json);

  factory Organization.fromYaml(dynamic yaml) => yaml is String
      ? Organization.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Organization.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Organization cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Organization.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$OrganizationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
