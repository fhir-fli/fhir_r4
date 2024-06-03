/// /// [AllergyIntolerance_Participant] Risk of harmful or undesirable
/// physiological response which is specific to an individual and associated
/// with exposure to a substance.

@freezed
class AllergyIntolerance_Participant with _$AllergyIntolerance_Participant {
  const AllergyIntolerance_Participant._();

  const factory AllergyIntolerance_Participant({
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
/// /// [function] Distinguishes the type of involvement of the actor in the
/// activities related to the allergy or intolerance.

    @JsonKey(name: 'function') CodeableConcept? function,
/// /// [actor] Indicates who or what participated in the activities related to
/// the allergy or intolerance.

    @JsonKey(name: 'actor') Reference? actor,
  }) = _$AllergyIntolerance_Participant;

  @override
  String get fhirType => 'AllergyIntolerance_Participant';

  factory AllergyIntolerance_Participant.fromJson(Map<String, dynamic> json) =>
      _$AllergyIntolerance_ParticipantFromJson(json);

  factory AllergyIntolerance_Participant.fromYaml(dynamic yaml) => yaml is String
      ? AllergyIntolerance_Participant.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? AllergyIntolerance_Participant.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'AllergyIntolerance_Participant cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory AllergyIntolerance_Participant.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AllergyIntolerance_ParticipantFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
