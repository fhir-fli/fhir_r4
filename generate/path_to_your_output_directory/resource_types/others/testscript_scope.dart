/// /// [TestScript_Scope] A structured set of tests against a FHIR server or
/// client implementation to determine compliance against the FHIR
/// specification.

@freezed
class TestScript_Scope with _$TestScript_Scope {
  const TestScript_Scope._();

  const factory TestScript_Scope({
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
/// /// [artifact] The specific conformance artifact being tested. The
/// canonical reference can be version-specific.

    @JsonKey(name: 'artifact') FhirCanonical? artifact,
/// /// [conformance] The expectation of whether the test must pass for the
/// system to be considered conformant with the artifact: required - all tests
/// are expected to pass, optional - all test are expected to pass but non-pass
/// status may be allowed, strict - all tests are expected to pass and warnings
/// are treated as a failure.

    @JsonKey(name: 'conformance') CodeableConcept? conformance,
/// /// [phase] The phase of testing for this artifact: unit - development /
/// implementation phase, integration - internal system to system phase,
/// production - live system to system phase (Note, this may involve pii/phi
/// data).

    @JsonKey(name: 'phase') CodeableConcept? phase,
  }) = _$TestScript_Scope;

  @override
  String get fhirType => 'TestScript_Scope';

  factory TestScript_Scope.fromJson(Map<String, dynamic> json) =>
      _$TestScript_ScopeFromJson(json);

  factory TestScript_Scope.fromYaml(dynamic yaml) => yaml is String
      ? TestScript_Scope.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TestScript_Scope.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TestScript_Scope cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory TestScript_Scope.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TestScript_ScopeFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
