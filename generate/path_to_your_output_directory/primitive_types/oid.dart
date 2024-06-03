/// /// [oid] An OID represented as a URI

@freezed
class oid with _$oid {
  const oid._();

  const factory oid({
  }) = _$oid;

  @override
  String get fhirType => 'oid';

  factory oid.fromJson(Map<String, dynamic> json) =>
      _$oidFromJson(json);

  factory oid.fromYaml(dynamic yaml) => yaml is String
      ? oid.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? oid.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'oid cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory oid.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$oidFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
