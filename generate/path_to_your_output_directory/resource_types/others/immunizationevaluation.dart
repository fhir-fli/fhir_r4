/// /// [ImmunizationEvaluation] Describes a comparison of an immunization
/// event against published recommendations to determine if the administration
/// is "valid" in relation to those  recommendations.

@freezed
class ImmunizationEvaluation with _$ImmunizationEvaluation {
  const ImmunizationEvaluation._();

  const factory ImmunizationEvaluation({
/// /// [resourceType] This is a ImmunizationEvaluation resource

    @JsonKey(name: 'resourceType') dynamic? resourceType,
/// /// [id] The logical id of the resource, as used in the URL for the
/// resource. Once assigned, this value never changes.

    @JsonKey(name: 'id') FhirId? id,
/// /// [meta] The metadata about the resource. This is content that is
/// maintained by the infrastructure. Changes to the content might not always
/// be associated with version changes to the resource.

    @JsonKey(name: 'meta') FhirMeta? meta,
/// /// [implicitRules] A reference to a set of rules that were followed when
/// the resource was constructed, and which must be understood when processing
/// the content. Often, this is a reference to an implementation guide that
/// defines the special rules along with other profiles etc.

    @JsonKey(name: 'implicitRules') FhirUri? implicitRules,
/// /// [_implicitRules] Extensions for implicitRules

    @JsonKey(name: '_implicitRules') FhirElement? implicitRulesElement,
/// /// [language] The base language in which the resource is written.

    @JsonKey(name: 'language') FhirCode? language,
/// /// [_language] Extensions for language

    @JsonKey(name: '_language') FhirElement? languageElement,
/// /// [text] A human-readable narrative that contains a summary of the
/// resource and can be used to represent the content of the resource to a
/// human. The narrative need not encode all the structured data, but is
/// required to contain sufficient detail to make it "clinically safe" for a
/// human to just read the narrative. Resource definitions may define what
/// content should be represented in the narrative to ensure clinical safety.

    @JsonKey(name: 'text') Narrative? text,
/// /// [contained] These resources do not have an independent existence apart
/// from the resource that contains them - they cannot be identified
/// independently, nor can they have their own independent transaction scope.
/// This is allowed to be a Parameters resource if and only if it is referenced
/// by a resource that provides context/meaning.

    @JsonKey(name: 'contained') List<List<ResourceList>>? contained,
/// /// [extension] May be used to represent additional information that is not
/// part of the basic definition of the resource. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// /// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the resource and that modifies
/// the understanding of the element that contains it and/or the understanding
/// of the containing element's descendants. Usually modifier elements provide
/// negation or qualification. To make the use of extensions safe and
/// managable, there is a strict set of governance applied to the definition
/// and use of extensions. Though any implementer is allowed to define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.

Modifier extensions SHALL NOT
/// change the meaning of any elements on Resource or DomainResource (including
/// cannot change the meaning of modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// /// [identifier] A unique identifier assigned to this immunization
/// evaluation record.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// /// [status] Indicates the current status of the evaluation of the
/// vaccination administration event.

    @JsonKey(name: 'status') FhirCode? status,
/// /// [_status] Extensions for status

    @JsonKey(name: '_status') FhirElement? statusElement,
/// /// [patient] The individual for whom the evaluation is being done.

    @JsonKey(name: 'patient') Reference? patient,
/// /// [date] The date the evaluation of the vaccine administration event was
/// performed.

    @JsonKey(name: 'date') FhirDateTime? date,
/// /// [_date] Extensions for date

    @JsonKey(name: '_date') FhirElement? dateElement,
/// /// [authority] Indicates the authority who published the protocol (e.g.
/// ACIP).

    @JsonKey(name: 'authority') Reference? authority,
/// /// [targetDisease] The vaccine preventable disease the dose is being
/// evaluated against.

    @JsonKey(name: 'targetDisease') CodeableConcept? targetDisease,
/// /// [immunizationEvent] The vaccine administration event being evaluated.

    @JsonKey(name: 'immunizationEvent') Reference? immunizationEvent,
/// /// [doseStatus] Indicates if the dose is valid or not valid with respect
/// to the published recommendations.

    @JsonKey(name: 'doseStatus') CodeableConcept? doseStatus,
/// /// [doseStatusReason] Provides an explanation as to why the vaccine
/// administration event is valid or not relative to the published
/// recommendations.

    @JsonKey(name: 'doseStatusReason') List<List<CodeableConcept>>? doseStatusReason,
/// /// [description] Additional information about the evaluation.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// /// [_description] Extensions for description

    @JsonKey(name: '_description') FhirElement? descriptionElement,
/// /// [series] One possible path to achieve presumed immunity against a
/// disease - within the context of an authority.

    @JsonKey(name: 'series') String? series,
/// /// [_series] Extensions for series

    @JsonKey(name: '_series') FhirElement? seriesElement,
/// /// [doseNumber] Nominal position in a series as determined by the outcome
/// of the evaluation process.

    @JsonKey(name: 'doseNumber') String? doseNumber,
/// /// [_doseNumber] Extensions for doseNumber

    @JsonKey(name: '_doseNumber') FhirElement? doseNumberElement,
/// /// [seriesDoses] The recommended number of doses to achieve immunity as
/// determined by the outcome of the evaluation process.

    @JsonKey(name: 'seriesDoses') String? seriesDoses,
/// /// [_seriesDoses] Extensions for seriesDoses

    @JsonKey(name: '_seriesDoses') FhirElement? seriesDosesElement,
  }) = _$ImmunizationEvaluation;

  @override
  String get fhirType => 'ImmunizationEvaluation';

  factory ImmunizationEvaluation.fromJson(Map<String, dynamic> json) =>
      _$ImmunizationEvaluationFromJson(json);

  factory ImmunizationEvaluation.fromYaml(dynamic yaml) => yaml is String
      ? ImmunizationEvaluation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ImmunizationEvaluation.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ImmunizationEvaluation cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ImmunizationEvaluation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ImmunizationEvaluationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
