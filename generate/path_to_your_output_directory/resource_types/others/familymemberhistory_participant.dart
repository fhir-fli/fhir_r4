/// /// [FamilyMemberHistory_Participant] Significant health conditions for a
/// person related to the patient relevant in the context of care for the
/// patient.

@freezed
class FamilyMemberHistory_Participant with _$FamilyMemberHistory_Participant {
  const FamilyMemberHistory_Participant._();

  const factory FamilyMemberHistory_Participant({
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
/// activities related to the family member history.

    @JsonKey(name: 'function') CodeableConcept? function,
/// /// [actor] Indicates who or what participated in the activities related to
/// the family member history.

    @JsonKey(name: 'actor') Reference? actor,
  }) = _$FamilyMemberHistory_Participant;

  @override
  String get fhirType => 'FamilyMemberHistory_Participant';

  factory FamilyMemberHistory_Participant.fromJson(Map<String, dynamic> json) =>
      _$FamilyMemberHistory_ParticipantFromJson(json);

  factory FamilyMemberHistory_Participant.fromYaml(dynamic yaml) => yaml is String
      ? FamilyMemberHistory_Participant.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? FamilyMemberHistory_Participant.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'FamilyMemberHistory_Participant cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory FamilyMemberHistory_Participant.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$FamilyMemberHistory_ParticipantFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
