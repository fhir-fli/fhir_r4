/// /// [CareTeam_Participant] The Care Team includes all the people and
/// organizations who plan to participate in the coordination and delivery of
/// care.

@freezed
class CareTeam_Participant with _$CareTeam_Participant {
  const CareTeam_Participant._();

  const factory CareTeam_Participant({
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
/// /// [role] Indicates specific responsibility of an individual within the
/// care team, such as "Primary care physician", "Trained social worker
/// counselor", "Caregiver", etc.

    @JsonKey(name: 'role') CodeableConcept? role,
/// /// [member] The specific person or organization who is
/// participating/expected to participate in the care team.

    @JsonKey(name: 'member') Reference? member,
/// /// [onBehalfOf] Entity that the participant is acting as a proxy of, or an
/// agent of, or in the interest of, or as a representative of.

    @JsonKey(name: 'onBehalfOf') Reference? onBehalfOf,
/// /// [coveragePeriod] When the member is generally available within this
/// care team.

    @JsonKey(name: 'coveragePeriod') Period? coveragePeriod,
/// /// [coverageTiming] When the member is generally available within this
/// care team.

    @JsonKey(name: 'coverageTiming') Timing? coverageTiming,
  }) = _$CareTeam_Participant;

  @override
  String get fhirType => 'CareTeam_Participant';

  factory CareTeam_Participant.fromJson(Map<String, dynamic> json) =>
      _$CareTeam_ParticipantFromJson(json);

  factory CareTeam_Participant.fromYaml(dynamic yaml) => yaml is String
      ? CareTeam_Participant.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CareTeam_Participant.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CareTeam_Participant cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory CareTeam_Participant.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CareTeam_ParticipantFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
