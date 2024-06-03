/// /// [AdverseEvent_Participant] An event (i.e. any change to current patient
/// status) that may be related to unintended effects on a patient or research
/// participant. The unintended effects may require additional monitoring,
/// treatment, hospitalization, or may result in death. The AdverseEvent
/// resource also extends to potential or avoided events that could have had
/// such effects. There are two major domains where the AdverseEvent resource
/// is expected to be used. One is in clinical care reported adverse events and
/// the other is in reporting adverse events in clinical  research trial
/// management. Adverse events can be reported by healthcare providers,
/// patients, caregivers or by medical products manufacturers. Given the
/// differences between these two concepts, we recommend consulting the domain
/// specific implementation guides when implementing the AdverseEvent Resource.
/// The implementation guides include specific extensions, value sets and
/// constraints.

@freezed
class AdverseEvent_Participant with _$AdverseEvent_Participant {
  const AdverseEvent_Participant._();

  const factory AdverseEvent_Participant({
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
/// adverse event, such as contributor or informant.

    @JsonKey(name: 'function') CodeableConcept? function,
/// /// [actor] Indicates who or what participated in the event.

    @JsonKey(name: 'actor') Reference? actor,
  }) = _$AdverseEvent_Participant;

  @override
  String get fhirType => 'AdverseEvent_Participant';

  factory AdverseEvent_Participant.fromJson(Map<String, dynamic> json) =>
      _$AdverseEvent_ParticipantFromJson(json);

  factory AdverseEvent_Participant.fromYaml(dynamic yaml) => yaml is String
      ? AdverseEvent_Participant.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? AdverseEvent_Participant.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'AdverseEvent_Participant cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory AdverseEvent_Participant.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AdverseEvent_ParticipantFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
