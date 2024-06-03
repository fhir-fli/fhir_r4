/// /// [ResearchStudy_ProgressStatus] A scientific study of nature that
/// sometimes includes processes involved in health and disease. For example,
/// clinical trials are research studies that involve people. These studies may
/// be related to new ways to screen, prevent, diagnose, and treat disease.
/// They may also study certain outcomes and certain groups of people by
/// looking at data collected in the past or future.

@freezed
class ResearchStudy_ProgressStatus with _$ResearchStudy_ProgressStatus {
  const ResearchStudy_ProgressStatus._();

  const factory ResearchStudy_ProgressStatus({
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
/// /// [state] Label for status or state (e.g. recruitment status).

    @JsonKey(name: 'state') CodeableConcept? state,
/// /// [actual] An indication of whether or not the date is a known date when
/// the state changed or will change. A value of true indicates a known date. A
/// value of false indicates an estimated date.

    @JsonKey(name: 'actual') FhirBoolean? actual,
/// /// [_actual] Extensions for actual

    @JsonKey(name: '_actual') FhirElement? actualElement,
/// /// [period] Date range.

    @JsonKey(name: 'period') Period? period,
  }) = _$ResearchStudy_ProgressStatus;

  @override
  String get fhirType => 'ResearchStudy_ProgressStatus';

  factory ResearchStudy_ProgressStatus.fromJson(Map<String, dynamic> json) =>
      _$ResearchStudy_ProgressStatusFromJson(json);

  factory ResearchStudy_ProgressStatus.fromYaml(dynamic yaml) => yaml is String
      ? ResearchStudy_ProgressStatus.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ResearchStudy_ProgressStatus.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ResearchStudy_ProgressStatus cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ResearchStudy_ProgressStatus.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ResearchStudy_ProgressStatusFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
