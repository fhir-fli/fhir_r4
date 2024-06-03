/// /// [unsignedInt] An integer with a value that is not negative (e.g. >= 0)

@freezed
class unsignedInt with _$unsignedInt {
  const unsignedInt._();

  const factory unsignedInt({
  }) = _$unsignedInt;

  @override
  String get fhirType => 'unsignedInt';

  factory unsignedInt.fromJson(Map<String, dynamic> json) =>
      _$unsignedIntFromJson(json);

  factory unsignedInt.fromYaml(dynamic yaml) => yaml is String
      ? unsignedInt.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? unsignedInt.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'unsignedInt cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory unsignedInt.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$unsignedIntFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
