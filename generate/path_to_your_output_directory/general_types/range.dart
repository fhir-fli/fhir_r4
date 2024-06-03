/// /// [Range] A set of ordered Quantities defined by a low and high limit.

@freezed
class Range with _$Range {
  const Range._();

  const factory Range({
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
/// /// [low] The low limit. The boundary is inclusive.

    @JsonKey(name: 'low') Quantity? low,
/// /// [high] The high limit. The boundary is inclusive.

    @JsonKey(name: 'high') Quantity? high,
  }) = _$Range;

  @override
  String get fhirType => 'Range';

  factory Range.fromJson(Map<String, dynamic> json) =>
      _$RangeFromJson(json);

  factory Range.fromYaml(dynamic yaml) => yaml is String
      ? Range.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Range.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Range cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Range.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$RangeFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
