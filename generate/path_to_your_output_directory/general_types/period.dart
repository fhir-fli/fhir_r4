/// /// [Period] A time period defined by a start and end date and optionally
/// time.

@freezed
class Period with _$Period {
  const Period._();

  const factory Period({
/// /// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// /// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// /// [start] The start of the period. The boundary is inclusive.

    @JsonKey(name: 'start') FhirDateTime? start,
/// /// [_start] Extensions for start

    @JsonKey(name: '_start') FhirElement? startElement,
/// /// [end] The end of the period. If the end of the period is missing, it
/// means no end was known or planned at the time the instance was created. The
/// start may be in the past, and the end date in the future, which means that
/// period is expected/planned to end at that time.

    @JsonKey(name: 'end') FhirDateTime? end,
/// /// [_end] Extensions for end

    @JsonKey(name: '_end') FhirElement? endElement,
  }) = _$Period;

  @override
  String get fhirType => 'Period';

  factory Period.fromJson(Map<String, dynamic> json) =>
      _$PeriodFromJson(json);

  factory Period.fromYaml(dynamic yaml) => yaml is String
      ? Period.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Period.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Period cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Period.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$PeriodFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
