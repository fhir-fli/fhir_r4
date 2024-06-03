/// /// [ContactPoint] Details for all kinds of technology mediated contact
/// points for a person or organization, including telephone, email, etc.

@freezed
class ContactPoint with _$ContactPoint {
  const ContactPoint._();

  const factory ContactPoint({
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
/// /// [system] Telecommunications form for contact point - what
/// communications system is required to make use of the contact.

    @JsonKey(name: 'system') dynamic? system,
/// /// [_system] Extensions for system

    @JsonKey(name: '_system') FhirElement? systemElement,
/// /// [value] The actual contact point details, in a form that is meaningful
/// to the designated communication system (i.e. phone number or email
/// address).

    @JsonKey(name: 'value') String? value,
/// /// [_value] Extensions for value

    @JsonKey(name: '_value') FhirElement? valueElement,
/// /// [use] Identifies the purpose for the contact point.

    @JsonKey(name: 'use') dynamic? use,
/// /// [_use] Extensions for use

    @JsonKey(name: '_use') FhirElement? useElement,
/// /// [rank] Specifies a preferred order in which to use a set of contacts.
/// ContactPoints with lower rank values are more preferred than those with
/// higher rank values.

    @JsonKey(name: 'rank') FhirPositiveInt? rank,
/// /// [_rank] Extensions for rank

    @JsonKey(name: '_rank') FhirElement? rankElement,
/// /// [period] Time period when the contact point was/is in use.

    @JsonKey(name: 'period') Period? period,
  }) = _$ContactPoint;

  @override
  String get fhirType => 'ContactPoint';

  factory ContactPoint.fromJson(Map<String, dynamic> json) =>
      _$ContactPointFromJson(json);

  factory ContactPoint.fromYaml(dynamic yaml) => yaml is String
      ? ContactPoint.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ContactPoint.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ContactPoint cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ContactPoint.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ContactPointFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
