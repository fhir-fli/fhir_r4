/// /// [date] A date or partial date (e.g. just year or year + month). There
/// is no UTC offset. The format is a union of the schema types gYear,
/// gYearMonth and date.  Dates SHALL be valid dates.

@freezed
class date with _$date {
  const date._();

  const factory date({
  }) = _$date;

  @override
  String get fhirType => 'date';

  factory date.fromJson(Map<String, dynamic> json) =>
      _$dateFromJson(json);

  factory date.fromYaml(dynamic yaml) => yaml is String
      ? date.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? date.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'date cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory date.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$dateFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
