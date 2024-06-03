/// /// [Encounter_Admission] An interaction between a patient and healthcare
/// provider(s) for the purpose of providing healthcare service(s) or assessing
/// the health status of a patient.  Encounter is primarily used to record
/// information about the actual activities that occurred, where Appointment is
/// used to record planned activities.

@freezed
class Encounter_Admission with _$Encounter_Admission {
  const Encounter_Admission._();

  const factory Encounter_Admission({
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
/// /// [preAdmissionIdentifier] Pre-admission identifier.

    @JsonKey(name: 'preAdmissionIdentifier') Identifier? preAdmissionIdentifier,
/// /// [origin] The location/organization from which the patient came before
/// admission.

    @JsonKey(name: 'origin') Reference? origin,
/// /// [admitSource] From where patient was admitted (physician referral,
/// transfer).

    @JsonKey(name: 'admitSource') CodeableConcept? admitSource,
/// /// [reAdmission] Indicates that this encounter is directly related to a
/// prior admission, often because the conditions addressed in the prior
/// admission were not fully addressed.

    @JsonKey(name: 'reAdmission') CodeableConcept? reAdmission,
/// /// [destination] Location/organization to which the patient is discharged.

    @JsonKey(name: 'destination') Reference? destination,
/// /// [dischargeDisposition] Category or kind of location after discharge.

    @JsonKey(name: 'dischargeDisposition') CodeableConcept? dischargeDisposition,
  }) = _$Encounter_Admission;

  @override
  String get fhirType => 'Encounter_Admission';

  factory Encounter_Admission.fromJson(Map<String, dynamic> json) =>
      _$Encounter_AdmissionFromJson(json);

  factory Encounter_Admission.fromYaml(dynamic yaml) => yaml is String
      ? Encounter_Admission.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Encounter_Admission.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Encounter_Admission cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Encounter_Admission.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Encounter_AdmissionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
