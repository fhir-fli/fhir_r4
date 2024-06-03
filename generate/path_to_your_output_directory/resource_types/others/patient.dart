import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Patient] Demographics and other administrative information about an
/// individual or animal that is the subject of potential, past, current, or
/// future health-related care, services, or processes.

@freezed
class Patient with _$Patient {
  const Patient._();

  const factory Patient({
/// [resourceType] This is a Patient resource

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
/// [identifier] An identifier for this patient.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [active] Whether this patient record is in active use. 
Many systems
/// use this property to mark as non-current patients, such as those that have
/// not been seen for a period of time based on an organization's business
/// rules.

It is often used to filter patient lists to exclude inactive
/// patients

Deceased patients may also be marked as inactive for the same
/// reasons, but may be active for some time after death.

    @JsonKey(name: 'active') FhirBoolean? active,
/// [_active] Extensions for active

    @JsonKey(name: '_active') PrimitiveElement? activeElement,
/// [name] A name associated with the individual.

    @JsonKey(name: 'name') List<List<HumanName>>? name,
/// [telecom] A contact detail (e.g. a telephone number or an email
/// address) by which the individual may be contacted.

    @JsonKey(name: 'telecom') List<List<ContactPoint>>? telecom,
/// [gender] Administrative Gender - the gender that the patient is
/// considered to have for administration and record keeping purposes.

    @JsonKey(name: 'gender') FhirCode? gender,
/// [_gender] Extensions for gender

    @JsonKey(name: '_gender') PrimitiveElement? genderElement,
/// [birthDate] The date of birth for the individual.

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
/// [address] An address for the individual.

    @JsonKey(name: 'address') List<List<Address>>? address,
/// [maritalStatus] This field contains a patient's most recent marital
/// (civil) status.

    @JsonKey(name: 'maritalStatus') CodeableConcept? maritalStatus,
/// [multipleBirthBoolean] Indicates whether the patient is part of a
/// multiple (boolean) or indicates the actual birth order (integer).  This
/// count is relative to the total of live births and fetal losses.

    @JsonKey(name: 'multipleBirthBoolean') FhirBoolean? multipleBirthBoolean,
/// [_multipleBirthBoolean] Extensions for multipleBirthBoolean

    @JsonKey(name: '_multipleBirthBoolean') PrimitiveElement? multipleBirthBooleanElement,
/// [multipleBirthInteger] Indicates whether the patient is part of a
/// multiple (boolean) or indicates the actual birth order (integer).  This
/// count is relative to the total of live births and fetal losses.

    @JsonKey(name: 'multipleBirthInteger') FhirInteger? multipleBirthInteger,
/// [_multipleBirthInteger] Extensions for multipleBirthInteger

    @JsonKey(name: '_multipleBirthInteger') PrimitiveElement? multipleBirthIntegerElement,
/// [photo] Image of the patient.

    @JsonKey(name: 'photo') List<List<Attachment>>? photo,
/// [contact] A contact party (e.g. guardian, partner, friend) for the
/// patient.

    @JsonKey(name: 'contact') List<List<Patient_Contact>>? contact,
/// [communication] A language which may be used to communicate with the
/// patient about his or her health.

    @JsonKey(name: 'communication') List<List<Patient_Communication>>? communication,
/// [generalPractitioner] Patient's nominated care provider.

    @JsonKey(name: 'generalPractitioner') List<List<Reference>>? generalPractitioner,
/// [managingOrganization] Organization that is the custodian of the
/// patient record.

    @JsonKey(name: 'managingOrganization') Reference? managingOrganization,
/// [link] Link to a Patient or RelatedPerson resource that concerns the
/// same actual individual.

    @JsonKey(name: 'link') List<List<Patient_Link>>? link,
  }) = _$Patient;

  @override
  String get fhirType => 'Patient';

  factory Patient.fromJson(Map<String, dynamic> json) =>
      _$PatientFromJson(json);

  factory Patient.fromYaml(dynamic yaml) => yaml is String
      ? Patient.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Patient.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Patient cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Patient.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$PatientFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
