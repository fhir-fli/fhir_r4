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
    super.extension_,
    super.modifierExtension,
    required this.path,

    /// Extensions for [path]
    this.pathElement,
    this.representation,

    /// Extensions for [representation]
    this.representationElement,
    this.sliceName,

    /// Extensions for [sliceName]
    this.sliceNameElement,
    this.sliceIsConstraining,

    /// Extensions for [sliceIsConstraining]
    this.sliceIsConstrainingElement,
    this.label,

    /// Extensions for [label]
    this.labelElement,
    this.code,
    this.slicing,
    this.short,

    /// Extensions for [short]
    this.shortElement,
    this.definition,

    /// Extensions for [definition]
    this.definitionElement,
    this.comment,

    /// Extensions for [comment]
    this.commentElement,
    this.requirements,

    /// Extensions for [requirements]
    this.requirementsElement,
    this.alias,

    /// Extensions for [alias]
    this.aliasElement,
    this.min,

    /// Extensions for [min]
    this.minElement,
    this.max,

    /// Extensions for [max]
    this.maxElement,
    this.base,
    this.contentReference,

    /// Extensions for [contentReference]
    this.contentReferenceElement,
    this.type,
    this.defaultValueBase64Binary,

    /// Extensions for [defaultValueBase64Binary]
    this.defaultValueBase64BinaryElement,
    this.defaultValueBoolean,

    /// Extensions for [defaultValueBoolean]
    this.defaultValueBooleanElement,
    this.defaultValueCanonical,

    /// Extensions for [defaultValueCanonical]
    this.defaultValueCanonicalElement,
    this.defaultValueCode,

    /// Extensions for [defaultValueCode]
    this.defaultValueCodeElement,
    this.defaultValueDate,

    /// Extensions for [defaultValueDate]
    this.defaultValueDateElement,
    this.defaultValueDateTime,

    /// Extensions for [defaultValueDateTime]
    this.defaultValueDateTimeElement,
    this.defaultValueDecimal,

    /// Extensions for [defaultValueDecimal]
    this.defaultValueDecimalElement,
    this.defaultValueId,

    /// Extensions for [defaultValueId]
    this.defaultValueIdElement,
    this.defaultValueInstant,

    /// Extensions for [defaultValueInstant]
    this.defaultValueInstantElement,
    this.defaultValueInteger,

    /// Extensions for [defaultValueInteger]
    this.defaultValueIntegerElement,
    this.defaultValueMarkdown,

    /// Extensions for [defaultValueMarkdown]
    this.defaultValueMarkdownElement,
    this.defaultValueOid,

    /// Extensions for [defaultValueOid]
    this.defaultValueOidElement,
    this.defaultValuePositiveInt,

    /// Extensions for [defaultValuePositiveInt]
    this.defaultValuePositiveIntElement,
    this.defaultValueString,

    /// Extensions for [defaultValueString]
    this.defaultValueStringElement,
    this.defaultValueTime,

    /// Extensions for [defaultValueTime]
    this.defaultValueTimeElement,
    this.defaultValueUnsignedInt,

    /// Extensions for [defaultValueUnsignedInt]
    this.defaultValueUnsignedIntElement,
    this.defaultValueUri,

    /// Extensions for [defaultValueUri]
    this.defaultValueUriElement,
    this.defaultValueUrl,

    /// Extensions for [defaultValueUrl]
    this.defaultValueUrlElement,
    this.defaultValueUuid,

    /// Extensions for [defaultValueUuid]
    this.defaultValueUuidElement,
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

    /// Extensions for [meaningWhenMissing]
    this.meaningWhenMissingElement,
    this.orderMeaning,

    /// Extensions for [orderMeaning]
    this.orderMeaningElement,
    this.fixedBase64Binary,

    /// Extensions for [fixedBase64Binary]
    this.fixedBase64BinaryElement,
    this.fixedBoolean,

    /// Extensions for [fixedBoolean]
    this.fixedBooleanElement,
    this.fixedCanonical,

    /// Extensions for [fixedCanonical]
    this.fixedCanonicalElement,
    this.fixedCode,

    /// Extensions for [fixedCode]
    this.fixedCodeElement,
    this.fixedDate,

    /// Extensions for [fixedDate]
    this.fixedDateElement,
    this.fixedDateTime,

    /// Extensions for [fixedDateTime]
    this.fixedDateTimeElement,
    this.fixedDecimal,

    /// Extensions for [fixedDecimal]
    this.fixedDecimalElement,
    this.fixedId,

    /// Extensions for [fixedId]
    this.fixedIdElement,
    this.fixedInstant,

    /// Extensions for [fixedInstant]
    this.fixedInstantElement,
    this.fixedInteger,

    /// Extensions for [fixedInteger]
    this.fixedIntegerElement,
    this.fixedMarkdown,

    /// Extensions for [fixedMarkdown]
    this.fixedMarkdownElement,
    this.fixedOid,

    /// Extensions for [fixedOid]
    this.fixedOidElement,
    this.fixedPositiveInt,

    /// Extensions for [fixedPositiveInt]
    this.fixedPositiveIntElement,
    this.fixedString,

    /// Extensions for [fixedString]
    this.fixedStringElement,
    this.fixedTime,

    /// Extensions for [fixedTime]
    this.fixedTimeElement,
    this.fixedUnsignedInt,

    /// Extensions for [fixedUnsignedInt]
    this.fixedUnsignedIntElement,
    this.fixedUri,

    /// Extensions for [fixedUri]
    this.fixedUriElement,
    this.fixedUrl,

    /// Extensions for [fixedUrl]
    this.fixedUrlElement,
    this.fixedUuid,

    /// Extensions for [fixedUuid]
    this.fixedUuidElement,
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

    /// Extensions for [patternBase64Binary]
    this.patternBase64BinaryElement,
    this.patternBoolean,

    /// Extensions for [patternBoolean]
    this.patternBooleanElement,
    this.patternCanonical,

    /// Extensions for [patternCanonical]
    this.patternCanonicalElement,
    this.patternCode,

    /// Extensions for [patternCode]
    this.patternCodeElement,
    this.patternDate,

    /// Extensions for [patternDate]
    this.patternDateElement,
    this.patternDateTime,

    /// Extensions for [patternDateTime]
    this.patternDateTimeElement,
    this.patternDecimal,

    /// Extensions for [patternDecimal]
    this.patternDecimalElement,
    this.patternId,

    /// Extensions for [patternId]
    this.patternIdElement,
    this.patternInstant,

    /// Extensions for [patternInstant]
    this.patternInstantElement,
    this.patternInteger,

    /// Extensions for [patternInteger]
    this.patternIntegerElement,
    this.patternMarkdown,

    /// Extensions for [patternMarkdown]
    this.patternMarkdownElement,
    this.patternOid,

    /// Extensions for [patternOid]
    this.patternOidElement,
    this.patternPositiveInt,

    /// Extensions for [patternPositiveInt]
    this.patternPositiveIntElement,
    this.patternString,

    /// Extensions for [patternString]
    this.patternStringElement,
    this.patternTime,

    /// Extensions for [patternTime]
    this.patternTimeElement,
    this.patternUnsignedInt,

    /// Extensions for [patternUnsignedInt]
    this.patternUnsignedIntElement,
    this.patternUri,

    /// Extensions for [patternUri]
    this.patternUriElement,
    this.patternUrl,

    /// Extensions for [patternUrl]
    this.patternUrlElement,
    this.patternUuid,

    /// Extensions for [patternUuid]
    this.patternUuidElement,
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

    /// Extensions for [minValueDate]
    this.minValueDateElement,
    this.minValueDateTime,

    /// Extensions for [minValueDateTime]
    this.minValueDateTimeElement,
    this.minValueInstant,

    /// Extensions for [minValueInstant]
    this.minValueInstantElement,
    this.minValueTime,

    /// Extensions for [minValueTime]
    this.minValueTimeElement,
    this.minValueDecimal,

    /// Extensions for [minValueDecimal]
    this.minValueDecimalElement,
    this.minValueInteger,

    /// Extensions for [minValueInteger]
    this.minValueIntegerElement,
    this.minValuePositiveInt,

    /// Extensions for [minValuePositiveInt]
    this.minValuePositiveIntElement,
    this.minValueUnsignedInt,

    /// Extensions for [minValueUnsignedInt]
    this.minValueUnsignedIntElement,
    this.minValueQuantity,
    this.maxValueDate,

    /// Extensions for [maxValueDate]
    this.maxValueDateElement,
    this.maxValueDateTime,

    /// Extensions for [maxValueDateTime]
    this.maxValueDateTimeElement,
    this.maxValueInstant,

    /// Extensions for [maxValueInstant]
    this.maxValueInstantElement,
    this.maxValueTime,

    /// Extensions for [maxValueTime]
    this.maxValueTimeElement,
    this.maxValueDecimal,

    /// Extensions for [maxValueDecimal]
    this.maxValueDecimalElement,
    this.maxValueInteger,

    /// Extensions for [maxValueInteger]
    this.maxValueIntegerElement,
    this.maxValuePositiveInt,

    /// Extensions for [maxValuePositiveInt]
    this.maxValuePositiveIntElement,
    this.maxValueUnsignedInt,

    /// Extensions for [maxValueUnsignedInt]
    this.maxValueUnsignedIntElement,
    this.maxValueQuantity,
    this.maxLength,

    /// Extensions for [maxLength]
    this.maxLengthElement,
    this.condition,

    /// Extensions for [condition]
    this.conditionElement,
    this.constraint,
    this.mustSupport,

    /// Extensions for [mustSupport]
    this.mustSupportElement,
    this.isModifier,

    /// Extensions for [isModifier]
    this.isModifierElement,
    this.isModifierReason,

    /// Extensions for [isModifierReason]
    this.isModifierReasonElement,
    this.isSummary,

    /// Extensions for [isSummary]
    this.isSummaryElement,
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
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      path: FhirString.fromJson(json['path']),
      pathElement: json['_path'] != null
          ? Element.fromJson(
              json['_path'] as Map<String, dynamic>,
            )
          : null,
      representation: json['representation'] != null
          ? (json['representation'] as List<dynamic>)
              .map<PropertyRepresentation>(
                (dynamic v) => PropertyRepresentation.fromJson(v as dynamic),
              )
              .toList()
          : null,
      representationElement: json['_representation'] != null
          ? (json['_representation'] as List<dynamic>)
              .map<Element>(
                (dynamic v) => Element.fromJson(v as Map<String, dynamic>),
              )
              .toList()
          : null,
      sliceName: json['sliceName'] != null
          ? FhirString.fromJson(json['sliceName'])
          : null,
      sliceNameElement: json['_sliceName'] != null
          ? Element.fromJson(
              json['_sliceName'] as Map<String, dynamic>,
            )
          : null,
      sliceIsConstraining: json['sliceIsConstraining'] != null
          ? FhirBoolean.fromJson(json['sliceIsConstraining'])
          : null,
      sliceIsConstrainingElement: json['_sliceIsConstraining'] != null
          ? Element.fromJson(
              json['_sliceIsConstraining'] as Map<String, dynamic>,
            )
          : null,
      label: json['label'] != null ? FhirString.fromJson(json['label']) : null,
      labelElement: json['_label'] != null
          ? Element.fromJson(
              json['_label'] as Map<String, dynamic>,
            )
          : null,
      code: json['code'] != null
          ? (json['code'] as List<dynamic>)
              .map<Coding>(
                (dynamic v) => Coding.fromJson(
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
      short: json['short'] != null ? FhirString.fromJson(json['short']) : null,
      shortElement: json['_short'] != null
          ? Element.fromJson(
              json['_short'] as Map<String, dynamic>,
            )
          : null,
      definition: json['definition'] != null
          ? FhirMarkdown.fromJson(json['definition'])
          : null,
      definitionElement: json['_definition'] != null
          ? Element.fromJson(
              json['_definition'] as Map<String, dynamic>,
            )
          : null,
      comment: json['comment'] != null
          ? FhirMarkdown.fromJson(json['comment'])
          : null,
      commentElement: json['_comment'] != null
          ? Element.fromJson(
              json['_comment'] as Map<String, dynamic>,
            )
          : null,
      requirements: json['requirements'] != null
          ? FhirMarkdown.fromJson(json['requirements'])
          : null,
      requirementsElement: json['_requirements'] != null
          ? Element.fromJson(
              json['_requirements'] as Map<String, dynamic>,
            )
          : null,
      alias: json['alias'] != null
          ? (json['alias'] as List<dynamic>)
              .map<FhirString>(
                (dynamic v) => FhirString.fromJson(v as dynamic),
              )
              .toList()
          : null,
      aliasElement: json['_alias'] != null
          ? (json['_alias'] as List<dynamic>)
              .map<Element>(
                (dynamic v) => Element.fromJson(v as Map<String, dynamic>),
              )
              .toList()
          : null,
      min: json['min'] != null ? FhirUnsignedInt.fromJson(json['min']) : null,
      minElement: json['_min'] != null
          ? Element.fromJson(
              json['_min'] as Map<String, dynamic>,
            )
          : null,
      max: json['max'] != null ? FhirString.fromJson(json['max']) : null,
      maxElement: json['_max'] != null
          ? Element.fromJson(
              json['_max'] as Map<String, dynamic>,
            )
          : null,
      base: json['base'] != null
          ? ElementDefinitionBase.fromJson(
              json['base'] as Map<String, dynamic>,
            )
          : null,
      contentReference: json['contentReference'] != null
          ? FhirUri.fromJson(json['contentReference'])
          : null,
      contentReferenceElement: json['_contentReference'] != null
          ? Element.fromJson(
              json['_contentReference'] as Map<String, dynamic>,
            )
          : null,
      type: json['type'] != null
          ? (json['type'] as List<dynamic>)
              .map<ElementDefinitionType>(
                (dynamic v) => ElementDefinitionType.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      defaultValueBase64Binary: json['defaultValueBase64Binary'] != null
          ? FhirBase64Binary.fromJson(json['defaultValueBase64Binary'])
          : null,
      defaultValueBase64BinaryElement: json['_defaultValueBase64Binary'] != null
          ? Element.fromJson(
              json['_defaultValueBase64Binary'] as Map<String, dynamic>,
            )
          : null,
      defaultValueBoolean: json['defaultValueBoolean'] != null
          ? FhirBoolean.fromJson(json['defaultValueBoolean'])
          : null,
      defaultValueBooleanElement: json['_defaultValueBoolean'] != null
          ? Element.fromJson(
              json['_defaultValueBoolean'] as Map<String, dynamic>,
            )
          : null,
      defaultValueCanonical: json['defaultValueCanonical'] != null
          ? FhirCanonical.fromJson(json['defaultValueCanonical'])
          : null,
      defaultValueCanonicalElement: json['_defaultValueCanonical'] != null
          ? Element.fromJson(
              json['_defaultValueCanonical'] as Map<String, dynamic>,
            )
          : null,
      defaultValueCode: json['defaultValueCode'] != null
          ? FhirCode.fromJson(json['defaultValueCode'])
          : null,
      defaultValueCodeElement: json['_defaultValueCode'] != null
          ? Element.fromJson(
              json['_defaultValueCode'] as Map<String, dynamic>,
            )
          : null,
      defaultValueDate: json['defaultValueDate'] != null
          ? FhirDate.fromJson(json['defaultValueDate'])
          : null,
      defaultValueDateElement: json['_defaultValueDate'] != null
          ? Element.fromJson(
              json['_defaultValueDate'] as Map<String, dynamic>,
            )
          : null,
      defaultValueDateTime: json['defaultValueDateTime'] != null
          ? FhirDateTime.fromJson(json['defaultValueDateTime'])
          : null,
      defaultValueDateTimeElement: json['_defaultValueDateTime'] != null
          ? Element.fromJson(
              json['_defaultValueDateTime'] as Map<String, dynamic>,
            )
          : null,
      defaultValueDecimal: json['defaultValueDecimal'] != null
          ? FhirDecimal.fromJson(json['defaultValueDecimal'])
          : null,
      defaultValueDecimalElement: json['_defaultValueDecimal'] != null
          ? Element.fromJson(
              json['_defaultValueDecimal'] as Map<String, dynamic>,
            )
          : null,
      defaultValueId: json['defaultValueId'] != null
          ? FhirId.fromJson(json['defaultValueId'])
          : null,
      defaultValueIdElement: json['_defaultValueId'] != null
          ? Element.fromJson(
              json['_defaultValueId'] as Map<String, dynamic>,
            )
          : null,
      defaultValueInstant: json['defaultValueInstant'] != null
          ? FhirInstant.fromJson(json['defaultValueInstant'])
          : null,
      defaultValueInstantElement: json['_defaultValueInstant'] != null
          ? Element.fromJson(
              json['_defaultValueInstant'] as Map<String, dynamic>,
            )
          : null,
      defaultValueInteger: json['defaultValueInteger'] != null
          ? FhirInteger.fromJson(json['defaultValueInteger'])
          : null,
      defaultValueIntegerElement: json['_defaultValueInteger'] != null
          ? Element.fromJson(
              json['_defaultValueInteger'] as Map<String, dynamic>,
            )
          : null,
      defaultValueMarkdown: json['defaultValueMarkdown'] != null
          ? FhirMarkdown.fromJson(json['defaultValueMarkdown'])
          : null,
      defaultValueMarkdownElement: json['_defaultValueMarkdown'] != null
          ? Element.fromJson(
              json['_defaultValueMarkdown'] as Map<String, dynamic>,
            )
          : null,
      defaultValueOid: json['defaultValueOid'] != null
          ? FhirOid.fromJson(json['defaultValueOid'])
          : null,
      defaultValueOidElement: json['_defaultValueOid'] != null
          ? Element.fromJson(
              json['_defaultValueOid'] as Map<String, dynamic>,
            )
          : null,
      defaultValuePositiveInt: json['defaultValuePositiveInt'] != null
          ? FhirPositiveInt.fromJson(json['defaultValuePositiveInt'])
          : null,
      defaultValuePositiveIntElement: json['_defaultValuePositiveInt'] != null
          ? Element.fromJson(
              json['_defaultValuePositiveInt'] as Map<String, dynamic>,
            )
          : null,
      defaultValueString: json['defaultValueString'] != null
          ? FhirString.fromJson(json['defaultValueString'])
          : null,
      defaultValueStringElement: json['_defaultValueString'] != null
          ? Element.fromJson(
              json['_defaultValueString'] as Map<String, dynamic>,
            )
          : null,
      defaultValueTime: json['defaultValueTime'] != null
          ? FhirTime.fromJson(json['defaultValueTime'])
          : null,
      defaultValueTimeElement: json['_defaultValueTime'] != null
          ? Element.fromJson(
              json['_defaultValueTime'] as Map<String, dynamic>,
            )
          : null,
      defaultValueUnsignedInt: json['defaultValueUnsignedInt'] != null
          ? FhirUnsignedInt.fromJson(json['defaultValueUnsignedInt'])
          : null,
      defaultValueUnsignedIntElement: json['_defaultValueUnsignedInt'] != null
          ? Element.fromJson(
              json['_defaultValueUnsignedInt'] as Map<String, dynamic>,
            )
          : null,
      defaultValueUri: json['defaultValueUri'] != null
          ? FhirUri.fromJson(json['defaultValueUri'])
          : null,
      defaultValueUriElement: json['_defaultValueUri'] != null
          ? Element.fromJson(
              json['_defaultValueUri'] as Map<String, dynamic>,
            )
          : null,
      defaultValueUrl: json['defaultValueUrl'] != null
          ? FhirUrl.fromJson(json['defaultValueUrl'])
          : null,
      defaultValueUrlElement: json['_defaultValueUrl'] != null
          ? Element.fromJson(
              json['_defaultValueUrl'] as Map<String, dynamic>,
            )
          : null,
      defaultValueUuid: json['defaultValueUuid'] != null
          ? FhirUuid.fromJson(json['defaultValueUuid'])
          : null,
      defaultValueUuidElement: json['_defaultValueUuid'] != null
          ? Element.fromJson(
              json['_defaultValueUuid'] as Map<String, dynamic>,
            )
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
          ? FhirMarkdown.fromJson(json['meaningWhenMissing'])
          : null,
      meaningWhenMissingElement: json['_meaningWhenMissing'] != null
          ? Element.fromJson(
              json['_meaningWhenMissing'] as Map<String, dynamic>,
            )
          : null,
      orderMeaning: json['orderMeaning'] != null
          ? FhirString.fromJson(json['orderMeaning'])
          : null,
      orderMeaningElement: json['_orderMeaning'] != null
          ? Element.fromJson(
              json['_orderMeaning'] as Map<String, dynamic>,
            )
          : null,
      fixedBase64Binary: json['fixedBase64Binary'] != null
          ? FhirBase64Binary.fromJson(json['fixedBase64Binary'])
          : null,
      fixedBase64BinaryElement: json['_fixedBase64Binary'] != null
          ? Element.fromJson(
              json['_fixedBase64Binary'] as Map<String, dynamic>,
            )
          : null,
      fixedBoolean: json['fixedBoolean'] != null
          ? FhirBoolean.fromJson(json['fixedBoolean'])
          : null,
      fixedBooleanElement: json['_fixedBoolean'] != null
          ? Element.fromJson(
              json['_fixedBoolean'] as Map<String, dynamic>,
            )
          : null,
      fixedCanonical: json['fixedCanonical'] != null
          ? FhirCanonical.fromJson(json['fixedCanonical'])
          : null,
      fixedCanonicalElement: json['_fixedCanonical'] != null
          ? Element.fromJson(
              json['_fixedCanonical'] as Map<String, dynamic>,
            )
          : null,
      fixedCode: json['fixedCode'] != null
          ? FhirCode.fromJson(json['fixedCode'])
          : null,
      fixedCodeElement: json['_fixedCode'] != null
          ? Element.fromJson(
              json['_fixedCode'] as Map<String, dynamic>,
            )
          : null,
      fixedDate: json['fixedDate'] != null
          ? FhirDate.fromJson(json['fixedDate'])
          : null,
      fixedDateElement: json['_fixedDate'] != null
          ? Element.fromJson(
              json['_fixedDate'] as Map<String, dynamic>,
            )
          : null,
      fixedDateTime: json['fixedDateTime'] != null
          ? FhirDateTime.fromJson(json['fixedDateTime'])
          : null,
      fixedDateTimeElement: json['_fixedDateTime'] != null
          ? Element.fromJson(
              json['_fixedDateTime'] as Map<String, dynamic>,
            )
          : null,
      fixedDecimal: json['fixedDecimal'] != null
          ? FhirDecimal.fromJson(json['fixedDecimal'])
          : null,
      fixedDecimalElement: json['_fixedDecimal'] != null
          ? Element.fromJson(
              json['_fixedDecimal'] as Map<String, dynamic>,
            )
          : null,
      fixedId:
          json['fixedId'] != null ? FhirId.fromJson(json['fixedId']) : null,
      fixedIdElement: json['_fixedId'] != null
          ? Element.fromJson(
              json['_fixedId'] as Map<String, dynamic>,
            )
          : null,
      fixedInstant: json['fixedInstant'] != null
          ? FhirInstant.fromJson(json['fixedInstant'])
          : null,
      fixedInstantElement: json['_fixedInstant'] != null
          ? Element.fromJson(
              json['_fixedInstant'] as Map<String, dynamic>,
            )
          : null,
      fixedInteger: json['fixedInteger'] != null
          ? FhirInteger.fromJson(json['fixedInteger'])
          : null,
      fixedIntegerElement: json['_fixedInteger'] != null
          ? Element.fromJson(
              json['_fixedInteger'] as Map<String, dynamic>,
            )
          : null,
      fixedMarkdown: json['fixedMarkdown'] != null
          ? FhirMarkdown.fromJson(json['fixedMarkdown'])
          : null,
      fixedMarkdownElement: json['_fixedMarkdown'] != null
          ? Element.fromJson(
              json['_fixedMarkdown'] as Map<String, dynamic>,
            )
          : null,
      fixedOid:
          json['fixedOid'] != null ? FhirOid.fromJson(json['fixedOid']) : null,
      fixedOidElement: json['_fixedOid'] != null
          ? Element.fromJson(
              json['_fixedOid'] as Map<String, dynamic>,
            )
          : null,
      fixedPositiveInt: json['fixedPositiveInt'] != null
          ? FhirPositiveInt.fromJson(json['fixedPositiveInt'])
          : null,
      fixedPositiveIntElement: json['_fixedPositiveInt'] != null
          ? Element.fromJson(
              json['_fixedPositiveInt'] as Map<String, dynamic>,
            )
          : null,
      fixedString: json['fixedString'] != null
          ? FhirString.fromJson(json['fixedString'])
          : null,
      fixedStringElement: json['_fixedString'] != null
          ? Element.fromJson(
              json['_fixedString'] as Map<String, dynamic>,
            )
          : null,
      fixedTime: json['fixedTime'] != null
          ? FhirTime.fromJson(json['fixedTime'])
          : null,
      fixedTimeElement: json['_fixedTime'] != null
          ? Element.fromJson(
              json['_fixedTime'] as Map<String, dynamic>,
            )
          : null,
      fixedUnsignedInt: json['fixedUnsignedInt'] != null
          ? FhirUnsignedInt.fromJson(json['fixedUnsignedInt'])
          : null,
      fixedUnsignedIntElement: json['_fixedUnsignedInt'] != null
          ? Element.fromJson(
              json['_fixedUnsignedInt'] as Map<String, dynamic>,
            )
          : null,
      fixedUri:
          json['fixedUri'] != null ? FhirUri.fromJson(json['fixedUri']) : null,
      fixedUriElement: json['_fixedUri'] != null
          ? Element.fromJson(
              json['_fixedUri'] as Map<String, dynamic>,
            )
          : null,
      fixedUrl:
          json['fixedUrl'] != null ? FhirUrl.fromJson(json['fixedUrl']) : null,
      fixedUrlElement: json['_fixedUrl'] != null
          ? Element.fromJson(
              json['_fixedUrl'] as Map<String, dynamic>,
            )
          : null,
      fixedUuid: json['fixedUuid'] != null
          ? FhirUuid.fromJson(json['fixedUuid'])
          : null,
      fixedUuidElement: json['_fixedUuid'] != null
          ? Element.fromJson(
              json['_fixedUuid'] as Map<String, dynamic>,
            )
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
          ? FhirBase64Binary.fromJson(json['patternBase64Binary'])
          : null,
      patternBase64BinaryElement: json['_patternBase64Binary'] != null
          ? Element.fromJson(
              json['_patternBase64Binary'] as Map<String, dynamic>,
            )
          : null,
      patternBoolean: json['patternBoolean'] != null
          ? FhirBoolean.fromJson(json['patternBoolean'])
          : null,
      patternBooleanElement: json['_patternBoolean'] != null
          ? Element.fromJson(
              json['_patternBoolean'] as Map<String, dynamic>,
            )
          : null,
      patternCanonical: json['patternCanonical'] != null
          ? FhirCanonical.fromJson(json['patternCanonical'])
          : null,
      patternCanonicalElement: json['_patternCanonical'] != null
          ? Element.fromJson(
              json['_patternCanonical'] as Map<String, dynamic>,
            )
          : null,
      patternCode: json['patternCode'] != null
          ? FhirCode.fromJson(json['patternCode'])
          : null,
      patternCodeElement: json['_patternCode'] != null
          ? Element.fromJson(
              json['_patternCode'] as Map<String, dynamic>,
            )
          : null,
      patternDate: json['patternDate'] != null
          ? FhirDate.fromJson(json['patternDate'])
          : null,
      patternDateElement: json['_patternDate'] != null
          ? Element.fromJson(
              json['_patternDate'] as Map<String, dynamic>,
            )
          : null,
      patternDateTime: json['patternDateTime'] != null
          ? FhirDateTime.fromJson(json['patternDateTime'])
          : null,
      patternDateTimeElement: json['_patternDateTime'] != null
          ? Element.fromJson(
              json['_patternDateTime'] as Map<String, dynamic>,
            )
          : null,
      patternDecimal: json['patternDecimal'] != null
          ? FhirDecimal.fromJson(json['patternDecimal'])
          : null,
      patternDecimalElement: json['_patternDecimal'] != null
          ? Element.fromJson(
              json['_patternDecimal'] as Map<String, dynamic>,
            )
          : null,
      patternId:
          json['patternId'] != null ? FhirId.fromJson(json['patternId']) : null,
      patternIdElement: json['_patternId'] != null
          ? Element.fromJson(
              json['_patternId'] as Map<String, dynamic>,
            )
          : null,
      patternInstant: json['patternInstant'] != null
          ? FhirInstant.fromJson(json['patternInstant'])
          : null,
      patternInstantElement: json['_patternInstant'] != null
          ? Element.fromJson(
              json['_patternInstant'] as Map<String, dynamic>,
            )
          : null,
      patternInteger: json['patternInteger'] != null
          ? FhirInteger.fromJson(json['patternInteger'])
          : null,
      patternIntegerElement: json['_patternInteger'] != null
          ? Element.fromJson(
              json['_patternInteger'] as Map<String, dynamic>,
            )
          : null,
      patternMarkdown: json['patternMarkdown'] != null
          ? FhirMarkdown.fromJson(json['patternMarkdown'])
          : null,
      patternMarkdownElement: json['_patternMarkdown'] != null
          ? Element.fromJson(
              json['_patternMarkdown'] as Map<String, dynamic>,
            )
          : null,
      patternOid: json['patternOid'] != null
          ? FhirOid.fromJson(json['patternOid'])
          : null,
      patternOidElement: json['_patternOid'] != null
          ? Element.fromJson(
              json['_patternOid'] as Map<String, dynamic>,
            )
          : null,
      patternPositiveInt: json['patternPositiveInt'] != null
          ? FhirPositiveInt.fromJson(json['patternPositiveInt'])
          : null,
      patternPositiveIntElement: json['_patternPositiveInt'] != null
          ? Element.fromJson(
              json['_patternPositiveInt'] as Map<String, dynamic>,
            )
          : null,
      patternString: json['patternString'] != null
          ? FhirString.fromJson(json['patternString'])
          : null,
      patternStringElement: json['_patternString'] != null
          ? Element.fromJson(
              json['_patternString'] as Map<String, dynamic>,
            )
          : null,
      patternTime: json['patternTime'] != null
          ? FhirTime.fromJson(json['patternTime'])
          : null,
      patternTimeElement: json['_patternTime'] != null
          ? Element.fromJson(
              json['_patternTime'] as Map<String, dynamic>,
            )
          : null,
      patternUnsignedInt: json['patternUnsignedInt'] != null
          ? FhirUnsignedInt.fromJson(json['patternUnsignedInt'])
          : null,
      patternUnsignedIntElement: json['_patternUnsignedInt'] != null
          ? Element.fromJson(
              json['_patternUnsignedInt'] as Map<String, dynamic>,
            )
          : null,
      patternUri: json['patternUri'] != null
          ? FhirUri.fromJson(json['patternUri'])
          : null,
      patternUriElement: json['_patternUri'] != null
          ? Element.fromJson(
              json['_patternUri'] as Map<String, dynamic>,
            )
          : null,
      patternUrl: json['patternUrl'] != null
          ? FhirUrl.fromJson(json['patternUrl'])
          : null,
      patternUrlElement: json['_patternUrl'] != null
          ? Element.fromJson(
              json['_patternUrl'] as Map<String, dynamic>,
            )
          : null,
      patternUuid: json['patternUuid'] != null
          ? FhirUuid.fromJson(json['patternUuid'])
          : null,
      patternUuidElement: json['_patternUuid'] != null
          ? Element.fromJson(
              json['_patternUuid'] as Map<String, dynamic>,
            )
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
                (dynamic v) => ElementDefinitionExample.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      minValueDate: json['minValueDate'] != null
          ? FhirDate.fromJson(json['minValueDate'])
          : null,
      minValueDateElement: json['_minValueDate'] != null
          ? Element.fromJson(
              json['_minValueDate'] as Map<String, dynamic>,
            )
          : null,
      minValueDateTime: json['minValueDateTime'] != null
          ? FhirDateTime.fromJson(json['minValueDateTime'])
          : null,
      minValueDateTimeElement: json['_minValueDateTime'] != null
          ? Element.fromJson(
              json['_minValueDateTime'] as Map<String, dynamic>,
            )
          : null,
      minValueInstant: json['minValueInstant'] != null
          ? FhirInstant.fromJson(json['minValueInstant'])
          : null,
      minValueInstantElement: json['_minValueInstant'] != null
          ? Element.fromJson(
              json['_minValueInstant'] as Map<String, dynamic>,
            )
          : null,
      minValueTime: json['minValueTime'] != null
          ? FhirTime.fromJson(json['minValueTime'])
          : null,
      minValueTimeElement: json['_minValueTime'] != null
          ? Element.fromJson(
              json['_minValueTime'] as Map<String, dynamic>,
            )
          : null,
      minValueDecimal: json['minValueDecimal'] != null
          ? FhirDecimal.fromJson(json['minValueDecimal'])
          : null,
      minValueDecimalElement: json['_minValueDecimal'] != null
          ? Element.fromJson(
              json['_minValueDecimal'] as Map<String, dynamic>,
            )
          : null,
      minValueInteger: json['minValueInteger'] != null
          ? FhirInteger.fromJson(json['minValueInteger'])
          : null,
      minValueIntegerElement: json['_minValueInteger'] != null
          ? Element.fromJson(
              json['_minValueInteger'] as Map<String, dynamic>,
            )
          : null,
      minValuePositiveInt: json['minValuePositiveInt'] != null
          ? FhirPositiveInt.fromJson(json['minValuePositiveInt'])
          : null,
      minValuePositiveIntElement: json['_minValuePositiveInt'] != null
          ? Element.fromJson(
              json['_minValuePositiveInt'] as Map<String, dynamic>,
            )
          : null,
      minValueUnsignedInt: json['minValueUnsignedInt'] != null
          ? FhirUnsignedInt.fromJson(json['minValueUnsignedInt'])
          : null,
      minValueUnsignedIntElement: json['_minValueUnsignedInt'] != null
          ? Element.fromJson(
              json['_minValueUnsignedInt'] as Map<String, dynamic>,
            )
          : null,
      minValueQuantity: json['minValueQuantity'] != null
          ? Quantity.fromJson(
              json['minValueQuantity'] as Map<String, dynamic>,
            )
          : null,
      maxValueDate: json['maxValueDate'] != null
          ? FhirDate.fromJson(json['maxValueDate'])
          : null,
      maxValueDateElement: json['_maxValueDate'] != null
          ? Element.fromJson(
              json['_maxValueDate'] as Map<String, dynamic>,
            )
          : null,
      maxValueDateTime: json['maxValueDateTime'] != null
          ? FhirDateTime.fromJson(json['maxValueDateTime'])
          : null,
      maxValueDateTimeElement: json['_maxValueDateTime'] != null
          ? Element.fromJson(
              json['_maxValueDateTime'] as Map<String, dynamic>,
            )
          : null,
      maxValueInstant: json['maxValueInstant'] != null
          ? FhirInstant.fromJson(json['maxValueInstant'])
          : null,
      maxValueInstantElement: json['_maxValueInstant'] != null
          ? Element.fromJson(
              json['_maxValueInstant'] as Map<String, dynamic>,
            )
          : null,
      maxValueTime: json['maxValueTime'] != null
          ? FhirTime.fromJson(json['maxValueTime'])
          : null,
      maxValueTimeElement: json['_maxValueTime'] != null
          ? Element.fromJson(
              json['_maxValueTime'] as Map<String, dynamic>,
            )
          : null,
      maxValueDecimal: json['maxValueDecimal'] != null
          ? FhirDecimal.fromJson(json['maxValueDecimal'])
          : null,
      maxValueDecimalElement: json['_maxValueDecimal'] != null
          ? Element.fromJson(
              json['_maxValueDecimal'] as Map<String, dynamic>,
            )
          : null,
      maxValueInteger: json['maxValueInteger'] != null
          ? FhirInteger.fromJson(json['maxValueInteger'])
          : null,
      maxValueIntegerElement: json['_maxValueInteger'] != null
          ? Element.fromJson(
              json['_maxValueInteger'] as Map<String, dynamic>,
            )
          : null,
      maxValuePositiveInt: json['maxValuePositiveInt'] != null
          ? FhirPositiveInt.fromJson(json['maxValuePositiveInt'])
          : null,
      maxValuePositiveIntElement: json['_maxValuePositiveInt'] != null
          ? Element.fromJson(
              json['_maxValuePositiveInt'] as Map<String, dynamic>,
            )
          : null,
      maxValueUnsignedInt: json['maxValueUnsignedInt'] != null
          ? FhirUnsignedInt.fromJson(json['maxValueUnsignedInt'])
          : null,
      maxValueUnsignedIntElement: json['_maxValueUnsignedInt'] != null
          ? Element.fromJson(
              json['_maxValueUnsignedInt'] as Map<String, dynamic>,
            )
          : null,
      maxValueQuantity: json['maxValueQuantity'] != null
          ? Quantity.fromJson(
              json['maxValueQuantity'] as Map<String, dynamic>,
            )
          : null,
      maxLength: json['maxLength'] != null
          ? FhirInteger.fromJson(json['maxLength'])
          : null,
      maxLengthElement: json['_maxLength'] != null
          ? Element.fromJson(
              json['_maxLength'] as Map<String, dynamic>,
            )
          : null,
      condition: json['condition'] != null
          ? (json['condition'] as List<dynamic>)
              .map<FhirId>(
                (dynamic v) => FhirId.fromJson(v as dynamic),
              )
              .toList()
          : null,
      conditionElement: json['_condition'] != null
          ? (json['_condition'] as List<dynamic>)
              .map<Element>(
                (dynamic v) => Element.fromJson(v as Map<String, dynamic>),
              )
              .toList()
          : null,
      constraint: json['constraint'] != null
          ? (json['constraint'] as List<dynamic>)
              .map<ElementDefinitionConstraint>(
                (dynamic v) => ElementDefinitionConstraint.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      mustSupport: json['mustSupport'] != null
          ? FhirBoolean.fromJson(json['mustSupport'])
          : null,
      mustSupportElement: json['_mustSupport'] != null
          ? Element.fromJson(
              json['_mustSupport'] as Map<String, dynamic>,
            )
          : null,
      isModifier: json['isModifier'] != null
          ? FhirBoolean.fromJson(json['isModifier'])
          : null,
      isModifierElement: json['_isModifier'] != null
          ? Element.fromJson(
              json['_isModifier'] as Map<String, dynamic>,
            )
          : null,
      isModifierReason: json['isModifierReason'] != null
          ? FhirString.fromJson(json['isModifierReason'])
          : null,
      isModifierReasonElement: json['_isModifierReason'] != null
          ? Element.fromJson(
              json['_isModifierReason'] as Map<String, dynamic>,
            )
          : null,
      isSummary: json['isSummary'] != null
          ? FhirBoolean.fromJson(json['isSummary'])
          : null,
      isSummaryElement: json['_isSummary'] != null
          ? Element.fromJson(
              json['_isSummary'] as Map<String, dynamic>,
            )
          : null,
      binding: json['binding'] != null
          ? ElementDefinitionBinding.fromJson(
              json['binding'] as Map<String, dynamic>,
            )
          : null,
      mapping: json['mapping'] != null
          ? (json['mapping'] as List<dynamic>)
              .map<ElementDefinitionMapping>(
                (dynamic v) => ElementDefinitionMapping.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ElementDefinition] from a [String] or [YamlMap] object
  factory ElementDefinition.fromYaml(dynamic yaml) => yaml is String
      ? ElementDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ElementDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ElementDefinition cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ElementDefinition] that takes in a [String]
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

  /// [path]
  /// The path identifies the element and is expressed as a "."-separated
  /// list of ancestor elements, beginning with the name of the resource or
  /// extension.
  final FhirString path;

  /// Extensions for [path]
  final Element? pathElement;

  /// [representation]
  /// Codes that define how this element is represented in instances, when
  /// the deviation varies from the normal case.
  final List<PropertyRepresentation>? representation;

  /// Extensions for [representation]
  final List<Element>? representationElement;

  /// [sliceName]
  /// The name of this element definition slice, when slicing is working. The
  /// name must be a token with no dots or spaces. This is a unique name
  /// referring to a specific set of constraints applied to this element,
  /// used to provide a name to different slices of the same element.
  final FhirString? sliceName;

  /// Extensions for [sliceName]
  final Element? sliceNameElement;

  /// [sliceIsConstraining]
  /// If true, indicates that this slice definition is constraining a slice
  /// definition with the same name in an inherited profile. If false, the
  /// slice is not overriding any slice in an inherited profile. If missing,
  /// the slice might or might not be overriding a slice in an inherited
  /// profile, depending on the sliceName.
  final FhirBoolean? sliceIsConstraining;

  /// Extensions for [sliceIsConstraining]
  final Element? sliceIsConstrainingElement;

  /// [label]
  /// A single preferred label which is the text to display beside the
  /// element indicating its meaning or to use to prompt for the element in a
  /// user display or form.
  final FhirString? label;

  /// Extensions for [label]
  final Element? labelElement;

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

  /// Extensions for [short]
  final Element? shortElement;

  /// [definition]
  /// Provides a complete explanation of the meaning of the data element for
  /// human readability. For the case of elements derived from existing
  /// elements (e.g. constraints), the definition SHALL be consistent with
  /// the base definition, but convey the meaning of the element in the
  /// particular context of use of the resource. (Note: The text you are
  /// reading is specified in ElementDefinition.definition).
  final FhirMarkdown? definition;

  /// Extensions for [definition]
  final Element? definitionElement;

  /// [comment]
  /// Explanatory notes and implementation guidance about the data element,
  /// including notes about how to use the data properly, exceptions to
  /// proper use, etc. (Note: The text you are reading is specified in
  /// ElementDefinition.comment).
  final FhirMarkdown? comment;

  /// Extensions for [comment]
  final Element? commentElement;

  /// [requirements]
  /// This element is for traceability of why the element was created and why
  /// the constraints exist as they do. This may be used to point to source
  /// materials or specifications that drove the structure of this element.
  final FhirMarkdown? requirements;

  /// Extensions for [requirements]
  final Element? requirementsElement;

  /// [alias]
  /// Identifies additional names by which this element might also be known.
  final List<FhirString>? alias;

  /// Extensions for [alias]
  final List<Element>? aliasElement;

  /// [min]
  /// The minimum number of times this element SHALL appear in the instance.
  final FhirUnsignedInt? min;

  /// Extensions for [min]
  final Element? minElement;

  /// [max]
  /// The maximum number of times this element is permitted to appear in the
  /// instance.
  final FhirString? max;

  /// Extensions for [max]
  final Element? maxElement;

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

  /// Extensions for [contentReference]
  final Element? contentReferenceElement;

  /// [type]
  /// The data type or resource that the value of this element is permitted
  /// to be.
  final List<ElementDefinitionType>? type;

  /// [defaultValueBase64Binary]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final FhirBase64Binary? defaultValueBase64Binary;

  /// Extensions for [defaultValueBase64Binary]
  final Element? defaultValueBase64BinaryElement;

  /// [defaultValueBoolean]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final FhirBoolean? defaultValueBoolean;

  /// Extensions for [defaultValueBoolean]
  final Element? defaultValueBooleanElement;

  /// [defaultValueCanonical]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final FhirCanonical? defaultValueCanonical;

  /// Extensions for [defaultValueCanonical]
  final Element? defaultValueCanonicalElement;

  /// [defaultValueCode]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final FhirCode? defaultValueCode;

  /// Extensions for [defaultValueCode]
  final Element? defaultValueCodeElement;

  /// [defaultValueDate]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final FhirDate? defaultValueDate;

  /// Extensions for [defaultValueDate]
  final Element? defaultValueDateElement;

  /// [defaultValueDateTime]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final FhirDateTime? defaultValueDateTime;

  /// Extensions for [defaultValueDateTime]
  final Element? defaultValueDateTimeElement;

  /// [defaultValueDecimal]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final FhirDecimal? defaultValueDecimal;

  /// Extensions for [defaultValueDecimal]
  final Element? defaultValueDecimalElement;

  /// [defaultValueId]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final FhirId? defaultValueId;

  /// Extensions for [defaultValueId]
  final Element? defaultValueIdElement;

  /// [defaultValueInstant]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final FhirInstant? defaultValueInstant;

  /// Extensions for [defaultValueInstant]
  final Element? defaultValueInstantElement;

  /// [defaultValueInteger]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final FhirInteger? defaultValueInteger;

  /// Extensions for [defaultValueInteger]
  final Element? defaultValueIntegerElement;

  /// [defaultValueMarkdown]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final FhirMarkdown? defaultValueMarkdown;

  /// Extensions for [defaultValueMarkdown]
  final Element? defaultValueMarkdownElement;

  /// [defaultValueOid]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final FhirOid? defaultValueOid;

  /// Extensions for [defaultValueOid]
  final Element? defaultValueOidElement;

  /// [defaultValuePositiveInt]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final FhirPositiveInt? defaultValuePositiveInt;

  /// Extensions for [defaultValuePositiveInt]
  final Element? defaultValuePositiveIntElement;

  /// [defaultValueString]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final FhirString? defaultValueString;

  /// Extensions for [defaultValueString]
  final Element? defaultValueStringElement;

  /// [defaultValueTime]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final FhirTime? defaultValueTime;

  /// Extensions for [defaultValueTime]
  final Element? defaultValueTimeElement;

  /// [defaultValueUnsignedInt]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final FhirUnsignedInt? defaultValueUnsignedInt;

  /// Extensions for [defaultValueUnsignedInt]
  final Element? defaultValueUnsignedIntElement;

  /// [defaultValueUri]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final FhirUri? defaultValueUri;

  /// Extensions for [defaultValueUri]
  final Element? defaultValueUriElement;

  /// [defaultValueUrl]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final FhirUrl? defaultValueUrl;

  /// Extensions for [defaultValueUrl]
  final Element? defaultValueUrlElement;

  /// [defaultValueUuid]
  /// The value that should be used if there is no value stated in the
  /// instance (e.g. 'if not otherwise specified, the abstract is false').
  final FhirUuid? defaultValueUuid;

  /// Extensions for [defaultValueUuid]
  final Element? defaultValueUuidElement;

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

  /// Extensions for [meaningWhenMissing]
  final Element? meaningWhenMissingElement;

  /// [orderMeaning]
  /// If present, indicates that the order of the repeating element has
  /// meaning and describes what that meaning is. If absent, it means that
  /// the order of the element has no meaning.
  final FhirString? orderMeaning;

  /// Extensions for [orderMeaning]
  final Element? orderMeaningElement;

  /// [fixedBase64Binary]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final FhirBase64Binary? fixedBase64Binary;

  /// Extensions for [fixedBase64Binary]
  final Element? fixedBase64BinaryElement;

  /// [fixedBoolean]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final FhirBoolean? fixedBoolean;

  /// Extensions for [fixedBoolean]
  final Element? fixedBooleanElement;

  /// [fixedCanonical]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final FhirCanonical? fixedCanonical;

  /// Extensions for [fixedCanonical]
  final Element? fixedCanonicalElement;

  /// [fixedCode]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final FhirCode? fixedCode;

  /// Extensions for [fixedCode]
  final Element? fixedCodeElement;

  /// [fixedDate]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final FhirDate? fixedDate;

  /// Extensions for [fixedDate]
  final Element? fixedDateElement;

  /// [fixedDateTime]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final FhirDateTime? fixedDateTime;

  /// Extensions for [fixedDateTime]
  final Element? fixedDateTimeElement;

  /// [fixedDecimal]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final FhirDecimal? fixedDecimal;

  /// Extensions for [fixedDecimal]
  final Element? fixedDecimalElement;

  /// [fixedId]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final FhirId? fixedId;

  /// Extensions for [fixedId]
  final Element? fixedIdElement;

  /// [fixedInstant]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final FhirInstant? fixedInstant;

  /// Extensions for [fixedInstant]
  final Element? fixedInstantElement;

  /// [fixedInteger]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final FhirInteger? fixedInteger;

  /// Extensions for [fixedInteger]
  final Element? fixedIntegerElement;

  /// [fixedMarkdown]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final FhirMarkdown? fixedMarkdown;

  /// Extensions for [fixedMarkdown]
  final Element? fixedMarkdownElement;

  /// [fixedOid]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final FhirOid? fixedOid;

  /// Extensions for [fixedOid]
  final Element? fixedOidElement;

  /// [fixedPositiveInt]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final FhirPositiveInt? fixedPositiveInt;

  /// Extensions for [fixedPositiveInt]
  final Element? fixedPositiveIntElement;

  /// [fixedString]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final FhirString? fixedString;

  /// Extensions for [fixedString]
  final Element? fixedStringElement;

  /// [fixedTime]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final FhirTime? fixedTime;

  /// Extensions for [fixedTime]
  final Element? fixedTimeElement;

  /// [fixedUnsignedInt]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final FhirUnsignedInt? fixedUnsignedInt;

  /// Extensions for [fixedUnsignedInt]
  final Element? fixedUnsignedIntElement;

  /// [fixedUri]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final FhirUri? fixedUri;

  /// Extensions for [fixedUri]
  final Element? fixedUriElement;

  /// [fixedUrl]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final FhirUrl? fixedUrl;

  /// Extensions for [fixedUrl]
  final Element? fixedUrlElement;

  /// [fixedUuid]
  /// Specifies a value that SHALL be exactly the value for this element in
  /// the instance. For purposes of comparison, non-significant whitespace is
  /// ignored, and all values must be an exact match (case and accent
  /// sensitive). Missing elements/attributes must also be missing.
  final FhirUuid? fixedUuid;

  /// Extensions for [fixedUuid]
  final Element? fixedUuidElement;

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

  /// Extensions for [patternBase64Binary]
  final Element? patternBase64BinaryElement;

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

  /// Extensions for [patternBoolean]
  final Element? patternBooleanElement;

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

  /// Extensions for [patternCanonical]
  final Element? patternCanonicalElement;

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

  /// Extensions for [patternCode]
  final Element? patternCodeElement;

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

  /// Extensions for [patternDate]
  final Element? patternDateElement;

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

  /// Extensions for [patternDateTime]
  final Element? patternDateTimeElement;

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

  /// Extensions for [patternDecimal]
  final Element? patternDecimalElement;

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

  /// Extensions for [patternId]
  final Element? patternIdElement;

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

  /// Extensions for [patternInstant]
  final Element? patternInstantElement;

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

  /// Extensions for [patternInteger]
  final Element? patternIntegerElement;

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

  /// Extensions for [patternMarkdown]
  final Element? patternMarkdownElement;

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

  /// Extensions for [patternOid]
  final Element? patternOidElement;

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

  /// Extensions for [patternPositiveInt]
  final Element? patternPositiveIntElement;

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

  /// Extensions for [patternString]
  final Element? patternStringElement;

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

  /// Extensions for [patternTime]
  final Element? patternTimeElement;

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

  /// Extensions for [patternUnsignedInt]
  final Element? patternUnsignedIntElement;

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

  /// Extensions for [patternUri]
  final Element? patternUriElement;

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

  /// Extensions for [patternUrl]
  final Element? patternUrlElement;

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

  /// Extensions for [patternUuid]
  final Element? patternUuidElement;

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

  /// Extensions for [minValueDate]
  final Element? minValueDateElement;

  /// [minValueDateTime]
  /// The minimum allowed value for the element. The value is inclusive. This
  /// is allowed for the types date, dateTime, instant, time, decimal,
  /// integer, and Quantity.
  final FhirDateTime? minValueDateTime;

  /// Extensions for [minValueDateTime]
  final Element? minValueDateTimeElement;

  /// [minValueInstant]
  /// The minimum allowed value for the element. The value is inclusive. This
  /// is allowed for the types date, dateTime, instant, time, decimal,
  /// integer, and Quantity.
  final FhirInstant? minValueInstant;

  /// Extensions for [minValueInstant]
  final Element? minValueInstantElement;

  /// [minValueTime]
  /// The minimum allowed value for the element. The value is inclusive. This
  /// is allowed for the types date, dateTime, instant, time, decimal,
  /// integer, and Quantity.
  final FhirTime? minValueTime;

  /// Extensions for [minValueTime]
  final Element? minValueTimeElement;

  /// [minValueDecimal]
  /// The minimum allowed value for the element. The value is inclusive. This
  /// is allowed for the types date, dateTime, instant, time, decimal,
  /// integer, and Quantity.
  final FhirDecimal? minValueDecimal;

  /// Extensions for [minValueDecimal]
  final Element? minValueDecimalElement;

  /// [minValueInteger]
  /// The minimum allowed value for the element. The value is inclusive. This
  /// is allowed for the types date, dateTime, instant, time, decimal,
  /// integer, and Quantity.
  final FhirInteger? minValueInteger;

  /// Extensions for [minValueInteger]
  final Element? minValueIntegerElement;

  /// [minValuePositiveInt]
  /// The minimum allowed value for the element. The value is inclusive. This
  /// is allowed for the types date, dateTime, instant, time, decimal,
  /// integer, and Quantity.
  final FhirPositiveInt? minValuePositiveInt;

  /// Extensions for [minValuePositiveInt]
  final Element? minValuePositiveIntElement;

  /// [minValueUnsignedInt]
  /// The minimum allowed value for the element. The value is inclusive. This
  /// is allowed for the types date, dateTime, instant, time, decimal,
  /// integer, and Quantity.
  final FhirUnsignedInt? minValueUnsignedInt;

  /// Extensions for [minValueUnsignedInt]
  final Element? minValueUnsignedIntElement;

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

  /// Extensions for [maxValueDate]
  final Element? maxValueDateElement;

  /// [maxValueDateTime]
  /// The maximum allowed value for the element. The value is inclusive. This
  /// is allowed for the types date, dateTime, instant, time, decimal,
  /// integer, and Quantity.
  final FhirDateTime? maxValueDateTime;

  /// Extensions for [maxValueDateTime]
  final Element? maxValueDateTimeElement;

  /// [maxValueInstant]
  /// The maximum allowed value for the element. The value is inclusive. This
  /// is allowed for the types date, dateTime, instant, time, decimal,
  /// integer, and Quantity.
  final FhirInstant? maxValueInstant;

  /// Extensions for [maxValueInstant]
  final Element? maxValueInstantElement;

  /// [maxValueTime]
  /// The maximum allowed value for the element. The value is inclusive. This
  /// is allowed for the types date, dateTime, instant, time, decimal,
  /// integer, and Quantity.
  final FhirTime? maxValueTime;

  /// Extensions for [maxValueTime]
  final Element? maxValueTimeElement;

  /// [maxValueDecimal]
  /// The maximum allowed value for the element. The value is inclusive. This
  /// is allowed for the types date, dateTime, instant, time, decimal,
  /// integer, and Quantity.
  final FhirDecimal? maxValueDecimal;

  /// Extensions for [maxValueDecimal]
  final Element? maxValueDecimalElement;

  /// [maxValueInteger]
  /// The maximum allowed value for the element. The value is inclusive. This
  /// is allowed for the types date, dateTime, instant, time, decimal,
  /// integer, and Quantity.
  final FhirInteger? maxValueInteger;

  /// Extensions for [maxValueInteger]
  final Element? maxValueIntegerElement;

  /// [maxValuePositiveInt]
  /// The maximum allowed value for the element. The value is inclusive. This
  /// is allowed for the types date, dateTime, instant, time, decimal,
  /// integer, and Quantity.
  final FhirPositiveInt? maxValuePositiveInt;

  /// Extensions for [maxValuePositiveInt]
  final Element? maxValuePositiveIntElement;

  /// [maxValueUnsignedInt]
  /// The maximum allowed value for the element. The value is inclusive. This
  /// is allowed for the types date, dateTime, instant, time, decimal,
  /// integer, and Quantity.
  final FhirUnsignedInt? maxValueUnsignedInt;

  /// Extensions for [maxValueUnsignedInt]
  final Element? maxValueUnsignedIntElement;

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

  /// Extensions for [maxLength]
  final Element? maxLengthElement;

  /// [condition]
  /// A reference to an invariant that may make additional statements about
  /// the cardinality or value in the instance.
  final List<FhirId>? condition;

  /// Extensions for [condition]
  final List<Element>? conditionElement;

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

  /// Extensions for [mustSupport]
  final Element? mustSupportElement;

  /// [isModifier]
  /// If true, the value of this element affects the interpretation of the
  /// element or resource that contains it, and the value of the element
  /// cannot be ignored. Typically, this is used for status, negation and
  /// qualification codes. The effect of this is that the element cannot be
  /// ignored by systems: they SHALL either recognize the element and process
  /// it, and/or a pre-determination has been made that it is not relevant to
  /// their particular system.
  final FhirBoolean? isModifier;

  /// Extensions for [isModifier]
  final Element? isModifierElement;

  /// [isModifierReason]
  /// Explains how that element affects the interpretation of the resource or
  /// element that contains it.
  final FhirString? isModifierReason;

  /// Extensions for [isModifierReason]
  final Element? isModifierReasonElement;

  /// [isSummary]
  /// Whether the element should be included if a client requests a search
  /// with the parameter _summary=true.
  final FhirBoolean? isSummary;

  /// Extensions for [isSummary]
  final Element? isSummaryElement;

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
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['path'] = path.toJson();
    if (pathElement != null) {
      json['_path'] = pathElement!.toJson();
    }
    if (representation != null && representation!.isNotEmpty) {
      json['representation'] = representation!
          .map((PropertyRepresentation v) => v.toJson())
          .toList();
    }
    if (sliceName?.value != null) {
      json['sliceName'] = sliceName!.toJson();
    }
    if (sliceNameElement != null) {
      json['_sliceName'] = sliceNameElement!.toJson();
    }
    if (sliceIsConstraining?.value != null) {
      json['sliceIsConstraining'] = sliceIsConstraining!.toJson();
    }
    if (sliceIsConstrainingElement != null) {
      json['_sliceIsConstraining'] = sliceIsConstrainingElement!.toJson();
    }
    if (label?.value != null) {
      json['label'] = label!.toJson();
    }
    if (labelElement != null) {
      json['_label'] = labelElement!.toJson();
    }
    if (code != null && code!.isNotEmpty) {
      json['code'] = code!.map((Coding v) => v.toJson()).toList();
    }
    if (slicing != null) {
      json['slicing'] = slicing!.toJson();
    }
    if (short?.value != null) {
      json['short'] = short!.toJson();
    }
    if (shortElement != null) {
      json['_short'] = shortElement!.toJson();
    }
    if (definition?.value != null) {
      json['definition'] = definition!.toJson();
    }
    if (definitionElement != null) {
      json['_definition'] = definitionElement!.toJson();
    }
    if (comment?.value != null) {
      json['comment'] = comment!.toJson();
    }
    if (commentElement != null) {
      json['_comment'] = commentElement!.toJson();
    }
    if (requirements?.value != null) {
      json['requirements'] = requirements!.toJson();
    }
    if (requirementsElement != null) {
      json['_requirements'] = requirementsElement!.toJson();
    }
    if (alias != null && alias!.isNotEmpty) {
      json['alias'] = alias!.map((FhirString v) => v.toJson()).toList();
    }
    if (aliasElement != null && aliasElement!.isNotEmpty) {
      json['_alias'] = aliasElement!.map((Element v) => v.toJson()).toList();
    }
    if (min?.value != null) {
      json['min'] = min!.toJson();
    }
    if (minElement != null) {
      json['_min'] = minElement!.toJson();
    }
    if (max?.value != null) {
      json['max'] = max!.toJson();
    }
    if (maxElement != null) {
      json['_max'] = maxElement!.toJson();
    }
    if (base != null) {
      json['base'] = base!.toJson();
    }
    if (contentReference?.value != null) {
      json['contentReference'] = contentReference!.toJson();
    }
    if (contentReferenceElement != null) {
      json['_contentReference'] = contentReferenceElement!.toJson();
    }
    if (type != null && type!.isNotEmpty) {
      json['type'] =
          type!.map((ElementDefinitionType v) => v.toJson()).toList();
    }
    if (defaultValueBase64Binary?.value != null) {
      json['defaultValueBase64Binary'] = defaultValueBase64Binary!.toJson();
    }
    if (defaultValueBase64BinaryElement != null) {
      json['_defaultValueBase64Binary'] =
          defaultValueBase64BinaryElement!.toJson();
    }
    if (defaultValueBoolean?.value != null) {
      json['defaultValueBoolean'] = defaultValueBoolean!.toJson();
    }
    if (defaultValueBooleanElement != null) {
      json['_defaultValueBoolean'] = defaultValueBooleanElement!.toJson();
    }
    if (defaultValueCanonical?.value != null) {
      json['defaultValueCanonical'] = defaultValueCanonical!.toJson();
    }
    if (defaultValueCanonicalElement != null) {
      json['_defaultValueCanonical'] = defaultValueCanonicalElement!.toJson();
    }
    if (defaultValueCode?.value != null) {
      json['defaultValueCode'] = defaultValueCode!.toJson();
    }
    if (defaultValueCodeElement != null) {
      json['_defaultValueCode'] = defaultValueCodeElement!.toJson();
    }
    if (defaultValueDate?.value != null) {
      json['defaultValueDate'] = defaultValueDate!.toJson();
    }
    if (defaultValueDateElement != null) {
      json['_defaultValueDate'] = defaultValueDateElement!.toJson();
    }
    if (defaultValueDateTime?.value != null) {
      json['defaultValueDateTime'] = defaultValueDateTime!.toJson();
    }
    if (defaultValueDateTimeElement != null) {
      json['_defaultValueDateTime'] = defaultValueDateTimeElement!.toJson();
    }
    if (defaultValueDecimal?.value != null) {
      json['defaultValueDecimal'] = defaultValueDecimal!.toJson();
    }
    if (defaultValueDecimalElement != null) {
      json['_defaultValueDecimal'] = defaultValueDecimalElement!.toJson();
    }
    if (defaultValueId?.value != null) {
      json['defaultValueId'] = defaultValueId!.toJson();
    }
    if (defaultValueIdElement != null) {
      json['_defaultValueId'] = defaultValueIdElement!.toJson();
    }
    if (defaultValueInstant?.value != null) {
      json['defaultValueInstant'] = defaultValueInstant!.toJson();
    }
    if (defaultValueInstantElement != null) {
      json['_defaultValueInstant'] = defaultValueInstantElement!.toJson();
    }
    if (defaultValueInteger?.value != null) {
      json['defaultValueInteger'] = defaultValueInteger!.toJson();
    }
    if (defaultValueIntegerElement != null) {
      json['_defaultValueInteger'] = defaultValueIntegerElement!.toJson();
    }
    if (defaultValueMarkdown?.value != null) {
      json['defaultValueMarkdown'] = defaultValueMarkdown!.toJson();
    }
    if (defaultValueMarkdownElement != null) {
      json['_defaultValueMarkdown'] = defaultValueMarkdownElement!.toJson();
    }
    if (defaultValueOid?.value != null) {
      json['defaultValueOid'] = defaultValueOid!.toJson();
    }
    if (defaultValueOidElement != null) {
      json['_defaultValueOid'] = defaultValueOidElement!.toJson();
    }
    if (defaultValuePositiveInt?.value != null) {
      json['defaultValuePositiveInt'] = defaultValuePositiveInt!.toJson();
    }
    if (defaultValuePositiveIntElement != null) {
      json['_defaultValuePositiveInt'] =
          defaultValuePositiveIntElement!.toJson();
    }
    if (defaultValueString?.value != null) {
      json['defaultValueString'] = defaultValueString!.toJson();
    }
    if (defaultValueStringElement != null) {
      json['_defaultValueString'] = defaultValueStringElement!.toJson();
    }
    if (defaultValueTime?.value != null) {
      json['defaultValueTime'] = defaultValueTime!.toJson();
    }
    if (defaultValueTimeElement != null) {
      json['_defaultValueTime'] = defaultValueTimeElement!.toJson();
    }
    if (defaultValueUnsignedInt?.value != null) {
      json['defaultValueUnsignedInt'] = defaultValueUnsignedInt!.toJson();
    }
    if (defaultValueUnsignedIntElement != null) {
      json['_defaultValueUnsignedInt'] =
          defaultValueUnsignedIntElement!.toJson();
    }
    if (defaultValueUri?.value != null) {
      json['defaultValueUri'] = defaultValueUri!.toJson();
    }
    if (defaultValueUriElement != null) {
      json['_defaultValueUri'] = defaultValueUriElement!.toJson();
    }
    if (defaultValueUrl?.value != null) {
      json['defaultValueUrl'] = defaultValueUrl!.toJson();
    }
    if (defaultValueUrlElement != null) {
      json['_defaultValueUrl'] = defaultValueUrlElement!.toJson();
    }
    if (defaultValueUuid?.value != null) {
      json['defaultValueUuid'] = defaultValueUuid!.toJson();
    }
    if (defaultValueUuidElement != null) {
      json['_defaultValueUuid'] = defaultValueUuidElement!.toJson();
    }
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
    if (meaningWhenMissing?.value != null) {
      json['meaningWhenMissing'] = meaningWhenMissing!.toJson();
    }
    if (meaningWhenMissingElement != null) {
      json['_meaningWhenMissing'] = meaningWhenMissingElement!.toJson();
    }
    if (orderMeaning?.value != null) {
      json['orderMeaning'] = orderMeaning!.toJson();
    }
    if (orderMeaningElement != null) {
      json['_orderMeaning'] = orderMeaningElement!.toJson();
    }
    if (fixedBase64Binary?.value != null) {
      json['fixedBase64Binary'] = fixedBase64Binary!.toJson();
    }
    if (fixedBase64BinaryElement != null) {
      json['_fixedBase64Binary'] = fixedBase64BinaryElement!.toJson();
    }
    if (fixedBoolean?.value != null) {
      json['fixedBoolean'] = fixedBoolean!.toJson();
    }
    if (fixedBooleanElement != null) {
      json['_fixedBoolean'] = fixedBooleanElement!.toJson();
    }
    if (fixedCanonical?.value != null) {
      json['fixedCanonical'] = fixedCanonical!.toJson();
    }
    if (fixedCanonicalElement != null) {
      json['_fixedCanonical'] = fixedCanonicalElement!.toJson();
    }
    if (fixedCode?.value != null) {
      json['fixedCode'] = fixedCode!.toJson();
    }
    if (fixedCodeElement != null) {
      json['_fixedCode'] = fixedCodeElement!.toJson();
    }
    if (fixedDate?.value != null) {
      json['fixedDate'] = fixedDate!.toJson();
    }
    if (fixedDateElement != null) {
      json['_fixedDate'] = fixedDateElement!.toJson();
    }
    if (fixedDateTime?.value != null) {
      json['fixedDateTime'] = fixedDateTime!.toJson();
    }
    if (fixedDateTimeElement != null) {
      json['_fixedDateTime'] = fixedDateTimeElement!.toJson();
    }
    if (fixedDecimal?.value != null) {
      json['fixedDecimal'] = fixedDecimal!.toJson();
    }
    if (fixedDecimalElement != null) {
      json['_fixedDecimal'] = fixedDecimalElement!.toJson();
    }
    if (fixedId?.value != null) {
      json['fixedId'] = fixedId!.toJson();
    }
    if (fixedIdElement != null) {
      json['_fixedId'] = fixedIdElement!.toJson();
    }
    if (fixedInstant?.value != null) {
      json['fixedInstant'] = fixedInstant!.toJson();
    }
    if (fixedInstantElement != null) {
      json['_fixedInstant'] = fixedInstantElement!.toJson();
    }
    if (fixedInteger?.value != null) {
      json['fixedInteger'] = fixedInteger!.toJson();
    }
    if (fixedIntegerElement != null) {
      json['_fixedInteger'] = fixedIntegerElement!.toJson();
    }
    if (fixedMarkdown?.value != null) {
      json['fixedMarkdown'] = fixedMarkdown!.toJson();
    }
    if (fixedMarkdownElement != null) {
      json['_fixedMarkdown'] = fixedMarkdownElement!.toJson();
    }
    if (fixedOid?.value != null) {
      json['fixedOid'] = fixedOid!.toJson();
    }
    if (fixedOidElement != null) {
      json['_fixedOid'] = fixedOidElement!.toJson();
    }
    if (fixedPositiveInt?.value != null) {
      json['fixedPositiveInt'] = fixedPositiveInt!.toJson();
    }
    if (fixedPositiveIntElement != null) {
      json['_fixedPositiveInt'] = fixedPositiveIntElement!.toJson();
    }
    if (fixedString?.value != null) {
      json['fixedString'] = fixedString!.toJson();
    }
    if (fixedStringElement != null) {
      json['_fixedString'] = fixedStringElement!.toJson();
    }
    if (fixedTime?.value != null) {
      json['fixedTime'] = fixedTime!.toJson();
    }
    if (fixedTimeElement != null) {
      json['_fixedTime'] = fixedTimeElement!.toJson();
    }
    if (fixedUnsignedInt?.value != null) {
      json['fixedUnsignedInt'] = fixedUnsignedInt!.toJson();
    }
    if (fixedUnsignedIntElement != null) {
      json['_fixedUnsignedInt'] = fixedUnsignedIntElement!.toJson();
    }
    if (fixedUri?.value != null) {
      json['fixedUri'] = fixedUri!.toJson();
    }
    if (fixedUriElement != null) {
      json['_fixedUri'] = fixedUriElement!.toJson();
    }
    if (fixedUrl?.value != null) {
      json['fixedUrl'] = fixedUrl!.toJson();
    }
    if (fixedUrlElement != null) {
      json['_fixedUrl'] = fixedUrlElement!.toJson();
    }
    if (fixedUuid?.value != null) {
      json['fixedUuid'] = fixedUuid!.toJson();
    }
    if (fixedUuidElement != null) {
      json['_fixedUuid'] = fixedUuidElement!.toJson();
    }
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
    if (patternBase64Binary?.value != null) {
      json['patternBase64Binary'] = patternBase64Binary!.toJson();
    }
    if (patternBase64BinaryElement != null) {
      json['_patternBase64Binary'] = patternBase64BinaryElement!.toJson();
    }
    if (patternBoolean?.value != null) {
      json['patternBoolean'] = patternBoolean!.toJson();
    }
    if (patternBooleanElement != null) {
      json['_patternBoolean'] = patternBooleanElement!.toJson();
    }
    if (patternCanonical?.value != null) {
      json['patternCanonical'] = patternCanonical!.toJson();
    }
    if (patternCanonicalElement != null) {
      json['_patternCanonical'] = patternCanonicalElement!.toJson();
    }
    if (patternCode?.value != null) {
      json['patternCode'] = patternCode!.toJson();
    }
    if (patternCodeElement != null) {
      json['_patternCode'] = patternCodeElement!.toJson();
    }
    if (patternDate?.value != null) {
      json['patternDate'] = patternDate!.toJson();
    }
    if (patternDateElement != null) {
      json['_patternDate'] = patternDateElement!.toJson();
    }
    if (patternDateTime?.value != null) {
      json['patternDateTime'] = patternDateTime!.toJson();
    }
    if (patternDateTimeElement != null) {
      json['_patternDateTime'] = patternDateTimeElement!.toJson();
    }
    if (patternDecimal?.value != null) {
      json['patternDecimal'] = patternDecimal!.toJson();
    }
    if (patternDecimalElement != null) {
      json['_patternDecimal'] = patternDecimalElement!.toJson();
    }
    if (patternId?.value != null) {
      json['patternId'] = patternId!.toJson();
    }
    if (patternIdElement != null) {
      json['_patternId'] = patternIdElement!.toJson();
    }
    if (patternInstant?.value != null) {
      json['patternInstant'] = patternInstant!.toJson();
    }
    if (patternInstantElement != null) {
      json['_patternInstant'] = patternInstantElement!.toJson();
    }
    if (patternInteger?.value != null) {
      json['patternInteger'] = patternInteger!.toJson();
    }
    if (patternIntegerElement != null) {
      json['_patternInteger'] = patternIntegerElement!.toJson();
    }
    if (patternMarkdown?.value != null) {
      json['patternMarkdown'] = patternMarkdown!.toJson();
    }
    if (patternMarkdownElement != null) {
      json['_patternMarkdown'] = patternMarkdownElement!.toJson();
    }
    if (patternOid?.value != null) {
      json['patternOid'] = patternOid!.toJson();
    }
    if (patternOidElement != null) {
      json['_patternOid'] = patternOidElement!.toJson();
    }
    if (patternPositiveInt?.value != null) {
      json['patternPositiveInt'] = patternPositiveInt!.toJson();
    }
    if (patternPositiveIntElement != null) {
      json['_patternPositiveInt'] = patternPositiveIntElement!.toJson();
    }
    if (patternString?.value != null) {
      json['patternString'] = patternString!.toJson();
    }
    if (patternStringElement != null) {
      json['_patternString'] = patternStringElement!.toJson();
    }
    if (patternTime?.value != null) {
      json['patternTime'] = patternTime!.toJson();
    }
    if (patternTimeElement != null) {
      json['_patternTime'] = patternTimeElement!.toJson();
    }
    if (patternUnsignedInt?.value != null) {
      json['patternUnsignedInt'] = patternUnsignedInt!.toJson();
    }
    if (patternUnsignedIntElement != null) {
      json['_patternUnsignedInt'] = patternUnsignedIntElement!.toJson();
    }
    if (patternUri?.value != null) {
      json['patternUri'] = patternUri!.toJson();
    }
    if (patternUriElement != null) {
      json['_patternUri'] = patternUriElement!.toJson();
    }
    if (patternUrl?.value != null) {
      json['patternUrl'] = patternUrl!.toJson();
    }
    if (patternUrlElement != null) {
      json['_patternUrl'] = patternUrlElement!.toJson();
    }
    if (patternUuid?.value != null) {
      json['patternUuid'] = patternUuid!.toJson();
    }
    if (patternUuidElement != null) {
      json['_patternUuid'] = patternUuidElement!.toJson();
    }
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
      json['example'] =
          example!.map((ElementDefinitionExample v) => v.toJson()).toList();
    }
    if (minValueDate?.value != null) {
      json['minValueDate'] = minValueDate!.toJson();
    }
    if (minValueDateElement != null) {
      json['_minValueDate'] = minValueDateElement!.toJson();
    }
    if (minValueDateTime?.value != null) {
      json['minValueDateTime'] = minValueDateTime!.toJson();
    }
    if (minValueDateTimeElement != null) {
      json['_minValueDateTime'] = minValueDateTimeElement!.toJson();
    }
    if (minValueInstant?.value != null) {
      json['minValueInstant'] = minValueInstant!.toJson();
    }
    if (minValueInstantElement != null) {
      json['_minValueInstant'] = minValueInstantElement!.toJson();
    }
    if (minValueTime?.value != null) {
      json['minValueTime'] = minValueTime!.toJson();
    }
    if (minValueTimeElement != null) {
      json['_minValueTime'] = minValueTimeElement!.toJson();
    }
    if (minValueDecimal?.value != null) {
      json['minValueDecimal'] = minValueDecimal!.toJson();
    }
    if (minValueDecimalElement != null) {
      json['_minValueDecimal'] = minValueDecimalElement!.toJson();
    }
    if (minValueInteger?.value != null) {
      json['minValueInteger'] = minValueInteger!.toJson();
    }
    if (minValueIntegerElement != null) {
      json['_minValueInteger'] = minValueIntegerElement!.toJson();
    }
    if (minValuePositiveInt?.value != null) {
      json['minValuePositiveInt'] = minValuePositiveInt!.toJson();
    }
    if (minValuePositiveIntElement != null) {
      json['_minValuePositiveInt'] = minValuePositiveIntElement!.toJson();
    }
    if (minValueUnsignedInt?.value != null) {
      json['minValueUnsignedInt'] = minValueUnsignedInt!.toJson();
    }
    if (minValueUnsignedIntElement != null) {
      json['_minValueUnsignedInt'] = minValueUnsignedIntElement!.toJson();
    }
    if (minValueQuantity != null) {
      json['minValueQuantity'] = minValueQuantity!.toJson();
    }
    if (maxValueDate?.value != null) {
      json['maxValueDate'] = maxValueDate!.toJson();
    }
    if (maxValueDateElement != null) {
      json['_maxValueDate'] = maxValueDateElement!.toJson();
    }
    if (maxValueDateTime?.value != null) {
      json['maxValueDateTime'] = maxValueDateTime!.toJson();
    }
    if (maxValueDateTimeElement != null) {
      json['_maxValueDateTime'] = maxValueDateTimeElement!.toJson();
    }
    if (maxValueInstant?.value != null) {
      json['maxValueInstant'] = maxValueInstant!.toJson();
    }
    if (maxValueInstantElement != null) {
      json['_maxValueInstant'] = maxValueInstantElement!.toJson();
    }
    if (maxValueTime?.value != null) {
      json['maxValueTime'] = maxValueTime!.toJson();
    }
    if (maxValueTimeElement != null) {
      json['_maxValueTime'] = maxValueTimeElement!.toJson();
    }
    if (maxValueDecimal?.value != null) {
      json['maxValueDecimal'] = maxValueDecimal!.toJson();
    }
    if (maxValueDecimalElement != null) {
      json['_maxValueDecimal'] = maxValueDecimalElement!.toJson();
    }
    if (maxValueInteger?.value != null) {
      json['maxValueInteger'] = maxValueInteger!.toJson();
    }
    if (maxValueIntegerElement != null) {
      json['_maxValueInteger'] = maxValueIntegerElement!.toJson();
    }
    if (maxValuePositiveInt?.value != null) {
      json['maxValuePositiveInt'] = maxValuePositiveInt!.toJson();
    }
    if (maxValuePositiveIntElement != null) {
      json['_maxValuePositiveInt'] = maxValuePositiveIntElement!.toJson();
    }
    if (maxValueUnsignedInt?.value != null) {
      json['maxValueUnsignedInt'] = maxValueUnsignedInt!.toJson();
    }
    if (maxValueUnsignedIntElement != null) {
      json['_maxValueUnsignedInt'] = maxValueUnsignedIntElement!.toJson();
    }
    if (maxValueQuantity != null) {
      json['maxValueQuantity'] = maxValueQuantity!.toJson();
    }
    if (maxLength?.value != null) {
      json['maxLength'] = maxLength!.toJson();
    }
    if (maxLengthElement != null) {
      json['_maxLength'] = maxLengthElement!.toJson();
    }
    if (condition != null && condition!.isNotEmpty) {
      json['condition'] = condition!.map((FhirId v) => v.toJson()).toList();
    }
    if (conditionElement != null && conditionElement!.isNotEmpty) {
      json['_condition'] =
          conditionElement!.map((Element v) => v.toJson()).toList();
    }
    if (constraint != null && constraint!.isNotEmpty) {
      json['constraint'] = constraint!
          .map((ElementDefinitionConstraint v) => v.toJson())
          .toList();
    }
    if (mustSupport?.value != null) {
      json['mustSupport'] = mustSupport!.toJson();
    }
    if (mustSupportElement != null) {
      json['_mustSupport'] = mustSupportElement!.toJson();
    }
    if (isModifier?.value != null) {
      json['isModifier'] = isModifier!.toJson();
    }
    if (isModifierElement != null) {
      json['_isModifier'] = isModifierElement!.toJson();
    }
    if (isModifierReason?.value != null) {
      json['isModifierReason'] = isModifierReason!.toJson();
    }
    if (isModifierReasonElement != null) {
      json['_isModifierReason'] = isModifierReasonElement!.toJson();
    }
    if (isSummary?.value != null) {
      json['isSummary'] = isSummary!.toJson();
    }
    if (isSummaryElement != null) {
      json['_isSummary'] = isSummaryElement!.toJson();
    }
    if (binding != null) {
      json['binding'] = binding!.toJson();
    }
    if (mapping != null && mapping!.isNotEmpty) {
      json['mapping'] =
          mapping!.map((ElementDefinitionMapping v) => v.toJson()).toList();
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
    Element? pathElement,
    List<PropertyRepresentation>? representation,
    List<Element>? representationElement,
    FhirString? sliceName,
    Element? sliceNameElement,
    FhirBoolean? sliceIsConstraining,
    Element? sliceIsConstrainingElement,
    FhirString? label,
    Element? labelElement,
    List<Coding>? code,
    ElementDefinitionSlicing? slicing,
    FhirString? short,
    Element? shortElement,
    FhirMarkdown? definition,
    Element? definitionElement,
    FhirMarkdown? comment,
    Element? commentElement,
    FhirMarkdown? requirements,
    Element? requirementsElement,
    List<FhirString>? alias,
    List<Element>? aliasElement,
    FhirUnsignedInt? min,
    Element? minElement,
    FhirString? max,
    Element? maxElement,
    ElementDefinitionBase? base,
    FhirUri? contentReference,
    Element? contentReferenceElement,
    List<ElementDefinitionType>? type,
    FhirBase64Binary? defaultValueBase64Binary,
    Element? defaultValueBase64BinaryElement,
    FhirBoolean? defaultValueBoolean,
    Element? defaultValueBooleanElement,
    FhirCanonical? defaultValueCanonical,
    Element? defaultValueCanonicalElement,
    FhirCode? defaultValueCode,
    Element? defaultValueCodeElement,
    FhirDate? defaultValueDate,
    Element? defaultValueDateElement,
    FhirDateTime? defaultValueDateTime,
    Element? defaultValueDateTimeElement,
    FhirDecimal? defaultValueDecimal,
    Element? defaultValueDecimalElement,
    FhirId? defaultValueId,
    Element? defaultValueIdElement,
    FhirInstant? defaultValueInstant,
    Element? defaultValueInstantElement,
    FhirInteger? defaultValueInteger,
    Element? defaultValueIntegerElement,
    FhirMarkdown? defaultValueMarkdown,
    Element? defaultValueMarkdownElement,
    FhirOid? defaultValueOid,
    Element? defaultValueOidElement,
    FhirPositiveInt? defaultValuePositiveInt,
    Element? defaultValuePositiveIntElement,
    FhirString? defaultValueString,
    Element? defaultValueStringElement,
    FhirTime? defaultValueTime,
    Element? defaultValueTimeElement,
    FhirUnsignedInt? defaultValueUnsignedInt,
    Element? defaultValueUnsignedIntElement,
    FhirUri? defaultValueUri,
    Element? defaultValueUriElement,
    FhirUrl? defaultValueUrl,
    Element? defaultValueUrlElement,
    FhirUuid? defaultValueUuid,
    Element? defaultValueUuidElement,
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
    Element? meaningWhenMissingElement,
    FhirString? orderMeaning,
    Element? orderMeaningElement,
    FhirBase64Binary? fixedBase64Binary,
    Element? fixedBase64BinaryElement,
    FhirBoolean? fixedBoolean,
    Element? fixedBooleanElement,
    FhirCanonical? fixedCanonical,
    Element? fixedCanonicalElement,
    FhirCode? fixedCode,
    Element? fixedCodeElement,
    FhirDate? fixedDate,
    Element? fixedDateElement,
    FhirDateTime? fixedDateTime,
    Element? fixedDateTimeElement,
    FhirDecimal? fixedDecimal,
    Element? fixedDecimalElement,
    FhirId? fixedId,
    Element? fixedIdElement,
    FhirInstant? fixedInstant,
    Element? fixedInstantElement,
    FhirInteger? fixedInteger,
    Element? fixedIntegerElement,
    FhirMarkdown? fixedMarkdown,
    Element? fixedMarkdownElement,
    FhirOid? fixedOid,
    Element? fixedOidElement,
    FhirPositiveInt? fixedPositiveInt,
    Element? fixedPositiveIntElement,
    FhirString? fixedString,
    Element? fixedStringElement,
    FhirTime? fixedTime,
    Element? fixedTimeElement,
    FhirUnsignedInt? fixedUnsignedInt,
    Element? fixedUnsignedIntElement,
    FhirUri? fixedUri,
    Element? fixedUriElement,
    FhirUrl? fixedUrl,
    Element? fixedUrlElement,
    FhirUuid? fixedUuid,
    Element? fixedUuidElement,
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
    Element? patternBase64BinaryElement,
    FhirBoolean? patternBoolean,
    Element? patternBooleanElement,
    FhirCanonical? patternCanonical,
    Element? patternCanonicalElement,
    FhirCode? patternCode,
    Element? patternCodeElement,
    FhirDate? patternDate,
    Element? patternDateElement,
    FhirDateTime? patternDateTime,
    Element? patternDateTimeElement,
    FhirDecimal? patternDecimal,
    Element? patternDecimalElement,
    FhirId? patternId,
    Element? patternIdElement,
    FhirInstant? patternInstant,
    Element? patternInstantElement,
    FhirInteger? patternInteger,
    Element? patternIntegerElement,
    FhirMarkdown? patternMarkdown,
    Element? patternMarkdownElement,
    FhirOid? patternOid,
    Element? patternOidElement,
    FhirPositiveInt? patternPositiveInt,
    Element? patternPositiveIntElement,
    FhirString? patternString,
    Element? patternStringElement,
    FhirTime? patternTime,
    Element? patternTimeElement,
    FhirUnsignedInt? patternUnsignedInt,
    Element? patternUnsignedIntElement,
    FhirUri? patternUri,
    Element? patternUriElement,
    FhirUrl? patternUrl,
    Element? patternUrlElement,
    FhirUuid? patternUuid,
    Element? patternUuidElement,
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
    Element? minValueDateElement,
    FhirDateTime? minValueDateTime,
    Element? minValueDateTimeElement,
    FhirInstant? minValueInstant,
    Element? minValueInstantElement,
    FhirTime? minValueTime,
    Element? minValueTimeElement,
    FhirDecimal? minValueDecimal,
    Element? minValueDecimalElement,
    FhirInteger? minValueInteger,
    Element? minValueIntegerElement,
    FhirPositiveInt? minValuePositiveInt,
    Element? minValuePositiveIntElement,
    FhirUnsignedInt? minValueUnsignedInt,
    Element? minValueUnsignedIntElement,
    Quantity? minValueQuantity,
    FhirDate? maxValueDate,
    Element? maxValueDateElement,
    FhirDateTime? maxValueDateTime,
    Element? maxValueDateTimeElement,
    FhirInstant? maxValueInstant,
    Element? maxValueInstantElement,
    FhirTime? maxValueTime,
    Element? maxValueTimeElement,
    FhirDecimal? maxValueDecimal,
    Element? maxValueDecimalElement,
    FhirInteger? maxValueInteger,
    Element? maxValueIntegerElement,
    FhirPositiveInt? maxValuePositiveInt,
    Element? maxValuePositiveIntElement,
    FhirUnsignedInt? maxValueUnsignedInt,
    Element? maxValueUnsignedIntElement,
    Quantity? maxValueQuantity,
    FhirInteger? maxLength,
    Element? maxLengthElement,
    List<FhirId>? condition,
    List<Element>? conditionElement,
    List<ElementDefinitionConstraint>? constraint,
    FhirBoolean? mustSupport,
    Element? mustSupportElement,
    FhirBoolean? isModifier,
    Element? isModifierElement,
    FhirString? isModifierReason,
    Element? isModifierReasonElement,
    FhirBoolean? isSummary,
    Element? isSummaryElement,
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
      pathElement: pathElement ?? this.pathElement,
      representation: representation ?? this.representation,
      representationElement:
          representationElement ?? this.representationElement,
      sliceName: sliceName ?? this.sliceName,
      sliceNameElement: sliceNameElement ?? this.sliceNameElement,
      sliceIsConstraining: sliceIsConstraining ?? this.sliceIsConstraining,
      sliceIsConstrainingElement:
          sliceIsConstrainingElement ?? this.sliceIsConstrainingElement,
      label: label ?? this.label,
      labelElement: labelElement ?? this.labelElement,
      code: code ?? this.code,
      slicing: slicing ?? this.slicing,
      short: short ?? this.short,
      shortElement: shortElement ?? this.shortElement,
      definition: definition ?? this.definition,
      definitionElement: definitionElement ?? this.definitionElement,
      comment: comment ?? this.comment,
      commentElement: commentElement ?? this.commentElement,
      requirements: requirements ?? this.requirements,
      requirementsElement: requirementsElement ?? this.requirementsElement,
      alias: alias ?? this.alias,
      aliasElement: aliasElement ?? this.aliasElement,
      min: min ?? this.min,
      minElement: minElement ?? this.minElement,
      max: max ?? this.max,
      maxElement: maxElement ?? this.maxElement,
      base: base ?? this.base,
      contentReference: contentReference ?? this.contentReference,
      contentReferenceElement:
          contentReferenceElement ?? this.contentReferenceElement,
      type: type ?? this.type,
      defaultValueBase64Binary:
          defaultValueBase64Binary ?? this.defaultValueBase64Binary,
      defaultValueBase64BinaryElement: defaultValueBase64BinaryElement ??
          this.defaultValueBase64BinaryElement,
      defaultValueBoolean: defaultValueBoolean ?? this.defaultValueBoolean,
      defaultValueBooleanElement:
          defaultValueBooleanElement ?? this.defaultValueBooleanElement,
      defaultValueCanonical:
          defaultValueCanonical ?? this.defaultValueCanonical,
      defaultValueCanonicalElement:
          defaultValueCanonicalElement ?? this.defaultValueCanonicalElement,
      defaultValueCode: defaultValueCode ?? this.defaultValueCode,
      defaultValueCodeElement:
          defaultValueCodeElement ?? this.defaultValueCodeElement,
      defaultValueDate: defaultValueDate ?? this.defaultValueDate,
      defaultValueDateElement:
          defaultValueDateElement ?? this.defaultValueDateElement,
      defaultValueDateTime: defaultValueDateTime ?? this.defaultValueDateTime,
      defaultValueDateTimeElement:
          defaultValueDateTimeElement ?? this.defaultValueDateTimeElement,
      defaultValueDecimal: defaultValueDecimal ?? this.defaultValueDecimal,
      defaultValueDecimalElement:
          defaultValueDecimalElement ?? this.defaultValueDecimalElement,
      defaultValueId: defaultValueId ?? this.defaultValueId,
      defaultValueIdElement:
          defaultValueIdElement ?? this.defaultValueIdElement,
      defaultValueInstant: defaultValueInstant ?? this.defaultValueInstant,
      defaultValueInstantElement:
          defaultValueInstantElement ?? this.defaultValueInstantElement,
      defaultValueInteger: defaultValueInteger ?? this.defaultValueInteger,
      defaultValueIntegerElement:
          defaultValueIntegerElement ?? this.defaultValueIntegerElement,
      defaultValueMarkdown: defaultValueMarkdown ?? this.defaultValueMarkdown,
      defaultValueMarkdownElement:
          defaultValueMarkdownElement ?? this.defaultValueMarkdownElement,
      defaultValueOid: defaultValueOid ?? this.defaultValueOid,
      defaultValueOidElement:
          defaultValueOidElement ?? this.defaultValueOidElement,
      defaultValuePositiveInt:
          defaultValuePositiveInt ?? this.defaultValuePositiveInt,
      defaultValuePositiveIntElement:
          defaultValuePositiveIntElement ?? this.defaultValuePositiveIntElement,
      defaultValueString: defaultValueString ?? this.defaultValueString,
      defaultValueStringElement:
          defaultValueStringElement ?? this.defaultValueStringElement,
      defaultValueTime: defaultValueTime ?? this.defaultValueTime,
      defaultValueTimeElement:
          defaultValueTimeElement ?? this.defaultValueTimeElement,
      defaultValueUnsignedInt:
          defaultValueUnsignedInt ?? this.defaultValueUnsignedInt,
      defaultValueUnsignedIntElement:
          defaultValueUnsignedIntElement ?? this.defaultValueUnsignedIntElement,
      defaultValueUri: defaultValueUri ?? this.defaultValueUri,
      defaultValueUriElement:
          defaultValueUriElement ?? this.defaultValueUriElement,
      defaultValueUrl: defaultValueUrl ?? this.defaultValueUrl,
      defaultValueUrlElement:
          defaultValueUrlElement ?? this.defaultValueUrlElement,
      defaultValueUuid: defaultValueUuid ?? this.defaultValueUuid,
      defaultValueUuidElement:
          defaultValueUuidElement ?? this.defaultValueUuidElement,
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
      meaningWhenMissingElement:
          meaningWhenMissingElement ?? this.meaningWhenMissingElement,
      orderMeaning: orderMeaning ?? this.orderMeaning,
      orderMeaningElement: orderMeaningElement ?? this.orderMeaningElement,
      fixedBase64Binary: fixedBase64Binary ?? this.fixedBase64Binary,
      fixedBase64BinaryElement:
          fixedBase64BinaryElement ?? this.fixedBase64BinaryElement,
      fixedBoolean: fixedBoolean ?? this.fixedBoolean,
      fixedBooleanElement: fixedBooleanElement ?? this.fixedBooleanElement,
      fixedCanonical: fixedCanonical ?? this.fixedCanonical,
      fixedCanonicalElement:
          fixedCanonicalElement ?? this.fixedCanonicalElement,
      fixedCode: fixedCode ?? this.fixedCode,
      fixedCodeElement: fixedCodeElement ?? this.fixedCodeElement,
      fixedDate: fixedDate ?? this.fixedDate,
      fixedDateElement: fixedDateElement ?? this.fixedDateElement,
      fixedDateTime: fixedDateTime ?? this.fixedDateTime,
      fixedDateTimeElement: fixedDateTimeElement ?? this.fixedDateTimeElement,
      fixedDecimal: fixedDecimal ?? this.fixedDecimal,
      fixedDecimalElement: fixedDecimalElement ?? this.fixedDecimalElement,
      fixedId: fixedId ?? this.fixedId,
      fixedIdElement: fixedIdElement ?? this.fixedIdElement,
      fixedInstant: fixedInstant ?? this.fixedInstant,
      fixedInstantElement: fixedInstantElement ?? this.fixedInstantElement,
      fixedInteger: fixedInteger ?? this.fixedInteger,
      fixedIntegerElement: fixedIntegerElement ?? this.fixedIntegerElement,
      fixedMarkdown: fixedMarkdown ?? this.fixedMarkdown,
      fixedMarkdownElement: fixedMarkdownElement ?? this.fixedMarkdownElement,
      fixedOid: fixedOid ?? this.fixedOid,
      fixedOidElement: fixedOidElement ?? this.fixedOidElement,
      fixedPositiveInt: fixedPositiveInt ?? this.fixedPositiveInt,
      fixedPositiveIntElement:
          fixedPositiveIntElement ?? this.fixedPositiveIntElement,
      fixedString: fixedString ?? this.fixedString,
      fixedStringElement: fixedStringElement ?? this.fixedStringElement,
      fixedTime: fixedTime ?? this.fixedTime,
      fixedTimeElement: fixedTimeElement ?? this.fixedTimeElement,
      fixedUnsignedInt: fixedUnsignedInt ?? this.fixedUnsignedInt,
      fixedUnsignedIntElement:
          fixedUnsignedIntElement ?? this.fixedUnsignedIntElement,
      fixedUri: fixedUri ?? this.fixedUri,
      fixedUriElement: fixedUriElement ?? this.fixedUriElement,
      fixedUrl: fixedUrl ?? this.fixedUrl,
      fixedUrlElement: fixedUrlElement ?? this.fixedUrlElement,
      fixedUuid: fixedUuid ?? this.fixedUuid,
      fixedUuidElement: fixedUuidElement ?? this.fixedUuidElement,
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
      patternBase64BinaryElement:
          patternBase64BinaryElement ?? this.patternBase64BinaryElement,
      patternBoolean: patternBoolean ?? this.patternBoolean,
      patternBooleanElement:
          patternBooleanElement ?? this.patternBooleanElement,
      patternCanonical: patternCanonical ?? this.patternCanonical,
      patternCanonicalElement:
          patternCanonicalElement ?? this.patternCanonicalElement,
      patternCode: patternCode ?? this.patternCode,
      patternCodeElement: patternCodeElement ?? this.patternCodeElement,
      patternDate: patternDate ?? this.patternDate,
      patternDateElement: patternDateElement ?? this.patternDateElement,
      patternDateTime: patternDateTime ?? this.patternDateTime,
      patternDateTimeElement:
          patternDateTimeElement ?? this.patternDateTimeElement,
      patternDecimal: patternDecimal ?? this.patternDecimal,
      patternDecimalElement:
          patternDecimalElement ?? this.patternDecimalElement,
      patternId: patternId ?? this.patternId,
      patternIdElement: patternIdElement ?? this.patternIdElement,
      patternInstant: patternInstant ?? this.patternInstant,
      patternInstantElement:
          patternInstantElement ?? this.patternInstantElement,
      patternInteger: patternInteger ?? this.patternInteger,
      patternIntegerElement:
          patternIntegerElement ?? this.patternIntegerElement,
      patternMarkdown: patternMarkdown ?? this.patternMarkdown,
      patternMarkdownElement:
          patternMarkdownElement ?? this.patternMarkdownElement,
      patternOid: patternOid ?? this.patternOid,
      patternOidElement: patternOidElement ?? this.patternOidElement,
      patternPositiveInt: patternPositiveInt ?? this.patternPositiveInt,
      patternPositiveIntElement:
          patternPositiveIntElement ?? this.patternPositiveIntElement,
      patternString: patternString ?? this.patternString,
      patternStringElement: patternStringElement ?? this.patternStringElement,
      patternTime: patternTime ?? this.patternTime,
      patternTimeElement: patternTimeElement ?? this.patternTimeElement,
      patternUnsignedInt: patternUnsignedInt ?? this.patternUnsignedInt,
      patternUnsignedIntElement:
          patternUnsignedIntElement ?? this.patternUnsignedIntElement,
      patternUri: patternUri ?? this.patternUri,
      patternUriElement: patternUriElement ?? this.patternUriElement,
      patternUrl: patternUrl ?? this.patternUrl,
      patternUrlElement: patternUrlElement ?? this.patternUrlElement,
      patternUuid: patternUuid ?? this.patternUuid,
      patternUuidElement: patternUuidElement ?? this.patternUuidElement,
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
      minValueDateElement: minValueDateElement ?? this.minValueDateElement,
      minValueDateTime: minValueDateTime ?? this.minValueDateTime,
      minValueDateTimeElement:
          minValueDateTimeElement ?? this.minValueDateTimeElement,
      minValueInstant: minValueInstant ?? this.minValueInstant,
      minValueInstantElement:
          minValueInstantElement ?? this.minValueInstantElement,
      minValueTime: minValueTime ?? this.minValueTime,
      minValueTimeElement: minValueTimeElement ?? this.minValueTimeElement,
      minValueDecimal: minValueDecimal ?? this.minValueDecimal,
      minValueDecimalElement:
          minValueDecimalElement ?? this.minValueDecimalElement,
      minValueInteger: minValueInteger ?? this.minValueInteger,
      minValueIntegerElement:
          minValueIntegerElement ?? this.minValueIntegerElement,
      minValuePositiveInt: minValuePositiveInt ?? this.minValuePositiveInt,
      minValuePositiveIntElement:
          minValuePositiveIntElement ?? this.minValuePositiveIntElement,
      minValueUnsignedInt: minValueUnsignedInt ?? this.minValueUnsignedInt,
      minValueUnsignedIntElement:
          minValueUnsignedIntElement ?? this.minValueUnsignedIntElement,
      minValueQuantity: minValueQuantity ?? this.minValueQuantity,
      maxValueDate: maxValueDate ?? this.maxValueDate,
      maxValueDateElement: maxValueDateElement ?? this.maxValueDateElement,
      maxValueDateTime: maxValueDateTime ?? this.maxValueDateTime,
      maxValueDateTimeElement:
          maxValueDateTimeElement ?? this.maxValueDateTimeElement,
      maxValueInstant: maxValueInstant ?? this.maxValueInstant,
      maxValueInstantElement:
          maxValueInstantElement ?? this.maxValueInstantElement,
      maxValueTime: maxValueTime ?? this.maxValueTime,
      maxValueTimeElement: maxValueTimeElement ?? this.maxValueTimeElement,
      maxValueDecimal: maxValueDecimal ?? this.maxValueDecimal,
      maxValueDecimalElement:
          maxValueDecimalElement ?? this.maxValueDecimalElement,
      maxValueInteger: maxValueInteger ?? this.maxValueInteger,
      maxValueIntegerElement:
          maxValueIntegerElement ?? this.maxValueIntegerElement,
      maxValuePositiveInt: maxValuePositiveInt ?? this.maxValuePositiveInt,
      maxValuePositiveIntElement:
          maxValuePositiveIntElement ?? this.maxValuePositiveIntElement,
      maxValueUnsignedInt: maxValueUnsignedInt ?? this.maxValueUnsignedInt,
      maxValueUnsignedIntElement:
          maxValueUnsignedIntElement ?? this.maxValueUnsignedIntElement,
      maxValueQuantity: maxValueQuantity ?? this.maxValueQuantity,
      maxLength: maxLength ?? this.maxLength,
      maxLengthElement: maxLengthElement ?? this.maxLengthElement,
      condition: condition ?? this.condition,
      conditionElement: conditionElement ?? this.conditionElement,
      constraint: constraint ?? this.constraint,
      mustSupport: mustSupport ?? this.mustSupport,
      mustSupportElement: mustSupportElement ?? this.mustSupportElement,
      isModifier: isModifier ?? this.isModifier,
      isModifierElement: isModifierElement ?? this.isModifierElement,
      isModifierReason: isModifierReason ?? this.isModifierReason,
      isModifierReasonElement:
          isModifierReasonElement ?? this.isModifierReasonElement,
      isSummary: isSummary ?? this.isSummary,
      isSummaryElement: isSummaryElement ?? this.isSummaryElement,
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
    super.extension_,
    this.discriminator,
    this.description,

    /// Extensions for [description]
    this.descriptionElement,
    this.ordered,

    /// Extensions for [ordered]
    this.orderedElement,
    required this.rules,

    /// Extensions for [rules]
    this.rulesElement,
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
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      discriminator: json['discriminator'] != null
          ? (json['discriminator'] as List<dynamic>)
              .map<ElementDefinitionDiscriminator>(
                (dynamic v) => ElementDefinitionDiscriminator.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      description: json['description'] != null
          ? FhirString.fromJson(json['description'])
          : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(
              json['_description'] as Map<String, dynamic>,
            )
          : null,
      ordered: json['ordered'] != null
          ? FhirBoolean.fromJson(json['ordered'])
          : null,
      orderedElement: json['_ordered'] != null
          ? Element.fromJson(
              json['_ordered'] as Map<String, dynamic>,
            )
          : null,
      rules: SlicingRules.fromJson(json['rules']),
      rulesElement: json['_rules'] != null
          ? Element.fromJson(
              json['_rules'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [ElementDefinitionSlicing] from a [String] or [YamlMap] object
  factory ElementDefinitionSlicing.fromYaml(dynamic yaml) => yaml is String
      ? ElementDefinitionSlicing.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ElementDefinitionSlicing.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ElementDefinitionSlicing cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ElementDefinitionSlicing] that takes in a [String]
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

  /// Extensions for [description]
  final Element? descriptionElement;

  /// [ordered]
  /// If the matching elements have to occur in the same order as defined in
  /// the profile.
  final FhirBoolean? ordered;

  /// Extensions for [ordered]
  final Element? orderedElement;

  /// [rules]
  /// Whether additional slices are allowed or not. When the slices are
  /// ordered, profile authors can also say that additional slices are only
  /// allowed at the end.
  final SlicingRules rules;

  /// Extensions for [rules]
  final Element? rulesElement;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (discriminator != null && discriminator!.isNotEmpty) {
      json['discriminator'] = discriminator!
          .map((ElementDefinitionDiscriminator v) => v.toJson())
          .toList();
    }
    if (description?.value != null) {
      json['description'] = description!.toJson();
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (ordered?.value != null) {
      json['ordered'] = ordered!.toJson();
    }
    if (orderedElement != null) {
      json['_ordered'] = orderedElement!.toJson();
    }
    json['rules'] = rules.toJson();
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
    Element? descriptionElement,
    FhirBoolean? ordered,
    Element? orderedElement,
    SlicingRules? rules,
    Element? rulesElement,
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
      descriptionElement: descriptionElement ?? this.descriptionElement,
      ordered: ordered ?? this.ordered,
      orderedElement: orderedElement ?? this.orderedElement,
      rules: rules ?? this.rules,
      rulesElement: rulesElement ?? this.rulesElement,
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
    super.extension_,
    required this.type,

    /// Extensions for [type]
    this.typeElement,
    required this.path,

    /// Extensions for [path]
    this.pathElement,
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
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      type: DiscriminatorType.fromJson(json['type']),
      typeElement: json['_type'] != null
          ? Element.fromJson(
              json['_type'] as Map<String, dynamic>,
            )
          : null,
      path: FhirString.fromJson(json['path']),
      pathElement: json['_path'] != null
          ? Element.fromJson(
              json['_path'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [ElementDefinitionDiscriminator] from a [String] or [YamlMap] object
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
              'ElementDefinitionDiscriminator cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ElementDefinitionDiscriminator] that takes in a [String]
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

  /// [type]
  /// How the element value is interpreted when discrimination is evaluated.
  final DiscriminatorType type;

  /// Extensions for [type]
  final Element? typeElement;

  /// [path]
  /// A FHIRPath expression, using [the simple subset of
  /// FHIRPath](fhirpath.html#simple), that is used to identify the element
  /// on which discrimination is based.
  final FhirString path;

  /// Extensions for [path]
  final Element? pathElement;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['type'] = type.toJson();
    json['path'] = path.toJson();
    if (pathElement != null) {
      json['_path'] = pathElement!.toJson();
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
    Element? typeElement,
    FhirString? path,
    Element? pathElement,
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
      typeElement: typeElement ?? this.typeElement,
      path: path ?? this.path,
      pathElement: pathElement ?? this.pathElement,
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
    super.extension_,
    required this.path,

    /// Extensions for [path]
    this.pathElement,
    required this.min,

    /// Extensions for [min]
    this.minElement,
    required this.max,

    /// Extensions for [max]
    this.maxElement,
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
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      path: FhirString.fromJson(json['path']),
      pathElement: json['_path'] != null
          ? Element.fromJson(
              json['_path'] as Map<String, dynamic>,
            )
          : null,
      min: FhirUnsignedInt.fromJson(json['min']),
      minElement: json['_min'] != null
          ? Element.fromJson(
              json['_min'] as Map<String, dynamic>,
            )
          : null,
      max: FhirString.fromJson(json['max']),
      maxElement: json['_max'] != null
          ? Element.fromJson(
              json['_max'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [ElementDefinitionBase] from a [String] or [YamlMap] object
  factory ElementDefinitionBase.fromYaml(dynamic yaml) => yaml is String
      ? ElementDefinitionBase.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ElementDefinitionBase.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ElementDefinitionBase cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ElementDefinitionBase] that takes in a [String]
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

  /// [path]
  /// The Path that identifies the base element - this matches the
  /// ElementDefinition.path for that element. Across FHIR, there is only one
  /// base definition of any element - that is, an element definition on a
  /// [StructureDefinition](structuredefinition.html#) without a
  /// StructureDefinition.base.
  final FhirString path;

  /// Extensions for [path]
  final Element? pathElement;

  /// [min]
  /// Minimum cardinality of the base element identified by the path.
  final FhirUnsignedInt min;

  /// Extensions for [min]
  final Element? minElement;

  /// [max]
  /// Maximum cardinality of the base element identified by the path.
  final FhirString max;

  /// Extensions for [max]
  final Element? maxElement;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['path'] = path.toJson();
    if (pathElement != null) {
      json['_path'] = pathElement!.toJson();
    }
    json['min'] = min.toJson();
    if (minElement != null) {
      json['_min'] = minElement!.toJson();
    }
    json['max'] = max.toJson();
    if (maxElement != null) {
      json['_max'] = maxElement!.toJson();
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
    Element? pathElement,
    FhirUnsignedInt? min,
    Element? minElement,
    FhirString? max,
    Element? maxElement,
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
      pathElement: pathElement ?? this.pathElement,
      min: min ?? this.min,
      minElement: minElement ?? this.minElement,
      max: max ?? this.max,
      maxElement: maxElement ?? this.maxElement,
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
    super.extension_,
    required this.code,

    /// Extensions for [code]
    this.codeElement,
    this.profile,

    /// Extensions for [profile]
    this.profileElement,
    this.targetProfile,

    /// Extensions for [targetProfile]
    this.targetProfileElement,
    this.aggregation,

    /// Extensions for [aggregation]
    this.aggregationElement,
    this.versioning,

    /// Extensions for [versioning]
    this.versioningElement,
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
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      code: FhirUri.fromJson(json['code']),
      codeElement: json['_code'] != null
          ? Element.fromJson(
              json['_code'] as Map<String, dynamic>,
            )
          : null,
      profile: json['profile'] != null
          ? (json['profile'] as List<dynamic>)
              .map<FhirCanonical>(
                (dynamic v) => FhirCanonical.fromJson(v as dynamic),
              )
              .toList()
          : null,
      profileElement: json['_profile'] != null
          ? (json['_profile'] as List<dynamic>)
              .map<Element>(
                (dynamic v) => Element.fromJson(v as Map<String, dynamic>),
              )
              .toList()
          : null,
      targetProfile: json['targetProfile'] != null
          ? (json['targetProfile'] as List<dynamic>)
              .map<FhirCanonical>(
                (dynamic v) => FhirCanonical.fromJson(v as dynamic),
              )
              .toList()
          : null,
      targetProfileElement: json['_targetProfile'] != null
          ? (json['_targetProfile'] as List<dynamic>)
              .map<Element>(
                (dynamic v) => Element.fromJson(v as Map<String, dynamic>),
              )
              .toList()
          : null,
      aggregation: json['aggregation'] != null
          ? (json['aggregation'] as List<dynamic>)
              .map<AggregationMode>(
                (dynamic v) => AggregationMode.fromJson(v as dynamic),
              )
              .toList()
          : null,
      aggregationElement: json['_aggregation'] != null
          ? (json['_aggregation'] as List<dynamic>)
              .map<Element>(
                (dynamic v) => Element.fromJson(v as Map<String, dynamic>),
              )
              .toList()
          : null,
      versioning: json['versioning'] != null
          ? ReferenceVersionRules.fromJson(json['versioning'])
          : null,
      versioningElement: json['_versioning'] != null
          ? Element.fromJson(
              json['_versioning'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [ElementDefinitionType] from a [String] or [YamlMap] object
  factory ElementDefinitionType.fromYaml(dynamic yaml) => yaml is String
      ? ElementDefinitionType.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ElementDefinitionType.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ElementDefinitionType cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ElementDefinitionType] that takes in a [String]
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

  /// [code]
  /// URL of Data type or Resource that is a(or the) type used for this
  /// element. References are URLs that are relative to
  /// http://hl7.org/fhir/StructureDefinition e.g. "string" is a reference to
  /// http://hl7.org/fhir/StructureDefinition/string. Absolute URLs are only
  /// allowed in logical models.
  final FhirUri code;

  /// Extensions for [code]
  final Element? codeElement;

  /// [profile]
  /// Identifies a profile structure or implementation Guide that applies to
  /// the datatype this element refers to. If any profiles are specified,
  /// then the content must conform to at least one of them. The URL can be a
  /// local reference - to a contained StructureDefinition, or a reference to
  /// another StructureDefinition or Implementation Guide by a canonical URL.
  /// When an implementation guide is specified, the type SHALL conform to at
  /// least one profile defined in the implementation guide.
  final List<FhirCanonical>? profile;

  /// Extensions for [profile]
  final List<Element>? profileElement;

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

  /// Extensions for [targetProfile]
  final List<Element>? targetProfileElement;

  /// [aggregation]
  /// If the type is a reference to another resource, how the resource is or
  /// can be aggregated - is it a contained resource, or a reference, and if
  /// the context is a bundle, is it included in the bundle.
  final List<AggregationMode>? aggregation;

  /// Extensions for [aggregation]
  final List<Element>? aggregationElement;

  /// [versioning]
  /// Whether this reference needs to be version specific or version
  /// independent, or whether either can be used.
  final ReferenceVersionRules? versioning;

  /// Extensions for [versioning]
  final Element? versioningElement;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['code'] = code.toJson();
    if (codeElement != null) {
      json['_code'] = codeElement!.toJson();
    }
    if (profile != null && profile!.isNotEmpty) {
      json['profile'] = profile!.map((FhirCanonical v) => v.toJson()).toList();
    }
    if (profileElement != null && profileElement!.isNotEmpty) {
      json['_profile'] =
          profileElement!.map((Element v) => v.toJson()).toList();
    }
    if (targetProfile != null && targetProfile!.isNotEmpty) {
      json['targetProfile'] =
          targetProfile!.map((FhirCanonical v) => v.toJson()).toList();
    }
    if (targetProfileElement != null && targetProfileElement!.isNotEmpty) {
      json['_targetProfile'] =
          targetProfileElement!.map((Element v) => v.toJson()).toList();
    }
    if (aggregation != null && aggregation!.isNotEmpty) {
      json['aggregation'] =
          aggregation!.map((AggregationMode v) => v.toJson()).toList();
    }
    if (versioning != null) {
      json['versioning'] = versioning!.toJson();
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
    Element? codeElement,
    List<FhirCanonical>? profile,
    List<Element>? profileElement,
    List<FhirCanonical>? targetProfile,
    List<Element>? targetProfileElement,
    List<AggregationMode>? aggregation,
    List<Element>? aggregationElement,
    ReferenceVersionRules? versioning,
    Element? versioningElement,
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
      codeElement: codeElement ?? this.codeElement,
      profile: profile ?? this.profile,
      profileElement: profileElement ?? this.profileElement,
      targetProfile: targetProfile ?? this.targetProfile,
      targetProfileElement: targetProfileElement ?? this.targetProfileElement,
      aggregation: aggregation ?? this.aggregation,
      aggregationElement: aggregationElement ?? this.aggregationElement,
      versioning: versioning ?? this.versioning,
      versioningElement: versioningElement ?? this.versioningElement,
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
    super.extension_,
    required this.label,

    /// Extensions for [label]
    this.labelElement,
    this.valueBase64Binary,

    /// Extensions for [valueBase64Binary]
    this.valueBase64BinaryElement,
    this.valueBoolean,

    /// Extensions for [valueBoolean]
    this.valueBooleanElement,
    this.valueCanonical,

    /// Extensions for [valueCanonical]
    this.valueCanonicalElement,
    this.valueCode,

    /// Extensions for [valueCode]
    this.valueCodeElement,
    this.valueDate,

    /// Extensions for [valueDate]
    this.valueDateElement,
    this.valueDateTime,

    /// Extensions for [valueDateTime]
    this.valueDateTimeElement,
    this.valueDecimal,

    /// Extensions for [valueDecimal]
    this.valueDecimalElement,
    this.valueId,

    /// Extensions for [valueId]
    this.valueIdElement,
    this.valueInstant,

    /// Extensions for [valueInstant]
    this.valueInstantElement,
    this.valueInteger,

    /// Extensions for [valueInteger]
    this.valueIntegerElement,
    this.valueMarkdown,

    /// Extensions for [valueMarkdown]
    this.valueMarkdownElement,
    this.valueOid,

    /// Extensions for [valueOid]
    this.valueOidElement,
    this.valuePositiveInt,

    /// Extensions for [valuePositiveInt]
    this.valuePositiveIntElement,
    this.valueString,

    /// Extensions for [valueString]
    this.valueStringElement,
    this.valueTime,

    /// Extensions for [valueTime]
    this.valueTimeElement,
    this.valueUnsignedInt,

    /// Extensions for [valueUnsignedInt]
    this.valueUnsignedIntElement,
    this.valueUri,

    /// Extensions for [valueUri]
    this.valueUriElement,
    this.valueUrl,

    /// Extensions for [valueUrl]
    this.valueUrlElement,
    this.valueUuid,

    /// Extensions for [valueUuid]
    this.valueUuidElement,
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
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      label: FhirString.fromJson(json['label']),
      labelElement: json['_label'] != null
          ? Element.fromJson(
              json['_label'] as Map<String, dynamic>,
            )
          : null,
      valueBase64Binary: json['valueBase64Binary'] != null
          ? FhirBase64Binary.fromJson(json['valueBase64Binary'])
          : null,
      valueBase64BinaryElement: json['_valueBase64Binary'] != null
          ? Element.fromJson(
              json['_valueBase64Binary'] as Map<String, dynamic>,
            )
          : null,
      valueBoolean: json['valueBoolean'] != null
          ? FhirBoolean.fromJson(json['valueBoolean'])
          : null,
      valueBooleanElement: json['_valueBoolean'] != null
          ? Element.fromJson(
              json['_valueBoolean'] as Map<String, dynamic>,
            )
          : null,
      valueCanonical: json['valueCanonical'] != null
          ? FhirCanonical.fromJson(json['valueCanonical'])
          : null,
      valueCanonicalElement: json['_valueCanonical'] != null
          ? Element.fromJson(
              json['_valueCanonical'] as Map<String, dynamic>,
            )
          : null,
      valueCode: json['valueCode'] != null
          ? FhirCode.fromJson(json['valueCode'])
          : null,
      valueCodeElement: json['_valueCode'] != null
          ? Element.fromJson(
              json['_valueCode'] as Map<String, dynamic>,
            )
          : null,
      valueDate: json['valueDate'] != null
          ? FhirDate.fromJson(json['valueDate'])
          : null,
      valueDateElement: json['_valueDate'] != null
          ? Element.fromJson(
              json['_valueDate'] as Map<String, dynamic>,
            )
          : null,
      valueDateTime: json['valueDateTime'] != null
          ? FhirDateTime.fromJson(json['valueDateTime'])
          : null,
      valueDateTimeElement: json['_valueDateTime'] != null
          ? Element.fromJson(
              json['_valueDateTime'] as Map<String, dynamic>,
            )
          : null,
      valueDecimal: json['valueDecimal'] != null
          ? FhirDecimal.fromJson(json['valueDecimal'])
          : null,
      valueDecimalElement: json['_valueDecimal'] != null
          ? Element.fromJson(
              json['_valueDecimal'] as Map<String, dynamic>,
            )
          : null,
      valueId:
          json['valueId'] != null ? FhirId.fromJson(json['valueId']) : null,
      valueIdElement: json['_valueId'] != null
          ? Element.fromJson(
              json['_valueId'] as Map<String, dynamic>,
            )
          : null,
      valueInstant: json['valueInstant'] != null
          ? FhirInstant.fromJson(json['valueInstant'])
          : null,
      valueInstantElement: json['_valueInstant'] != null
          ? Element.fromJson(
              json['_valueInstant'] as Map<String, dynamic>,
            )
          : null,
      valueInteger: json['valueInteger'] != null
          ? FhirInteger.fromJson(json['valueInteger'])
          : null,
      valueIntegerElement: json['_valueInteger'] != null
          ? Element.fromJson(
              json['_valueInteger'] as Map<String, dynamic>,
            )
          : null,
      valueMarkdown: json['valueMarkdown'] != null
          ? FhirMarkdown.fromJson(json['valueMarkdown'])
          : null,
      valueMarkdownElement: json['_valueMarkdown'] != null
          ? Element.fromJson(
              json['_valueMarkdown'] as Map<String, dynamic>,
            )
          : null,
      valueOid:
          json['valueOid'] != null ? FhirOid.fromJson(json['valueOid']) : null,
      valueOidElement: json['_valueOid'] != null
          ? Element.fromJson(
              json['_valueOid'] as Map<String, dynamic>,
            )
          : null,
      valuePositiveInt: json['valuePositiveInt'] != null
          ? FhirPositiveInt.fromJson(json['valuePositiveInt'])
          : null,
      valuePositiveIntElement: json['_valuePositiveInt'] != null
          ? Element.fromJson(
              json['_valuePositiveInt'] as Map<String, dynamic>,
            )
          : null,
      valueString: json['valueString'] != null
          ? FhirString.fromJson(json['valueString'])
          : null,
      valueStringElement: json['_valueString'] != null
          ? Element.fromJson(
              json['_valueString'] as Map<String, dynamic>,
            )
          : null,
      valueTime: json['valueTime'] != null
          ? FhirTime.fromJson(json['valueTime'])
          : null,
      valueTimeElement: json['_valueTime'] != null
          ? Element.fromJson(
              json['_valueTime'] as Map<String, dynamic>,
            )
          : null,
      valueUnsignedInt: json['valueUnsignedInt'] != null
          ? FhirUnsignedInt.fromJson(json['valueUnsignedInt'])
          : null,
      valueUnsignedIntElement: json['_valueUnsignedInt'] != null
          ? Element.fromJson(
              json['_valueUnsignedInt'] as Map<String, dynamic>,
            )
          : null,
      valueUri:
          json['valueUri'] != null ? FhirUri.fromJson(json['valueUri']) : null,
      valueUriElement: json['_valueUri'] != null
          ? Element.fromJson(
              json['_valueUri'] as Map<String, dynamic>,
            )
          : null,
      valueUrl:
          json['valueUrl'] != null ? FhirUrl.fromJson(json['valueUrl']) : null,
      valueUrlElement: json['_valueUrl'] != null
          ? Element.fromJson(
              json['_valueUrl'] as Map<String, dynamic>,
            )
          : null,
      valueUuid: json['valueUuid'] != null
          ? FhirUuid.fromJson(json['valueUuid'])
          : null,
      valueUuidElement: json['_valueUuid'] != null
          ? Element.fromJson(
              json['_valueUuid'] as Map<String, dynamic>,
            )
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

  /// Deserialize [ElementDefinitionExample] from a [String] or [YamlMap] object
  factory ElementDefinitionExample.fromYaml(dynamic yaml) => yaml is String
      ? ElementDefinitionExample.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ElementDefinitionExample.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ElementDefinitionExample cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ElementDefinitionExample] that takes in a [String]
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

  /// [label]
  /// Describes the purpose of this example amoung the set of examples.
  final FhirString label;

  /// Extensions for [label]
  final Element? labelElement;

  /// [valueBase64Binary]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final FhirBase64Binary? valueBase64Binary;

  /// Extensions for [valueBase64Binary]
  final Element? valueBase64BinaryElement;

  /// [valueBoolean]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final FhirBoolean? valueBoolean;

  /// Extensions for [valueBoolean]
  final Element? valueBooleanElement;

  /// [valueCanonical]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final FhirCanonical? valueCanonical;

  /// Extensions for [valueCanonical]
  final Element? valueCanonicalElement;

  /// [valueCode]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final FhirCode? valueCode;

  /// Extensions for [valueCode]
  final Element? valueCodeElement;

  /// [valueDate]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final FhirDate? valueDate;

  /// Extensions for [valueDate]
  final Element? valueDateElement;

  /// [valueDateTime]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final FhirDateTime? valueDateTime;

  /// Extensions for [valueDateTime]
  final Element? valueDateTimeElement;

  /// [valueDecimal]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final FhirDecimal? valueDecimal;

  /// Extensions for [valueDecimal]
  final Element? valueDecimalElement;

  /// [valueId]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final FhirId? valueId;

  /// Extensions for [valueId]
  final Element? valueIdElement;

  /// [valueInstant]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final FhirInstant? valueInstant;

  /// Extensions for [valueInstant]
  final Element? valueInstantElement;

  /// [valueInteger]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final FhirInteger? valueInteger;

  /// Extensions for [valueInteger]
  final Element? valueIntegerElement;

  /// [valueMarkdown]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final FhirMarkdown? valueMarkdown;

  /// Extensions for [valueMarkdown]
  final Element? valueMarkdownElement;

  /// [valueOid]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final FhirOid? valueOid;

  /// Extensions for [valueOid]
  final Element? valueOidElement;

  /// [valuePositiveInt]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final FhirPositiveInt? valuePositiveInt;

  /// Extensions for [valuePositiveInt]
  final Element? valuePositiveIntElement;

  /// [valueString]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final FhirString? valueString;

  /// Extensions for [valueString]
  final Element? valueStringElement;

  /// [valueTime]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final FhirTime? valueTime;

  /// Extensions for [valueTime]
  final Element? valueTimeElement;

  /// [valueUnsignedInt]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final FhirUnsignedInt? valueUnsignedInt;

  /// Extensions for [valueUnsignedInt]
  final Element? valueUnsignedIntElement;

  /// [valueUri]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final FhirUri? valueUri;

  /// Extensions for [valueUri]
  final Element? valueUriElement;

  /// [valueUrl]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final FhirUrl? valueUrl;

  /// Extensions for [valueUrl]
  final Element? valueUrlElement;

  /// [valueUuid]
  /// The actual value for the element, which must be one of the types
  /// allowed for this element.
  final FhirUuid? valueUuid;

  /// Extensions for [valueUuid]
  final Element? valueUuidElement;

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
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['label'] = label.toJson();
    if (labelElement != null) {
      json['_label'] = labelElement!.toJson();
    }
    if (valueBase64Binary?.value != null) {
      json['valueBase64Binary'] = valueBase64Binary!.toJson();
    }
    if (valueBase64BinaryElement != null) {
      json['_valueBase64Binary'] = valueBase64BinaryElement!.toJson();
    }
    if (valueBoolean?.value != null) {
      json['valueBoolean'] = valueBoolean!.toJson();
    }
    if (valueBooleanElement != null) {
      json['_valueBoolean'] = valueBooleanElement!.toJson();
    }
    if (valueCanonical?.value != null) {
      json['valueCanonical'] = valueCanonical!.toJson();
    }
    if (valueCanonicalElement != null) {
      json['_valueCanonical'] = valueCanonicalElement!.toJson();
    }
    if (valueCode?.value != null) {
      json['valueCode'] = valueCode!.toJson();
    }
    if (valueCodeElement != null) {
      json['_valueCode'] = valueCodeElement!.toJson();
    }
    if (valueDate?.value != null) {
      json['valueDate'] = valueDate!.toJson();
    }
    if (valueDateElement != null) {
      json['_valueDate'] = valueDateElement!.toJson();
    }
    if (valueDateTime?.value != null) {
      json['valueDateTime'] = valueDateTime!.toJson();
    }
    if (valueDateTimeElement != null) {
      json['_valueDateTime'] = valueDateTimeElement!.toJson();
    }
    if (valueDecimal?.value != null) {
      json['valueDecimal'] = valueDecimal!.toJson();
    }
    if (valueDecimalElement != null) {
      json['_valueDecimal'] = valueDecimalElement!.toJson();
    }
    if (valueId?.value != null) {
      json['valueId'] = valueId!.toJson();
    }
    if (valueIdElement != null) {
      json['_valueId'] = valueIdElement!.toJson();
    }
    if (valueInstant?.value != null) {
      json['valueInstant'] = valueInstant!.toJson();
    }
    if (valueInstantElement != null) {
      json['_valueInstant'] = valueInstantElement!.toJson();
    }
    if (valueInteger?.value != null) {
      json['valueInteger'] = valueInteger!.toJson();
    }
    if (valueIntegerElement != null) {
      json['_valueInteger'] = valueIntegerElement!.toJson();
    }
    if (valueMarkdown?.value != null) {
      json['valueMarkdown'] = valueMarkdown!.toJson();
    }
    if (valueMarkdownElement != null) {
      json['_valueMarkdown'] = valueMarkdownElement!.toJson();
    }
    if (valueOid?.value != null) {
      json['valueOid'] = valueOid!.toJson();
    }
    if (valueOidElement != null) {
      json['_valueOid'] = valueOidElement!.toJson();
    }
    if (valuePositiveInt?.value != null) {
      json['valuePositiveInt'] = valuePositiveInt!.toJson();
    }
    if (valuePositiveIntElement != null) {
      json['_valuePositiveInt'] = valuePositiveIntElement!.toJson();
    }
    if (valueString?.value != null) {
      json['valueString'] = valueString!.toJson();
    }
    if (valueStringElement != null) {
      json['_valueString'] = valueStringElement!.toJson();
    }
    if (valueTime?.value != null) {
      json['valueTime'] = valueTime!.toJson();
    }
    if (valueTimeElement != null) {
      json['_valueTime'] = valueTimeElement!.toJson();
    }
    if (valueUnsignedInt?.value != null) {
      json['valueUnsignedInt'] = valueUnsignedInt!.toJson();
    }
    if (valueUnsignedIntElement != null) {
      json['_valueUnsignedInt'] = valueUnsignedIntElement!.toJson();
    }
    if (valueUri?.value != null) {
      json['valueUri'] = valueUri!.toJson();
    }
    if (valueUriElement != null) {
      json['_valueUri'] = valueUriElement!.toJson();
    }
    if (valueUrl?.value != null) {
      json['valueUrl'] = valueUrl!.toJson();
    }
    if (valueUrlElement != null) {
      json['_valueUrl'] = valueUrlElement!.toJson();
    }
    if (valueUuid?.value != null) {
      json['valueUuid'] = valueUuid!.toJson();
    }
    if (valueUuidElement != null) {
      json['_valueUuid'] = valueUuidElement!.toJson();
    }
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
    Element? labelElement,
    FhirBase64Binary? valueBase64Binary,
    Element? valueBase64BinaryElement,
    FhirBoolean? valueBoolean,
    Element? valueBooleanElement,
    FhirCanonical? valueCanonical,
    Element? valueCanonicalElement,
    FhirCode? valueCode,
    Element? valueCodeElement,
    FhirDate? valueDate,
    Element? valueDateElement,
    FhirDateTime? valueDateTime,
    Element? valueDateTimeElement,
    FhirDecimal? valueDecimal,
    Element? valueDecimalElement,
    FhirId? valueId,
    Element? valueIdElement,
    FhirInstant? valueInstant,
    Element? valueInstantElement,
    FhirInteger? valueInteger,
    Element? valueIntegerElement,
    FhirMarkdown? valueMarkdown,
    Element? valueMarkdownElement,
    FhirOid? valueOid,
    Element? valueOidElement,
    FhirPositiveInt? valuePositiveInt,
    Element? valuePositiveIntElement,
    FhirString? valueString,
    Element? valueStringElement,
    FhirTime? valueTime,
    Element? valueTimeElement,
    FhirUnsignedInt? valueUnsignedInt,
    Element? valueUnsignedIntElement,
    FhirUri? valueUri,
    Element? valueUriElement,
    FhirUrl? valueUrl,
    Element? valueUrlElement,
    FhirUuid? valueUuid,
    Element? valueUuidElement,
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
      labelElement: labelElement ?? this.labelElement,
      valueBase64Binary: valueBase64Binary ?? this.valueBase64Binary,
      valueBase64BinaryElement:
          valueBase64BinaryElement ?? this.valueBase64BinaryElement,
      valueBoolean: valueBoolean ?? this.valueBoolean,
      valueBooleanElement: valueBooleanElement ?? this.valueBooleanElement,
      valueCanonical: valueCanonical ?? this.valueCanonical,
      valueCanonicalElement:
          valueCanonicalElement ?? this.valueCanonicalElement,
      valueCode: valueCode ?? this.valueCode,
      valueCodeElement: valueCodeElement ?? this.valueCodeElement,
      valueDate: valueDate ?? this.valueDate,
      valueDateElement: valueDateElement ?? this.valueDateElement,
      valueDateTime: valueDateTime ?? this.valueDateTime,
      valueDateTimeElement: valueDateTimeElement ?? this.valueDateTimeElement,
      valueDecimal: valueDecimal ?? this.valueDecimal,
      valueDecimalElement: valueDecimalElement ?? this.valueDecimalElement,
      valueId: valueId ?? this.valueId,
      valueIdElement: valueIdElement ?? this.valueIdElement,
      valueInstant: valueInstant ?? this.valueInstant,
      valueInstantElement: valueInstantElement ?? this.valueInstantElement,
      valueInteger: valueInteger ?? this.valueInteger,
      valueIntegerElement: valueIntegerElement ?? this.valueIntegerElement,
      valueMarkdown: valueMarkdown ?? this.valueMarkdown,
      valueMarkdownElement: valueMarkdownElement ?? this.valueMarkdownElement,
      valueOid: valueOid ?? this.valueOid,
      valueOidElement: valueOidElement ?? this.valueOidElement,
      valuePositiveInt: valuePositiveInt ?? this.valuePositiveInt,
      valuePositiveIntElement:
          valuePositiveIntElement ?? this.valuePositiveIntElement,
      valueString: valueString ?? this.valueString,
      valueStringElement: valueStringElement ?? this.valueStringElement,
      valueTime: valueTime ?? this.valueTime,
      valueTimeElement: valueTimeElement ?? this.valueTimeElement,
      valueUnsignedInt: valueUnsignedInt ?? this.valueUnsignedInt,
      valueUnsignedIntElement:
          valueUnsignedIntElement ?? this.valueUnsignedIntElement,
      valueUri: valueUri ?? this.valueUri,
      valueUriElement: valueUriElement ?? this.valueUriElement,
      valueUrl: valueUrl ?? this.valueUrl,
      valueUrlElement: valueUrlElement ?? this.valueUrlElement,
      valueUuid: valueUuid ?? this.valueUuid,
      valueUuidElement: valueUuidElement ?? this.valueUuidElement,
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
    super.extension_,
    required this.key,

    /// Extensions for [key]
    this.keyElement,
    this.requirements,

    /// Extensions for [requirements]
    this.requirementsElement,
    required this.severity,

    /// Extensions for [severity]
    this.severityElement,
    required this.human,

    /// Extensions for [human]
    this.humanElement,
    this.expression,

    /// Extensions for [expression]
    this.expressionElement,
    this.xpath,

    /// Extensions for [xpath]
    this.xpathElement,
    this.source,

    /// Extensions for [source]
    this.sourceElement,
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
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      key: FhirId.fromJson(json['key']),
      keyElement: json['_key'] != null
          ? Element.fromJson(
              json['_key'] as Map<String, dynamic>,
            )
          : null,
      requirements: json['requirements'] != null
          ? FhirString.fromJson(json['requirements'])
          : null,
      requirementsElement: json['_requirements'] != null
          ? Element.fromJson(
              json['_requirements'] as Map<String, dynamic>,
            )
          : null,
      severity: ConstraintSeverity.fromJson(json['severity']),
      severityElement: json['_severity'] != null
          ? Element.fromJson(
              json['_severity'] as Map<String, dynamic>,
            )
          : null,
      human: FhirString.fromJson(json['human']),
      humanElement: json['_human'] != null
          ? Element.fromJson(
              json['_human'] as Map<String, dynamic>,
            )
          : null,
      expression: json['expression'] != null
          ? FhirString.fromJson(json['expression'])
          : null,
      expressionElement: json['_expression'] != null
          ? Element.fromJson(
              json['_expression'] as Map<String, dynamic>,
            )
          : null,
      xpath: json['xpath'] != null ? FhirString.fromJson(json['xpath']) : null,
      xpathElement: json['_xpath'] != null
          ? Element.fromJson(
              json['_xpath'] as Map<String, dynamic>,
            )
          : null,
      source: json['source'] != null
          ? FhirCanonical.fromJson(json['source'])
          : null,
      sourceElement: json['_source'] != null
          ? Element.fromJson(
              json['_source'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [ElementDefinitionConstraint] from a [String] or [YamlMap] object
  factory ElementDefinitionConstraint.fromYaml(dynamic yaml) => yaml is String
      ? ElementDefinitionConstraint.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ElementDefinitionConstraint.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ElementDefinitionConstraint cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ElementDefinitionConstraint] that takes in a [String]
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

  /// [key]
  /// Allows identification of which elements have their cardinalities
  /// impacted by the constraint. Will not be referenced for constraints that
  /// do not affect cardinality.
  final FhirId key;

  /// Extensions for [key]
  final Element? keyElement;

  /// [requirements]
  /// Description of why this constraint is necessary or appropriate.
  final FhirString? requirements;

  /// Extensions for [requirements]
  final Element? requirementsElement;

  /// [severity]
  /// Identifies the impact constraint violation has on the conformance of
  /// the instance.
  final ConstraintSeverity severity;

  /// Extensions for [severity]
  final Element? severityElement;

  /// [human]
  /// Text that can be used to describe the constraint in messages
  /// identifying that the constraint has been violated.
  final FhirString human;

  /// Extensions for [human]
  final Element? humanElement;

  /// [expression]
  /// A [FHIRPath](fhirpath.html) expression of constraint that can be
  /// executed to see if this constraint is met.
  final FhirString? expression;

  /// Extensions for [expression]
  final Element? expressionElement;

  /// [xpath]
  /// An XPath expression of constraint that can be executed to see if this
  /// constraint is met.
  final FhirString? xpath;

  /// Extensions for [xpath]
  final Element? xpathElement;

  /// [source]
  /// A reference to the original source of the constraint, for traceability
  /// purposes.
  final FhirCanonical? source;

  /// Extensions for [source]
  final Element? sourceElement;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['key'] = key.toJson();
    if (keyElement != null) {
      json['_key'] = keyElement!.toJson();
    }
    if (requirements?.value != null) {
      json['requirements'] = requirements!.toJson();
    }
    if (requirementsElement != null) {
      json['_requirements'] = requirementsElement!.toJson();
    }
    json['severity'] = severity.toJson();
    json['human'] = human.toJson();
    if (humanElement != null) {
      json['_human'] = humanElement!.toJson();
    }
    if (expression?.value != null) {
      json['expression'] = expression!.toJson();
    }
    if (expressionElement != null) {
      json['_expression'] = expressionElement!.toJson();
    }
    if (xpath?.value != null) {
      json['xpath'] = xpath!.toJson();
    }
    if (xpathElement != null) {
      json['_xpath'] = xpathElement!.toJson();
    }
    if (source?.value != null) {
      json['source'] = source!.toJson();
    }
    if (sourceElement != null) {
      json['_source'] = sourceElement!.toJson();
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
    Element? keyElement,
    FhirString? requirements,
    Element? requirementsElement,
    ConstraintSeverity? severity,
    Element? severityElement,
    FhirString? human,
    Element? humanElement,
    FhirString? expression,
    Element? expressionElement,
    FhirString? xpath,
    Element? xpathElement,
    FhirCanonical? source,
    Element? sourceElement,
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
      keyElement: keyElement ?? this.keyElement,
      requirements: requirements ?? this.requirements,
      requirementsElement: requirementsElement ?? this.requirementsElement,
      severity: severity ?? this.severity,
      severityElement: severityElement ?? this.severityElement,
      human: human ?? this.human,
      humanElement: humanElement ?? this.humanElement,
      expression: expression ?? this.expression,
      expressionElement: expressionElement ?? this.expressionElement,
      xpath: xpath ?? this.xpath,
      xpathElement: xpathElement ?? this.xpathElement,
      source: source ?? this.source,
      sourceElement: sourceElement ?? this.sourceElement,
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
    super.extension_,
    required this.strength,

    /// Extensions for [strength]
    this.strengthElement,
    this.description,

    /// Extensions for [description]
    this.descriptionElement,
    this.valueSet,

    /// Extensions for [valueSet]
    this.valueSetElement,
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
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      strength: BindingStrength.fromJson(json['strength']),
      strengthElement: json['_strength'] != null
          ? Element.fromJson(
              json['_strength'] as Map<String, dynamic>,
            )
          : null,
      description: json['description'] != null
          ? FhirString.fromJson(json['description'])
          : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(
              json['_description'] as Map<String, dynamic>,
            )
          : null,
      valueSet: json['valueSet'] != null
          ? FhirCanonical.fromJson(json['valueSet'])
          : null,
      valueSetElement: json['_valueSet'] != null
          ? Element.fromJson(
              json['_valueSet'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [ElementDefinitionBinding] from a [String] or [YamlMap] object
  factory ElementDefinitionBinding.fromYaml(dynamic yaml) => yaml is String
      ? ElementDefinitionBinding.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ElementDefinitionBinding.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ElementDefinitionBinding cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ElementDefinitionBinding] that takes in a [String]
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

  /// [strength]
  /// Indicates the degree of conformance expectations associated with this
  /// binding - that is, the degree to which the provided value set must be
  /// adhered to in the instances.
  final BindingStrength strength;

  /// Extensions for [strength]
  final Element? strengthElement;

  /// [description]
  /// Describes the intended use of this particular set of codes.
  final FhirString? description;

  /// Extensions for [description]
  final Element? descriptionElement;

  /// [valueSet]
  /// Refers to the value set that identifies the set of codes the binding
  /// refers to.
  final FhirCanonical? valueSet;

  /// Extensions for [valueSet]
  final Element? valueSetElement;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['strength'] = strength.toJson();
    if (description?.value != null) {
      json['description'] = description!.toJson();
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (valueSet?.value != null) {
      json['valueSet'] = valueSet!.toJson();
    }
    if (valueSetElement != null) {
      json['_valueSet'] = valueSetElement!.toJson();
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
    Element? strengthElement,
    FhirString? description,
    Element? descriptionElement,
    FhirCanonical? valueSet,
    Element? valueSetElement,
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
      strengthElement: strengthElement ?? this.strengthElement,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      valueSet: valueSet ?? this.valueSet,
      valueSetElement: valueSetElement ?? this.valueSetElement,
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
    super.extension_,
    required this.identity,

    /// Extensions for [identity]
    this.identityElement,
    this.language,

    /// Extensions for [language]
    this.languageElement,
    required this.map,

    /// Extensions for [map]
    this.mapElement,
    this.comment,

    /// Extensions for [comment]
    this.commentElement,
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
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      identity: FhirId.fromJson(json['identity']),
      identityElement: json['_identity'] != null
          ? Element.fromJson(
              json['_identity'] as Map<String, dynamic>,
            )
          : null,
      language:
          json['language'] != null ? FhirCode.fromJson(json['language']) : null,
      languageElement: json['_language'] != null
          ? Element.fromJson(
              json['_language'] as Map<String, dynamic>,
            )
          : null,
      map: FhirString.fromJson(json['map']),
      mapElement: json['_map'] != null
          ? Element.fromJson(
              json['_map'] as Map<String, dynamic>,
            )
          : null,
      comment:
          json['comment'] != null ? FhirString.fromJson(json['comment']) : null,
      commentElement: json['_comment'] != null
          ? Element.fromJson(
              json['_comment'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [ElementDefinitionMapping] from a [String] or [YamlMap] object
  factory ElementDefinitionMapping.fromYaml(dynamic yaml) => yaml is String
      ? ElementDefinitionMapping.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ElementDefinitionMapping.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ElementDefinitionMapping cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ElementDefinitionMapping] that takes in a [String]
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

  /// [identity]
  /// An internal reference to the definition of a mapping.
  final FhirId identity;

  /// Extensions for [identity]
  final Element? identityElement;

  /// [language]
  /// Identifies the computable language in which mapping.map is expressed.
  final FhirCode? language;

  /// Extensions for [language]
  final Element? languageElement;

  /// [map]
  /// Expresses what part of the target specification corresponds to this
  /// element.
  final FhirString map;

  /// Extensions for [map]
  final Element? mapElement;

  /// [comment]
  /// Comments that provide information about the mapping or its use.
  final FhirString? comment;

  /// Extensions for [comment]
  final Element? commentElement;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['identity'] = identity.toJson();
    if (identityElement != null) {
      json['_identity'] = identityElement!.toJson();
    }
    if (language?.value != null) {
      json['language'] = language!.toJson();
    }
    if (languageElement != null) {
      json['_language'] = languageElement!.toJson();
    }
    json['map'] = map.toJson();
    if (mapElement != null) {
      json['_map'] = mapElement!.toJson();
    }
    if (comment?.value != null) {
      json['comment'] = comment!.toJson();
    }
    if (commentElement != null) {
      json['_comment'] = commentElement!.toJson();
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
    Element? identityElement,
    FhirCode? language,
    Element? languageElement,
    FhirString? map,
    Element? mapElement,
    FhirString? comment,
    Element? commentElement,
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
      identityElement: identityElement ?? this.identityElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      map: map ?? this.map,
      mapElement: mapElement ?? this.mapElement,
      comment: comment ?? this.comment,
      commentElement: commentElement ?? this.commentElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
