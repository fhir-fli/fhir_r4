/// /// [ConditionDefinition_Medication] A definition of a condition and
/// information relevant to managing it.

@freezed
class ConditionDefinition_Medication with _$ConditionDefinition_Medication {
  const ConditionDefinition_Medication._();

  const factory ConditionDefinition_Medication({
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
/// /// [category] Category that is relevant.

    @JsonKey(name: 'category') CodeableConcept? category,
/// /// [code] Code for relevant Medication.

    @JsonKey(name: 'code') CodeableConcept? code,
  }) = _$ConditionDefinition_Medication;

  @override
  String get fhirType => 'ConditionDefinition_Medication';

  factory ConditionDefinition_Medication.fromJson(Map<String, dynamic> json) =>
      _$ConditionDefinition_MedicationFromJson(json);

  factory ConditionDefinition_Medication.fromYaml(dynamic yaml) => yaml is String
      ? ConditionDefinition_Medication.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ConditionDefinition_Medication.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ConditionDefinition_Medication cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ConditionDefinition_Medication.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ConditionDefinition_MedicationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
