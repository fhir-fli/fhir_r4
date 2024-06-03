/// /// [MeasureReport_Group] The MeasureReport resource contains the results
/// of the calculation of a measure; and optionally a reference to the
/// resources involved in that calculation.

@freezed
class MeasureReport_Group with _$MeasureReport_Group {
  const MeasureReport_Group._();

  const factory MeasureReport_Group({
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
/// /// [linkId] The group from the Measure that corresponds to this group in
/// the MeasureReport resource.

    @JsonKey(name: 'linkId') String? linkId,
/// /// [_linkId] Extensions for linkId

    @JsonKey(name: '_linkId') FhirElement? linkIdElement,
/// /// [code] The meaning of the population group as defined in the measure
/// definition.

    @JsonKey(name: 'code') CodeableConcept? code,
/// /// [subject] Optional subject identifying the individual or individuals
/// the report is for.

    @JsonKey(name: 'subject') Reference? subject,
/// /// [population] The populations that make up the population group, one for
/// each type of population appropriate for the measure.

    @JsonKey(name: 'population') List<List<MeasureReport_Population>>? population,
/// /// [measureScoreQuantity] The measure score for this population group,
/// calculated as appropriate for the measure type and scoring method, and
/// based on the contents of the populations defined in the group.

    @JsonKey(name: 'measureScoreQuantity') Quantity? measureScoreQuantity,
/// /// [measureScoreDateTime] The measure score for this population group,
/// calculated as appropriate for the measure type and scoring method, and
/// based on the contents of the populations defined in the group.

    @JsonKey(name: 'measureScoreDateTime') FhirDateTime? measureScoreDateTime,
/// /// [_measureScoreDateTime] Extensions for measureScoreDateTime

    @JsonKey(name: '_measureScoreDateTime') FhirElement? measureScoreDateTimeElement,
/// /// [measureScoreCodeableConcept] The measure score for this population
/// group, calculated as appropriate for the measure type and scoring method,
/// and based on the contents of the populations defined in the group.

    @JsonKey(name: 'measureScoreCodeableConcept') CodeableConcept? measureScoreCodeableConcept,
/// /// [measureScorePeriod] The measure score for this population group,
/// calculated as appropriate for the measure type and scoring method, and
/// based on the contents of the populations defined in the group.

    @JsonKey(name: 'measureScorePeriod') Period? measureScorePeriod,
/// /// [measureScoreRange] The measure score for this population group,
/// calculated as appropriate for the measure type and scoring method, and
/// based on the contents of the populations defined in the group.

    @JsonKey(name: 'measureScoreRange') Range? measureScoreRange,
/// /// [measureScoreDuration] The measure score for this population group,
/// calculated as appropriate for the measure type and scoring method, and
/// based on the contents of the populations defined in the group.

    @JsonKey(name: 'measureScoreDuration') FhirDuration? measureScoreDuration,
/// /// [stratifier] When a measure includes multiple stratifiers, there will
/// be a stratifier group for each stratifier defined by the measure.

    @JsonKey(name: 'stratifier') List<List<MeasureReport_Stratifier>>? stratifier,
  }) = _$MeasureReport_Group;

  @override
  String get fhirType => 'MeasureReport_Group';

  factory MeasureReport_Group.fromJson(Map<String, dynamic> json) =>
      _$MeasureReport_GroupFromJson(json);

  factory MeasureReport_Group.fromYaml(dynamic yaml) => yaml is String
      ? MeasureReport_Group.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MeasureReport_Group.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MeasureReport_Group cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory MeasureReport_Group.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MeasureReport_GroupFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
