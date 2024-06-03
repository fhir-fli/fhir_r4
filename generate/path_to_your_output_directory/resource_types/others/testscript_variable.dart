/// /// [TestScript_Variable] A structured set of tests against a FHIR server
/// or client implementation to determine compliance against the FHIR
/// specification.

@freezed
class TestScript_Variable with _$TestScript_Variable {
  const TestScript_Variable._();

  const factory TestScript_Variable({
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
/// /// [name] Descriptive name for this variable.

    @JsonKey(name: 'name') String? name,
/// /// [_name] Extensions for name

    @JsonKey(name: '_name') FhirElement? nameElement,
/// /// [defaultValue] A default, hard-coded, or user-defined value for this
/// variable.

    @JsonKey(name: 'defaultValue') String? defaultValue,
/// /// [_defaultValue] Extensions for defaultValue

    @JsonKey(name: '_defaultValue') FhirElement? defaultValueElement,
/// /// [description] A free text natural language description of the variable
/// and its purpose.

    @JsonKey(name: 'description') String? description,
/// /// [_description] Extensions for description

    @JsonKey(name: '_description') FhirElement? descriptionElement,
/// /// [expression] The FHIRPath expression for a specific value to evaluate
/// against the fixture body. When variables are defined, only one of either
/// expression, headerField or path must be specified.

    @JsonKey(name: 'expression') String? expression,
/// /// [_expression] Extensions for expression

    @JsonKey(name: '_expression') FhirElement? expressionElement,
/// /// [headerField] Will be used to grab the HTTP header field value from the
/// headers that sourceId is pointing to.

    @JsonKey(name: 'headerField') String? headerField,
/// /// [_headerField] Extensions for headerField

    @JsonKey(name: '_headerField') FhirElement? headerFieldElement,
/// /// [hint] Displayable text string with hint help information to the user
/// when entering a default value.

    @JsonKey(name: 'hint') String? hint,
/// /// [_hint] Extensions for hint

    @JsonKey(name: '_hint') FhirElement? hintElement,
/// /// [path] XPath or JSONPath to evaluate against the fixture body.  When
/// variables are defined, only one of either expression, headerField or path
/// must be specified.

    @JsonKey(name: 'path') String? path,
/// /// [_path] Extensions for path

    @JsonKey(name: '_path') FhirElement? pathElement,
/// /// [sourceId] Fixture to evaluate the XPath/JSONPath expression or the
/// headerField  against within this variable.

    @JsonKey(name: 'sourceId') FhirId? sourceId,
/// /// [_sourceId] Extensions for sourceId

    @JsonKey(name: '_sourceId') FhirElement? sourceIdElement,
  }) = _$TestScript_Variable;

  @override
  String get fhirType => 'TestScript_Variable';

  factory TestScript_Variable.fromJson(Map<String, dynamic> json) =>
      _$TestScript_VariableFromJson(json);

  factory TestScript_Variable.fromYaml(dynamic yaml) => yaml is String
      ? TestScript_Variable.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TestScript_Variable.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TestScript_Variable cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory TestScript_Variable.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TestScript_VariableFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
