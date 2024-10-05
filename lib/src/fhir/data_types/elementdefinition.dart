import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class ElementDefinition extends BackboneType {
  final FhirString? path;
  final Element? pathElement;
  final List<dynamic>? representation;
  final List<Element>? representationElement;
  final FhirString? sliceName;
  final Element? sliceNameElement;
  final FhirBoolean? sliceIsConstraining;
  final Element? sliceIsConstrainingElement;
  final FhirString? label;
  final Element? labelElement;
  final List<Coding>? code;
  final ElementDefinitionSlicing? slicing;
  final FhirString? short;
  final Element? shortElement;
  final FhirMarkdown? definition;
  final Element? definitionElement;
  final FhirMarkdown? comment;
  final Element? commentElement;
  final FhirMarkdown? requirements;
  final Element? requirementsElement;
  final List<FhirString>? alias;
  final List<Element>? aliasElement;
  final FhirUnsignedInt? min;
  final Element? minElement;
  final FhirString? max;
  final Element? maxElement;
  final ElementDefinitionBase? base;
  final FhirUri? contentReference;
  final Element? contentReferenceElement;
  final List<ElementDefinitionType>? type;
  final FhirString? defaultValueBase64Binary;
  final Element? defaultValueBase64BinaryElement;
  final bool? defaultValueBoolean;
  final Element? defaultValueBooleanElement;
  final FhirString? defaultValueCanonical;
  final Element? defaultValueCanonicalElement;
  final FhirString? defaultValueCode;
  final Element? defaultValueCodeElement;
  final FhirString? defaultValueDate;
  final Element? defaultValueDateElement;
  final FhirString? defaultValueDateTime;
  final Element? defaultValueDateTimeElement;
  final double? defaultValueDecimal;
  final Element? defaultValueDecimalElement;
  final FhirString? defaultValueId;
  final Element? defaultValueIdElement;
  final FhirString? defaultValueInstant;
  final Element? defaultValueInstantElement;
  final double? defaultValueInteger;
  final Element? defaultValueIntegerElement;
  final FhirString? defaultValueMarkdown;
  final Element? defaultValueMarkdownElement;
  final FhirString? defaultValueOid;
  final Element? defaultValueOidElement;
  final double? defaultValuePositiveInt;
  final Element? defaultValuePositiveIntElement;
  final FhirString? defaultValueString;
  final Element? defaultValueStringElement;
  final FhirString? defaultValueTime;
  final Element? defaultValueTimeElement;
  final double? defaultValueUnsignedInt;
  final Element? defaultValueUnsignedIntElement;
  final FhirString? defaultValueUri;
  final Element? defaultValueUriElement;
  final FhirString? defaultValueUrl;
  final Element? defaultValueUrlElement;
  final FhirString? defaultValueUuid;
  final Element? defaultValueUuidElement;
  final Address? defaultValueAddress;
  final Age? defaultValueAge;
  final Annotation? defaultValueAnnotation;
  final Attachment? defaultValueAttachment;
  final CodeableConcept? defaultValueCodeableConcept;
  final CodeableReference? defaultValueCodeableReference;
  final Coding? defaultValueCoding;
  final ContactPoint? defaultValueContactPoint;
  final Count? defaultValueCount;
  final Distance? defaultValueDistance;
  final FhirDuration? defaultValueDuration;
  final HumanName? defaultValueHumanName;
  final Identifier? defaultValueIdentifier;
  final Money? defaultValueMoney;
  final Period? defaultValuePeriod;
  final Quantity? defaultValueQuantity;
  final Range? defaultValueRange;
  final Ratio? defaultValueRatio;
  final RatioRange? defaultValueRatioRange;
  final Reference? defaultValueReference;
  final SampledData? defaultValueSampledData;
  final Signature? defaultValueSignature;
  final Timing? defaultValueTiming;
  final ContactDetail? defaultValueContactDetail;
  final Contributor? defaultValueContributor;
  final DataRequirement? defaultValueDataRequirement;
  final FhirExpression? defaultValueExpression;
  final ParameterDefinition? defaultValueParameterDefinition;
  final RelatedArtifact? defaultValueRelatedArtifact;
  final TriggerDefinition? defaultValueTriggerDefinition;
  final UsageContext? defaultValueUsageContext;
  final Dosage? defaultValueDosage;
  final FhirMarkdown? meaningWhenMissing;
  final Element? meaningWhenMissingElement;
  final FhirString? orderMeaning;
  final Element? orderMeaningElement;
  final FhirString? fixedBase64Binary;
  final Element? fixedBase64BinaryElement;
  final bool? fixedBoolean;
  final Element? fixedBooleanElement;
  final FhirString? fixedCanonical;
  final Element? fixedCanonicalElement;
  final FhirString? fixedCode;
  final Element? fixedCodeElement;
  final FhirString? fixedDate;
  final Element? fixedDateElement;
  final FhirString? fixedDateTime;
  final Element? fixedDateTimeElement;
  final double? fixedDecimal;
  final Element? fixedDecimalElement;
  final FhirString? fixedId;
  final Element? fixedIdElement;
  final FhirString? fixedInstant;
  final Element? fixedInstantElement;
  final double? fixedInteger;
  final Element? fixedIntegerElement;
  final FhirString? fixedMarkdown;
  final Element? fixedMarkdownElement;
  final FhirString? fixedOid;
  final Element? fixedOidElement;
  final double? fixedPositiveInt;
  final Element? fixedPositiveIntElement;
  final FhirString? fixedString;
  final Element? fixedStringElement;
  final FhirString? fixedTime;
  final Element? fixedTimeElement;
  final double? fixedUnsignedInt;
  final Element? fixedUnsignedIntElement;
  final FhirString? fixedUri;
  final Element? fixedUriElement;
  final FhirString? fixedUrl;
  final Element? fixedUrlElement;
  final FhirString? fixedUuid;
  final Element? fixedUuidElement;
  final Address? fixedAddress;
  final Age? fixedAge;
  final Annotation? fixedAnnotation;
  final Attachment? fixedAttachment;
  final CodeableConcept? fixedCodeableConcept;
  final CodeableReference? fixedCodeableReference;
  final Coding? fixedCoding;
  final ContactPoint? fixedContactPoint;
  final Count? fixedCount;
  final Distance? fixedDistance;
  final FhirDuration? fixedDuration;
  final HumanName? fixedHumanName;
  final Identifier? fixedIdentifier;
  final Money? fixedMoney;
  final Period? fixedPeriod;
  final Quantity? fixedQuantity;
  final Range? fixedRange;
  final Ratio? fixedRatio;
  final RatioRange? fixedRatioRange;
  final Reference? fixedReference;
  final SampledData? fixedSampledData;
  final Signature? fixedSignature;
  final Timing? fixedTiming;
  final ContactDetail? fixedContactDetail;
  final Contributor? fixedContributor;
  final DataRequirement? fixedDataRequirement;
  final FhirExpression? fixedExpression;
  final ParameterDefinition? fixedParameterDefinition;
  final RelatedArtifact? fixedRelatedArtifact;
  final TriggerDefinition? fixedTriggerDefinition;
  final UsageContext? fixedUsageContext;
  final Dosage? fixedDosage;
  final FhirString? patternBase64Binary;
  final Element? patternBase64BinaryElement;
  final bool? patternBoolean;
  final Element? patternBooleanElement;
  final FhirString? patternCanonical;
  final Element? patternCanonicalElement;
  final FhirString? patternCode;
  final Element? patternCodeElement;
  final FhirString? patternDate;
  final Element? patternDateElement;
  final FhirString? patternDateTime;
  final Element? patternDateTimeElement;
  final double? patternDecimal;
  final Element? patternDecimalElement;
  final FhirString? patternId;
  final Element? patternIdElement;
  final FhirString? patternInstant;
  final Element? patternInstantElement;
  final double? patternInteger;
  final Element? patternIntegerElement;
  final FhirString? patternMarkdown;
  final Element? patternMarkdownElement;
  final FhirString? patternOid;
  final Element? patternOidElement;
  final double? patternPositiveInt;
  final Element? patternPositiveIntElement;
  final FhirString? patternString;
  final Element? patternStringElement;
  final FhirString? patternTime;
  final Element? patternTimeElement;
  final double? patternUnsignedInt;
  final Element? patternUnsignedIntElement;
  final FhirString? patternUri;
  final Element? patternUriElement;
  final FhirString? patternUrl;
  final Element? patternUrlElement;
  final FhirString? patternUuid;
  final Element? patternUuidElement;
  final Address? patternAddress;
  final Age? patternAge;
  final Annotation? patternAnnotation;
  final Attachment? patternAttachment;
  final CodeableConcept? patternCodeableConcept;
  final CodeableReference? patternCodeableReference;
  final Coding? patternCoding;
  final ContactPoint? patternContactPoint;
  final Count? patternCount;
  final Distance? patternDistance;
  final FhirDuration? patternDuration;
  final HumanName? patternHumanName;
  final Identifier? patternIdentifier;
  final Money? patternMoney;
  final Period? patternPeriod;
  final Quantity? patternQuantity;
  final Range? patternRange;
  final Ratio? patternRatio;
  final RatioRange? patternRatioRange;
  final Reference? patternReference;
  final SampledData? patternSampledData;
  final Signature? patternSignature;
  final Timing? patternTiming;
  final ContactDetail? patternContactDetail;
  final Contributor? patternContributor;
  final DataRequirement? patternDataRequirement;
  final FhirExpression? patternExpression;
  final ParameterDefinition? patternParameterDefinition;
  final RelatedArtifact? patternRelatedArtifact;
  final TriggerDefinition? patternTriggerDefinition;
  final UsageContext? patternUsageContext;
  final Dosage? patternDosage;
  final List<ElementDefinitionExample>? example;
  final FhirString? minValueDate;
  final Element? minValueDateElement;
  final FhirString? minValueDateTime;
  final Element? minValueDateTimeElement;
  final FhirString? minValueInstant;
  final Element? minValueInstantElement;
  final FhirString? minValueTime;
  final Element? minValueTimeElement;
  final double? minValueDecimal;
  final Element? minValueDecimalElement;
  final double? minValueInteger;
  final Element? minValueIntegerElement;
  final double? minValuePositiveInt;
  final Element? minValuePositiveIntElement;
  final double? minValueUnsignedInt;
  final Element? minValueUnsignedIntElement;
  final Quantity? minValueQuantity;
  final FhirString? maxValueDate;
  final Element? maxValueDateElement;
  final FhirString? maxValueDateTime;
  final Element? maxValueDateTimeElement;
  final FhirString? maxValueInstant;
  final Element? maxValueInstantElement;
  final FhirString? maxValueTime;
  final Element? maxValueTimeElement;
  final double? maxValueDecimal;
  final Element? maxValueDecimalElement;
  final double? maxValueInteger;
  final Element? maxValueIntegerElement;
  final double? maxValuePositiveInt;
  final Element? maxValuePositiveIntElement;
  final double? maxValueUnsignedInt;
  final Element? maxValueUnsignedIntElement;
  final Quantity? maxValueQuantity;
  final FhirInteger? maxLength;
  final Element? maxLengthElement;
  final List<FhirId>? condition;
  final List<Element>? conditionElement;
  final List<ElementDefinitionConstraint>? constraint;
  final FhirBoolean? mustSupport;
  final Element? mustSupportElement;
  final FhirBoolean? isModifier;
  final Element? isModifierElement;
  final FhirString? isModifierReason;
  final Element? isModifierReasonElement;
  final FhirBoolean? isSummary;
  final Element? isSummaryElement;
  final ElementDefinitionBinding? binding;
  final List<ElementDefinitionMapping>? mapping;

  ElementDefinition({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.path,
    this.pathElement,
    this.representation,
    this.representationElement,
    this.sliceName,
    this.sliceNameElement,
    this.sliceIsConstraining,
    this.sliceIsConstrainingElement,
    this.label,
    this.labelElement,
    this.code,
    this.slicing,
    this.short,
    this.shortElement,
    this.definition,
    this.definitionElement,
    this.comment,
    this.commentElement,
    this.requirements,
    this.requirementsElement,
    this.alias,
    this.aliasElement,
    this.min,
    this.minElement,
    this.max,
    this.maxElement,
    this.base,
    this.contentReference,
    this.contentReferenceElement,
    this.type,
    this.defaultValueBase64Binary,
    this.defaultValueBase64BinaryElement,
    this.defaultValueBoolean,
    this.defaultValueBooleanElement,
    this.defaultValueCanonical,
    this.defaultValueCanonicalElement,
    this.defaultValueCode,
    this.defaultValueCodeElement,
    this.defaultValueDate,
    this.defaultValueDateElement,
    this.defaultValueDateTime,
    this.defaultValueDateTimeElement,
    this.defaultValueDecimal,
    this.defaultValueDecimalElement,
    this.defaultValueId,
    this.defaultValueIdElement,
    this.defaultValueInstant,
    this.defaultValueInstantElement,
    this.defaultValueInteger,
    this.defaultValueIntegerElement,
    this.defaultValueMarkdown,
    this.defaultValueMarkdownElement,
    this.defaultValueOid,
    this.defaultValueOidElement,
    this.defaultValuePositiveInt,
    this.defaultValuePositiveIntElement,
    this.defaultValueString,
    this.defaultValueStringElement,
    this.defaultValueTime,
    this.defaultValueTimeElement,
    this.defaultValueUnsignedInt,
    this.defaultValueUnsignedIntElement,
    this.defaultValueUri,
    this.defaultValueUriElement,
    this.defaultValueUrl,
    this.defaultValueUrlElement,
    this.defaultValueUuid,
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
    this.meaningWhenMissingElement,
    this.orderMeaning,
    this.orderMeaningElement,
    this.fixedBase64Binary,
    this.fixedBase64BinaryElement,
    this.fixedBoolean,
    this.fixedBooleanElement,
    this.fixedCanonical,
    this.fixedCanonicalElement,
    this.fixedCode,
    this.fixedCodeElement,
    this.fixedDate,
    this.fixedDateElement,
    this.fixedDateTime,
    this.fixedDateTimeElement,
    this.fixedDecimal,
    this.fixedDecimalElement,
    this.fixedId,
    this.fixedIdElement,
    this.fixedInstant,
    this.fixedInstantElement,
    this.fixedInteger,
    this.fixedIntegerElement,
    this.fixedMarkdown,
    this.fixedMarkdownElement,
    this.fixedOid,
    this.fixedOidElement,
    this.fixedPositiveInt,
    this.fixedPositiveIntElement,
    this.fixedString,
    this.fixedStringElement,
    this.fixedTime,
    this.fixedTimeElement,
    this.fixedUnsignedInt,
    this.fixedUnsignedIntElement,
    this.fixedUri,
    this.fixedUriElement,
    this.fixedUrl,
    this.fixedUrlElement,
    this.fixedUuid,
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
    this.patternBase64BinaryElement,
    this.patternBoolean,
    this.patternBooleanElement,
    this.patternCanonical,
    this.patternCanonicalElement,
    this.patternCode,
    this.patternCodeElement,
    this.patternDate,
    this.patternDateElement,
    this.patternDateTime,
    this.patternDateTimeElement,
    this.patternDecimal,
    this.patternDecimalElement,
    this.patternId,
    this.patternIdElement,
    this.patternInstant,
    this.patternInstantElement,
    this.patternInteger,
    this.patternIntegerElement,
    this.patternMarkdown,
    this.patternMarkdownElement,
    this.patternOid,
    this.patternOidElement,
    this.patternPositiveInt,
    this.patternPositiveIntElement,
    this.patternString,
    this.patternStringElement,
    this.patternTime,
    this.patternTimeElement,
    this.patternUnsignedInt,
    this.patternUnsignedIntElement,
    this.patternUri,
    this.patternUriElement,
    this.patternUrl,
    this.patternUrlElement,
    this.patternUuid,
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
    this.minValueDateElement,
    this.minValueDateTime,
    this.minValueDateTimeElement,
    this.minValueInstant,
    this.minValueInstantElement,
    this.minValueTime,
    this.minValueTimeElement,
    this.minValueDecimal,
    this.minValueDecimalElement,
    this.minValueInteger,
    this.minValueIntegerElement,
    this.minValuePositiveInt,
    this.minValuePositiveIntElement,
    this.minValueUnsignedInt,
    this.minValueUnsignedIntElement,
    this.minValueQuantity,
    this.maxValueDate,
    this.maxValueDateElement,
    this.maxValueDateTime,
    this.maxValueDateTimeElement,
    this.maxValueInstant,
    this.maxValueInstantElement,
    this.maxValueTime,
    this.maxValueTimeElement,
    this.maxValueDecimal,
    this.maxValueDecimalElement,
    this.maxValueInteger,
    this.maxValueIntegerElement,
    this.maxValuePositiveInt,
    this.maxValuePositiveIntElement,
    this.maxValueUnsignedInt,
    this.maxValueUnsignedIntElement,
    this.maxValueQuantity,
    this.maxLength,
    this.maxLengthElement,
    this.condition,
    this.conditionElement,
    this.constraint,
    this.mustSupport,
    this.mustSupportElement,
    this.isModifier,
    this.isModifierElement,
    this.isModifierReason,
    this.isModifierReasonElement,
    this.isSummary,
    this.isSummaryElement,
    this.binding,
    this.mapping,
  });

}


