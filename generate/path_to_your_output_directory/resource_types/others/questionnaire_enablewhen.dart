/// /// [Questionnaire_EnableWhen] A structured set of questions intended to
/// guide the collection of answers from end-users. Questionnaires provide
/// detailed control over order, presentation, phraseology and grouping to
/// allow coherent, consistent data collection.

@freezed
class Questionnaire_EnableWhen with _$Questionnaire_EnableWhen {
  const Questionnaire_EnableWhen._();

  const factory Questionnaire_EnableWhen({
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
/// /// [question] The linkId for the question whose answer (or lack of answer)
/// governs whether this item is enabled.

    @JsonKey(name: 'question') String? question,
/// /// [_question] Extensions for question

    @JsonKey(name: '_question') FhirElement? questionElement,
/// /// [operator] Specifies the criteria by which the question is enabled.

    @JsonKey(name: 'operator') FhirCode? operator,
/// /// [_operator] Extensions for operator

    @JsonKey(name: '_operator') FhirElement? operatorElement,
/// /// [answerBoolean] A value that the referenced question is tested using
/// the specified operator in order for the item to be enabled.  If there are
/// multiple answers, a match on any of the answers suffices.  If different
/// behavior is desired (all must match, at least 2 must match, etc.), consider
/// using the enableWhenExpression extension.

    @JsonKey(name: 'answerBoolean') FhirBoolean? answerBoolean,
/// /// [_answerBoolean] Extensions for answerBoolean

    @JsonKey(name: '_answerBoolean') FhirElement? answerBooleanElement,
/// /// [answerDecimal] A value that the referenced question is tested using
/// the specified operator in order for the item to be enabled.  If there are
/// multiple answers, a match on any of the answers suffices.  If different
/// behavior is desired (all must match, at least 2 must match, etc.), consider
/// using the enableWhenExpression extension.

    @JsonKey(name: 'answerDecimal') FhirDecimal? answerDecimal,
/// /// [_answerDecimal] Extensions for answerDecimal

    @JsonKey(name: '_answerDecimal') FhirElement? answerDecimalElement,
/// /// [answerInteger] A value that the referenced question is tested using
/// the specified operator in order for the item to be enabled.  If there are
/// multiple answers, a match on any of the answers suffices.  If different
/// behavior is desired (all must match, at least 2 must match, etc.), consider
/// using the enableWhenExpression extension.

    @JsonKey(name: 'answerInteger') FhirInteger? answerInteger,
/// /// [_answerInteger] Extensions for answerInteger

    @JsonKey(name: '_answerInteger') FhirElement? answerIntegerElement,
/// /// [answerDate] A value that the referenced question is tested using the
/// specified operator in order for the item to be enabled.  If there are
/// multiple answers, a match on any of the answers suffices.  If different
/// behavior is desired (all must match, at least 2 must match, etc.), consider
/// using the enableWhenExpression extension.

    @JsonKey(name: 'answerDate') FhirDate? answerDate,
/// /// [_answerDate] Extensions for answerDate

    @JsonKey(name: '_answerDate') FhirElement? answerDateElement,
/// /// [answerDateTime] A value that the referenced question is tested using
/// the specified operator in order for the item to be enabled.  If there are
/// multiple answers, a match on any of the answers suffices.  If different
/// behavior is desired (all must match, at least 2 must match, etc.), consider
/// using the enableWhenExpression extension.

    @JsonKey(name: 'answerDateTime') FhirDateTime? answerDateTime,
/// /// [_answerDateTime] Extensions for answerDateTime

    @JsonKey(name: '_answerDateTime') FhirElement? answerDateTimeElement,
/// /// [answerTime] A value that the referenced question is tested using the
/// specified operator in order for the item to be enabled.  If there are
/// multiple answers, a match on any of the answers suffices.  If different
/// behavior is desired (all must match, at least 2 must match, etc.), consider
/// using the enableWhenExpression extension.

    @JsonKey(name: 'answerTime') FhirTime? answerTime,
/// /// [_answerTime] Extensions for answerTime

    @JsonKey(name: '_answerTime') FhirElement? answerTimeElement,
/// /// [answerString] A value that the referenced question is tested using the
/// specified operator in order for the item to be enabled.  If there are
/// multiple answers, a match on any of the answers suffices.  If different
/// behavior is desired (all must match, at least 2 must match, etc.), consider
/// using the enableWhenExpression extension.

    @JsonKey(name: 'answerString') String? answerString,
/// /// [_answerString] Extensions for answerString

    @JsonKey(name: '_answerString') FhirElement? answerStringElement,
/// /// [answerCoding] A value that the referenced question is tested using the
/// specified operator in order for the item to be enabled.  If there are
/// multiple answers, a match on any of the answers suffices.  If different
/// behavior is desired (all must match, at least 2 must match, etc.), consider
/// using the enableWhenExpression extension.

    @JsonKey(name: 'answerCoding') Coding? answerCoding,
/// /// [answerQuantity] A value that the referenced question is tested using
/// the specified operator in order for the item to be enabled.  If there are
/// multiple answers, a match on any of the answers suffices.  If different
/// behavior is desired (all must match, at least 2 must match, etc.), consider
/// using the enableWhenExpression extension.

    @JsonKey(name: 'answerQuantity') Quantity? answerQuantity,
/// /// [answerReference] A value that the referenced question is tested using
/// the specified operator in order for the item to be enabled.  If there are
/// multiple answers, a match on any of the answers suffices.  If different
/// behavior is desired (all must match, at least 2 must match, etc.), consider
/// using the enableWhenExpression extension.

    @JsonKey(name: 'answerReference') Reference? answerReference,
  }) = _$Questionnaire_EnableWhen;

  @override
  String get fhirType => 'Questionnaire_EnableWhen';

  factory Questionnaire_EnableWhen.fromJson(Map<String, dynamic> json) =>
      _$Questionnaire_EnableWhenFromJson(json);

  factory Questionnaire_EnableWhen.fromYaml(dynamic yaml) => yaml is String
      ? Questionnaire_EnableWhen.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Questionnaire_EnableWhen.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Questionnaire_EnableWhen cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Questionnaire_EnableWhen.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Questionnaire_EnableWhenFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
