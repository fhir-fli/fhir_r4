/// /// [Patient_Contact] Demographics and other administrative information
/// about an individual or animal that is the subject of potential, past,
/// current, or future health-related care, services, or processes.

@freezed
class Patient_Contact with _$Patient_Contact {
  const Patient_Contact._();

  const factory Patient_Contact({
/// /// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// /// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// /// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the element and that modifies
/// the understanding of the element in which it is contained and/or the
/// understanding of the containing element's descendants. Usually modifier
/// elements provide negation or qualification. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.

Modifier extensions SHALL NOT
/// change the meaning of any elements on Resource or DomainResource (including
/// cannot change the meaning of modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// /// [relationship] The nature of the relationship between the patient and
/// the contact person.

    @JsonKey(name: 'relationship') List<List<CodeableConcept>>? relationship,
/// /// [name] A name associated with the contact person.

    @JsonKey(name: 'name') HumanName? name,
/// /// [telecom] A contact detail for the person, e.g. a telephone number or
/// an email address.

    @JsonKey(name: 'telecom') List<List<ContactPoint>>? telecom,
/// /// [address] Address for the contact person.

    @JsonKey(name: 'address') Address? address,
/// /// [gender] Administrative Gender - the gender that the contact person is
/// considered to have for administration and record keeping purposes.

    @JsonKey(name: 'gender') FhirCode? gender,
/// /// [_gender] Extensions for gender

    @JsonKey(name: '_gender') FhirElement? genderElement,
/// /// [organization] Organization on behalf of which the contact is acting or
/// for which the contact is working.

    @JsonKey(name: 'organization') Reference? organization,
/// /// [period] The period during which this contact person or organization is
/// valid to be contacted relating to this patient.

    @JsonKey(name: 'period') Period? period,
  }) = _$Patient_Contact;

  @override
  String get fhirType => 'Patient_Contact';

  factory Patient_Contact.fromJson(Map<String, dynamic> json) =>
      _$Patient_ContactFromJson(json);

  factory Patient_Contact.fromYaml(dynamic yaml) => yaml is String
      ? Patient_Contact.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Patient_Contact.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Patient_Contact cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Patient_Contact.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Patient_ContactFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
