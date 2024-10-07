import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class ElementDefinition extends BackboneType {
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
  final List<Element>? discriminator;
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
  final FhirBase64Binary? defaultValueFhirBase64Binary;
  final Element? defaultValueFhirBase64BinaryElement;
  final FhirBoolean? defaultValueFhirBoolean;
  final Element? defaultValueFhirBooleanElement;
  final FhirCanonical? defaultValueFhirCanonical;
  final Element? defaultValueFhirCanonicalElement;
  final FhirCode? defaultValueFhirCode;
  final Element? defaultValueFhirCodeElement;
  final FhirDate? defaultValueFhirDate;
  final Element? defaultValueFhirDateElement;
  final FhirDateTime? defaultValueFhirDateTime;
  final Element? defaultValueFhirDateTimeElement;
  final FhirDecimal? defaultValueFhirDecimal;
  final Element? defaultValueFhirDecimalElement;
  final FhirId? defaultValueFhirId;
  final Element? defaultValueFhirIdElement;
  final FhirInstant? defaultValueFhirInstant;
  final Element? defaultValueFhirInstantElement;
  final FhirInteger? defaultValueFhirInteger;
  final Element? defaultValueFhirIntegerElement;
  final FhirMarkdown? defaultValueFhirMarkdown;
  final Element? defaultValueFhirMarkdownElement;
  final FhirOid? defaultValueFhirOid;
  final Element? defaultValueFhirOidElement;
  final FhirPositiveInt? defaultValueFhirPositiveInt;
  final Element? defaultValueFhirPositiveIntElement;
  final FhirString? defaultValueFhirString;
  final Element? defaultValueFhirStringElement;
  final FhirTime? defaultValueFhirTime;
  final Element? defaultValueFhirTimeElement;
  final FhirUnsignedInt? defaultValueFhirUnsignedInt;
  final Element? defaultValueFhirUnsignedIntElement;
  final FhirUri? defaultValueFhirUri;
  final Element? defaultValueFhirUriElement;
  final FhirUrl? defaultValueFhirUrl;
  final Element? defaultValueFhirUrlElement;
  final FhirUuid? defaultValueFhirUuid;
  final Element? defaultValueFhirUuidElement;
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
  final FhirDuration? defaultValueFhirDuration;
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
  final FhirExpression? defaultValueFhirExpression;
  final ParameterDefinition? defaultValueParameterDefinition;
  final RelatedArtifact? defaultValueRelatedArtifact;
  final TriggerDefinition? defaultValueTriggerDefinition;
  final UsageContext? defaultValueUsageContext;
  final Dosage? defaultValueDosage;
  final FhirMarkdown? meaningWhenMissing;
  final Element? meaningWhenMissingElement;
  final FhirString? orderMeaning;
  final Element? orderMeaningElement;
  final FhirBase64Binary? fixedFhirBase64Binary;
  final Element? fixedFhirBase64BinaryElement;
  final FhirBoolean? fixedFhirBoolean;
  final Element? fixedFhirBooleanElement;
  final FhirCanonical? fixedFhirCanonical;
  final Element? fixedFhirCanonicalElement;
  final FhirCode? fixedFhirCode;
  final Element? fixedFhirCodeElement;
  final FhirDate? fixedFhirDate;
  final Element? fixedFhirDateElement;
  final FhirDateTime? fixedFhirDateTime;
  final Element? fixedFhirDateTimeElement;
  final FhirDecimal? fixedFhirDecimal;
  final Element? fixedFhirDecimalElement;
  final FhirId? fixedFhirId;
  final Element? fixedFhirIdElement;
  final FhirInstant? fixedFhirInstant;
  final Element? fixedFhirInstantElement;
  final FhirInteger? fixedFhirInteger;
  final Element? fixedFhirIntegerElement;
  final FhirMarkdown? fixedFhirMarkdown;
  final Element? fixedFhirMarkdownElement;
  final FhirOid? fixedFhirOid;
  final Element? fixedFhirOidElement;
  final FhirPositiveInt? fixedFhirPositiveInt;
  final Element? fixedFhirPositiveIntElement;
  final FhirString? fixedFhirString;
  final Element? fixedFhirStringElement;
  final FhirTime? fixedFhirTime;
  final Element? fixedFhirTimeElement;
  final FhirUnsignedInt? fixedFhirUnsignedInt;
  final Element? fixedFhirUnsignedIntElement;
  final FhirUri? fixedFhirUri;
  final Element? fixedFhirUriElement;
  final FhirUrl? fixedFhirUrl;
  final Element? fixedFhirUrlElement;
  final FhirUuid? fixedFhirUuid;
  final Element? fixedFhirUuidElement;
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
  final FhirDuration? fixedFhirDuration;
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
  final FhirExpression? fixedFhirExpression;
  final ParameterDefinition? fixedParameterDefinition;
  final RelatedArtifact? fixedRelatedArtifact;
  final TriggerDefinition? fixedTriggerDefinition;
  final UsageContext? fixedUsageContext;
  final Dosage? fixedDosage;
  final FhirBase64Binary? patternFhirBase64Binary;
  final Element? patternFhirBase64BinaryElement;
  final FhirBoolean? patternFhirBoolean;
  final Element? patternFhirBooleanElement;
  final FhirCanonical? patternFhirCanonical;
  final Element? patternFhirCanonicalElement;
  final FhirCode? patternFhirCode;
  final Element? patternFhirCodeElement;
  final FhirDate? patternFhirDate;
  final Element? patternFhirDateElement;
  final FhirDateTime? patternFhirDateTime;
  final Element? patternFhirDateTimeElement;
  final FhirDecimal? patternFhirDecimal;
  final Element? patternFhirDecimalElement;
  final FhirId? patternFhirId;
  final Element? patternFhirIdElement;
  final FhirInstant? patternFhirInstant;
  final Element? patternFhirInstantElement;
  final FhirInteger? patternFhirInteger;
  final Element? patternFhirIntegerElement;
  final FhirMarkdown? patternFhirMarkdown;
  final Element? patternFhirMarkdownElement;
  final FhirOid? patternFhirOid;
  final Element? patternFhirOidElement;
  final FhirPositiveInt? patternFhirPositiveInt;
  final Element? patternFhirPositiveIntElement;
  final FhirString? patternFhirString;
  final Element? patternFhirStringElement;
  final FhirTime? patternFhirTime;
  final Element? patternFhirTimeElement;
  final FhirUnsignedInt? patternFhirUnsignedInt;
  final Element? patternFhirUnsignedIntElement;
  final FhirUri? patternFhirUri;
  final Element? patternFhirUriElement;
  final FhirUrl? patternFhirUrl;
  final Element? patternFhirUrlElement;
  final FhirUuid? patternFhirUuid;
  final Element? patternFhirUuidElement;
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
  final FhirDuration? patternFhirDuration;
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
  final FhirExpression? patternFhirExpression;
  final ParameterDefinition? patternParameterDefinition;
  final RelatedArtifact? patternRelatedArtifact;
  final TriggerDefinition? patternTriggerDefinition;
  final UsageContext? patternUsageContext;
  final Dosage? patternDosage;
  final List<Element>? example;
  final FhirDate? minValueFhirDate;
  final Element? minValueFhirDateElement;
  final FhirDateTime? minValueFhirDateTime;
  final Element? minValueFhirDateTimeElement;
  final FhirInstant? minValueFhirInstant;
  final Element? minValueFhirInstantElement;
  final FhirTime? minValueFhirTime;
  final Element? minValueFhirTimeElement;
  final FhirDecimal? minValueFhirDecimal;
  final Element? minValueFhirDecimalElement;
  final FhirInteger? minValueFhirInteger;
  final Element? minValueFhirIntegerElement;
  final FhirPositiveInt? minValueFhirPositiveInt;
  final Element? minValueFhirPositiveIntElement;
  final FhirUnsignedInt? minValueFhirUnsignedInt;
  final Element? minValueFhirUnsignedIntElement;
  final Quantity? minValueQuantity;
  final FhirDate? maxValueFhirDate;
  final Element? maxValueFhirDateElement;
  final FhirDateTime? maxValueFhirDateTime;
  final Element? maxValueFhirDateTimeElement;
  final FhirInstant? maxValueFhirInstant;
  final Element? maxValueFhirInstantElement;
  final FhirTime? maxValueFhirTime;
  final Element? maxValueFhirTimeElement;
  final FhirDecimal? maxValueFhirDecimal;
  final Element? maxValueFhirDecimalElement;
  final FhirInteger? maxValueFhirInteger;
  final Element? maxValueFhirIntegerElement;
  final FhirPositiveInt? maxValueFhirPositiveInt;
  final Element? maxValueFhirPositiveIntElement;
  final FhirUnsignedInt? maxValueFhirUnsignedInt;
  final Element? maxValueFhirUnsignedIntElement;
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
    this.discriminator,
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
    this.defaultValueFhirBase64Binary,
this.defaultValueFhirBase64BinaryElement,
    this.defaultValueFhirBoolean,
this.defaultValueFhirBooleanElement,
    this.defaultValueFhirCanonical,
this.defaultValueFhirCanonicalElement,
    this.defaultValueFhirCode,
this.defaultValueFhirCodeElement,
    this.defaultValueFhirDate,
this.defaultValueFhirDateElement,
    this.defaultValueFhirDateTime,
this.defaultValueFhirDateTimeElement,
    this.defaultValueFhirDecimal,
this.defaultValueFhirDecimalElement,
    this.defaultValueFhirId,
this.defaultValueFhirIdElement,
    this.defaultValueFhirInstant,
this.defaultValueFhirInstantElement,
    this.defaultValueFhirInteger,
this.defaultValueFhirIntegerElement,
    this.defaultValueFhirMarkdown,
this.defaultValueFhirMarkdownElement,
    this.defaultValueFhirOid,
this.defaultValueFhirOidElement,
    this.defaultValueFhirPositiveInt,
this.defaultValueFhirPositiveIntElement,
    this.defaultValueFhirString,
this.defaultValueFhirStringElement,
    this.defaultValueFhirTime,
this.defaultValueFhirTimeElement,
    this.defaultValueFhirUnsignedInt,
this.defaultValueFhirUnsignedIntElement,
    this.defaultValueFhirUri,
this.defaultValueFhirUriElement,
    this.defaultValueFhirUrl,
this.defaultValueFhirUrlElement,
    this.defaultValueFhirUuid,
this.defaultValueFhirUuidElement,
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
    this.defaultValueFhirDuration,
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
    this.defaultValueFhirExpression,
    this.defaultValueParameterDefinition,
    this.defaultValueRelatedArtifact,
    this.defaultValueTriggerDefinition,
    this.defaultValueUsageContext,
    this.defaultValueDosage,
    this.meaningWhenMissing,
this.meaningWhenMissingElement,
    this.orderMeaning,
this.orderMeaningElement,
    this.fixedFhirBase64Binary,
this.fixedFhirBase64BinaryElement,
    this.fixedFhirBoolean,
this.fixedFhirBooleanElement,
    this.fixedFhirCanonical,
this.fixedFhirCanonicalElement,
    this.fixedFhirCode,
this.fixedFhirCodeElement,
    this.fixedFhirDate,
this.fixedFhirDateElement,
    this.fixedFhirDateTime,
this.fixedFhirDateTimeElement,
    this.fixedFhirDecimal,
this.fixedFhirDecimalElement,
    this.fixedFhirId,
this.fixedFhirIdElement,
    this.fixedFhirInstant,
this.fixedFhirInstantElement,
    this.fixedFhirInteger,
this.fixedFhirIntegerElement,
    this.fixedFhirMarkdown,
this.fixedFhirMarkdownElement,
    this.fixedFhirOid,
this.fixedFhirOidElement,
    this.fixedFhirPositiveInt,
this.fixedFhirPositiveIntElement,
    this.fixedFhirString,
this.fixedFhirStringElement,
    this.fixedFhirTime,
this.fixedFhirTimeElement,
    this.fixedFhirUnsignedInt,
this.fixedFhirUnsignedIntElement,
    this.fixedFhirUri,
this.fixedFhirUriElement,
    this.fixedFhirUrl,
this.fixedFhirUrlElement,
    this.fixedFhirUuid,
this.fixedFhirUuidElement,
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
    this.fixedFhirDuration,
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
    this.fixedFhirExpression,
    this.fixedParameterDefinition,
    this.fixedRelatedArtifact,
    this.fixedTriggerDefinition,
    this.fixedUsageContext,
    this.fixedDosage,
    this.patternFhirBase64Binary,
this.patternFhirBase64BinaryElement,
    this.patternFhirBoolean,
this.patternFhirBooleanElement,
    this.patternFhirCanonical,
this.patternFhirCanonicalElement,
    this.patternFhirCode,
this.patternFhirCodeElement,
    this.patternFhirDate,
this.patternFhirDateElement,
    this.patternFhirDateTime,
this.patternFhirDateTimeElement,
    this.patternFhirDecimal,
this.patternFhirDecimalElement,
    this.patternFhirId,
this.patternFhirIdElement,
    this.patternFhirInstant,
this.patternFhirInstantElement,
    this.patternFhirInteger,
this.patternFhirIntegerElement,
    this.patternFhirMarkdown,
this.patternFhirMarkdownElement,
    this.patternFhirOid,
this.patternFhirOidElement,
    this.patternFhirPositiveInt,
this.patternFhirPositiveIntElement,
    this.patternFhirString,
this.patternFhirStringElement,
    this.patternFhirTime,
this.patternFhirTimeElement,
    this.patternFhirUnsignedInt,
this.patternFhirUnsignedIntElement,
    this.patternFhirUri,
this.patternFhirUriElement,
    this.patternFhirUrl,
this.patternFhirUrlElement,
    this.patternFhirUuid,
this.patternFhirUuidElement,
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
    this.patternFhirDuration,
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
    this.patternFhirExpression,
    this.patternParameterDefinition,
    this.patternRelatedArtifact,
    this.patternTriggerDefinition,
    this.patternUsageContext,
    this.patternDosage,
    this.example,
    this.minValueFhirDate,
this.minValueFhirDateElement,
    this.minValueFhirDateTime,
this.minValueFhirDateTimeElement,
    this.minValueFhirInstant,
this.minValueFhirInstantElement,
    this.minValueFhirTime,
this.minValueFhirTimeElement,
    this.minValueFhirDecimal,
this.minValueFhirDecimalElement,
    this.minValueFhirInteger,
this.minValueFhirIntegerElement,
    this.minValueFhirPositiveInt,
this.minValueFhirPositiveIntElement,
    this.minValueFhirUnsignedInt,
this.minValueFhirUnsignedIntElement,
    this.minValueQuantity,
    this.maxValueFhirDate,
this.maxValueFhirDateElement,
    this.maxValueFhirDateTime,
this.maxValueFhirDateTimeElement,
    this.maxValueFhirInstant,
this.maxValueFhirInstantElement,
    this.maxValueFhirTime,
this.maxValueFhirTimeElement,
    this.maxValueFhirDecimal,
this.maxValueFhirDecimalElement,
    this.maxValueFhirInteger,
this.maxValueFhirIntegerElement,
    this.maxValueFhirPositiveInt,
this.maxValueFhirPositiveIntElement,
    this.maxValueFhirUnsignedInt,
this.maxValueFhirUnsignedIntElement,
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

@override
ElementDefinition clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ElementDefinitionSlicing extends Element {
  final FhirString? description;
  final Element? descriptionElement;
  final FhirBoolean? ordered;
  final Element? orderedElement;
  final FhirCode rules;
  final Element? rulesElement;

  ElementDefinitionSlicing({
    super.id,
    super.extension_,
    this.description,
this.descriptionElement,
    this.ordered,
this.orderedElement,
    required this.rules,
this.rulesElement,
  });

@override
ElementDefinitionSlicing clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ElementDefinitionDiscriminator extends Element {
  final FhirCode type;
  final Element? typeElement;
  final FhirString path;
  final Element? pathElement;

  ElementDefinitionDiscriminator({
    super.id,
    super.extension_,
    required this.type,
this.typeElement,
    required this.path,
this.pathElement,
  });

@override
ElementDefinitionDiscriminator clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ElementDefinitionBase extends Element {
  final FhirString path;
  final Element? pathElement;
  final FhirUnsignedInt min;
  final Element? minElement;
  final FhirString max;
  final Element? maxElement;

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

@override
ElementDefinitionBase clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ElementDefinitionType extends Element {
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

@override
ElementDefinitionType clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ElementDefinitionExample extends Element {
  final FhirString label;
  final Element? labelElement;
  final FhirBase64Binary valueFhirBase64Binary;
  final Element? valueFhirBase64BinaryElement;
  final FhirBoolean valueFhirBoolean;
  final Element? valueFhirBooleanElement;
  final FhirCanonical valueFhirCanonical;
  final Element? valueFhirCanonicalElement;
  final FhirCode valueFhirCode;
  final Element? valueFhirCodeElement;
  final FhirDate valueFhirDate;
  final Element? valueFhirDateElement;
  final FhirDateTime valueFhirDateTime;
  final Element? valueFhirDateTimeElement;
  final FhirDecimal valueFhirDecimal;
  final Element? valueFhirDecimalElement;
  final FhirId valueFhirId;
  final Element? valueFhirIdElement;
  final FhirInstant valueFhirInstant;
  final Element? valueFhirInstantElement;
  final FhirInteger valueFhirInteger;
  final Element? valueFhirIntegerElement;
  final FhirMarkdown valueFhirMarkdown;
  final Element? valueFhirMarkdownElement;
  final FhirOid valueFhirOid;
  final Element? valueFhirOidElement;
  final FhirPositiveInt valueFhirPositiveInt;
  final Element? valueFhirPositiveIntElement;
  final FhirString valueFhirString;
  final Element? valueFhirStringElement;
  final FhirTime valueFhirTime;
  final Element? valueFhirTimeElement;
  final FhirUnsignedInt valueFhirUnsignedInt;
  final Element? valueFhirUnsignedIntElement;
  final FhirUri valueFhirUri;
  final Element? valueFhirUriElement;
  final FhirUrl valueFhirUrl;
  final Element? valueFhirUrlElement;
  final FhirUuid valueFhirUuid;
  final Element? valueFhirUuidElement;
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
  final FhirDuration valueFhirDuration;
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
  final FhirExpression valueFhirExpression;
  final ParameterDefinition valueParameterDefinition;
  final RelatedArtifact valueRelatedArtifact;
  final TriggerDefinition valueTriggerDefinition;
  final UsageContext valueUsageContext;
  final Dosage valueDosage;

  ElementDefinitionExample({
    super.id,
    super.extension_,
    required this.label,
this.labelElement,
    required this.valueFhirBase64Binary,
this.valueFhirBase64BinaryElement,
    required this.valueFhirBoolean,
this.valueFhirBooleanElement,
    required this.valueFhirCanonical,
this.valueFhirCanonicalElement,
    required this.valueFhirCode,
this.valueFhirCodeElement,
    required this.valueFhirDate,
this.valueFhirDateElement,
    required this.valueFhirDateTime,
this.valueFhirDateTimeElement,
    required this.valueFhirDecimal,
this.valueFhirDecimalElement,
    required this.valueFhirId,
this.valueFhirIdElement,
    required this.valueFhirInstant,
this.valueFhirInstantElement,
    required this.valueFhirInteger,
this.valueFhirIntegerElement,
    required this.valueFhirMarkdown,
this.valueFhirMarkdownElement,
    required this.valueFhirOid,
this.valueFhirOidElement,
    required this.valueFhirPositiveInt,
this.valueFhirPositiveIntElement,
    required this.valueFhirString,
this.valueFhirStringElement,
    required this.valueFhirTime,
this.valueFhirTimeElement,
    required this.valueFhirUnsignedInt,
this.valueFhirUnsignedIntElement,
    required this.valueFhirUri,
this.valueFhirUriElement,
    required this.valueFhirUrl,
this.valueFhirUrlElement,
    required this.valueFhirUuid,
this.valueFhirUuidElement,
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
    required this.valueFhirDuration,
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
    required this.valueFhirExpression,
    required this.valueParameterDefinition,
    required this.valueRelatedArtifact,
    required this.valueTriggerDefinition,
    required this.valueUsageContext,
    required this.valueDosage,
  });

@override
ElementDefinitionExample clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ElementDefinitionConstraint extends Element {
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

@override
ElementDefinitionConstraint clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ElementDefinitionBinding extends Element {
  final FhirCode strength;
  final Element? strengthElement;
  final FhirString? description;
  final Element? descriptionElement;
  final FhirCanonical? valueSet;
  final Element? valueSetElement;

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

@override
ElementDefinitionBinding clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ElementDefinitionMapping extends Element {
  final FhirId identity;
  final Element? identityElement;
  final FhirCode? language;
  final Element? languageElement;
  final FhirString map;
  final Element? mapElement;
  final FhirString? comment;
  final Element? commentElement;

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

@override
ElementDefinitionMapping clone() => throw UnimplementedError();
}

