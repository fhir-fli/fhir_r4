/// /// [MeasureReport_Population1] The MeasureReport resource contains the
/// results of the calculation of a measure; and optionally a reference to the
/// resources involved in that calculation.

@freezed
class MeasureReport_Population1 with _$MeasureReport_Population1 {
  const MeasureReport_Population1._();

  const factory MeasureReport_Population1({
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
/// /// [linkId] The population from the Measure that corresponds to this
/// population in the MeasureReport resource.

    @JsonKey(name: 'linkId') String? linkId,
/// /// [_linkId] Extensions for linkId

    @JsonKey(name: '_linkId') FhirElement? linkIdElement,
/// /// [code] The type of the population.

    @JsonKey(name: 'code') CodeableConcept? code,
/// /// [count] The number of members of the population in this stratum.

    @JsonKey(name: 'count') FhirInteger? count,
/// /// [_count] Extensions for count

    @JsonKey(name: '_count') FhirElement? countElement,
/// /// [subjectResults] This element refers to a List of individual level
/// MeasureReport resources, one for each subject in this population in this
/// stratum.

    @JsonKey(name: 'subjectResults') Reference? subjectResults,
/// /// [subjectReport] A reference to an individual level MeasureReport
/// resource for a member of the population.

    @JsonKey(name: 'subjectReport') List<List<Reference>>? subjectReport,
/// /// [subjects] Optional Group identifying the individuals that make up the
/// population.

    @JsonKey(name: 'subjects') Reference? subjects,
  }) = _$MeasureReport_Population1;

  @override
  String get fhirType => 'MeasureReport_Population1';

  factory MeasureReport_Population1.fromJson(Map<String, dynamic> json) =>
      _$MeasureReport_Population1FromJson(json);

  factory MeasureReport_Population1.fromYaml(dynamic yaml) => yaml is String
      ? MeasureReport_Population1.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MeasureReport_Population1.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MeasureReport_Population1 cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory MeasureReport_Population1.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MeasureReport_Population1FromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
