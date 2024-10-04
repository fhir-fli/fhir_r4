import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class PrimitiveElement {
  final String id;
  final List<FhirExtension> extension_;
  const PrimitiveElement({
    required this.id,
    required this.extension_,
  });
}

@Data()
@JsonCodable()
class ElementDefinition {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String path;
  final PrimitiveElement pathElement;
  final List<dynamic> representation;
  final List<PrimitiveElement> representationElement;
  final String sliceName;
  final PrimitiveElement sliceNameElement;
  final FhirBoolean sliceIsConstraining;
  final PrimitiveElement sliceIsConstrainingElement;
  final String label;
  final PrimitiveElement labelElement;
  final List<Coding> code;
  final ElementDefinitionSlicing slicing;
  final String short;
  final PrimitiveElement shortElement;
  final FhirMarkdown definition;
  final PrimitiveElement definitionElement;
  final FhirMarkdown comment;
  final PrimitiveElement commentElement;
  final FhirMarkdown requirements;
  final PrimitiveElement requirementsElement;
  final List<String> alias;
  final List<PrimitiveElement> aliasElement;
  final FhirUnsignedInt min;
  final PrimitiveElement minElement;
  final String max;
  final PrimitiveElement maxElement;
  final ElementDefinitionBase base;
  final FhirUri contentReference;
  final PrimitiveElement contentReferenceElement;
  final List<ElementDefinitionType> type;
  final String defaultValueBase64Binary;
  final PrimitiveElement defaultValueBase64BinaryElement;
  final bool defaultValueBoolean;
  final PrimitiveElement defaultValueBooleanElement;
  final String defaultValueCanonical;
  final PrimitiveElement defaultValueCanonicalElement;
  final String defaultValueCode;
  final PrimitiveElement defaultValueCodeElement;
  final String defaultValueDate;
  final PrimitiveElement defaultValueDateElement;
  final String defaultValueDateTime;
  final PrimitiveElement defaultValueDateTimeElement;
  final double defaultValueDecimal;
  final PrimitiveElement defaultValueDecimalElement;
  final String defaultValueId;
  final PrimitiveElement defaultValueIdElement;
  final String defaultValueInstant;
  final PrimitiveElement defaultValueInstantElement;
  final double defaultValueInteger;
  final PrimitiveElement defaultValueIntegerElement;
  final String defaultValueMarkdown;
  final PrimitiveElement defaultValueMarkdownElement;
  final String defaultValueOid;
  final PrimitiveElement defaultValueOidElement;
  final double defaultValuePositiveInt;
  final PrimitiveElement defaultValuePositiveIntElement;
  final String defaultValueString;
  final PrimitiveElement defaultValueStringElement;
  final String defaultValueTime;
  final PrimitiveElement defaultValueTimeElement;
  final double defaultValueUnsignedInt;
  final PrimitiveElement defaultValueUnsignedIntElement;
  final String defaultValueUri;
  final PrimitiveElement defaultValueUriElement;
  final String defaultValueUrl;
  final PrimitiveElement defaultValueUrlElement;
  final String defaultValueUuid;
  final PrimitiveElement defaultValueUuidElement;
  final Address defaultValueAddress;
  final Age defaultValueAge;
  final Annotation defaultValueAnnotation;
  final Attachment defaultValueAttachment;
  final CodeableConcept defaultValueCodeableConcept;
  final CodeableReference defaultValueCodeableReference;
  final Coding defaultValueCoding;
  final ContactPoint defaultValueContactPoint;
  final Count defaultValueCount;
  final Distance defaultValueDistance;
  final FhirDuration defaultValueDuration;
  final HumanName defaultValueHumanName;
  final Identifier defaultValueIdentifier;
  final Money defaultValueMoney;
  final Period defaultValuePeriod;
  final Quantity defaultValueQuantity;
  final Range defaultValueRange;
  final Ratio defaultValueRatio;
  final RatioRange defaultValueRatioRange;
  final Reference defaultValueReference;
  final SampledData defaultValueSampledData;
  final Signature defaultValueSignature;
  final Timing defaultValueTiming;
  final ContactDetail defaultValueContactDetail;
  final Contributor defaultValueContributor;
  final DataRequirement defaultValueDataRequirement;
  final FhirExpression defaultValueExpression;
  final ParameterDefinition defaultValueParameterDefinition;
  final RelatedArtifact defaultValueRelatedArtifact;
  final TriggerDefinition defaultValueTriggerDefinition;
  final UsageContext defaultValueUsageContext;
  final Dosage defaultValueDosage;
  final FhirMarkdown meaningWhenMissing;
  final PrimitiveElement meaningWhenMissingElement;
  final String orderMeaning;
  final PrimitiveElement orderMeaningElement;
  final String fixedBase64Binary;
  final PrimitiveElement fixedBase64BinaryElement;
  final bool fixedBoolean;
  final PrimitiveElement fixedBooleanElement;
  final String fixedCanonical;
  final PrimitiveElement fixedCanonicalElement;
  final String fixedCode;
  final PrimitiveElement fixedCodeElement;
  final String fixedDate;
  final PrimitiveElement fixedDateElement;
  final String fixedDateTime;
  final PrimitiveElement fixedDateTimeElement;
  final double fixedDecimal;
  final PrimitiveElement fixedDecimalElement;
  final String fixedId;
  final PrimitiveElement fixedIdElement;
  final String fixedInstant;
  final PrimitiveElement fixedInstantElement;
  final double fixedInteger;
  final PrimitiveElement fixedIntegerElement;
  final String fixedMarkdown;
  final PrimitiveElement fixedMarkdownElement;
  final String fixedOid;
  final PrimitiveElement fixedOidElement;
  final double fixedPositiveInt;
  final PrimitiveElement fixedPositiveIntElement;
  final String fixedString;
  final PrimitiveElement fixedStringElement;
  final String fixedTime;
  final PrimitiveElement fixedTimeElement;
  final double fixedUnsignedInt;
  final PrimitiveElement fixedUnsignedIntElement;
  final String fixedUri;
  final PrimitiveElement fixedUriElement;
  final String fixedUrl;
  final PrimitiveElement fixedUrlElement;
  final String fixedUuid;
  final PrimitiveElement fixedUuidElement;
  final Address fixedAddress;
  final Age fixedAge;
  final Annotation fixedAnnotation;
  final Attachment fixedAttachment;
  final CodeableConcept fixedCodeableConcept;
  final CodeableReference fixedCodeableReference;
  final Coding fixedCoding;
  final ContactPoint fixedContactPoint;
  final Count fixedCount;
  final Distance fixedDistance;
  final FhirDuration fixedDuration;
  final HumanName fixedHumanName;
  final Identifier fixedIdentifier;
  final Money fixedMoney;
  final Period fixedPeriod;
  final Quantity fixedQuantity;
  final Range fixedRange;
  final Ratio fixedRatio;
  final RatioRange fixedRatioRange;
  final Reference fixedReference;
  final SampledData fixedSampledData;
  final Signature fixedSignature;
  final Timing fixedTiming;
  final ContactDetail fixedContactDetail;
  final Contributor fixedContributor;
  final DataRequirement fixedDataRequirement;
  final FhirExpression fixedExpression;
  final ParameterDefinition fixedParameterDefinition;
  final RelatedArtifact fixedRelatedArtifact;
  final TriggerDefinition fixedTriggerDefinition;
  final UsageContext fixedUsageContext;
  final Dosage fixedDosage;
  final String patternBase64Binary;
  final PrimitiveElement patternBase64BinaryElement;
  final bool patternBoolean;
  final PrimitiveElement patternBooleanElement;
  final String patternCanonical;
  final PrimitiveElement patternCanonicalElement;
  final String patternCode;
  final PrimitiveElement patternCodeElement;
  final String patternDate;
  final PrimitiveElement patternDateElement;
  final String patternDateTime;
  final PrimitiveElement patternDateTimeElement;
  final double patternDecimal;
  final PrimitiveElement patternDecimalElement;
  final String patternId;
  final PrimitiveElement patternIdElement;
  final String patternInstant;
  final PrimitiveElement patternInstantElement;
  final double patternInteger;
  final PrimitiveElement patternIntegerElement;
  final String patternMarkdown;
  final PrimitiveElement patternMarkdownElement;
  final String patternOid;
  final PrimitiveElement patternOidElement;
  final double patternPositiveInt;
  final PrimitiveElement patternPositiveIntElement;
  final String patternString;
  final PrimitiveElement patternStringElement;
  final String patternTime;
  final PrimitiveElement patternTimeElement;
  final double patternUnsignedInt;
  final PrimitiveElement patternUnsignedIntElement;
  final String patternUri;
  final PrimitiveElement patternUriElement;
  final String patternUrl;
  final PrimitiveElement patternUrlElement;
  final String patternUuid;
  final PrimitiveElement patternUuidElement;
  final Address patternAddress;
  final Age patternAge;
  final Annotation patternAnnotation;
  final Attachment patternAttachment;
  final CodeableConcept patternCodeableConcept;
  final CodeableReference patternCodeableReference;
  final Coding patternCoding;
  final ContactPoint patternContactPoint;
  final Count patternCount;
  final Distance patternDistance;
  final FhirDuration patternDuration;
  final HumanName patternHumanName;
  final Identifier patternIdentifier;
  final Money patternMoney;
  final Period patternPeriod;
  final Quantity patternQuantity;
  final Range patternRange;
  final Ratio patternRatio;
  final RatioRange patternRatioRange;
  final Reference patternReference;
  final SampledData patternSampledData;
  final Signature patternSignature;
  final Timing patternTiming;
  final ContactDetail patternContactDetail;
  final Contributor patternContributor;
  final DataRequirement patternDataRequirement;
  final FhirExpression patternExpression;
  final ParameterDefinition patternParameterDefinition;
  final RelatedArtifact patternRelatedArtifact;
  final TriggerDefinition patternTriggerDefinition;
  final UsageContext patternUsageContext;
  final Dosage patternDosage;
  final List<ElementDefinitionExample> example;
  final String minValueDate;
  final PrimitiveElement minValueDateElement;
  final String minValueDateTime;
  final PrimitiveElement minValueDateTimeElement;
  final String minValueInstant;
  final PrimitiveElement minValueInstantElement;
  final String minValueTime;
  final PrimitiveElement minValueTimeElement;
  final double minValueDecimal;
  final PrimitiveElement minValueDecimalElement;
  final double minValueInteger;
  final PrimitiveElement minValueIntegerElement;
  final double minValuePositiveInt;
  final PrimitiveElement minValuePositiveIntElement;
  final double minValueUnsignedInt;
  final PrimitiveElement minValueUnsignedIntElement;
  final Quantity minValueQuantity;
  final String maxValueDate;
  final PrimitiveElement maxValueDateElement;
  final String maxValueDateTime;
  final PrimitiveElement maxValueDateTimeElement;
  final String maxValueInstant;
  final PrimitiveElement maxValueInstantElement;
  final String maxValueTime;
  final PrimitiveElement maxValueTimeElement;
  final double maxValueDecimal;
  final PrimitiveElement maxValueDecimalElement;
  final double maxValueInteger;
  final PrimitiveElement maxValueIntegerElement;
  final double maxValuePositiveInt;
  final PrimitiveElement maxValuePositiveIntElement;
  final double maxValueUnsignedInt;
  final PrimitiveElement maxValueUnsignedIntElement;
  final Quantity maxValueQuantity;
  final FhirInteger maxLength;
  final PrimitiveElement maxLengthElement;
  final List<FhirId> condition;
  final List<PrimitiveElement> conditionElement;
  final List<ElementDefinitionConstraint> constraint;
  final FhirBoolean mustSupport;
  final PrimitiveElement mustSupportElement;
  final FhirBoolean isModifier;
  final PrimitiveElement isModifierElement;
  final String isModifierReason;
  final PrimitiveElement isModifierReasonElement;
  final FhirBoolean isSummary;
  final PrimitiveElement isSummaryElement;
  final ElementDefinitionBinding binding;
  final List<ElementDefinitionMapping> mapping;
  const ElementDefinition({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.path,
    required this.pathElement,
    required this.representation,
    required this.representationElement,
    required this.sliceName,
    required this.sliceNameElement,
    required this.sliceIsConstraining,
    required this.sliceIsConstrainingElement,
    required this.label,
    required this.labelElement,
    required this.code,
    required this.slicing,
    required this.short,
    required this.shortElement,
    required this.definition,
    required this.definitionElement,
    required this.comment,
    required this.commentElement,
    required this.requirements,
    required this.requirementsElement,
    required this.alias,
    required this.aliasElement,
    required this.min,
    required this.minElement,
    required this.max,
    required this.maxElement,
    required this.base,
    required this.contentReference,
    required this.contentReferenceElement,
    required this.type,
    required this.defaultValueBase64Binary,
    required this.defaultValueBase64BinaryElement,
    required this.defaultValueBoolean,
    required this.defaultValueBooleanElement,
    required this.defaultValueCanonical,
    required this.defaultValueCanonicalElement,
    required this.defaultValueCode,
    required this.defaultValueCodeElement,
    required this.defaultValueDate,
    required this.defaultValueDateElement,
    required this.defaultValueDateTime,
    required this.defaultValueDateTimeElement,
    required this.defaultValueDecimal,
    required this.defaultValueDecimalElement,
    required this.defaultValueId,
    required this.defaultValueIdElement,
    required this.defaultValueInstant,
    required this.defaultValueInstantElement,
    required this.defaultValueInteger,
    required this.defaultValueIntegerElement,
    required this.defaultValueMarkdown,
    required this.defaultValueMarkdownElement,
    required this.defaultValueOid,
    required this.defaultValueOidElement,
    required this.defaultValuePositiveInt,
    required this.defaultValuePositiveIntElement,
    required this.defaultValueString,
    required this.defaultValueStringElement,
    required this.defaultValueTime,
    required this.defaultValueTimeElement,
    required this.defaultValueUnsignedInt,
    required this.defaultValueUnsignedIntElement,
    required this.defaultValueUri,
    required this.defaultValueUriElement,
    required this.defaultValueUrl,
    required this.defaultValueUrlElement,
    required this.defaultValueUuid,
    required this.defaultValueUuidElement,
    required this.defaultValueAddress,
    required this.defaultValueAge,
    required this.defaultValueAnnotation,
    required this.defaultValueAttachment,
    required this.defaultValueCodeableConcept,
    required this.defaultValueCodeableReference,
    required this.defaultValueCoding,
    required this.defaultValueContactPoint,
    required this.defaultValueCount,
    required this.defaultValueDistance,
    required this.defaultValueDuration,
    required this.defaultValueHumanName,
    required this.defaultValueIdentifier,
    required this.defaultValueMoney,
    required this.defaultValuePeriod,
    required this.defaultValueQuantity,
    required this.defaultValueRange,
    required this.defaultValueRatio,
    required this.defaultValueRatioRange,
    required this.defaultValueReference,
    required this.defaultValueSampledData,
    required this.defaultValueSignature,
    required this.defaultValueTiming,
    required this.defaultValueContactDetail,
    required this.defaultValueContributor,
    required this.defaultValueDataRequirement,
    required this.defaultValueExpression,
    required this.defaultValueParameterDefinition,
    required this.defaultValueRelatedArtifact,
    required this.defaultValueTriggerDefinition,
    required this.defaultValueUsageContext,
    required this.defaultValueDosage,
    required this.meaningWhenMissing,
    required this.meaningWhenMissingElement,
    required this.orderMeaning,
    required this.orderMeaningElement,
    required this.fixedBase64Binary,
    required this.fixedBase64BinaryElement,
    required this.fixedBoolean,
    required this.fixedBooleanElement,
    required this.fixedCanonical,
    required this.fixedCanonicalElement,
    required this.fixedCode,
    required this.fixedCodeElement,
    required this.fixedDate,
    required this.fixedDateElement,
    required this.fixedDateTime,
    required this.fixedDateTimeElement,
    required this.fixedDecimal,
    required this.fixedDecimalElement,
    required this.fixedId,
    required this.fixedIdElement,
    required this.fixedInstant,
    required this.fixedInstantElement,
    required this.fixedInteger,
    required this.fixedIntegerElement,
    required this.fixedMarkdown,
    required this.fixedMarkdownElement,
    required this.fixedOid,
    required this.fixedOidElement,
    required this.fixedPositiveInt,
    required this.fixedPositiveIntElement,
    required this.fixedString,
    required this.fixedStringElement,
    required this.fixedTime,
    required this.fixedTimeElement,
    required this.fixedUnsignedInt,
    required this.fixedUnsignedIntElement,
    required this.fixedUri,
    required this.fixedUriElement,
    required this.fixedUrl,
    required this.fixedUrlElement,
    required this.fixedUuid,
    required this.fixedUuidElement,
    required this.fixedAddress,
    required this.fixedAge,
    required this.fixedAnnotation,
    required this.fixedAttachment,
    required this.fixedCodeableConcept,
    required this.fixedCodeableReference,
    required this.fixedCoding,
    required this.fixedContactPoint,
    required this.fixedCount,
    required this.fixedDistance,
    required this.fixedDuration,
    required this.fixedHumanName,
    required this.fixedIdentifier,
    required this.fixedMoney,
    required this.fixedPeriod,
    required this.fixedQuantity,
    required this.fixedRange,
    required this.fixedRatio,
    required this.fixedRatioRange,
    required this.fixedReference,
    required this.fixedSampledData,
    required this.fixedSignature,
    required this.fixedTiming,
    required this.fixedContactDetail,
    required this.fixedContributor,
    required this.fixedDataRequirement,
    required this.fixedExpression,
    required this.fixedParameterDefinition,
    required this.fixedRelatedArtifact,
    required this.fixedTriggerDefinition,
    required this.fixedUsageContext,
    required this.fixedDosage,
    required this.patternBase64Binary,
    required this.patternBase64BinaryElement,
    required this.patternBoolean,
    required this.patternBooleanElement,
    required this.patternCanonical,
    required this.patternCanonicalElement,
    required this.patternCode,
    required this.patternCodeElement,
    required this.patternDate,
    required this.patternDateElement,
    required this.patternDateTime,
    required this.patternDateTimeElement,
    required this.patternDecimal,
    required this.patternDecimalElement,
    required this.patternId,
    required this.patternIdElement,
    required this.patternInstant,
    required this.patternInstantElement,
    required this.patternInteger,
    required this.patternIntegerElement,
    required this.patternMarkdown,
    required this.patternMarkdownElement,
    required this.patternOid,
    required this.patternOidElement,
    required this.patternPositiveInt,
    required this.patternPositiveIntElement,
    required this.patternString,
    required this.patternStringElement,
    required this.patternTime,
    required this.patternTimeElement,
    required this.patternUnsignedInt,
    required this.patternUnsignedIntElement,
    required this.patternUri,
    required this.patternUriElement,
    required this.patternUrl,
    required this.patternUrlElement,
    required this.patternUuid,
    required this.patternUuidElement,
    required this.patternAddress,
    required this.patternAge,
    required this.patternAnnotation,
    required this.patternAttachment,
    required this.patternCodeableConcept,
    required this.patternCodeableReference,
    required this.patternCoding,
    required this.patternContactPoint,
    required this.patternCount,
    required this.patternDistance,
    required this.patternDuration,
    required this.patternHumanName,
    required this.patternIdentifier,
    required this.patternMoney,
    required this.patternPeriod,
    required this.patternQuantity,
    required this.patternRange,
    required this.patternRatio,
    required this.patternRatioRange,
    required this.patternReference,
    required this.patternSampledData,
    required this.patternSignature,
    required this.patternTiming,
    required this.patternContactDetail,
    required this.patternContributor,
    required this.patternDataRequirement,
    required this.patternExpression,
    required this.patternParameterDefinition,
    required this.patternRelatedArtifact,
    required this.patternTriggerDefinition,
    required this.patternUsageContext,
    required this.patternDosage,
    required this.example,
    required this.minValueDate,
    required this.minValueDateElement,
    required this.minValueDateTime,
    required this.minValueDateTimeElement,
    required this.minValueInstant,
    required this.minValueInstantElement,
    required this.minValueTime,
    required this.minValueTimeElement,
    required this.minValueDecimal,
    required this.minValueDecimalElement,
    required this.minValueInteger,
    required this.minValueIntegerElement,
    required this.minValuePositiveInt,
    required this.minValuePositiveIntElement,
    required this.minValueUnsignedInt,
    required this.minValueUnsignedIntElement,
    required this.minValueQuantity,
    required this.maxValueDate,
    required this.maxValueDateElement,
    required this.maxValueDateTime,
    required this.maxValueDateTimeElement,
    required this.maxValueInstant,
    required this.maxValueInstantElement,
    required this.maxValueTime,
    required this.maxValueTimeElement,
    required this.maxValueDecimal,
    required this.maxValueDecimalElement,
    required this.maxValueInteger,
    required this.maxValueIntegerElement,
    required this.maxValuePositiveInt,
    required this.maxValuePositiveIntElement,
    required this.maxValueUnsignedInt,
    required this.maxValueUnsignedIntElement,
    required this.maxValueQuantity,
    required this.maxLength,
    required this.maxLengthElement,
    required this.condition,
    required this.conditionElement,
    required this.constraint,
    required this.mustSupport,
    required this.mustSupportElement,
    required this.isModifier,
    required this.isModifierElement,
    required this.isModifierReason,
    required this.isModifierReasonElement,
    required this.isSummary,
    required this.isSummaryElement,
    required this.binding,
    required this.mapping,
  });
}

