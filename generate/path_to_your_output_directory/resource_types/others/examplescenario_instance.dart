/// /// [ExampleScenario_Instance] Example of workflow instance.

@freezed
class ExampleScenario_Instance with _$ExampleScenario_Instance {
  const ExampleScenario_Instance._();

  const factory ExampleScenario_Instance({
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
/// instance.

    @JsonKey(name: 'key') String? key,
/// /// [_key] Extensions for key

    @JsonKey(name: '_key') FhirElement? keyElement,
/// /// [structureType] A code indicating the kind of data structure (FHIR
/// resource or some other standard) this is an instance of.

    @JsonKey(name: 'structureType') Coding? structureType,
/// /// [structureVersion] Conveys the version of the data structure
/// instantiated.  I.e. what release of FHIR, X12, OpenEHR, etc. is instance
/// compliant with.

    @JsonKey(name: 'structureVersion') String? structureVersion,
/// /// [_structureVersion] Extensions for structureVersion

    @JsonKey(name: '_structureVersion') FhirElement? structureVersionElement,
/// /// [structureProfileCanonical] Refers to a profile, template or other
/// ruleset the instance adheres to.

    @JsonKey(name: 'structureProfileCanonical') FhirCanonical? structureProfileCanonical,
/// /// [_structureProfileCanonical] Extensions for structureProfileCanonical

    @JsonKey(name: '_structureProfileCanonical') FhirElement? structureProfileCanonicalElement,
/// /// [structureProfileUri] Refers to a profile, template or other ruleset
/// the instance adheres to.

    @JsonKey(name: 'structureProfileUri') FhirUri? structureProfileUri,
/// /// [_structureProfileUri] Extensions for structureProfileUri

    @JsonKey(name: '_structureProfileUri') FhirElement? structureProfileUriElement,
/// /// [title] A short descriptive label the instance to be used in tables or
/// diagrams.

    @JsonKey(name: 'title') String? title,
/// /// [_title] Extensions for title

    @JsonKey(name: '_title') FhirElement? titleElement,
/// /// [description] An explanation of what the instance contains and what
/// it's for.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// /// [_description] Extensions for description

    @JsonKey(name: '_description') FhirElement? descriptionElement,
/// /// [content] Points to an instance (typically an example) that shows the
/// data that would corespond to this instance.

    @JsonKey(name: 'content') Reference? content,
/// /// [version] Represents the instance as it was at a specific time-point.

    @JsonKey(name: 'version') List<List<ExampleScenario_Version>>? version,
/// /// [containedInstance] References to other instances that can be found
/// within this instance (e.g. the observations contained in a bundle).

    @JsonKey(name: 'containedInstance') List<List<ExampleScenario_ContainedInstance>>? containedInstance,
  }) = _$ExampleScenario_Instance;

  @override
  String get fhirType => 'ExampleScenario_Instance';

  factory ExampleScenario_Instance.fromJson(Map<String, dynamic> json) =>
      _$ExampleScenario_InstanceFromJson(json);

  factory ExampleScenario_Instance.fromYaml(dynamic yaml) => yaml is String
      ? ExampleScenario_Instance.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ExampleScenario_Instance.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ExampleScenario_Instance cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ExampleScenario_Instance.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ExampleScenario_InstanceFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
