import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ImmunizationRecommendation_Recommendation] A patient's point-in-time
/// set of recommendations (i.e. forecasting) according to a published schedule
/// with optional supporting justification.

@freezed
class ImmunizationRecommendation_Recommendation with _$ImmunizationRecommendation_Recommendation {
  const ImmunizationRecommendation_Recommendation._();

  const factory ImmunizationRecommendation_Recommendation({
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
/// [vaccineCode] Vaccine(s) or vaccine group that pertain to the
/// recommendation.

    @JsonKey(name: 'vaccineCode') List<List<CodeableConcept>>? vaccineCode,
/// [targetDisease] The targeted disease for the recommendation.

    @JsonKey(name: 'targetDisease') List<List<CodeableConcept>>? targetDisease,
/// [contraindicatedVaccineCode] Vaccine(s) which should not be used to
/// fulfill the recommendation.

    @JsonKey(name: 'contraindicatedVaccineCode') List<List<CodeableConcept>>? contraindicatedVaccineCode,
/// [forecastStatus] Indicates the patient status with respect to the path
/// to immunity for the target disease.

    @JsonKey(name: 'forecastStatus') CodeableConcept? forecastStatus,
/// [forecastReason] The reason for the assigned forecast status.

    @JsonKey(name: 'forecastReason') List<List<CodeableConcept>>? forecastReason,
/// [dateCriterion] Vaccine date recommendations.  For example, earliest
/// date to administer, latest date to administer, etc.

    @JsonKey(name: 'dateCriterion') List<List<ImmunizationRecommendation_DateCriterion>>? dateCriterion,
/// [description] Contains the description about the protocol under which
/// the vaccine was administered.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// [_description] Extensions for description

    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
/// [series] One possible path to achieve presumed immunity against a
/// disease - within the context of an authority.

    @JsonKey(name: 'series') String? series,
/// [_series] Extensions for series

    @JsonKey(name: '_series') PrimitiveElement? seriesElement,
/// [doseNumber] Nominal position of the recommended dose in a series as
/// determined by the evaluation and forecasting process (e.g. dose 2 is the
/// next recommended dose).

    @JsonKey(name: 'doseNumber') String? doseNumber,
/// [_doseNumber] Extensions for doseNumber

    @JsonKey(name: '_doseNumber') PrimitiveElement? doseNumberElement,
/// [seriesDoses] The recommended number of doses to achieve immunity as
/// determined by the evaluation and forecasting process.

    @JsonKey(name: 'seriesDoses') String? seriesDoses,
/// [_seriesDoses] Extensions for seriesDoses

    @JsonKey(name: '_seriesDoses') PrimitiveElement? seriesDosesElement,
/// [supportingImmunization] Immunization event history and/or evaluation
/// that supports the status and recommendation.

    @JsonKey(name: 'supportingImmunization') List<List<Reference>>? supportingImmunization,
/// [supportingPatientInformation] Patient Information that supports the
/// status and recommendation.  This includes patient observations, adverse
/// reactions and allergy/intolerance information.

    @JsonKey(name: 'supportingPatientInformation') List<List<Reference>>? supportingPatientInformation,
  }) = _$ImmunizationRecommendation_Recommendation;

  @override
  String get fhirType => 'ImmunizationRecommendation_Recommendation';

  factory ImmunizationRecommendation_Recommendation.fromJson(Map<String, dynamic> json) =>
      _$ImmunizationRecommendation_RecommendationFromJson(json);

  factory ImmunizationRecommendation_Recommendation.fromYaml(dynamic yaml) => yaml is String
      ? ImmunizationRecommendation_Recommendation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ImmunizationRecommendation_Recommendation.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ImmunizationRecommendation_Recommendation cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ImmunizationRecommendation_Recommendation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ImmunizationRecommendation_RecommendationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
