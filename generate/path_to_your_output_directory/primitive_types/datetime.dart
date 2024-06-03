/// /// [dateTime] A date, date-time or partial date (e.g. just year or year +
/// month).  If hours and minutes are specified, a UTC offset SHALL be
/// populated. The format is a union of the schema types gYear, gYearMonth,
/// date and dateTime. Seconds must be provided due to schema type constraints
/// but may be zero-filled and may be ignored.                 Dates SHALL be
/// valid dates.

@freezed
class dateTime with _$dateTime {
  const dateTime._();

  const factory dateTime({
  }) = _$dateTime;

  @override
  String get fhirType => 'dateTime';

  factory dateTime.fromJson(Map<String, dynamic> json) =>
      _$dateTimeFromJson(json);

  factory dateTime.fromYaml(dynamic yaml) => yaml is String
      ? dateTime.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? dateTime.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'dateTime cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory dateTime.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$dateTimeFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
