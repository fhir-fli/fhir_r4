/// /// [integer] A whole number

@freezed
class integer with _$integer {
  const integer._();

  const factory integer({
  }) = _$integer;

  @override
  String get fhirType => 'integer';

  factory integer.fromJson(Map<String, dynamic> json) =>
      _$integerFromJson(json);

  factory integer.fromYaml(dynamic yaml) => yaml is String
      ? integer.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? integer.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'integer cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory integer.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$integerFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
