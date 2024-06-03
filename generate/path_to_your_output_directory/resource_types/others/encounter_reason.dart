/// /// [Encounter_Reason] An interaction between a patient and healthcare
/// provider(s) for the purpose of providing healthcare service(s) or assessing
/// the health status of a patient.  Encounter is primarily used to record
/// information about the actual activities that occurred, where Appointment is
/// used to record planned activities.

@freezed
class Encounter_Reason with _$Encounter_Reason {
  const Encounter_Reason._();

  const factory Encounter_Reason({
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
/// /// [use] What the reason value should be used as e.g. Chief Complaint,
/// Health Concern, Health Maintenance (including screening).

    @JsonKey(name: 'use') List<List<CodeableConcept>>? use,
/// /// [value] Reason the encounter takes place, expressed as a code or a
/// reference to another resource. For admissions, this can be used for a coded
/// admission diagnosis.

    @JsonKey(name: 'value') List<List<CodeableReference>>? value,
  }) = _$Encounter_Reason;

  @override
  String get fhirType => 'Encounter_Reason';

  factory Encounter_Reason.fromJson(Map<String, dynamic> json) =>
      _$Encounter_ReasonFromJson(json);

  factory Encounter_Reason.fromYaml(dynamic yaml) => yaml is String
      ? Encounter_Reason.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Encounter_Reason.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Encounter_Reason cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Encounter_Reason.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Encounter_ReasonFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