@Data()
@JsonCodable()
class ElementDefinitionSlicing {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final List<ElementDefinitionDiscriminator>? discriminator;
  final FhirString? description;
  final Element? descriptionElement;
  final FhirBoolean? ordered;
  final Element? orderedElement;
  final dynamic? rules;
  final Element? rulesElement;

  ElementDefinitionSlicing({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.discriminator,
    this.description,
    this.descriptionElement,
    this.ordered,
    this.orderedElement,
    this.rules,
    this.rulesElement,
  });

}


@Data()
@JsonCodable()
class ElementDefinitionDiscriminator {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final dynamic? type;
  final Element? typeElement;
  final FhirString? path;
  final Element? pathElement;

  ElementDefinitionDiscriminator({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.typeElement,
    this.path,
    this.pathElement,
  });

}


@Data()
@JsonCodable()
class ElementDefinitionBase {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirString? path;
  final Element? pathElement;
  final FhirUnsignedInt? min;
  final Element? minElement;
  final FhirString? max;
  final Element? maxElement;

  ElementDefinitionBase({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.path,
    this.pathElement,
    this.min,
    this.minElement,
    this.max,
    this.maxElement,
  });

}


@Data()
@JsonCodable()
class ElementDefinitionType {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirUri? code;
  final Element? codeElement;
  final List<FhirCanonical>? profile;
  final List<FhirCanonical>? targetProfile;
  final List<dynamic>? aggregation;
  final List<Element>? aggregationElement;
  final dynamic? versioning;
  final Element? versioningElement;

