/// /// [TestReport_Action] A summary of information based on the results of
/// executing a TestScript.

@freezed
class TestReport_Action with _$TestReport_Action {
  const TestReport_Action._();

  const factory TestReport_Action({
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
/// /// [operation] The operation performed.

    @JsonKey(name: 'operation') TestReport_Operation? operation,
/// /// [assert] The results of the assertion performed on the previous
/// operations.

    @JsonKey(name: 'assert') TestReport_Assert? assert,
  }) = _$TestReport_Action;

  @override
  String get fhirType => 'TestReport_Action';

  factory TestReport_Action.fromJson(Map<String, dynamic> json) =>
      _$TestReport_ActionFromJson(json);

  factory TestReport_Action.fromYaml(dynamic yaml) => yaml is String
      ? TestReport_Action.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TestReport_Action.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TestReport_Action cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory TestReport_Action.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TestReport_ActionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
