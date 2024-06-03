import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [MeasureReport_Stratum] The MeasureReport resource contains the results
/// of the calculation of a measure; and optionally a reference to the
/// resources involved in that calculation.

@freezed
class MeasureReport_Stratum with _$MeasureReport_Stratum {
  const MeasureReport_Stratum._();

  const factory MeasureReport_Stratum({
/// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [modifierExtension] May be used to represent additional information
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
/// [valueCodeableConcept] The value for this stratum, expressed as a
/// CodeableConcept. When defining stratifiers on complex values, the value
/// must be rendered such that the value for each stratum within the stratifier
/// is unique.

    @JsonKey(name: 'valueCodeableConcept') CodeableConcept? valueCodeableConcept,
/// [valueBoolean] The value for this stratum, expressed as a
/// CodeableConcept. When defining stratifiers on complex values, the value
/// must be rendered such that the value for each stratum within the stratifier
/// is unique.

    @JsonKey(name: 'valueBoolean') FhirBoolean? valueBoolean,
/// [_valueBoolean] Extensions for valueBoolean

    @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,
/// [valueQuantity] The value for this stratum, expressed as a
/// CodeableConcept. When defining stratifiers on complex values, the value
/// must be rendered such that the value for each stratum within the stratifier
/// is unique.

    @JsonKey(name: 'valueQuantity') Quantity? valueQuantity,
/// [valueRange] The value for this stratum, expressed as a
/// CodeableConcept. When defining stratifiers on complex values, the value
/// must be rendered such that the value for each stratum within the stratifier
/// is unique.

    @JsonKey(name: 'valueRange') Range? valueRange,
/// [valueReference] The value for this stratum, expressed as a
/// CodeableConcept. When defining stratifiers on complex values, the value
/// must be rendered such that the value for each stratum within the stratifier
/// is unique.

    @JsonKey(name: 'valueReference') Reference? valueReference,
/// [component] A stratifier component value.

    @JsonKey(name: 'component') List<List<MeasureReport_Component>>? component,
/// [population] The populations that make up the stratum, one for each
/// type of population appropriate to the measure.

    @JsonKey(name: 'population') List<List<MeasureReport_Population1>>? population,
/// [measureScoreQuantity] The measure score for this stratum, calculated
/// as appropriate for the measure type and scoring method, and based on only
/// the members of this stratum.

    @JsonKey(name: 'measureScoreQuantity') Quantity? measureScoreQuantity,
/// [measureScoreDateTime] The measure score for this stratum, calculated
/// as appropriate for the measure type and scoring method, and based on only
/// the members of this stratum.

    @JsonKey(name: 'measureScoreDateTime') FhirDateTime? measureScoreDateTime,
/// [_measureScoreDateTime] Extensions for measureScoreDateTime

    @JsonKey(name: '_measureScoreDateTime') PrimitiveElement? measureScoreDateTimeElement,
/// [measureScoreCodeableConcept] The measure score for this stratum,
/// calculated as appropriate for the measure type and scoring method, and
/// based on only the members of this stratum.

    @JsonKey(name: 'measureScoreCodeableConcept') CodeableConcept? measureScoreCodeableConcept,
/// [measureScorePeriod] The measure score for this stratum, calculated as
/// appropriate for the measure type and scoring method, and based on only the
/// members of this stratum.

    @JsonKey(name: 'measureScorePeriod') Period? measureScorePeriod,
/// [measureScoreRange] The measure score for this stratum, calculated as
/// appropriate for the measure type and scoring method, and based on only the
/// members of this stratum.

    @JsonKey(name: 'measureScoreRange') Range? measureScoreRange,
/// [measureScoreDuration] The measure score for this stratum, calculated
/// as appropriate for the measure type and scoring method, and based on only
/// the members of this stratum.

    @JsonKey(name: 'measureScoreDuration') FhirDuration? measureScoreDuration,
  }) = _$MeasureReport_Stratum;

  @override
  String get fhirType => 'MeasureReport_Stratum';

  factory MeasureReport_Stratum.fromJson(Map<String, dynamic> json) =>
      _$MeasureReport_StratumFromJson(json);

  factory MeasureReport_Stratum.fromYaml(dynamic yaml) => yaml is String
      ? MeasureReport_Stratum.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MeasureReport_Stratum.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MeasureReport_Stratum cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory MeasureReport_Stratum.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MeasureReport_StratumFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
