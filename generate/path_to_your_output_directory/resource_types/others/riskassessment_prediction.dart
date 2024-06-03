/// /// [RiskAssessment_Prediction] An assessment of the likely outcome(s) for
/// a patient or other subject as well as the likelihood of each outcome.

@freezed
class RiskAssessment_Prediction with _$RiskAssessment_Prediction {
  const RiskAssessment_Prediction._();

  const factory RiskAssessment_Prediction({
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
/// /// [outcome] One of the potential outcomes for the patient (e.g.
/// remission, death,  a particular condition).

    @JsonKey(name: 'outcome') CodeableConcept? outcome,
/// /// [probabilityDecimal] Indicates how likely the outcome is (in the
/// specified timeframe).

    @JsonKey(name: 'probabilityDecimal') FhirDecimal? probabilityDecimal,
/// /// [_probabilityDecimal] Extensions for probabilityDecimal

    @JsonKey(name: '_probabilityDecimal') FhirElement? probabilityDecimalElement,
/// /// [probabilityRange] Indicates how likely the outcome is (in the
/// specified timeframe).

    @JsonKey(name: 'probabilityRange') Range? probabilityRange,
/// /// [qualitativeRisk] Indicates how likely the outcome is (in the specified
/// timeframe), expressed as a qualitative value (e.g. low, medium, or high).

    @JsonKey(name: 'qualitativeRisk') CodeableConcept? qualitativeRisk,
/// /// [relativeRisk] Indicates the risk for this particular subject (with
/// their specific characteristics) divided by the risk of the population in
/// general.  (Numbers greater than 1 = higher risk than the population,
/// numbers less than 1 = lower risk.).

    @JsonKey(name: 'relativeRisk') FhirDecimal? relativeRisk,
/// /// [_relativeRisk] Extensions for relativeRisk

    @JsonKey(name: '_relativeRisk') FhirElement? relativeRiskElement,
/// /// [whenPeriod] Indicates the period of time or age range of the subject
/// to which the specified probability applies.

    @JsonKey(name: 'whenPeriod') Period? whenPeriod,
/// /// [whenRange] Indicates the period of time or age range of the subject to
/// which the specified probability applies.

    @JsonKey(name: 'whenRange') Range? whenRange,
/// /// [rationale] Additional information explaining the basis for the
/// prediction.

    @JsonKey(name: 'rationale') String? rationale,
/// /// [_rationale] Extensions for rationale

    @JsonKey(name: '_rationale') FhirElement? rationaleElement,
  }) = _$RiskAssessment_Prediction;

  @override
  String get fhirType => 'RiskAssessment_Prediction';

  factory RiskAssessment_Prediction.fromJson(Map<String, dynamic> json) =>
      _$RiskAssessment_PredictionFromJson(json);

  factory RiskAssessment_Prediction.fromYaml(dynamic yaml) => yaml is String
      ? RiskAssessment_Prediction.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? RiskAssessment_Prediction.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'RiskAssessment_Prediction cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory RiskAssessment_Prediction.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$RiskAssessment_PredictionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
