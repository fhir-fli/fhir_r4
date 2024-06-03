/// /// [instant] An instant in time - known at least to the second

@freezed
class instant with _$instant {
  const instant._();

  const factory instant({
  }) = _$instant;

  @override
  String get fhirType => 'instant';

  factory instant.fromJson(Map<String, dynamic> json) =>
      _$instantFromJson(json);

  factory instant.fromYaml(dynamic yaml) => yaml is String
      ? instant.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? instant.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'instant cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory instant.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$instantFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
