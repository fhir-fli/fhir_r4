/// /// [HumanName] A name, normally of a human, that can be used for other
/// living entities (e.g. animals but not organizations) that have been
/// assigned names by a human and may need the use of name parts or the need
/// for usage information.

@freezed
class HumanName with _$HumanName {
  const HumanName._();

  const factory HumanName({
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
/// /// [use] Identifies the purpose for this name.

    @JsonKey(name: 'use') dynamic? use,
/// /// [_use] Extensions for use

    @JsonKey(name: '_use') FhirElement? useElement,
/// /// [text] Specifies the entire name as it should be displayed e.g. on an
/// application UI. This may be provided instead of or as well as the specific
/// parts.

    @JsonKey(name: 'text') String? text,
/// /// [_text] Extensions for text

    @JsonKey(name: '_text') FhirElement? textElement,
/// /// [family] The part of a name that links to the genealogy. In some
/// cultures (e.g. Eritrea) the family name of a son is the first name of his
/// father.

    @JsonKey(name: 'family') String? family,
/// /// [_family] Extensions for family

    @JsonKey(name: '_family') FhirElement? familyElement,
/// /// [given] Given name.

    @JsonKey(name: 'given') List<List<String>>? given,
/// /// [_given] Extensions for given

    @JsonKey(name: '_given') List<FhirElement>? givenElement,
/// /// [prefix] Part of the name that is acquired as a title due to academic,
/// legal, employment or nobility status, etc. and that appears at the start of
/// the name.

    @JsonKey(name: 'prefix') List<List<String>>? prefix,
/// /// [_prefix] Extensions for prefix

    @JsonKey(name: '_prefix') List<FhirElement>? prefixElement,
/// /// [suffix] Part of the name that is acquired as a title due to academic,
/// legal, employment or nobility status, etc. and that appears at the end of
/// the name.

    @JsonKey(name: 'suffix') List<List<String>>? suffix,
/// /// [_suffix] Extensions for suffix

    @JsonKey(name: '_suffix') List<FhirElement>? suffixElement,
/// /// [period] Indicates the period of time when this name was valid for the
/// named person.

    @JsonKey(name: 'period') Period? period,
  }) = _$HumanName;

  @override
  String get fhirType => 'HumanName';

  factory HumanName.fromJson(Map<String, dynamic> json) =>
      _$HumanNameFromJson(json);

  factory HumanName.fromYaml(dynamic yaml) => yaml is String
      ? HumanName.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? HumanName.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'HumanName cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory HumanName.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$HumanNameFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
