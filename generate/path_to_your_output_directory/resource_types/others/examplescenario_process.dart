/// /// [ExampleScenario_Process] Example of workflow instance.

@freezed
class ExampleScenario_Process with _$ExampleScenario_Process {
  const ExampleScenario_Process._();

  const factory ExampleScenario_Process({
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
/// /// [title] A short descriptive label the process to be used in tables or
/// diagrams.

    @JsonKey(name: 'title') String? title,
/// /// [_title] Extensions for title

    @JsonKey(name: '_title') FhirElement? titleElement,
/// /// [description] An explanation of what the process represents and what it
/// does.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// /// [_description] Extensions for description

    @JsonKey(name: '_description') FhirElement? descriptionElement,
/// /// [preConditions] Description of the initial state of the actors,
/// environment and data before the process starts.

    @JsonKey(name: 'preConditions') FhirMarkdown? preConditions,
/// /// [_preConditions] Extensions for preConditions

    @JsonKey(name: '_preConditions') FhirElement? preConditionsElement,
/// /// [postConditions] Description of the final state of the actors,
/// environment and data after the process has been successfully completed.

    @JsonKey(name: 'postConditions') FhirMarkdown? postConditions,
/// /// [_postConditions] Extensions for postConditions

    @JsonKey(name: '_postConditions') FhirElement? postConditionsElement,
/// /// [step] A significant action that occurs as part of the process.

    @JsonKey(name: 'step') List<List<ExampleScenario_Step>>? step,
  }) = _$ExampleScenario_Process;

  @override
  String get fhirType => 'ExampleScenario_Process';

  factory ExampleScenario_Process.fromJson(Map<String, dynamic> json) =>
      _$ExampleScenario_ProcessFromJson(json);

  factory ExampleScenario_Process.fromYaml(dynamic yaml) => yaml is String
      ? ExampleScenario_Process.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ExampleScenario_Process.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ExampleScenario_Process cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ExampleScenario_Process.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ExampleScenario_ProcessFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
