/// /// [RatioRange] A range of ratios expressed as a low and high numerator
/// and a denominator.

@freezed
class RatioRange with _$RatioRange {
  const RatioRange._();

  const factory RatioRange({
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
/// /// [lowNumerator] The value of the low limit numerator.

    @JsonKey(name: 'lowNumerator') Quantity? lowNumerator,
/// /// [highNumerator] The value of the high limit numerator.

    @JsonKey(name: 'highNumerator') Quantity? highNumerator,
/// /// [denominator] The value of the denominator.

    @JsonKey(name: 'denominator') Quantity? denominator,
  }) = _$RatioRange;

  @override
  String get fhirType => 'RatioRange';

  factory RatioRange.fromJson(Map<String, dynamic> json) =>
      _$RatioRangeFromJson(json);

  factory RatioRange.fromYaml(dynamic yaml) => yaml is String
      ? RatioRange.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? RatioRange.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'RatioRange cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory RatioRange.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$RatioRangeFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
