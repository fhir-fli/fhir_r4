/// /// [ResearchSubject_SubjectState] A ResearchSubject is a participant or
/// object which is the recipient of investigative activities in a research
/// study.

@freezed
class ResearchSubject_SubjectState with _$ResearchSubject_SubjectState {
  const ResearchSubject_SubjectState._();

  const factory ResearchSubject_SubjectState({
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
/// /// [code] Identifies the aspect of the subject's journey that the state
/// refers to.

    @JsonKey(name: 'code') CodeableConcept? code,
/// /// [startDate] The date a research subject entered the given state.

    @JsonKey(name: 'startDate') FhirDateTime? startDate,
/// /// [_startDate] Extensions for startDate

    @JsonKey(name: '_startDate') FhirElement? startDateElement,
/// /// [endDate] The date a research subject exited or left the given state.

    @JsonKey(name: 'endDate') FhirDateTime? endDate,
/// /// [_endDate] Extensions for endDate

    @JsonKey(name: '_endDate') FhirElement? endDateElement,
/// /// [reason] The reason for the state change. If coded it should follow the
/// formal subject state model.

    @JsonKey(name: 'reason') CodeableConcept? reason,
  }) = _$ResearchSubject_SubjectState;

  @override
  String get fhirType => 'ResearchSubject_SubjectState';

  factory ResearchSubject_SubjectState.fromJson(Map<String, dynamic> json) =>
      _$ResearchSubject_SubjectStateFromJson(json);

  factory ResearchSubject_SubjectState.fromYaml(dynamic yaml) => yaml is String
      ? ResearchSubject_SubjectState.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ResearchSubject_SubjectState.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ResearchSubject_SubjectState cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ResearchSubject_SubjectState.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ResearchSubject_SubjectStateFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
