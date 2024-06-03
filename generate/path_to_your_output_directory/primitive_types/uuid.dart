/// /// [uuid] A UUID, represented as a URI

@freezed
class uuid with _$uuid {
  const uuid._();

  const factory uuid({
  }) = _$uuid;

  @override
  String get fhirType => 'uuid';

  factory uuid.fromJson(Map<String, dynamic> json) =>
      _$uuidFromJson(json);

  factory uuid.fromYaml(dynamic yaml) => yaml is String
      ? uuid.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? uuid.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'uuid cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory uuid.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$uuidFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
