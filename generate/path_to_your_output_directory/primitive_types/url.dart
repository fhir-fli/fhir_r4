/// /// [url] A URI that is a literal reference

@freezed
class url with _$url {
  const url._();

  const factory url({
  }) = _$url;

  @override
  String get fhirType => 'url';

  factory url.fromJson(Map<String, dynamic> json) =>
      _$urlFromJson(json);

  factory url.fromYaml(dynamic yaml) => yaml is String
      ? url.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? url.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'url cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory url.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$urlFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
