/// /// [Measure_Group] The Measure resource provides the definition of a
/// quality measure.

@freezed
class Measure_Group with _$Measure_Group {
  const Measure_Group._();

  const factory Measure_Group({
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
/// /// [linkId] An identifier that is unique within the Measure allowing
/// linkage to the equivalent item in a MeasureReport resource.

    @JsonKey(name: 'linkId') String? linkId,
/// /// [_linkId] Extensions for linkId

    @JsonKey(name: '_linkId') FhirElement? linkIdElement,
/// /// [code] Indicates a meaning for the group. This can be as simple as a
/// unique identifier, or it can establish meaning in a broader context by
/// drawing from a terminology, allowing groups to be correlated across
/// measures.

    @JsonKey(name: 'code') CodeableConcept? code,
/// /// [description] The human readable description of this population group.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// /// [_description] Extensions for description

    @JsonKey(name: '_description') FhirElement? descriptionElement,
/// /// [type] Indicates whether the measure is used to examine a process, an
/// outcome over time, a patient-reported outcome, or a structure measure such
/// as utilization.

    @JsonKey(name: 'type') List<List<CodeableConcept>>? type,
/// /// [subjectCodeableConcept] The intended subjects for the measure. If this
/// element is not provided, a Patient subject is assumed, but the subject of
/// the measure can be anything.

    @JsonKey(name: 'subjectCodeableConcept') CodeableConcept? subjectCodeableConcept,
/// /// [subjectReference] The intended subjects for the measure. If this
/// element is not provided, a Patient subject is assumed, but the subject of
/// the measure can be anything.

    @JsonKey(name: 'subjectReference') Reference? subjectReference,
/// /// [basis] The population basis specifies the type of elements in the
/// population. For a subject-based measure, this is boolean (because the
/// subject and the population basis are the same, and the population criteria
/// define yes/no values for each individual in the population). For measures
/// that have a population basis that is different than the subject, this
/// element specifies the type of the population basis. For example, an
/// encounter-based measure has a subject of Patient and a population basis of
/// Encounter, and the population criteria all return lists of Encounters.

    @JsonKey(name: 'basis') FhirCode? basis,
/// /// [_basis] Extensions for basis

    @JsonKey(name: '_basis') FhirElement? basisElement,
/// /// [scoring] Indicates how the calculation is performed for the measure,
/// including proportion, ratio, continuous-variable, and cohort. The value set
/// is extensible, allowing additional measure scoring types to be represented.

    @JsonKey(name: 'scoring') CodeableConcept? scoring,
/// /// [scoringUnit] Defines the expected units of measure for the measure
/// score. This element SHOULD be specified as a UCUM unit.

    @JsonKey(name: 'scoringUnit') CodeableConcept? scoringUnit,
/// /// [rateAggregation] Describes how to combine the information calculated,
/// based on logic in each of several populations, into one summarized result.

    @JsonKey(name: 'rateAggregation') FhirMarkdown? rateAggregation,
/// /// [_rateAggregation] Extensions for rateAggregation

    @JsonKey(name: '_rateAggregation') FhirElement? rateAggregationElement,
/// /// [improvementNotation] Information on whether an increase or decrease in
/// score is the preferred result (e.g., a higher score indicates better
/// quality OR a lower score indicates better quality OR quality is within a
/// range).

    @JsonKey(name: 'improvementNotation') CodeableConcept? improvementNotation,
/// /// [library] A reference to a Library resource containing the formal logic
/// used by the measure group.

    @JsonKey(name: 'library') List<List<FhirCanonical>>? library,
/// /// [population] A population criteria for the measure.

    @JsonKey(name: 'population') List<List<Measure_Population>>? population,
/// /// [stratifier] The stratifier criteria for the measure report, specified
/// as either the name of a valid CQL expression defined within a referenced
/// library or a valid FHIR Resource Path.

    @JsonKey(name: 'stratifier') List<List<Measure_Stratifier>>? stratifier,
  }) = _$Measure_Group;

  @override
  String get fhirType => 'Measure_Group';

  factory Measure_Group.fromJson(Map<String, dynamic> json) =>
      _$Measure_GroupFromJson(json);

  factory Measure_Group.fromYaml(dynamic yaml) => yaml is String
      ? Measure_Group.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Measure_Group.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Measure_Group cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Measure_Group.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Measure_GroupFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
