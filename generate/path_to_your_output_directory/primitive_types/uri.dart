/// /// [uri] String of characters used to identify a name or a resource

@freezed
class uri with _$uri {
  const uri._();

  const factory uri({
  }) = _$uri;

  @override
  String get fhirType => 'uri';

  factory uri.fromJson(Map<String, dynamic> json) =>
      _$uriFromJson(json);

  factory uri.fromYaml(dynamic yaml) => yaml is String
      ? uri.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? uri.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'uri cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory uri.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$uriFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
