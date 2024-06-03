/// /// [Questionnaire_AnswerOption] A structured set of questions intended to
/// guide the collection of answers from end-users. Questionnaires provide
/// detailed control over order, presentation, phraseology and grouping to
/// allow coherent, consistent data collection.

@freezed
class Questionnaire_AnswerOption with _$Questionnaire_AnswerOption {
  const Questionnaire_AnswerOption._();

  const factory Questionnaire_AnswerOption({
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
/// /// [valueInteger] A potential answer that's allowed as the answer to this
/// question.

    @JsonKey(name: 'valueInteger') FhirInteger? valueInteger,
/// /// [_valueInteger] Extensions for valueInteger

    @JsonKey(name: '_valueInteger') FhirElement? valueIntegerElement,
/// /// [valueDate] A potential answer that's allowed as the answer to this
/// question.

    @JsonKey(name: 'valueDate') FhirDate? valueDate,
/// /// [_valueDate] Extensions for valueDate

    @JsonKey(name: '_valueDate') FhirElement? valueDateElement,
/// /// [valueTime] A potential answer that's allowed as the answer to this
/// question.

    @JsonKey(name: 'valueTime') FhirTime? valueTime,
/// /// [_valueTime] Extensions for valueTime

    @JsonKey(name: '_valueTime') FhirElement? valueTimeElement,
/// /// [valueString] A potential answer that's allowed as the answer to this
/// question.

    @JsonKey(name: 'valueString') String? valueString,
/// /// [_valueString] Extensions for valueString

    @JsonKey(name: '_valueString') FhirElement? valueStringElement,
/// /// [valueCoding] A potential answer that's allowed as the answer to this
/// question.

    @JsonKey(name: 'valueCoding') Coding? valueCoding,
/// /// [valueReference] A potential answer that's allowed as the answer to
/// this question.

    @JsonKey(name: 'valueReference') Reference? valueReference,
/// /// [initialSelected] Indicates whether the answer value is selected when
/// the list of possible answers is initially shown.

    @JsonKey(name: 'initialSelected') FhirBoolean? initialSelected,
/// /// [_initialSelected] Extensions for initialSelected

    @JsonKey(name: '_initialSelected') FhirElement? initialSelectedElement,
  }) = _$Questionnaire_AnswerOption;

  @override
  String get fhirType => 'Questionnaire_AnswerOption';

  factory Questionnaire_AnswerOption.fromJson(Map<String, dynamic> json) =>
      _$Questionnaire_AnswerOptionFromJson(json);

  factory Questionnaire_AnswerOption.fromYaml(dynamic yaml) => yaml is String
      ? Questionnaire_AnswerOption.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Questionnaire_AnswerOption.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Questionnaire_AnswerOption cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Questionnaire_AnswerOption.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Questionnaire_AnswerOptionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
