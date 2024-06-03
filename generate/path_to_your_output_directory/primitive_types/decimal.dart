/// /// [decimal] A rational number with implicit precision

@freezed
class decimal with _$decimal {
  const decimal._();

  const factory decimal({
  }) = _$decimal;

  @override
  String get fhirType => 'decimal';

  factory decimal.fromJson(Map<String, dynamic> json) =>
      _$decimalFromJson(json);

  factory decimal.fromYaml(dynamic yaml) => yaml is String
      ? decimal.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? decimal.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'decimal cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory decimal.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$decimalFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
