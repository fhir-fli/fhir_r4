/// /// [integer64] A very large whole number

@freezed
class integer64 with _$integer64 {
  const integer64._();

  const factory integer64({
  }) = _$integer64;

  @override
  String get fhirType => 'integer64';

  factory integer64.fromJson(Map<String, dynamic> json) =>
      _$integer64FromJson(json);

  factory integer64.fromYaml(dynamic yaml) => yaml is String
      ? integer64.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? integer64.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'integer64 cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory integer64.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$integer64FromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
