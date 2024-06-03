/// /// [MedicationKnowledge_MonitoringProgram] Information about a medication
/// that is used to support knowledge.

@freezed
class MedicationKnowledge_MonitoringProgram with _$MedicationKnowledge_MonitoringProgram {
  const MedicationKnowledge_MonitoringProgram._();

  const factory MedicationKnowledge_MonitoringProgram({
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
/// /// [type] Type of program under which the medication is monitored.

    @JsonKey(name: 'type') CodeableConcept? type,
/// /// [name] Name of the reviewing program.

    @JsonKey(name: 'name') String? name,
/// /// [_name] Extensions for name

    @JsonKey(name: '_name') FhirElement? nameElement,
  }) = _$MedicationKnowledge_MonitoringProgram;

  @override
  String get fhirType => 'MedicationKnowledge_MonitoringProgram';

  factory MedicationKnowledge_MonitoringProgram.fromJson(Map<String, dynamic> json) =>
      _$MedicationKnowledge_MonitoringProgramFromJson(json);

  factory MedicationKnowledge_MonitoringProgram.fromYaml(dynamic yaml) => yaml is String
      ? MedicationKnowledge_MonitoringProgram.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicationKnowledge_MonitoringProgram.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicationKnowledge_MonitoringProgram cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory MedicationKnowledge_MonitoringProgram.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicationKnowledge_MonitoringProgramFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
