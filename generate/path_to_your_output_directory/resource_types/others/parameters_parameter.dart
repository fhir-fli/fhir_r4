import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Parameters_Parameter] This resource is used to pass information into
/// and back from an operation (whether invoked directly from REST or within a
/// messaging environment).  It is not persisted or allowed to be referenced by
/// other resources.

@freezed
class Parameters_Parameter with _$Parameters_Parameter {
  const Parameters_Parameter._();

  const factory Parameters_Parameter({
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
/// [modifierExtension] May be used to represent additional information
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
/// [name] The name of the parameter (reference to the operation
/// definition).

    @JsonKey(name: 'name') String? name,
/// [_name] Extensions for name

    @JsonKey(name: '_name') PrimitiveElement? nameElement,
/// [valueBase64Binary] Conveys the content if the parameter is a data
/// type.

    @JsonKey(name: 'valueBase64Binary') FhirBase64Binary? valueBase64Binary,
/// [_valueBase64Binary] Extensions for valueBase64Binary

    @JsonKey(name: '_valueBase64Binary') PrimitiveElement? valueBase64BinaryElement,
/// [valueBoolean] Conveys the content if the parameter is a data type.

    @JsonKey(name: 'valueBoolean') FhirBoolean? valueBoolean,
/// [_valueBoolean] Extensions for valueBoolean

    @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,
/// [valueCanonical] Conveys the content if the parameter is a data type.

    @JsonKey(name: 'valueCanonical') FhirCanonical? valueCanonical,
/// [_valueCanonical] Extensions for valueCanonical

    @JsonKey(name: '_valueCanonical') PrimitiveElement? valueCanonicalElement,
/// [valueCode] Conveys the content if the parameter is a data type.

    @JsonKey(name: 'valueCode') FhirCode? valueCode,
/// [_valueCode] Extensions for valueCode

    @JsonKey(name: '_valueCode') PrimitiveElement? valueCodeElement,
/// [valueDate] Conveys the content if the parameter is a data type.

    @JsonKey(name: 'valueDate') FhirDate? valueDate,
/// [_valueDate] Extensions for valueDate

    @JsonKey(name: '_valueDate') PrimitiveElement? valueDateElement,
/// [valueDateTime] Conveys the content if the parameter is a data type.

    @JsonKey(name: 'valueDateTime') FhirDateTime? valueDateTime,
/// [_valueDateTime] Extensions for valueDateTime

    @JsonKey(name: '_valueDateTime') PrimitiveElement? valueDateTimeElement,
/// [valueDecimal] Conveys the content if the parameter is a data type.

    @JsonKey(name: 'valueDecimal') FhirDecimal? valueDecimal,
/// [_valueDecimal] Extensions for valueDecimal

    @JsonKey(name: '_valueDecimal') PrimitiveElement? valueDecimalElement,
/// [valueId] Conveys the content if the parameter is a data type.

    @JsonKey(name: 'valueId') FhirId? valueId,
/// [_valueId] Extensions for valueId

    @JsonKey(name: '_valueId') PrimitiveElement? valueIdElement,
/// [valueInstant] Conveys the content if the parameter is a data type.

    @JsonKey(name: 'valueInstant') FhirInstant? valueInstant,
/// [_valueInstant] Extensions for valueInstant

    @JsonKey(name: '_valueInstant') PrimitiveElement? valueInstantElement,
/// [valueInteger] Conveys the content if the parameter is a data type.

    @JsonKey(name: 'valueInteger') FhirInteger? valueInteger,
/// [_valueInteger] Extensions for valueInteger

    @JsonKey(name: '_valueInteger') PrimitiveElement? valueIntegerElement,
/// [valueInteger64] Conveys the content if the parameter is a data type.

    @JsonKey(name: 'valueInteger64') FhirInteger64? valueInteger64,
/// [_valueInteger64] Extensions for valueInteger64

    @JsonKey(name: '_valueInteger64') PrimitiveElement? valueInteger64Element,
/// [valueMarkdown] Conveys the content if the parameter is a data type.

    @JsonKey(name: 'valueMarkdown') FhirMarkdown? valueMarkdown,
/// [_valueMarkdown] Extensions for valueMarkdown

    @JsonKey(name: '_valueMarkdown') PrimitiveElement? valueMarkdownElement,
/// [valueOid] Conveys the content if the parameter is a data type.

    @JsonKey(name: 'valueOid') FhirOid? valueOid,
/// [_valueOid] Extensions for valueOid

    @JsonKey(name: '_valueOid') PrimitiveElement? valueOidElement,
/// [valuePositiveInt] Conveys the content if the parameter is a data type.

    @JsonKey(name: 'valuePositiveInt') FhirPositiveInt? valuePositiveInt,
/// [_valuePositiveInt] Extensions for valuePositiveInt

    @JsonKey(name: '_valuePositiveInt') PrimitiveElement? valuePositiveIntElement,
/// [valueString] Conveys the content if the parameter is a data type.

    @JsonKey(name: 'valueString') String? valueString,
/// [_valueString] Extensions for valueString

    @JsonKey(name: '_valueString') PrimitiveElement? valueStringElement,
/// [valueTime] Conveys the content if the parameter is a data type.

    @JsonKey(name: 'valueTime') FhirTime? valueTime,
/// [_valueTime] Extensions for valueTime

    @JsonKey(name: '_valueTime') PrimitiveElement? valueTimeElement,
/// [valueUnsignedInt] Conveys the content if the parameter is a data type.

    @JsonKey(name: 'valueUnsignedInt') FhirUnsignedInt? valueUnsignedInt,
/// [_valueUnsignedInt] Extensions for valueUnsignedInt

    @JsonKey(name: '_valueUnsignedInt') PrimitiveElement? valueUnsignedIntElement,
/// [valueUri] Conveys the content if the parameter is a data type.

    @JsonKey(name: 'valueUri') FhirUri? valueUri,
/// [_valueUri] Extensions for valueUri

    @JsonKey(name: '_valueUri') PrimitiveElement? valueUriElement,
/// [valueUrl] Conveys the content if the parameter is a data type.

    @JsonKey(name: 'valueUrl') FhirUrl? valueUrl,
/// [_valueUrl] Extensions for valueUrl

    @JsonKey(name: '_valueUrl') PrimitiveElement? valueUrlElement,
/// [valueUuid] Conveys the content if the parameter is a data type.

    @JsonKey(name: 'valueUuid') FhirUuid? valueUuid,
/// [_valueUuid] Extensions for valueUuid

    @JsonKey(name: '_valueUuid') PrimitiveElement? valueUuidElement,
/// [valueAddress] Conveys the content if the parameter is a data type.

    @JsonKey(name: 'valueAddress') Address? valueAddress,
/// [valueAge] Conveys the content if the parameter is a data type.

    @JsonKey(name: 'valueAge') Age? valueAge,
/// [valueAnnotation] Conveys the content if the parameter is a data type.

    @JsonKey(name: 'valueAnnotation') Annotation? valueAnnotation,
/// [valueAttachment] Conveys the content if the parameter is a data type.

    @JsonKey(name: 'valueAttachment') Attachment? valueAttachment,
/// [valueCodeableConcept] Conveys the content if the parameter is a data
/// type.

    @JsonKey(name: 'valueCodeableConcept') CodeableConcept? valueCodeableConcept,
/// [valueCodeableReference] Conveys the content if the parameter is a data
/// type.

    @JsonKey(name: 'valueCodeableReference') CodeableReference? valueCodeableReference,
/// [valueCoding] Conveys the content if the parameter is a data type.

    @JsonKey(name: 'valueCoding') Coding? valueCoding,
/// [valueContactPoint] Conveys the content if the parameter is a data
/// type.

    @JsonKey(name: 'valueContactPoint') ContactPoint? valueContactPoint,
/// [valueCount] Conveys the content if the parameter is a data type.

    @JsonKey(name: 'valueCount') Count? valueCount,
/// [valueDistance] Conveys the content if the parameter is a data type.

    @JsonKey(name: 'valueDistance') Distance? valueDistance,
/// [valueDuration] Conveys the content if the parameter is a data type.

    @JsonKey(name: 'valueDuration') FhirDuration? valueDuration,
/// [valueHumanName] Conveys the content if the parameter is a data type.

    @JsonKey(name: 'valueHumanName') HumanName? valueHumanName,
/// [valueIdentifier] Conveys the content if the parameter is a data type.

    @JsonKey(name: 'valueIdentifier') Identifier? valueIdentifier,
/// [valueMoney] Conveys the content if the parameter is a data type.

    @JsonKey(name: 'valueMoney') Money? valueMoney,
/// [valuePeriod] Conveys the content if the parameter is a data type.

    @JsonKey(name: 'valuePeriod') Period? valuePeriod,
/// [valueQuantity] Conveys the content if the parameter is a data type.

    @JsonKey(name: 'valueQuantity') Quantity? valueQuantity,
/// [valueRange] Conveys the content if the parameter is a data type.

    @JsonKey(name: 'valueRange') Range? valueRange,
/// [valueRatio] Conveys the content if the parameter is a data type.

    @JsonKey(name: 'valueRatio') Ratio? valueRatio,
/// [valueRatioRange] Conveys the content if the parameter is a data type.

    @JsonKey(name: 'valueRatioRange') RatioRange? valueRatioRange,
/// [valueReference] Conveys the content if the parameter is a data type.

    @JsonKey(name: 'valueReference') Reference? valueReference,
/// [valueSampledData] Conveys the content if the parameter is a data type.

    @JsonKey(name: 'valueSampledData') SampledData? valueSampledData,
/// [valueSignature] Conveys the content if the parameter is a data type.

    @JsonKey(name: 'valueSignature') Signature? valueSignature,
/// [valueTiming] Conveys the content if the parameter is a data type.

    @JsonKey(name: 'valueTiming') Timing? valueTiming,
/// [valueContactDetail] Conveys the content if the parameter is a data
/// type.

    @JsonKey(name: 'valueContactDetail') ContactDetail? valueContactDetail,
/// [valueDataRequirement] Conveys the content if the parameter is a data
/// type.

    @JsonKey(name: 'valueDataRequirement') DataRequirement? valueDataRequirement,
/// [valueExpression] Conveys the content if the parameter is a data type.

    @JsonKey(name: 'valueExpression') FhirExpression? valueExpression,
/// [valueParameterDefinition] Conveys the content if the parameter is a
/// data type.

    @JsonKey(name: 'valueParameterDefinition') ParameterDefinition? valueParameterDefinition,
/// [valueRelatedArtifact] Conveys the content if the parameter is a data
/// type.

    @JsonKey(name: 'valueRelatedArtifact') RelatedArtifact? valueRelatedArtifact,
/// [valueTriggerDefinition] Conveys the content if the parameter is a data
/// type.

    @JsonKey(name: 'valueTriggerDefinition') TriggerDefinition? valueTriggerDefinition,
/// [valueUsageContext] Conveys the content if the parameter is a data
/// type.

    @JsonKey(name: 'valueUsageContext') UsageContext? valueUsageContext,
/// [valueAvailability] Conveys the content if the parameter is a data
/// type.

    @JsonKey(name: 'valueAvailability') Availability? valueAvailability,
/// [valueExtendedContactDetail] Conveys the content if the parameter is a
/// data type.

    @JsonKey(name: 'valueExtendedContactDetail') ExtendedContactDetail? valueExtendedContactDetail,
/// [valueDosage] Conveys the content if the parameter is a data type.

    @JsonKey(name: 'valueDosage') Dosage? valueDosage,
/// [valueMeta] Conveys the content if the parameter is a data type.

    @JsonKey(name: 'valueMeta') FhirMeta? valueMeta,
/// [resource] Conveys the content if the parameter is a whole resource.

    @JsonKey(name: 'resource') ResourceList? resource,
/// [part] A named part of a multi-part parameter.

    @JsonKey(name: 'part') List<List<Parameters_Parameter>>? part,
  }) = _$Parameters_Parameter;

  @override
  String get fhirType => 'Parameters_Parameter';

  factory Parameters_Parameter.fromJson(Map<String, dynamic> json) =>
      _$Parameters_ParameterFromJson(json);

  factory Parameters_Parameter.fromYaml(dynamic yaml) => yaml is String
      ? Parameters_Parameter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Parameters_Parameter.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Parameters_Parameter cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Parameters_Parameter.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Parameters_ParameterFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
