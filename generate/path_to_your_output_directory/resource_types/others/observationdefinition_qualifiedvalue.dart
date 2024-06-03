/// /// [ObservationDefinition_QualifiedValue] Set of definitional
/// characteristics for a kind of observation or measurement produced or
/// consumed by an orderable health care service.

@freezed
class ObservationDefinition_QualifiedValue with _$ObservationDefinition_QualifiedValue {
  const ObservationDefinition_QualifiedValue._();

  const factory ObservationDefinition_QualifiedValue({
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
/// /// [context] A concept defining the context for this set of qualified
/// values.

    @JsonKey(name: 'context') CodeableConcept? context,
/// /// [appliesTo] The target population this  set of qualified values applies
/// to.

    @JsonKey(name: 'appliesTo') List<List<CodeableConcept>>? appliesTo,
/// /// [gender] The gender this  set of qualified values applies to.

    @JsonKey(name: 'gender') FhirCode? gender,
/// /// [_gender] Extensions for gender

    @JsonKey(name: '_gender') FhirElement? genderElement,
/// /// [age] The age range this  set of qualified values applies to.

    @JsonKey(name: 'age') Range? age,
/// /// [gestationalAge] The gestational age this  set of qualified values
/// applies to.

    @JsonKey(name: 'gestationalAge') Range? gestationalAge,
/// /// [condition] Text based condition for which the the set of qualified
/// values is valid.

    @JsonKey(name: 'condition') String? condition,
/// /// [_condition] Extensions for condition

    @JsonKey(name: '_condition') FhirElement? conditionElement,
/// /// [rangeCategory] The category of range of values for continuous or
/// ordinal observations that match the criteria of this set of qualified
/// values.

    @JsonKey(name: 'rangeCategory') FhirCode? rangeCategory,
/// /// [_rangeCategory] Extensions for rangeCategory

    @JsonKey(name: '_rangeCategory') FhirElement? rangeCategoryElement,
/// /// [range] The range of values defined for continuous or ordinal
/// observations that match the criteria of this set of qualified values.

    @JsonKey(name: 'range') Range? range,
/// /// [validCodedValueSet] The set of valid coded results for qualitative
/// observations  that match the criteria of this set of qualified values.

    @JsonKey(name: 'validCodedValueSet') FhirCanonical? validCodedValueSet,
/// /// [normalCodedValueSet] The set of normal coded results for qualitative
/// observations  that match the criteria of this set of qualified values.

    @JsonKey(name: 'normalCodedValueSet') FhirCanonical? normalCodedValueSet,
/// /// [abnormalCodedValueSet] The set of abnormal coded results for
/// qualitative observations  that match the criteria of this set of qualified
/// values.

    @JsonKey(name: 'abnormalCodedValueSet') FhirCanonical? abnormalCodedValueSet,
/// /// [criticalCodedValueSet] The set of critical coded results for
/// qualitative observations  that match the criteria of this set of qualified
/// values.

    @JsonKey(name: 'criticalCodedValueSet') FhirCanonical? criticalCodedValueSet,
  }) = _$ObservationDefinition_QualifiedValue;

  @override
  String get fhirType => 'ObservationDefinition_QualifiedValue';

  factory ObservationDefinition_QualifiedValue.fromJson(Map<String, dynamic> json) =>
      _$ObservationDefinition_QualifiedValueFromJson(json);

  factory ObservationDefinition_QualifiedValue.fromYaml(dynamic yaml) => yaml is String
      ? ObservationDefinition_QualifiedValue.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ObservationDefinition_QualifiedValue.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ObservationDefinition_QualifiedValue cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ObservationDefinition_QualifiedValue.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ObservationDefinition_QualifiedValueFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