  ElementDefinitionType({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.codeElement,
    this.profile,
    this.targetProfile,
    this.aggregation,
    this.aggregationElement,
    this.versioning,
    this.versioningElement,
  });

}


@Data()
@JsonCodable()
class ElementDefinitionExample {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirString? label;
  final Element? labelElement;
  final FhirString? valueBase64Binary;
  final Element? valueBase64BinaryElement;
  final bool? valueBoolean;
  final Element? valueBooleanElement;
  final FhirString? valueCanonical;
  final Element? valueCanonicalElement;
  final FhirString? valueCode;
  final Element? valueCodeElement;
  final FhirString? valueDate;
  final Element? valueDateElement;
  final FhirString? valueDateTime;
  final Element? valueDateTimeElement;
  final double? valueDecimal;
  final Element? valueDecimalElement;
  final FhirString? valueId;
  final Element? valueIdElement;
  final FhirString? valueInstant;
  final Element? valueInstantElement;
  final double? valueInteger;
  final Element? valueIntegerElement;
  final FhirString? valueMarkdown;
  final Element? valueMarkdownElement;
  final FhirString? valueOid;
  final Element? valueOidElement;
  final double? valuePositiveInt;
  final Element? valuePositiveIntElement;
  final FhirString? valueString;
  final Element? valueStringElement;
  final FhirString? valueTime;
  final Element? valueTimeElement;
  final double? valueUnsignedInt;
  final Element? valueUnsignedIntElement;
  final FhirString? valueUri;
  final Element? valueUriElement;
  final FhirString? valueUrl;
  final Element? valueUrlElement;
  final FhirString? valueUuid;
  final Element? valueUuidElement;
  final Address? valueAddress;
  final Age? valueAge;
  final Annotation? valueAnnotation;
  final Attachment? valueAttachment;
  final CodeableConcept? valueCodeableConcept;
  final CodeableReference? valueCodeableReference;
  final Coding? valueCoding;
  final ContactPoint? valueContactPoint;
  final Count? valueCount;
  final Distance? valueDistance;
  final FhirDuration? valueDuration;
  final HumanName? valueHumanName;
  final Identifier? valueIdentifier;
  final Money? valueMoney;
  final Period? valuePeriod;
  final Quantity? valueQuantity;
  final Range? valueRange;
  final Ratio? valueRatio;
  final RatioRange? valueRatioRange;
  final Reference? valueReference;
  final SampledData? valueSampledData;
  final Signature? valueSignature;
  final Timing? valueTiming;
  final ContactDetail? valueContactDetail;
  final Contributor? valueContributor;
  final DataRequirement? valueDataRequirement;
  final FhirExpression? valueExpression;
  final ParameterDefinition? valueParameterDefinition;
  final RelatedArtifact? valueRelatedArtifact;
  final TriggerDefinition? valueTriggerDefinition;
  final UsageContext? valueUsageContext;
  final Dosage? valueDosage;

