/// /// [Appointment_Participant] A booking of a healthcare event among
/// patient(s), practitioner(s), related person(s) and/or device(s) for a
/// specific date/time. This may result in one or more Encounter(s).

@freezed
class Appointment_Participant with _$Appointment_Participant {
  const Appointment_Participant._();

  const factory Appointment_Participant({
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
/// /// [type] Role of participant in the appointment.

    @JsonKey(name: 'type') List<List<CodeableConcept>>? type,
/// /// [period] Participation period of the actor.

    @JsonKey(name: 'period') Period? period,
/// /// [actor] The individual, device, location, or service participating in
/// the appointment.

    @JsonKey(name: 'actor') Reference? actor,
/// /// [required] Whether this participant is required to be present at the
/// meeting. If false, the participant is optional.

    @JsonKey(name: 'required') FhirBoolean? required,
/// /// [_required] Extensions for required

    @JsonKey(name: '_required') FhirElement? requiredElement,
/// /// [status] Participation status of the actor.

    @JsonKey(name: 'status') FhirCode? status,
/// /// [_status] Extensions for status

    @JsonKey(name: '_status') FhirElement? statusElement,
  }) = _$Appointment_Participant;

  @override
  String get fhirType => 'Appointment_Participant';

  factory Appointment_Participant.fromJson(Map<String, dynamic> json) =>
      _$Appointment_ParticipantFromJson(json);

  factory Appointment_Participant.fromYaml(dynamic yaml) => yaml is String
      ? Appointment_Participant.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Appointment_Participant.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Appointment_Participant cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Appointment_Participant.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Appointment_ParticipantFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
