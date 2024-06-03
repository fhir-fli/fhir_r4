/// /// [Evidence_Certainty] The Evidence Resource provides a
/// machine-interpretable expression of an evidence concept including the
/// evidence variables (e.g., population, exposures/interventions, comparators,
/// outcomes, measured variables, confounding variables), the statistics, and
/// the certainty of this evidence.

@freezed
class Evidence_Certainty with _$Evidence_Certainty {
  const Evidence_Certainty._();

  const factory Evidence_Certainty({
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
/// /// [description] Textual description of certainty.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// /// [_description] Extensions for description

    @JsonKey(name: '_description') FhirElement? descriptionElement,
/// /// [note] Footnotes and/or explanatory notes.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
/// /// [type] Aspect of certainty being rated.

    @JsonKey(name: 'type') CodeableConcept? type,
/// /// [rating] Assessment or judgement of the aspect.

    @JsonKey(name: 'rating') CodeableConcept? rating,
/// /// [rater] Individual or group who did the rating.

    @JsonKey(name: 'rater') String? rater,
/// /// [_rater] Extensions for rater

    @JsonKey(name: '_rater') FhirElement? raterElement,
/// /// [subcomponent] A domain or subdomain of certainty.

    @JsonKey(name: 'subcomponent') List<List<Evidence_Certainty>>? subcomponent,
  }) = _$Evidence_Certainty;

  @override
  String get fhirType => 'Evidence_Certainty';

  factory Evidence_Certainty.fromJson(Map<String, dynamic> json) =>
      _$Evidence_CertaintyFromJson(json);

  factory Evidence_Certainty.fromYaml(dynamic yaml) => yaml is String
      ? Evidence_Certainty.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Evidence_Certainty.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Evidence_Certainty cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Evidence_Certainty.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Evidence_CertaintyFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
