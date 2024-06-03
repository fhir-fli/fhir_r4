/// /// [code] A string which has at least one character and no leading or
/// trailing whitespace and where there is no whitespace other than single
/// spaces in the contents

@freezed
class code with _$code {
  const code._();

  const factory code({
  }) = _$code;

  @override
  String get fhirType => 'code';

  factory code.fromJson(Map<String, dynamic> json) =>
      _$codeFromJson(json);

  factory code.fromYaml(dynamic yaml) => yaml is String
      ? code.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? code.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'code cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory code.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$codeFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
