/// /// [Questionnaire_Initial] A structured set of questions intended to guide
/// the collection of answers from end-users. Questionnaires provide detailed
/// control over order, presentation, phraseology and grouping to allow
/// coherent, consistent data collection.

@freezed
class Questionnaire_Initial with _$Questionnaire_Initial {
  const Questionnaire_Initial._();

  const factory Questionnaire_Initial({
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
/// /// [valueBoolean] The actual value to for an initial answer.

    @JsonKey(name: 'valueBoolean') FhirBoolean? valueBoolean,
/// /// [_valueBoolean] Extensions for valueBoolean

    @JsonKey(name: '_valueBoolean') FhirElement? valueBooleanElement,
/// /// [valueDecimal] The actual value to for an initial answer.

    @JsonKey(name: 'valueDecimal') FhirDecimal? valueDecimal,
/// /// [_valueDecimal] Extensions for valueDecimal

    @JsonKey(name: '_valueDecimal') FhirElement? valueDecimalElement,
/// /// [valueInteger] The actual value to for an initial answer.

    @JsonKey(name: 'valueInteger') FhirInteger? valueInteger,
/// /// [_valueInteger] Extensions for valueInteger

    @JsonKey(name: '_valueInteger') FhirElement? valueIntegerElement,
/// /// [valueDate] The actual value to for an initial answer.

    @JsonKey(name: 'valueDate') FhirDate? valueDate,
/// /// [_valueDate] Extensions for valueDate

    @JsonKey(name: '_valueDate') FhirElement? valueDateElement,
/// /// [valueDateTime] The actual value to for an initial answer.

    @JsonKey(name: 'valueDateTime') FhirDateTime? valueDateTime,
/// /// [_valueDateTime] Extensions for valueDateTime

    @JsonKey(name: '_valueDateTime') FhirElement? valueDateTimeElement,
/// /// [valueTime] The actual value to for an initial answer.

    @JsonKey(name: 'valueTime') FhirTime? valueTime,
/// /// [_valueTime] Extensions for valueTime

    @JsonKey(name: '_valueTime') FhirElement? valueTimeElement,
/// /// [valueString] The actual value to for an initial answer.

    @JsonKey(name: 'valueString') String? valueString,
/// /// [_valueString] Extensions for valueString

    @JsonKey(name: '_valueString') FhirElement? valueStringElement,
/// /// [valueUri] The actual value to for an initial answer.

    @JsonKey(name: 'valueUri') FhirUri? valueUri,
/// /// [_valueUri] Extensions for valueUri

    @JsonKey(name: '_valueUri') FhirElement? valueUriElement,
/// /// [valueAttachment] The actual value to for an initial answer.

    @JsonKey(name: 'valueAttachment') Attachment? valueAttachment,
/// /// [valueCoding] The actual value to for an initial answer.

    @JsonKey(name: 'valueCoding') Coding? valueCoding,
/// /// [valueQuantity] The actual value to for an initial answer.

    @JsonKey(name: 'valueQuantity') Quantity? valueQuantity,
/// /// [valueReference] The actual value to for an initial answer.

    @JsonKey(name: 'valueReference') Reference? valueReference,
  }) = _$Questionnaire_Initial;

  @override
  String get fhirType => 'Questionnaire_Initial';

  factory Questionnaire_Initial.fromJson(Map<String, dynamic> json) =>
      _$Questionnaire_InitialFromJson(json);

  factory Questionnaire_Initial.fromYaml(dynamic yaml) => yaml is String
      ? Questionnaire_Initial.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Questionnaire_Initial.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Questionnaire_Initial cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Questionnaire_Initial.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Questionnaire_InitialFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
