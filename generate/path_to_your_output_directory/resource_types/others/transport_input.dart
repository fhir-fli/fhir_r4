/// /// [Transport_Input] Record of transport of item.

@freezed
class Transport_Input with _$Transport_Input {
  const Transport_Input._();

  const factory Transport_Input({
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
/// /// [type] A code or description indicating how the input is intended to be
/// used as part of the transport execution.

    @JsonKey(name: 'type') CodeableConcept? type,
/// /// [valueBase64Binary] The value of the input parameter as a basic type.

    @JsonKey(name: 'valueBase64Binary') FhirBase64Binary? valueBase64Binary,
/// /// [_valueBase64Binary] Extensions for valueBase64Binary

    @JsonKey(name: '_valueBase64Binary') FhirElement? valueBase64BinaryElement,
/// /// [valueBoolean] The value of the input parameter as a basic type.

    @JsonKey(name: 'valueBoolean') FhirBoolean? valueBoolean,
/// /// [_valueBoolean] Extensions for valueBoolean

    @JsonKey(name: '_valueBoolean') FhirElement? valueBooleanElement,
/// /// [valueCanonical] The value of the input parameter as a basic type.

    @JsonKey(name: 'valueCanonical') FhirCanonical? valueCanonical,
/// /// [_valueCanonical] Extensions for valueCanonical

    @JsonKey(name: '_valueCanonical') FhirElement? valueCanonicalElement,
/// /// [valueCode] The value of the input parameter as a basic type.

    @JsonKey(name: 'valueCode') FhirCode? valueCode,
/// /// [_valueCode] Extensions for valueCode

    @JsonKey(name: '_valueCode') FhirElement? valueCodeElement,
/// /// [valueDate] The value of the input parameter as a basic type.

    @JsonKey(name: 'valueDate') FhirDate? valueDate,
/// /// [_valueDate] Extensions for valueDate

    @JsonKey(name: '_valueDate') FhirElement? valueDateElement,
/// /// [valueDateTime] The value of the input parameter as a basic type.

    @JsonKey(name: 'valueDateTime') FhirDateTime? valueDateTime,
/// /// [_valueDateTime] Extensions for valueDateTime

    @JsonKey(name: '_valueDateTime') FhirElement? valueDateTimeElement,
/// /// [valueDecimal] The value of the input parameter as a basic type.

    @JsonKey(name: 'valueDecimal') FhirDecimal? valueDecimal,
/// /// [_valueDecimal] Extensions for valueDecimal

    @JsonKey(name: '_valueDecimal') FhirElement? valueDecimalElement,
/// /// [valueId] The value of the input parameter as a basic type.

    @JsonKey(name: 'valueId') FhirId? valueId,
/// /// [_valueId] Extensions for valueId

    @JsonKey(name: '_valueId') FhirElement? valueIdElement,
/// /// [valueInstant] The value of the input parameter as a basic type.

    @JsonKey(name: 'valueInstant') FhirInstant? valueInstant,
/// /// [_valueInstant] Extensions for valueInstant

    @JsonKey(name: '_valueInstant') FhirElement? valueInstantElement,
/// /// [valueInteger] The value of the input parameter as a basic type.

    @JsonKey(name: 'valueInteger') FhirInteger? valueInteger,
/// /// [_valueInteger] Extensions for valueInteger

    @JsonKey(name: '_valueInteger') FhirElement? valueIntegerElement,
/// /// [valueInteger64] The value of the input parameter as a basic type.

    @JsonKey(name: 'valueInteger64') FhirInteger64? valueInteger64,
/// /// [_valueInteger64] Extensions for valueInteger64

    @JsonKey(name: '_valueInteger64') FhirElement? valueInteger64Element,
/// /// [valueMarkdown] The value of the input parameter as a basic type.

    @JsonKey(name: 'valueMarkdown') FhirMarkdown? valueMarkdown,
/// /// [_valueMarkdown] Extensions for valueMarkdown

    @JsonKey(name: '_valueMarkdown') FhirElement? valueMarkdownElement,
/// /// [valueOid] The value of the input parameter as a basic type.

    @JsonKey(name: 'valueOid') FhirOid? valueOid,
/// /// [_valueOid] Extensions for valueOid

    @JsonKey(name: '_valueOid') FhirElement? valueOidElement,
/// /// [valuePositiveInt] The value of the input parameter as a basic type.

    @JsonKey(name: 'valuePositiveInt') FhirPositiveInt? valuePositiveInt,
/// /// [_valuePositiveInt] Extensions for valuePositiveInt

    @JsonKey(name: '_valuePositiveInt') FhirElement? valuePositiveIntElement,
/// /// [valueString] The value of the input parameter as a basic type.

    @JsonKey(name: 'valueString') String? valueString,
/// /// [_valueString] Extensions for valueString

    @JsonKey(name: '_valueString') FhirElement? valueStringElement,
/// /// [valueTime] The value of the input parameter as a basic type.

    @JsonKey(name: 'valueTime') FhirTime? valueTime,
/// /// [_valueTime] Extensions for valueTime

    @JsonKey(name: '_valueTime') FhirElement? valueTimeElement,
/// /// [valueUnsignedInt] The value of the input parameter as a basic type.

    @JsonKey(name: 'valueUnsignedInt') FhirUnsignedInt? valueUnsignedInt,
/// /// [_valueUnsignedInt] Extensions for valueUnsignedInt

    @JsonKey(name: '_valueUnsignedInt') FhirElement? valueUnsignedIntElement,
/// /// [valueUri] The value of the input parameter as a basic type.

    @JsonKey(name: 'valueUri') FhirUri? valueUri,
/// /// [_valueUri] Extensions for valueUri

    @JsonKey(name: '_valueUri') FhirElement? valueUriElement,
/// /// [valueUrl] The value of the input parameter as a basic type.

    @JsonKey(name: 'valueUrl') FhirUrl? valueUrl,
/// /// [_valueUrl] Extensions for valueUrl

    @JsonKey(name: '_valueUrl') FhirElement? valueUrlElement,
/// /// [valueUuid] The value of the input parameter as a basic type.

    @JsonKey(name: 'valueUuid') FhirUuid? valueUuid,
/// /// [_valueUuid] Extensions for valueUuid

    @JsonKey(name: '_valueUuid') FhirElement? valueUuidElement,
/// /// [valueAddress] The value of the input parameter as a basic type.

    @JsonKey(name: 'valueAddress') Address? valueAddress,
/// /// [valueAge] The value of the input parameter as a basic type.

    @JsonKey(name: 'valueAge') Age? valueAge,
/// /// [valueAnnotation] The value of the input parameter as a basic type.

    @JsonKey(name: 'valueAnnotation') Annotation? valueAnnotation,
/// /// [valueAttachment] The value of the input parameter as a basic type.

    @JsonKey(name: 'valueAttachment') Attachment? valueAttachment,
/// /// [valueCodeableConcept] The value of the input parameter as a basic
/// type.

    @JsonKey(name: 'valueCodeableConcept') CodeableConcept? valueCodeableConcept,
/// /// [valueCodeableReference] The value of the input parameter as a basic
/// type.

    @JsonKey(name: 'valueCodeableReference') CodeableReference? valueCodeableReference,
/// /// [valueCoding] The value of the input parameter as a basic type.

    @JsonKey(name: 'valueCoding') Coding? valueCoding,
/// /// [valueContactPoint] The value of the input parameter as a basic type.

    @JsonKey(name: 'valueContactPoint') ContactPoint? valueContactPoint,
/// /// [valueCount] The value of the input parameter as a basic type.

    @JsonKey(name: 'valueCount') Count? valueCount,
/// /// [valueDistance] The value of the input parameter as a basic type.

    @JsonKey(name: 'valueDistance') Distance? valueDistance,
/// /// [valueDuration] The value of the input parameter as a basic type.

    @JsonKey(name: 'valueDuration') FhirDuration? valueDuration,
/// /// [valueHumanName] The value of the input parameter as a basic type.

    @JsonKey(name: 'valueHumanName') HumanName? valueHumanName,
/// /// [valueIdentifier] The value of the input parameter as a basic type.

    @JsonKey(name: 'valueIdentifier') Identifier? valueIdentifier,
/// /// [valueMoney] The value of the input parameter as a basic type.

    @JsonKey(name: 'valueMoney') Money? valueMoney,
/// /// [valuePeriod] The value of the input parameter as a basic type.

    @JsonKey(name: 'valuePeriod') Period? valuePeriod,
/// /// [valueQuantity] The value of the input parameter as a basic type.

    @JsonKey(name: 'valueQuantity') Quantity? valueQuantity,
/// /// [valueRange] The value of the input parameter as a basic type.

    @JsonKey(name: 'valueRange') Range? valueRange,
/// /// [valueRatio] The value of the input parameter as a basic type.

    @JsonKey(name: 'valueRatio') Ratio? valueRatio,
/// /// [valueRatioRange] The value of the input parameter as a basic type.

    @JsonKey(name: 'valueRatioRange') RatioRange? valueRatioRange,
/// /// [valueReference] The value of the input parameter as a basic type.

    @JsonKey(name: 'valueReference') Reference? valueReference,
/// /// [valueSampledData] The value of the input parameter as a basic type.

    @JsonKey(name: 'valueSampledData') SampledData? valueSampledData,
/// /// [valueSignature] The value of the input parameter as a basic type.

    @JsonKey(name: 'valueSignature') Signature? valueSignature,
/// /// [valueTiming] The value of the input parameter as a basic type.

    @JsonKey(name: 'valueTiming') Timing? valueTiming,
/// /// [valueContactDetail] The value of the input parameter as a basic type.

    @JsonKey(name: 'valueContactDetail') ContactDetail? valueContactDetail,
/// /// [valueDataRequirement] The value of the input parameter as a basic
/// type.

    @JsonKey(name: 'valueDataRequirement') DataRequirement? valueDataRequirement,
/// /// [valueExpression] The value of the input parameter as a basic type.

    @JsonKey(name: 'valueExpression') FhirExpression? valueExpression,
/// /// [valueParameterDefinition] The value of the input parameter as a basic
/// type.

    @JsonKey(name: 'valueParameterDefinition') ParameterDefinition? valueParameterDefinition,
/// /// [valueRelatedArtifact] The value of the input parameter as a basic
/// type.

    @JsonKey(name: 'valueRelatedArtifact') RelatedArtifact? valueRelatedArtifact,
/// /// [valueTriggerDefinition] The value of the input parameter as a basic
/// type.

    @JsonKey(name: 'valueTriggerDefinition') TriggerDefinition? valueTriggerDefinition,
/// /// [valueUsageContext] The value of the input parameter as a basic type.

    @JsonKey(name: 'valueUsageContext') UsageContext? valueUsageContext,
/// /// [valueAvailability] The value of the input parameter as a basic type.

    @JsonKey(name: 'valueAvailability') Availability? valueAvailability,
/// /// [valueExtendedContactDetail] The value of the input parameter as a
/// basic type.

    @JsonKey(name: 'valueExtendedContactDetail') ExtendedContactDetail? valueExtendedContactDetail,
/// /// [valueDosage] The value of the input parameter as a basic type.

    @JsonKey(name: 'valueDosage') Dosage? valueDosage,
/// /// [valueMeta] The value of the input parameter as a basic type.

    @JsonKey(name: 'valueMeta') FhirMeta? valueMeta,
  }) = _$Transport_Input;

  @override
  String get fhirType => 'Transport_Input';

  factory Transport_Input.fromJson(Map<String, dynamic> json) =>
      _$Transport_InputFromJson(json);

  factory Transport_Input.fromYaml(dynamic yaml) => yaml is String
      ? Transport_Input.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Transport_Input.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Transport_Input cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Transport_Input.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Transport_InputFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