@Data()
@JsonCodable()
class ElementDefinitionSlicing {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<ElementDefinitionDiscriminator> discriminator;
  final String description;
  final PrimitiveElement descriptionElement;
  final FhirBoolean ordered;
  final PrimitiveElement orderedElement;
  final dynamic rules;
  final PrimitiveElement rulesElement;
  const ElementDefinitionSlicing({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.discriminator,
    required this.description,
    required this.descriptionElement,
    required this.ordered,
    required this.orderedElement,
    required this.rules,
    required this.rulesElement,
  });
}

@Data()
@JsonCodable()
class ElementDefinitionDiscriminator {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final dynamic type;
  final PrimitiveElement typeElement;
  final String path;
  final PrimitiveElement pathElement;
  const ElementDefinitionDiscriminator({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.typeElement,
    required this.path,
    required this.pathElement,
  });
}

@Data()
@JsonCodable()
class ElementDefinitionBase {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String path;
  final PrimitiveElement pathElement;
  final FhirUnsignedInt min;
  final PrimitiveElement minElement;
  final String max;
  final PrimitiveElement maxElement;
  const ElementDefinitionBase({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.path,
    required this.pathElement,
    required this.min,
    required this.minElement,
    required this.max,
    required this.maxElement,
  });
}

@Data()
@JsonCodable()
class ElementDefinitionType {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirUri code;
  final PrimitiveElement codeElement;
  final List<FhirCanonical> profile;
  final List<FhirCanonical> targetProfile;
  final List<dynamic> aggregation;
  final List<PrimitiveElement> aggregationElement;
  final dynamic versioning;
  final PrimitiveElement versioningElement;
  const ElementDefinitionType({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.code,
    required this.codeElement,
    required this.profile,
    required this.targetProfile,
    required this.aggregation,
    required this.aggregationElement,
    required this.versioning,
    required this.versioningElement,
  });
}

