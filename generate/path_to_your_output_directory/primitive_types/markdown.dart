/// /// [markdown] A string that may contain Github Flavored Markdown syntax
/// for optional processing by a mark down presentation engine

@freezed
class markdown with _$markdown {
  const markdown._();

  const factory markdown({
  }) = _$markdown;

  @override
  String get fhirType => 'markdown';

  factory markdown.fromJson(Map<String, dynamic> json) =>
      _$markdownFromJson(json);

  factory markdown.fromYaml(dynamic yaml) => yaml is String
      ? markdown.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? markdown.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'markdown cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory markdown.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$markdownFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
