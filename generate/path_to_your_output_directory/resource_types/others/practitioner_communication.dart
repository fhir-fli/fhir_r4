/// /// [Practitioner_Communication] A person who is directly or indirectly
/// involved in the provisioning of healthcare or related services.

@freezed
class Practitioner_Communication with _$Practitioner_Communication {
  const Practitioner_Communication._();

  const factory Practitioner_Communication({
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
/// /// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the element and that modifies
/// the understanding of the element in which it is contained and/or the
/// understanding of the containing element's descendants. Usually modifier
/// elements provide negation or qualification. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.

Modifier extensions SHALL NOT
/// change the meaning of any elements on Resource or DomainResource (including
/// cannot change the meaning of modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// /// [language] The language which may be used to communicate with the
/// individual.

    @JsonKey(name: 'language') CodeableConcept? language,
/// /// [preferred] Indicates whether or not the person prefers this language
/// (over other languages he masters up a certain level).

    @JsonKey(name: 'preferred') FhirBoolean? preferred,
/// /// [_preferred] Extensions for preferred

    @JsonKey(name: '_preferred') FhirElement? preferredElement,
  }) = _$Practitioner_Communication;

  @override
  String get fhirType => 'Practitioner_Communication';

  factory Practitioner_Communication.fromJson(Map<String, dynamic> json) =>
      _$Practitioner_CommunicationFromJson(json);

  factory Practitioner_Communication.fromYaml(dynamic yaml) => yaml is String
      ? Practitioner_Communication.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Practitioner_Communication.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Practitioner_Communication cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Practitioner_Communication.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Practitioner_CommunicationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
