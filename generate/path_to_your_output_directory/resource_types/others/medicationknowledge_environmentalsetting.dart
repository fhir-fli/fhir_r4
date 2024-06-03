/// /// [MedicationKnowledge_EnvironmentalSetting] Information about a
/// medication that is used to support knowledge.

@freezed
class MedicationKnowledge_EnvironmentalSetting with _$MedicationKnowledge_EnvironmentalSetting {
  const MedicationKnowledge_EnvironmentalSetting._();

  const factory MedicationKnowledge_EnvironmentalSetting({
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
/// /// [type] Identifies the category or type of setting (e.g., type of
/// location, temperature, humidity).

    @JsonKey(name: 'type') CodeableConcept? type,
/// /// [valueQuantity] Value associated to the setting. E.g., 40° – 50°F for
/// temperature.

    @JsonKey(name: 'valueQuantity') Quantity? valueQuantity,
/// /// [valueRange] Value associated to the setting. E.g., 40° – 50°F for
/// temperature.

    @JsonKey(name: 'valueRange') Range? valueRange,
/// /// [valueCodeableConcept] Value associated to the setting. E.g., 40° –
/// 50°F for temperature.

    @JsonKey(name: 'valueCodeableConcept') CodeableConcept? valueCodeableConcept,
  }) = _$MedicationKnowledge_EnvironmentalSetting;

  @override
  String get fhirType => 'MedicationKnowledge_EnvironmentalSetting';

  factory MedicationKnowledge_EnvironmentalSetting.fromJson(Map<String, dynamic> json) =>
      _$MedicationKnowledge_EnvironmentalSettingFromJson(json);

  factory MedicationKnowledge_EnvironmentalSetting.fromYaml(dynamic yaml) => yaml is String
      ? MedicationKnowledge_EnvironmentalSetting.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicationKnowledge_EnvironmentalSetting.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicationKnowledge_EnvironmentalSetting cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory MedicationKnowledge_EnvironmentalSetting.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicationKnowledge_EnvironmentalSettingFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
