import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Provenance_Entity] Provenance of a resource is a record that describes
/// entities and processes involved in producing and delivering or otherwise
/// influencing that resource. Provenance provides a critical foundation for
/// assessing authenticity, enabling trust, and allowing reproducibility.
/// Provenance assertions are a form of contextual metadata and can themselves
/// become important records with their own provenance. Provenance statement
/// indicates clinical significance in terms of confidence in authenticity,
/// reliability, and trustworthiness, integrity, and stage in lifecycle (e.g.
/// Document Completion - has the artifact been legally authenticated), all of
/// which may impact security, privacy, and trust policies.

@freezed
class Provenance_Entity with _$Provenance_Entity {
  const Provenance_Entity._();

  const factory Provenance_Entity({
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
/// [role] How the entity was used during the activity.

    @JsonKey(name: 'role') FhirCode? role,
/// [_role] Extensions for role

    @JsonKey(name: '_role') PrimitiveElement? roleElement,
/// [what] Identity of the  Entity used. May be a logical or physical uri
/// and maybe absolute or relative.

    @JsonKey(name: 'what') Reference? what,
/// [agent] The entity is attributed to an agent to express the agent's
/// responsibility for that entity, possibly along with other agents. This
/// description can be understood as shorthand for saying that the agent was
/// responsible for the activity which used the entity.

    @JsonKey(name: 'agent') List<List<Provenance_Agent>>? agent,
  }) = _$Provenance_Entity;

  @override
  String get fhirType => 'Provenance_Entity';

  factory Provenance_Entity.fromJson(Map<String, dynamic> json) =>
      _$Provenance_EntityFromJson(json);

  factory Provenance_Entity.fromYaml(dynamic yaml) => yaml is String
      ? Provenance_Entity.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Provenance_Entity.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Provenance_Entity cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Provenance_Entity.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Provenance_EntityFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
