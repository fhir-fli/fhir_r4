/// /// [xhtml] xhtml - escaped html (see specfication)

@freezed
class xhtml with _$xhtml {
  const xhtml._();

  const factory xhtml({
  }) = _$xhtml;

  @override
  String get fhirType => 'xhtml';

  factory xhtml.fromJson(Map<String, dynamic> json) =>
      _$xhtmlFromJson(json);

  factory xhtml.fromYaml(dynamic yaml) => yaml is String
      ? xhtml.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? xhtml.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'xhtml cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory xhtml.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$xhtmlFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
