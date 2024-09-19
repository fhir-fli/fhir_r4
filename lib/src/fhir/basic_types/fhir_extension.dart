// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'fhir_extension.freezed.dart';
part 'fhir_extension.g.dart';

@freezed
class FhirExtension extends FhirBase with _$FhirExtension {
  FhirExtension._();

  factory FhirExtension({
    /// [id] Unique id for the element within a resource (for internal
    /// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of fhirExtensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of fhirExtensions. Though any implementer can define an
    /// fhirExtension, there is a set of requirements that SHALL be met as part of the
    /// definition of the fhirExtension.

    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [url] Source of the definition for the fhirExtension code - a logical name
    /// or a URL.

    @JsonKey(name: 'url') FhirUri? url,

    /// [_url] Extensions for url

    @JsonKey(name: '_url') PrimitiveElement? urlElement,

    /// [valueBase64Binary] Value of fhirExtension - must be one of a constrained
    /// set of the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueBase64Binary') FhirBase64Binary? valueBase64Binary,

    /// [_valueBase64Binary] Extensions for valueBase64Binary

    @JsonKey(name: '_valueBase64Binary')
    PrimitiveElement? valueBase64BinaryElement,

    /// [valueBoolean] Value of fhirExtension - must be one of a constrained set of
    /// the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueBoolean') FhirBoolean? valueBoolean,

    /// [_valueBoolean] Extensions for valueBoolean

    @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,

    /// [valueCanonical] Value of fhirExtension - must be one of a constrained set
    /// of the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueCanonical') FhirCanonical? valueCanonical,

    /// [_valueCanonical] Extensions for valueCanonical

    @JsonKey(name: '_valueCanonical') PrimitiveElement? valueCanonicalElement,

    /// [valueCode] Value of fhirExtension - must be one of a constrained set of
    /// the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueCode') FhirCode? valueCode,

    /// [_valueCode] Extensions for valueCode

    @JsonKey(name: '_valueCode') PrimitiveElement? valueCodeElement,

    /// [valueDate] Value of fhirExtension - must be one of a constrained set of
    /// the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueDate') FhirDate? valueDate,

    /// [_valueDate] Extensions for valueDate

    @JsonKey(name: '_valueDate') PrimitiveElement? valueDateElement,

    /// [valueDateTime] Value of fhirExtension - must be one of a constrained set
    /// of the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueDateTime') FhirDateTime? valueDateTime,

    /// [_valueDateTime] Extensions for valueDateTime

    @JsonKey(name: '_valueDateTime') PrimitiveElement? valueDateTimeElement,

    /// [valueDecimal] Value of fhirExtension - must be one of a constrained set of
    /// the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueDecimal') FhirDecimal? valueDecimal,

    /// [_valueDecimal] Extensions for valueDecimal

    @JsonKey(name: '_valueDecimal') PrimitiveElement? valueDecimalElement,

    /// [valueId] Value of fhirExtension - must be one of a constrained set of the
    /// data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueId') FhirId? valueId,

    /// [_valueId] Extensions for valueId

    @JsonKey(name: '_valueId') PrimitiveElement? valueIdElement,

    /// [valueInstant] Value of fhirExtension - must be one of a constrained set of
    /// the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueInstant') FhirInstant? valueInstant,

    /// [_valueInstant] Extensions for valueInstant

    @JsonKey(name: '_valueInstant') PrimitiveElement? valueInstantElement,

    /// [valueInteger] Value of fhirExtension - must be one of a constrained set of
    /// the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueInteger') FhirInteger? valueInteger,

    /// [_valueInteger] Extensions for valueInteger

    @JsonKey(name: '_valueInteger') PrimitiveElement? valueIntegerElement,

    /// [valueMarkdown] Value of fhirExtension - must be one of a constrained set
    /// of the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueMarkdown') FhirMarkdown? valueMarkdown,

    /// [_valueMarkdown] Extensions for valueMarkdown

    @JsonKey(name: '_valueMarkdown') PrimitiveElement? valueMarkdownElement,

    /// [valueOid] Value of fhirExtension - must be one of a constrained set of the
    /// data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueOid') FhirOid? valueOid,

    /// [_valueOid] Extensions for valueOid

    @JsonKey(name: '_valueOid') PrimitiveElement? valueOidElement,

    /// [valuePositiveInt] Value of fhirExtension - must be one of a constrained
    /// set of the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valuePositiveInt') FhirPositiveInt? valuePositiveInt,

    /// [_valuePositiveInt] Extensions for valuePositiveInt

    @JsonKey(name: '_valuePositiveInt')
    PrimitiveElement? valuePositiveIntElement,

    /// [valueString] Value of fhirExtension - must be one of a constrained set of
    /// the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueString') String? valueString,

    /// [_valueString] Extensions for valueString

    @JsonKey(name: '_valueString') PrimitiveElement? valueStringElement,

    /// [valueTime] Value of fhirExtension - must be one of a constrained set of
    /// the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueTime') FhirTime? valueTime,

    /// [_valueTime] Extensions for valueTime

    @JsonKey(name: '_valueTime') PrimitiveElement? valueTimeElement,

    /// [valueUnsignedInt] Value of fhirExtension - must be one of a constrained
    /// set of the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueUnsignedInt') FhirUnsignedInt? valueUnsignedInt,

    /// [_valueUnsignedInt] Extensions for valueUnsignedInt

    @JsonKey(name: '_valueUnsignedInt')
    PrimitiveElement? valueUnsignedIntElement,

    /// [valueUri] Value of fhirExtension - must be one of a constrained set of the
    /// data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueUri') FhirUri? valueUri,

    /// [_valueUri] Extensions for valueUri

    @JsonKey(name: '_valueUri') PrimitiveElement? valueUriElement,

    /// [valueUrl] Value of fhirExtension - must be one of a constrained set of the
    /// data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueUrl') FhirUrl? valueUrl,

    /// [_valueUrl] Extensions for valueUrl

    @JsonKey(name: '_valueUrl') PrimitiveElement? valueUrlElement,

    /// [valueUuid] Value of fhirExtension - must be one of a constrained set of
    /// the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueUuid') FhirUuid? valueUuid,

    /// [_valueUuid] Extensions for valueUuid

    @JsonKey(name: '_valueUuid') PrimitiveElement? valueUuidElement,

    /// [valueAddress] Value of fhirExtension - must be one of a constrained set of
    /// the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueAddress') Address? valueAddress,

    /// [valueAge] Value of fhirExtension - must be one of a constrained set of the
    /// data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueAge') Age? valueAge,

    /// [valueAnnotation] Value of fhirExtension - must be one of a constrained set
    /// of the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueAnnotation') Annotation? valueAnnotation,

    /// [valueAttachment] Value of fhirExtension - must be one of a constrained set
    /// of the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueAttachment') Attachment? valueAttachment,

    /// [valueCodeableConcept] Value of fhirExtension - must be one of a
    /// constrained set of the data types (see [Extensibility](extensibility.html)
    /// for a list).

    @JsonKey(name: 'valueCodeableConcept')
    CodeableConcept? valueCodeableConcept,

    /// [valueCodeableReference] Value of fhirExtension - must be one of a
    /// constrained set of the data types (see [Extensibility](extensibility.html)
    /// for a list).

    @JsonKey(name: 'valueCodeableReference')
    CodeableReference? valueCodeableReference,

    /// [valueCoding] Value of fhirExtension - must be one of a constrained set of
    /// the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueCoding') Coding? valueCoding,

    /// [valueContactPoint] Value of fhirExtension - must be one of a constrained
    /// set of the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueContactPoint') ContactPoint? valueContactPoint,

    /// [valueCount] Value of fhirExtension - must be one of a constrained set of
    /// the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueCount') Count? valueCount,

    /// [valueDistance] Value of fhirExtension - must be one of a constrained set
    /// of the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueDistance') Distance? valueDistance,

    /// [valueDuration] Value of fhirExtension - must be one of a constrained set
    /// of the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueDuration') FhirDuration? valueDuration,

    /// [valueHumanName] Value of fhirExtension - must be one of a constrained set
    /// of the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueHumanName') HumanName? valueHumanName,

    /// [valueIdentifier] Value of fhirExtension - must be one of a constrained set
    /// of the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueIdentifier') Identifier? valueIdentifier,

    /// [valueMoney] Value of fhirExtension - must be one of a constrained set of
    /// the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueMoney') Money? valueMoney,

    /// [valuePeriod] Value of fhirExtension - must be one of a constrained set of
    /// the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valuePeriod') Period? valuePeriod,

    /// [valueQuantity] Value of fhirExtension - must be one of a constrained set
    /// of the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueQuantity') Quantity? valueQuantity,

    /// [valueRange] Value of fhirExtension - must be one of a constrained set of
    /// the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueRange') Range? valueRange,

    /// [valueRatio] Value of fhirExtension - must be one of a constrained set of
    /// the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueRatio') Ratio? valueRatio,

    /// [valueRatioRange] Value of fhirExtension - must be one of a constrained set
    /// of the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueRatioRange') RatioRange? valueRatioRange,

    /// [valueReference] Value of fhirExtension - must be one of a constrained set
    /// of the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueReference') Reference? valueReference,

    /// [valueSampledData] Value of fhirExtension - must be one of a constrained
    /// set of the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueSampledData') SampledData? valueSampledData,

    /// [valueSignature] Value of fhirExtension - must be one of a constrained set
    /// of the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueSignature') Signature? valueSignature,

    /// [valueTiming] Value of fhirExtension - must be one of a constrained set of
    /// the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueTiming') Timing? valueTiming,

    /// [valueContactDetail] Value of fhirExtension - must be one of a constrained
    /// set of the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueContactDetail') ContactDetail? valueContactDetail,

    /// [valueContributor] Value of fhirExtension - must be one of a constrained
    /// set of the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueContributor') Contributor? valueContributor,

    /// [valueDataRequirement] Value of fhirExtension - must be one of a
    /// constrained set of the data types (see [Extensibility](extensibility.html)
    /// for a list).

    @JsonKey(name: 'valueDataRequirement')
    DataRequirement? valueDataRequirement,

    /// [valueExpression] Value of fhirExtension - must be one of a constrained set
    /// of the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueExpression') FhirExpression? valueExpression,

    /// [valueParameterDefinition] Value of fhirExtension - must be one of a
    /// constrained set of the data types (see [Extensibility](extensibility.html)
    /// for a list).

    @JsonKey(name: 'valueParameterDefinition')
    ParameterDefinition? valueParameterDefinition,

    /// [valueRelatedArtifact] Value of fhirExtension - must be one of a
    /// constrained set of the data types (see [Extensibility](extensibility.html)
    /// for a list).

    @JsonKey(name: 'valueRelatedArtifact')
    RelatedArtifact? valueRelatedArtifact,

    /// [valueTriggerDefinition] Value of fhirExtension - must be one of a
    /// constrained set of the data types (see [Extensibility](extensibility.html)
    /// for a list).

    @JsonKey(name: 'valueTriggerDefinition')
    TriggerDefinition? valueTriggerDefinition,

    /// [valueUsageContext] Value of fhirExtension - must be one of a constrained
    /// set of the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueUsageContext') UsageContext? valueUsageContext,

    /// [valueDosage] Value of fhirExtension - must be one of a constrained set of
    /// the data types (see [Extensibility](extensibility.html) for a list).

    @JsonKey(name: 'valueDosage') Dosage? valueDosage,
  }) = _FhirExtension;

  @override
  String get fhirType => 'Extension';

  factory FhirExtension.fromJson(Map<String, dynamic> json) =>
      _$FhirExtensionFromJson(json);

  factory FhirExtension.fromYaml(dynamic yaml) => yaml is String
      ? FhirExtension.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? FhirExtension.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
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
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
