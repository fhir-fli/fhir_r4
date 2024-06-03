/// /// [ExampleScenario_Actor] Example of workflow instance.

@freezed
class ExampleScenario_Actor with _$ExampleScenario_Actor {
  const ExampleScenario_Actor._();

  const factory ExampleScenario_Actor({
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
/// /// [key] A unique string within the scenario that is used to reference the
/// actor.

    @JsonKey(name: 'key') String? key,
/// /// [_key] Extensions for key

    @JsonKey(name: '_key') FhirElement? keyElement,
/// /// [type] The category of actor - person or system.

    @JsonKey(name: 'type') FhirCode? type,
/// /// [_type] Extensions for type

    @JsonKey(name: '_type') FhirElement? typeElement,
/// /// [title] The human-readable name for the actor used when rendering the
/// scenario.

    @JsonKey(name: 'title') String? title,
/// /// [_title] Extensions for title

    @JsonKey(name: '_title') FhirElement? titleElement,
/// /// [description] An explanation of who/what the actor is and its role in
/// the scenario.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// /// [_description] Extensions for description

    @JsonKey(name: '_description') FhirElement? descriptionElement,
  }) = _$ExampleScenario_Actor;

  @override
  String get fhirType => 'ExampleScenario_Actor';

  factory ExampleScenario_Actor.fromJson(Map<String, dynamic> json) =>
      _$ExampleScenario_ActorFromJson(json);

  factory ExampleScenario_Actor.fromYaml(dynamic yaml) => yaml is String
      ? ExampleScenario_Actor.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ExampleScenario_Actor.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ExampleScenario_Actor cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ExampleScenario_Actor.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ExampleScenario_ActorFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
