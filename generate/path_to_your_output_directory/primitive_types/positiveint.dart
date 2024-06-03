/// /// [positiveInt] An integer with a value that is positive (e.g. >0)

@freezed
class positiveInt with _$positiveInt {
  const positiveInt._();

  const factory positiveInt({
  }) = _$positiveInt;

  @override
  String get fhirType => 'positiveInt';

  factory positiveInt.fromJson(Map<String, dynamic> json) =>
      _$positiveIntFromJson(json);

  factory positiveInt.fromYaml(dynamic yaml) => yaml is String
      ? positiveInt.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? positiveInt.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'positiveInt cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory positiveInt.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$positiveIntFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
