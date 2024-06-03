/// /// [time] A time during the day, with no date specified

@freezed
class time with _$time {
  const time._();

  const factory time({
  }) = _$time;

  @override
  String get fhirType => 'time';

  factory time.fromJson(Map<String, dynamic> json) =>
      _$timeFromJson(json);

  factory time.fromYaml(dynamic yaml) => yaml is String
      ? time.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? time.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'time cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory time.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$timeFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
