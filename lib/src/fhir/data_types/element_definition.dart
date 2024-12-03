import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ElementDefinition]
/// Captures constraints on each element within the resource, profile, or
/// extension.
class ElementDefinition extends BackboneType {
  /// Primary constructor for
  /// [ElementDefinition]

  ElementDefinition({
    super.id,
    super.extension_,
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
  factory ElementDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return ElementDefinition(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      path: FhirString.fromJson({
        'value': json['path'],
        '_value': json['_path'],
      }),
      representation: parseList<PropertyRepresentation>(
        json['representation'] as List<dynamic>?,
        json['_representation'] as List<dynamic>?,
        PropertyRepresentation.fromJson,
      ),
      sliceName: parseField<FhirString>(
        json['sliceName'],
        json['_sliceName'],
        FhirString.fromJson,
      ),
      sliceIsConstraining: parseField<FhirBoolean>(
        json['sliceIsConstraining'],
        json['_sliceIsConstraining'],
        FhirBoolean.fromJson,
      ),
      label: parseField<FhirString>(
        json['label'],
        json['_label'],
        FhirString.fromJson,
      ),
      code: parseList<Coding>(
        json['code'] as List<dynamic>?,
        json['_code'] as List<dynamic>?,
        Coding.fromJson,
      ),
      slicing: json['slicing'] != null
          ? ElementDefinitionSlicing.fromJson(
              json['slicing'] as Map<String, dynamic>,
            )
          : null,
      short: parseField<FhirString>(
        json['short'],
        json['_short'],
        FhirString.fromJson,
      ),
      definition: parseField<FhirMarkdown>(
        json['definition'],
        json['_definition'],
        FhirMarkdown.fromJson,
      ),
      comment: parseField<FhirMarkdown>(
        json['comment'],
        json['_comment'],
        FhirMarkdown.fromJson,
      ),
      requirements: parseField<FhirMarkdown>(
        json['requirements'],
        json['_requirements'],
        FhirMarkdown.fromJson,
      ),
      alias: parseList<FhirString>(
        json['alias'] as List<dynamic>?,
        json['_alias'] as List<dynamic>?,
        FhirString.fromJson,
      ),
      min: parseField<FhirUnsignedInt>(
        json['min'],
        json['_min'],
        FhirUnsignedInt.fromJson,
      ),
      max: parseField<FhirString>(
        json['max'],
        json['_max'],
        FhirString.fromJson,
      ),
      base: json['base'] != null
          ? ElementDefinitionBase.fromJson(
              json['base'] as Map<String, dynamic>,
            )
          : null,
      contentReference: parseField<FhirUri>(
        json['contentReference'],
        json['_contentReference'],
        FhirUri.fromJson,
      ),
      type: parseList<ElementDefinitionType>(
        json['type'] as List<dynamic>?,
        json['_type'] as List<dynamic>?,
        ElementDefinitionType.fromJson,
      ),
      defaultValueBase64Binary: parseField<FhirBase64Binary>(
        json['defaultValueBase64Binary'],
        json['_defaultValueBase64Binary'],
        FhirBase64Binary.fromJson,
      ),
      defaultValueBoolean: parseField<FhirBoolean>(
        json['defaultValueBoolean'],
        json['_defaultValueBoolean'],
        FhirBoolean.fromJson,
      ),
      defaultValueCanonical: parseField<FhirCanonical>(
        json['defaultValueCanonical'],
        json['_defaultValueCanonical'],
        FhirCanonical.fromJson,
      ),
      defaultValueCode: parseField<FhirCode>(
        json['defaultValueCode'],
        json['_defaultValueCode'],
        FhirCode.fromJson,
      ),
      defaultValueDate: parseField<FhirDate>(
        json['defaultValueDate'],
        json['_defaultValueDate'],
        FhirDate.fromJson,
      ),
      defaultValueDateTime: parseField<FhirDateTime>(
        json['defaultValueDateTime'],
        json['_defaultValueDateTime'],
        FhirDateTime.fromJson,
      ),
      defaultValueDecimal: parseField<FhirDecimal>(
        json['defaultValueDecimal'],
        json['_defaultValueDecimal'],
        FhirDecimal.fromJson,
      ),
      defaultValueId: parseField<FhirId>(
        json['defaultValueId'],
        json['_defaultValueId'],
        FhirId.fromJson,
      ),
      defaultValueInstant: parseField<FhirInstant>(
        json['defaultValueInstant'],
        json['_defaultValueInstant'],
        FhirInstant.fromJson,
      ),
      defaultValueInteger: parseField<FhirInteger>(
        json['defaultValueInteger'],
        json['_defaultValueInteger'],
        FhirInteger.fromJson,
      ),
      defaultValueMarkdown: parseField<FhirMarkdown>(
        json['defaultValueMarkdown'],
        json['_defaultValueMarkdown'],
        FhirMarkdown.fromJson,
      ),
      defaultValueOid: parseField<FhirOid>(
        json['defaultValueOid'],
        json['_defaultValueOid'],
        FhirOid.fromJson,
      ),
      defaultValuePositiveInt: parseField<FhirPositiveInt>(
        json['defaultValuePositiveInt'],
        json['_defaultValuePositiveInt'],
        FhirPositiveInt.fromJson,
      ),
      defaultValueString: parseField<FhirString>(
        json['defaultValueString'],
        json['_defaultValueString'],
        FhirString.fromJson,
      ),
      defaultValueTime: parseField<FhirTime>(
        json['defaultValueTime'],
        json['_defaultValueTime'],
        FhirTime.fromJson,
      ),
      defaultValueUnsignedInt: parseField<FhirUnsignedInt>(
        json['defaultValueUnsignedInt'],
        json['_defaultValueUnsignedInt'],
        FhirUnsignedInt.fromJson,
      ),
      defaultValueUri: parseField<FhirUri>(
        json['defaultValueUri'],
        json['_defaultValueUri'],
        FhirUri.fromJson,
      ),
      defaultValueUrl: parseField<FhirUrl>(
        json['defaultValueUrl'],
        json['_defaultValueUrl'],
        FhirUrl.fromJson,
      ),
      defaultValueUuid: parseField<FhirUuid>(
        json['defaultValueUuid'],
        json['_defaultValueUuid'],
        FhirUuid.fromJson,
      ),
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
      meaningWhenMissing: parseField<FhirMarkdown>(
        json['meaningWhenMissing'],
        json['_meaningWhenMissing'],
        FhirMarkdown.fromJson,
      ),
      orderMeaning: parseField<FhirString>(
        json['orderMeaning'],
        json['_orderMeaning'],
        FhirString.fromJson,
      ),
      fixedBase64Binary: parseField<FhirBase64Binary>(
        json['fixedBase64Binary'],
        json['_fixedBase64Binary'],
        FhirBase64Binary.fromJson,
      ),
      fixedBoolean: parseField<FhirBoolean>(
        json['fixedBoolean'],
        json['_fixedBoolean'],
        FhirBoolean.fromJson,
      ),
      fixedCanonical: parseField<FhirCanonical>(
        json['fixedCanonical'],
        json['_fixedCanonical'],
        FhirCanonical.fromJson,
      ),
      fixedCode: parseField<FhirCode>(
        json['fixedCode'],
        json['_fixedCode'],
        FhirCode.fromJson,
      ),
      fixedDate: parseField<FhirDate>(
        json['fixedDate'],
        json['_fixedDate'],
        FhirDate.fromJson,
      ),
      fixedDateTime: parseField<FhirDateTime>(
        json['fixedDateTime'],
        json['_fixedDateTime'],
        FhirDateTime.fromJson,
      ),
      fixedDecimal: parseField<FhirDecimal>(
        json['fixedDecimal'],
        json['_fixedDecimal'],
        FhirDecimal.fromJson,
      ),
      fixedId: parseField<FhirId>(
        json['fixedId'],
        json['_fixedId'],
        FhirId.fromJson,
      ),
      fixedInstant: parseField<FhirInstant>(
        json['fixedInstant'],
        json['_fixedInstant'],
        FhirInstant.fromJson,
      ),
      fixedInteger: parseField<FhirInteger>(
        json['fixedInteger'],
        json['_fixedInteger'],
        FhirInteger.fromJson,
      ),
      fixedMarkdown: parseField<FhirMarkdown>(
        json['fixedMarkdown'],
        json['_fixedMarkdown'],
        FhirMarkdown.fromJson,
      ),
      fixedOid: parseField<FhirOid>(
        json['fixedOid'],
        json['_fixedOid'],
        FhirOid.fromJson,
      ),
      fixedPositiveInt: parseField<FhirPositiveInt>(
        json['fixedPositiveInt'],
        json['_fixedPositiveInt'],
        FhirPositiveInt.fromJson,
      ),
      fixedString: parseField<FhirString>(
        json['fixedString'],
        json['_fixedString'],
        FhirString.fromJson,
      ),
      fixedTime: parseField<FhirTime>(
        json['fixedTime'],
        json['_fixedTime'],
        FhirTime.fromJson,
      ),
      fixedUnsignedInt: parseField<FhirUnsignedInt>(
        json['fixedUnsignedInt'],
        json['_fixedUnsignedInt'],
        FhirUnsignedInt.fromJson,
      ),
      fixedUri: parseField<FhirUri>(
        json['fixedUri'],
        json['_fixedUri'],
        FhirUri.fromJson,
      ),
      fixedUrl: parseField<FhirUrl>(
        json['fixedUrl'],
        json['_fixedUrl'],
        FhirUrl.fromJson,
      ),
      fixedUuid: parseField<FhirUuid>(
        json['fixedUuid'],
        json['_fixedUuid'],
        FhirUuid.fromJson,
      ),
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
      patternBase64Binary: parseField<FhirBase64Binary>(
        json['patternBase64Binary'],
        json['_patternBase64Binary'],
        FhirBase64Binary.fromJson,
      ),
      patternBoolean: parseField<FhirBoolean>(
        json['patternBoolean'],
        json['_patternBoolean'],
        FhirBoolean.fromJson,
      ),
      patternCanonical: parseField<FhirCanonical>(
        json['patternCanonical'],
        json['_patternCanonical'],
        FhirCanonical.fromJson,
      ),
      patternCode: parseField<FhirCode>(
        json['patternCode'],
        json['_patternCode'],
        FhirCode.fromJson,
      ),
      patternDate: parseField<FhirDate>(
        json['patternDate'],
        json['_patternDate'],
        FhirDate.fromJson,
      ),
      patternDateTime: parseField<FhirDateTime>(
        json['patternDateTime'],
        json['_patternDateTime'],
        FhirDateTime.fromJson,
      ),
      patternDecimal: parseField<FhirDecimal>(
        json['patternDecimal'],
        json['_patternDecimal'],
        FhirDecimal.fromJson,
      ),
      patternId: parseField<FhirId>(
        json['patternId'],
        json['_patternId'],
        FhirId.fromJson,
      ),
      patternInstant: parseField<FhirInstant>(
        json['patternInstant'],
        json['_patternInstant'],
        FhirInstant.fromJson,
      ),
      patternInteger: parseField<FhirInteger>(
        json['patternInteger'],
        json['_patternInteger'],
        FhirInteger.fromJson,
      ),
      patternMarkdown: parseField<FhirMarkdown>(
        json['patternMarkdown'],
        json['_patternMarkdown'],
        FhirMarkdown.fromJson,
      ),
      patternOid: parseField<FhirOid>(
        json['patternOid'],
        json['_patternOid'],
        FhirOid.fromJson,
      ),
      patternPositiveInt: parseField<FhirPositiveInt>(
        json['patternPositiveInt'],
        json['_patternPositiveInt'],
        FhirPositiveInt.fromJson,
      ),
      patternString: parseField<FhirString>(
        json['patternString'],
        json['_patternString'],
        FhirString.fromJson,
      ),
      patternTime: parseField<FhirTime>(
        json['patternTime'],
        json['_patternTime'],
        FhirTime.fromJson,
      ),
      patternUnsignedInt: parseField<FhirUnsignedInt>(
        json['patternUnsignedInt'],
        json['_patternUnsignedInt'],
        FhirUnsignedInt.fromJson,
      ),
      patternUri: parseField<FhirUri>(
        json['patternUri'],
        json['_patternUri'],
        FhirUri.fromJson,
      ),
      patternUrl: parseField<FhirUrl>(
        json['patternUrl'],
        json['_patternUrl'],
        FhirUrl.fromJson,
      ),
      patternUuid: parseField<FhirUuid>(
        json['patternUuid'],
        json['_patternUuid'],
        FhirUuid.fromJson,
      ),
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
      example: parseList<ElementDefinitionExample>(
        json['example'] as List<dynamic>?,
        json['_example'] as List<dynamic>?,
        ElementDefinitionExample.fromJson,
      ),
      minValueDate: parseField<FhirDate>(
        json['minValueDate'],
        json['_minValueDate'],
        FhirDate.fromJson,
      ),
      minValueDateTime: parseField<FhirDateTime>(
        json['minValueDateTime'],
        json['_minValueDateTime'],
        FhirDateTime.fromJson,
      ),
      minValueInstant: parseField<FhirInstant>(
        json['minValueInstant'],
        json['_minValueInstant'],
        FhirInstant.fromJson,
      ),
      minValueTime: parseField<FhirTime>(
        json['minValueTime'],
        json['_minValueTime'],
        FhirTime.fromJson,
      ),
      minValueDecimal: parseField<FhirDecimal>(
        json['minValueDecimal'],
        json['_minValueDecimal'],
        FhirDecimal.fromJson,
      ),
      minValueInteger: parseField<FhirInteger>(
        json['minValueInteger'],
        json['_minValueInteger'],
        FhirInteger.fromJson,
      ),
      minValuePositiveInt: parseField<FhirPositiveInt>(
        json['minValuePositiveInt'],
        json['_minValuePositiveInt'],
        FhirPositiveInt.fromJson,
      ),
      minValueUnsignedInt: parseField<FhirUnsignedInt>(
        json['minValueUnsignedInt'],
        json['_minValueUnsignedInt'],
        FhirUnsignedInt.fromJson,
      ),
      minValueQuantity: json['minValueQuantity'] != null
          ? Quantity.fromJson(
              json['minValueQuantity'] as Map<String, dynamic>,
            )
          : null,
      maxValueDate: parseField<FhirDate>(
        json['maxValueDate'],
        json['_maxValueDate'],
        FhirDate.fromJson,
      ),
      maxValueDateTime: parseField<FhirDateTime>(
        json['maxValueDateTime'],
        json['_maxValueDateTime'],
        FhirDateTime.fromJson,
      ),
      maxValueInstant: parseField<FhirInstant>(
        json['maxValueInstant'],
        json['_maxValueInstant'],
        FhirInstant.fromJson,
      ),
      maxValueTime: parseField<FhirTime>(
        json['maxValueTime'],
        json['_maxValueTime'],
        FhirTime.fromJson,
      ),
      maxValueDecimal: parseField<FhirDecimal>(
        json['maxValueDecimal'],
        json['_maxValueDecimal'],
        FhirDecimal.fromJson,
      ),
      maxValueInteger: parseField<FhirInteger>(
        json['maxValueInteger'],
        json['_maxValueInteger'],
        FhirInteger.fromJson,
      ),
      maxValuePositiveInt: parseField<FhirPositiveInt>(
        json['maxValuePositiveInt'],
        json['_maxValuePositiveInt'],
        FhirPositiveInt.fromJson,
      ),
      maxValueUnsignedInt: parseField<FhirUnsignedInt>(
        json['maxValueUnsignedInt'],
        json['_maxValueUnsignedInt'],
        FhirUnsignedInt.fromJson,
      ),
      maxValueQuantity: json['maxValueQuantity'] != null
          ? Quantity.fromJson(
              json['maxValueQuantity'] as Map<String, dynamic>,
            )
          : null,
      maxLength: parseField<FhirInteger>(
        json['maxLength'],
        json['_maxLength'],
        FhirInteger.fromJson,
      ),
      condition: parseList<FhirId>(
        json['condition'] as List<dynamic>?,
        json['_condition'] as List<dynamic>?,
        FhirId.fromJson,
      ),
      constraint: parseList<ElementDefinitionConstraint>(
        json['constraint'] as List<dynamic>?,
        json['_constraint'] as List<dynamic>?,
        ElementDefinitionConstraint.fromJson,
      ),
      mustSupport: parseField<FhirBoolean>(
        json['mustSupport'],
        json['_mustSupport'],
        FhirBoolean.fromJson,
      ),
      isModifier: parseField<FhirBoolean>(
        json['isModifier'],
        json['_isModifier'],
        FhirBoolean.fromJson,
      ),
      isModifierReason: parseField<FhirString>(
        json['isModifierReason'],
        json['_isModifierReason'],
        FhirString.fromJson,
      ),
      isSummary: parseField<FhirBoolean>(
        json['isSummary'],
        json['_isSummary'],
        FhirBoolean.fromJson,
      ),
      binding: json['binding'] != null
          ? ElementDefinitionBinding.fromJson(
              json['binding'] as Map<String, dynamic>,
            )
          : null,
      mapping: parseList<ElementDefinitionMapping>(
        json['mapping'] as List<dynamic>?,
        json['_mapping'] as List<dynamic>?,
        ElementDefinitionMapping.fromJson,
      ),
    );
  }

  /// Deserialize [ElementDefinition]
  /// from a [String] or [YamlMap] object
  factory ElementDefinition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ElementDefinition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ElementDefinition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ElementDefinition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ElementDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ElementDefinition.fromJsonString(
    String source,
  ) {
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('path', path);
    if (representation != null && representation!.isNotEmpty) {
      final fieldJson0 = representation!.map((e) => e.toJson()).toList();
      json['representation'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_representation'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

    addField('sliceName', sliceName);
    addField('sliceIsConstraining', sliceIsConstraining);
    addField('label', label);
    if (code != null && code!.isNotEmpty) {
      json['code'] = code!.map((e) => e.toJson()).toList();
    }

    if (slicing != null) {
      json['slicing'] = slicing!.toJson();
    }

    addField('short', short);
    addField('definition', definition);
    addField('comment', comment);
    addField('requirements', requirements);
    if (alias != null && alias!.isNotEmpty) {
      final fieldJson1 = alias!.map((e) => e.toJson()).toList();
      json['alias'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_alias'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    addField('min', min);
    addField('max', max);
    if (base != null) {
      json['base'] = base!.toJson();
    }

    addField('contentReference', contentReference);
    if (type != null && type!.isNotEmpty) {
      json['type'] = type!.map((e) => e.toJson()).toList();
    }

    addField('defaultValueBase64Binary', defaultValueBase64Binary);
    addField('defaultValueBoolean', defaultValueBoolean);
    addField('defaultValueCanonical', defaultValueCanonical);
    addField('defaultValueCode', defaultValueCode);
    addField('defaultValueDate', defaultValueDate);
    addField('defaultValueDateTime', defaultValueDateTime);
    addField('defaultValueDecimal', defaultValueDecimal);
    addField('defaultValueId', defaultValueId);
    addField('defaultValueInstant', defaultValueInstant);
    addField('defaultValueInteger', defaultValueInteger);
    addField('defaultValueMarkdown', defaultValueMarkdown);
    addField('defaultValueOid', defaultValueOid);
    addField('defaultValuePositiveInt', defaultValuePositiveInt);
    addField('defaultValueString', defaultValueString);
    addField('defaultValueTime', defaultValueTime);
    addField('defaultValueUnsignedInt', defaultValueUnsignedInt);
    addField('defaultValueUri', defaultValueUri);
    addField('defaultValueUrl', defaultValueUrl);
    addField('defaultValueUuid', defaultValueUuid);
    if (defaultValueAddress != null) {
      json['defaultValueAddress'] = defaultValueAddress!.toJson();
    }

    if (defaultValueAge != null) {
      json['defaultValueAge'] = defaultValueAge!.toJson();
    }

    if (defaultValueAnnotation != null) {
      json['defaultValueAnnotation'] = defaultValueAnnotation!.toJson();
    }

    if (defaultValueAttachment != null) {
      json['defaultValueAttachment'] = defaultValueAttachment!.toJson();
    }

    if (defaultValueCodeableConcept != null) {
      json['defaultValueCodeableConcept'] =
          defaultValueCodeableConcept!.toJson();
    }

    if (defaultValueCodeableReference != null) {
      json['defaultValueCodeableReference'] =
          defaultValueCodeableReference!.toJson();
    }

    if (defaultValueCoding != null) {
      json['defaultValueCoding'] = defaultValueCoding!.toJson();
    }

    if (defaultValueContactPoint != null) {
      json['defaultValueContactPoint'] = defaultValueContactPoint!.toJson();
    }

    if (defaultValueCount != null) {
      json['defaultValueCount'] = defaultValueCount!.toJson();
    }

    if (defaultValueDistance != null) {
      json['defaultValueDistance'] = defaultValueDistance!.toJson();
    }

    if (defaultValueDuration != null) {
      json['defaultValueDuration'] = defaultValueDuration!.toJson();
    }

    if (defaultValueHumanName != null) {
      json['defaultValueHumanName'] = defaultValueHumanName!.toJson();
    }

    if (defaultValueIdentifier != null) {
      json['defaultValueIdentifier'] = defaultValueIdentifier!.toJson();
    }

    if (defaultValueMoney != null) {
      json['defaultValueMoney'] = defaultValueMoney!.toJson();
    }

    if (defaultValuePeriod != null) {
      json['defaultValuePeriod'] = defaultValuePeriod!.toJson();
    }

    if (defaultValueQuantity != null) {
      json['defaultValueQuantity'] = defaultValueQuantity!.toJson();
    }

    if (defaultValueRange != null) {
      json['defaultValueRange'] = defaultValueRange!.toJson();
    }

    if (defaultValueRatio != null) {
      json['defaultValueRatio'] = defaultValueRatio!.toJson();
    }

    if (defaultValueRatioRange != null) {
      json['defaultValueRatioRange'] = defaultValueRatioRange!.toJson();
    }

    if (defaultValueReference != null) {
      json['defaultValueReference'] = defaultValueReference!.toJson();
    }

    if (defaultValueSampledData != null) {
      json['defaultValueSampledData'] = defaultValueSampledData!.toJson();
    }

    if (defaultValueSignature != null) {
      json['defaultValueSignature'] = defaultValueSignature!.toJson();
    }

    if (defaultValueTiming != null) {
      json['defaultValueTiming'] = defaultValueTiming!.toJson();
    }

    if (defaultValueContactDetail != null) {
      json['defaultValueContactDetail'] = defaultValueContactDetail!.toJson();
    }

    if (defaultValueContributor != null) {
      json['defaultValueContributor'] = defaultValueContributor!.toJson();
    }

    if (defaultValueDataRequirement != null) {
      json['defaultValueDataRequirement'] =
          defaultValueDataRequirement!.toJson();
    }

    if (defaultValueExpression != null) {
      json['defaultValueExpression'] = defaultValueExpression!.toJson();
    }

    if (defaultValueParameterDefinition != null) {
      json['defaultValueParameterDefinition'] =
          defaultValueParameterDefinition!.toJson();
    }

    if (defaultValueRelatedArtifact != null) {
      json['defaultValueRelatedArtifact'] =
          defaultValueRelatedArtifact!.toJson();
    }

    if (defaultValueTriggerDefinition != null) {
      json['defaultValueTriggerDefinition'] =
          defaultValueTriggerDefinition!.toJson();
    }

    if (defaultValueUsageContext != null) {
      json['defaultValueUsageContext'] = defaultValueUsageContext!.toJson();
    }

    if (defaultValueDosage != null) {
      json['defaultValueDosage'] = defaultValueDosage!.toJson();
    }

    addField('meaningWhenMissing', meaningWhenMissing);
    addField('orderMeaning', orderMeaning);
    addField('fixedBase64Binary', fixedBase64Binary);
    addField('fixedBoolean', fixedBoolean);
    addField('fixedCanonical', fixedCanonical);
    addField('fixedCode', fixedCode);
    addField('fixedDate', fixedDate);
    addField('fixedDateTime', fixedDateTime);
    addField('fixedDecimal', fixedDecimal);
    addField('fixedId', fixedId);
    addField('fixedInstant', fixedInstant);
    addField('fixedInteger', fixedInteger);
    addField('fixedMarkdown', fixedMarkdown);
    addField('fixedOid', fixedOid);
    addField('fixedPositiveInt', fixedPositiveInt);
    addField('fixedString', fixedString);
    addField('fixedTime', fixedTime);
    addField('fixedUnsignedInt', fixedUnsignedInt);
    addField('fixedUri', fixedUri);
    addField('fixedUrl', fixedUrl);
    addField('fixedUuid', fixedUuid);
    if (fixedAddress != null) {
      json['fixedAddress'] = fixedAddress!.toJson();
    }

    if (fixedAge != null) {
      json['fixedAge'] = fixedAge!.toJson();
    }

    if (fixedAnnotation != null) {
      json['fixedAnnotation'] = fixedAnnotation!.toJson();
    }

    if (fixedAttachment != null) {
      json['fixedAttachment'] = fixedAttachment!.toJson();
    }

    if (fixedCodeableConcept != null) {
      json['fixedCodeableConcept'] = fixedCodeableConcept!.toJson();
    }

    if (fixedCodeableReference != null) {
      json['fixedCodeableReference'] = fixedCodeableReference!.toJson();
    }

    if (fixedCoding != null) {
      json['fixedCoding'] = fixedCoding!.toJson();
    }

    if (fixedContactPoint != null) {
      json['fixedContactPoint'] = fixedContactPoint!.toJson();
    }

    if (fixedCount != null) {
      json['fixedCount'] = fixedCount!.toJson();
    }

    if (fixedDistance != null) {
      json['fixedDistance'] = fixedDistance!.toJson();
    }

    if (fixedDuration != null) {
      json['fixedDuration'] = fixedDuration!.toJson();
    }

    if (fixedHumanName != null) {
      json['fixedHumanName'] = fixedHumanName!.toJson();
    }

    if (fixedIdentifier != null) {
      json['fixedIdentifier'] = fixedIdentifier!.toJson();
    }

    if (fixedMoney != null) {
      json['fixedMoney'] = fixedMoney!.toJson();
    }

    if (fixedPeriod != null) {
      json['fixedPeriod'] = fixedPeriod!.toJson();
    }

    if (fixedQuantity != null) {
      json['fixedQuantity'] = fixedQuantity!.toJson();
    }

    if (fixedRange != null) {
      json['fixedRange'] = fixedRange!.toJson();
    }

    if (fixedRatio != null) {
      json['fixedRatio'] = fixedRatio!.toJson();
    }

    if (fixedRatioRange != null) {
      json['fixedRatioRange'] = fixedRatioRange!.toJson();
    }

    if (fixedReference != null) {
      json['fixedReference'] = fixedReference!.toJson();
    }

    if (fixedSampledData != null) {
      json['fixedSampledData'] = fixedSampledData!.toJson();
    }

    if (fixedSignature != null) {
      json['fixedSignature'] = fixedSignature!.toJson();
    }

    if (fixedTiming != null) {
      json['fixedTiming'] = fixedTiming!.toJson();
    }

    if (fixedContactDetail != null) {
      json['fixedContactDetail'] = fixedContactDetail!.toJson();
    }

    if (fixedContributor != null) {
      json['fixedContributor'] = fixedContributor!.toJson();
    }

    if (fixedDataRequirement != null) {
      json['fixedDataRequirement'] = fixedDataRequirement!.toJson();
    }

    if (fixedExpression != null) {
      json['fixedExpression'] = fixedExpression!.toJson();
    }

    if (fixedParameterDefinition != null) {
      json['fixedParameterDefinition'] = fixedParameterDefinition!.toJson();
    }

    if (fixedRelatedArtifact != null) {
      json['fixedRelatedArtifact'] = fixedRelatedArtifact!.toJson();
    }

    if (fixedTriggerDefinition != null) {
      json['fixedTriggerDefinition'] = fixedTriggerDefinition!.toJson();
    }

    if (fixedUsageContext != null) {
      json['fixedUsageContext'] = fixedUsageContext!.toJson();
    }

    if (fixedDosage != null) {
      json['fixedDosage'] = fixedDosage!.toJson();
    }

    addField('patternBase64Binary', patternBase64Binary);
    addField('patternBoolean', patternBoolean);
    addField('patternCanonical', patternCanonical);
    addField('patternCode', patternCode);
    addField('patternDate', patternDate);
    addField('patternDateTime', patternDateTime);
    addField('patternDecimal', patternDecimal);
    addField('patternId', patternId);
    addField('patternInstant', patternInstant);
    addField('patternInteger', patternInteger);
    addField('patternMarkdown', patternMarkdown);
    addField('patternOid', patternOid);
    addField('patternPositiveInt', patternPositiveInt);
    addField('patternString', patternString);
    addField('patternTime', patternTime);
    addField('patternUnsignedInt', patternUnsignedInt);
    addField('patternUri', patternUri);
    addField('patternUrl', patternUrl);
    addField('patternUuid', patternUuid);
    if (patternAddress != null) {
      json['patternAddress'] = patternAddress!.toJson();
    }

    if (patternAge != null) {
      json['patternAge'] = patternAge!.toJson();
    }

    if (patternAnnotation != null) {
      json['patternAnnotation'] = patternAnnotation!.toJson();
    }

    if (patternAttachment != null) {
      json['patternAttachment'] = patternAttachment!.toJson();
    }

    if (patternCodeableConcept != null) {
      json['patternCodeableConcept'] = patternCodeableConcept!.toJson();
    }

    if (patternCodeableReference != null) {
      json['patternCodeableReference'] = patternCodeableReference!.toJson();
    }

    if (patternCoding != null) {
      json['patternCoding'] = patternCoding!.toJson();
    }

    if (patternContactPoint != null) {
      json['patternContactPoint'] = patternContactPoint!.toJson();
    }

    if (patternCount != null) {
      json['patternCount'] = patternCount!.toJson();
    }

    if (patternDistance != null) {
      json['patternDistance'] = patternDistance!.toJson();
    }

    if (patternDuration != null) {
      json['patternDuration'] = patternDuration!.toJson();
    }

    if (patternHumanName != null) {
      json['patternHumanName'] = patternHumanName!.toJson();
    }

    if (patternIdentifier != null) {
      json['patternIdentifier'] = patternIdentifier!.toJson();
    }

    if (patternMoney != null) {
      json['patternMoney'] = patternMoney!.toJson();
    }

    if (patternPeriod != null) {
      json['patternPeriod'] = patternPeriod!.toJson();
    }

    if (patternQuantity != null) {
      json['patternQuantity'] = patternQuantity!.toJson();
    }

    if (patternRange != null) {
      json['patternRange'] = patternRange!.toJson();
    }

    if (patternRatio != null) {
      json['patternRatio'] = patternRatio!.toJson();
    }

    if (patternRatioRange != null) {
      json['patternRatioRange'] = patternRatioRange!.toJson();
    }

    if (patternReference != null) {
      json['patternReference'] = patternReference!.toJson();
    }

    if (patternSampledData != null) {
      json['patternSampledData'] = patternSampledData!.toJson();
    }

    if (patternSignature != null) {
      json['patternSignature'] = patternSignature!.toJson();
    }

    if (patternTiming != null) {
      json['patternTiming'] = patternTiming!.toJson();
    }

    if (patternContactDetail != null) {
      json['patternContactDetail'] = patternContactDetail!.toJson();
    }

    if (patternContributor != null) {
      json['patternContributor'] = patternContributor!.toJson();
    }

    if (patternDataRequirement != null) {
      json['patternDataRequirement'] = patternDataRequirement!.toJson();
    }

    if (patternExpression != null) {
      json['patternExpression'] = patternExpression!.toJson();
    }

    if (patternParameterDefinition != null) {
      json['patternParameterDefinition'] = patternParameterDefinition!.toJson();
    }

    if (patternRelatedArtifact != null) {
      json['patternRelatedArtifact'] = patternRelatedArtifact!.toJson();
    }

    if (patternTriggerDefinition != null) {
      json['patternTriggerDefinition'] = patternTriggerDefinition!.toJson();
    }

    if (patternUsageContext != null) {
      json['patternUsageContext'] = patternUsageContext!.toJson();
    }

    if (patternDosage != null) {
      json['patternDosage'] = patternDosage!.toJson();
    }

    if (example != null && example!.isNotEmpty) {
      json['example'] = example!.map((e) => e.toJson()).toList();
    }

    addField('minValueDate', minValueDate);
    addField('minValueDateTime', minValueDateTime);
    addField('minValueInstant', minValueInstant);
    addField('minValueTime', minValueTime);
    addField('minValueDecimal', minValueDecimal);
    addField('minValueInteger', minValueInteger);
    addField('minValuePositiveInt', minValuePositiveInt);
    addField('minValueUnsignedInt', minValueUnsignedInt);
    if (minValueQuantity != null) {
      json['minValueQuantity'] = minValueQuantity!.toJson();
    }

    addField('maxValueDate', maxValueDate);
    addField('maxValueDateTime', maxValueDateTime);
    addField('maxValueInstant', maxValueInstant);
    addField('maxValueTime', maxValueTime);
    addField('maxValueDecimal', maxValueDecimal);
    addField('maxValueInteger', maxValueInteger);
    addField('maxValuePositiveInt', maxValuePositiveInt);
    addField('maxValueUnsignedInt', maxValueUnsignedInt);
    if (maxValueQuantity != null) {
      json['maxValueQuantity'] = maxValueQuantity!.toJson();
    }

    addField('maxLength', maxLength);
    if (condition != null && condition!.isNotEmpty) {
      final fieldJson2 = condition!.map((e) => e.toJson()).toList();
      json['condition'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_condition'] = fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (constraint != null && constraint!.isNotEmpty) {
      json['constraint'] = constraint!.map((e) => e.toJson()).toList();
    }

    addField('mustSupport', mustSupport);
    addField('isModifier', isModifier);
    addField('isModifierReason', isModifierReason);
    addField('isSummary', isSummary);
    if (binding != null) {
      json['binding'] = binding!.toJson();
    }

    if (mapping != null && mapping!.isNotEmpty) {
      json['mapping'] = mapping!.map((e) => e.toJson()).toList();
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
  /// Primary constructor for
  /// [ElementDefinitionSlicing]

  ElementDefinitionSlicing({
    super.id,
    super.extension_,
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
  factory ElementDefinitionSlicing.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return ElementDefinitionSlicing(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      discriminator: parseList<ElementDefinitionDiscriminator>(
        json['discriminator'] as List<dynamic>?,
        json['_discriminator'] as List<dynamic>?,
        ElementDefinitionDiscriminator.fromJson,
      ),
      description: parseField<FhirString>(
        json['description'],
        json['_description'],
        FhirString.fromJson,
      ),
      ordered: parseField<FhirBoolean>(
        json['ordered'],
        json['_ordered'],
        FhirBoolean.fromJson,
      ),
      rules: SlicingRules.fromJson({
        'value': json['rules'],
        '_value': json['_rules'],
      }),
    );
  }

  /// Deserialize [ElementDefinitionSlicing]
  /// from a [String] or [YamlMap] object
  factory ElementDefinitionSlicing.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ElementDefinitionSlicing.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ElementDefinitionSlicing.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ElementDefinitionSlicing '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ElementDefinitionSlicing]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ElementDefinitionSlicing.fromJsonString(
    String source,
  ) {
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (discriminator != null && discriminator!.isNotEmpty) {
      json['discriminator'] = discriminator!.map((e) => e.toJson()).toList();
    }

    addField('description', description);
    addField('ordered', ordered);
    addField('rules', rules);
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
  /// Primary constructor for
  /// [ElementDefinitionDiscriminator]

  ElementDefinitionDiscriminator({
    super.id,
    super.extension_,
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
  factory ElementDefinitionDiscriminator.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return ElementDefinitionDiscriminator(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
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

  /// Deserialize [ElementDefinitionDiscriminator]
  /// from a [String] or [YamlMap] object
  factory ElementDefinitionDiscriminator.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ElementDefinitionDiscriminator.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ElementDefinitionDiscriminator.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ElementDefinitionDiscriminator '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ElementDefinitionDiscriminator]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ElementDefinitionDiscriminator.fromJsonString(
    String source,
  ) {
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    addField('type', type);
    addField('path', path);
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
  /// Primary constructor for
  /// [ElementDefinitionBase]

  ElementDefinitionBase({
    super.id,
    super.extension_,
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
  factory ElementDefinitionBase.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return ElementDefinitionBase(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
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

  /// Deserialize [ElementDefinitionBase]
  /// from a [String] or [YamlMap] object
  factory ElementDefinitionBase.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ElementDefinitionBase.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ElementDefinitionBase.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ElementDefinitionBase '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ElementDefinitionBase]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ElementDefinitionBase.fromJsonString(
    String source,
  ) {
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    addField('path', path);
    addField('min', min);
    addField('max', max);
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
  /// Primary constructor for
  /// [ElementDefinitionType]

  ElementDefinitionType({
    super.id,
    super.extension_,
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
  factory ElementDefinitionType.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return ElementDefinitionType(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      code: FhirUri.fromJson({
        'value': json['code'],
        '_value': json['_code'],
      }),
      profile: parseList<FhirCanonical>(
        json['profile'] as List<dynamic>?,
        json['_profile'] as List<dynamic>?,
        FhirCanonical.fromJson,
      ),
      targetProfile: parseList<FhirCanonical>(
        json['targetProfile'] as List<dynamic>?,
        json['_targetProfile'] as List<dynamic>?,
        FhirCanonical.fromJson,
      ),
      aggregation: parseList<AggregationMode>(
        json['aggregation'] as List<dynamic>?,
        json['_aggregation'] as List<dynamic>?,
        AggregationMode.fromJson,
      ),
      versioning: parseField<ReferenceVersionRules>(
        json['versioning'],
        json['_versioning'],
        ReferenceVersionRules.fromJson,
      ),
    );
  }

  /// Deserialize [ElementDefinitionType]
  /// from a [String] or [YamlMap] object
  factory ElementDefinitionType.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ElementDefinitionType.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ElementDefinitionType.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ElementDefinitionType '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ElementDefinitionType]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ElementDefinitionType.fromJsonString(
    String source,
  ) {
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    addField('code', code);
    if (profile != null && profile!.isNotEmpty) {
      final fieldJson0 = profile!.map((e) => e.toJson()).toList();
      json['profile'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_profile'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

    if (targetProfile != null && targetProfile!.isNotEmpty) {
      final fieldJson1 = targetProfile!.map((e) => e.toJson()).toList();
      json['targetProfile'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_targetProfile'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (aggregation != null && aggregation!.isNotEmpty) {
      final fieldJson2 = aggregation!.map((e) => e.toJson()).toList();
      json['aggregation'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_aggregation'] = fieldJson2.map((e) => e['_value']).toList();
      }
    }

    addField('versioning', versioning);
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
  /// Primary constructor for
  /// [ElementDefinitionExample]

  ElementDefinitionExample({
    super.id,
    super.extension_,
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
  factory ElementDefinitionExample.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return ElementDefinitionExample(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      label: FhirString.fromJson({
        'value': json['label'],
        '_value': json['_label'],
      }),
      valueBase64Binary: parseField<FhirBase64Binary>(
        json['valueBase64Binary'],
        json['_valueBase64Binary'],
        FhirBase64Binary.fromJson,
      ),
      valueBoolean: parseField<FhirBoolean>(
        json['valueBoolean'],
        json['_valueBoolean'],
        FhirBoolean.fromJson,
      ),
      valueCanonical: parseField<FhirCanonical>(
        json['valueCanonical'],
        json['_valueCanonical'],
        FhirCanonical.fromJson,
      ),
      valueCode: parseField<FhirCode>(
        json['valueCode'],
        json['_valueCode'],
        FhirCode.fromJson,
      ),
      valueDate: parseField<FhirDate>(
        json['valueDate'],
        json['_valueDate'],
        FhirDate.fromJson,
      ),
      valueDateTime: parseField<FhirDateTime>(
        json['valueDateTime'],
        json['_valueDateTime'],
        FhirDateTime.fromJson,
      ),
      valueDecimal: parseField<FhirDecimal>(
        json['valueDecimal'],
        json['_valueDecimal'],
        FhirDecimal.fromJson,
      ),
      valueId: parseField<FhirId>(
        json['valueId'],
        json['_valueId'],
        FhirId.fromJson,
      ),
      valueInstant: parseField<FhirInstant>(
        json['valueInstant'],
        json['_valueInstant'],
        FhirInstant.fromJson,
      ),
      valueInteger: parseField<FhirInteger>(
        json['valueInteger'],
        json['_valueInteger'],
        FhirInteger.fromJson,
      ),
      valueMarkdown: parseField<FhirMarkdown>(
        json['valueMarkdown'],
        json['_valueMarkdown'],
        FhirMarkdown.fromJson,
      ),
      valueOid: parseField<FhirOid>(
        json['valueOid'],
        json['_valueOid'],
        FhirOid.fromJson,
      ),
      valuePositiveInt: parseField<FhirPositiveInt>(
        json['valuePositiveInt'],
        json['_valuePositiveInt'],
        FhirPositiveInt.fromJson,
      ),
      valueString: parseField<FhirString>(
        json['valueString'],
        json['_valueString'],
        FhirString.fromJson,
      ),
      valueTime: parseField<FhirTime>(
        json['valueTime'],
        json['_valueTime'],
        FhirTime.fromJson,
      ),
      valueUnsignedInt: parseField<FhirUnsignedInt>(
        json['valueUnsignedInt'],
        json['_valueUnsignedInt'],
        FhirUnsignedInt.fromJson,
      ),
      valueUri: parseField<FhirUri>(
        json['valueUri'],
        json['_valueUri'],
        FhirUri.fromJson,
      ),
      valueUrl: parseField<FhirUrl>(
        json['valueUrl'],
        json['_valueUrl'],
        FhirUrl.fromJson,
      ),
      valueUuid: parseField<FhirUuid>(
        json['valueUuid'],
        json['_valueUuid'],
        FhirUuid.fromJson,
      ),
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

  /// Deserialize [ElementDefinitionExample]
  /// from a [String] or [YamlMap] object
  factory ElementDefinitionExample.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ElementDefinitionExample.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ElementDefinitionExample.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ElementDefinitionExample '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ElementDefinitionExample]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ElementDefinitionExample.fromJsonString(
    String source,
  ) {
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    addField('label', label);
    addField('valueBase64Binary', valueBase64Binary);
    addField('valueBoolean', valueBoolean);
    addField('valueCanonical', valueCanonical);
    addField('valueCode', valueCode);
    addField('valueDate', valueDate);
    addField('valueDateTime', valueDateTime);
    addField('valueDecimal', valueDecimal);
    addField('valueId', valueId);
    addField('valueInstant', valueInstant);
    addField('valueInteger', valueInteger);
    addField('valueMarkdown', valueMarkdown);
    addField('valueOid', valueOid);
    addField('valuePositiveInt', valuePositiveInt);
    addField('valueString', valueString);
    addField('valueTime', valueTime);
    addField('valueUnsignedInt', valueUnsignedInt);
    addField('valueUri', valueUri);
    addField('valueUrl', valueUrl);
    addField('valueUuid', valueUuid);
    if (valueAddress != null) {
      json['valueAddress'] = valueAddress!.toJson();
    }

    if (valueAge != null) {
      json['valueAge'] = valueAge!.toJson();
    }

    if (valueAnnotation != null) {
      json['valueAnnotation'] = valueAnnotation!.toJson();
    }

    if (valueAttachment != null) {
      json['valueAttachment'] = valueAttachment!.toJson();
    }

    if (valueCodeableConcept != null) {
      json['valueCodeableConcept'] = valueCodeableConcept!.toJson();
    }

    if (valueCodeableReference != null) {
      json['valueCodeableReference'] = valueCodeableReference!.toJson();
    }

    if (valueCoding != null) {
      json['valueCoding'] = valueCoding!.toJson();
    }

    if (valueContactPoint != null) {
      json['valueContactPoint'] = valueContactPoint!.toJson();
    }

    if (valueCount != null) {
      json['valueCount'] = valueCount!.toJson();
    }

    if (valueDistance != null) {
      json['valueDistance'] = valueDistance!.toJson();
    }

    if (valueDuration != null) {
      json['valueDuration'] = valueDuration!.toJson();
    }

    if (valueHumanName != null) {
      json['valueHumanName'] = valueHumanName!.toJson();
    }

    if (valueIdentifier != null) {
      json['valueIdentifier'] = valueIdentifier!.toJson();
    }

    if (valueMoney != null) {
      json['valueMoney'] = valueMoney!.toJson();
    }

    if (valuePeriod != null) {
      json['valuePeriod'] = valuePeriod!.toJson();
    }

    if (valueQuantity != null) {
      json['valueQuantity'] = valueQuantity!.toJson();
    }

    if (valueRange != null) {
      json['valueRange'] = valueRange!.toJson();
    }

    if (valueRatio != null) {
      json['valueRatio'] = valueRatio!.toJson();
    }

    if (valueRatioRange != null) {
      json['valueRatioRange'] = valueRatioRange!.toJson();
    }

    if (valueReference != null) {
      json['valueReference'] = valueReference!.toJson();
    }

    if (valueSampledData != null) {
      json['valueSampledData'] = valueSampledData!.toJson();
    }

    if (valueSignature != null) {
      json['valueSignature'] = valueSignature!.toJson();
    }

    if (valueTiming != null) {
      json['valueTiming'] = valueTiming!.toJson();
    }

    if (valueContactDetail != null) {
      json['valueContactDetail'] = valueContactDetail!.toJson();
    }

    if (valueContributor != null) {
      json['valueContributor'] = valueContributor!.toJson();
    }

    if (valueDataRequirement != null) {
      json['valueDataRequirement'] = valueDataRequirement!.toJson();
    }

    if (valueExpression != null) {
      json['valueExpression'] = valueExpression!.toJson();
    }

    if (valueParameterDefinition != null) {
      json['valueParameterDefinition'] = valueParameterDefinition!.toJson();
    }

    if (valueRelatedArtifact != null) {
      json['valueRelatedArtifact'] = valueRelatedArtifact!.toJson();
    }

    if (valueTriggerDefinition != null) {
      json['valueTriggerDefinition'] = valueTriggerDefinition!.toJson();
    }

    if (valueUsageContext != null) {
      json['valueUsageContext'] = valueUsageContext!.toJson();
    }

    if (valueDosage != null) {
      json['valueDosage'] = valueDosage!.toJson();
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
  /// Primary constructor for
  /// [ElementDefinitionConstraint]

  ElementDefinitionConstraint({
    super.id,
    super.extension_,
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
  factory ElementDefinitionConstraint.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return ElementDefinitionConstraint(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      key: FhirId.fromJson({
        'value': json['key'],
        '_value': json['_key'],
      }),
      requirements: parseField<FhirString>(
        json['requirements'],
        json['_requirements'],
        FhirString.fromJson,
      ),
      severity: ConstraintSeverity.fromJson({
        'value': json['severity'],
        '_value': json['_severity'],
      }),
      human: FhirString.fromJson({
        'value': json['human'],
        '_value': json['_human'],
      }),
      expression: parseField<FhirString>(
        json['expression'],
        json['_expression'],
        FhirString.fromJson,
      ),
      xpath: parseField<FhirString>(
        json['xpath'],
        json['_xpath'],
        FhirString.fromJson,
      ),
      source: parseField<FhirCanonical>(
        json['source'],
        json['_source'],
        FhirCanonical.fromJson,
      ),
    );
  }

  /// Deserialize [ElementDefinitionConstraint]
  /// from a [String] or [YamlMap] object
  factory ElementDefinitionConstraint.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ElementDefinitionConstraint.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ElementDefinitionConstraint.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ElementDefinitionConstraint '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ElementDefinitionConstraint]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ElementDefinitionConstraint.fromJsonString(
    String source,
  ) {
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    addField('key', key);
    addField('requirements', requirements);
    addField('severity', severity);
    addField('human', human);
    addField('expression', expression);
    addField('xpath', xpath);
    addField('source', source);
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
  /// Primary constructor for
  /// [ElementDefinitionBinding]

  ElementDefinitionBinding({
    super.id,
    super.extension_,
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
  factory ElementDefinitionBinding.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return ElementDefinitionBinding(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      strength: BindingStrength.fromJson({
        'value': json['strength'],
        '_value': json['_strength'],
      }),
      description: parseField<FhirString>(
        json['description'],
        json['_description'],
        FhirString.fromJson,
      ),
      valueSet: parseField<FhirCanonical>(
        json['valueSet'],
        json['_valueSet'],
        FhirCanonical.fromJson,
      ),
    );
  }

  /// Deserialize [ElementDefinitionBinding]
  /// from a [String] or [YamlMap] object
  factory ElementDefinitionBinding.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ElementDefinitionBinding.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ElementDefinitionBinding.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ElementDefinitionBinding '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ElementDefinitionBinding]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ElementDefinitionBinding.fromJsonString(
    String source,
  ) {
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    addField('strength', strength);
    addField('description', description);
    addField('valueSet', valueSet);
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
  /// Primary constructor for
  /// [ElementDefinitionMapping]

  ElementDefinitionMapping({
    super.id,
    super.extension_,
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
  factory ElementDefinitionMapping.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return ElementDefinitionMapping(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      identity: FhirId.fromJson({
        'value': json['identity'],
        '_value': json['_identity'],
      }),
      language: parseField<FhirCode>(
        json['language'],
        json['_language'],
        FhirCode.fromJson,
      ),
      map: FhirString.fromJson({
        'value': json['map'],
        '_value': json['_map'],
      }),
      comment: parseField<FhirString>(
        json['comment'],
        json['_comment'],
        FhirString.fromJson,
      ),
    );
  }

  /// Deserialize [ElementDefinitionMapping]
  /// from a [String] or [YamlMap] object
  factory ElementDefinitionMapping.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ElementDefinitionMapping.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ElementDefinitionMapping.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ElementDefinitionMapping '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ElementDefinitionMapping]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ElementDefinitionMapping.fromJsonString(
    String source,
  ) {
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    addField('identity', identity);
    addField('language', language);
    addField('map', map);
    addField('comment', comment);
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
