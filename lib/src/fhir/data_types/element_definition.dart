import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ElementDefinition]
/// Captures constraints on each element within the resource, profile, or
/// extension.
class ElementDefinition extends BackboneType {
  /// Primary constructor for [ElementDefinition]

  ElementDefinition({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.path,
    this.representation,
    this.sliceName,
    this.sliceIsConstraining,
    this.label,
    this.code,
    this.slicing,
    this.short,
    this.definition,
    this.comment,
    this.requirements,
    this.alias,
    this.min,
    this.max,
    this.base,
    this.contentReference,
    this.type,
    this.defaultValueBase64Binary,
    this.defaultValueBoolean,
    this.defaultValueCanonical,
    this.defaultValueCode,
    this.defaultValueDate,
    this.defaultValueDateTime,
    this.defaultValueDecimal,
    this.defaultValueId,
    this.defaultValueInstant,
    this.defaultValueInteger,
    this.defaultValueMarkdown,
    this.defaultValueOid,
    this.defaultValuePositiveInt,
    this.defaultValueString,
    this.defaultValueTime,
    this.defaultValueUnsignedInt,
    this.defaultValueUri,
    this.defaultValueUrl,
    this.defaultValueUuid,
    this.defaultValueAddress,
    this.defaultValueAge,
    this.defaultValueAnnotation,
    this.defaultValueAttachment,
    this.defaultValueCodeableConcept,
    this.defaultValueCodeableReference,
    this.defaultValueCoding,
    this.defaultValueContactPoint,
    this.defaultValueCount,
    this.defaultValueDistance,
    this.defaultValueDuration,
    this.defaultValueHumanName,
    this.defaultValueIdentifier,
    this.defaultValueMoney,
    this.defaultValuePeriod,
    this.defaultValueQuantity,
    this.defaultValueRange,
    this.defaultValueRatio,
    this.defaultValueRatioRange,
    this.defaultValueReference,
    this.defaultValueSampledData,
    this.defaultValueSignature,
    this.defaultValueTiming,
    this.defaultValueContactDetail,
    this.defaultValueContributor,
    this.defaultValueDataRequirement,
    this.defaultValueExpression,
    this.defaultValueParameterDefinition,
    this.defaultValueRelatedArtifact,
    this.defaultValueTriggerDefinition,
    this.defaultValueUsageContext,
    this.defaultValueDosage,
    this.meaningWhenMissing,
    this.orderMeaning,
    this.fixedBase64Binary,
    this.fixedBoolean,
    this.fixedCanonical,
    this.fixedCode,
    this.fixedDate,
    this.fixedDateTime,
    this.fixedDecimal,
    this.fixedId,
    this.fixedInstant,
    this.fixedInteger,
    this.fixedMarkdown,
    this.fixedOid,
    this.fixedPositiveInt,
    this.fixedString,
    this.fixedTime,
    this.fixedUnsignedInt,
    this.fixedUri,
    this.fixedUrl,
    this.fixedUuid,
    this.fixedAddress,
    this.fixedAge,
    this.fixedAnnotation,
    this.fixedAttachment,
    this.fixedCodeableConcept,
    this.fixedCodeableReference,
    this.fixedCoding,
    this.fixedContactPoint,
    this.fixedCount,
    this.fixedDistance,
    this.fixedDuration,
    this.fixedHumanName,
    this.fixedIdentifier,
    this.fixedMoney,
    this.fixedPeriod,
    this.fixedQuantity,
    this.fixedRange,
    this.fixedRatio,
    this.fixedRatioRange,
    this.fixedReference,
    this.fixedSampledData,
    this.fixedSignature,
    this.fixedTiming,
    this.fixedContactDetail,
    this.fixedContributor,
    this.fixedDataRequirement,
    this.fixedExpression,
    this.fixedParameterDefinition,
    this.fixedRelatedArtifact,
    this.fixedTriggerDefinition,
    this.fixedUsageContext,
    this.fixedDosage,
    this.patternBase64Binary,
    this.patternBoolean,
    this.patternCanonical,
    this.patternCode,
    this.patternDate,
    this.patternDateTime,
    this.patternDecimal,
    this.patternId,
    this.patternInstant,
    this.patternInteger,
    this.patternMarkdown,
    this.patternOid,
    this.patternPositiveInt,
    this.patternString,
    this.patternTime,
    this.patternUnsignedInt,
    this.patternUri,
    this.patternUrl,
    this.patternUuid,
    this.patternAddress,
    this.patternAge,
    this.patternAnnotation,
    this.patternAttachment,
    this.patternCodeableConcept,
    this.patternCodeableReference,
    this.patternCoding,
    this.patternContactPoint,
    this.patternCount,
    this.patternDistance,
    this.patternDuration,
    this.patternHumanName,
    this.patternIdentifier,
    this.patternMoney,
    this.patternPeriod,
    this.patternQuantity,
    this.patternRange,
    this.patternRatio,
    this.patternRatioRange,
    this.patternReference,
    this.patternSampledData,
    this.patternSignature,
    this.patternTiming,
    this.patternContactDetail,
    this.patternContributor,
    this.patternDataRequirement,
    this.patternExpression,
    this.patternParameterDefinition,
    this.patternRelatedArtifact,
    this.patternTriggerDefinition,
    this.patternUsageContext,
    this.patternDosage,
    this.example,
    this.minValueDate,
    this.minValueDateTime,
    this.minValueInstant,
    this.minValueTime,
    this.minValueDecimal,
    this.minValueInteger,
    this.minValuePositiveInt,
    this.minValueUnsignedInt,
    this.minValueQuantity,
    this.maxValueDate,
    this.maxValueDateTime,
    this.maxValueInstant,
    this.maxValueTime,
    this.maxValueDecimal,
    this.maxValueInteger,
    this.maxValuePositiveInt,
    this.maxValueUnsignedInt,
    this.maxValueQuantity,
    this.maxLength,
    this.condition,
    this.constraint,
    this.mustSupport,
    this.isModifier,
    this.isModifierReason,
    this.isSummary,
    this.binding,
    this.mapping,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ElementDefinition.fromJson(Map<String, dynamic> json) {
    return ElementDefinition(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      path: FhirString.fromJson({
        'value': json['path'],
        '_value': json['_path'],
      }),
      representation: parsePrimitiveList<PropertyRepresentation>(
          json['representation'] as List<dynamic>?,
          json['_representation'] as List<dynamic>?,
          fromJson: PropertyRepresentation.fromJson),
      sliceName: json['sliceName'] != null
          ? FhirString.fromJson({
              'value': json['sliceName'],
              '_value': json['_sliceName'],
            })
          : null,
      sliceIsConstraining: json['sliceIsConstraining'] != null
          ? FhirBoolean.fromJson({
              'value': json['sliceIsConstraining'],
              '_value': json['_sliceIsConstraining'],
            })
          : null,
      label: json['label'] != null
          ? FhirString.fromJson({
              'value': json['label'],
              '_value': json['_label'],
            })
          : null,
      code: json['code'] != null
          ? (json['code'] as List<dynamic>)
              .map<Coding>(
                (v) => Coding.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      slicing: json['slicing'] != null
          ? ElementDefinitionSlicing.fromJson(
              json['slicing'] as Map<String, dynamic>,
            )
          : null,
      short: json['short'] != null
          ? FhirString.fromJson({
              'value': json['short'],
              '_value': json['_short'],
            })
          : null,
      definition: json['definition'] != null
          ? FhirMarkdown.fromJson({
              'value': json['definition'],
              '_value': json['_definition'],
            })
          : null,
      comment: json['comment'] != null
          ? FhirMarkdown.fromJson({
              'value': json['comment'],
              '_value': json['_comment'],
            })
          : null,
      requirements: json['requirements'] != null
          ? FhirMarkdown.fromJson({
              'value': json['requirements'],
              '_value': json['_requirements'],
            })
          : null,
      alias: parsePrimitiveList<FhirString>(
          json['alias'] as List<dynamic>?, json['_alias'] as List<dynamic>?,
          fromJson: FhirString.fromJson),
      min: json['min'] != null
          ? FhirUnsignedInt.fromJson({
              'value': json['min'],
              '_value': json['_min'],
            })
          : null,
      max: json['max'] != null
          ? FhirString.fromJson({
              'value': json['max'],
              '_value': json['_max'],
            })
          : null,
      base: json['base'] != null
          ? ElementDefinitionBase.fromJson(
              json['base'] as Map<String, dynamic>,
            )
          : null,
      contentReference: json['contentReference'] != null
          ? FhirUri.fromJson({
              'value': json['contentReference'],
              '_value': json['_contentReference'],
            })
          : null,
      type: json['type'] != null
          ? (json['type'] as List<dynamic>)
              .map<ElementDefinitionType>(
                (v) => ElementDefinitionType.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      defaultValueBase64Binary: json['defaultValueBase64Binary'] != null
          ? FhirBase64Binary.fromJson({
              'value': json['defaultValueBase64Binary'],
              '_value': json['_defaultValueBase64Binary'],
            })
          : null,
      defaultValueBoolean: json['defaultValueBoolean'] != null
          ? FhirBoolean.fromJson({
              'value': json['defaultValueBoolean'],
              '_value': json['_defaultValueBoolean'],
            })
          : null,
      defaultValueCanonical: json['defaultValueCanonical'] != null
          ? FhirCanonical.fromJson({
              'value': json['defaultValueCanonical'],
              '_value': json['_defaultValueCanonical'],
            })
          : null,
      defaultValueCode: json['defaultValueCode'] != null
          ? FhirCode.fromJson({
              'value': json['defaultValueCode'],
              '_value': json['_defaultValueCode'],
            })
          : null,
      defaultValueDate: json['defaultValueDate'] != null
          ? FhirDate.fromJson({
              'value': json['defaultValueDate'],
              '_value': json['_defaultValueDate'],
            })
          : null,
      defaultValueDateTime: json['defaultValueDateTime'] != null
          ? FhirDateTime.fromJson({
              'value': json['defaultValueDateTime'],
              '_value': json['_defaultValueDateTime'],
            })
          : null,
      defaultValueDecimal: json['defaultValueDecimal'] != null
          ? FhirDecimal.fromJson({
              'value': json['defaultValueDecimal'],
              '_value': json['_defaultValueDecimal'],
            })
          : null,
      defaultValueId: json['defaultValueId'] != null
          ? FhirId.fromJson({
              'value': json['defaultValueId'],
              '_value': json['_defaultValueId'],
            })
          : null,
      defaultValueInstant: json['defaultValueInstant'] != null
          ? FhirInstant.fromJson({
              'value': json['defaultValueInstant'],
              '_value': json['_defaultValueInstant'],
            })
          : null,
      defaultValueInteger: json['defaultValueInteger'] != null
          ? FhirInteger.fromJson({
              'value': json['defaultValueInteger'],
              '_value': json['_defaultValueInteger'],
            })
          : null,
      defaultValueMarkdown: json['defaultValueMarkdown'] != null
          ? FhirMarkdown.fromJson({
              'value': json['defaultValueMarkdown'],
              '_value': json['_defaultValueMarkdown'],
            })
          : null,
      defaultValueOid: json['defaultValueOid'] != null
          ? FhirOid.fromJson({
              'value': json['defaultValueOid'],
              '_value': json['_defaultValueOid'],
            })
          : null,
      defaultValuePositiveInt: json['defaultValuePositiveInt'] != null
          ? FhirPositiveInt.fromJson({
              'value': json['defaultValuePositiveInt'],
              '_value': json['_defaultValuePositiveInt'],
            })
          : null,
      defaultValueString: json['defaultValueString'] != null
          ? FhirString.fromJson({
              'value': json['defaultValueString'],
              '_value': json['_defaultValueString'],
            })
          : null,
      defaultValueTime: json['defaultValueTime'] != null
          ? FhirTime.fromJson({
              'value': json['defaultValueTime'],
              '_value': json['_defaultValueTime'],
            })
          : null,
      defaultValueUnsignedInt: json['defaultValueUnsignedInt'] != null
          ? FhirUnsignedInt.fromJson({
              'value': json['defaultValueUnsignedInt'],
              '_value': json['_defaultValueUnsignedInt'],
            })
          : null,
      defaultValueUri: json['defaultValueUri'] != null
          ? FhirUri.fromJson({
              'value': json['defaultValueUri'],
              '_value': json['_defaultValueUri'],
            })
          : null,
      defaultValueUrl: json['defaultValueUrl'] != null
          ? FhirUrl.fromJson({
              'value': json['defaultValueUrl'],
              '_value': json['_defaultValueUrl'],
            })
          : null,
      defaultValueUuid: json['defaultValueUuid'] != null
          ? FhirUuid.fromJson({
              'value': json['defaultValueUuid'],
              '_value': json['_defaultValueUuid'],
            })
          : null,
      defaultValueAddress: json['defaultValueAddress'] != null
          ? Address.fromJson(
              json['defaultValueAddress'] as Map<String, dynamic>,
            )
          : null,
      defaultValueAge: json['defaultValueAge'] != null
          ? Age.fromJson(
              json['defaultValueAge'] as Map<String, dynamic>,
            )
          : null,
      defaultValueAnnotation: json['defaultValueAnnotation'] != null
          ? Annotation.fromJson(
              json['defaultValueAnnotation'] as Map<String, dynamic>,
            )
          : null,
      defaultValueAttachment: json['defaultValueAttachment'] != null
          ? Attachment.fromJson(
              json['defaultValueAttachment'] as Map<String, dynamic>,
            )
          : null,
      defaultValueCodeableConcept: json['defaultValueCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['defaultValueCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      defaultValueCodeableReference:
          json['defaultValueCodeableReference'] != null
              ? CodeableReference.fromJson(
                  json['defaultValueCodeableReference'] as Map<String, dynamic>,
                )
              : null,
      defaultValueCoding: json['defaultValueCoding'] != null
          ? Coding.fromJson(
              json['defaultValueCoding'] as Map<String, dynamic>,
            )
          : null,
      defaultValueContactPoint: json['defaultValueContactPoint'] != null
          ? ContactPoint.fromJson(
              json['defaultValueContactPoint'] as Map<String, dynamic>,
            )
          : null,
      defaultValueCount: json['defaultValueCount'] != null
          ? Count.fromJson(
              json['defaultValueCount'] as Map<String, dynamic>,
            )
          : null,
      defaultValueDistance: json['defaultValueDistance'] != null
          ? Distance.fromJson(
              json['defaultValueDistance'] as Map<String, dynamic>,
            )
          : null,
      defaultValueDuration: json['defaultValueDuration'] != null
          ? FhirDuration.fromJson(
              json['defaultValueDuration'] as Map<String, dynamic>,
            )
          : null,
      defaultValueHumanName: json['defaultValueHumanName'] != null
          ? HumanName.fromJson(
              json['defaultValueHumanName'] as Map<String, dynamic>,
            )
          : null,
      defaultValueIdentifier: json['defaultValueIdentifier'] != null
          ? Identifier.fromJson(
              json['defaultValueIdentifier'] as Map<String, dynamic>,
            )
          : null,
      defaultValueMoney: json['defaultValueMoney'] != null
          ? Money.fromJson(
              json['defaultValueMoney'] as Map<String, dynamic>,
            )
          : null,
      defaultValuePeriod: json['defaultValuePeriod'] != null
          ? Period.fromJson(
              json['defaultValuePeriod'] as Map<String, dynamic>,
            )
          : null,
      defaultValueQuantity: json['defaultValueQuantity'] != null
          ? Quantity.fromJson(
              json['defaultValueQuantity'] as Map<String, dynamic>,
            )
          : null,
      defaultValueRange: json['defaultValueRange'] != null
          ? Range.fromJson(
              json['defaultValueRange'] as Map<String, dynamic>,
            )
          : null,
      defaultValueRatio: json['defaultValueRatio'] != null
          ? Ratio.fromJson(
              json['defaultValueRatio'] as Map<String, dynamic>,
            )
          : null,
      defaultValueRatioRange: json['defaultValueRatioRange'] != null
          ? RatioRange.fromJson(
              json['defaultValueRatioRange'] as Map<String, dynamic>,
            )
          : null,
      defaultValueReference: json['defaultValueReference'] != null
          ? Reference.fromJson(
              json['defaultValueReference'] as Map<String, dynamic>,
            )
          : null,
      defaultValueSampledData: json['defaultValueSampledData'] != null
          ? SampledData.fromJson(
              json['defaultValueSampledData'] as Map<String, dynamic>,
            )
          : null,
      defaultValueSignature: json['defaultValueSignature'] != null
          ? Signature.fromJson(
              json['defaultValueSignature'] as Map<String, dynamic>,
            )
          : null,
      defaultValueTiming: json['defaultValueTiming'] != null
          ? Timing.fromJson(
              json['defaultValueTiming'] as Map<String, dynamic>,
            )
          : null,
      defaultValueContactDetail: json['defaultValueContactDetail'] != null
          ? ContactDetail.fromJson(
              json['defaultValueContactDetail'] as Map<String, dynamic>,
            )
          : null,
      defaultValueContributor: json['defaultValueContributor'] != null
          ? Contributor.fromJson(
              json['defaultValueContributor'] as Map<String, dynamic>,
            )
          : null,
      defaultValueDataRequirement: json['defaultValueDataRequirement'] != null
          ? DataRequirement.fromJson(
              json['defaultValueDataRequirement'] as Map<String, dynamic>,
            )
          : null,
      defaultValueExpression: json['defaultValueExpression'] != null
          ? FhirExpression.fromJson(
              json['defaultValueExpression'] as Map<String, dynamic>,
            )
          : null,
      defaultValueParameterDefinition:
          json['defaultValueParameterDefinition'] != null
              ? ParameterDefinition.fromJson(
                  json['defaultValueParameterDefinition']
                      as Map<String, dynamic>,
                )
              : null,
      defaultValueRelatedArtifact: json['defaultValueRelatedArtifact'] != null
          ? RelatedArtifact.fromJson(
              json['defaultValueRelatedArtifact'] as Map<String, dynamic>,
            )
          : null,
      defaultValueTriggerDefinition:
          json['defaultValueTriggerDefinition'] != null
              ? TriggerDefinition.fromJson(
                  json['defaultValueTriggerDefinition'] as Map<String, dynamic>,
                )
              : null,
      defaultValueUsageContext: json['defaultValueUsageContext'] != null
          ? UsageContext.fromJson(
              json['defaultValueUsageContext'] as Map<String, dynamic>,
            )
          : null,
      defaultValueDosage: json['defaultValueDosage'] != null
          ? Dosage.fromJson(
              json['defaultValueDosage'] as Map<String, dynamic>,
            )
          : null,
      meaningWhenMissing: json['meaningWhenMissing'] != null
          ? FhirMarkdown.fromJson({
              'value': json['meaningWhenMissing'],
              '_value': json['_meaningWhenMissing'],
            })
          : null,
      orderMeaning: json['orderMeaning'] != null
          ? FhirString.fromJson({
              'value': json['orderMeaning'],
              '_value': json['_orderMeaning'],
            })
          : null,
      fixedBase64Binary: json['fixedBase64Binary'] != null
          ? FhirBase64Binary.fromJson({
              'value': json['fixedBase64Binary'],
              '_value': json['_fixedBase64Binary'],
            })
          : null,
      fixedBoolean: json['fixedBoolean'] != null
          ? FhirBoolean.fromJson({
              'value': json['fixedBoolean'],
              '_value': json['_fixedBoolean'],
            })
          : null,
      fixedCanonical: json['fixedCanonical'] != null
          ? FhirCanonical.fromJson({
              'value': json['fixedCanonical'],
              '_value': json['_fixedCanonical'],
            })
          : null,
      fixedCode: json['fixedCode'] != null
          ? FhirCode.fromJson({
              'value': json['fixedCode'],
              '_value': json['_fixedCode'],
            })
          : null,
      fixedDate: json['fixedDate'] != null
          ? FhirDate.fromJson({
              'value': json['fixedDate'],
              '_value': json['_fixedDate'],
            })
          : null,
      fixedDateTime: json['fixedDateTime'] != null
          ? FhirDateTime.fromJson({
              'value': json['fixedDateTime'],
              '_value': json['_fixedDateTime'],
            })
          : null,
      fixedDecimal: json['fixedDecimal'] != null
          ? FhirDecimal.fromJson({
              'value': json['fixedDecimal'],
              '_value': json['_fixedDecimal'],
            })
          : null,
      fixedId: json['fixedId'] != null
          ? FhirId.fromJson({
              'value': json['fixedId'],
              '_value': json['_fixedId'],
            })
          : null,
      fixedInstant: json['fixedInstant'] != null
          ? FhirInstant.fromJson({
              'value': json['fixedInstant'],
              '_value': json['_fixedInstant'],
            })
          : null,
      fixedInteger: json['fixedInteger'] != null
          ? FhirInteger.fromJson({
              'value': json['fixedInteger'],
              '_value': json['_fixedInteger'],
            })
          : null,
      fixedMarkdown: json['fixedMarkdown'] != null
          ? FhirMarkdown.fromJson({
              'value': json['fixedMarkdown'],
              '_value': json['_fixedMarkdown'],
            })
          : null,
      fixedOid: json['fixedOid'] != null
          ? FhirOid.fromJson({
              'value': json['fixedOid'],
              '_value': json['_fixedOid'],
            })
          : null,
      fixedPositiveInt: json['fixedPositiveInt'] != null
          ? FhirPositiveInt.fromJson({
              'value': json['fixedPositiveInt'],
              '_value': json['_fixedPositiveInt'],
            })
          : null,
      fixedString: json['fixedString'] != null
          ? FhirString.fromJson({
              'value': json['fixedString'],
              '_value': json['_fixedString'],
            })
          : null,
      fixedTime: json['fixedTime'] != null
          ? FhirTime.fromJson({
              'value': json['fixedTime'],
              '_value': json['_fixedTime'],
            })
          : null,
      fixedUnsignedInt: json['fixedUnsignedInt'] != null
          ? FhirUnsignedInt.fromJson({
              'value': json['fixedUnsignedInt'],
              '_value': json['_fixedUnsignedInt'],
            })
          : null,
      fixedUri: json['fixedUri'] != null
          ? FhirUri.fromJson({
              'value': json['fixedUri'],
              '_value': json['_fixedUri'],
            })
          : null,
      fixedUrl: json['fixedUrl'] != null
          ? FhirUrl.fromJson({
              'value': json['fixedUrl'],
              '_value': json['_fixedUrl'],
            })
          : null,
      fixedUuid: json['fixedUuid'] != null
          ? FhirUuid.fromJson({
              'value': json['fixedUuid'],
              '_value': json['_fixedUuid'],
            })
          : null,
      fixedAddress: json['fixedAddress'] != null
          ? Address.fromJson(
              json['fixedAddress'] as Map<String, dynamic>,
            )
          : null,
      fixedAge: json['fixedAge'] != null
          ? Age.fromJson(
              json['fixedAge'] as Map<String, dynamic>,
            )
          : null,
      fixedAnnotation: json['fixedAnnotation'] != null
          ? Annotation.fromJson(
              json['fixedAnnotation'] as Map<String, dynamic>,
            )
          : null,
      fixedAttachment: json['fixedAttachment'] != null
          ? Attachment.fromJson(
              json['fixedAttachment'] as Map<String, dynamic>,
            )
          : null,
      fixedCodeableConcept: json['fixedCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['fixedCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      fixedCodeableReference: json['fixedCodeableReference'] != null
          ? CodeableReference.fromJson(
              json['fixedCodeableReference'] as Map<String, dynamic>,
            )
          : null,
      fixedCoding: json['fixedCoding'] != null
          ? Coding.fromJson(
              json['fixedCoding'] as Map<String, dynamic>,
            )
          : null,
      fixedContactPoint: json['fixedContactPoint'] != null
          ? ContactPoint.fromJson(
              json['fixedContactPoint'] as Map<String, dynamic>,
            )
          : null,
      fixedCount: json['fixedCount'] != null
          ? Count.fromJson(
              json['fixedCount'] as Map<String, dynamic>,
            )
          : null,
      fixedDistance: json['fixedDistance'] != null
          ? Distance.fromJson(
              json['fixedDistance'] as Map<String, dynamic>,
            )
          : null,
      fixedDuration: json['fixedDuration'] != null
          ? FhirDuration.fromJson(
              json['fixedDuration'] as Map<String, dynamic>,
            )
          : null,
      fixedHumanName: json['fixedHumanName'] != null
          ? HumanName.fromJson(
              json['fixedHumanName'] as Map<String, dynamic>,
            )
          : null,
      fixedIdentifier: json['fixedIdentifier'] != null
          ? Identifier.fromJson(
              json['fixedIdentifier'] as Map<String, dynamic>,
            )
          : null,
      fixedMoney: json['fixedMoney'] != null
          ? Money.fromJson(
              json['fixedMoney'] as Map<String, dynamic>,
            )
          : null,
      fixedPeriod: json['fixedPeriod'] != null
          ? Period.fromJson(
              json['fixedPeriod'] as Map<String, dynamic>,
            )
          : null,
      fixedQuantity: json['fixedQuantity'] != null
          ? Quantity.fromJson(
              json['fixedQuantity'] as Map<String, dynamic>,
            )
          : null,
      fixedRange: json['fixedRange'] != null
          ? Range.fromJson(
              json['fixedRange'] as Map<String, dynamic>,
            )
          : null,
      fixedRatio: json['fixedRatio'] != null
          ? Ratio.fromJson(
              json['fixedRatio'] as Map<String, dynamic>,
            )
          : null,
      fixedRatioRange: json['fixedRatioRange'] != null
          ? RatioRange.fromJson(
              json['fixedRatioRange'] as Map<String, dynamic>,
            )
          : null,
      fixedReference: json['fixedReference'] != null
          ? Reference.fromJson(
              json['fixedReference'] as Map<String, dynamic>,
            )
          : null,
      fixedSampledData: json['fixedSampledData'] != null
          ? SampledData.fromJson(
              json['fixedSampledData'] as Map<String, dynamic>,
            )
          : null,
      fixedSignature: json['fixedSignature'] != null
          ? Signature.fromJson(
              json['fixedSignature'] as Map<String, dynamic>,
            )
          : null,
      fixedTiming: json['fixedTiming'] != null
          ? Timing.fromJson(
              json['fixedTiming'] as Map<String, dynamic>,
            )
          : null,
      fixedContactDetail: json['fixedContactDetail'] != null
          ? ContactDetail.fromJson(
              json['fixedContactDetail'] as Map<String, dynamic>,
            )
          : null,
      fixedContributor: json['fixedContributor'] != null
          ? Contributor.fromJson(
              json['fixedContributor'] as Map<String, dynamic>,
            )
          : null,
      fixedDataRequirement: json['fixedDataRequirement'] != null
          ? DataRequirement.fromJson(
              json['fixedDataRequirement'] as Map<String, dynamic>,
            )
          : null,
      fixedExpression: json['fixedExpression'] != null
          ? FhirExpression.fromJson(
              json['fixedExpression'] as Map<String, dynamic>,
            )
          : null,
      fixedParameterDefinition: json['fixedParameterDefinition'] != null
          ? ParameterDefinition.fromJson(
              json['fixedParameterDefinition'] as Map<String, dynamic>,
            )
          : null,
      fixedRelatedArtifact: json['fixedRelatedArtifact'] != null
          ? RelatedArtifact.fromJson(
              json['fixedRelatedArtifact'] as Map<String, dynamic>,
            )
          : null,
      fixedTriggerDefinition: json['fixedTriggerDefinition'] != null
          ? TriggerDefinition.fromJson(
              json['fixedTriggerDefinition'] as Map<String, dynamic>,
            )
          : null,
      fixedUsageContext: json['fixedUsageContext'] != null
          ? UsageContext.fromJson(
              json['fixedUsageContext'] as Map<String, dynamic>,
            )
          : null,
      fixedDosage: json['fixedDosage'] != null
          ? Dosage.fromJson(
              json['fixedDosage'] as Map<String, dynamic>,
            )
          : null,
      patternBase64Binary: json['patternBase64Binary'] != null
          ? FhirBase64Binary.fromJson({
              'value': json['patternBase64Binary'],
              '_value': json['_patternBase64Binary'],
            })
          : null,
      patternBoolean: json['patternBoolean'] != null
          ? FhirBoolean.fromJson({
              'value': json['patternBoolean'],
              '_value': json['_patternBoolean'],
            })
          : null,
      patternCanonical: json['patternCanonical'] != null
          ? FhirCanonical.fromJson({
              'value': json['patternCanonical'],
              '_value': json['_patternCanonical'],
            })
          : null,
      patternCode: json['patternCode'] != null
          ? FhirCode.fromJson({
              'value': json['patternCode'],
              '_value': json['_patternCode'],
            })
          : null,
      patternDate: json['patternDate'] != null
          ? FhirDate.fromJson({
              'value': json['patternDate'],
              '_value': json['_patternDate'],
            })
          : null,
      patternDateTime: json['patternDateTime'] != null
          ? FhirDateTime.fromJson({
              'value': json['patternDateTime'],
              '_value': json['_patternDateTime'],
            })
          : null,
      patternDecimal: json['patternDecimal'] != null
          ? FhirDecimal.fromJson({
              'value': json['patternDecimal'],
              '_value': json['_patternDecimal'],
            })
          : null,
      patternId: json['patternId'] != null
          ? FhirId.fromJson({
              'value': json['patternId'],
              '_value': json['_patternId'],
            })
          : null,
      patternInstant: json['patternInstant'] != null
          ? FhirInstant.fromJson({
              'value': json['patternInstant'],
              '_value': json['_patternInstant'],
            })
          : null,
      patternInteger: json['patternInteger'] != null
          ? FhirInteger.fromJson({
              'value': json['patternInteger'],
              '_value': json['_patternInteger'],
            })
          : null,
      patternMarkdown: json['patternMarkdown'] != null
          ? FhirMarkdown.fromJson({
              'value': json['patternMarkdown'],
              '_value': json['_patternMarkdown'],
            })
          : null,
      patternOid: json['patternOid'] != null
          ? FhirOid.fromJson({
              'value': json['patternOid'],
              '_value': json['_patternOid'],
            })
          : null,
      patternPositiveInt: json['patternPositiveInt'] != null
          ? FhirPositiveInt.fromJson({
              'value': json['patternPositiveInt'],
              '_value': json['_patternPositiveInt'],
            })
          : null,
      patternString: json['patternString'] != null
          ? FhirString.fromJson({
              'value': json['patternString'],
              '_value': json['_patternString'],
            })
          : null,
      patternTime: json['patternTime'] != null
          ? FhirTime.fromJson({
              'value': json['patternTime'],
              '_value': json['_patternTime'],
            })
          : null,
      patternUnsignedInt: json['patternUnsignedInt'] != null
          ? FhirUnsignedInt.fromJson({
              'value': json['patternUnsignedInt'],
              '_value': json['_patternUnsignedInt'],
            })
          : null,
      patternUri: json['patternUri'] != null
          ? FhirUri.fromJson({
              'value': json['patternUri'],
              '_value': json['_patternUri'],
            })
          : null,
      patternUrl: json['patternUrl'] != null
          ? FhirUrl.fromJson({
              'value': json['patternUrl'],
              '_value': json['_patternUrl'],
            })
          : null,
      patternUuid: json['patternUuid'] != null
          ? FhirUuid.fromJson({
              'value': json['patternUuid'],
              '_value': json['_patternUuid'],
            })
          : null,
      patternAddress: json['patternAddress'] != null
          ? Address.fromJson(
              json['patternAddress'] as Map<String, dynamic>,
            )
          : null,
      patternAge: json['patternAge'] != null
          ? Age.fromJson(
              json['patternAge'] as Map<String, dynamic>,
            )
          : null,
      patternAnnotation: json['patternAnnotation'] != null
          ? Annotation.fromJson(
              json['patternAnnotation'] as Map<String, dynamic>,
            )
          : null,
      patternAttachment: json['patternAttachment'] != null
          ? Attachment.fromJson(
              json['patternAttachment'] as Map<String, dynamic>,
            )
          : null,
      patternCodeableConcept: json['patternCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['patternCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      patternCodeableReference: json['patternCodeableReference'] != null
          ? CodeableReference.fromJson(
              json['patternCodeableReference'] as Map<String, dynamic>,
            )
          : null,
      patternCoding: json['patternCoding'] != null
          ? Coding.fromJson(
              json['patternCoding'] as Map<String, dynamic>,
            )
          : null,
      patternContactPoint: json['patternContactPoint'] != null
          ? ContactPoint.fromJson(
              json['patternContactPoint'] as Map<String, dynamic>,
            )
          : null,
      patternCount: json['patternCount'] != null
          ? Count.fromJson(
              json['patternCount'] as Map<String, dynamic>,
            )
          : null,
      patternDistance: json['patternDistance'] != null
          ? Distance.fromJson(
              json['patternDistance'] as Map<String, dynamic>,
            )
          : null,
      patternDuration: json['patternDuration'] != null
          ? FhirDuration.fromJson(
              json['patternDuration'] as Map<String, dynamic>,
            )
          : null,
      patternHumanName: json['patternHumanName'] != null
          ? HumanName.fromJson(
              json['patternHumanName'] as Map<String, dynamic>,
            )
          : null,
      patternIdentifier: json['patternIdentifier'] != null
          ? Identifier.fromJson(
              json['patternIdentifier'] as Map<String, dynamic>,
            )
          : null,
      patternMoney: json['patternMoney'] != null
          ? Money.fromJson(
              json['patternMoney'] as Map<String, dynamic>,
            )
          : null,
      patternPeriod: json['patternPeriod'] != null
          ? Period.fromJson(
              json['patternPeriod'] as Map<String, dynamic>,
            )
          : null,
      patternQuantity: json['patternQuantity'] != null
          ? Quantity.fromJson(
              json['patternQuantity'] as Map<String, dynamic>,
            )
          : null,
      patternRange: json['patternRange'] != null
          ? Range.fromJson(
              json['patternRange'] as Map<String, dynamic>,
            )
          : null,
      patternRatio: json['patternRatio'] != null
          ? Ratio.fromJson(
              json['patternRatio'] as Map<String, dynamic>,
            )
          : null,
      patternRatioRange: json['patternRatioRange'] != null
          ? RatioRange.fromJson(
              json['patternRatioRange'] as Map<String, dynamic>,
            )
          : null,
      patternReference: json['patternReference'] != null
          ? Reference.fromJson(
              json['patternReference'] as Map<String, dynamic>,
            )
          : null,
      patternSampledData: json['patternSampledData'] != null
          ? SampledData.fromJson(
              json['patternSampledData'] as Map<String, dynamic>,
            )
          : null,
      patternSignature: json['patternSignature'] != null
          ? Signature.fromJson(
              json['patternSignature'] as Map<String, dynamic>,
            )
          : null,
      patternTiming: json['patternTiming'] != null
          ? Timing.fromJson(
              json['patternTiming'] as Map<String, dynamic>,
            )
          : null,
      patternContactDetail: json['patternContactDetail'] != null
          ? ContactDetail.fromJson(
              json['patternContactDetail'] as Map<String, dynamic>,
            )
          : null,
      patternContributor: json['patternContributor'] != null
          ? Contributor.fromJson(
              json['patternContributor'] as Map<String, dynamic>,
            )
          : null,
      patternDataRequirement: json['patternDataRequirement'] != null
          ? DataRequirement.fromJson(
              json['patternDataRequirement'] as Map<String, dynamic>,
            )
          : null,
      patternExpression: json['patternExpression'] != null
          ? FhirExpression.fromJson(
              json['patternExpression'] as Map<String, dynamic>,
            )
          : null,
      patternParameterDefinition: json['patternParameterDefinition'] != null
          ? ParameterDefinition.fromJson(
              json['patternParameterDefinition'] as Map<String, dynamic>,
            )
          : null,
      patternRelatedArtifact: json['patternRelatedArtifact'] != null
          ? RelatedArtifact.fromJson(
              json['patternRelatedArtifact'] as Map<String, dynamic>,
            )
          : null,
      patternTriggerDefinition: json['patternTriggerDefinition'] != null
          ? TriggerDefinition.fromJson(
              json['patternTriggerDefinition'] as Map<String, dynamic>,
            )
          : null,
      patternUsageContext: json['patternUsageContext'] != null
          ? UsageContext.fromJson(
              json['patternUsageContext'] as Map<String, dynamic>,
            )
          : null,
      patternDosage: json['patternDosage'] != null
          ? Dosage.fromJson(
              json['patternDosage'] as Map<String, dynamic>,
            )
          : null,
      example: json['example'] != null
          ? (json['example'] as List<dynamic>)
              .map<ElementDefinitionExample>(
                (v) => ElementDefinitionExample.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      minValueDate: json['minValueDate'] != null
          ? FhirDate.fromJson({
              'value': json['minValueDate'],
              '_value': json['_minValueDate'],
            })
          : null,
      minValueDateTime: json['minValueDateTime'] != null
          ? FhirDateTime.fromJson({
              'value': json['minValueDateTime'],
              '_value': json['_minValueDateTime'],
            })
          : null,
      minValueInstant: json['minValueInstant'] != null
          ? FhirInstant.fromJson({
              'value': json['minValueInstant'],
              '_value': json['_minValueInstant'],
            })
          : null,
      minValueTime: json['minValueTime'] != null
          ? FhirTime.fromJson({
              'value': json['minValueTime'],
              '_value': json['_minValueTime'],
            })
          : null,
      minValueDecimal: json['minValueDecimal'] != null
          ? FhirDecimal.fromJson({
              'value': json['minValueDecimal'],
              '_value': json['_minValueDecimal'],
            })
          : null,
      minValueInteger: json['minValueInteger'] != null
          ? FhirInteger.fromJson({
              'value': json['minValueInteger'],
              '_value': json['_minValueInteger'],
            })
          : null,
      minValuePositiveInt: json['minValuePositiveInt'] != null
          ? FhirPositiveInt.fromJson({
              'value': json['minValuePositiveInt'],
              '_value': json['_minValuePositiveInt'],
            })
          : null,
      minValueUnsignedInt: json['minValueUnsignedInt'] != null
          ? FhirUnsignedInt.fromJson({
              'value': json['minValueUnsignedInt'],
              '_value': json['_minValueUnsignedInt'],
            })
          : null,
      minValueQuantity: json['minValueQuantity'] != null
          ? Quantity.fromJson(
              json['minValueQuantity'] as Map<String, dynamic>,
            )
          : null,
      maxValueDate: json['maxValueDate'] != null
          ? FhirDate.fromJson({
              'value': json['maxValueDate'],
              '_value': json['_maxValueDate'],
            })
          : null,
      maxValueDateTime: json['maxValueDateTime'] != null
          ? FhirDateTime.fromJson({
              'value': json['maxValueDateTime'],
              '_value': json['_maxValueDateTime'],
            })
          : null,
      maxValueInstant: json['maxValueInstant'] != null
          ? FhirInstant.fromJson({
              'value': json['maxValueInstant'],
              '_value': json['_maxValueInstant'],
            })
          : null,
      maxValueTime: json['maxValueTime'] != null
          ? FhirTime.fromJson({
              'value': json['maxValueTime'],
              '_value': json['_maxValueTime'],
            })
          : null,
      maxValueDecimal: json['maxValueDecimal'] != null
          ? FhirDecimal.fromJson({
              'value': json['maxValueDecimal'],
              '_value': json['_maxValueDecimal'],
            })
          : null,
      maxValueInteger: json['maxValueInteger'] != null
          ? FhirInteger.fromJson({
              'value': json['maxValueInteger'],
              '_value': json['_maxValueInteger'],
            })
          : null,
      maxValuePositiveInt: json['maxValuePositiveInt'] != null
          ? FhirPositiveInt.fromJson({
              'value': json['maxValuePositiveInt'],
              '_value': json['_maxValuePositiveInt'],
            })
          : null,
      maxValueUnsignedInt: json['maxValueUnsignedInt'] != null
          ? FhirUnsignedInt.fromJson({
              'value': json['maxValueUnsignedInt'],
              '_value': json['_maxValueUnsignedInt'],
            })
          : null,
      maxValueQuantity: json['maxValueQuantity'] != null
          ? Quantity.fromJson(
              json['maxValueQuantity'] as Map<String, dynamic>,
            )
          : null,
      maxLength: json['maxLength'] != null
          ? FhirInteger.fromJson({
              'value': json['maxLength'],
              '_value': json['_maxLength'],
            })
          : null,
      condition: parsePrimitiveList<FhirId>(json['condition'] as List<dynamic>?,
          json['_condition'] as List<dynamic>?,
          fromJson: FhirId.fromJson),
      constraint: json['constraint'] != null
          ? (json['constraint'] as List<dynamic>)
              .map<ElementDefinitionConstraint>(
                (v) => ElementDefinitionConstraint.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      mustSupport: json['mustSupport'] != null
          ? FhirBoolean.fromJson({
              'value': json['mustSupport'],
              '_value': json['_mustSupport'],
            })
          : null,
      isModifier: json['isModifier'] != null
          ? FhirBoolean.fromJson({
              'value': json['isModifier'],
              '_value': json['_isModifier'],
            })
          : null,
      isModifierReason: json['isModifierReason'] != null
          ? FhirString.fromJson({
              'value': json['isModifierReason'],
              '_value': json['_isModifierReason'],
            })
          : null,
      isSummary: json['isSummary'] != null
          ? FhirBoolean.fromJson({
              'value': json['isSummary'],
              '_value': json['_isSummary'],
            })
          : null,
      binding: json['binding'] != null
          ? ElementDefinitionBinding.fromJson(
              json['binding'] as Map<String, dynamic>,
            )
          : null,
      mapping: json['mapping'] != null
          ? (json['mapping'] as List<dynamic>)
              .map<ElementDefinitionMapping>(
                (v) => ElementDefinitionMapping.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ElementDefinition] from a [String]
  /// or [YamlMap] object
  factory ElementDefinition.fromYaml(dynamic yaml) => yaml is String
      ? ElementDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ElementDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('ElementDefinition cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ElementDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ElementDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ElementDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ElementDefinition';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [path]
  /// The path identifies the element and is expressed as a "."-separated
  /// list of ancestor elements, beginning with the name of the resource or
  /// extension.
  final FhirString path;

  /// [representation]
  /// Codes that define how this element is represented in instances, when
  /// the deviation varies from the normal case.
  final List<PropertyRepresentation>? representation;

  /// [sliceName]
  /// The name of this element definition slice, when slicing is working. The
  /// name must be a token with no dots or spaces. This is a unique name
  /// referring to a specific set of constraints applied to this element,
  /// used to provide a name to different slices of the same element.
  final FhirString? sliceName;

  /// [sliceIsConstraining]
  /// If true, indicates that this slice definition is constraining a slice
  /// definition with the same name in an inherited profile. If false, the
  /// slice is not overriding any slice in an inherited profile. If missing,
  /// the slice might or might not be overriding a slice in an inherited
  /// profile, depending on the sliceName.
  final FhirBoolean? sliceIsConstraining;

  /// [label]
  /// A single preferred label which is the text to display beside the
  /// element indicating its meaning or to use to prompt for the element in a
  /// user display or form.
  final FhirString? label;

  /// [code]
  /// A code that has the same meaning as the element in a particular
  /// terminology.
  final List<Coding>? code;

  /// [slicing]
  /// Indicates that the element is sliced into a set of alternative
  /// definitions (i.e. in a structure definition, there are multiple
  /// different constraints on a single element in the base resource).
  /// Slicing can be used in any resource that has cardinality ..* on the
  /// base resource, or any resource with a choice of types. The set of
  /// slices is any elements that come after this in the element sequence
  /// that have the same path, until a shorter path occurs (the shorter path
  /// terminates the set).
  final ElementDefinitionSlicing? slicing;

  /// [short]
  /// A concise description of what this element means (e.g. for use in
  /// autogenerated summaries).
  final FhirString? short;

  /// [definition]
  /// Provides a complete explanation of the meaning of the data element for
  /// human readability. For the case of elements derived from existing
  /// elements (e.g. constraints), the definition SHALL be consistent with
  /// the base definition, but convey the meaning of the element in the
  /// particular context of use of the resource. (Note: The text you are
  /// reading is specified in ElementDefinition.definition).
  final FhirMarkdown? definition;

  /// [comment]
  /// Explanatory notes and implementation guidance about the data element,
  /// including notes about how to use the data properly, exceptions to
  /// proper use, etc. (Note: The text you are reading is specified in
  /// ElementDefinition.comment).
  final FhirMarkdown? comment;

  /// [requirements]
  /// This element is for traceability of why the element was created and why
  /// the constraints exist as they do. This may be used to point to source
  /// materials or specifications that drove the structure of this element.
  final FhirMarkdown? requirements;

  /// [alias]
  /// Identifies additional names by which this element might also be known.
  final List<FhirString>? alias;

  /// [min]
  /// The minimum number of times this element SHALL appear in the instance.
  final FhirUnsignedInt? min;

  /// [max]
  /// The maximum number of times this element is permitted to appear in the
  /// instance.
  final FhirString? max;

  /// [base]
  /// Information about the base definition of the element, provided to make
  /// it unnecessary for tools to trace the deviation of the element through
  /// the derived and related profiles. When the element definition is not
  /// the original definition of an element - i.g. either in a constraint on
  /// another type, or for elements from a super type in a snap shot - then
  /// the information in provided in the element definition may be different
  /// to the base definition. On the original definition of the element, it
  /// will be same.
  final ElementDefinitionBase? base;

  /// [contentReference]
  /// Identifies an element defined elsewhere in the definition whose content
  /// rules should be applied to the current element. ContentReferences bring
  /// across all the rules that are in the ElementDefinition for the element,
  /// including definitions, cardinality constraints, bindings, invariants
  /// etc.
  final FhirUri? contentReference;

  /// [type]
  /// The data type or resource that the value of this element is permitted
  /// to be.
  final List<ElementDefinitionType>? type;

  /// [defaultValueBase64Binary]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final FhirBase64Binary? defaultValueBase64Binary;

  /// [defaultValueBoolean]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final FhirBoolean? defaultValueBoolean;

  /// [defaultValueCanonical]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final FhirCanonical? defaultValueCanonical;

  /// [defaultValueCode]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final FhirCode? defaultValueCode;

  /// [defaultValueDate]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final FhirDate? defaultValueDate;

  /// [defaultValueDateTime]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final FhirDateTime? defaultValueDateTime;

  /// [defaultValueDecimal]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final FhirDecimal? defaultValueDecimal;

  /// [defaultValueId]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final FhirId? defaultValueId;

  /// [defaultValueInstant]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final FhirInstant? defaultValueInstant;

  /// [defaultValueInteger]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final FhirInteger? defaultValueInteger;

  /// [defaultValueMarkdown]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final FhirMarkdown? defaultValueMarkdown;

  /// [defaultValueOid]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final FhirOid? defaultValueOid;

  /// [defaultValuePositiveInt]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final FhirPositiveInt? defaultValuePositiveInt;

  /// [defaultValueString]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final FhirString? defaultValueString;

  /// [defaultValueTime]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final FhirTime? defaultValueTime;

  /// [defaultValueUnsignedInt]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final FhirUnsignedInt? defaultValueUnsignedInt;

  /// [defaultValueUri]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final FhirUri? defaultValueUri;

  /// [defaultValueUrl]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final FhirUrl? defaultValueUrl;

  /// [defaultValueUuid]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final FhirUuid? defaultValueUuid;

  /// [defaultValueAddress]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final Address? defaultValueAddress;

  /// [defaultValueAge]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final Age? defaultValueAge;

  /// [defaultValueAnnotation]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final Annotation? defaultValueAnnotation;

  /// [defaultValueAttachment]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final Attachment? defaultValueAttachment;

  /// [defaultValueCodeableConcept]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final CodeableConcept? defaultValueCodeableConcept;

  /// [defaultValueCodeableReference]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final CodeableReference? defaultValueCodeableReference;

  /// [defaultValueCoding]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final Coding? defaultValueCoding;

  /// [defaultValueContactPoint]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final ContactPoint? defaultValueContactPoint;

  /// [defaultValueCount]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final Count? defaultValueCount;

  /// [defaultValueDistance]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final Distance? defaultValueDistance;

  /// [defaultValueDuration]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final FhirDuration? defaultValueDuration;

  /// [defaultValueHumanName]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final HumanName? defaultValueHumanName;

  /// [defaultValueIdentifier]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final Identifier? defaultValueIdentifier;

  /// [defaultValueMoney]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final Money? defaultValueMoney;

  /// [defaultValuePeriod]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final Period? defaultValuePeriod;

  /// [defaultValueQuantity]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final Quantity? defaultValueQuantity;

  /// [defaultValueRange]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final Range? defaultValueRange;

  /// [defaultValueRatio]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final Ratio? defaultValueRatio;

  /// [defaultValueRatioRange]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final RatioRange? defaultValueRatioRange;

  /// [defaultValueReference]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final Reference? defaultValueReference;

  /// [defaultValueSampledData]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final SampledData? defaultValueSampledData;

  /// [defaultValueSignature]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final Signature? defaultValueSignature;

  /// [defaultValueTiming]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final Timing? defaultValueTiming;

  /// [defaultValueContactDetail]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final ContactDetail? defaultValueContactDetail;

  /// [defaultValueContributor]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final Contributor? defaultValueContributor;

  /// [defaultValueDataRequirement]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final DataRequirement? defaultValueDataRequirement;

  /// [defaultValueExpression]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final FhirExpression? defaultValueExpression;

  /// [defaultValueParameterDefinition]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final ParameterDefinition? defaultValueParameterDefinition;

  /// [defaultValueRelatedArtifact]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final RelatedArtifact? defaultValueRelatedArtifact;

  /// [defaultValueTriggerDefinition]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final TriggerDefinition? defaultValueTriggerDefinition;

  /// [defaultValueUsageContext]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final UsageContext? defaultValueUsageContext;

  /// [defaultValueDosage]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final Dosage? defaultValueDosage;

  /// [meaningWhenMissing]
  /// The Implicit meaning that is to be understood when this element is
  /// missing (e.g. 'when this element is missing, the period is ongoing').
  final FhirMarkdown? meaningWhenMissing;

  /// [orderMeaning]
  /// If present, indicates that the order of the repeating element has
  /// meaning and describes what that meaning is. If absent, it means that
  /// the order of the element has no meaning.
  final FhirString? orderMeaning;

  /// [fixedBase64Binary]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final FhirBase64Binary? fixedBase64Binary;

  /// [fixedBoolean]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final FhirBoolean? fixedBoolean;

  /// [fixedCanonical]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final FhirCanonical? fixedCanonical;

  /// [fixedCode]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final FhirCode? fixedCode;

  /// [fixedDate]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final FhirDate? fixedDate;

  /// [fixedDateTime]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final FhirDateTime? fixedDateTime;

  /// [fixedDecimal]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final FhirDecimal? fixedDecimal;

  /// [fixedId]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final FhirId? fixedId;

  /// [fixedInstant]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final FhirInstant? fixedInstant;

  /// [fixedInteger]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final FhirInteger? fixedInteger;

  /// [fixedMarkdown]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final FhirMarkdown? fixedMarkdown;

  /// [fixedOid]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final FhirOid? fixedOid;

  /// [fixedPositiveInt]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final FhirPositiveInt? fixedPositiveInt;

  /// [fixedString]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final FhirString? fixedString;

  /// [fixedTime]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final FhirTime? fixedTime;

  /// [fixedUnsignedInt]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final FhirUnsignedInt? fixedUnsignedInt;

  /// [fixedUri]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final FhirUri? fixedUri;

  /// [fixedUrl]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final FhirUrl? fixedUrl;

  /// [fixedUuid]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final FhirUuid? fixedUuid;

  /// [fixedAddress]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final Address? fixedAddress;

  /// [fixedAge]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final Age? fixedAge;

  /// [fixedAnnotation]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final Annotation? fixedAnnotation;

  /// [fixedAttachment]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final Attachment? fixedAttachment;

  /// [fixedCodeableConcept]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final CodeableConcept? fixedCodeableConcept;

  /// [fixedCodeableReference]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final CodeableReference? fixedCodeableReference;

  /// [fixedCoding]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final Coding? fixedCoding;

  /// [fixedContactPoint]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final ContactPoint? fixedContactPoint;

  /// [fixedCount]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final Count? fixedCount;

  /// [fixedDistance]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final Distance? fixedDistance;

  /// [fixedDuration]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final FhirDuration? fixedDuration;

  /// [fixedHumanName]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final HumanName? fixedHumanName;

  /// [fixedIdentifier]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final Identifier? fixedIdentifier;

  /// [fixedMoney]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final Money? fixedMoney;

  /// [fixedPeriod]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final Period? fixedPeriod;

  /// [fixedQuantity]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final Quantity? fixedQuantity;

  /// [fixedRange]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final Range? fixedRange;

  /// [fixedRatio]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final Ratio? fixedRatio;

  /// [fixedRatioRange]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final RatioRange? fixedRatioRange;

  /// [fixedReference]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final Reference? fixedReference;

  /// [fixedSampledData]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final SampledData? fixedSampledData;

  /// [fixedSignature]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final Signature? fixedSignature;

  /// [fixedTiming]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final Timing? fixedTiming;

  /// [fixedContactDetail]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final ContactDetail? fixedContactDetail;

  /// [fixedContributor]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final Contributor? fixedContributor;

  /// [fixedDataRequirement]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final DataRequirement? fixedDataRequirement;

  /// [fixedExpression]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final FhirExpression? fixedExpression;

  /// [fixedParameterDefinition]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final ParameterDefinition? fixedParameterDefinition;

  /// [fixedRelatedArtifact]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final RelatedArtifact? fixedRelatedArtifact;

  /// [fixedTriggerDefinition]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final TriggerDefinition? fixedTriggerDefinition;

  /// [fixedUsageContext]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final UsageContext? fixedUsageContext;

  /// [fixedDosage]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final Dosage? fixedDosage;

  /// [patternBase64Binary]
  /// Specifies a value that the value in the instance SHALL follow - that
  /// is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  /// example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the
  /// value provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each
  /// element provided in the pattern[x] array must (recursively) match at
  /// least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that
  /// each property in the pattern must be present in the complex object, and
  /// its value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final FhirBase64Binary? patternBase64Binary;

  /// [patternBoolean]
  /// Specifies a value that the value in the instance SHALL follow - that
  /// is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  /// example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the
  /// value provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each
  /// element provided in the pattern[x] array must (recursively) match at
  /// least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that
  /// each property in the pattern must be present in the complex object, and
  /// its value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final FhirBoolean? patternBoolean;

  /// [patternCanonical]
  /// Specifies a value that the value in the instance SHALL follow - that
  /// is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  /// example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the
  /// value provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each
  /// element provided in the pattern[x] array must (recursively) match at
  /// least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that
  /// each property in the pattern must be present in the complex object, and
  /// its value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final FhirCanonical? patternCanonical;

  /// [patternCode]
  /// Specifies a value that the value in the instance SHALL follow - that
  /// is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  /// example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the
  /// value provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each
  /// element provided in the pattern[x] array must (recursively) match at
  /// least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that
  /// each property in the pattern must be present in the complex object, and
  /// its value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final FhirCode? patternCode;

  /// [patternDate]
  /// Specifies a value that the value in the instance SHALL follow - that
  /// is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  /// example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the
  /// value provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each
  /// element provided in the pattern[x] array must (recursively) match at
  /// least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that
  /// each property in the pattern must be present in the complex object, and
  /// its value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final FhirDate? patternDate;

  /// [patternDateTime]
  /// Specifies a value that the value in the instance SHALL follow - that
  /// is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  /// example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the
  /// value provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each
  /// element provided in the pattern[x] array must (recursively) match at
  /// least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that
  /// each property in the pattern must be present in the complex object, and
  /// its value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final FhirDateTime? patternDateTime;

  /// [patternDecimal]
  /// Specifies a value that the value in the instance SHALL follow - that
  /// is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  /// example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the
  /// value provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each
  /// element provided in the pattern[x] array must (recursively) match at
  /// least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that
  /// each property in the pattern must be present in the complex object, and
  /// its value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final FhirDecimal? patternDecimal;

  /// [patternId]
  /// Specifies a value that the value in the instance SHALL follow - that
  /// is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  /// example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the
  /// value provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each
  /// element provided in the pattern[x] array must (recursively) match at
  /// least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that
  /// each property in the pattern must be present in the complex object, and
  /// its value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final FhirId? patternId;

  /// [patternInstant]
  /// Specifies a value that the value in the instance SHALL follow - that
  /// is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  /// example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the
  /// value provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each
  /// element provided in the pattern[x] array must (recursively) match at
  /// least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that
  /// each property in the pattern must be present in the complex object, and
  /// its value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final FhirInstant? patternInstant;

  /// [patternInteger]
  /// Specifies a value that the value in the instance SHALL follow - that
  /// is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  /// example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the
  /// value provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each
  /// element provided in the pattern[x] array must (recursively) match at
  /// least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that
  /// each property in the pattern must be present in the complex object, and
  /// its value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final FhirInteger? patternInteger;

  /// [patternMarkdown]
  /// Specifies a value that the value in the instance SHALL follow - that
  /// is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  /// example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the
  /// value provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each
  /// element provided in the pattern[x] array must (recursively) match at
  /// least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that
  /// each property in the pattern must be present in the complex object, and
  /// its value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final FhirMarkdown? patternMarkdown;

  /// [patternOid]
  /// Specifies a value that the value in the instance SHALL follow - that
  /// is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  /// example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the
  /// value provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each
  /// element provided in the pattern[x] array must (recursively) match at
  /// least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that
  /// each property in the pattern must be present in the complex object, and
  /// its value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final FhirOid? patternOid;

  /// [patternPositiveInt]
  /// Specifies a value that the value in the instance SHALL follow - that
  /// is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  /// example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the
  /// value provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each
  /// element provided in the pattern[x] array must (recursively) match at
  /// least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that
  /// each property in the pattern must be present in the complex object, and
  /// its value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final FhirPositiveInt? patternPositiveInt;

  /// [patternString]
  /// Specifies a value that the value in the instance SHALL follow - that
  /// is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  /// example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the
  /// value provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each
  /// element provided in the pattern[x] array must (recursively) match at
  /// least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that
  /// each property in the pattern must be present in the complex object, and
  /// its value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final FhirString? patternString;

  /// [patternTime]
  /// Specifies a value that the value in the instance SHALL follow - that
  /// is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  /// example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the
  /// value provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each
  /// element provided in the pattern[x] array must (recursively) match at
  /// least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that
  /// each property in the pattern must be present in the complex object, and
  /// its value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final FhirTime? patternTime;

  /// [patternUnsignedInt]
  /// Specifies a value that the value in the instance SHALL follow - that
  /// is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  /// example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the
  /// value provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each
  /// element provided in the pattern[x] array must (recursively) match at
  /// least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that
  /// each property in the pattern must be present in the complex object, and
  /// its value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final FhirUnsignedInt? patternUnsignedInt;

  /// [patternUri]
  /// Specifies a value that the value in the instance SHALL follow - that
  /// is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  /// example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the
  /// value provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each
  /// element provided in the pattern[x] array must (recursively) match at
  /// least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that
  /// each property in the pattern must be present in the complex object, and
  /// its value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final FhirUri? patternUri;

  /// [patternUrl]
  /// Specifies a value that the value in the instance SHALL follow - that
  /// is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  /// example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the
  /// value provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each
  /// element provided in the pattern[x] array must (recursively) match at
  /// least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that
  /// each property in the pattern must be present in the complex object, and
  /// its value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final FhirUrl? patternUrl;

  /// [patternUuid]
  /// Specifies a value that the value in the instance SHALL follow - that
  /// is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  /// example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the
  /// value provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each
  /// element provided in the pattern[x] array must (recursively) match at
  /// least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that
  /// each property in the pattern must be present in the complex object, and
  /// its value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final FhirUuid? patternUuid;

  /// [patternAddress]
  /// Specifies a value that the value in the instance SHALL follow - that
  /// is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  /// example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the
  /// value provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each
  /// element provided in the pattern[x] array must (recursively) match at
  /// least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that
  /// each property in the pattern must be present in the complex object, and
  /// its value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final Address? patternAddress;

  /// [patternAge]
  /// Specifies a value that the value in the instance SHALL follow - that
  /// is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  /// example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the
  /// value provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each
  /// element provided in the pattern[x] array must (recursively) match at
  /// least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that
  /// each property in the pattern must be present in the complex object, and
  /// its value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final Age? patternAge;

  /// [patternAnnotation]
  /// Specifies a value that the value in the instance SHALL follow - that
  /// is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  /// example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the
  /// value provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each
  /// element provided in the pattern[x] array must (recursively) match at
  /// least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that
  /// each property in the pattern must be present in the complex object, and
  /// its value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final Annotation? patternAnnotation;

  /// [patternAttachment]
  /// Specifies a value that the value in the instance SHALL follow - that
  /// is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  /// example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the
  /// value provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each
  /// element provided in the pattern[x] array must (recursively) match at
  /// least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that
  /// each property in the pattern must be present in the complex object, and
  /// its value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final Attachment? patternAttachment;

  /// [patternCodeableConcept]
  /// Specifies a value that the value in the instance SHALL follow - that
  /// is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  /// example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the
  /// value provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each
  /// element provided in the pattern[x] array must (recursively) match at
  /// least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that
  /// each property in the pattern must be present in the complex object, and
  /// its value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final CodeableConcept? patternCodeableConcept;

  /// [patternCodeableReference]
  /// Specifies a value that the value in the instance SHALL follow - that
  /// is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  /// example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the
  /// value provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each
  /// element provided in the pattern[x] array must (recursively) match at
  /// least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that
  /// each property in the pattern must be present in the complex object, and
  /// its value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final CodeableReference? patternCodeableReference;

  /// [patternCoding]
  /// Specifies a value that the value in the instance SHALL follow - that
  /// is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  /// example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the
  /// value provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each
  /// element provided in the pattern[x] array must (recursively) match at
  /// least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that
  /// each property in the pattern must be present in the complex object, and
  /// its value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final Coding? patternCoding;

  /// [patternContactPoint]
  /// Specifies a value that the value in the instance SHALL follow - that
  /// is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  /// example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the
  /// value provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each
  /// element provided in the pattern[x] array must (recursively) match at
  /// least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that
  /// each property in the pattern must be present in the complex object, and
  /// its value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final ContactPoint? patternContactPoint;

  /// [patternCount]
  /// Specifies a value that the value in the instance SHALL follow - that
  /// is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  /// example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the
  /// value provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each
  /// element provided in the pattern[x] array must (recursively) match at
  /// least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that
  /// each property in the pattern must be present in the complex object, and
  /// its value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final Count? patternCount;

  /// [patternDistance]
  /// Specifies a value that the value in the instance SHALL follow - that
  /// is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  /// example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the
  /// value provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each
  /// element provided in the pattern[x] array must (recursively) match at
  /// least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that
  /// each property in the pattern must be present in the complex object, and
  /// its value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final Distance? patternDistance;

  /// [patternDuration]
  /// Specifies a value that the value in the instance SHALL follow - that
  /// is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  /// example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the
  /// value provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each
  /// element provided in the pattern[x] array must (recursively) match at
  /// least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that
  /// each property in the pattern must be present in the complex object, and
  /// its value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final FhirDuration? patternDuration;

  /// [patternHumanName]
  /// Specifies a value that the value in the instance SHALL follow - that
  /// is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  /// example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the
  /// value provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each
  /// element provided in the pattern[x] array must (recursively) match at
  /// least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that
  /// each property in the pattern must be present in the complex object, and
  /// its value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final HumanName? patternHumanName;

  /// [patternIdentifier]
  /// Specifies a value that the value in the instance SHALL follow - that
  /// is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  /// example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the
  /// value provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each
  /// element provided in the pattern[x] array must (recursively) match at
  /// least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that
  /// each property in the pattern must be present in the complex object, and
  /// its value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final Identifier? patternIdentifier;

  /// [patternMoney]
  /// Specifies a value that the value in the instance SHALL follow - that
  /// is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  /// example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the
  /// value provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each
  /// element provided in the pattern[x] array must (recursively) match at
  /// least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that
  /// each property in the pattern must be present in the complex object, and
  /// its value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final Money? patternMoney;

  /// [patternPeriod]
  /// Specifies a value that the value in the instance SHALL follow - that
  /// is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  /// example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the
  /// value provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each
  /// element provided in the pattern[x] array must (recursively) match at
  /// least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that
  /// each property in the pattern must be present in the complex object, and
  /// its value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final Period? patternPeriod;

  /// [patternQuantity]
  /// Specifies a value that the value in the instance SHALL follow - that
  /// is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  /// example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the
  /// value provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each
  /// element provided in the pattern[x] array must (recursively) match at
  /// least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that
  /// each property in the pattern must be present in the complex object, and
  /// its value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final Quantity? patternQuantity;

  /// [patternRange]
  /// Specifies a value that the value in the instance SHALL follow - that
  /// is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  /// example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the
  /// value provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each
  /// element provided in the pattern[x] array must (recursively) match at
  /// least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that
  /// each property in the pattern must be present in the complex object, and
  /// its value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final Range? patternRange;

  /// [patternRatio]
  /// Specifies a value that the value in the instance SHALL follow - that
  /// is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  /// example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the
  /// value provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each
  /// element provided in the pattern[x] array must (recursively) match at
  /// least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that
  /// each property in the pattern must be present in the complex object, and
  /// its value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final Ratio? patternRatio;

  /// [patternRatioRange]
  /// Specifies a value that the value in the instance SHALL follow - that
  /// is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  /// example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the
  /// value provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each
  /// element provided in the pattern[x] array must (recursively) match at
  /// least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that
  /// each property in the pattern must be present in the complex object, and
  /// its value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final RatioRange? patternRatioRange;

  /// [patternReference]
  /// Specifies a value that the value in the instance SHALL follow - that
  /// is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  /// example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the
  /// value provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each
  /// element provided in the pattern[x] array must (recursively) match at
  /// least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that
  /// each property in the pattern must be present in the complex object, and
  /// its value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final Reference? patternReference;

  /// [patternSampledData]
  /// Specifies a value that the value in the instance SHALL follow - that
  /// is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  /// example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the
  /// value provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each
  /// element provided in the pattern[x] array must (recursively) match at
  /// least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that
  /// each property in the pattern must be present in the complex object, and
  /// its value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final SampledData? patternSampledData;

  /// [patternSignature]
  /// Specifies a value that the value in the instance SHALL follow - that
  /// is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  /// example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the
  /// value provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each
  /// element provided in the pattern[x] array must (recursively) match at
  /// least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that
  /// each property in the pattern must be present in the complex object, and
  /// its value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final Signature? patternSignature;

  /// [patternTiming]
  /// Specifies a value that the value in the instance SHALL follow - that
  /// is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  /// example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the
  /// value provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each
  /// element provided in the pattern[x] array must (recursively) match at
  /// least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that
  /// each property in the pattern must be present in the complex object, and
  /// its value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final Timing? patternTiming;

  /// [patternContactDetail]
  /// Specifies a value that the value in the instance SHALL follow - that
  /// is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  /// example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the
  /// value provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each
  /// element provided in the pattern[x] array must (recursively) match at
  /// least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that
  /// each property in the pattern must be present in the complex object, and
  /// its value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final ContactDetail? patternContactDetail;

  /// [patternContributor]
  /// Specifies a value that the value in the instance SHALL follow - that
  /// is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  /// example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the
  /// value provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each
  /// element provided in the pattern[x] array must (recursively) match at
  /// least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that
  /// each property in the pattern must be present in the complex object, and
  /// its value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final Contributor? patternContributor;

  /// [patternDataRequirement]
  /// Specifies a value that the value in the instance SHALL follow - that
  /// is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  /// example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the
  /// value provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each
  /// element provided in the pattern[x] array must (recursively) match at
  /// least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that
  /// each property in the pattern must be present in the complex object, and
  /// its value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final DataRequirement? patternDataRequirement;

  /// [patternExpression]
  /// Specifies a value that the value in the instance SHALL follow - that
  /// is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  /// example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the
  /// value provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each
  /// element provided in the pattern[x] array must (recursively) match at
  /// least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that
  /// each property in the pattern must be present in the complex object, and
  /// its value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final FhirExpression? patternExpression;

  /// [patternParameterDefinition]
  /// Specifies a value that the value in the instance SHALL follow - that
  /// is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  /// example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the
  /// value provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each
  /// element provided in the pattern[x] array must (recursively) match at
  /// least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that
  /// each property in the pattern must be present in the complex object, and
  /// its value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final ParameterDefinition? patternParameterDefinition;

  /// [patternRelatedArtifact]
  /// Specifies a value that the value in the instance SHALL follow - that
  /// is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  /// example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the
  /// value provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each
  /// element provided in the pattern[x] array must (recursively) match at
  /// least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that
  /// each property in the pattern must be present in the complex object, and
  /// its value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final RelatedArtifact? patternRelatedArtifact;

  /// [patternTriggerDefinition]
  /// Specifies a value that the value in the instance SHALL follow - that
  /// is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  /// example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the
  /// value provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each
  /// element provided in the pattern[x] array must (recursively) match at
  /// least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that
  /// each property in the pattern must be present in the complex object, and
  /// its value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final TriggerDefinition? patternTriggerDefinition;

  /// [patternUsageContext]
  /// Specifies a value that the value in the instance SHALL follow - that
  /// is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  /// example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the
  /// value provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each
  /// element provided in the pattern[x] array must (recursively) match at
  /// least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that
  /// each property in the pattern must be present in the complex object, and
  /// its value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final UsageContext? patternUsageContext;

  /// [patternDosage]
  /// Specifies a value that the value in the instance SHALL follow - that
  /// is, any value in the pattern must be found in the instance. Other
  /// additional values may be found too. This is effectively constraint by
  /// example.
  ///
  /// When pattern[x] is used to constrain a primitive, it means that the
  /// value provided in the pattern[x] must match the instance value exactly.
  ///
  /// When pattern[x] is used to constrain an array, it means that each
  /// element provided in the pattern[x] array must (recursively) match at
  /// least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that
  /// each property in the pattern must be present in the complex object, and
  /// its value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  final Dosage? patternDosage;

  /// [example]
  /// A sample value for this element demonstrating the type of information
  /// that would typically be found in the element.
  final List<ElementDefinitionExample>? example;

  /// [minValueDate]
  /// The minimum allowed value for the element. The value is inclusive. This
  /// is allowed for the types date, dateTime, instant, time, decimal,
  /// integer, and Quantity.
  final FhirDate? minValueDate;

  /// [minValueDateTime]
  /// The minimum allowed value for the element. The value is inclusive. This
  /// is allowed for the types date, dateTime, instant, time, decimal,
  /// integer, and Quantity.
  final FhirDateTime? minValueDateTime;

  /// [minValueInstant]
  /// The minimum allowed value for the element. The value is inclusive. This
  /// is allowed for the types date, dateTime, instant, time, decimal,
  /// integer, and Quantity.
  final FhirInstant? minValueInstant;

  /// [minValueTime]
  /// The minimum allowed value for the element. The value is inclusive. This
  /// is allowed for the types date, dateTime, instant, time, decimal,
  /// integer, and Quantity.
  final FhirTime? minValueTime;

  /// [minValueDecimal]
  /// The minimum allowed value for the element. The value is inclusive. This
  /// is allowed for the types date, dateTime, instant, time, decimal,
  /// integer, and Quantity.
  final FhirDecimal? minValueDecimal;

  /// [minValueInteger]
  /// The minimum allowed value for the element. The value is inclusive. This
  /// is allowed for the types date, dateTime, instant, time, decimal,
  /// integer, and Quantity.
  final FhirInteger? minValueInteger;

  /// [minValuePositiveInt]
  /// The minimum allowed value for the element. The value is inclusive. This
  /// is allowed for the types date, dateTime, instant, time, decimal,
  /// integer, and Quantity.
  final FhirPositiveInt? minValuePositiveInt;

  /// [minValueUnsignedInt]
  /// The minimum allowed value for the element. The value is inclusive. This
  /// is allowed for the types date, dateTime, instant, time, decimal,
  /// integer, and Quantity.
  final FhirUnsignedInt? minValueUnsignedInt;

  /// [minValueQuantity]
  /// The minimum allowed value for the element. The value is inclusive. This
  /// is allowed for the types date, dateTime, instant, time, decimal,
  /// integer, and Quantity.
  final Quantity? minValueQuantity;

  /// [maxValueDate]
  /// The maximum allowed value for the element. The value is inclusive. This
  /// is allowed for the types date, dateTime, instant, time, decimal,
  /// integer, and Quantity.
  final FhirDate? maxValueDate;

  /// [maxValueDateTime]
  /// The maximum allowed value for the element. The value is inclusive. This
  /// is allowed for the types date, dateTime, instant, time, decimal,
  /// integer, and Quantity.
  final FhirDateTime? maxValueDateTime;

  /// [maxValueInstant]
  /// The maximum allowed value for the element. The value is inclusive. This
  /// is allowed for the types date, dateTime, instant, time, decimal,
  /// integer, and Quantity.
  final FhirInstant? maxValueInstant;

  /// [maxValueTime]
  /// The maximum allowed value for the element. The value is inclusive. This
  /// is allowed for the types date, dateTime, instant, time, decimal,
  /// integer, and Quantity.
  final FhirTime? maxValueTime;

  /// [maxValueDecimal]
  /// The maximum allowed value for the element. The value is inclusive. This
  /// is allowed for the types date, dateTime, instant, time, decimal,
  /// integer, and Quantity.
  final FhirDecimal? maxValueDecimal;

  /// [maxValueInteger]
  /// The maximum allowed value for the element. The value is inclusive. This
  /// is allowed for the types date, dateTime, instant, time, decimal,
  /// integer, and Quantity.
  final FhirInteger? maxValueInteger;

  /// [maxValuePositiveInt]
  /// The maximum allowed value for the element. The value is inclusive. This
  /// is allowed for the types date, dateTime, instant, time, decimal,
  /// integer, and Quantity.
  final FhirPositiveInt? maxValuePositiveInt;

  /// [maxValueUnsignedInt]
  /// The maximum allowed value for the element. The value is inclusive. This
  /// is allowed for the types date, dateTime, instant, time, decimal,
  /// integer, and Quantity.
  final FhirUnsignedInt? maxValueUnsignedInt;

  /// [maxValueQuantity]
  /// The maximum allowed value for the element. The value is inclusive. This
  /// is allowed for the types date, dateTime, instant, time, decimal,
  /// integer, and Quantity.
  final Quantity? maxValueQuantity;

  /// [maxLength]
  /// Indicates the maximum length in characters that is permitted to be
  /// present in conformant instances and which is expected to be supported
  /// by conformant consumers that support the element.
  final FhirInteger? maxLength;

  /// [condition]
  /// A reference to an invariant that may make additional statements about
  /// the cardinality or value in the instance.
  final List<FhirId>? condition;

  /// [constraint]
  /// Formal constraints such as co-occurrence and other constraints that can
  /// be computationally evaluated within the context of the instance.
  final List<ElementDefinitionConstraint>? constraint;

  /// [mustSupport]
  /// If true, implementations that produce or consume resources SHALL
  /// provide "support" for the element in some meaningful way. If false, the
  /// element may be ignored and not supported. If false, whether to populate
  /// or use the data element in any way is at the discretion of the
  /// implementation.
  final FhirBoolean? mustSupport;

  /// [isModifier]
  /// If true, the value of this element affects the interpretation of the
  /// element or resource that contains it, and the value of the element
  /// cannot be ignored. Typically, this is used for status, negation and
  /// qualification codes. The effect of this is that the element cannot be
  /// ignored by systems: they SHALL either recognize the element and process
  /// it, and/or a pre-determination has been made that it is not relevant to
  /// their particular system.
  final FhirBoolean? isModifier;

  /// [isModifierReason]
  /// Explains how that element affects the interpretation of the resource or
  /// element that contains it.
  final FhirString? isModifierReason;

  /// [isSummary]
  /// Whether the element should be included if a client requests a search
  /// with the parameter _summary=true.
  final FhirBoolean? isSummary;

  /// [binding]
  /// Binds to a value set if this element is coded (code, Coding,
  /// CodeableConcept, Quantity), or the data types (string, uri).
  final ElementDefinitionBinding? binding;

  /// [mapping]
  /// Identifies a concept from an external specification that roughly
  /// corresponds to this element.
  final List<ElementDefinitionMapping>? mapping;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    final fieldJson3 = path.toJson();
    json['path'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_path'] = fieldJson3['_value'];
    }

    if (representation != null && representation!.isNotEmpty) {
      final fieldJson4 = representation!.map((e) => e.toJson()).toList();
      json['representation'] = fieldJson4.map((e) => e['value']).toList();
      if (fieldJson4.any((e) => e['_value'] != null)) {
        json['_representation'] = fieldJson4.map((e) => e['_value']).toList();
      }
    }

    if (sliceName != null) {
      final fieldJson5 = sliceName!.toJson();
      json['sliceName'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_sliceName'] = fieldJson5['_value'];
      }
    }

    if (sliceIsConstraining != null) {
      final fieldJson6 = sliceIsConstraining!.toJson();
      json['sliceIsConstraining'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_sliceIsConstraining'] = fieldJson6['_value'];
      }
    }

    if (label != null) {
      final fieldJson7 = label!.toJson();
      json['label'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_label'] = fieldJson7['_value'];
      }
    }

    if (code != null && code!.isNotEmpty) {
      final fieldJson8 = code!.map((e) => e.toJson()).toList();
      json['code'] = fieldJson8.map((e) => e['value']).toList();
      if (fieldJson8.any((e) => e['_value'] != null)) {
        json['_code'] = fieldJson8.map((e) => e['_value']).toList();
      }
    }

    if (slicing != null) {
      final fieldJson9 = slicing!.toJson();
      json['slicing'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_slicing'] = fieldJson9['_value'];
      }
    }

    if (short != null) {
      final fieldJson10 = short!.toJson();
      json['short'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_short'] = fieldJson10['_value'];
      }
    }

    if (definition != null) {
      final fieldJson11 = definition!.toJson();
      json['definition'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_definition'] = fieldJson11['_value'];
      }
    }

    if (comment != null) {
      final fieldJson12 = comment!.toJson();
      json['comment'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_comment'] = fieldJson12['_value'];
      }
    }

    if (requirements != null) {
      final fieldJson13 = requirements!.toJson();
      json['requirements'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_requirements'] = fieldJson13['_value'];
      }
    }

    if (alias != null && alias!.isNotEmpty) {
      final fieldJson14 = alias!.map((e) => e.toJson()).toList();
      json['alias'] = fieldJson14.map((e) => e['value']).toList();
      if (fieldJson14.any((e) => e['_value'] != null)) {
        json['_alias'] = fieldJson14.map((e) => e['_value']).toList();
      }
    }

    if (min != null) {
      final fieldJson15 = min!.toJson();
      json['min'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_min'] = fieldJson15['_value'];
      }
    }

    if (max != null) {
      final fieldJson16 = max!.toJson();
      json['max'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_max'] = fieldJson16['_value'];
      }
    }

    if (base != null) {
      final fieldJson17 = base!.toJson();
      json['base'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_base'] = fieldJson17['_value'];
      }
    }

    if (contentReference != null) {
      final fieldJson18 = contentReference!.toJson();
      json['contentReference'] = fieldJson18['value'];
      if (fieldJson18['_value'] != null) {
        json['_contentReference'] = fieldJson18['_value'];
      }
    }

    if (type != null && type!.isNotEmpty) {
      final fieldJson19 = type!.map((e) => e.toJson()).toList();
      json['type'] = fieldJson19.map((e) => e['value']).toList();
      if (fieldJson19.any((e) => e['_value'] != null)) {
        json['_type'] = fieldJson19.map((e) => e['_value']).toList();
      }
    }

    if (defaultValueBase64Binary != null) {
      final fieldJson20 = defaultValueBase64Binary!.toJson();
      json['defaultValueBase64Binary'] = fieldJson20['value'];
      if (fieldJson20['_value'] != null) {
        json['_defaultValueBase64Binary'] = fieldJson20['_value'];
      }
    }

    if (defaultValueBoolean != null) {
      final fieldJson21 = defaultValueBoolean!.toJson();
      json['defaultValueBoolean'] = fieldJson21['value'];
      if (fieldJson21['_value'] != null) {
        json['_defaultValueBoolean'] = fieldJson21['_value'];
      }
    }

    if (defaultValueCanonical != null) {
      final fieldJson22 = defaultValueCanonical!.toJson();
      json['defaultValueCanonical'] = fieldJson22['value'];
      if (fieldJson22['_value'] != null) {
        json['_defaultValueCanonical'] = fieldJson22['_value'];
      }
    }

    if (defaultValueCode != null) {
      final fieldJson23 = defaultValueCode!.toJson();
      json['defaultValueCode'] = fieldJson23['value'];
      if (fieldJson23['_value'] != null) {
        json['_defaultValueCode'] = fieldJson23['_value'];
      }
    }

    if (defaultValueDate != null) {
      final fieldJson24 = defaultValueDate!.toJson();
      json['defaultValueDate'] = fieldJson24['value'];
      if (fieldJson24['_value'] != null) {
        json['_defaultValueDate'] = fieldJson24['_value'];
      }
    }

    if (defaultValueDateTime != null) {
      final fieldJson25 = defaultValueDateTime!.toJson();
      json['defaultValueDateTime'] = fieldJson25['value'];
      if (fieldJson25['_value'] != null) {
        json['_defaultValueDateTime'] = fieldJson25['_value'];
      }
    }

    if (defaultValueDecimal != null) {
      final fieldJson26 = defaultValueDecimal!.toJson();
      json['defaultValueDecimal'] = fieldJson26['value'];
      if (fieldJson26['_value'] != null) {
        json['_defaultValueDecimal'] = fieldJson26['_value'];
      }
    }

    if (defaultValueId != null) {
      final fieldJson27 = defaultValueId!.toJson();
      json['defaultValueId'] = fieldJson27['value'];
      if (fieldJson27['_value'] != null) {
        json['_defaultValueId'] = fieldJson27['_value'];
      }
    }

    if (defaultValueInstant != null) {
      final fieldJson28 = defaultValueInstant!.toJson();
      json['defaultValueInstant'] = fieldJson28['value'];
      if (fieldJson28['_value'] != null) {
        json['_defaultValueInstant'] = fieldJson28['_value'];
      }
    }

    if (defaultValueInteger != null) {
      final fieldJson29 = defaultValueInteger!.toJson();
      json['defaultValueInteger'] = fieldJson29['value'];
      if (fieldJson29['_value'] != null) {
        json['_defaultValueInteger'] = fieldJson29['_value'];
      }
    }

    if (defaultValueMarkdown != null) {
      final fieldJson30 = defaultValueMarkdown!.toJson();
      json['defaultValueMarkdown'] = fieldJson30['value'];
      if (fieldJson30['_value'] != null) {
        json['_defaultValueMarkdown'] = fieldJson30['_value'];
      }
    }

    if (defaultValueOid != null) {
      final fieldJson31 = defaultValueOid!.toJson();
      json['defaultValueOid'] = fieldJson31['value'];
      if (fieldJson31['_value'] != null) {
        json['_defaultValueOid'] = fieldJson31['_value'];
      }
    }

    if (defaultValuePositiveInt != null) {
      final fieldJson32 = defaultValuePositiveInt!.toJson();
      json['defaultValuePositiveInt'] = fieldJson32['value'];
      if (fieldJson32['_value'] != null) {
        json['_defaultValuePositiveInt'] = fieldJson32['_value'];
      }
    }

    if (defaultValueString != null) {
      final fieldJson33 = defaultValueString!.toJson();
      json['defaultValueString'] = fieldJson33['value'];
      if (fieldJson33['_value'] != null) {
        json['_defaultValueString'] = fieldJson33['_value'];
      }
    }

    if (defaultValueTime != null) {
      final fieldJson34 = defaultValueTime!.toJson();
      json['defaultValueTime'] = fieldJson34['value'];
      if (fieldJson34['_value'] != null) {
        json['_defaultValueTime'] = fieldJson34['_value'];
      }
    }

    if (defaultValueUnsignedInt != null) {
      final fieldJson35 = defaultValueUnsignedInt!.toJson();
      json['defaultValueUnsignedInt'] = fieldJson35['value'];
      if (fieldJson35['_value'] != null) {
        json['_defaultValueUnsignedInt'] = fieldJson35['_value'];
      }
    }

    if (defaultValueUri != null) {
      final fieldJson36 = defaultValueUri!.toJson();
      json['defaultValueUri'] = fieldJson36['value'];
      if (fieldJson36['_value'] != null) {
        json['_defaultValueUri'] = fieldJson36['_value'];
      }
    }

    if (defaultValueUrl != null) {
      final fieldJson37 = defaultValueUrl!.toJson();
      json['defaultValueUrl'] = fieldJson37['value'];
      if (fieldJson37['_value'] != null) {
        json['_defaultValueUrl'] = fieldJson37['_value'];
      }
    }

    if (defaultValueUuid != null) {
      final fieldJson38 = defaultValueUuid!.toJson();
      json['defaultValueUuid'] = fieldJson38['value'];
      if (fieldJson38['_value'] != null) {
        json['_defaultValueUuid'] = fieldJson38['_value'];
      }
    }

    if (defaultValueAddress != null) {
      final fieldJson39 = defaultValueAddress!.toJson();
      json['defaultValueAddress'] = fieldJson39['value'];
      if (fieldJson39['_value'] != null) {
        json['_defaultValueAddress'] = fieldJson39['_value'];
      }
    }

    if (defaultValueAge != null) {
      final fieldJson40 = defaultValueAge!.toJson();
      json['defaultValueAge'] = fieldJson40['value'];
      if (fieldJson40['_value'] != null) {
        json['_defaultValueAge'] = fieldJson40['_value'];
      }
    }

    if (defaultValueAnnotation != null) {
      final fieldJson41 = defaultValueAnnotation!.toJson();
      json['defaultValueAnnotation'] = fieldJson41['value'];
      if (fieldJson41['_value'] != null) {
        json['_defaultValueAnnotation'] = fieldJson41['_value'];
      }
    }

    if (defaultValueAttachment != null) {
      final fieldJson42 = defaultValueAttachment!.toJson();
      json['defaultValueAttachment'] = fieldJson42['value'];
      if (fieldJson42['_value'] != null) {
        json['_defaultValueAttachment'] = fieldJson42['_value'];
      }
    }

    if (defaultValueCodeableConcept != null) {
      final fieldJson43 = defaultValueCodeableConcept!.toJson();
      json['defaultValueCodeableConcept'] = fieldJson43['value'];
      if (fieldJson43['_value'] != null) {
        json['_defaultValueCodeableConcept'] = fieldJson43['_value'];
      }
    }

    if (defaultValueCodeableReference != null) {
      final fieldJson44 = defaultValueCodeableReference!.toJson();
      json['defaultValueCodeableReference'] = fieldJson44['value'];
      if (fieldJson44['_value'] != null) {
        json['_defaultValueCodeableReference'] = fieldJson44['_value'];
      }
    }

    if (defaultValueCoding != null) {
      final fieldJson45 = defaultValueCoding!.toJson();
      json['defaultValueCoding'] = fieldJson45['value'];
      if (fieldJson45['_value'] != null) {
        json['_defaultValueCoding'] = fieldJson45['_value'];
      }
    }

    if (defaultValueContactPoint != null) {
      final fieldJson46 = defaultValueContactPoint!.toJson();
      json['defaultValueContactPoint'] = fieldJson46['value'];
      if (fieldJson46['_value'] != null) {
        json['_defaultValueContactPoint'] = fieldJson46['_value'];
      }
    }

    if (defaultValueCount != null) {
      final fieldJson47 = defaultValueCount!.toJson();
      json['defaultValueCount'] = fieldJson47['value'];
      if (fieldJson47['_value'] != null) {
        json['_defaultValueCount'] = fieldJson47['_value'];
      }
    }

    if (defaultValueDistance != null) {
      final fieldJson48 = defaultValueDistance!.toJson();
      json['defaultValueDistance'] = fieldJson48['value'];
      if (fieldJson48['_value'] != null) {
        json['_defaultValueDistance'] = fieldJson48['_value'];
      }
    }

    if (defaultValueDuration != null) {
      final fieldJson49 = defaultValueDuration!.toJson();
      json['defaultValueDuration'] = fieldJson49['value'];
      if (fieldJson49['_value'] != null) {
        json['_defaultValueDuration'] = fieldJson49['_value'];
      }
    }

    if (defaultValueHumanName != null) {
      final fieldJson50 = defaultValueHumanName!.toJson();
      json['defaultValueHumanName'] = fieldJson50['value'];
      if (fieldJson50['_value'] != null) {
        json['_defaultValueHumanName'] = fieldJson50['_value'];
      }
    }

    if (defaultValueIdentifier != null) {
      final fieldJson51 = defaultValueIdentifier!.toJson();
      json['defaultValueIdentifier'] = fieldJson51['value'];
      if (fieldJson51['_value'] != null) {
        json['_defaultValueIdentifier'] = fieldJson51['_value'];
      }
    }

    if (defaultValueMoney != null) {
      final fieldJson52 = defaultValueMoney!.toJson();
      json['defaultValueMoney'] = fieldJson52['value'];
      if (fieldJson52['_value'] != null) {
        json['_defaultValueMoney'] = fieldJson52['_value'];
      }
    }

    if (defaultValuePeriod != null) {
      final fieldJson53 = defaultValuePeriod!.toJson();
      json['defaultValuePeriod'] = fieldJson53['value'];
      if (fieldJson53['_value'] != null) {
        json['_defaultValuePeriod'] = fieldJson53['_value'];
      }
    }

    if (defaultValueQuantity != null) {
      final fieldJson54 = defaultValueQuantity!.toJson();
      json['defaultValueQuantity'] = fieldJson54['value'];
      if (fieldJson54['_value'] != null) {
        json['_defaultValueQuantity'] = fieldJson54['_value'];
      }
    }

    if (defaultValueRange != null) {
      final fieldJson55 = defaultValueRange!.toJson();
      json['defaultValueRange'] = fieldJson55['value'];
      if (fieldJson55['_value'] != null) {
        json['_defaultValueRange'] = fieldJson55['_value'];
      }
    }

    if (defaultValueRatio != null) {
      final fieldJson56 = defaultValueRatio!.toJson();
      json['defaultValueRatio'] = fieldJson56['value'];
      if (fieldJson56['_value'] != null) {
        json['_defaultValueRatio'] = fieldJson56['_value'];
      }
    }

    if (defaultValueRatioRange != null) {
      final fieldJson57 = defaultValueRatioRange!.toJson();
      json['defaultValueRatioRange'] = fieldJson57['value'];
      if (fieldJson57['_value'] != null) {
        json['_defaultValueRatioRange'] = fieldJson57['_value'];
      }
    }

    if (defaultValueReference != null) {
      final fieldJson58 = defaultValueReference!.toJson();
      json['defaultValueReference'] = fieldJson58['value'];
      if (fieldJson58['_value'] != null) {
        json['_defaultValueReference'] = fieldJson58['_value'];
      }
    }

    if (defaultValueSampledData != null) {
      final fieldJson59 = defaultValueSampledData!.toJson();
      json['defaultValueSampledData'] = fieldJson59['value'];
      if (fieldJson59['_value'] != null) {
        json['_defaultValueSampledData'] = fieldJson59['_value'];
      }
    }

    if (defaultValueSignature != null) {
      final fieldJson60 = defaultValueSignature!.toJson();
      json['defaultValueSignature'] = fieldJson60['value'];
      if (fieldJson60['_value'] != null) {
        json['_defaultValueSignature'] = fieldJson60['_value'];
      }
    }

    if (defaultValueTiming != null) {
      final fieldJson61 = defaultValueTiming!.toJson();
      json['defaultValueTiming'] = fieldJson61['value'];
      if (fieldJson61['_value'] != null) {
        json['_defaultValueTiming'] = fieldJson61['_value'];
      }
    }

    if (defaultValueContactDetail != null) {
      final fieldJson62 = defaultValueContactDetail!.toJson();
      json['defaultValueContactDetail'] = fieldJson62['value'];
      if (fieldJson62['_value'] != null) {
        json['_defaultValueContactDetail'] = fieldJson62['_value'];
      }
    }

    if (defaultValueContributor != null) {
      final fieldJson63 = defaultValueContributor!.toJson();
      json['defaultValueContributor'] = fieldJson63['value'];
      if (fieldJson63['_value'] != null) {
        json['_defaultValueContributor'] = fieldJson63['_value'];
      }
    }

    if (defaultValueDataRequirement != null) {
      final fieldJson64 = defaultValueDataRequirement!.toJson();
      json['defaultValueDataRequirement'] = fieldJson64['value'];
      if (fieldJson64['_value'] != null) {
        json['_defaultValueDataRequirement'] = fieldJson64['_value'];
      }
    }

    if (defaultValueExpression != null) {
      final fieldJson65 = defaultValueExpression!.toJson();
      json['defaultValueExpression'] = fieldJson65['value'];
      if (fieldJson65['_value'] != null) {
        json['_defaultValueExpression'] = fieldJson65['_value'];
      }
    }

    if (defaultValueParameterDefinition != null) {
      final fieldJson66 = defaultValueParameterDefinition!.toJson();
      json['defaultValueParameterDefinition'] = fieldJson66['value'];
      if (fieldJson66['_value'] != null) {
        json['_defaultValueParameterDefinition'] = fieldJson66['_value'];
      }
    }

    if (defaultValueRelatedArtifact != null) {
      final fieldJson67 = defaultValueRelatedArtifact!.toJson();
      json['defaultValueRelatedArtifact'] = fieldJson67['value'];
      if (fieldJson67['_value'] != null) {
        json['_defaultValueRelatedArtifact'] = fieldJson67['_value'];
      }
    }

    if (defaultValueTriggerDefinition != null) {
      final fieldJson68 = defaultValueTriggerDefinition!.toJson();
      json['defaultValueTriggerDefinition'] = fieldJson68['value'];
      if (fieldJson68['_value'] != null) {
        json['_defaultValueTriggerDefinition'] = fieldJson68['_value'];
      }
    }

    if (defaultValueUsageContext != null) {
      final fieldJson69 = defaultValueUsageContext!.toJson();
      json['defaultValueUsageContext'] = fieldJson69['value'];
      if (fieldJson69['_value'] != null) {
        json['_defaultValueUsageContext'] = fieldJson69['_value'];
      }
    }

    if (defaultValueDosage != null) {
      final fieldJson70 = defaultValueDosage!.toJson();
      json['defaultValueDosage'] = fieldJson70['value'];
      if (fieldJson70['_value'] != null) {
        json['_defaultValueDosage'] = fieldJson70['_value'];
      }
    }

    if (meaningWhenMissing != null) {
      final fieldJson71 = meaningWhenMissing!.toJson();
      json['meaningWhenMissing'] = fieldJson71['value'];
      if (fieldJson71['_value'] != null) {
        json['_meaningWhenMissing'] = fieldJson71['_value'];
      }
    }

    if (orderMeaning != null) {
      final fieldJson72 = orderMeaning!.toJson();
      json['orderMeaning'] = fieldJson72['value'];
      if (fieldJson72['_value'] != null) {
        json['_orderMeaning'] = fieldJson72['_value'];
      }
    }

    if (fixedBase64Binary != null) {
      final fieldJson73 = fixedBase64Binary!.toJson();
      json['fixedBase64Binary'] = fieldJson73['value'];
      if (fieldJson73['_value'] != null) {
        json['_fixedBase64Binary'] = fieldJson73['_value'];
      }
    }

    if (fixedBoolean != null) {
      final fieldJson74 = fixedBoolean!.toJson();
      json['fixedBoolean'] = fieldJson74['value'];
      if (fieldJson74['_value'] != null) {
        json['_fixedBoolean'] = fieldJson74['_value'];
      }
    }

    if (fixedCanonical != null) {
      final fieldJson75 = fixedCanonical!.toJson();
      json['fixedCanonical'] = fieldJson75['value'];
      if (fieldJson75['_value'] != null) {
        json['_fixedCanonical'] = fieldJson75['_value'];
      }
    }

    if (fixedCode != null) {
      final fieldJson76 = fixedCode!.toJson();
      json['fixedCode'] = fieldJson76['value'];
      if (fieldJson76['_value'] != null) {
        json['_fixedCode'] = fieldJson76['_value'];
      }
    }

    if (fixedDate != null) {
      final fieldJson77 = fixedDate!.toJson();
      json['fixedDate'] = fieldJson77['value'];
      if (fieldJson77['_value'] != null) {
        json['_fixedDate'] = fieldJson77['_value'];
      }
    }

    if (fixedDateTime != null) {
      final fieldJson78 = fixedDateTime!.toJson();
      json['fixedDateTime'] = fieldJson78['value'];
      if (fieldJson78['_value'] != null) {
        json['_fixedDateTime'] = fieldJson78['_value'];
      }
    }

    if (fixedDecimal != null) {
      final fieldJson79 = fixedDecimal!.toJson();
      json['fixedDecimal'] = fieldJson79['value'];
      if (fieldJson79['_value'] != null) {
        json['_fixedDecimal'] = fieldJson79['_value'];
      }
    }

    if (fixedId != null) {
      final fieldJson80 = fixedId!.toJson();
      json['fixedId'] = fieldJson80['value'];
      if (fieldJson80['_value'] != null) {
        json['_fixedId'] = fieldJson80['_value'];
      }
    }

    if (fixedInstant != null) {
      final fieldJson81 = fixedInstant!.toJson();
      json['fixedInstant'] = fieldJson81['value'];
      if (fieldJson81['_value'] != null) {
        json['_fixedInstant'] = fieldJson81['_value'];
      }
    }

    if (fixedInteger != null) {
      final fieldJson82 = fixedInteger!.toJson();
      json['fixedInteger'] = fieldJson82['value'];
      if (fieldJson82['_value'] != null) {
        json['_fixedInteger'] = fieldJson82['_value'];
      }
    }

    if (fixedMarkdown != null) {
      final fieldJson83 = fixedMarkdown!.toJson();
      json['fixedMarkdown'] = fieldJson83['value'];
      if (fieldJson83['_value'] != null) {
        json['_fixedMarkdown'] = fieldJson83['_value'];
      }
    }

    if (fixedOid != null) {
      final fieldJson84 = fixedOid!.toJson();
      json['fixedOid'] = fieldJson84['value'];
      if (fieldJson84['_value'] != null) {
        json['_fixedOid'] = fieldJson84['_value'];
      }
    }

    if (fixedPositiveInt != null) {
      final fieldJson85 = fixedPositiveInt!.toJson();
      json['fixedPositiveInt'] = fieldJson85['value'];
      if (fieldJson85['_value'] != null) {
        json['_fixedPositiveInt'] = fieldJson85['_value'];
      }
    }

    if (fixedString != null) {
      final fieldJson86 = fixedString!.toJson();
      json['fixedString'] = fieldJson86['value'];
      if (fieldJson86['_value'] != null) {
        json['_fixedString'] = fieldJson86['_value'];
      }
    }

    if (fixedTime != null) {
      final fieldJson87 = fixedTime!.toJson();
      json['fixedTime'] = fieldJson87['value'];
      if (fieldJson87['_value'] != null) {
        json['_fixedTime'] = fieldJson87['_value'];
      }
    }

    if (fixedUnsignedInt != null) {
      final fieldJson88 = fixedUnsignedInt!.toJson();
      json['fixedUnsignedInt'] = fieldJson88['value'];
      if (fieldJson88['_value'] != null) {
        json['_fixedUnsignedInt'] = fieldJson88['_value'];
      }
    }

    if (fixedUri != null) {
      final fieldJson89 = fixedUri!.toJson();
      json['fixedUri'] = fieldJson89['value'];
      if (fieldJson89['_value'] != null) {
        json['_fixedUri'] = fieldJson89['_value'];
      }
    }

    if (fixedUrl != null) {
      final fieldJson90 = fixedUrl!.toJson();
      json['fixedUrl'] = fieldJson90['value'];
      if (fieldJson90['_value'] != null) {
        json['_fixedUrl'] = fieldJson90['_value'];
      }
    }

    if (fixedUuid != null) {
      final fieldJson91 = fixedUuid!.toJson();
      json['fixedUuid'] = fieldJson91['value'];
      if (fieldJson91['_value'] != null) {
        json['_fixedUuid'] = fieldJson91['_value'];
      }
    }

    if (fixedAddress != null) {
      final fieldJson92 = fixedAddress!.toJson();
      json['fixedAddress'] = fieldJson92['value'];
      if (fieldJson92['_value'] != null) {
        json['_fixedAddress'] = fieldJson92['_value'];
      }
    }

    if (fixedAge != null) {
      final fieldJson93 = fixedAge!.toJson();
      json['fixedAge'] = fieldJson93['value'];
      if (fieldJson93['_value'] != null) {
        json['_fixedAge'] = fieldJson93['_value'];
      }
    }

    if (fixedAnnotation != null) {
      final fieldJson94 = fixedAnnotation!.toJson();
      json['fixedAnnotation'] = fieldJson94['value'];
      if (fieldJson94['_value'] != null) {
        json['_fixedAnnotation'] = fieldJson94['_value'];
      }
    }

    if (fixedAttachment != null) {
      final fieldJson95 = fixedAttachment!.toJson();
      json['fixedAttachment'] = fieldJson95['value'];
      if (fieldJson95['_value'] != null) {
        json['_fixedAttachment'] = fieldJson95['_value'];
      }
    }

    if (fixedCodeableConcept != null) {
      final fieldJson96 = fixedCodeableConcept!.toJson();
      json['fixedCodeableConcept'] = fieldJson96['value'];
      if (fieldJson96['_value'] != null) {
        json['_fixedCodeableConcept'] = fieldJson96['_value'];
      }
    }

    if (fixedCodeableReference != null) {
      final fieldJson97 = fixedCodeableReference!.toJson();
      json['fixedCodeableReference'] = fieldJson97['value'];
      if (fieldJson97['_value'] != null) {
        json['_fixedCodeableReference'] = fieldJson97['_value'];
      }
    }

    if (fixedCoding != null) {
      final fieldJson98 = fixedCoding!.toJson();
      json['fixedCoding'] = fieldJson98['value'];
      if (fieldJson98['_value'] != null) {
        json['_fixedCoding'] = fieldJson98['_value'];
      }
    }

    if (fixedContactPoint != null) {
      final fieldJson99 = fixedContactPoint!.toJson();
      json['fixedContactPoint'] = fieldJson99['value'];
      if (fieldJson99['_value'] != null) {
        json['_fixedContactPoint'] = fieldJson99['_value'];
      }
    }

    if (fixedCount != null) {
      final fieldJson100 = fixedCount!.toJson();
      json['fixedCount'] = fieldJson100['value'];
      if (fieldJson100['_value'] != null) {
        json['_fixedCount'] = fieldJson100['_value'];
      }
    }

    if (fixedDistance != null) {
      final fieldJson101 = fixedDistance!.toJson();
      json['fixedDistance'] = fieldJson101['value'];
      if (fieldJson101['_value'] != null) {
        json['_fixedDistance'] = fieldJson101['_value'];
      }
    }

    if (fixedDuration != null) {
      final fieldJson102 = fixedDuration!.toJson();
      json['fixedDuration'] = fieldJson102['value'];
      if (fieldJson102['_value'] != null) {
        json['_fixedDuration'] = fieldJson102['_value'];
      }
    }

    if (fixedHumanName != null) {
      final fieldJson103 = fixedHumanName!.toJson();
      json['fixedHumanName'] = fieldJson103['value'];
      if (fieldJson103['_value'] != null) {
        json['_fixedHumanName'] = fieldJson103['_value'];
      }
    }

    if (fixedIdentifier != null) {
      final fieldJson104 = fixedIdentifier!.toJson();
      json['fixedIdentifier'] = fieldJson104['value'];
      if (fieldJson104['_value'] != null) {
        json['_fixedIdentifier'] = fieldJson104['_value'];
      }
    }

    if (fixedMoney != null) {
      final fieldJson105 = fixedMoney!.toJson();
      json['fixedMoney'] = fieldJson105['value'];
      if (fieldJson105['_value'] != null) {
        json['_fixedMoney'] = fieldJson105['_value'];
      }
    }

    if (fixedPeriod != null) {
      final fieldJson106 = fixedPeriod!.toJson();
      json['fixedPeriod'] = fieldJson106['value'];
      if (fieldJson106['_value'] != null) {
        json['_fixedPeriod'] = fieldJson106['_value'];
      }
    }

    if (fixedQuantity != null) {
      final fieldJson107 = fixedQuantity!.toJson();
      json['fixedQuantity'] = fieldJson107['value'];
      if (fieldJson107['_value'] != null) {
        json['_fixedQuantity'] = fieldJson107['_value'];
      }
    }

    if (fixedRange != null) {
      final fieldJson108 = fixedRange!.toJson();
      json['fixedRange'] = fieldJson108['value'];
      if (fieldJson108['_value'] != null) {
        json['_fixedRange'] = fieldJson108['_value'];
      }
    }

    if (fixedRatio != null) {
      final fieldJson109 = fixedRatio!.toJson();
      json['fixedRatio'] = fieldJson109['value'];
      if (fieldJson109['_value'] != null) {
        json['_fixedRatio'] = fieldJson109['_value'];
      }
    }

    if (fixedRatioRange != null) {
      final fieldJson110 = fixedRatioRange!.toJson();
      json['fixedRatioRange'] = fieldJson110['value'];
      if (fieldJson110['_value'] != null) {
        json['_fixedRatioRange'] = fieldJson110['_value'];
      }
    }

    if (fixedReference != null) {
      final fieldJson111 = fixedReference!.toJson();
      json['fixedReference'] = fieldJson111['value'];
      if (fieldJson111['_value'] != null) {
        json['_fixedReference'] = fieldJson111['_value'];
      }
    }

    if (fixedSampledData != null) {
      final fieldJson112 = fixedSampledData!.toJson();
      json['fixedSampledData'] = fieldJson112['value'];
      if (fieldJson112['_value'] != null) {
        json['_fixedSampledData'] = fieldJson112['_value'];
      }
    }

    if (fixedSignature != null) {
      final fieldJson113 = fixedSignature!.toJson();
      json['fixedSignature'] = fieldJson113['value'];
      if (fieldJson113['_value'] != null) {
        json['_fixedSignature'] = fieldJson113['_value'];
      }
    }

    if (fixedTiming != null) {
      final fieldJson114 = fixedTiming!.toJson();
      json['fixedTiming'] = fieldJson114['value'];
      if (fieldJson114['_value'] != null) {
        json['_fixedTiming'] = fieldJson114['_value'];
      }
    }

    if (fixedContactDetail != null) {
      final fieldJson115 = fixedContactDetail!.toJson();
      json['fixedContactDetail'] = fieldJson115['value'];
      if (fieldJson115['_value'] != null) {
        json['_fixedContactDetail'] = fieldJson115['_value'];
      }
    }

    if (fixedContributor != null) {
      final fieldJson116 = fixedContributor!.toJson();
      json['fixedContributor'] = fieldJson116['value'];
      if (fieldJson116['_value'] != null) {
        json['_fixedContributor'] = fieldJson116['_value'];
      }
    }

    if (fixedDataRequirement != null) {
      final fieldJson117 = fixedDataRequirement!.toJson();
      json['fixedDataRequirement'] = fieldJson117['value'];
      if (fieldJson117['_value'] != null) {
        json['_fixedDataRequirement'] = fieldJson117['_value'];
      }
    }

    if (fixedExpression != null) {
      final fieldJson118 = fixedExpression!.toJson();
      json['fixedExpression'] = fieldJson118['value'];
      if (fieldJson118['_value'] != null) {
        json['_fixedExpression'] = fieldJson118['_value'];
      }
    }

    if (fixedParameterDefinition != null) {
      final fieldJson119 = fixedParameterDefinition!.toJson();
      json['fixedParameterDefinition'] = fieldJson119['value'];
      if (fieldJson119['_value'] != null) {
        json['_fixedParameterDefinition'] = fieldJson119['_value'];
      }
    }

    if (fixedRelatedArtifact != null) {
      final fieldJson120 = fixedRelatedArtifact!.toJson();
      json['fixedRelatedArtifact'] = fieldJson120['value'];
      if (fieldJson120['_value'] != null) {
        json['_fixedRelatedArtifact'] = fieldJson120['_value'];
      }
    }

    if (fixedTriggerDefinition != null) {
      final fieldJson121 = fixedTriggerDefinition!.toJson();
      json['fixedTriggerDefinition'] = fieldJson121['value'];
      if (fieldJson121['_value'] != null) {
        json['_fixedTriggerDefinition'] = fieldJson121['_value'];
      }
    }

    if (fixedUsageContext != null) {
      final fieldJson122 = fixedUsageContext!.toJson();
      json['fixedUsageContext'] = fieldJson122['value'];
      if (fieldJson122['_value'] != null) {
        json['_fixedUsageContext'] = fieldJson122['_value'];
      }
    }

    if (fixedDosage != null) {
      final fieldJson123 = fixedDosage!.toJson();
      json['fixedDosage'] = fieldJson123['value'];
      if (fieldJson123['_value'] != null) {
        json['_fixedDosage'] = fieldJson123['_value'];
      }
    }

    if (patternBase64Binary != null) {
      final fieldJson124 = patternBase64Binary!.toJson();
      json['patternBase64Binary'] = fieldJson124['value'];
      if (fieldJson124['_value'] != null) {
        json['_patternBase64Binary'] = fieldJson124['_value'];
      }
    }

    if (patternBoolean != null) {
      final fieldJson125 = patternBoolean!.toJson();
      json['patternBoolean'] = fieldJson125['value'];
      if (fieldJson125['_value'] != null) {
        json['_patternBoolean'] = fieldJson125['_value'];
      }
    }

    if (patternCanonical != null) {
      final fieldJson126 = patternCanonical!.toJson();
      json['patternCanonical'] = fieldJson126['value'];
      if (fieldJson126['_value'] != null) {
        json['_patternCanonical'] = fieldJson126['_value'];
      }
    }

    if (patternCode != null) {
      final fieldJson127 = patternCode!.toJson();
      json['patternCode'] = fieldJson127['value'];
      if (fieldJson127['_value'] != null) {
        json['_patternCode'] = fieldJson127['_value'];
      }
    }

    if (patternDate != null) {
      final fieldJson128 = patternDate!.toJson();
      json['patternDate'] = fieldJson128['value'];
      if (fieldJson128['_value'] != null) {
        json['_patternDate'] = fieldJson128['_value'];
      }
    }

    if (patternDateTime != null) {
      final fieldJson129 = patternDateTime!.toJson();
      json['patternDateTime'] = fieldJson129['value'];
      if (fieldJson129['_value'] != null) {
        json['_patternDateTime'] = fieldJson129['_value'];
      }
    }

    if (patternDecimal != null) {
      final fieldJson130 = patternDecimal!.toJson();
      json['patternDecimal'] = fieldJson130['value'];
      if (fieldJson130['_value'] != null) {
        json['_patternDecimal'] = fieldJson130['_value'];
      }
    }

    if (patternId != null) {
      final fieldJson131 = patternId!.toJson();
      json['patternId'] = fieldJson131['value'];
      if (fieldJson131['_value'] != null) {
        json['_patternId'] = fieldJson131['_value'];
      }
    }

    if (patternInstant != null) {
      final fieldJson132 = patternInstant!.toJson();
      json['patternInstant'] = fieldJson132['value'];
      if (fieldJson132['_value'] != null) {
        json['_patternInstant'] = fieldJson132['_value'];
      }
    }

    if (patternInteger != null) {
      final fieldJson133 = patternInteger!.toJson();
      json['patternInteger'] = fieldJson133['value'];
      if (fieldJson133['_value'] != null) {
        json['_patternInteger'] = fieldJson133['_value'];
      }
    }

    if (patternMarkdown != null) {
      final fieldJson134 = patternMarkdown!.toJson();
      json['patternMarkdown'] = fieldJson134['value'];
      if (fieldJson134['_value'] != null) {
        json['_patternMarkdown'] = fieldJson134['_value'];
      }
    }

    if (patternOid != null) {
      final fieldJson135 = patternOid!.toJson();
      json['patternOid'] = fieldJson135['value'];
      if (fieldJson135['_value'] != null) {
        json['_patternOid'] = fieldJson135['_value'];
      }
    }

    if (patternPositiveInt != null) {
      final fieldJson136 = patternPositiveInt!.toJson();
      json['patternPositiveInt'] = fieldJson136['value'];
      if (fieldJson136['_value'] != null) {
        json['_patternPositiveInt'] = fieldJson136['_value'];
      }
    }

    if (patternString != null) {
      final fieldJson137 = patternString!.toJson();
      json['patternString'] = fieldJson137['value'];
      if (fieldJson137['_value'] != null) {
        json['_patternString'] = fieldJson137['_value'];
      }
    }

    if (patternTime != null) {
      final fieldJson138 = patternTime!.toJson();
      json['patternTime'] = fieldJson138['value'];
      if (fieldJson138['_value'] != null) {
        json['_patternTime'] = fieldJson138['_value'];
      }
    }

    if (patternUnsignedInt != null) {
      final fieldJson139 = patternUnsignedInt!.toJson();
      json['patternUnsignedInt'] = fieldJson139['value'];
      if (fieldJson139['_value'] != null) {
        json['_patternUnsignedInt'] = fieldJson139['_value'];
      }
    }

    if (patternUri != null) {
      final fieldJson140 = patternUri!.toJson();
      json['patternUri'] = fieldJson140['value'];
      if (fieldJson140['_value'] != null) {
        json['_patternUri'] = fieldJson140['_value'];
      }
    }

    if (patternUrl != null) {
      final fieldJson141 = patternUrl!.toJson();
      json['patternUrl'] = fieldJson141['value'];
      if (fieldJson141['_value'] != null) {
        json['_patternUrl'] = fieldJson141['_value'];
      }
    }

    if (patternUuid != null) {
      final fieldJson142 = patternUuid!.toJson();
      json['patternUuid'] = fieldJson142['value'];
      if (fieldJson142['_value'] != null) {
        json['_patternUuid'] = fieldJson142['_value'];
      }
    }

    if (patternAddress != null) {
      final fieldJson143 = patternAddress!.toJson();
      json['patternAddress'] = fieldJson143['value'];
      if (fieldJson143['_value'] != null) {
        json['_patternAddress'] = fieldJson143['_value'];
      }
    }

    if (patternAge != null) {
      final fieldJson144 = patternAge!.toJson();
      json['patternAge'] = fieldJson144['value'];
      if (fieldJson144['_value'] != null) {
        json['_patternAge'] = fieldJson144['_value'];
      }
    }

    if (patternAnnotation != null) {
      final fieldJson145 = patternAnnotation!.toJson();
      json['patternAnnotation'] = fieldJson145['value'];
      if (fieldJson145['_value'] != null) {
        json['_patternAnnotation'] = fieldJson145['_value'];
      }
    }

    if (patternAttachment != null) {
      final fieldJson146 = patternAttachment!.toJson();
      json['patternAttachment'] = fieldJson146['value'];
      if (fieldJson146['_value'] != null) {
        json['_patternAttachment'] = fieldJson146['_value'];
      }
    }

    if (patternCodeableConcept != null) {
      final fieldJson147 = patternCodeableConcept!.toJson();
      json['patternCodeableConcept'] = fieldJson147['value'];
      if (fieldJson147['_value'] != null) {
        json['_patternCodeableConcept'] = fieldJson147['_value'];
      }
    }

    if (patternCodeableReference != null) {
      final fieldJson148 = patternCodeableReference!.toJson();
      json['patternCodeableReference'] = fieldJson148['value'];
      if (fieldJson148['_value'] != null) {
        json['_patternCodeableReference'] = fieldJson148['_value'];
      }
    }

    if (patternCoding != null) {
      final fieldJson149 = patternCoding!.toJson();
      json['patternCoding'] = fieldJson149['value'];
      if (fieldJson149['_value'] != null) {
        json['_patternCoding'] = fieldJson149['_value'];
      }
    }

    if (patternContactPoint != null) {
      final fieldJson150 = patternContactPoint!.toJson();
      json['patternContactPoint'] = fieldJson150['value'];
      if (fieldJson150['_value'] != null) {
        json['_patternContactPoint'] = fieldJson150['_value'];
      }
    }

    if (patternCount != null) {
      final fieldJson151 = patternCount!.toJson();
      json['patternCount'] = fieldJson151['value'];
      if (fieldJson151['_value'] != null) {
        json['_patternCount'] = fieldJson151['_value'];
      }
    }

    if (patternDistance != null) {
      final fieldJson152 = patternDistance!.toJson();
      json['patternDistance'] = fieldJson152['value'];
      if (fieldJson152['_value'] != null) {
        json['_patternDistance'] = fieldJson152['_value'];
      }
    }

    if (patternDuration != null) {
      final fieldJson153 = patternDuration!.toJson();
      json['patternDuration'] = fieldJson153['value'];
      if (fieldJson153['_value'] != null) {
        json['_patternDuration'] = fieldJson153['_value'];
      }
    }

    if (patternHumanName != null) {
      final fieldJson154 = patternHumanName!.toJson();
      json['patternHumanName'] = fieldJson154['value'];
      if (fieldJson154['_value'] != null) {
        json['_patternHumanName'] = fieldJson154['_value'];
      }
    }

    if (patternIdentifier != null) {
      final fieldJson155 = patternIdentifier!.toJson();
      json['patternIdentifier'] = fieldJson155['value'];
      if (fieldJson155['_value'] != null) {
        json['_patternIdentifier'] = fieldJson155['_value'];
      }
    }

    if (patternMoney != null) {
      final fieldJson156 = patternMoney!.toJson();
      json['patternMoney'] = fieldJson156['value'];
      if (fieldJson156['_value'] != null) {
        json['_patternMoney'] = fieldJson156['_value'];
      }
    }

    if (patternPeriod != null) {
      final fieldJson157 = patternPeriod!.toJson();
      json['patternPeriod'] = fieldJson157['value'];
      if (fieldJson157['_value'] != null) {
        json['_patternPeriod'] = fieldJson157['_value'];
      }
    }

    if (patternQuantity != null) {
      final fieldJson158 = patternQuantity!.toJson();
      json['patternQuantity'] = fieldJson158['value'];
      if (fieldJson158['_value'] != null) {
        json['_patternQuantity'] = fieldJson158['_value'];
      }
    }

    if (patternRange != null) {
      final fieldJson159 = patternRange!.toJson();
      json['patternRange'] = fieldJson159['value'];
      if (fieldJson159['_value'] != null) {
        json['_patternRange'] = fieldJson159['_value'];
      }
    }

    if (patternRatio != null) {
      final fieldJson160 = patternRatio!.toJson();
      json['patternRatio'] = fieldJson160['value'];
      if (fieldJson160['_value'] != null) {
        json['_patternRatio'] = fieldJson160['_value'];
      }
    }

    if (patternRatioRange != null) {
      final fieldJson161 = patternRatioRange!.toJson();
      json['patternRatioRange'] = fieldJson161['value'];
      if (fieldJson161['_value'] != null) {
        json['_patternRatioRange'] = fieldJson161['_value'];
      }
    }

    if (patternReference != null) {
      final fieldJson162 = patternReference!.toJson();
      json['patternReference'] = fieldJson162['value'];
      if (fieldJson162['_value'] != null) {
        json['_patternReference'] = fieldJson162['_value'];
      }
    }

    if (patternSampledData != null) {
      final fieldJson163 = patternSampledData!.toJson();
      json['patternSampledData'] = fieldJson163['value'];
      if (fieldJson163['_value'] != null) {
        json['_patternSampledData'] = fieldJson163['_value'];
      }
    }

    if (patternSignature != null) {
      final fieldJson164 = patternSignature!.toJson();
      json['patternSignature'] = fieldJson164['value'];
      if (fieldJson164['_value'] != null) {
        json['_patternSignature'] = fieldJson164['_value'];
      }
    }

    if (patternTiming != null) {
      final fieldJson165 = patternTiming!.toJson();
      json['patternTiming'] = fieldJson165['value'];
      if (fieldJson165['_value'] != null) {
        json['_patternTiming'] = fieldJson165['_value'];
      }
    }

    if (patternContactDetail != null) {
      final fieldJson166 = patternContactDetail!.toJson();
      json['patternContactDetail'] = fieldJson166['value'];
      if (fieldJson166['_value'] != null) {
        json['_patternContactDetail'] = fieldJson166['_value'];
      }
    }

    if (patternContributor != null) {
      final fieldJson167 = patternContributor!.toJson();
      json['patternContributor'] = fieldJson167['value'];
      if (fieldJson167['_value'] != null) {
        json['_patternContributor'] = fieldJson167['_value'];
      }
    }

    if (patternDataRequirement != null) {
      final fieldJson168 = patternDataRequirement!.toJson();
      json['patternDataRequirement'] = fieldJson168['value'];
      if (fieldJson168['_value'] != null) {
        json['_patternDataRequirement'] = fieldJson168['_value'];
      }
    }

    if (patternExpression != null) {
      final fieldJson169 = patternExpression!.toJson();
      json['patternExpression'] = fieldJson169['value'];
      if (fieldJson169['_value'] != null) {
        json['_patternExpression'] = fieldJson169['_value'];
      }
    }

    if (patternParameterDefinition != null) {
      final fieldJson170 = patternParameterDefinition!.toJson();
      json['patternParameterDefinition'] = fieldJson170['value'];
      if (fieldJson170['_value'] != null) {
        json['_patternParameterDefinition'] = fieldJson170['_value'];
      }
    }

    if (patternRelatedArtifact != null) {
      final fieldJson171 = patternRelatedArtifact!.toJson();
      json['patternRelatedArtifact'] = fieldJson171['value'];
      if (fieldJson171['_value'] != null) {
        json['_patternRelatedArtifact'] = fieldJson171['_value'];
      }
    }

    if (patternTriggerDefinition != null) {
      final fieldJson172 = patternTriggerDefinition!.toJson();
      json['patternTriggerDefinition'] = fieldJson172['value'];
      if (fieldJson172['_value'] != null) {
        json['_patternTriggerDefinition'] = fieldJson172['_value'];
      }
    }

    if (patternUsageContext != null) {
      final fieldJson173 = patternUsageContext!.toJson();
      json['patternUsageContext'] = fieldJson173['value'];
      if (fieldJson173['_value'] != null) {
        json['_patternUsageContext'] = fieldJson173['_value'];
      }
    }

    if (patternDosage != null) {
      final fieldJson174 = patternDosage!.toJson();
      json['patternDosage'] = fieldJson174['value'];
      if (fieldJson174['_value'] != null) {
        json['_patternDosage'] = fieldJson174['_value'];
      }
    }

    if (example != null && example!.isNotEmpty) {
      final fieldJson175 = example!.map((e) => e.toJson()).toList();
      json['example'] = fieldJson175.map((e) => e['value']).toList();
      if (fieldJson175.any((e) => e['_value'] != null)) {
        json['_example'] = fieldJson175.map((e) => e['_value']).toList();
      }
    }

    if (minValueDate != null) {
      final fieldJson176 = minValueDate!.toJson();
      json['minValueDate'] = fieldJson176['value'];
      if (fieldJson176['_value'] != null) {
        json['_minValueDate'] = fieldJson176['_value'];
      }
    }

    if (minValueDateTime != null) {
      final fieldJson177 = minValueDateTime!.toJson();
      json['minValueDateTime'] = fieldJson177['value'];
      if (fieldJson177['_value'] != null) {
        json['_minValueDateTime'] = fieldJson177['_value'];
      }
    }

    if (minValueInstant != null) {
      final fieldJson178 = minValueInstant!.toJson();
      json['minValueInstant'] = fieldJson178['value'];
      if (fieldJson178['_value'] != null) {
        json['_minValueInstant'] = fieldJson178['_value'];
      }
    }

    if (minValueTime != null) {
      final fieldJson179 = minValueTime!.toJson();
      json['minValueTime'] = fieldJson179['value'];
      if (fieldJson179['_value'] != null) {
        json['_minValueTime'] = fieldJson179['_value'];
      }
    }

    if (minValueDecimal != null) {
      final fieldJson180 = minValueDecimal!.toJson();
      json['minValueDecimal'] = fieldJson180['value'];
      if (fieldJson180['_value'] != null) {
        json['_minValueDecimal'] = fieldJson180['_value'];
      }
    }

    if (minValueInteger != null) {
      final fieldJson181 = minValueInteger!.toJson();
      json['minValueInteger'] = fieldJson181['value'];
      if (fieldJson181['_value'] != null) {
        json['_minValueInteger'] = fieldJson181['_value'];
      }
    }

    if (minValuePositiveInt != null) {
      final fieldJson182 = minValuePositiveInt!.toJson();
      json['minValuePositiveInt'] = fieldJson182['value'];
      if (fieldJson182['_value'] != null) {
        json['_minValuePositiveInt'] = fieldJson182['_value'];
      }
    }

    if (minValueUnsignedInt != null) {
      final fieldJson183 = minValueUnsignedInt!.toJson();
      json['minValueUnsignedInt'] = fieldJson183['value'];
      if (fieldJson183['_value'] != null) {
        json['_minValueUnsignedInt'] = fieldJson183['_value'];
      }
    }

    if (minValueQuantity != null) {
      final fieldJson184 = minValueQuantity!.toJson();
      json['minValueQuantity'] = fieldJson184['value'];
      if (fieldJson184['_value'] != null) {
        json['_minValueQuantity'] = fieldJson184['_value'];
      }
    }

    if (maxValueDate != null) {
      final fieldJson185 = maxValueDate!.toJson();
      json['maxValueDate'] = fieldJson185['value'];
      if (fieldJson185['_value'] != null) {
        json['_maxValueDate'] = fieldJson185['_value'];
      }
    }

    if (maxValueDateTime != null) {
      final fieldJson186 = maxValueDateTime!.toJson();
      json['maxValueDateTime'] = fieldJson186['value'];
      if (fieldJson186['_value'] != null) {
        json['_maxValueDateTime'] = fieldJson186['_value'];
      }
    }

    if (maxValueInstant != null) {
      final fieldJson187 = maxValueInstant!.toJson();
      json['maxValueInstant'] = fieldJson187['value'];
      if (fieldJson187['_value'] != null) {
        json['_maxValueInstant'] = fieldJson187['_value'];
      }
    }

    if (maxValueTime != null) {
      final fieldJson188 = maxValueTime!.toJson();
      json['maxValueTime'] = fieldJson188['value'];
      if (fieldJson188['_value'] != null) {
        json['_maxValueTime'] = fieldJson188['_value'];
      }
    }

    if (maxValueDecimal != null) {
      final fieldJson189 = maxValueDecimal!.toJson();
      json['maxValueDecimal'] = fieldJson189['value'];
      if (fieldJson189['_value'] != null) {
        json['_maxValueDecimal'] = fieldJson189['_value'];
      }
    }

    if (maxValueInteger != null) {
      final fieldJson190 = maxValueInteger!.toJson();
      json['maxValueInteger'] = fieldJson190['value'];
      if (fieldJson190['_value'] != null) {
        json['_maxValueInteger'] = fieldJson190['_value'];
      }
    }

    if (maxValuePositiveInt != null) {
      final fieldJson191 = maxValuePositiveInt!.toJson();
      json['maxValuePositiveInt'] = fieldJson191['value'];
      if (fieldJson191['_value'] != null) {
        json['_maxValuePositiveInt'] = fieldJson191['_value'];
      }
    }

    if (maxValueUnsignedInt != null) {
      final fieldJson192 = maxValueUnsignedInt!.toJson();
      json['maxValueUnsignedInt'] = fieldJson192['value'];
      if (fieldJson192['_value'] != null) {
        json['_maxValueUnsignedInt'] = fieldJson192['_value'];
      }
    }

    if (maxValueQuantity != null) {
      final fieldJson193 = maxValueQuantity!.toJson();
      json['maxValueQuantity'] = fieldJson193['value'];
      if (fieldJson193['_value'] != null) {
        json['_maxValueQuantity'] = fieldJson193['_value'];
      }
    }

    if (maxLength != null) {
      final fieldJson194 = maxLength!.toJson();
      json['maxLength'] = fieldJson194['value'];
      if (fieldJson194['_value'] != null) {
        json['_maxLength'] = fieldJson194['_value'];
      }
    }

    if (condition != null && condition!.isNotEmpty) {
      final fieldJson195 = condition!.map((e) => e.toJson()).toList();
      json['condition'] = fieldJson195.map((e) => e['value']).toList();
      if (fieldJson195.any((e) => e['_value'] != null)) {
        json['_condition'] = fieldJson195.map((e) => e['_value']).toList();
      }
    }

    if (constraint != null && constraint!.isNotEmpty) {
      final fieldJson196 = constraint!.map((e) => e.toJson()).toList();
      json['constraint'] = fieldJson196.map((e) => e['value']).toList();
      if (fieldJson196.any((e) => e['_value'] != null)) {
        json['_constraint'] = fieldJson196.map((e) => e['_value']).toList();
      }
    }

    if (mustSupport != null) {
      final fieldJson197 = mustSupport!.toJson();
      json['mustSupport'] = fieldJson197['value'];
      if (fieldJson197['_value'] != null) {
        json['_mustSupport'] = fieldJson197['_value'];
      }
    }

    if (isModifier != null) {
      final fieldJson198 = isModifier!.toJson();
      json['isModifier'] = fieldJson198['value'];
      if (fieldJson198['_value'] != null) {
        json['_isModifier'] = fieldJson198['_value'];
      }
    }

    if (isModifierReason != null) {
      final fieldJson199 = isModifierReason!.toJson();
      json['isModifierReason'] = fieldJson199['value'];
      if (fieldJson199['_value'] != null) {
        json['_isModifierReason'] = fieldJson199['_value'];
      }
    }

    if (isSummary != null) {
      final fieldJson200 = isSummary!.toJson();
      json['isSummary'] = fieldJson200['value'];
      if (fieldJson200['_value'] != null) {
        json['_isSummary'] = fieldJson200['_value'];
      }
    }

    if (binding != null) {
      final fieldJson201 = binding!.toJson();
      json['binding'] = fieldJson201['value'];
      if (fieldJson201['_value'] != null) {
        json['_binding'] = fieldJson201['_value'];
      }
    }

    if (mapping != null && mapping!.isNotEmpty) {
      final fieldJson202 = mapping!.map((e) => e.toJson()).toList();
      json['mapping'] = fieldJson202.map((e) => e['value']).toList();
      if (fieldJson202.any((e) => e['_value'] != null)) {
        json['_mapping'] = fieldJson202.map((e) => e['_value']).toList();
      }
    }

    return json;
  }

  @override
  ElementDefinition clone() => throw UnimplementedError();
  @override
  ElementDefinition copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? path,
    List<PropertyRepresentation>? representation,
    FhirString? sliceName,
    FhirBoolean? sliceIsConstraining,
    FhirString? label,
    List<Coding>? code,
    ElementDefinitionSlicing? slicing,
    FhirString? short,
    FhirMarkdown? definition,
    FhirMarkdown? comment,
    FhirMarkdown? requirements,
    List<FhirString>? alias,
    FhirUnsignedInt? min,
    FhirString? max,
    ElementDefinitionBase? base,
    FhirUri? contentReference,
    List<ElementDefinitionType>? type,
    FhirBase64Binary? defaultValueBase64Binary,
    FhirBoolean? defaultValueBoolean,
    FhirCanonical? defaultValueCanonical,
    FhirCode? defaultValueCode,
    FhirDate? defaultValueDate,
    FhirDateTime? defaultValueDateTime,
    FhirDecimal? defaultValueDecimal,
    FhirId? defaultValueId,
    FhirInstant? defaultValueInstant,
    FhirInteger? defaultValueInteger,
    FhirMarkdown? defaultValueMarkdown,
    FhirOid? defaultValueOid,
    FhirPositiveInt? defaultValuePositiveInt,
    FhirString? defaultValueString,
    FhirTime? defaultValueTime,
    FhirUnsignedInt? defaultValueUnsignedInt,
    FhirUri? defaultValueUri,
    FhirUrl? defaultValueUrl,
    FhirUuid? defaultValueUuid,
    Address? defaultValueAddress,
    Age? defaultValueAge,
    Annotation? defaultValueAnnotation,
    Attachment? defaultValueAttachment,
    CodeableConcept? defaultValueCodeableConcept,
    CodeableReference? defaultValueCodeableReference,
    Coding? defaultValueCoding,
    ContactPoint? defaultValueContactPoint,
    Count? defaultValueCount,
    Distance? defaultValueDistance,
    FhirDuration? defaultValueDuration,
    HumanName? defaultValueHumanName,
    Identifier? defaultValueIdentifier,
    Money? defaultValueMoney,
    Period? defaultValuePeriod,
    Quantity? defaultValueQuantity,
    Range? defaultValueRange,
    Ratio? defaultValueRatio,
    RatioRange? defaultValueRatioRange,
    Reference? defaultValueReference,
    SampledData? defaultValueSampledData,
    Signature? defaultValueSignature,
    Timing? defaultValueTiming,
    ContactDetail? defaultValueContactDetail,
    Contributor? defaultValueContributor,
    DataRequirement? defaultValueDataRequirement,
    FhirExpression? defaultValueExpression,
    ParameterDefinition? defaultValueParameterDefinition,
    RelatedArtifact? defaultValueRelatedArtifact,
    TriggerDefinition? defaultValueTriggerDefinition,
    UsageContext? defaultValueUsageContext,
    Dosage? defaultValueDosage,
    FhirMarkdown? meaningWhenMissing,
    FhirString? orderMeaning,
    FhirBase64Binary? fixedBase64Binary,
    FhirBoolean? fixedBoolean,
    FhirCanonical? fixedCanonical,
    FhirCode? fixedCode,
    FhirDate? fixedDate,
    FhirDateTime? fixedDateTime,
    FhirDecimal? fixedDecimal,
    FhirId? fixedId,
    FhirInstant? fixedInstant,
    FhirInteger? fixedInteger,
    FhirMarkdown? fixedMarkdown,
    FhirOid? fixedOid,
    FhirPositiveInt? fixedPositiveInt,
    FhirString? fixedString,
    FhirTime? fixedTime,
    FhirUnsignedInt? fixedUnsignedInt,
    FhirUri? fixedUri,
    FhirUrl? fixedUrl,
    FhirUuid? fixedUuid,
    Address? fixedAddress,
    Age? fixedAge,
    Annotation? fixedAnnotation,
    Attachment? fixedAttachment,
    CodeableConcept? fixedCodeableConcept,
    CodeableReference? fixedCodeableReference,
    Coding? fixedCoding,
    ContactPoint? fixedContactPoint,
    Count? fixedCount,
    Distance? fixedDistance,
    FhirDuration? fixedDuration,
    HumanName? fixedHumanName,
    Identifier? fixedIdentifier,
    Money? fixedMoney,
    Period? fixedPeriod,
    Quantity? fixedQuantity,
    Range? fixedRange,
    Ratio? fixedRatio,
    RatioRange? fixedRatioRange,
    Reference? fixedReference,
    SampledData? fixedSampledData,
    Signature? fixedSignature,
    Timing? fixedTiming,
    ContactDetail? fixedContactDetail,
    Contributor? fixedContributor,
    DataRequirement? fixedDataRequirement,
    FhirExpression? fixedExpression,
    ParameterDefinition? fixedParameterDefinition,
    RelatedArtifact? fixedRelatedArtifact,
    TriggerDefinition? fixedTriggerDefinition,
    UsageContext? fixedUsageContext,
    Dosage? fixedDosage,
    FhirBase64Binary? patternBase64Binary,
    FhirBoolean? patternBoolean,
    FhirCanonical? patternCanonical,
    FhirCode? patternCode,
    FhirDate? patternDate,
    FhirDateTime? patternDateTime,
    FhirDecimal? patternDecimal,
    FhirId? patternId,
    FhirInstant? patternInstant,
    FhirInteger? patternInteger,
    FhirMarkdown? patternMarkdown,
    FhirOid? patternOid,
    FhirPositiveInt? patternPositiveInt,
    FhirString? patternString,
    FhirTime? patternTime,
    FhirUnsignedInt? patternUnsignedInt,
    FhirUri? patternUri,
    FhirUrl? patternUrl,
    FhirUuid? patternUuid,
    Address? patternAddress,
    Age? patternAge,
    Annotation? patternAnnotation,
    Attachment? patternAttachment,
    CodeableConcept? patternCodeableConcept,
    CodeableReference? patternCodeableReference,
    Coding? patternCoding,
    ContactPoint? patternContactPoint,
    Count? patternCount,
    Distance? patternDistance,
    FhirDuration? patternDuration,
    HumanName? patternHumanName,
    Identifier? patternIdentifier,
    Money? patternMoney,
    Period? patternPeriod,
    Quantity? patternQuantity,
    Range? patternRange,
    Ratio? patternRatio,
    RatioRange? patternRatioRange,
    Reference? patternReference,
    SampledData? patternSampledData,
    Signature? patternSignature,
    Timing? patternTiming,
    ContactDetail? patternContactDetail,
    Contributor? patternContributor,
    DataRequirement? patternDataRequirement,
    FhirExpression? patternExpression,
    ParameterDefinition? patternParameterDefinition,
    RelatedArtifact? patternRelatedArtifact,
    TriggerDefinition? patternTriggerDefinition,
    UsageContext? patternUsageContext,
    Dosage? patternDosage,
    List<ElementDefinitionExample>? example,
    FhirDate? minValueDate,
    FhirDateTime? minValueDateTime,
    FhirInstant? minValueInstant,
    FhirTime? minValueTime,
    FhirDecimal? minValueDecimal,
    FhirInteger? minValueInteger,
    FhirPositiveInt? minValuePositiveInt,
    FhirUnsignedInt? minValueUnsignedInt,
    Quantity? minValueQuantity,
    FhirDate? maxValueDate,
    FhirDateTime? maxValueDateTime,
    FhirInstant? maxValueInstant,
    FhirTime? maxValueTime,
    FhirDecimal? maxValueDecimal,
    FhirInteger? maxValueInteger,
    FhirPositiveInt? maxValuePositiveInt,
    FhirUnsignedInt? maxValueUnsignedInt,
    Quantity? maxValueQuantity,
    FhirInteger? maxLength,
    List<FhirId>? condition,
    List<ElementDefinitionConstraint>? constraint,
    FhirBoolean? mustSupport,
    FhirBoolean? isModifier,
    FhirString? isModifierReason,
    FhirBoolean? isSummary,
    ElementDefinitionBinding? binding,
    List<ElementDefinitionMapping>? mapping,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ElementDefinition(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      path: path ?? this.path,
      representation: representation ?? this.representation,
      sliceName: sliceName ?? this.sliceName,
      sliceIsConstraining: sliceIsConstraining ?? this.sliceIsConstraining,
      label: label ?? this.label,
      code: code ?? this.code,
      slicing: slicing ?? this.slicing,
      short: short ?? this.short,
      definition: definition ?? this.definition,
      comment: comment ?? this.comment,
      requirements: requirements ?? this.requirements,
      alias: alias ?? this.alias,
      min: min ?? this.min,
      max: max ?? this.max,
      base: base ?? this.base,
      contentReference: contentReference ?? this.contentReference,
      type: type ?? this.type,
      defaultValueBase64Binary:
          defaultValueBase64Binary ?? this.defaultValueBase64Binary,
      defaultValueBoolean: defaultValueBoolean ?? this.defaultValueBoolean,
      defaultValueCanonical:
          defaultValueCanonical ?? this.defaultValueCanonical,
      defaultValueCode: defaultValueCode ?? this.defaultValueCode,
      defaultValueDate: defaultValueDate ?? this.defaultValueDate,
      defaultValueDateTime: defaultValueDateTime ?? this.defaultValueDateTime,
      defaultValueDecimal: defaultValueDecimal ?? this.defaultValueDecimal,
      defaultValueId: defaultValueId ?? this.defaultValueId,
      defaultValueInstant: defaultValueInstant ?? this.defaultValueInstant,
      defaultValueInteger: defaultValueInteger ?? this.defaultValueInteger,
      defaultValueMarkdown: defaultValueMarkdown ?? this.defaultValueMarkdown,
      defaultValueOid: defaultValueOid ?? this.defaultValueOid,
      defaultValuePositiveInt:
          defaultValuePositiveInt ?? this.defaultValuePositiveInt,
      defaultValueString: defaultValueString ?? this.defaultValueString,
      defaultValueTime: defaultValueTime ?? this.defaultValueTime,
      defaultValueUnsignedInt:
          defaultValueUnsignedInt ?? this.defaultValueUnsignedInt,
      defaultValueUri: defaultValueUri ?? this.defaultValueUri,
      defaultValueUrl: defaultValueUrl ?? this.defaultValueUrl,
      defaultValueUuid: defaultValueUuid ?? this.defaultValueUuid,
      defaultValueAddress: defaultValueAddress ?? this.defaultValueAddress,
      defaultValueAge: defaultValueAge ?? this.defaultValueAge,
      defaultValueAnnotation:
          defaultValueAnnotation ?? this.defaultValueAnnotation,
      defaultValueAttachment:
          defaultValueAttachment ?? this.defaultValueAttachment,
      defaultValueCodeableConcept:
          defaultValueCodeableConcept ?? this.defaultValueCodeableConcept,
      defaultValueCodeableReference:
          defaultValueCodeableReference ?? this.defaultValueCodeableReference,
      defaultValueCoding: defaultValueCoding ?? this.defaultValueCoding,
      defaultValueContactPoint:
          defaultValueContactPoint ?? this.defaultValueContactPoint,
      defaultValueCount: defaultValueCount ?? this.defaultValueCount,
      defaultValueDistance: defaultValueDistance ?? this.defaultValueDistance,
      defaultValueDuration: defaultValueDuration ?? this.defaultValueDuration,
      defaultValueHumanName:
          defaultValueHumanName ?? this.defaultValueHumanName,
      defaultValueIdentifier:
          defaultValueIdentifier ?? this.defaultValueIdentifier,
      defaultValueMoney: defaultValueMoney ?? this.defaultValueMoney,
      defaultValuePeriod: defaultValuePeriod ?? this.defaultValuePeriod,
      defaultValueQuantity: defaultValueQuantity ?? this.defaultValueQuantity,
      defaultValueRange: defaultValueRange ?? this.defaultValueRange,
      defaultValueRatio: defaultValueRatio ?? this.defaultValueRatio,
      defaultValueRatioRange:
          defaultValueRatioRange ?? this.defaultValueRatioRange,
      defaultValueReference:
          defaultValueReference ?? this.defaultValueReference,
      defaultValueSampledData:
          defaultValueSampledData ?? this.defaultValueSampledData,
      defaultValueSignature:
          defaultValueSignature ?? this.defaultValueSignature,
      defaultValueTiming: defaultValueTiming ?? this.defaultValueTiming,
      defaultValueContactDetail:
          defaultValueContactDetail ?? this.defaultValueContactDetail,
      defaultValueContributor:
          defaultValueContributor ?? this.defaultValueContributor,
      defaultValueDataRequirement:
          defaultValueDataRequirement ?? this.defaultValueDataRequirement,
      defaultValueExpression:
          defaultValueExpression ?? this.defaultValueExpression,
      defaultValueParameterDefinition: defaultValueParameterDefinition ??
          this.defaultValueParameterDefinition,
      defaultValueRelatedArtifact:
          defaultValueRelatedArtifact ?? this.defaultValueRelatedArtifact,
      defaultValueTriggerDefinition:
          defaultValueTriggerDefinition ?? this.defaultValueTriggerDefinition,
      defaultValueUsageContext:
          defaultValueUsageContext ?? this.defaultValueUsageContext,
      defaultValueDosage: defaultValueDosage ?? this.defaultValueDosage,
      meaningWhenMissing: meaningWhenMissing ?? this.meaningWhenMissing,
      orderMeaning: orderMeaning ?? this.orderMeaning,
      fixedBase64Binary: fixedBase64Binary ?? this.fixedBase64Binary,
      fixedBoolean: fixedBoolean ?? this.fixedBoolean,
      fixedCanonical: fixedCanonical ?? this.fixedCanonical,
      fixedCode: fixedCode ?? this.fixedCode,
      fixedDate: fixedDate ?? this.fixedDate,
      fixedDateTime: fixedDateTime ?? this.fixedDateTime,
      fixedDecimal: fixedDecimal ?? this.fixedDecimal,
      fixedId: fixedId ?? this.fixedId,
      fixedInstant: fixedInstant ?? this.fixedInstant,
      fixedInteger: fixedInteger ?? this.fixedInteger,
      fixedMarkdown: fixedMarkdown ?? this.fixedMarkdown,
      fixedOid: fixedOid ?? this.fixedOid,
      fixedPositiveInt: fixedPositiveInt ?? this.fixedPositiveInt,
      fixedString: fixedString ?? this.fixedString,
      fixedTime: fixedTime ?? this.fixedTime,
      fixedUnsignedInt: fixedUnsignedInt ?? this.fixedUnsignedInt,
      fixedUri: fixedUri ?? this.fixedUri,
      fixedUrl: fixedUrl ?? this.fixedUrl,
      fixedUuid: fixedUuid ?? this.fixedUuid,
      fixedAddress: fixedAddress ?? this.fixedAddress,
      fixedAge: fixedAge ?? this.fixedAge,
      fixedAnnotation: fixedAnnotation ?? this.fixedAnnotation,
      fixedAttachment: fixedAttachment ?? this.fixedAttachment,
      fixedCodeableConcept: fixedCodeableConcept ?? this.fixedCodeableConcept,
      fixedCodeableReference:
          fixedCodeableReference ?? this.fixedCodeableReference,
      fixedCoding: fixedCoding ?? this.fixedCoding,
      fixedContactPoint: fixedContactPoint ?? this.fixedContactPoint,
      fixedCount: fixedCount ?? this.fixedCount,
      fixedDistance: fixedDistance ?? this.fixedDistance,
      fixedDuration: fixedDuration ?? this.fixedDuration,
      fixedHumanName: fixedHumanName ?? this.fixedHumanName,
      fixedIdentifier: fixedIdentifier ?? this.fixedIdentifier,
      fixedMoney: fixedMoney ?? this.fixedMoney,
      fixedPeriod: fixedPeriod ?? this.fixedPeriod,
      fixedQuantity: fixedQuantity ?? this.fixedQuantity,
      fixedRange: fixedRange ?? this.fixedRange,
      fixedRatio: fixedRatio ?? this.fixedRatio,
      fixedRatioRange: fixedRatioRange ?? this.fixedRatioRange,
      fixedReference: fixedReference ?? this.fixedReference,
      fixedSampledData: fixedSampledData ?? this.fixedSampledData,
      fixedSignature: fixedSignature ?? this.fixedSignature,
      fixedTiming: fixedTiming ?? this.fixedTiming,
      fixedContactDetail: fixedContactDetail ?? this.fixedContactDetail,
      fixedContributor: fixedContributor ?? this.fixedContributor,
      fixedDataRequirement: fixedDataRequirement ?? this.fixedDataRequirement,
      fixedExpression: fixedExpression ?? this.fixedExpression,
      fixedParameterDefinition:
          fixedParameterDefinition ?? this.fixedParameterDefinition,
      fixedRelatedArtifact: fixedRelatedArtifact ?? this.fixedRelatedArtifact,
      fixedTriggerDefinition:
          fixedTriggerDefinition ?? this.fixedTriggerDefinition,
      fixedUsageContext: fixedUsageContext ?? this.fixedUsageContext,
      fixedDosage: fixedDosage ?? this.fixedDosage,
      patternBase64Binary: patternBase64Binary ?? this.patternBase64Binary,
      patternBoolean: patternBoolean ?? this.patternBoolean,
      patternCanonical: patternCanonical ?? this.patternCanonical,
      patternCode: patternCode ?? this.patternCode,
      patternDate: patternDate ?? this.patternDate,
      patternDateTime: patternDateTime ?? this.patternDateTime,
      patternDecimal: patternDecimal ?? this.patternDecimal,
      patternId: patternId ?? this.patternId,
      patternInstant: patternInstant ?? this.patternInstant,
      patternInteger: patternInteger ?? this.patternInteger,
      patternMarkdown: patternMarkdown ?? this.patternMarkdown,
      patternOid: patternOid ?? this.patternOid,
      patternPositiveInt: patternPositiveInt ?? this.patternPositiveInt,
      patternString: patternString ?? this.patternString,
      patternTime: patternTime ?? this.patternTime,
      patternUnsignedInt: patternUnsignedInt ?? this.patternUnsignedInt,
      patternUri: patternUri ?? this.patternUri,
      patternUrl: patternUrl ?? this.patternUrl,
      patternUuid: patternUuid ?? this.patternUuid,
      patternAddress: patternAddress ?? this.patternAddress,
      patternAge: patternAge ?? this.patternAge,
      patternAnnotation: patternAnnotation ?? this.patternAnnotation,
      patternAttachment: patternAttachment ?? this.patternAttachment,
      patternCodeableConcept:
          patternCodeableConcept ?? this.patternCodeableConcept,
      patternCodeableReference:
          patternCodeableReference ?? this.patternCodeableReference,
      patternCoding: patternCoding ?? this.patternCoding,
      patternContactPoint: patternContactPoint ?? this.patternContactPoint,
      patternCount: patternCount ?? this.patternCount,
      patternDistance: patternDistance ?? this.patternDistance,
      patternDuration: patternDuration ?? this.patternDuration,
      patternHumanName: patternHumanName ?? this.patternHumanName,
      patternIdentifier: patternIdentifier ?? this.patternIdentifier,
      patternMoney: patternMoney ?? this.patternMoney,
      patternPeriod: patternPeriod ?? this.patternPeriod,
      patternQuantity: patternQuantity ?? this.patternQuantity,
      patternRange: patternRange ?? this.patternRange,
      patternRatio: patternRatio ?? this.patternRatio,
      patternRatioRange: patternRatioRange ?? this.patternRatioRange,
      patternReference: patternReference ?? this.patternReference,
      patternSampledData: patternSampledData ?? this.patternSampledData,
      patternSignature: patternSignature ?? this.patternSignature,
      patternTiming: patternTiming ?? this.patternTiming,
      patternContactDetail: patternContactDetail ?? this.patternContactDetail,
      patternContributor: patternContributor ?? this.patternContributor,
      patternDataRequirement:
          patternDataRequirement ?? this.patternDataRequirement,
      patternExpression: patternExpression ?? this.patternExpression,
      patternParameterDefinition:
          patternParameterDefinition ?? this.patternParameterDefinition,
      patternRelatedArtifact:
          patternRelatedArtifact ?? this.patternRelatedArtifact,
      patternTriggerDefinition:
          patternTriggerDefinition ?? this.patternTriggerDefinition,
      patternUsageContext: patternUsageContext ?? this.patternUsageContext,
      patternDosage: patternDosage ?? this.patternDosage,
      example: example ?? this.example,
      minValueDate: minValueDate ?? this.minValueDate,
      minValueDateTime: minValueDateTime ?? this.minValueDateTime,
      minValueInstant: minValueInstant ?? this.minValueInstant,
      minValueTime: minValueTime ?? this.minValueTime,
      minValueDecimal: minValueDecimal ?? this.minValueDecimal,
      minValueInteger: minValueInteger ?? this.minValueInteger,
      minValuePositiveInt: minValuePositiveInt ?? this.minValuePositiveInt,
      minValueUnsignedInt: minValueUnsignedInt ?? this.minValueUnsignedInt,
      minValueQuantity: minValueQuantity ?? this.minValueQuantity,
      maxValueDate: maxValueDate ?? this.maxValueDate,
      maxValueDateTime: maxValueDateTime ?? this.maxValueDateTime,
      maxValueInstant: maxValueInstant ?? this.maxValueInstant,
      maxValueTime: maxValueTime ?? this.maxValueTime,
      maxValueDecimal: maxValueDecimal ?? this.maxValueDecimal,
      maxValueInteger: maxValueInteger ?? this.maxValueInteger,
      maxValuePositiveInt: maxValuePositiveInt ?? this.maxValuePositiveInt,
      maxValueUnsignedInt: maxValueUnsignedInt ?? this.maxValueUnsignedInt,
      maxValueQuantity: maxValueQuantity ?? this.maxValueQuantity,
      maxLength: maxLength ?? this.maxLength,
      condition: condition ?? this.condition,
      constraint: constraint ?? this.constraint,
      mustSupport: mustSupport ?? this.mustSupport,
      isModifier: isModifier ?? this.isModifier,
      isModifierReason: isModifierReason ?? this.isModifierReason,
      isSummary: isSummary ?? this.isSummary,
      binding: binding ?? this.binding,
      mapping: mapping ?? this.mapping,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ElementDefinitionSlicing]
/// Indicates that the element is sliced into a set of alternative
/// definitions (i.e. in a structure definition, there are multiple
/// different constraints on a single element in the base resource).
/// Slicing can be used in any resource that has cardinality ..* on the
/// base resource, or any resource with a choice of types. The set of
/// slices is any elements that come after this in the element sequence
/// that have the same path, until a shorter path occurs (the shorter path
/// terminates the set).
class ElementDefinitionSlicing extends Element {
  /// Primary constructor for [ElementDefinitionSlicing]

  ElementDefinitionSlicing({
    super.id,
    this.extension_,
    this.discriminator,
    this.description,
    this.ordered,
    required this.rules,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ElementDefinitionSlicing.fromJson(Map<String, dynamic> json) {
    return ElementDefinitionSlicing(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      discriminator: json['discriminator'] != null
          ? (json['discriminator'] as List<dynamic>)
              .map<ElementDefinitionDiscriminator>(
                (v) => ElementDefinitionDiscriminator.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      description: json['description'] != null
          ? FhirString.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      ordered: json['ordered'] != null
          ? FhirBoolean.fromJson({
              'value': json['ordered'],
              '_value': json['_ordered'],
            })
          : null,
      rules: SlicingRules.fromJson({
        'value': json['rules'],
        '_value': json['_rules'],
      }),
    );
  }

  /// Deserialize [ElementDefinitionSlicing] from a [String]
  /// or [YamlMap] object
  factory ElementDefinitionSlicing.fromYaml(dynamic yaml) => yaml is String
      ? ElementDefinitionSlicing.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ElementDefinitionSlicing.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ElementDefinitionSlicing cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ElementDefinitionSlicing]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ElementDefinitionSlicing.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ElementDefinitionSlicing.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ElementDefinitionSlicing';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [discriminator]
  /// Designates which child elements are used to discriminate between the
  /// slices when processing an instance. If one or more discriminators are
  /// provided, the value of the child elements in the instance data SHALL
  /// completely distinguish which slice the element in the resource matches
  /// based on the allowed values for those elements in each of the slices.
  final List<ElementDefinitionDiscriminator>? discriminator;

  /// [description]
  /// A human-readable text description of how the slicing works. If there is
  /// no discriminator, this is required to be present to provide whatever
  /// information is possible about how the slices can be differentiated.
  final FhirString? description;

  /// [ordered]
  /// If the matching elements have to occur in the same order as defined in
  /// the profile.
  final FhirBoolean? ordered;

  /// [rules]
  /// Whether additional slices are allowed or not. When the slices are
  /// ordered, profile authors can also say that additional slices are only
  /// allowed at the end.
  final SlicingRules rules;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (discriminator != null && discriminator!.isNotEmpty) {
      final fieldJson2 = discriminator!.map((e) => e.toJson()).toList();
      json['discriminator'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_discriminator'] = fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (description != null) {
      final fieldJson3 = description!.toJson();
      json['description'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_description'] = fieldJson3['_value'];
      }
    }

    if (ordered != null) {
      final fieldJson4 = ordered!.toJson();
      json['ordered'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_ordered'] = fieldJson4['_value'];
      }
    }

    final fieldJson5 = rules.toJson();
    json['rules'] = fieldJson5['value'];
    if (fieldJson5['_value'] != null) {
      json['_rules'] = fieldJson5['_value'];
    }

    return json;
  }

  @override
  ElementDefinitionSlicing clone() => throw UnimplementedError();
  @override
  ElementDefinitionSlicing copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<ElementDefinitionDiscriminator>? discriminator,
    FhirString? description,
    FhirBoolean? ordered,
    SlicingRules? rules,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ElementDefinitionSlicing(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      discriminator: discriminator ?? this.discriminator,
      description: description ?? this.description,
      ordered: ordered ?? this.ordered,
      rules: rules ?? this.rules,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ElementDefinitionDiscriminator]
/// Designates which child elements are used to discriminate between the
/// slices when processing an instance. If one or more discriminators are
/// provided, the value of the child elements in the instance data SHALL
/// completely distinguish which slice the element in the resource matches
/// based on the allowed values for those elements in each of the slices.
class ElementDefinitionDiscriminator extends Element {
  /// Primary constructor for [ElementDefinitionDiscriminator]

  ElementDefinitionDiscriminator({
    super.id,
    this.extension_,
    required this.type,
    required this.path,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ElementDefinitionDiscriminator.fromJson(Map<String, dynamic> json) {
    return ElementDefinitionDiscriminator(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      type: DiscriminatorType.fromJson({
        'value': json['type'],
        '_value': json['_type'],
      }),
      path: FhirString.fromJson({
        'value': json['path'],
        '_value': json['_path'],
      }),
    );
  }

  /// Deserialize [ElementDefinitionDiscriminator] from a [String]
  /// or [YamlMap] object
  factory ElementDefinitionDiscriminator.fromYaml(dynamic yaml) => yaml
          is String
      ? ElementDefinitionDiscriminator.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ElementDefinitionDiscriminator.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ElementDefinitionDiscriminator cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ElementDefinitionDiscriminator]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ElementDefinitionDiscriminator.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ElementDefinitionDiscriminator.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ElementDefinitionDiscriminator';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [type]
  /// How the element value is interpreted when discrimination is evaluated.
  final DiscriminatorType type;

  /// [path]
  /// A FHIRPath expression, using [the simple subset of
  /// FHIRPath](fhirpath.html#simple), that is used to identify the element
  /// on which discrimination is based.
  final FhirString path;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    final fieldJson2 = type.toJson();
    json['type'] = fieldJson2['value'];
    if (fieldJson2['_value'] != null) {
      json['_type'] = fieldJson2['_value'];
    }

    final fieldJson3 = path.toJson();
    json['path'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_path'] = fieldJson3['_value'];
    }

    return json;
  }

  @override
  ElementDefinitionDiscriminator clone() => throw UnimplementedError();
  @override
  ElementDefinitionDiscriminator copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    DiscriminatorType? type,
    FhirString? path,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ElementDefinitionDiscriminator(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      type: type ?? this.type,
      path: path ?? this.path,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ElementDefinitionBase]
/// Information about the base definition of the element, provided to make
/// it unnecessary for tools to trace the deviation of the element through
/// the derived and related profiles. When the element definition is not
/// the original definition of an element - i.g. either in a constraint on
/// another type, or for elements from a super type in a snap shot - then
/// the information in provided in the element definition may be different
/// to the base definition. On the original definition of the element, it
/// will be same.
class ElementDefinitionBase extends Element {
  /// Primary constructor for [ElementDefinitionBase]

  ElementDefinitionBase({
    super.id,
    this.extension_,
    required this.path,
    required this.min,
    required this.max,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ElementDefinitionBase.fromJson(Map<String, dynamic> json) {
    return ElementDefinitionBase(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      path: FhirString.fromJson({
        'value': json['path'],
        '_value': json['_path'],
      }),
      min: FhirUnsignedInt.fromJson({
        'value': json['min'],
        '_value': json['_min'],
      }),
      max: FhirString.fromJson({
        'value': json['max'],
        '_value': json['_max'],
      }),
    );
  }

  /// Deserialize [ElementDefinitionBase] from a [String]
  /// or [YamlMap] object
  factory ElementDefinitionBase.fromYaml(dynamic yaml) => yaml is String
      ? ElementDefinitionBase.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ElementDefinitionBase.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ElementDefinitionBase cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ElementDefinitionBase]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ElementDefinitionBase.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ElementDefinitionBase.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ElementDefinitionBase';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [path]
  /// The Path that identifies the base element - this matches the
  /// ElementDefinition.path for that element. Across FHIR, there is only one
  /// base definition of any element - that is, an element definition on a
  /// [StructureDefinition](structuredefinition.html#) without a
  /// StructureDefinition.base.
  final FhirString path;

  /// [min]
  /// Minimum cardinality of the base element identified by the path.
  final FhirUnsignedInt min;

  /// [max]
  /// Maximum cardinality of the base element identified by the path.
  final FhirString max;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    final fieldJson2 = path.toJson();
    json['path'] = fieldJson2['value'];
    if (fieldJson2['_value'] != null) {
      json['_path'] = fieldJson2['_value'];
    }

    final fieldJson3 = min.toJson();
    json['min'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_min'] = fieldJson3['_value'];
    }

    final fieldJson4 = max.toJson();
    json['max'] = fieldJson4['value'];
    if (fieldJson4['_value'] != null) {
      json['_max'] = fieldJson4['_value'];
    }

    return json;
  }

  @override
  ElementDefinitionBase clone() => throw UnimplementedError();
  @override
  ElementDefinitionBase copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? path,
    FhirUnsignedInt? min,
    FhirString? max,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ElementDefinitionBase(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      path: path ?? this.path,
      min: min ?? this.min,
      max: max ?? this.max,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ElementDefinitionType]
/// The data type or resource that the value of this element is permitted
/// to be.
class ElementDefinitionType extends Element {
  /// Primary constructor for [ElementDefinitionType]

  ElementDefinitionType({
    super.id,
    this.extension_,
    required this.code,
    this.profile,
    this.targetProfile,
    this.aggregation,
    this.versioning,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ElementDefinitionType.fromJson(Map<String, dynamic> json) {
    return ElementDefinitionType(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      code: FhirUri.fromJson({
        'value': json['code'],
        '_value': json['_code'],
      }),
      profile: parsePrimitiveList<FhirCanonical>(
          json['profile'] as List<dynamic>?, json['_profile'] as List<dynamic>?,
          fromJson: FhirCanonical.fromJson),
      targetProfile: parsePrimitiveList<FhirCanonical>(
          json['targetProfile'] as List<dynamic>?,
          json['_targetProfile'] as List<dynamic>?,
          fromJson: FhirCanonical.fromJson),
      aggregation: parsePrimitiveList<AggregationMode>(
          json['aggregation'] as List<dynamic>?,
          json['_aggregation'] as List<dynamic>?,
          fromJson: AggregationMode.fromJson),
      versioning: json['versioning'] != null
          ? ReferenceVersionRules.fromJson({
              'value': json['versioning'],
              '_value': json['_versioning'],
            })
          : null,
    );
  }

  /// Deserialize [ElementDefinitionType] from a [String]
  /// or [YamlMap] object
  factory ElementDefinitionType.fromYaml(dynamic yaml) => yaml is String
      ? ElementDefinitionType.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ElementDefinitionType.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ElementDefinitionType cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ElementDefinitionType]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ElementDefinitionType.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ElementDefinitionType.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ElementDefinitionType';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [code]
  /// URL of Data type or Resource that is a(or the) type used for this
  /// element. References are URLs that are relative to
  /// http://hl7.org/fhir/StructureDefinition e.g. "string" is a reference to
  /// http://hl7.org/fhir/StructureDefinition/string. Absolute URLs are only
  /// allowed in logical models.
  final FhirUri code;

  /// [profile]
  /// Identifies a profile structure or implementation Guide that applies to
  /// the datatype this element refers to. If any profiles are specified,
  /// then the content must conform to at least one of them. The URL can be a
  /// local reference - to a contained StructureDefinition, or a reference to
  /// another StructureDefinition or Implementation Guide by a canonical URL.
  /// When an implementation guide is specified, the type SHALL conform to at
  /// least one profile defined in the implementation guide.
  final List<FhirCanonical>? profile;

  /// [targetProfile]
  /// Used when the type is "Reference" or "canonical", and identifies a
  /// profile structure or implementation Guide that applies to the target of
  /// the reference this element refers to. If any profiles are specified,
  /// then the content must conform to at least one of them. The URL can be a
  /// local reference - to a contained StructureDefinition, or a reference to
  /// another StructureDefinition or Implementation Guide by a canonical URL.
  /// When an implementation guide is specified, the target resource SHALL
  /// conform to at least one profile defined in the implementation guide.
  final List<FhirCanonical>? targetProfile;

  /// [aggregation]
  /// If the type is a reference to another resource, how the resource is or
  /// can be aggregated - is it a contained resource, or a reference, and if
  /// the context is a bundle, is it included in the bundle.
  final List<AggregationMode>? aggregation;

  /// [versioning]
  /// Whether this reference needs to be version specific or version
  /// independent, or whether either can be used.
  final ReferenceVersionRules? versioning;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    final fieldJson2 = code.toJson();
    json['code'] = fieldJson2['value'];
    if (fieldJson2['_value'] != null) {
      json['_code'] = fieldJson2['_value'];
    }

    if (profile != null && profile!.isNotEmpty) {
      final fieldJson3 = profile!.map((e) => e.toJson()).toList();
      json['profile'] = fieldJson3.map((e) => e['value']).toList();
      if (fieldJson3.any((e) => e['_value'] != null)) {
        json['_profile'] = fieldJson3.map((e) => e['_value']).toList();
      }
    }

    if (targetProfile != null && targetProfile!.isNotEmpty) {
      final fieldJson4 = targetProfile!.map((e) => e.toJson()).toList();
      json['targetProfile'] = fieldJson4.map((e) => e['value']).toList();
      if (fieldJson4.any((e) => e['_value'] != null)) {
        json['_targetProfile'] = fieldJson4.map((e) => e['_value']).toList();
      }
    }

    if (aggregation != null && aggregation!.isNotEmpty) {
      final fieldJson5 = aggregation!.map((e) => e.toJson()).toList();
      json['aggregation'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_aggregation'] = fieldJson5.map((e) => e['_value']).toList();
      }
    }

    if (versioning != null) {
      final fieldJson6 = versioning!.toJson();
      json['versioning'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_versioning'] = fieldJson6['_value'];
      }
    }

    return json;
  }

  @override
  ElementDefinitionType clone() => throw UnimplementedError();
  @override
  ElementDefinitionType copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirUri? code,
    List<FhirCanonical>? profile,
    List<FhirCanonical>? targetProfile,
    List<AggregationMode>? aggregation,
    ReferenceVersionRules? versioning,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ElementDefinitionType(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      code: code ?? this.code,
      profile: profile ?? this.profile,
      targetProfile: targetProfile ?? this.targetProfile,
      aggregation: aggregation ?? this.aggregation,
      versioning: versioning ?? this.versioning,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ElementDefinitionExample]
/// A sample value for this element demonstrating the type of information
/// that would typically be found in the element.
class ElementDefinitionExample extends Element {
  /// Primary constructor for [ElementDefinitionExample]

  ElementDefinitionExample({
    super.id,
    this.extension_,
    required this.label,
    this.valueBase64Binary,
    this.valueBoolean,
    this.valueCanonical,
    this.valueCode,
    this.valueDate,
    this.valueDateTime,
    this.valueDecimal,
    this.valueId,
    this.valueInstant,
    this.valueInteger,
    this.valueMarkdown,
    this.valueOid,
    this.valuePositiveInt,
    this.valueString,
    this.valueTime,
    this.valueUnsignedInt,
    this.valueUri,
    this.valueUrl,
    this.valueUuid,
    this.valueAddress,
    this.valueAge,
    this.valueAnnotation,
    this.valueAttachment,
    this.valueCodeableConcept,
    this.valueCodeableReference,
    this.valueCoding,
    this.valueContactPoint,
    this.valueCount,
    this.valueDistance,
    this.valueDuration,
    this.valueHumanName,
    this.valueIdentifier,
    this.valueMoney,
    this.valuePeriod,
    this.valueQuantity,
    this.valueRange,
    this.valueRatio,
    this.valueRatioRange,
    this.valueReference,
    this.valueSampledData,
    this.valueSignature,
    this.valueTiming,
    this.valueContactDetail,
    this.valueContributor,
    this.valueDataRequirement,
    this.valueExpression,
    this.valueParameterDefinition,
    this.valueRelatedArtifact,
    this.valueTriggerDefinition,
    this.valueUsageContext,
    this.valueDosage,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ElementDefinitionExample.fromJson(Map<String, dynamic> json) {
    return ElementDefinitionExample(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      label: FhirString.fromJson({
        'value': json['label'],
        '_value': json['_label'],
      }),
      valueBase64Binary: json['valueBase64Binary'] != null
          ? FhirBase64Binary.fromJson({
              'value': json['valueBase64Binary'],
              '_value': json['_valueBase64Binary'],
            })
          : null,
      valueBoolean: json['valueBoolean'] != null
          ? FhirBoolean.fromJson({
              'value': json['valueBoolean'],
              '_value': json['_valueBoolean'],
            })
          : null,
      valueCanonical: json['valueCanonical'] != null
          ? FhirCanonical.fromJson({
              'value': json['valueCanonical'],
              '_value': json['_valueCanonical'],
            })
          : null,
      valueCode: json['valueCode'] != null
          ? FhirCode.fromJson({
              'value': json['valueCode'],
              '_value': json['_valueCode'],
            })
          : null,
      valueDate: json['valueDate'] != null
          ? FhirDate.fromJson({
              'value': json['valueDate'],
              '_value': json['_valueDate'],
            })
          : null,
      valueDateTime: json['valueDateTime'] != null
          ? FhirDateTime.fromJson({
              'value': json['valueDateTime'],
              '_value': json['_valueDateTime'],
            })
          : null,
      valueDecimal: json['valueDecimal'] != null
          ? FhirDecimal.fromJson({
              'value': json['valueDecimal'],
              '_value': json['_valueDecimal'],
            })
          : null,
      valueId: json['valueId'] != null
          ? FhirId.fromJson({
              'value': json['valueId'],
              '_value': json['_valueId'],
            })
          : null,
      valueInstant: json['valueInstant'] != null
          ? FhirInstant.fromJson({
              'value': json['valueInstant'],
              '_value': json['_valueInstant'],
            })
          : null,
      valueInteger: json['valueInteger'] != null
          ? FhirInteger.fromJson({
              'value': json['valueInteger'],
              '_value': json['_valueInteger'],
            })
          : null,
      valueMarkdown: json['valueMarkdown'] != null
          ? FhirMarkdown.fromJson({
              'value': json['valueMarkdown'],
              '_value': json['_valueMarkdown'],
            })
          : null,
      valueOid: json['valueOid'] != null
          ? FhirOid.fromJson({
              'value': json['valueOid'],
              '_value': json['_valueOid'],
            })
          : null,
      valuePositiveInt: json['valuePositiveInt'] != null
          ? FhirPositiveInt.fromJson({
              'value': json['valuePositiveInt'],
              '_value': json['_valuePositiveInt'],
            })
          : null,
      valueString: json['valueString'] != null
          ? FhirString.fromJson({
              'value': json['valueString'],
              '_value': json['_valueString'],
            })
          : null,
      valueTime: json['valueTime'] != null
          ? FhirTime.fromJson({
              'value': json['valueTime'],
              '_value': json['_valueTime'],
            })
          : null,
      valueUnsignedInt: json['valueUnsignedInt'] != null
          ? FhirUnsignedInt.fromJson({
              'value': json['valueUnsignedInt'],
              '_value': json['_valueUnsignedInt'],
            })
          : null,
      valueUri: json['valueUri'] != null
          ? FhirUri.fromJson({
              'value': json['valueUri'],
              '_value': json['_valueUri'],
            })
          : null,
      valueUrl: json['valueUrl'] != null
          ? FhirUrl.fromJson({
              'value': json['valueUrl'],
              '_value': json['_valueUrl'],
            })
          : null,
      valueUuid: json['valueUuid'] != null
          ? FhirUuid.fromJson({
              'value': json['valueUuid'],
              '_value': json['_valueUuid'],
            })
          : null,
      valueAddress: json['valueAddress'] != null
          ? Address.fromJson(
              json['valueAddress'] as Map<String, dynamic>,
            )
          : null,
      valueAge: json['valueAge'] != null
          ? Age.fromJson(
              json['valueAge'] as Map<String, dynamic>,
            )
          : null,
      valueAnnotation: json['valueAnnotation'] != null
          ? Annotation.fromJson(
              json['valueAnnotation'] as Map<String, dynamic>,
            )
          : null,
      valueAttachment: json['valueAttachment'] != null
          ? Attachment.fromJson(
              json['valueAttachment'] as Map<String, dynamic>,
            )
          : null,
      valueCodeableConcept: json['valueCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['valueCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      valueCodeableReference: json['valueCodeableReference'] != null
          ? CodeableReference.fromJson(
              json['valueCodeableReference'] as Map<String, dynamic>,
            )
          : null,
      valueCoding: json['valueCoding'] != null
          ? Coding.fromJson(
              json['valueCoding'] as Map<String, dynamic>,
            )
          : null,
      valueContactPoint: json['valueContactPoint'] != null
          ? ContactPoint.fromJson(
              json['valueContactPoint'] as Map<String, dynamic>,
            )
          : null,
      valueCount: json['valueCount'] != null
          ? Count.fromJson(
              json['valueCount'] as Map<String, dynamic>,
            )
          : null,
      valueDistance: json['valueDistance'] != null
          ? Distance.fromJson(
              json['valueDistance'] as Map<String, dynamic>,
            )
          : null,
      valueDuration: json['valueDuration'] != null
          ? FhirDuration.fromJson(
              json['valueDuration'] as Map<String, dynamic>,
            )
          : null,
      valueHumanName: json['valueHumanName'] != null
          ? HumanName.fromJson(
              json['valueHumanName'] as Map<String, dynamic>,
            )
          : null,
      valueIdentifier: json['valueIdentifier'] != null
          ? Identifier.fromJson(
              json['valueIdentifier'] as Map<String, dynamic>,
            )
          : null,
      valueMoney: json['valueMoney'] != null
          ? Money.fromJson(
              json['valueMoney'] as Map<String, dynamic>,
            )
          : null,
      valuePeriod: json['valuePeriod'] != null
          ? Period.fromJson(
              json['valuePeriod'] as Map<String, dynamic>,
            )
          : null,
      valueQuantity: json['valueQuantity'] != null
          ? Quantity.fromJson(
              json['valueQuantity'] as Map<String, dynamic>,
            )
          : null,
      valueRange: json['valueRange'] != null
          ? Range.fromJson(
              json['valueRange'] as Map<String, dynamic>,
            )
          : null,
      valueRatio: json['valueRatio'] != null
          ? Ratio.fromJson(
              json['valueRatio'] as Map<String, dynamic>,
            )
          : null,
      valueRatioRange: json['valueRatioRange'] != null
          ? RatioRange.fromJson(
              json['valueRatioRange'] as Map<String, dynamic>,
            )
          : null,
      valueReference: json['valueReference'] != null
          ? Reference.fromJson(
              json['valueReference'] as Map<String, dynamic>,
            )
          : null,
      valueSampledData: json['valueSampledData'] != null
          ? SampledData.fromJson(
              json['valueSampledData'] as Map<String, dynamic>,
            )
          : null,
      valueSignature: json['valueSignature'] != null
          ? Signature.fromJson(
              json['valueSignature'] as Map<String, dynamic>,
            )
          : null,
      valueTiming: json['valueTiming'] != null
          ? Timing.fromJson(
              json['valueTiming'] as Map<String, dynamic>,
            )
          : null,
      valueContactDetail: json['valueContactDetail'] != null
          ? ContactDetail.fromJson(
              json['valueContactDetail'] as Map<String, dynamic>,
            )
          : null,
      valueContributor: json['valueContributor'] != null
          ? Contributor.fromJson(
              json['valueContributor'] as Map<String, dynamic>,
            )
          : null,
      valueDataRequirement: json['valueDataRequirement'] != null
          ? DataRequirement.fromJson(
              json['valueDataRequirement'] as Map<String, dynamic>,
            )
          : null,
      valueExpression: json['valueExpression'] != null
          ? FhirExpression.fromJson(
              json['valueExpression'] as Map<String, dynamic>,
            )
          : null,
      valueParameterDefinition: json['valueParameterDefinition'] != null
          ? ParameterDefinition.fromJson(
              json['valueParameterDefinition'] as Map<String, dynamic>,
            )
          : null,
      valueRelatedArtifact: json['valueRelatedArtifact'] != null
          ? RelatedArtifact.fromJson(
              json['valueRelatedArtifact'] as Map<String, dynamic>,
            )
          : null,
      valueTriggerDefinition: json['valueTriggerDefinition'] != null
          ? TriggerDefinition.fromJson(
              json['valueTriggerDefinition'] as Map<String, dynamic>,
            )
          : null,
      valueUsageContext: json['valueUsageContext'] != null
          ? UsageContext.fromJson(
              json['valueUsageContext'] as Map<String, dynamic>,
            )
          : null,
      valueDosage: json['valueDosage'] != null
          ? Dosage.fromJson(
              json['valueDosage'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [ElementDefinitionExample] from a [String]
  /// or [YamlMap] object
  factory ElementDefinitionExample.fromYaml(dynamic yaml) => yaml is String
      ? ElementDefinitionExample.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ElementDefinitionExample.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ElementDefinitionExample cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ElementDefinitionExample]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ElementDefinitionExample.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ElementDefinitionExample.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ElementDefinitionExample';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [label]
  /// Describes the purpose of this example amoung the set of examples.
  final FhirString label;

  /// [valueBase64Binary]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final FhirBase64Binary? valueBase64Binary;

  /// [valueBoolean]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final FhirBoolean? valueBoolean;

  /// [valueCanonical]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final FhirCanonical? valueCanonical;

  /// [valueCode]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final FhirCode? valueCode;

  /// [valueDate]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final FhirDate? valueDate;

  /// [valueDateTime]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final FhirDateTime? valueDateTime;

  /// [valueDecimal]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final FhirDecimal? valueDecimal;

  /// [valueId]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final FhirId? valueId;

  /// [valueInstant]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final FhirInstant? valueInstant;

  /// [valueInteger]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final FhirInteger? valueInteger;

  /// [valueMarkdown]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final FhirMarkdown? valueMarkdown;

  /// [valueOid]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final FhirOid? valueOid;

  /// [valuePositiveInt]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final FhirPositiveInt? valuePositiveInt;

  /// [valueString]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final FhirString? valueString;

  /// [valueTime]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final FhirTime? valueTime;

  /// [valueUnsignedInt]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final FhirUnsignedInt? valueUnsignedInt;

  /// [valueUri]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final FhirUri? valueUri;

  /// [valueUrl]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final FhirUrl? valueUrl;

  /// [valueUuid]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final FhirUuid? valueUuid;

  /// [valueAddress]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final Address? valueAddress;

  /// [valueAge]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final Age? valueAge;

  /// [valueAnnotation]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final Annotation? valueAnnotation;

  /// [valueAttachment]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final Attachment? valueAttachment;

  /// [valueCodeableConcept]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final CodeableConcept? valueCodeableConcept;

  /// [valueCodeableReference]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final CodeableReference? valueCodeableReference;

  /// [valueCoding]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final Coding? valueCoding;

  /// [valueContactPoint]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final ContactPoint? valueContactPoint;

  /// [valueCount]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final Count? valueCount;

  /// [valueDistance]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final Distance? valueDistance;

  /// [valueDuration]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final FhirDuration? valueDuration;

  /// [valueHumanName]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final HumanName? valueHumanName;

  /// [valueIdentifier]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final Identifier? valueIdentifier;

  /// [valueMoney]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final Money? valueMoney;

  /// [valuePeriod]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final Period? valuePeriod;

  /// [valueQuantity]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final Quantity? valueQuantity;

  /// [valueRange]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final Range? valueRange;

  /// [valueRatio]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final Ratio? valueRatio;

  /// [valueRatioRange]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final RatioRange? valueRatioRange;

  /// [valueReference]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final Reference? valueReference;

  /// [valueSampledData]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final SampledData? valueSampledData;

  /// [valueSignature]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final Signature? valueSignature;

  /// [valueTiming]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final Timing? valueTiming;

  /// [valueContactDetail]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final ContactDetail? valueContactDetail;

  /// [valueContributor]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final Contributor? valueContributor;

  /// [valueDataRequirement]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final DataRequirement? valueDataRequirement;

  /// [valueExpression]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final FhirExpression? valueExpression;

  /// [valueParameterDefinition]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final ParameterDefinition? valueParameterDefinition;

  /// [valueRelatedArtifact]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final RelatedArtifact? valueRelatedArtifact;

  /// [valueTriggerDefinition]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final TriggerDefinition? valueTriggerDefinition;

  /// [valueUsageContext]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final UsageContext? valueUsageContext;

  /// [valueDosage]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final Dosage? valueDosage;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    final fieldJson2 = label.toJson();
    json['label'] = fieldJson2['value'];
    if (fieldJson2['_value'] != null) {
      json['_label'] = fieldJson2['_value'];
    }

    if (valueBase64Binary != null) {
      final fieldJson3 = valueBase64Binary!.toJson();
      json['valueBase64Binary'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_valueBase64Binary'] = fieldJson3['_value'];
      }
    }

    if (valueBoolean != null) {
      final fieldJson4 = valueBoolean!.toJson();
      json['valueBoolean'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_valueBoolean'] = fieldJson4['_value'];
      }
    }

    if (valueCanonical != null) {
      final fieldJson5 = valueCanonical!.toJson();
      json['valueCanonical'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_valueCanonical'] = fieldJson5['_value'];
      }
    }

    if (valueCode != null) {
      final fieldJson6 = valueCode!.toJson();
      json['valueCode'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_valueCode'] = fieldJson6['_value'];
      }
    }

    if (valueDate != null) {
      final fieldJson7 = valueDate!.toJson();
      json['valueDate'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_valueDate'] = fieldJson7['_value'];
      }
    }

    if (valueDateTime != null) {
      final fieldJson8 = valueDateTime!.toJson();
      json['valueDateTime'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_valueDateTime'] = fieldJson8['_value'];
      }
    }

    if (valueDecimal != null) {
      final fieldJson9 = valueDecimal!.toJson();
      json['valueDecimal'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_valueDecimal'] = fieldJson9['_value'];
      }
    }

    if (valueId != null) {
      final fieldJson10 = valueId!.toJson();
      json['valueId'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_valueId'] = fieldJson10['_value'];
      }
    }

    if (valueInstant != null) {
      final fieldJson11 = valueInstant!.toJson();
      json['valueInstant'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_valueInstant'] = fieldJson11['_value'];
      }
    }

    if (valueInteger != null) {
      final fieldJson12 = valueInteger!.toJson();
      json['valueInteger'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_valueInteger'] = fieldJson12['_value'];
      }
    }

    if (valueMarkdown != null) {
      final fieldJson13 = valueMarkdown!.toJson();
      json['valueMarkdown'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_valueMarkdown'] = fieldJson13['_value'];
      }
    }

    if (valueOid != null) {
      final fieldJson14 = valueOid!.toJson();
      json['valueOid'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_valueOid'] = fieldJson14['_value'];
      }
    }

    if (valuePositiveInt != null) {
      final fieldJson15 = valuePositiveInt!.toJson();
      json['valuePositiveInt'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_valuePositiveInt'] = fieldJson15['_value'];
      }
    }

    if (valueString != null) {
      final fieldJson16 = valueString!.toJson();
      json['valueString'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_valueString'] = fieldJson16['_value'];
      }
    }

    if (valueTime != null) {
      final fieldJson17 = valueTime!.toJson();
      json['valueTime'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_valueTime'] = fieldJson17['_value'];
      }
    }

    if (valueUnsignedInt != null) {
      final fieldJson18 = valueUnsignedInt!.toJson();
      json['valueUnsignedInt'] = fieldJson18['value'];
      if (fieldJson18['_value'] != null) {
        json['_valueUnsignedInt'] = fieldJson18['_value'];
      }
    }

    if (valueUri != null) {
      final fieldJson19 = valueUri!.toJson();
      json['valueUri'] = fieldJson19['value'];
      if (fieldJson19['_value'] != null) {
        json['_valueUri'] = fieldJson19['_value'];
      }
    }

    if (valueUrl != null) {
      final fieldJson20 = valueUrl!.toJson();
      json['valueUrl'] = fieldJson20['value'];
      if (fieldJson20['_value'] != null) {
        json['_valueUrl'] = fieldJson20['_value'];
      }
    }

    if (valueUuid != null) {
      final fieldJson21 = valueUuid!.toJson();
      json['valueUuid'] = fieldJson21['value'];
      if (fieldJson21['_value'] != null) {
        json['_valueUuid'] = fieldJson21['_value'];
      }
    }

    if (valueAddress != null) {
      final fieldJson22 = valueAddress!.toJson();
      json['valueAddress'] = fieldJson22['value'];
      if (fieldJson22['_value'] != null) {
        json['_valueAddress'] = fieldJson22['_value'];
      }
    }

    if (valueAge != null) {
      final fieldJson23 = valueAge!.toJson();
      json['valueAge'] = fieldJson23['value'];
      if (fieldJson23['_value'] != null) {
        json['_valueAge'] = fieldJson23['_value'];
      }
    }

    if (valueAnnotation != null) {
      final fieldJson24 = valueAnnotation!.toJson();
      json['valueAnnotation'] = fieldJson24['value'];
      if (fieldJson24['_value'] != null) {
        json['_valueAnnotation'] = fieldJson24['_value'];
      }
    }

    if (valueAttachment != null) {
      final fieldJson25 = valueAttachment!.toJson();
      json['valueAttachment'] = fieldJson25['value'];
      if (fieldJson25['_value'] != null) {
        json['_valueAttachment'] = fieldJson25['_value'];
      }
    }

    if (valueCodeableConcept != null) {
      final fieldJson26 = valueCodeableConcept!.toJson();
      json['valueCodeableConcept'] = fieldJson26['value'];
      if (fieldJson26['_value'] != null) {
        json['_valueCodeableConcept'] = fieldJson26['_value'];
      }
    }

    if (valueCodeableReference != null) {
      final fieldJson27 = valueCodeableReference!.toJson();
      json['valueCodeableReference'] = fieldJson27['value'];
      if (fieldJson27['_value'] != null) {
        json['_valueCodeableReference'] = fieldJson27['_value'];
      }
    }

    if (valueCoding != null) {
      final fieldJson28 = valueCoding!.toJson();
      json['valueCoding'] = fieldJson28['value'];
      if (fieldJson28['_value'] != null) {
        json['_valueCoding'] = fieldJson28['_value'];
      }
    }

    if (valueContactPoint != null) {
      final fieldJson29 = valueContactPoint!.toJson();
      json['valueContactPoint'] = fieldJson29['value'];
      if (fieldJson29['_value'] != null) {
        json['_valueContactPoint'] = fieldJson29['_value'];
      }
    }

    if (valueCount != null) {
      final fieldJson30 = valueCount!.toJson();
      json['valueCount'] = fieldJson30['value'];
      if (fieldJson30['_value'] != null) {
        json['_valueCount'] = fieldJson30['_value'];
      }
    }

    if (valueDistance != null) {
      final fieldJson31 = valueDistance!.toJson();
      json['valueDistance'] = fieldJson31['value'];
      if (fieldJson31['_value'] != null) {
        json['_valueDistance'] = fieldJson31['_value'];
      }
    }

    if (valueDuration != null) {
      final fieldJson32 = valueDuration!.toJson();
      json['valueDuration'] = fieldJson32['value'];
      if (fieldJson32['_value'] != null) {
        json['_valueDuration'] = fieldJson32['_value'];
      }
    }

    if (valueHumanName != null) {
      final fieldJson33 = valueHumanName!.toJson();
      json['valueHumanName'] = fieldJson33['value'];
      if (fieldJson33['_value'] != null) {
        json['_valueHumanName'] = fieldJson33['_value'];
      }
    }

    if (valueIdentifier != null) {
      final fieldJson34 = valueIdentifier!.toJson();
      json['valueIdentifier'] = fieldJson34['value'];
      if (fieldJson34['_value'] != null) {
        json['_valueIdentifier'] = fieldJson34['_value'];
      }
    }

    if (valueMoney != null) {
      final fieldJson35 = valueMoney!.toJson();
      json['valueMoney'] = fieldJson35['value'];
      if (fieldJson35['_value'] != null) {
        json['_valueMoney'] = fieldJson35['_value'];
      }
    }

    if (valuePeriod != null) {
      final fieldJson36 = valuePeriod!.toJson();
      json['valuePeriod'] = fieldJson36['value'];
      if (fieldJson36['_value'] != null) {
        json['_valuePeriod'] = fieldJson36['_value'];
      }
    }

    if (valueQuantity != null) {
      final fieldJson37 = valueQuantity!.toJson();
      json['valueQuantity'] = fieldJson37['value'];
      if (fieldJson37['_value'] != null) {
        json['_valueQuantity'] = fieldJson37['_value'];
      }
    }

    if (valueRange != null) {
      final fieldJson38 = valueRange!.toJson();
      json['valueRange'] = fieldJson38['value'];
      if (fieldJson38['_value'] != null) {
        json['_valueRange'] = fieldJson38['_value'];
      }
    }

    if (valueRatio != null) {
      final fieldJson39 = valueRatio!.toJson();
      json['valueRatio'] = fieldJson39['value'];
      if (fieldJson39['_value'] != null) {
        json['_valueRatio'] = fieldJson39['_value'];
      }
    }

    if (valueRatioRange != null) {
      final fieldJson40 = valueRatioRange!.toJson();
      json['valueRatioRange'] = fieldJson40['value'];
      if (fieldJson40['_value'] != null) {
        json['_valueRatioRange'] = fieldJson40['_value'];
      }
    }

    if (valueReference != null) {
      final fieldJson41 = valueReference!.toJson();
      json['valueReference'] = fieldJson41['value'];
      if (fieldJson41['_value'] != null) {
        json['_valueReference'] = fieldJson41['_value'];
      }
    }

    if (valueSampledData != null) {
      final fieldJson42 = valueSampledData!.toJson();
      json['valueSampledData'] = fieldJson42['value'];
      if (fieldJson42['_value'] != null) {
        json['_valueSampledData'] = fieldJson42['_value'];
      }
    }

    if (valueSignature != null) {
      final fieldJson43 = valueSignature!.toJson();
      json['valueSignature'] = fieldJson43['value'];
      if (fieldJson43['_value'] != null) {
        json['_valueSignature'] = fieldJson43['_value'];
      }
    }

    if (valueTiming != null) {
      final fieldJson44 = valueTiming!.toJson();
      json['valueTiming'] = fieldJson44['value'];
      if (fieldJson44['_value'] != null) {
        json['_valueTiming'] = fieldJson44['_value'];
      }
    }

    if (valueContactDetail != null) {
      final fieldJson45 = valueContactDetail!.toJson();
      json['valueContactDetail'] = fieldJson45['value'];
      if (fieldJson45['_value'] != null) {
        json['_valueContactDetail'] = fieldJson45['_value'];
      }
    }

    if (valueContributor != null) {
      final fieldJson46 = valueContributor!.toJson();
      json['valueContributor'] = fieldJson46['value'];
      if (fieldJson46['_value'] != null) {
        json['_valueContributor'] = fieldJson46['_value'];
      }
    }

    if (valueDataRequirement != null) {
      final fieldJson47 = valueDataRequirement!.toJson();
      json['valueDataRequirement'] = fieldJson47['value'];
      if (fieldJson47['_value'] != null) {
        json['_valueDataRequirement'] = fieldJson47['_value'];
      }
    }

    if (valueExpression != null) {
      final fieldJson48 = valueExpression!.toJson();
      json['valueExpression'] = fieldJson48['value'];
      if (fieldJson48['_value'] != null) {
        json['_valueExpression'] = fieldJson48['_value'];
      }
    }

    if (valueParameterDefinition != null) {
      final fieldJson49 = valueParameterDefinition!.toJson();
      json['valueParameterDefinition'] = fieldJson49['value'];
      if (fieldJson49['_value'] != null) {
        json['_valueParameterDefinition'] = fieldJson49['_value'];
      }
    }

    if (valueRelatedArtifact != null) {
      final fieldJson50 = valueRelatedArtifact!.toJson();
      json['valueRelatedArtifact'] = fieldJson50['value'];
      if (fieldJson50['_value'] != null) {
        json['_valueRelatedArtifact'] = fieldJson50['_value'];
      }
    }

    if (valueTriggerDefinition != null) {
      final fieldJson51 = valueTriggerDefinition!.toJson();
      json['valueTriggerDefinition'] = fieldJson51['value'];
      if (fieldJson51['_value'] != null) {
        json['_valueTriggerDefinition'] = fieldJson51['_value'];
      }
    }

    if (valueUsageContext != null) {
      final fieldJson52 = valueUsageContext!.toJson();
      json['valueUsageContext'] = fieldJson52['value'];
      if (fieldJson52['_value'] != null) {
        json['_valueUsageContext'] = fieldJson52['_value'];
      }
    }

    if (valueDosage != null) {
      final fieldJson53 = valueDosage!.toJson();
      json['valueDosage'] = fieldJson53['value'];
      if (fieldJson53['_value'] != null) {
        json['_valueDosage'] = fieldJson53['_value'];
      }
    }

    return json;
  }

  @override
  ElementDefinitionExample clone() => throw UnimplementedError();
  @override
  ElementDefinitionExample copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? label,
    FhirBase64Binary? valueBase64Binary,
    FhirBoolean? valueBoolean,
    FhirCanonical? valueCanonical,
    FhirCode? valueCode,
    FhirDate? valueDate,
    FhirDateTime? valueDateTime,
    FhirDecimal? valueDecimal,
    FhirId? valueId,
    FhirInstant? valueInstant,
    FhirInteger? valueInteger,
    FhirMarkdown? valueMarkdown,
    FhirOid? valueOid,
    FhirPositiveInt? valuePositiveInt,
    FhirString? valueString,
    FhirTime? valueTime,
    FhirUnsignedInt? valueUnsignedInt,
    FhirUri? valueUri,
    FhirUrl? valueUrl,
    FhirUuid? valueUuid,
    Address? valueAddress,
    Age? valueAge,
    Annotation? valueAnnotation,
    Attachment? valueAttachment,
    CodeableConcept? valueCodeableConcept,
    CodeableReference? valueCodeableReference,
    Coding? valueCoding,
    ContactPoint? valueContactPoint,
    Count? valueCount,
    Distance? valueDistance,
    FhirDuration? valueDuration,
    HumanName? valueHumanName,
    Identifier? valueIdentifier,
    Money? valueMoney,
    Period? valuePeriod,
    Quantity? valueQuantity,
    Range? valueRange,
    Ratio? valueRatio,
    RatioRange? valueRatioRange,
    Reference? valueReference,
    SampledData? valueSampledData,
    Signature? valueSignature,
    Timing? valueTiming,
    ContactDetail? valueContactDetail,
    Contributor? valueContributor,
    DataRequirement? valueDataRequirement,
    FhirExpression? valueExpression,
    ParameterDefinition? valueParameterDefinition,
    RelatedArtifact? valueRelatedArtifact,
    TriggerDefinition? valueTriggerDefinition,
    UsageContext? valueUsageContext,
    Dosage? valueDosage,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ElementDefinitionExample(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      label: label ?? this.label,
      valueBase64Binary: valueBase64Binary ?? this.valueBase64Binary,
      valueBoolean: valueBoolean ?? this.valueBoolean,
      valueCanonical: valueCanonical ?? this.valueCanonical,
      valueCode: valueCode ?? this.valueCode,
      valueDate: valueDate ?? this.valueDate,
      valueDateTime: valueDateTime ?? this.valueDateTime,
      valueDecimal: valueDecimal ?? this.valueDecimal,
      valueId: valueId ?? this.valueId,
      valueInstant: valueInstant ?? this.valueInstant,
      valueInteger: valueInteger ?? this.valueInteger,
      valueMarkdown: valueMarkdown ?? this.valueMarkdown,
      valueOid: valueOid ?? this.valueOid,
      valuePositiveInt: valuePositiveInt ?? this.valuePositiveInt,
      valueString: valueString ?? this.valueString,
      valueTime: valueTime ?? this.valueTime,
      valueUnsignedInt: valueUnsignedInt ?? this.valueUnsignedInt,
      valueUri: valueUri ?? this.valueUri,
      valueUrl: valueUrl ?? this.valueUrl,
      valueUuid: valueUuid ?? this.valueUuid,
      valueAddress: valueAddress ?? this.valueAddress,
      valueAge: valueAge ?? this.valueAge,
      valueAnnotation: valueAnnotation ?? this.valueAnnotation,
      valueAttachment: valueAttachment ?? this.valueAttachment,
      valueCodeableConcept: valueCodeableConcept ?? this.valueCodeableConcept,
      valueCodeableReference:
          valueCodeableReference ?? this.valueCodeableReference,
      valueCoding: valueCoding ?? this.valueCoding,
      valueContactPoint: valueContactPoint ?? this.valueContactPoint,
      valueCount: valueCount ?? this.valueCount,
      valueDistance: valueDistance ?? this.valueDistance,
      valueDuration: valueDuration ?? this.valueDuration,
      valueHumanName: valueHumanName ?? this.valueHumanName,
      valueIdentifier: valueIdentifier ?? this.valueIdentifier,
      valueMoney: valueMoney ?? this.valueMoney,
      valuePeriod: valuePeriod ?? this.valuePeriod,
      valueQuantity: valueQuantity ?? this.valueQuantity,
      valueRange: valueRange ?? this.valueRange,
      valueRatio: valueRatio ?? this.valueRatio,
      valueRatioRange: valueRatioRange ?? this.valueRatioRange,
      valueReference: valueReference ?? this.valueReference,
      valueSampledData: valueSampledData ?? this.valueSampledData,
      valueSignature: valueSignature ?? this.valueSignature,
      valueTiming: valueTiming ?? this.valueTiming,
      valueContactDetail: valueContactDetail ?? this.valueContactDetail,
      valueContributor: valueContributor ?? this.valueContributor,
      valueDataRequirement: valueDataRequirement ?? this.valueDataRequirement,
      valueExpression: valueExpression ?? this.valueExpression,
      valueParameterDefinition:
          valueParameterDefinition ?? this.valueParameterDefinition,
      valueRelatedArtifact: valueRelatedArtifact ?? this.valueRelatedArtifact,
      valueTriggerDefinition:
          valueTriggerDefinition ?? this.valueTriggerDefinition,
      valueUsageContext: valueUsageContext ?? this.valueUsageContext,
      valueDosage: valueDosage ?? this.valueDosage,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ElementDefinitionConstraint]
/// Formal constraints such as co-occurrence and other constraints that can
/// be computationally evaluated within the context of the instance.
class ElementDefinitionConstraint extends Element {
  /// Primary constructor for [ElementDefinitionConstraint]

  ElementDefinitionConstraint({
    super.id,
    this.extension_,
    required this.key,
    this.requirements,
    required this.severity,
    required this.human,
    this.expression,
    this.xpath,
    this.source,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ElementDefinitionConstraint.fromJson(Map<String, dynamic> json) {
    return ElementDefinitionConstraint(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      key: FhirId.fromJson({
        'value': json['key'],
        '_value': json['_key'],
      }),
      requirements: json['requirements'] != null
          ? FhirString.fromJson({
              'value': json['requirements'],
              '_value': json['_requirements'],
            })
          : null,
      severity: ConstraintSeverity.fromJson({
        'value': json['severity'],
        '_value': json['_severity'],
      }),
      human: FhirString.fromJson({
        'value': json['human'],
        '_value': json['_human'],
      }),
      expression: json['expression'] != null
          ? FhirString.fromJson({
              'value': json['expression'],
              '_value': json['_expression'],
            })
          : null,
      xpath: json['xpath'] != null
          ? FhirString.fromJson({
              'value': json['xpath'],
              '_value': json['_xpath'],
            })
          : null,
      source: json['source'] != null
          ? FhirCanonical.fromJson({
              'value': json['source'],
              '_value': json['_source'],
            })
          : null,
    );
  }

  /// Deserialize [ElementDefinitionConstraint] from a [String]
  /// or [YamlMap] object
  factory ElementDefinitionConstraint.fromYaml(dynamic yaml) => yaml is String
      ? ElementDefinitionConstraint.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ElementDefinitionConstraint.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ElementDefinitionConstraint cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ElementDefinitionConstraint]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ElementDefinitionConstraint.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ElementDefinitionConstraint.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ElementDefinitionConstraint';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [key]
  /// Allows identification of which elements have their cardinalities
  /// impacted by the constraint. Will not be referenced for constraints that
  /// do not affect cardinality.
  final FhirId key;

  /// [requirements]
  /// Description of why this constraint is necessary or appropriate.
  final FhirString? requirements;

  /// [severity]
  /// Identifies the impact constraint violation has on the conformance of
  /// the instance.
  final ConstraintSeverity severity;

  /// [human]
  /// Text that can be used to describe the constraint in messages
  /// identifying that the constraint has been violated.
  final FhirString human;

  /// [expression]
  /// A [FHIRPath](fhirpath.html) expression of constraint that can be
  /// executed to see if this constraint is met.
  final FhirString? expression;

  /// [xpath]
  /// An XPath expression of constraint that can be executed to see if this
  /// constraint is met.
  final FhirString? xpath;

  /// [source]
  /// A reference to the original source of the constraint, for traceability
  /// purposes.
  final FhirCanonical? source;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    final fieldJson2 = key.toJson();
    json['key'] = fieldJson2['value'];
    if (fieldJson2['_value'] != null) {
      json['_key'] = fieldJson2['_value'];
    }

    if (requirements != null) {
      final fieldJson3 = requirements!.toJson();
      json['requirements'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_requirements'] = fieldJson3['_value'];
      }
    }

    final fieldJson4 = severity.toJson();
    json['severity'] = fieldJson4['value'];
    if (fieldJson4['_value'] != null) {
      json['_severity'] = fieldJson4['_value'];
    }

    final fieldJson5 = human.toJson();
    json['human'] = fieldJson5['value'];
    if (fieldJson5['_value'] != null) {
      json['_human'] = fieldJson5['_value'];
    }

    if (expression != null) {
      final fieldJson6 = expression!.toJson();
      json['expression'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_expression'] = fieldJson6['_value'];
      }
    }

    if (xpath != null) {
      final fieldJson7 = xpath!.toJson();
      json['xpath'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_xpath'] = fieldJson7['_value'];
      }
    }

    if (source != null) {
      final fieldJson8 = source!.toJson();
      json['source'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_source'] = fieldJson8['_value'];
      }
    }

    return json;
  }

  @override
  ElementDefinitionConstraint clone() => throw UnimplementedError();
  @override
  ElementDefinitionConstraint copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirId? key,
    FhirString? requirements,
    ConstraintSeverity? severity,
    FhirString? human,
    FhirString? expression,
    FhirString? xpath,
    FhirCanonical? source,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ElementDefinitionConstraint(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      key: key ?? this.key,
      requirements: requirements ?? this.requirements,
      severity: severity ?? this.severity,
      human: human ?? this.human,
      expression: expression ?? this.expression,
      xpath: xpath ?? this.xpath,
      source: source ?? this.source,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ElementDefinitionBinding]
/// Binds to a value set if this element is coded (code, Coding,
/// CodeableConcept, Quantity), or the data types (string, uri).
class ElementDefinitionBinding extends Element {
  /// Primary constructor for [ElementDefinitionBinding]

  ElementDefinitionBinding({
    super.id,
    this.extension_,
    required this.strength,
    this.description,
    this.valueSet,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ElementDefinitionBinding.fromJson(Map<String, dynamic> json) {
    return ElementDefinitionBinding(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      strength: BindingStrength.fromJson({
        'value': json['strength'],
        '_value': json['_strength'],
      }),
      description: json['description'] != null
          ? FhirString.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      valueSet: json['valueSet'] != null
          ? FhirCanonical.fromJson({
              'value': json['valueSet'],
              '_value': json['_valueSet'],
            })
          : null,
    );
  }

  /// Deserialize [ElementDefinitionBinding] from a [String]
  /// or [YamlMap] object
  factory ElementDefinitionBinding.fromYaml(dynamic yaml) => yaml is String
      ? ElementDefinitionBinding.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ElementDefinitionBinding.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ElementDefinitionBinding cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ElementDefinitionBinding]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ElementDefinitionBinding.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ElementDefinitionBinding.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ElementDefinitionBinding';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [strength]
  /// Indicates the degree of conformance expectations associated with this
  /// binding - that is, the degree to which the provided value set must be
  /// adhered to in the instances.
  final BindingStrength strength;

  /// [description]
  /// Describes the intended use of this particular set of codes.
  final FhirString? description;

  /// [valueSet]
  /// Refers to the value set that identifies the set of codes the binding
  /// refers to.
  final FhirCanonical? valueSet;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    final fieldJson2 = strength.toJson();
    json['strength'] = fieldJson2['value'];
    if (fieldJson2['_value'] != null) {
      json['_strength'] = fieldJson2['_value'];
    }

    if (description != null) {
      final fieldJson3 = description!.toJson();
      json['description'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_description'] = fieldJson3['_value'];
      }
    }

    if (valueSet != null) {
      final fieldJson4 = valueSet!.toJson();
      json['valueSet'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_valueSet'] = fieldJson4['_value'];
      }
    }

    return json;
  }

  @override
  ElementDefinitionBinding clone() => throw UnimplementedError();
  @override
  ElementDefinitionBinding copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    BindingStrength? strength,
    FhirString? description,
    FhirCanonical? valueSet,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ElementDefinitionBinding(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      strength: strength ?? this.strength,
      description: description ?? this.description,
      valueSet: valueSet ?? this.valueSet,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ElementDefinitionMapping]
/// Identifies a concept from an external specification that roughly
/// corresponds to this element.
class ElementDefinitionMapping extends Element {
  /// Primary constructor for [ElementDefinitionMapping]

  ElementDefinitionMapping({
    super.id,
    this.extension_,
    required this.identity,
    this.language,
    required this.map,
    this.comment,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ElementDefinitionMapping.fromJson(Map<String, dynamic> json) {
    return ElementDefinitionMapping(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      identity: FhirId.fromJson({
        'value': json['identity'],
        '_value': json['_identity'],
      }),
      language: json['language'] != null
          ? FhirCode.fromJson({
              'value': json['language'],
              '_value': json['_language'],
            })
          : null,
      map: FhirString.fromJson({
        'value': json['map'],
        '_value': json['_map'],
      }),
      comment: json['comment'] != null
          ? FhirString.fromJson({
              'value': json['comment'],
              '_value': json['_comment'],
            })
          : null,
    );
  }

  /// Deserialize [ElementDefinitionMapping] from a [String]
  /// or [YamlMap] object
  factory ElementDefinitionMapping.fromYaml(dynamic yaml) => yaml is String
      ? ElementDefinitionMapping.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ElementDefinitionMapping.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ElementDefinitionMapping cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ElementDefinitionMapping]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ElementDefinitionMapping.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ElementDefinitionMapping.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ElementDefinitionMapping';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [identity]
  /// An internal reference to the definition of a mapping.
  final FhirId identity;

  /// [language]
  /// Identifies the computable language in which mapping.map is expressed.
  final FhirCode? language;

  /// [map]
  /// Expresses what part of the target specification corresponds to this
  /// element.
  final FhirString map;

  /// [comment]
  /// Comments that provide information about the mapping or its use.
  final FhirString? comment;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    final fieldJson2 = identity.toJson();
    json['identity'] = fieldJson2['value'];
    if (fieldJson2['_value'] != null) {
      json['_identity'] = fieldJson2['_value'];
    }

    if (language != null) {
      final fieldJson3 = language!.toJson();
      json['language'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_language'] = fieldJson3['_value'];
      }
    }

    final fieldJson4 = map.toJson();
    json['map'] = fieldJson4['value'];
    if (fieldJson4['_value'] != null) {
      json['_map'] = fieldJson4['_value'];
    }

    if (comment != null) {
      final fieldJson5 = comment!.toJson();
      json['comment'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_comment'] = fieldJson5['_value'];
      }
    }

    return json;
  }

  @override
  ElementDefinitionMapping clone() => throw UnimplementedError();
  @override
  ElementDefinitionMapping copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirId? identity,
    FhirCode? language,
    FhirString? map,
    FhirString? comment,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ElementDefinitionMapping(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      identity: identity ?? this.identity,
      language: language ?? this.language,
      map: map ?? this.map,
      comment: comment ?? this.comment,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
