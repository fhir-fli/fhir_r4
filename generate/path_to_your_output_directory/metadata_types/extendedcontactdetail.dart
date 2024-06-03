/// /// [ExtendedContactDetail] Specifies contact information for a specific
/// purpose over a period of time, might be handled/monitored by a specific
/// named person or organization.

@freezed
class ExtendedContactDetail with _$ExtendedContactDetail {
  const ExtendedContactDetail._();

  const factory ExtendedContactDetail({
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
/// /// [purpose] The purpose/type of contact.

    @JsonKey(name: 'purpose') CodeableConcept? purpose,
/// /// [name] The name of an individual to contact, some types of contact
/// detail are usually blank.

    @JsonKey(name: 'name') List<List<HumanName>>? name,
/// /// [telecom] The contact details application for the purpose defined.

    @JsonKey(name: 'telecom') List<List<ContactPoint>>? telecom,
/// /// [address] Address for the contact.

    @JsonKey(name: 'address') Address? address,
/// /// [organization] This contact detail is handled/monitored by a specific
/// organization. If the name is provided in the contact, then it is referring
/// to the named individual within this organization.

    @JsonKey(name: 'organization') Reference? organization,
/// /// [period] Period that this contact was valid for usage.

    @JsonKey(name: 'period') Period? period,
  }) = _$ExtendedContactDetail;

  @override
  String get fhirType => 'ExtendedContactDetail';

  factory ExtendedContactDetail.fromJson(Map<String, dynamic> json) =>
      _$ExtendedContactDetailFromJson(json);

  factory ExtendedContactDetail.fromYaml(dynamic yaml) => yaml is String
      ? ExtendedContactDetail.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ExtendedContactDetail.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ExtendedContactDetail cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ExtendedContactDetail.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ExtendedContactDetailFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
