/// /// [EncounterHistory_Location] A record of significant events/milestones
/// key data throughout the history of an Encounter, often tracked for specific
/// purposes such as billing.

@freezed
class EncounterHistory_Location with _$EncounterHistory_Location {
  const EncounterHistory_Location._();

  const factory EncounterHistory_Location({
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
/// /// [location] The location where the encounter takes place.

    @JsonKey(name: 'location') Reference? location,
/// /// [form] This will be used to specify the required levels
/// (bed/ward/room/etc.) desired to be recorded to simplify either messaging or
/// query.

    @JsonKey(name: 'form') CodeableConcept? form,
  }) = _$EncounterHistory_Location;

  @override
  String get fhirType => 'EncounterHistory_Location';

  factory EncounterHistory_Location.fromJson(Map<String, dynamic> json) =>
      _$EncounterHistory_LocationFromJson(json);

  factory EncounterHistory_Location.fromYaml(dynamic yaml) => yaml is String
      ? EncounterHistory_Location.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? EncounterHistory_Location.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'EncounterHistory_Location cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory EncounterHistory_Location.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$EncounterHistory_LocationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
