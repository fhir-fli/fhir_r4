/// /// [id] Any combination of letters, numerals, "-" and ".", with a length
/// limit of 64 characters.  (This might be an integer, an unprefixed OID, UUID
/// or any other identifier pattern that meets these constraints.)  Ids are
/// case-insensitive.

@freezed
class id with _$id {
  const id._();

  const factory id({
  }) = _$id;

  @override
  String get fhirType => 'id';

  factory id.fromJson(Map<String, dynamic> json) =>
      _$idFromJson(json);

  factory id.fromYaml(dynamic yaml) => yaml is String
      ? id.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? id.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'id cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory id.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$idFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
