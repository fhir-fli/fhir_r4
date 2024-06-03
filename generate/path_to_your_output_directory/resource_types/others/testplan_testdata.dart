/// /// [TestPlan_TestData] A plan for executing testing on an artifact or
/// specifications.

@freezed
class TestPlan_TestData with _$TestPlan_TestData {
  const TestPlan_TestData._();

  const factory TestPlan_TestData({
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
/// /// [type] The type of test data description, e.g. 'synthea'.

    @JsonKey(name: 'type') Coding? type,
/// /// [content] The actual test resources when they exist.

    @JsonKey(name: 'content') Reference? content,
/// /// [sourceString] Pointer to a definition of test resources - narrative or
/// structured e.g. synthetic data generation, etc.

    @JsonKey(name: 'sourceString') String? sourceString,
/// /// [_sourceString] Extensions for sourceString

    @JsonKey(name: '_sourceString') FhirElement? sourceStringElement,
/// /// [sourceReference] Pointer to a definition of test resources - narrative
/// or structured e.g. synthetic data generation, etc.

    @JsonKey(name: 'sourceReference') Reference? sourceReference,
  }) = _$TestPlan_TestData;

  @override
  String get fhirType => 'TestPlan_TestData';

  factory TestPlan_TestData.fromJson(Map<String, dynamic> json) =>
      _$TestPlan_TestDataFromJson(json);

  factory TestPlan_TestData.fromYaml(dynamic yaml) => yaml is String
      ? TestPlan_TestData.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TestPlan_TestData.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TestPlan_TestData cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory TestPlan_TestData.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TestPlan_TestDataFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
