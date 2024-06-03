import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Person] Demographics and administrative information about a person
/// independent of a specific health-related context.

@freezed
class Person with _$Person {
  const Person._();

  const factory Person({
/// [resourceType] This is a Person resource

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

Modifier extensions SHALL NOT
/// change the meaning of any elements on Resource or DomainResource (including
/// cannot change the meaning of modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [identifier] Identifier for a person within a particular scope.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [active] Whether this person's record is in active use.

    @JsonKey(name: 'active') FhirBoolean? active,
/// [_active] Extensions for active

    @JsonKey(name: '_active') PrimitiveElement? activeElement,
/// [name] A name associated with the person.

    @JsonKey(name: 'name') List<List<HumanName>>? name,
/// [telecom] A contact detail for the person, e.g. a telephone number or
/// an email address.

    @JsonKey(name: 'telecom') List<List<ContactPoint>>? telecom,
/// [gender] Administrative Gender.

    @JsonKey(name: 'gender') FhirCode? gender,
/// [_gender] Extensions for gender

    @JsonKey(name: '_gender') PrimitiveElement? genderElement,
/// [birthDate] The birth date for the person.

    @JsonKey(name: 'birthDate') FhirDate? birthDate,
/// [_birthDate] Extensions for birthDate

    @JsonKey(name: '_birthDate') PrimitiveElement? birthDateElement,
/// [deceasedBoolean] Indicates if the individual is deceased or not.

    @JsonKey(name: 'deceasedBoolean') FhirBoolean? deceasedBoolean,
/// [_deceasedBoolean] Extensions for deceasedBoolean

    @JsonKey(name: '_deceasedBoolean') PrimitiveElement? deceasedBooleanElement,
/// [deceasedDateTime] Indicates if the individual is deceased or not.

    @JsonKey(name: 'deceasedDateTime') FhirDateTime? deceasedDateTime,
/// [_deceasedDateTime] Extensions for deceasedDateTime

    @JsonKey(name: '_deceasedDateTime') PrimitiveElement? deceasedDateTimeElement,
/// [address] One or more addresses for the person.

    @JsonKey(name: 'address') List<List<Address>>? address,
/// [maritalStatus] This field contains a person's most recent marital
/// (civil) status.

    @JsonKey(name: 'maritalStatus') CodeableConcept? maritalStatus,
/// [photo] An image that can be displayed as a thumbnail of the person to
/// enhance the identification of the individual.

    @JsonKey(name: 'photo') List<List<Attachment>>? photo,
/// [communication] A language which may be used to communicate with the
/// person about his or her health.

    @JsonKey(name: 'communication') List<List<Person_Communication>>? communication,
/// [managingOrganization] The organization that is the custodian of the
/// person record.

    @JsonKey(name: 'managingOrganization') Reference? managingOrganization,
/// [link] Link to a resource that concerns the same actual person.

    @JsonKey(name: 'link') List<List<Person_Link>>? link,
  }) = _$Person;

  @override
  String get fhirType => 'Person';

  factory Person.fromJson(Map<String, dynamic> json) =>
      _$PersonFromJson(json);

  factory Person.fromYaml(dynamic yaml) => yaml is String
      ? Person.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Person.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Person cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Person.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$PersonFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
