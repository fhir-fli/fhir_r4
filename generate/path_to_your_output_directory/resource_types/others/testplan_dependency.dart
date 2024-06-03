/// /// [TestPlan_Dependency] A plan for executing testing on an artifact or
/// specifications.

@freezed
class TestPlan_Dependency with _$TestPlan_Dependency {
  const TestPlan_Dependency._();

  const factory TestPlan_Dependency({
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
/// /// [description] A textual description of the criterium - what is needed
/// for the dependency to be considered met.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// /// [_description] Extensions for description

    @JsonKey(name: '_description') FhirElement? descriptionElement,
/// /// [predecessor] Predecessor test plans - those that are expected to be
/// successfully performed as a dependency for the execution of this test plan.

    @JsonKey(name: 'predecessor') Reference? predecessor,
  }) = _$TestPlan_Dependency;

  @override
  String get fhirType => 'TestPlan_Dependency';

  factory TestPlan_Dependency.fromJson(Map<String, dynamic> json) =>
      _$TestPlan_DependencyFromJson(json);

  factory TestPlan_Dependency.fromYaml(dynamic yaml) => yaml is String
      ? TestPlan_Dependency.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TestPlan_Dependency.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TestPlan_Dependency cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory TestPlan_Dependency.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TestPlan_DependencyFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
