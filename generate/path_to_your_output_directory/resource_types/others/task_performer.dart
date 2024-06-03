/// /// [Task_Performer] A task to be performed as a part of a workflow and the
/// related informations like inputs, outputs and execution progress. While
/// very simple workflows can be implemented with Request alone, most workflows
/// would require a Task (explicit or contained) as a means to track the
/// execution data (i.e. inputs, outputs, status). Please refer to the workflow
/// page for more details.

@freezed
class Task_Performer with _$Task_Performer {
  const Task_Performer._();

  const factory Task_Performer({
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
/// /// [function] A code or description of the performer of the task.

    @JsonKey(name: 'function') CodeableConcept? function,
/// /// [actor] The actor or entity who performed the task.

    @JsonKey(name: 'actor') Reference? actor,
  }) = _$Task_Performer;

  @override
  String get fhirType => 'Task_Performer';

  factory Task_Performer.fromJson(Map<String, dynamic> json) =>
      _$Task_PerformerFromJson(json);

  factory Task_Performer.fromYaml(dynamic yaml) => yaml is String
      ? Task_Performer.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Task_Performer.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Task_Performer cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Task_Performer.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Task_PerformerFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
