/// /// [Condition_Stage] A clinical condition, problem, diagnosis, or other
/// event, situation, issue, or clinical concept that has risen to a level of
/// concern.

@freezed
class Condition_Stage with _$Condition_Stage {
  const Condition_Stage._();

  const factory Condition_Stage({
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
/// /// [summary] A simple summary of the stage such as "Stage 3" or "Early
/// Onset". The determination of the stage is disease-specific, such as cancer,
/// retinopathy of prematurity, kidney diseases, Alzheimer's, or Parkinson
/// disease.

    @JsonKey(name: 'summary') CodeableConcept? summary,
/// /// [assessment] Reference to a formal record of the evidence on which the
/// staging assessment is based.

    @JsonKey(name: 'assessment') List<List<Reference>>? assessment,
/// /// [type] The kind of staging, such as pathological or clinical staging.

    @JsonKey(name: 'type') CodeableConcept? type,
  }) = _$Condition_Stage;

  @override
  String get fhirType => 'Condition_Stage';

  factory Condition_Stage.fromJson(Map<String, dynamic> json) =>
      _$Condition_StageFromJson(json);

  factory Condition_Stage.fromYaml(dynamic yaml) => yaml is String
      ? Condition_Stage.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Condition_Stage.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Condition_Stage cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Condition_Stage.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Condition_StageFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
