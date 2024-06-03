import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [RelatedPerson] Information about a person that is involved in a
/// patient's health or the care for a patient, but who is not the primary
/// target of healthcare.

@freezed
class RelatedPerson with _$RelatedPerson {
  const RelatedPerson._();

  const factory RelatedPerson({
/// [resourceType] This is a RelatedPerson resource

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
/// [identifier] Identifier for a person within a particular scope.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [active] Whether this related person record is in active use.

    @JsonKey(name: 'active') FhirBoolean? active,
/// [_active] Extensions for active

    @JsonKey(name: '_active') PrimitiveElement? activeElement,
/// [patient] The patient this person is related to.

    @JsonKey(name: 'patient') Reference? patient,
/// [relationship] The nature of the relationship between the related
/// person and the patient.

    @JsonKey(name: 'relationship') List<List<CodeableConcept>>? relationship,
/// [name] A name associated with the person.

    @JsonKey(name: 'name') List<List<HumanName>>? name,
/// [telecom] A contact detail for the person, e.g. a telephone number or
/// an email address.

    @JsonKey(name: 'telecom') List<List<ContactPoint>>? telecom,
/// [gender] Administrative Gender - the gender that the person is
/// considered to have for administration and record keeping purposes.

    @JsonKey(name: 'gender') FhirCode? gender,
/// [_gender] Extensions for gender

    @JsonKey(name: '_gender') PrimitiveElement? genderElement,
/// [birthDate] The date on which the related person was born.

    @JsonKey(name: 'birthDate') FhirDate? birthDate,
/// [_birthDate] Extensions for birthDate

    @JsonKey(name: '_birthDate') PrimitiveElement? birthDateElement,
/// [address] Address where the related person can be contacted or visited.

    @JsonKey(name: 'address') List<List<Address>>? address,
/// [photo] Image of the person.

    @JsonKey(name: 'photo') List<List<Attachment>>? photo,
/// [period] The period of time during which this relationship is or was
/// active. If there are no dates defined, then the interval is unknown.

    @JsonKey(name: 'period') Period? period,
/// [communication] A language which may be used to communicate with the
/// related person about the patient's health.

    @JsonKey(name: 'communication') List<List<RelatedPerson_Communication>>? communication,
  }) = _$RelatedPerson;

  @override
  String get fhirType => 'RelatedPerson';

  factory RelatedPerson.fromJson(Map<String, dynamic> json) =>
      _$RelatedPersonFromJson(json);

  factory RelatedPerson.fromYaml(dynamic yaml) => yaml is String
      ? RelatedPerson.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? RelatedPerson.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'RelatedPerson cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory RelatedPerson.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$RelatedPersonFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
