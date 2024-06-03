/// /// [Practitioner] A person who is directly or indirectly involved in the
/// provisioning of healthcare or related services.

@freezed
class Practitioner with _$Practitioner {
  const Practitioner._();

  const factory Practitioner({
/// /// [resourceType] This is a Practitioner resource

    @JsonKey(name: 'resourceType') dynamic? resourceType,
/// /// [id] The logical id of the resource, as used in the URL for the
/// resource. Once assigned, this value never changes.

    @JsonKey(name: 'id') FhirId? id,
/// /// [meta] The metadata about the resource. This is content that is
/// maintained by the infrastructure. Changes to the content might not always
/// be associated with version changes to the resource.

    @JsonKey(name: 'meta') FhirMeta? meta,
/// /// [implicitRules] A reference to a set of rules that were followed when
/// the resource was constructed, and which must be understood when processing
/// the content. Often, this is a reference to an implementation guide that
/// defines the special rules along with other profiles etc.

    @JsonKey(name: 'implicitRules') FhirUri? implicitRules,
/// /// [_implicitRules] Extensions for implicitRules

    @JsonKey(name: '_implicitRules') FhirElement? implicitRulesElement,
/// /// [language] The base language in which the resource is written.

    @JsonKey(name: 'language') FhirCode? language,
/// /// [_language] Extensions for language

    @JsonKey(name: '_language') FhirElement? languageElement,
/// /// [text] A human-readable narrative that contains a summary of the
/// resource and can be used to represent the content of the resource to a
/// human. The narrative need not encode all the structured data, but is
/// required to contain sufficient detail to make it "clinically safe" for a
/// human to just read the narrative. Resource definitions may define what
/// content should be represented in the narrative to ensure clinical safety.

    @JsonKey(name: 'text') Narrative? text,
/// /// [contained] These resources do not have an independent existence apart
/// from the resource that contains them - they cannot be identified
/// independently, nor can they have their own independent transaction scope.
/// This is allowed to be a Parameters resource if and only if it is referenced
/// by a resource that provides context/meaning.

    @JsonKey(name: 'contained') List<List<ResourceList>>? contained,
/// /// [extension] May be used to represent additional information that is not
/// part of the basic definition of the resource. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// /// [modifierExtension] May be used to represent additional information
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
/// /// [identifier] An identifier that applies to this person in this role.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// /// [active] Whether this practitioner's record is in active use.

    @JsonKey(name: 'active') FhirBoolean? active,
/// /// [_active] Extensions for active

    @JsonKey(name: '_active') FhirElement? activeElement,
/// /// [name] The name(s) associated with the practitioner.

    @JsonKey(name: 'name') List<List<HumanName>>? name,
/// /// [telecom] A contact detail for the practitioner, e.g. a telephone
/// number or an email address.

    @JsonKey(name: 'telecom') List<List<ContactPoint>>? telecom,
/// /// [gender] Administrative Gender - the gender that the person is
/// considered to have for administration and record keeping purposes.

    @JsonKey(name: 'gender') FhirCode? gender,
/// /// [_gender] Extensions for gender

    @JsonKey(name: '_gender') FhirElement? genderElement,
/// /// [birthDate] The date of birth for the practitioner.

    @JsonKey(name: 'birthDate') FhirDate? birthDate,
/// /// [_birthDate] Extensions for birthDate

    @JsonKey(name: '_birthDate') FhirElement? birthDateElement,
/// /// [deceasedBoolean] Indicates if the practitioner is deceased or not.

    @JsonKey(name: 'deceasedBoolean') FhirBoolean? deceasedBoolean,
/// /// [_deceasedBoolean] Extensions for deceasedBoolean

    @JsonKey(name: '_deceasedBoolean') FhirElement? deceasedBooleanElement,
/// /// [deceasedDateTime] Indicates if the practitioner is deceased or not.

    @JsonKey(name: 'deceasedDateTime') FhirDateTime? deceasedDateTime,
/// /// [_deceasedDateTime] Extensions for deceasedDateTime

    @JsonKey(name: '_deceasedDateTime') FhirElement? deceasedDateTimeElement,
/// /// [address] Address(es) of the practitioner that are not role specific
/// (typically home address). Work addresses are not typically entered in this
/// property as they are usually role dependent.

    @JsonKey(name: 'address') List<List<Address>>? address,
/// /// [photo] Image of the person.

    @JsonKey(name: 'photo') List<List<Attachment>>? photo,
/// /// [qualification] The official qualifications, certifications,
/// accreditations, training, licenses (and other types of
/// educations/skills/capabilities) that authorize or otherwise pertain to the
/// provision of care by the practitioner.For example, a medical license
/// issued by a medical board of licensure authorizing the practitioner to
/// practice medicine within a certain locality.

    @JsonKey(name: 'qualification') List<List<Practitioner_Qualification>>? qualification,
/// /// [communication] A language which may be used to communicate with the
/// practitioner, often for correspondence/administrative purposes.The
/// `PractitionerRole.communication` property should be used for publishing the
/// languages that a practitioner is able to communicate with patients (on a
/// per Organization/Role basis).

    @JsonKey(name: 'communication') List<List<Practitioner_Communication>>? communication,
  }) = _$Practitioner;

  @override
  String get fhirType => 'Practitioner';

  factory Practitioner.fromJson(Map<String, dynamic> json) =>
      _$PractitionerFromJson(json);

  factory Practitioner.fromYaml(dynamic yaml) => yaml is String
      ? Practitioner.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Practitioner.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Practitioner cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Practitioner.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$PractitionerFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