@Data()
@JsonCodable()
class ElementDefinitionExample {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String label;
  final PrimitiveElement labelElement;
  final String valueBase64Binary;
  final PrimitiveElement valueBase64BinaryElement;
  final bool valueBoolean;
  final PrimitiveElement valueBooleanElement;
  final String valueCanonical;
  final PrimitiveElement valueCanonicalElement;
  final String valueCode;
  final PrimitiveElement valueCodeElement;
  final String valueDate;
  final PrimitiveElement valueDateElement;
  final String valueDateTime;
  final PrimitiveElement valueDateTimeElement;
  final double valueDecimal;
  final PrimitiveElement valueDecimalElement;
  final String valueId;
  final PrimitiveElement valueIdElement;
  final String valueInstant;
  final PrimitiveElement valueInstantElement;
  final double valueInteger;
  final PrimitiveElement valueIntegerElement;
  final String valueMarkdown;
  final PrimitiveElement valueMarkdownElement;
  final String valueOid;
  final PrimitiveElement valueOidElement;
  final double valuePositiveInt;
  final PrimitiveElement valuePositiveIntElement;
  final String valueString;
  final PrimitiveElement valueStringElement;
  final String valueTime;
  final PrimitiveElement valueTimeElement;
  final double valueUnsignedInt;
  final PrimitiveElement valueUnsignedIntElement;
  final String valueUri;
  final PrimitiveElement valueUriElement;
  final String valueUrl;
  final PrimitiveElement valueUrlElement;
  final String valueUuid;
  final PrimitiveElement valueUuidElement;
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
  const ElementDefinitionExample({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.label,
    required this.labelElement,
    required this.valueBase64Binary,
    required this.valueBase64BinaryElement,
    required this.valueBoolean,
    required this.valueBooleanElement,
    required this.valueCanonical,
    required this.valueCanonicalElement,
    required this.valueCode,
    required this.valueCodeElement,
    required this.valueDate,
    required this.valueDateElement,
    required this.valueDateTime,
    required this.valueDateTimeElement,
    required this.valueDecimal,
    required this.valueDecimalElement,
    required this.valueId,
    required this.valueIdElement,
    required this.valueInstant,
    required this.valueInstantElement,
    required this.valueInteger,
    required this.valueIntegerElement,
    required this.valueMarkdown,
    required this.valueMarkdownElement,
    required this.valueOid,
    required this.valueOidElement,
    required this.valuePositiveInt,
    required this.valuePositiveIntElement,
    required this.valueString,
    required this.valueStringElement,
    required this.valueTime,
    required this.valueTimeElement,
    required this.valueUnsignedInt,
    required this.valueUnsignedIntElement,
    required this.valueUri,
    required this.valueUriElement,
    required this.valueUrl,
    required this.valueUrlElement,
    required this.valueUuid,
    required this.valueUuidElement,
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
}

@Data()
@JsonCodable()
class ElementDefinitionConstraint {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirId key;
  final PrimitiveElement keyElement;
  final String requirements;
  final PrimitiveElement requirementsElement;
  final dynamic severity;
  final PrimitiveElement severityElement;
  final String human;
  final PrimitiveElement humanElement;
  final String expression;
  final PrimitiveElement expressionElement;
  final String xpath;
  final PrimitiveElement xpathElement;
  final FhirCanonical source;
  const ElementDefinitionConstraint({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.key,
    required this.keyElement,
    required this.requirements,
    required this.requirementsElement,
    required this.severity,
    required this.severityElement,
    required this.human,
    required this.humanElement,
    required this.expression,
    required this.expressionElement,
    required this.xpath,
    required this.xpathElement,
    required this.source,
  });
}

@Data()
@JsonCodable()
class ElementDefinitionBinding {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final dynamic strength;
  final PrimitiveElement strengthElement;
  final String description;
  final PrimitiveElement descriptionElement;
  final FhirCanonical valueSet;
  const ElementDefinitionBinding({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.strength,
    required this.strengthElement,
    required this.description,
    required this.descriptionElement,
    required this.valueSet,
  });
}

@Data()
@JsonCodable()
class ElementDefinitionMapping {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirId identity;
  final PrimitiveElement identityElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final String map;
  final PrimitiveElement mapElement;
  final String comment;
  final PrimitiveElement commentElement;
  const ElementDefinitionMapping({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.identity,
    required this.identityElement,
    required this.language,
    required this.languageElement,
    required this.map,
    required this.mapElement,
    required this.comment,
    required this.commentElement,
  });
}


