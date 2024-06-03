/// /// [canonical] A URI that is a reference to a canonical URL on a FHIR
/// resource

@freezed
class canonical with _$canonical {
  const canonical._();

  const factory canonical({
  }) = _$canonical;

  @override
  String get fhirType => 'canonical';

  factory canonical.fromJson(Map<String, dynamic> json) =>
      _$canonicalFromJson(json);

  factory canonical.fromYaml(dynamic yaml) => yaml is String
      ? canonical.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? canonical.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'canonical cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory canonical.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$canonicalFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
