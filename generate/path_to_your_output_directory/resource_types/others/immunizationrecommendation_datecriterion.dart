/// /// [ImmunizationRecommendation_DateCriterion] A patient's point-in-time
/// set of recommendations (i.e. forecasting) according to a published schedule
/// with optional supporting justification.

@freezed
class ImmunizationRecommendation_DateCriterion with _$ImmunizationRecommendation_DateCriterion {
  const ImmunizationRecommendation_DateCriterion._();

  const factory ImmunizationRecommendation_DateCriterion({
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
/// /// [code] Date classification of recommendation.  For example, earliest
/// date to give, latest date to give, etc.

    @JsonKey(name: 'code') CodeableConcept? code,
/// /// [value] The date whose meaning is specified by dateCriterion.code.

    @JsonKey(name: 'value') FhirDateTime? value,
/// /// [_value] Extensions for value

    @JsonKey(name: '_value') FhirElement? valueElement,
  }) = _$ImmunizationRecommendation_DateCriterion;

  @override
  String get fhirType => 'ImmunizationRecommendation_DateCriterion';

  factory ImmunizationRecommendation_DateCriterion.fromJson(Map<String, dynamic> json) =>
      _$ImmunizationRecommendation_DateCriterionFromJson(json);

  factory ImmunizationRecommendation_DateCriterion.fromYaml(dynamic yaml) => yaml is String
      ? ImmunizationRecommendation_DateCriterion.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ImmunizationRecommendation_DateCriterion.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ImmunizationRecommendation_DateCriterion cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ImmunizationRecommendation_DateCriterion.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ImmunizationRecommendation_DateCriterionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
