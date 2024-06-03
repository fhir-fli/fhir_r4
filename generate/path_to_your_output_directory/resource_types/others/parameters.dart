/// /// [Parameters] This resource is used to pass information into and back
/// from an operation (whether invoked directly from REST or within a messaging
/// environment).  It is not persisted or allowed to be referenced by other
/// resources.

@freezed
class Parameters with _$Parameters {
  const Parameters._();

  const factory Parameters({
/// /// [resourceType] This is a Parameters resource

    @JsonKey(name: 'resourceType') dynamic? resourceType,
/// /// [id] The logical id of the resource, as used in the URL for the
/// resource. Once assigned, this value never changes.

    @JsonKey(name: 'id') FhirId? id,
/// /// [meta] The metadata about the resource. This is content that is
/// maintained by the infrastructure. Changes to the content might not always
/// be associated with version changes to the resource.

    @JsonKey(name: 'meta') FhirMeta? meta,
/// /// [implicitRules] A reference to a set of rules that were followed when
/// the resource was constructed, and which must be understood when processing
/// the content. Often, this is a reference to an implementation guide that
/// defines the special rules along with other profiles etc.

    @JsonKey(name: 'implicitRules') FhirUri? implicitRules,
/// /// [_implicitRules] Extensions for implicitRules

    @JsonKey(name: '_implicitRules') FhirElement? implicitRulesElement,
/// /// [language] The base language in which the resource is written.

    @JsonKey(name: 'language') FhirCode? language,
/// /// [_language] Extensions for language

    @JsonKey(name: '_language') FhirElement? languageElement,
/// /// [parameter] A parameter passed to or received from the operation.

    @JsonKey(name: 'parameter') List<List<Parameters_Parameter>>? parameter,
  }) = _$Parameters;

  @override
  String get fhirType => 'Parameters';

  factory Parameters.fromJson(Map<String, dynamic> json) =>
      _$ParametersFromJson(json);

  factory Parameters.fromYaml(dynamic yaml) => yaml is String
      ? Parameters.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Parameters.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Parameters cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Parameters.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ParametersFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
