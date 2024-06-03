/// /// [string] A sequence of Unicode characters

@freezed
class string with _$string {
  const string._();

  const factory string({
  }) = _$string;

  @override
  String get fhirType => 'string';

  factory string.fromJson(Map<String, dynamic> json) =>
      _$stringFromJson(json);

  factory string.fromYaml(dynamic yaml) => yaml is String
      ? string.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? string.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'string cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory string.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$stringFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