  ElementDefinitionExample({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.label,
    this.labelElement,
    this.valueBase64Binary,
    this.valueBase64BinaryElement,
    this.valueBoolean,
    this.valueBooleanElement,
    this.valueCanonical,
    this.valueCanonicalElement,
    this.valueCode,
    this.valueCodeElement,
    this.valueDate,
    this.valueDateElement,
    this.valueDateTime,
    this.valueDateTimeElement,
    this.valueDecimal,
    this.valueDecimalElement,
    this.valueId,
    this.valueIdElement,
    this.valueInstant,
    this.valueInstantElement,
    this.valueInteger,
    this.valueIntegerElement,
    this.valueMarkdown,
    this.valueMarkdownElement,
    this.valueOid,
    this.valueOidElement,
    this.valuePositiveInt,
    this.valuePositiveIntElement,
    this.valueString,
    this.valueStringElement,
    this.valueTime,
    this.valueTimeElement,
    this.valueUnsignedInt,
    this.valueUnsignedIntElement,
    this.valueUri,
    this.valueUriElement,
    this.valueUrl,
    this.valueUrlElement,
    this.valueUuid,
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
  });

}


@Data()
@JsonCodable()
class ElementDefinitionConstraint {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirId? key;
  final Element? keyElement;
  final FhirString? requirements;
  final Element? requirementsElement;
  final dynamic? severity;
  final Element? severityElement;
  final FhirString? human;
  final Element? humanElement;
  final FhirString? expression;
  final Element? expressionElement;
  final FhirString? xpath;
  final Element? xpathElement;
  final FhirCanonical? source;

  ElementDefinitionConstraint({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.key,
    this.keyElement,
    this.requirements,
    this.requirementsElement,
    this.severity,
    this.severityElement,
    this.human,
    this.humanElement,
    this.expression,
    this.expressionElement,
    this.xpath,
    this.xpathElement,
    this.source,
  });

}


@Data()
@JsonCodable()
class ElementDefinitionBinding {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final dynamic? strength;
  final Element? strengthElement;
  final FhirString? description;
  final Element? descriptionElement;
  final FhirCanonical? valueSet;

  ElementDefinitionBinding({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.strength,
    this.strengthElement,
    this.description,
    this.descriptionElement,
    this.valueSet,
  });

}


@Data()
@JsonCodable()
class ElementDefinitionMapping {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirId? identity;
  final Element? identityElement;
  final FhirCode? language;
  final Element? languageElement;
  final FhirString? map;
  final Element? mapElement;
  final FhirString? comment;
  final Element? commentElement;

  ElementDefinitionMapping({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.identity,
    this.identityElement,
    this.language,
    this.languageElement,
    this.map,
    this.mapElement,
    this.comment,
    this.commentElement,
  });

}



