/// /// [DetectedIssue_Evidence] Indicates an actual or potential clinical
/// issue with or between one or more active or proposed clinical actions for a
/// patient; e.g. Drug-drug interaction, Ineffective treatment frequency,
/// Procedure-condition conflict, gaps in care, etc.

@freezed
class DetectedIssue_Evidence with _$DetectedIssue_Evidence {
  const DetectedIssue_Evidence._();

  const factory DetectedIssue_Evidence({
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
/// /// [code] A manifestation that led to the recording of this detected
/// issue.

    @JsonKey(name: 'code') List<List<CodeableConcept>>? code,
/// /// [detail] Links to resources that constitute evidence for the detected
/// issue such as a GuidanceResponse or MeasureReport.

    @JsonKey(name: 'detail') List<List<Reference>>? detail,
  }) = _$DetectedIssue_Evidence;

  @override
  String get fhirType => 'DetectedIssue_Evidence';

  factory DetectedIssue_Evidence.fromJson(Map<String, dynamic> json) =>
      _$DetectedIssue_EvidenceFromJson(json);

  factory DetectedIssue_Evidence.fromYaml(dynamic yaml) => yaml is String
      ? DetectedIssue_Evidence.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DetectedIssue_Evidence.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DetectedIssue_Evidence cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory DetectedIssue_Evidence.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DetectedIssue_EvidenceFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
