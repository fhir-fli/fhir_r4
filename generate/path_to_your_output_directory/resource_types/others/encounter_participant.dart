import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Encounter_Participant] An interaction between a patient and healthcare
/// provider(s) for the purpose of providing healthcare service(s) or assessing
/// the health status of a patient.  Encounter is primarily used to record
/// information about the actual activities that occurred, where Appointment is
/// used to record planned activities.

@freezed
class Encounter_Participant with _$Encounter_Participant {
  const Encounter_Participant._();

  const factory Encounter_Participant({
/// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the element and that modifies
/// the understanding of the element in which it is contained and/or the
/// understanding of the containing element's descendants. Usually modifier
/// elements provide negation or qualification. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.
///
/// Modifier extensions SHALL NOT change the meaning of any elements on
/// Resource or DomainResource (including cannot change the meaning of
/// modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [type] Role of participant in encounter.

    @JsonKey(name: 'type') List<List<CodeableConcept>>? type,
/// [period] The period of time that the specified participant participated
/// in the encounter. These can overlap or be sub-sets of the overall
/// encounter's period.

    @JsonKey(name: 'period') Period? period,
/// [actor] Person involved in the encounter, the patient/group is also
/// included here to indicate that the patient was actually participating in
/// the encounter. Not including the patient here covers use cases such as a
/// case meeting between practitioners about a patient - non contact times.

    @JsonKey(name: 'actor') Reference? actor,
  }) = _$Encounter_Participant;

  @override
  String get fhirType => 'Encounter_Participant';

  factory Encounter_Participant.fromJson(Map<String, dynamic> json) =>
      _$Encounter_ParticipantFromJson(json);

  factory Encounter_Participant.fromYaml(dynamic yaml) => yaml is String
      ? Encounter_Participant.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Encounter_Participant.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Encounter_Participant cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Encounter_Participant.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Encounter_ParticipantFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
