/// /// [PlanDefinition_Actor] This resource allows for the definition of
/// various types of plans as a sharable, consumable, and executable artifact.
/// The resource is general enough to support the description of a broad range
/// of clinical and non-clinical artifacts such as clinical decision support
/// rules, order sets, protocols, and drug quality specifications.

@freezed
class PlanDefinition_Actor with _$PlanDefinition_Actor {
  const PlanDefinition_Actor._();

  const factory PlanDefinition_Actor({
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
/// /// [title] A descriptive label for the actor.

    @JsonKey(name: 'title') String? title,
/// /// [_title] Extensions for title

    @JsonKey(name: '_title') FhirElement? titleElement,
/// /// [description] A description of how the actor fits into the overall
/// actions of the plan definition.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// /// [_description] Extensions for description

    @JsonKey(name: '_description') FhirElement? descriptionElement,
/// /// [option] The characteristics of the candidates that could serve as the
/// actor.

    @JsonKey(name: 'option') List<List<PlanDefinition_Option>>? option,
  }) = _$PlanDefinition_Actor;

  @override
  String get fhirType => 'PlanDefinition_Actor';

  factory PlanDefinition_Actor.fromJson(Map<String, dynamic> json) =>
      _$PlanDefinition_ActorFromJson(json);

  factory PlanDefinition_Actor.fromYaml(dynamic yaml) => yaml is String
      ? PlanDefinition_Actor.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? PlanDefinition_Actor.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'PlanDefinition_Actor cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory PlanDefinition_Actor.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$PlanDefinition_ActorFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
