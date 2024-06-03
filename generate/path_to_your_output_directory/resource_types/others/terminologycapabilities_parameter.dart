/// /// [TerminologyCapabilities_Parameter] A TerminologyCapabilities resource
/// documents a set of capabilities (behaviors) of a FHIR Terminology Server
/// that may be used as a statement of actual server functionality or a
/// statement of required or desired server implementation.

@freezed
class TerminologyCapabilities_Parameter with _$TerminologyCapabilities_Parameter {
  const TerminologyCapabilities_Parameter._();

  const factory TerminologyCapabilities_Parameter({
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
/// /// [name] Name of the supported expansion parameter.

    @JsonKey(name: 'name') FhirCode? name,
/// /// [_name] Extensions for name

    @JsonKey(name: '_name') FhirElement? nameElement,
/// /// [documentation] Description of support for parameter.

    @JsonKey(name: 'documentation') FhirMarkdown? documentation,
/// /// [_documentation] Extensions for documentation

    @JsonKey(name: '_documentation') FhirElement? documentationElement,
  }) = _$TerminologyCapabilities_Parameter;

  @override
  String get fhirType => 'TerminologyCapabilities_Parameter';

  factory TerminologyCapabilities_Parameter.fromJson(Map<String, dynamic> json) =>
      _$TerminologyCapabilities_ParameterFromJson(json);

  factory TerminologyCapabilities_Parameter.fromYaml(dynamic yaml) => yaml is String
      ? TerminologyCapabilities_Parameter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TerminologyCapabilities_Parameter.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TerminologyCapabilities_Parameter cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory TerminologyCapabilities_Parameter.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TerminologyCapabilities_ParameterFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
