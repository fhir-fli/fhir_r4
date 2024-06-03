import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [RequestOrchestration_Participant] A set of related requests that can
/// be used to capture intended activities that have inter-dependencies such as
/// "give this medication after that one".

@freezed
class RequestOrchestration_Participant with _$RequestOrchestration_Participant {
  const RequestOrchestration_Participant._();

  const factory RequestOrchestration_Participant({
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

Modifier extensions SHALL NOT
/// change the meaning of any elements on Resource or DomainResource (including
/// cannot change the meaning of modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [type] The type of participant in the action.

    @JsonKey(name: 'type') FhirCode? type,
/// [_type] Extensions for type

    @JsonKey(name: '_type') PrimitiveElement? typeElement,
/// [typeCanonical] The type of participant in the action.

    @JsonKey(name: 'typeCanonical') FhirCanonical? typeCanonical,
/// [typeReference] The type of participant in the action.

    @JsonKey(name: 'typeReference') Reference? typeReference,
/// [role] The role the participant should play in performing the described
/// action.

    @JsonKey(name: 'role') CodeableConcept? role,
/// [function] Indicates how the actor will be involved in the action -
/// author, reviewer, witness, etc.

    @JsonKey(name: 'function') CodeableConcept? function,
/// [actorCanonical] A reference to the actual participant.

    @JsonKey(name: 'actorCanonical') FhirCanonical? actorCanonical,
/// [_actorCanonical] Extensions for actorCanonical

    @JsonKey(name: '_actorCanonical') PrimitiveElement? actorCanonicalElement,
/// [actorReference] A reference to the actual participant.

    @JsonKey(name: 'actorReference') Reference? actorReference,
  }) = _$RequestOrchestration_Participant;

  @override
  String get fhirType => 'RequestOrchestration_Participant';

  factory RequestOrchestration_Participant.fromJson(Map<String, dynamic> json) =>
      _$RequestOrchestration_ParticipantFromJson(json);

  factory RequestOrchestration_Participant.fromYaml(dynamic yaml) => yaml is String
      ? RequestOrchestration_Participant.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? RequestOrchestration_Participant.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'RequestOrchestration_Participant cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory RequestOrchestration_Participant.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$RequestOrchestration_ParticipantFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
