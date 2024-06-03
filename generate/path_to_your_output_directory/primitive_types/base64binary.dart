/// /// [base64Binary] A stream of bytes

@freezed
class base64Binary with _$base64Binary {
  const base64Binary._();

  const factory base64Binary({
  }) = _$base64Binary;

  @override
  String get fhirType => 'base64Binary';

  factory base64Binary.fromJson(Map<String, dynamic> json) =>
      _$base64BinaryFromJson(json);

  factory base64Binary.fromYaml(dynamic yaml) => yaml is String
      ? base64Binary.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? base64Binary.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'base64Binary cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory base64Binary.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$base64BinaryFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
