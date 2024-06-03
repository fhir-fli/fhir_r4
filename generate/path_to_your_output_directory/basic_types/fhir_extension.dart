import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// 
@freezed
class FhirExtension with _$FhirExtension {
  const FhirExtension._();

  const factory FhirExtension({
/// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [url] Source of the definition for the extension code - a logical name
/// or a URL.

    @JsonKey(name: 'url') FhirUri? url,
/// [_url] Extensions for url

    @JsonKey(name: '_url') PrimitiveElement? urlElement,
/// [valueBase64Binary] Value of extension - must be one of a constrained
/// set of the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueBase64Binary') FhirBase64Binary? valueBase64Binary,
/// [_valueBase64Binary] Extensions for valueBase64Binary

    @JsonKey(name: '_valueBase64Binary') PrimitiveElement? valueBase64BinaryElement,
/// [valueBoolean] Value of extension - must be one of a constrained set of
/// the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueBoolean') FhirBoolean? valueBoolean,
/// [_valueBoolean] Extensions for valueBoolean

    @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,
/// [valueCanonical] Value of extension - must be one of a constrained set
/// of the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueCanonical') FhirCanonical? valueCanonical,
/// [_valueCanonical] Extensions for valueCanonical

    @JsonKey(name: '_valueCanonical') PrimitiveElement? valueCanonicalElement,
/// [valueCode] Value of extension - must be one of a constrained set of
/// the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueCode') FhirCode? valueCode,
/// [_valueCode] Extensions for valueCode

    @JsonKey(name: '_valueCode') PrimitiveElement? valueCodeElement,
/// [valueDate] Value of extension - must be one of a constrained set of
/// the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueDate') FhirDate? valueDate,
/// [_valueDate] Extensions for valueDate

    @JsonKey(name: '_valueDate') PrimitiveElement? valueDateElement,
/// [valueDateTime] Value of extension - must be one of a constrained set
/// of the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueDateTime') FhirDateTime? valueDateTime,
/// [_valueDateTime] Extensions for valueDateTime

    @JsonKey(name: '_valueDateTime') PrimitiveElement? valueDateTimeElement,
/// [valueDecimal] Value of extension - must be one of a constrained set of
/// the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueDecimal') FhirDecimal? valueDecimal,
/// [_valueDecimal] Extensions for valueDecimal

    @JsonKey(name: '_valueDecimal') PrimitiveElement? valueDecimalElement,
/// [valueId] Value of extension - must be one of a constrained set of the
/// data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueId') FhirId? valueId,
/// [_valueId] Extensions for valueId

    @JsonKey(name: '_valueId') PrimitiveElement? valueIdElement,
/// [valueInstant] Value of extension - must be one of a constrained set of
/// the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueInstant') FhirInstant? valueInstant,
/// [_valueInstant] Extensions for valueInstant

    @JsonKey(name: '_valueInstant') PrimitiveElement? valueInstantElement,
/// [valueInteger] Value of extension - must be one of a constrained set of
/// the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueInteger') FhirInteger? valueInteger,
/// [_valueInteger] Extensions for valueInteger

    @JsonKey(name: '_valueInteger') PrimitiveElement? valueIntegerElement,
/// [valueInteger64] Value of extension - must be one of a constrained set
/// of the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueInteger64') FhirInteger64? valueInteger64,
/// [_valueInteger64] Extensions for valueInteger64

    @JsonKey(name: '_valueInteger64') PrimitiveElement? valueInteger64Element,
/// [valueMarkdown] Value of extension - must be one of a constrained set
/// of the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueMarkdown') FhirMarkdown? valueMarkdown,
/// [_valueMarkdown] Extensions for valueMarkdown

    @JsonKey(name: '_valueMarkdown') PrimitiveElement? valueMarkdownElement,
/// [valueOid] Value of extension - must be one of a constrained set of the
/// data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueOid') FhirOid? valueOid,
/// [_valueOid] Extensions for valueOid

    @JsonKey(name: '_valueOid') PrimitiveElement? valueOidElement,
/// [valuePositiveInt] Value of extension - must be one of a constrained
/// set of the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valuePositiveInt') FhirPositiveInt? valuePositiveInt,
/// [_valuePositiveInt] Extensions for valuePositiveInt

    @JsonKey(name: '_valuePositiveInt') PrimitiveElement? valuePositiveIntElement,
/// [valueString] Value of extension - must be one of a constrained set of
/// the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueString') String? valueString,
/// [_valueString] Extensions for valueString

    @JsonKey(name: '_valueString') PrimitiveElement? valueStringElement,
/// [valueTime] Value of extension - must be one of a constrained set of
/// the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueTime') FhirTime? valueTime,
/// [_valueTime] Extensions for valueTime

    @JsonKey(name: '_valueTime') PrimitiveElement? valueTimeElement,
/// [valueUnsignedInt] Value of extension - must be one of a constrained
/// set of the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueUnsignedInt') FhirUnsignedInt? valueUnsignedInt,
/// [_valueUnsignedInt] Extensions for valueUnsignedInt

    @JsonKey(name: '_valueUnsignedInt') PrimitiveElement? valueUnsignedIntElement,
/// [valueUri] Value of extension - must be one of a constrained set of the
/// data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueUri') FhirUri? valueUri,
/// [_valueUri] Extensions for valueUri

    @JsonKey(name: '_valueUri') PrimitiveElement? valueUriElement,
/// [valueUrl] Value of extension - must be one of a constrained set of the
/// data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueUrl') FhirUrl? valueUrl,
/// [_valueUrl] Extensions for valueUrl

    @JsonKey(name: '_valueUrl') PrimitiveElement? valueUrlElement,
/// [valueUuid] Value of extension - must be one of a constrained set of
/// the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueUuid') FhirUuid? valueUuid,
/// [_valueUuid] Extensions for valueUuid

    @JsonKey(name: '_valueUuid') PrimitiveElement? valueUuidElement,
/// [valueAddress] Value of extension - must be one of a constrained set of
/// the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueAddress') Address? valueAddress,
/// [valueAge] Value of extension - must be one of a constrained set of the
/// data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueAge') Age? valueAge,
/// [valueAnnotation] Value of extension - must be one of a constrained set
/// of the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueAnnotation') Annotation? valueAnnotation,
/// [valueAttachment] Value of extension - must be one of a constrained set
/// of the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueAttachment') Attachment? valueAttachment,
/// [valueCodeableConcept] Value of extension - must be one of a
/// constrained set of the data types (see [Extensibility](extensibility.html)
/// for a list).

    @JsonKey(name: 'valueCodeableConcept') CodeableConcept? valueCodeableConcept,
/// [valueCodeableReference] Value of extension - must be one of a
/// constrained set of the data types (see [Extensibility](extensibility.html)
/// for a list).

    @JsonKey(name: 'valueCodeableReference') CodeableReference? valueCodeableReference,
/// [valueCoding] Value of extension - must be one of a constrained set of
/// the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueCoding') Coding? valueCoding,
/// [valueContactPoint] Value of extension - must be one of a constrained
/// set of the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueContactPoint') ContactPoint? valueContactPoint,
/// [valueCount] Value of extension - must be one of a constrained set of
/// the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueCount') Count? valueCount,
/// [valueDistance] Value of extension - must be one of a constrained set
/// of the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueDistance') Distance? valueDistance,
/// [valueDuration] Value of extension - must be one of a constrained set
/// of the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueDuration') FhirDuration? valueDuration,
/// [valueHumanName] Value of extension - must be one of a constrained set
/// of the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueHumanName') HumanName? valueHumanName,
/// [valueIdentifier] Value of extension - must be one of a constrained set
/// of the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueIdentifier') Identifier? valueIdentifier,
/// [valueMoney] Value of extension - must be one of a constrained set of
/// the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueMoney') Money? valueMoney,
/// [valuePeriod] Value of extension - must be one of a constrained set of
/// the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valuePeriod') Period? valuePeriod,
/// [valueQuantity] Value of extension - must be one of a constrained set
/// of the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueQuantity') Quantity? valueQuantity,
/// [valueRange] Value of extension - must be one of a constrained set of
/// the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueRange') Range? valueRange,
/// [valueRatio] Value of extension - must be one of a constrained set of
/// the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueRatio') Ratio? valueRatio,
/// [valueRatioRange] Value of extension - must be one of a constrained set
/// of the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueRatioRange') RatioRange? valueRatioRange,
/// [valueReference] Value of extension - must be one of a constrained set
/// of the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueReference') Reference? valueReference,
/// [valueSampledData] Value of extension - must be one of a constrained
/// set of the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueSampledData') SampledData? valueSampledData,
/// [valueSignature] Value of extension - must be one of a constrained set
/// of the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueSignature') Signature? valueSignature,
/// [valueTiming] Value of extension - must be one of a constrained set of
/// the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueTiming') Timing? valueTiming,
/// [valueContactDetail] Value of extension - must be one of a constrained
/// set of the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueContactDetail') ContactDetail? valueContactDetail,
/// [valueDataRequirement] Value of extension - must be one of a
/// constrained set of the data types (see [Extensibility](extensibility.html)
/// for a list).

    @JsonKey(name: 'valueDataRequirement') DataRequirement? valueDataRequirement,
/// [valueExpression] Value of extension - must be one of a constrained set
/// of the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueExpression') FhirExpression? valueExpression,
/// [valueParameterDefinition] Value of extension - must be one of a
/// constrained set of the data types (see [Extensibility](extensibility.html)
/// for a list).

    @JsonKey(name: 'valueParameterDefinition') ParameterDefinition? valueParameterDefinition,
/// [valueRelatedArtifact] Value of extension - must be one of a
/// constrained set of the data types (see [Extensibility](extensibility.html)
/// for a list).

    @JsonKey(name: 'valueRelatedArtifact') RelatedArtifact? valueRelatedArtifact,
/// [valueTriggerDefinition] Value of extension - must be one of a
/// constrained set of the data types (see [Extensibility](extensibility.html)
/// for a list).

    @JsonKey(name: 'valueTriggerDefinition') TriggerDefinition? valueTriggerDefinition,
/// [valueUsageContext] Value of extension - must be one of a constrained
/// set of the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueUsageContext') UsageContext? valueUsageContext,
/// [valueAvailability] Value of extension - must be one of a constrained
/// set of the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueAvailability') Availability? valueAvailability,
/// [valueExtendedContactDetail] Value of extension - must be one of a
/// constrained set of the data types (see [Extensibility](extensibility.html)
/// for a list).

    @JsonKey(name: 'valueExtendedContactDetail') ExtendedContactDetail? valueExtendedContactDetail,
/// [valueDosage] Value of extension - must be one of a constrained set of
/// the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueDosage') Dosage? valueDosage,
/// [valueMeta] Value of extension - must be one of a constrained set of
/// the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueMeta') FhirMeta? valueMeta,
  }) = _$FhirExtension;

  @override
  String get fhirType => 'FhirExtension';

  factory FhirExtension.fromJson(Map<String, dynamic> json) =>
      _$FhirExtensionFromJson(json);

  factory FhirExtension.fromYaml(dynamic yaml) => yaml is String
      ? FhirExtension.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? FhirExtension.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'FhirExtension cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory FhirExtension.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$FhirExtensionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
