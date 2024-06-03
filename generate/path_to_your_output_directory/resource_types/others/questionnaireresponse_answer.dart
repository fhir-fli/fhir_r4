/// /// [QuestionnaireResponse_Answer] A structured set of questions and their
/// answers. The questions are ordered and grouped into coherent subsets,
/// corresponding to the structure of the grouping of the questionnaire being
/// responded to.

@freezed
class QuestionnaireResponse_Answer with _$QuestionnaireResponse_Answer {
  const QuestionnaireResponse_Answer._();

  const factory QuestionnaireResponse_Answer({
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
/// /// [valueBoolean] The answer (or one of the answers) provided by the
/// respondent to the question.

    @JsonKey(name: 'valueBoolean') FhirBoolean? valueBoolean,
/// /// [_valueBoolean] Extensions for valueBoolean

    @JsonKey(name: '_valueBoolean') FhirElement? valueBooleanElement,
/// /// [valueDecimal] The answer (or one of the answers) provided by the
/// respondent to the question.

    @JsonKey(name: 'valueDecimal') FhirDecimal? valueDecimal,
/// /// [_valueDecimal] Extensions for valueDecimal

    @JsonKey(name: '_valueDecimal') FhirElement? valueDecimalElement,
/// /// [valueInteger] The answer (or one of the answers) provided by the
/// respondent to the question.

    @JsonKey(name: 'valueInteger') FhirInteger? valueInteger,
/// /// [_valueInteger] Extensions for valueInteger

    @JsonKey(name: '_valueInteger') FhirElement? valueIntegerElement,
/// /// [valueDate] The answer (or one of the answers) provided by the
/// respondent to the question.

    @JsonKey(name: 'valueDate') FhirDate? valueDate,
/// /// [_valueDate] Extensions for valueDate

    @JsonKey(name: '_valueDate') FhirElement? valueDateElement,
/// /// [valueDateTime] The answer (or one of the answers) provided by the
/// respondent to the question.

    @JsonKey(name: 'valueDateTime') FhirDateTime? valueDateTime,
/// /// [_valueDateTime] Extensions for valueDateTime

    @JsonKey(name: '_valueDateTime') FhirElement? valueDateTimeElement,
/// /// [valueTime] The answer (or one of the answers) provided by the
/// respondent to the question.

    @JsonKey(name: 'valueTime') FhirTime? valueTime,
/// /// [_valueTime] Extensions for valueTime

    @JsonKey(name: '_valueTime') FhirElement? valueTimeElement,
/// /// [valueString] The answer (or one of the answers) provided by the
/// respondent to the question.

    @JsonKey(name: 'valueString') String? valueString,
/// /// [_valueString] Extensions for valueString

    @JsonKey(name: '_valueString') FhirElement? valueStringElement,
/// /// [valueUri] The answer (or one of the answers) provided by the
/// respondent to the question.

    @JsonKey(name: 'valueUri') FhirUri? valueUri,
/// /// [_valueUri] Extensions for valueUri

    @JsonKey(name: '_valueUri') FhirElement? valueUriElement,
/// /// [valueAttachment] The answer (or one of the answers) provided by the
/// respondent to the question.

    @JsonKey(name: 'valueAttachment') Attachment? valueAttachment,
/// /// [valueCoding] The answer (or one of the answers) provided by the
/// respondent to the question.

    @JsonKey(name: 'valueCoding') Coding? valueCoding,
/// /// [valueQuantity] The answer (or one of the answers) provided by the
/// respondent to the question.

    @JsonKey(name: 'valueQuantity') Quantity? valueQuantity,
/// /// [valueReference] The answer (or one of the answers) provided by the
/// respondent to the question.

    @JsonKey(name: 'valueReference') Reference? valueReference,
/// /// [item] Nested groups and/or questions found within this particular
/// answer.

    @JsonKey(name: 'item') List<List<QuestionnaireResponse_Item>>? item,
  }) = _$QuestionnaireResponse_Answer;

  @override
  String get fhirType => 'QuestionnaireResponse_Answer';

  factory QuestionnaireResponse_Answer.fromJson(Map<String, dynamic> json) =>
      _$QuestionnaireResponse_AnswerFromJson(json);

  factory QuestionnaireResponse_Answer.fromYaml(dynamic yaml) => yaml is String
      ? QuestionnaireResponse_Answer.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? QuestionnaireResponse_Answer.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'QuestionnaireResponse_Answer cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory QuestionnaireResponse_Answer.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$QuestionnaireResponse_AnswerFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
