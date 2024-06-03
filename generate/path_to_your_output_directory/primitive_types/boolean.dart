/// /// [boolean] Value of "true" or "false"

@freezed
class boolean with _$boolean {
  const boolean._();

  const factory boolean({
  }) = _$boolean;

  @override
  String get fhirType => 'boolean';

  factory boolean.fromJson(Map<String, dynamic> json) =>
      _$booleanFromJson(json);

  factory boolean.fromYaml(dynamic yaml) => yaml is String
      ? boolean.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? boolean.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'boolean cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory boolean.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$booleanFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
