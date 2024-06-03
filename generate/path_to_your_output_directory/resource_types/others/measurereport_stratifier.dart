/// /// [MeasureReport_Stratifier] The MeasureReport resource contains the
/// results of the calculation of a measure; and optionally a reference to the
/// resources involved in that calculation.

@freezed
class MeasureReport_Stratifier with _$MeasureReport_Stratifier {
  const MeasureReport_Stratifier._();

  const factory MeasureReport_Stratifier({
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
/// /// [linkId] The stratifier from the Measure that corresponds to this
/// stratifier in the MeasureReport resource.

    @JsonKey(name: 'linkId') String? linkId,
/// /// [_linkId] Extensions for linkId

    @JsonKey(name: '_linkId') FhirElement? linkIdElement,
/// /// [code] The meaning of this stratifier, as defined in the measure
/// definition.

    @JsonKey(name: 'code') CodeableConcept? code,
/// /// [stratum] This element contains the results for a single stratum within
/// the stratifier. For example, when stratifying on administrative gender,
/// there will be four strata, one for each possible gender value.

    @JsonKey(name: 'stratum') List<List<MeasureReport_Stratum>>? stratum,
  }) = _$MeasureReport_Stratifier;

  @override
  String get fhirType => 'MeasureReport_Stratifier';

  factory MeasureReport_Stratifier.fromJson(Map<String, dynamic> json) =>
      _$MeasureReport_StratifierFromJson(json);

  factory MeasureReport_Stratifier.fromYaml(dynamic yaml) => yaml is String
      ? MeasureReport_Stratifier.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MeasureReport_Stratifier.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MeasureReport_Stratifier cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory MeasureReport_Stratifier.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MeasureReport_StratifierFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
