/// /// [Evidence_Statistic] The Evidence Resource provides a
/// machine-interpretable expression of an evidence concept including the
/// evidence variables (e.g., population, exposures/interventions, comparators,
/// outcomes, measured variables, confounding variables), the statistics, and
/// the certainty of this evidence.

@freezed
class Evidence_Statistic with _$Evidence_Statistic {
  const Evidence_Statistic._();

  const factory Evidence_Statistic({
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
/// /// [description] A description of the content value of the statistic.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// /// [_description] Extensions for description

    @JsonKey(name: '_description') FhirElement? descriptionElement,
/// /// [note] Footnotes and/or explanatory notes.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
/// /// [statisticType] Type of statistic, e.g., relative risk.

    @JsonKey(name: 'statisticType') CodeableConcept? statisticType,
/// /// [category] When the measured variable is handled categorically, the
/// category element is used to define which category the statistic is
/// reporting.

    @JsonKey(name: 'category') CodeableConcept? category,
/// /// [quantity] Statistic value.

    @JsonKey(name: 'quantity') Quantity? quantity,
/// /// [numberOfEvents] The number of events associated with the statistic,
/// where the unit of analysis is different from numberAffected,
/// sampleSize.knownDataCount and sampleSize.numberOfParticipants.

    @JsonKey(name: 'numberOfEvents') FhirUnsignedInt? numberOfEvents,
/// /// [_numberOfEvents] Extensions for numberOfEvents

    @JsonKey(name: '_numberOfEvents') FhirElement? numberOfEventsElement,
/// /// [numberAffected] The number of participants affected where the unit of
/// analysis is the same as sampleSize.knownDataCount and
/// sampleSize.numberOfParticipants.

    @JsonKey(name: 'numberAffected') FhirUnsignedInt? numberAffected,
/// /// [_numberAffected] Extensions for numberAffected

    @JsonKey(name: '_numberAffected') FhirElement? numberAffectedElement,
/// /// [sampleSize] Number of samples in the statistic.

    @JsonKey(name: 'sampleSize') Evidence_SampleSize? sampleSize,
/// /// [attributeEstimate] A statistical attribute of the statistic such as a
/// measure of heterogeneity.

    @JsonKey(name: 'attributeEstimate') List<List<Evidence_AttributeEstimate>>? attributeEstimate,
/// /// [modelCharacteristic] A component of the method to generate the
/// statistic.

    @JsonKey(name: 'modelCharacteristic') List<List<Evidence_ModelCharacteristic>>? modelCharacteristic,
  }) = _$Evidence_Statistic;

  @override
  String get fhirType => 'Evidence_Statistic';

  factory Evidence_Statistic.fromJson(Map<String, dynamic> json) =>
      _$Evidence_StatisticFromJson(json);

  factory Evidence_Statistic.fromYaml(dynamic yaml) => yaml is String
      ? Evidence_Statistic.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Evidence_Statistic.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Evidence_Statistic cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Evidence_Statistic.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Evidence_StatisticFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
