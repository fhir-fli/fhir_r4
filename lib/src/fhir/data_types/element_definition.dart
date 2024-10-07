import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class ElementDefinition extends BackboneType {
  ElementDefinition({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.path,
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirString path;
  final Element? pathElement;
  final List<FhirCode>? representation;
  final List<Element>? representationElement;
  final FhirString? sliceName;
  final Element? sliceNameElement;
  final FhirBoolean? sliceIsConstraining;
  final Element? sliceIsConstrainingElement;
  final FhirString? label;
  final Element? labelElement;
  final List<Coding>? code;
  final Element? slicing;
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
  final Element? base;
  final FhirUri? contentReference;
  final Element? contentReferenceElement;
  final List<Element>? type;
  final FhirBase64Binary? defaultValueBase64Binary;
  final Element? defaultValueBase64BinaryElement;
  final FhirBoolean? defaultValueBoolean;
  final Element? defaultValueBooleanElement;
  final FhirCanonical? defaultValueCanonical;
  final Element? defaultValueCanonicalElement;
  final FhirCode? defaultValueCode;
  final Element? defaultValueCodeElement;
  final FhirDate? defaultValueDate;
  final Element? defaultValueDateElement;
  final FhirDateTime? defaultValueDateTime;
  final Element? defaultValueDateTimeElement;
  final FhirDecimal? defaultValueDecimal;
  final Element? defaultValueDecimalElement;
  final FhirId? defaultValueId;
  final Element? defaultValueIdElement;
  final FhirInstant? defaultValueInstant;
  final Element? defaultValueInstantElement;
  final FhirInteger? defaultValueInteger;
  final Element? defaultValueIntegerElement;
  final FhirMarkdown? defaultValueMarkdown;
  final Element? defaultValueMarkdownElement;
  final FhirOid? defaultValueOid;
  final Element? defaultValueOidElement;
  final FhirPositiveInt? defaultValuePositiveInt;
  final Element? defaultValuePositiveIntElement;
  final FhirString? defaultValueString;
  final Element? defaultValueStringElement;
  final FhirTime? defaultValueTime;
  final Element? defaultValueTimeElement;
  final FhirUnsignedInt? defaultValueUnsignedInt;
  final Element? defaultValueUnsignedIntElement;
  final FhirUri? defaultValueUri;
  final Element? defaultValueUriElement;
  final FhirUrl? defaultValueUrl;
  final Element? defaultValueUrlElement;
  final FhirUuid? defaultValueUuid;
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
  final FhirBase64Binary? fixedBase64Binary;
  final Element? fixedBase64BinaryElement;
  final FhirBoolean? fixedBoolean;
  final Element? fixedBooleanElement;
  final FhirCanonical? fixedCanonical;
  final Element? fixedCanonicalElement;
  final FhirCode? fixedCode;
  final Element? fixedCodeElement;
  final FhirDate? fixedDate;
  final Element? fixedDateElement;
  final FhirDateTime? fixedDateTime;
  final Element? fixedDateTimeElement;
  final FhirDecimal? fixedDecimal;
  final Element? fixedDecimalElement;
  final FhirId? fixedId;
  final Element? fixedIdElement;
  final FhirInstant? fixedInstant;
  final Element? fixedInstantElement;
  final FhirInteger? fixedInteger;
  final Element? fixedIntegerElement;
  final FhirMarkdown? fixedMarkdown;
  final Element? fixedMarkdownElement;
  final FhirOid? fixedOid;
  final Element? fixedOidElement;
  final FhirPositiveInt? fixedPositiveInt;
  final Element? fixedPositiveIntElement;
  final FhirString? fixedString;
  final Element? fixedStringElement;
  final FhirTime? fixedTime;
  final Element? fixedTimeElement;
  final FhirUnsignedInt? fixedUnsignedInt;
  final Element? fixedUnsignedIntElement;
  final FhirUri? fixedUri;
  final Element? fixedUriElement;
  final FhirUrl? fixedUrl;
  final Element? fixedUrlElement;
  final FhirUuid? fixedUuid;
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
  final FhirBase64Binary? patternBase64Binary;
  final Element? patternBase64BinaryElement;
  final FhirBoolean? patternBoolean;
  final Element? patternBooleanElement;
  final FhirCanonical? patternCanonical;
  final Element? patternCanonicalElement;
  final FhirCode? patternCode;
  final Element? patternCodeElement;
  final FhirDate? patternDate;
  final Element? patternDateElement;
  final FhirDateTime? patternDateTime;
  final Element? patternDateTimeElement;
  final FhirDecimal? patternDecimal;
  final Element? patternDecimalElement;
  final FhirId? patternId;
  final Element? patternIdElement;
  final FhirInstant? patternInstant;
  final Element? patternInstantElement;
  final FhirInteger? patternInteger;
  final Element? patternIntegerElement;
  final FhirMarkdown? patternMarkdown;
  final Element? patternMarkdownElement;
  final FhirOid? patternOid;
  final Element? patternOidElement;
  final FhirPositiveInt? patternPositiveInt;
  final Element? patternPositiveIntElement;
  final FhirString? patternString;
  final Element? patternStringElement;
  final FhirTime? patternTime;
  final Element? patternTimeElement;
  final FhirUnsignedInt? patternUnsignedInt;
  final Element? patternUnsignedIntElement;
  final FhirUri? patternUri;
  final Element? patternUriElement;
  final FhirUrl? patternUrl;
  final Element? patternUrlElement;
  final FhirUuid? patternUuid;
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
  final List<Element>? example;
  final FhirDate? minValueDate;
  final Element? minValueDateElement;
  final FhirDateTime? minValueDateTime;
  final Element? minValueDateTimeElement;
  final FhirInstant? minValueInstant;
  final Element? minValueInstantElement;
  final FhirTime? minValueTime;
  final Element? minValueTimeElement;
  final FhirDecimal? minValueDecimal;
  final Element? minValueDecimalElement;
  final FhirInteger? minValueInteger;
  final Element? minValueIntegerElement;
  final FhirPositiveInt? minValuePositiveInt;
  final Element? minValuePositiveIntElement;
  final FhirUnsignedInt? minValueUnsignedInt;
  final Element? minValueUnsignedIntElement;
  final Quantity? minValueQuantity;
  final FhirDate? maxValueDate;
  final Element? maxValueDateElement;
  final FhirDateTime? maxValueDateTime;
  final Element? maxValueDateTimeElement;
  final FhirInstant? maxValueInstant;
  final Element? maxValueInstantElement;
  final FhirTime? maxValueTime;
  final Element? maxValueTimeElement;
  final FhirDecimal? maxValueDecimal;
  final Element? maxValueDecimalElement;
  final FhirInteger? maxValueInteger;
  final Element? maxValueIntegerElement;
  final FhirPositiveInt? maxValuePositiveInt;
  final Element? maxValuePositiveIntElement;
  final FhirUnsignedInt? maxValueUnsignedInt;
  final Element? maxValueUnsignedIntElement;
  final Quantity? maxValueQuantity;
  final FhirInteger? maxLength;
  final Element? maxLengthElement;
  final List<FhirId>? condition;
  final List<Element>? conditionElement;
  final List<Element>? constraint;
  final FhirBoolean? mustSupport;
  final Element? mustSupportElement;
  final FhirBoolean? isModifier;
  final Element? isModifierElement;
  final FhirString? isModifierReason;
  final Element? isModifierReasonElement;
  final FhirBoolean? isSummary;
  final Element? isSummaryElement;
  final Element? binding;
  final List<Element>? mapping;
  @override
  ElementDefinition clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ElementDefinitionSlicing extends Element {
  ElementDefinitionSlicing({
    super.id,
    super.extension_,
    this.discriminator,
    this.description,
    this.descriptionElement,
    this.ordered,
    this.orderedElement,
    required this.rules,
    this.rulesElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final List<Element>? discriminator;
  final FhirString? description;
  final Element? descriptionElement;
  final FhirBoolean? ordered;
  final Element? orderedElement;
  final FhirCode rules;
  final Element? rulesElement;
  @override
  ElementDefinitionSlicing clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ElementDefinitionDiscriminator extends Element {
  ElementDefinitionDiscriminator({
    super.id,
    super.extension_,
    required this.type,
    this.typeElement,
    required this.path,
    this.pathElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirCode type;
  final Element? typeElement;
  final FhirString path;
  final Element? pathElement;
  @override
  ElementDefinitionDiscriminator clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ElementDefinitionBase extends Element {
  ElementDefinitionBase({
    super.id,
    super.extension_,
    required this.path,
    this.pathElement,
    required this.min,
    this.minElement,
    required this.max,
    this.maxElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirString path;
  final Element? pathElement;
  final FhirUnsignedInt min;
  final Element? minElement;
  final FhirString max;
  final Element? maxElement;
  @override
  ElementDefinitionBase clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ElementDefinitionType extends Element {
  ElementDefinitionType({
    super.id,
    super.extension_,
    required this.code,
    this.codeElement,
    this.profile,
    this.profileElement,
    this.targetProfile,
    this.targetProfileElement,
    this.aggregation,
    this.aggregationElement,
    this.versioning,
    this.versioningElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirUri code;
  final Element? codeElement;
  final List<FhirCanonical>? profile;
  final List<Element>? profileElement;
  final List<FhirCanonical>? targetProfile;
  final List<Element>? targetProfileElement;
  final List<FhirCode>? aggregation;
  final List<Element>? aggregationElement;
  final FhirCode? versioning;
  final Element? versioningElement;
  @override
  ElementDefinitionType clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ElementDefinitionExample extends Element {
  ElementDefinitionExample({
    super.id,
    super.extension_,
    required this.label,
    this.labelElement,
    required this.valueBase64Binary,
    this.valueBase64BinaryElement,
    required this.valueBoolean,
    this.valueBooleanElement,
    required this.valueCanonical,
    this.valueCanonicalElement,
    required this.valueCode,
    this.valueCodeElement,
    required this.valueDate,
    this.valueDateElement,
    required this.valueDateTime,
    this.valueDateTimeElement,
    required this.valueDecimal,
    this.valueDecimalElement,
    required this.valueId,
    this.valueIdElement,
    required this.valueInstant,
    this.valueInstantElement,
    required this.valueInteger,
    this.valueIntegerElement,
    required this.valueMarkdown,
    this.valueMarkdownElement,
    required this.valueOid,
    this.valueOidElement,
    required this.valuePositiveInt,
    this.valuePositiveIntElement,
    required this.valueString,
    this.valueStringElement,
    required this.valueTime,
    this.valueTimeElement,
    required this.valueUnsignedInt,
    this.valueUnsignedIntElement,
    required this.valueUri,
    this.valueUriElement,
    required this.valueUrl,
    this.valueUrlElement,
    required this.valueUuid,
    this.valueUuidElement,
    required this.valueAddress,
    required this.valueAge,
    required this.valueAnnotation,
    required this.valueAttachment,
    required this.valueCodeableConcept,
    required this.valueCodeableReference,
    required this.valueCoding,
    required this.valueContactPoint,
    required this.valueCount,
    required this.valueDistance,
    required this.valueDuration,
    required this.valueHumanName,
    required this.valueIdentifier,
    required this.valueMoney,
    required this.valuePeriod,
    required this.valueQuantity,
    required this.valueRange,
    required this.valueRatio,
    required this.valueRatioRange,
    required this.valueReference,
    required this.valueSampledData,
    required this.valueSignature,
    required this.valueTiming,
    required this.valueContactDetail,
    required this.valueContributor,
    required this.valueDataRequirement,
    required this.valueExpression,
    required this.valueParameterDefinition,
    required this.valueRelatedArtifact,
    required this.valueTriggerDefinition,
    required this.valueUsageContext,
    required this.valueDosage,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirString label;
  final Element? labelElement;
  final FhirBase64Binary valueBase64Binary;
  final Element? valueBase64BinaryElement;
  final FhirBoolean valueBoolean;
  final Element? valueBooleanElement;
  final FhirCanonical valueCanonical;
  final Element? valueCanonicalElement;
  final FhirCode valueCode;
  final Element? valueCodeElement;
  final FhirDate valueDate;
  final Element? valueDateElement;
  final FhirDateTime valueDateTime;
  final Element? valueDateTimeElement;
  final FhirDecimal valueDecimal;
  final Element? valueDecimalElement;
  final FhirId valueId;
  final Element? valueIdElement;
  final FhirInstant valueInstant;
  final Element? valueInstantElement;
  final FhirInteger valueInteger;
  final Element? valueIntegerElement;
  final FhirMarkdown valueMarkdown;
  final Element? valueMarkdownElement;
  final FhirOid valueOid;
  final Element? valueOidElement;
  final FhirPositiveInt valuePositiveInt;
  final Element? valuePositiveIntElement;
  final FhirString valueString;
  final Element? valueStringElement;
  final FhirTime valueTime;
  final Element? valueTimeElement;
  final FhirUnsignedInt valueUnsignedInt;
  final Element? valueUnsignedIntElement;
  final FhirUri valueUri;
  final Element? valueUriElement;
  final FhirUrl valueUrl;
  final Element? valueUrlElement;
  final FhirUuid valueUuid;
  final Element? valueUuidElement;
  final Address valueAddress;
  final Age valueAge;
  final Annotation valueAnnotation;
  final Attachment valueAttachment;
  final CodeableConcept valueCodeableConcept;
  final CodeableReference valueCodeableReference;
  final Coding valueCoding;
  final ContactPoint valueContactPoint;
  final Count valueCount;
  final Distance valueDistance;
  final FhirDuration valueDuration;
  final HumanName valueHumanName;
  final Identifier valueIdentifier;
  final Money valueMoney;
  final Period valuePeriod;
  final Quantity valueQuantity;
  final Range valueRange;
  final Ratio valueRatio;
  final RatioRange valueRatioRange;
  final Reference valueReference;
  final SampledData valueSampledData;
  final Signature valueSignature;
  final Timing valueTiming;
  final ContactDetail valueContactDetail;
  final Contributor valueContributor;
  final DataRequirement valueDataRequirement;
  final FhirExpression valueExpression;
  final ParameterDefinition valueParameterDefinition;
  final RelatedArtifact valueRelatedArtifact;
  final TriggerDefinition valueTriggerDefinition;
  final UsageContext valueUsageContext;
  final Dosage valueDosage;
  @override
  ElementDefinitionExample clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ElementDefinitionConstraint extends Element {
  ElementDefinitionConstraint({
    super.id,
    super.extension_,
    required this.key,
    this.keyElement,
    this.requirements,
    this.requirementsElement,
    required this.severity,
    this.severityElement,
    required this.human,
    this.humanElement,
    this.expression,
    this.expressionElement,
    this.xpath,
    this.xpathElement,
    this.source,
    this.sourceElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirId key;
  final Element? keyElement;
  final FhirString? requirements;
  final Element? requirementsElement;
  final FhirCode severity;
  final Element? severityElement;
  final FhirString human;
  final Element? humanElement;
  final FhirString? expression;
  final Element? expressionElement;
  final FhirString? xpath;
  final Element? xpathElement;
  final FhirCanonical? source;
  final Element? sourceElement;
  @override
  ElementDefinitionConstraint clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ElementDefinitionBinding extends Element {
  ElementDefinitionBinding({
    super.id,
    super.extension_,
    required this.strength,
    this.strengthElement,
    this.description,
    this.descriptionElement,
    this.valueSet,
    this.valueSetElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirCode strength;
  final Element? strengthElement;
  final FhirString? description;
  final Element? descriptionElement;
  final FhirCanonical? valueSet;
  final Element? valueSetElement;
  @override
  ElementDefinitionBinding clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ElementDefinitionMapping extends Element {
  ElementDefinitionMapping({
    super.id,
    super.extension_,
    required this.identity,
    this.identityElement,
    this.language,
    this.languageElement,
    required this.map,
    this.mapElement,
    this.comment,
    this.commentElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirId identity;
  final Element? identityElement;
  final FhirCode? language;
  final Element? languageElement;
  final FhirString map;
  final Element? mapElement;
  final FhirString? comment;
  final Element? commentElement;
  @override
  ElementDefinitionMapping clone() => throw UnimplementedError();
}
