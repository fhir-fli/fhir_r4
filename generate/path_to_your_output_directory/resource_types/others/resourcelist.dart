/// /// [ResourceList] No description available

@freezed
class ResourceList with _$ResourceList {
  const ResourceList._();

  const factory ResourceList({
  }) = _$ResourceList;

  @override
  String get fhirType => 'ResourceList';

  factory ResourceList.fromJson(Map<String, dynamic> json) =>
      _$ResourceListFromJson(json);

  factory ResourceList.fromYaml(dynamic yaml) => yaml is String
      ? ResourceList.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ResourceList.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ResourceList cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ResourceList.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ResourceListFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
