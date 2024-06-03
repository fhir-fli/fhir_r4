/// /// [Specimen_Processing] A sample to be used for analysis.

@freezed
class Specimen_Processing with _$Specimen_Processing {
  const Specimen_Processing._();

  const factory Specimen_Processing({
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
/// /// [description] Textual description of procedure.

    @JsonKey(name: 'description') String? description,
/// /// [_description] Extensions for description

    @JsonKey(name: '_description') FhirElement? descriptionElement,
/// /// [method] A coded value specifying the method used to process the
/// specimen.

    @JsonKey(name: 'method') CodeableConcept? method,
/// /// [performer] The performer of the processing of the specimen.

    @JsonKey(name: 'performer') Reference? performer,
/// /// [device] The device used in the processing of the specimen.

    @JsonKey(name: 'device') Reference? device,
/// /// [additive] Material used in the processing step.

    @JsonKey(name: 'additive') List<List<Reference>>? additive,
/// /// [timeDateTime] A record of the time or period when the specimen
/// processing occurred.  For example the time of sample fixation or the period
/// of time the sample was in formalin.

    @JsonKey(name: 'timeDateTime') FhirDateTime? timeDateTime,
/// /// [_timeDateTime] Extensions for timeDateTime

    @JsonKey(name: '_timeDateTime') FhirElement? timeDateTimeElement,
/// /// [timePeriod] A record of the time or period when the specimen
/// processing occurred.  For example the time of sample fixation or the period
/// of time the sample was in formalin.

    @JsonKey(name: 'timePeriod') Period? timePeriod,
/// /// [timeDuration] A record of the time or period when the specimen
/// processing occurred.  For example the time of sample fixation or the period
/// of time the sample was in formalin.

    @JsonKey(name: 'timeDuration') FhirDuration? timeDuration,
  }) = _$Specimen_Processing;

  @override
  String get fhirType => 'Specimen_Processing';

  factory Specimen_Processing.fromJson(Map<String, dynamic> json) =>
      _$Specimen_ProcessingFromJson(json);

  factory Specimen_Processing.fromYaml(dynamic yaml) => yaml is String
      ? Specimen_Processing.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Specimen_Processing.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Specimen_Processing cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Specimen_Processing.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Specimen_ProcessingFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
