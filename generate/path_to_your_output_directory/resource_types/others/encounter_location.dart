/// /// [Encounter_Location] An interaction between a patient and healthcare
/// provider(s) for the purpose of providing healthcare service(s) or assessing
/// the health status of a patient.  Encounter is primarily used to record
/// information about the actual activities that occurred, where Appointment is
/// used to record planned activities.

@freezed
class Encounter_Location with _$Encounter_Location {
  const Encounter_Location._();

  const factory Encounter_Location({
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
/// /// [status] The status of the participants' presence at the specified
/// location during the period specified. If the participant is no longer at
/// the location, then the period will have an end date/time.

    @JsonKey(name: 'status') FhirCode? status,
/// /// [_status] Extensions for status

    @JsonKey(name: '_status') FhirElement? statusElement,
/// /// [form] This will be used to specify the required levels
/// (bed/ward/room/etc.) desired to be recorded to simplify either messaging or
/// query.

    @JsonKey(name: 'form') CodeableConcept? form,
/// /// [period] Time period during which the patient was present at the
/// location.

    @JsonKey(name: 'period') Period? period,
  }) = _$Encounter_Location;

  @override
  String get fhirType => 'Encounter_Location';

  factory Encounter_Location.fromJson(Map<String, dynamic> json) =>
      _$Encounter_LocationFromJson(json);

  factory Encounter_Location.fromYaml(dynamic yaml) => yaml is String
      ? Encounter_Location.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Encounter_Location.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Encounter_Location cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Encounter_Location.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Encounter_LocationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
