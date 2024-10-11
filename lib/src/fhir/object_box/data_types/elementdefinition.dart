import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class ElementDefinition {
  ElementDefinition({
    this.id,
    this.extension_,
    this.modifierExtension,
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
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String path;
  ToOne<Element>? pathElement = ToOne<Element>();
  List<String>? representation;
  ToMany<Element>? representationElement = ToMany<Element>();
  String? sliceName;
  ToOne<Element>? sliceNameElement = ToOne<Element>();
  bool? sliceIsConstraining;
  ToOne<Element>? sliceIsConstrainingElement = ToOne<Element>();
  String? label;
  ToOne<Element>? labelElement = ToOne<Element>();
  ToMany<Coding>? code = ToMany<Coding>();
  ToOne<ElementDefinitionSlicing>? slicing = ToOne<ElementDefinitionSlicing>();
  String? short;
  ToOne<Element>? shortElement = ToOne<Element>();
  String? definition;
  ToOne<Element>? definitionElement = ToOne<Element>();
  String? comment;
  ToOne<Element>? commentElement = ToOne<Element>();
  String? requirements;
  ToOne<Element>? requirementsElement = ToOne<Element>();
  List<String>? alias;
  ToMany<Element>? aliasElement = ToMany<Element>();
  int? min;
  ToOne<Element>? minElement = ToOne<Element>();
  String? max;
  ToOne<Element>? maxElement = ToOne<Element>();
  ToOne<ElementDefinitionBase>? base = ToOne<ElementDefinitionBase>();
  String? contentReference;
  ToOne<Element>? contentReferenceElement = ToOne<Element>();
  ToMany<ElementDefinitionType>? type = ToMany<ElementDefinitionType>();
  String? defaultValueBase64Binary;
  ToOne<Element>? defaultValueBase64BinaryElement = ToOne<Element>();
  bool? defaultValueBoolean;
  ToOne<Element>? defaultValueBooleanElement = ToOne<Element>();
  String? defaultValueCanonical;
  ToOne<Element>? defaultValueCanonicalElement = ToOne<Element>();
  String? defaultValueCode;
  ToOne<Element>? defaultValueCodeElement = ToOne<Element>();
  String? defaultValueDate;
  ToOne<Element>? defaultValueDateElement = ToOne<Element>();
  String? defaultValueDateTime;
  ToOne<Element>? defaultValueDateTimeElement = ToOne<Element>();
  double? defaultValueDecimal;
  ToOne<Element>? defaultValueDecimalElement = ToOne<Element>();
  String? defaultValueId;
  ToOne<Element>? defaultValueIdElement = ToOne<Element>();
  String? defaultValueInstant;
  ToOne<Element>? defaultValueInstantElement = ToOne<Element>();
  int? defaultValueInteger;
  ToOne<Element>? defaultValueIntegerElement = ToOne<Element>();
  String? defaultValueMarkdown;
  ToOne<Element>? defaultValueMarkdownElement = ToOne<Element>();
  String? defaultValueOid;
  ToOne<Element>? defaultValueOidElement = ToOne<Element>();
  int? defaultValuePositiveInt;
  ToOne<Element>? defaultValuePositiveIntElement = ToOne<Element>();
  String? defaultValueString;
  ToOne<Element>? defaultValueStringElement = ToOne<Element>();
  String? defaultValueTime;
  ToOne<Element>? defaultValueTimeElement = ToOne<Element>();
  int? defaultValueUnsignedInt;
  ToOne<Element>? defaultValueUnsignedIntElement = ToOne<Element>();
  String? defaultValueUri;
  ToOne<Element>? defaultValueUriElement = ToOne<Element>();
  String? defaultValueUrl;
  ToOne<Element>? defaultValueUrlElement = ToOne<Element>();
  String? defaultValueUuid;
  ToOne<Element>? defaultValueUuidElement = ToOne<Element>();
  ToOne<Address>? defaultValueAddress = ToOne<Address>();
  ToOne<Age>? defaultValueAge = ToOne<Age>();
  ToOne<Annotation>? defaultValueAnnotation = ToOne<Annotation>();
  ToOne<Attachment>? defaultValueAttachment = ToOne<Attachment>();
  ToOne<CodeableConcept>? defaultValueCodeableConcept =
      ToOne<CodeableConcept>();
  ToOne<CodeableReference>? defaultValueCodeableReference =
      ToOne<CodeableReference>();
  ToOne<Coding>? defaultValueCoding = ToOne<Coding>();
  ToOne<ContactPoint>? defaultValueContactPoint = ToOne<ContactPoint>();
  ToOne<Count>? defaultValueCount = ToOne<Count>();
  ToOne<Distance>? defaultValueDistance = ToOne<Distance>();
  ToOne<FhirDuration>? defaultValueDuration = ToOne<FhirDuration>();
  ToOne<HumanName>? defaultValueHumanName = ToOne<HumanName>();
  ToOne<Identifier>? defaultValueIdentifier = ToOne<Identifier>();
  ToOne<Money>? defaultValueMoney = ToOne<Money>();
  ToOne<Period>? defaultValuePeriod = ToOne<Period>();
  ToOne<Quantity>? defaultValueQuantity = ToOne<Quantity>();
  ToOne<Range>? defaultValueRange = ToOne<Range>();
  ToOne<Ratio>? defaultValueRatio = ToOne<Ratio>();
  ToOne<RatioRange>? defaultValueRatioRange = ToOne<RatioRange>();
  ToOne<Reference>? defaultValueReference = ToOne<Reference>();
  ToOne<SampledData>? defaultValueSampledData = ToOne<SampledData>();
  ToOne<Signature>? defaultValueSignature = ToOne<Signature>();
  ToOne<Timing>? defaultValueTiming = ToOne<Timing>();
  ToOne<ContactDetail>? defaultValueContactDetail = ToOne<ContactDetail>();
  ToOne<Contributor>? defaultValueContributor = ToOne<Contributor>();
  ToOne<DataRequirement>? defaultValueDataRequirement =
      ToOne<DataRequirement>();
  ToOne<FhirExpression>? defaultValueExpression = ToOne<FhirExpression>();
  ToOne<ParameterDefinition>? defaultValueParameterDefinition =
      ToOne<ParameterDefinition>();
  ToOne<RelatedArtifact>? defaultValueRelatedArtifact =
      ToOne<RelatedArtifact>();
  ToOne<TriggerDefinition>? defaultValueTriggerDefinition =
      ToOne<TriggerDefinition>();
  ToOne<UsageContext>? defaultValueUsageContext = ToOne<UsageContext>();
  ToOne<Dosage>? defaultValueDosage = ToOne<Dosage>();
  String? meaningWhenMissing;
  ToOne<Element>? meaningWhenMissingElement = ToOne<Element>();
  String? orderMeaning;
  ToOne<Element>? orderMeaningElement = ToOne<Element>();
  String? fixedBase64Binary;
  ToOne<Element>? fixedBase64BinaryElement = ToOne<Element>();
  bool? fixedBoolean;
  ToOne<Element>? fixedBooleanElement = ToOne<Element>();
  String? fixedCanonical;
  ToOne<Element>? fixedCanonicalElement = ToOne<Element>();
  String? fixedCode;
  ToOne<Element>? fixedCodeElement = ToOne<Element>();
  String? fixedDate;
  ToOne<Element>? fixedDateElement = ToOne<Element>();
  String? fixedDateTime;
  ToOne<Element>? fixedDateTimeElement = ToOne<Element>();
  double? fixedDecimal;
  ToOne<Element>? fixedDecimalElement = ToOne<Element>();
  String? fixedId;
  ToOne<Element>? fixedIdElement = ToOne<Element>();
  String? fixedInstant;
  ToOne<Element>? fixedInstantElement = ToOne<Element>();
  int? fixedInteger;
  ToOne<Element>? fixedIntegerElement = ToOne<Element>();
  String? fixedMarkdown;
  ToOne<Element>? fixedMarkdownElement = ToOne<Element>();
  String? fixedOid;
  ToOne<Element>? fixedOidElement = ToOne<Element>();
  int? fixedPositiveInt;
  ToOne<Element>? fixedPositiveIntElement = ToOne<Element>();
  String? fixedString;
  ToOne<Element>? fixedStringElement = ToOne<Element>();
  String? fixedTime;
  ToOne<Element>? fixedTimeElement = ToOne<Element>();
  int? fixedUnsignedInt;
  ToOne<Element>? fixedUnsignedIntElement = ToOne<Element>();
  String? fixedUri;
  ToOne<Element>? fixedUriElement = ToOne<Element>();
  String? fixedUrl;
  ToOne<Element>? fixedUrlElement = ToOne<Element>();
  String? fixedUuid;
  ToOne<Element>? fixedUuidElement = ToOne<Element>();
  ToOne<Address>? fixedAddress = ToOne<Address>();
  ToOne<Age>? fixedAge = ToOne<Age>();
  ToOne<Annotation>? fixedAnnotation = ToOne<Annotation>();
  ToOne<Attachment>? fixedAttachment = ToOne<Attachment>();
  ToOne<CodeableConcept>? fixedCodeableConcept = ToOne<CodeableConcept>();
  ToOne<CodeableReference>? fixedCodeableReference = ToOne<CodeableReference>();
  ToOne<Coding>? fixedCoding = ToOne<Coding>();
  ToOne<ContactPoint>? fixedContactPoint = ToOne<ContactPoint>();
  ToOne<Count>? fixedCount = ToOne<Count>();
  ToOne<Distance>? fixedDistance = ToOne<Distance>();
  ToOne<FhirDuration>? fixedDuration = ToOne<FhirDuration>();
  ToOne<HumanName>? fixedHumanName = ToOne<HumanName>();
  ToOne<Identifier>? fixedIdentifier = ToOne<Identifier>();
  ToOne<Money>? fixedMoney = ToOne<Money>();
  ToOne<Period>? fixedPeriod = ToOne<Period>();
  ToOne<Quantity>? fixedQuantity = ToOne<Quantity>();
  ToOne<Range>? fixedRange = ToOne<Range>();
  ToOne<Ratio>? fixedRatio = ToOne<Ratio>();
  ToOne<RatioRange>? fixedRatioRange = ToOne<RatioRange>();
  ToOne<Reference>? fixedReference = ToOne<Reference>();
  ToOne<SampledData>? fixedSampledData = ToOne<SampledData>();
  ToOne<Signature>? fixedSignature = ToOne<Signature>();
  ToOne<Timing>? fixedTiming = ToOne<Timing>();
  ToOne<ContactDetail>? fixedContactDetail = ToOne<ContactDetail>();
  ToOne<Contributor>? fixedContributor = ToOne<Contributor>();
  ToOne<DataRequirement>? fixedDataRequirement = ToOne<DataRequirement>();
  ToOne<FhirExpression>? fixedExpression = ToOne<FhirExpression>();
  ToOne<ParameterDefinition>? fixedParameterDefinition =
      ToOne<ParameterDefinition>();
  ToOne<RelatedArtifact>? fixedRelatedArtifact = ToOne<RelatedArtifact>();
  ToOne<TriggerDefinition>? fixedTriggerDefinition = ToOne<TriggerDefinition>();
  ToOne<UsageContext>? fixedUsageContext = ToOne<UsageContext>();
  ToOne<Dosage>? fixedDosage = ToOne<Dosage>();
  String? patternBase64Binary;
  ToOne<Element>? patternBase64BinaryElement = ToOne<Element>();
  bool? patternBoolean;
  ToOne<Element>? patternBooleanElement = ToOne<Element>();
  String? patternCanonical;
  ToOne<Element>? patternCanonicalElement = ToOne<Element>();
  String? patternCode;
  ToOne<Element>? patternCodeElement = ToOne<Element>();
  String? patternDate;
  ToOne<Element>? patternDateElement = ToOne<Element>();
  String? patternDateTime;
  ToOne<Element>? patternDateTimeElement = ToOne<Element>();
  double? patternDecimal;
  ToOne<Element>? patternDecimalElement = ToOne<Element>();
  String? patternId;
  ToOne<Element>? patternIdElement = ToOne<Element>();
  String? patternInstant;
  ToOne<Element>? patternInstantElement = ToOne<Element>();
  int? patternInteger;
  ToOne<Element>? patternIntegerElement = ToOne<Element>();
  String? patternMarkdown;
  ToOne<Element>? patternMarkdownElement = ToOne<Element>();
  String? patternOid;
  ToOne<Element>? patternOidElement = ToOne<Element>();
  int? patternPositiveInt;
  ToOne<Element>? patternPositiveIntElement = ToOne<Element>();
  String? patternString;
  ToOne<Element>? patternStringElement = ToOne<Element>();
  String? patternTime;
  ToOne<Element>? patternTimeElement = ToOne<Element>();
  int? patternUnsignedInt;
  ToOne<Element>? patternUnsignedIntElement = ToOne<Element>();
  String? patternUri;
  ToOne<Element>? patternUriElement = ToOne<Element>();
  String? patternUrl;
  ToOne<Element>? patternUrlElement = ToOne<Element>();
  String? patternUuid;
  ToOne<Element>? patternUuidElement = ToOne<Element>();
  ToOne<Address>? patternAddress = ToOne<Address>();
  ToOne<Age>? patternAge = ToOne<Age>();
  ToOne<Annotation>? patternAnnotation = ToOne<Annotation>();
  ToOne<Attachment>? patternAttachment = ToOne<Attachment>();
  ToOne<CodeableConcept>? patternCodeableConcept = ToOne<CodeableConcept>();
  ToOne<CodeableReference>? patternCodeableReference =
      ToOne<CodeableReference>();
  ToOne<Coding>? patternCoding = ToOne<Coding>();
  ToOne<ContactPoint>? patternContactPoint = ToOne<ContactPoint>();
  ToOne<Count>? patternCount = ToOne<Count>();
  ToOne<Distance>? patternDistance = ToOne<Distance>();
  ToOne<FhirDuration>? patternDuration = ToOne<FhirDuration>();
  ToOne<HumanName>? patternHumanName = ToOne<HumanName>();
  ToOne<Identifier>? patternIdentifier = ToOne<Identifier>();
  ToOne<Money>? patternMoney = ToOne<Money>();
  ToOne<Period>? patternPeriod = ToOne<Period>();
  ToOne<Quantity>? patternQuantity = ToOne<Quantity>();
  ToOne<Range>? patternRange = ToOne<Range>();
  ToOne<Ratio>? patternRatio = ToOne<Ratio>();
  ToOne<RatioRange>? patternRatioRange = ToOne<RatioRange>();
  ToOne<Reference>? patternReference = ToOne<Reference>();
  ToOne<SampledData>? patternSampledData = ToOne<SampledData>();
  ToOne<Signature>? patternSignature = ToOne<Signature>();
  ToOne<Timing>? patternTiming = ToOne<Timing>();
  ToOne<ContactDetail>? patternContactDetail = ToOne<ContactDetail>();
  ToOne<Contributor>? patternContributor = ToOne<Contributor>();
  ToOne<DataRequirement>? patternDataRequirement = ToOne<DataRequirement>();
  ToOne<FhirExpression>? patternExpression = ToOne<FhirExpression>();
  ToOne<ParameterDefinition>? patternParameterDefinition =
      ToOne<ParameterDefinition>();
  ToOne<RelatedArtifact>? patternRelatedArtifact = ToOne<RelatedArtifact>();
  ToOne<TriggerDefinition>? patternTriggerDefinition =
      ToOne<TriggerDefinition>();
  ToOne<UsageContext>? patternUsageContext = ToOne<UsageContext>();
  ToOne<Dosage>? patternDosage = ToOne<Dosage>();
  ToMany<ElementDefinitionExample>? example =
      ToMany<ElementDefinitionExample>();
  String? minValueDate;
  ToOne<Element>? minValueDateElement = ToOne<Element>();
  String? minValueDateTime;
  ToOne<Element>? minValueDateTimeElement = ToOne<Element>();
  String? minValueInstant;
  ToOne<Element>? minValueInstantElement = ToOne<Element>();
  String? minValueTime;
  ToOne<Element>? minValueTimeElement = ToOne<Element>();
  double? minValueDecimal;
  ToOne<Element>? minValueDecimalElement = ToOne<Element>();
  int? minValueInteger;
  ToOne<Element>? minValueIntegerElement = ToOne<Element>();
  int? minValuePositiveInt;
  ToOne<Element>? minValuePositiveIntElement = ToOne<Element>();
  int? minValueUnsignedInt;
  ToOne<Element>? minValueUnsignedIntElement = ToOne<Element>();
  ToOne<Quantity>? minValueQuantity = ToOne<Quantity>();
  String? maxValueDate;
  ToOne<Element>? maxValueDateElement = ToOne<Element>();
  String? maxValueDateTime;
  ToOne<Element>? maxValueDateTimeElement = ToOne<Element>();
  String? maxValueInstant;
  ToOne<Element>? maxValueInstantElement = ToOne<Element>();
  String? maxValueTime;
  ToOne<Element>? maxValueTimeElement = ToOne<Element>();
  double? maxValueDecimal;
  ToOne<Element>? maxValueDecimalElement = ToOne<Element>();
  int? maxValueInteger;
  ToOne<Element>? maxValueIntegerElement = ToOne<Element>();
  int? maxValuePositiveInt;
  ToOne<Element>? maxValuePositiveIntElement = ToOne<Element>();
  int? maxValueUnsignedInt;
  ToOne<Element>? maxValueUnsignedIntElement = ToOne<Element>();
  ToOne<Quantity>? maxValueQuantity = ToOne<Quantity>();
  int? maxLength;
  ToOne<Element>? maxLengthElement = ToOne<Element>();
  List<String>? condition;
  ToMany<Element>? conditionElement = ToMany<Element>();
  ToMany<ElementDefinitionConstraint>? constraint =
      ToMany<ElementDefinitionConstraint>();
  bool? mustSupport;
  ToOne<Element>? mustSupportElement = ToOne<Element>();
  bool? isModifier;
  ToOne<Element>? isModifierElement = ToOne<Element>();
  String? isModifierReason;
  ToOne<Element>? isModifierReasonElement = ToOne<Element>();
  bool? isSummary;
  ToOne<Element>? isSummaryElement = ToOne<Element>();
  ToOne<ElementDefinitionBinding>? binding = ToOne<ElementDefinitionBinding>();
  ToMany<ElementDefinitionMapping>? mapping =
      ToMany<ElementDefinitionMapping>();
}

@Entity()
class ElementDefinitionSlicing {
  ElementDefinitionSlicing({
    this.id,
    this.extension_,
    this.discriminator,
    this.description,
    this.descriptionElement,
    this.ordered,
    this.orderedElement,
    required this.rules,
    this.rulesElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<ElementDefinitionDiscriminator>? discriminator =
      ToMany<ElementDefinitionDiscriminator>();
  String? description;
  ToOne<Element>? descriptionElement = ToOne<Element>();
  bool? ordered;
  ToOne<Element>? orderedElement = ToOne<Element>();
  String rules;
  ToOne<Element>? rulesElement = ToOne<Element>();
}

@Entity()
class ElementDefinitionDiscriminator {
  ElementDefinitionDiscriminator({
    this.id,
    this.extension_,
    required this.type,
    this.typeElement,
    required this.path,
    this.pathElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String type;
  ToOne<Element>? typeElement = ToOne<Element>();
  String path;
  ToOne<Element>? pathElement = ToOne<Element>();
}

@Entity()
class ElementDefinitionBase {
  ElementDefinitionBase({
    this.id,
    this.extension_,
    required this.path,
    this.pathElement,
    required this.min,
    this.minElement,
    required this.max,
    this.maxElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String path;
  ToOne<Element>? pathElement = ToOne<Element>();
  int min;
  ToOne<Element>? minElement = ToOne<Element>();
  String max;
  ToOne<Element>? maxElement = ToOne<Element>();
}

@Entity()
class ElementDefinitionType {
  ElementDefinitionType({
    this.id,
    this.extension_,
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
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String code;
  ToOne<Element>? codeElement = ToOne<Element>();
  List<String>? profile;
  ToMany<Element>? profileElement = ToMany<Element>();
  List<String>? targetProfile;
  ToMany<Element>? targetProfileElement = ToMany<Element>();
  List<String>? aggregation;
  ToMany<Element>? aggregationElement = ToMany<Element>();
  String? versioning;
  ToOne<Element>? versioningElement = ToOne<Element>();
}

@Entity()
class ElementDefinitionExample {
  ElementDefinitionExample({
    this.id,
    this.extension_,
    required this.label,
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

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String label;
  ToOne<Element>? labelElement = ToOne<Element>();
  String? valueBase64Binary;
  ToOne<Element>? valueBase64BinaryElement = ToOne<Element>();
  bool? valueBoolean;
  ToOne<Element>? valueBooleanElement = ToOne<Element>();
  String? valueCanonical;
  ToOne<Element>? valueCanonicalElement = ToOne<Element>();
  String? valueCode;
  ToOne<Element>? valueCodeElement = ToOne<Element>();
  String? valueDate;
  ToOne<Element>? valueDateElement = ToOne<Element>();
  String? valueDateTime;
  ToOne<Element>? valueDateTimeElement = ToOne<Element>();
  double? valueDecimal;
  ToOne<Element>? valueDecimalElement = ToOne<Element>();
  String? valueId;
  ToOne<Element>? valueIdElement = ToOne<Element>();
  String? valueInstant;
  ToOne<Element>? valueInstantElement = ToOne<Element>();
  int? valueInteger;
  ToOne<Element>? valueIntegerElement = ToOne<Element>();
  String? valueMarkdown;
  ToOne<Element>? valueMarkdownElement = ToOne<Element>();
  String? valueOid;
  ToOne<Element>? valueOidElement = ToOne<Element>();
  int? valuePositiveInt;
  ToOne<Element>? valuePositiveIntElement = ToOne<Element>();
  String? valueString;
  ToOne<Element>? valueStringElement = ToOne<Element>();
  String? valueTime;
  ToOne<Element>? valueTimeElement = ToOne<Element>();
  int? valueUnsignedInt;
  ToOne<Element>? valueUnsignedIntElement = ToOne<Element>();
  String? valueUri;
  ToOne<Element>? valueUriElement = ToOne<Element>();
  String? valueUrl;
  ToOne<Element>? valueUrlElement = ToOne<Element>();
  String? valueUuid;
  ToOne<Element>? valueUuidElement = ToOne<Element>();
  ToOne<Address>? valueAddress = ToOne<Address>();
  ToOne<Age>? valueAge = ToOne<Age>();
  ToOne<Annotation>? valueAnnotation = ToOne<Annotation>();
  ToOne<Attachment>? valueAttachment = ToOne<Attachment>();
  ToOne<CodeableConcept>? valueCodeableConcept = ToOne<CodeableConcept>();
  ToOne<CodeableReference>? valueCodeableReference = ToOne<CodeableReference>();
  ToOne<Coding>? valueCoding = ToOne<Coding>();
  ToOne<ContactPoint>? valueContactPoint = ToOne<ContactPoint>();
  ToOne<Count>? valueCount = ToOne<Count>();
  ToOne<Distance>? valueDistance = ToOne<Distance>();
  ToOne<FhirDuration>? valueDuration = ToOne<FhirDuration>();
  ToOne<HumanName>? valueHumanName = ToOne<HumanName>();
  ToOne<Identifier>? valueIdentifier = ToOne<Identifier>();
  ToOne<Money>? valueMoney = ToOne<Money>();
  ToOne<Period>? valuePeriod = ToOne<Period>();
  ToOne<Quantity>? valueQuantity = ToOne<Quantity>();
  ToOne<Range>? valueRange = ToOne<Range>();
  ToOne<Ratio>? valueRatio = ToOne<Ratio>();
  ToOne<RatioRange>? valueRatioRange = ToOne<RatioRange>();
  ToOne<Reference>? valueReference = ToOne<Reference>();
  ToOne<SampledData>? valueSampledData = ToOne<SampledData>();
  ToOne<Signature>? valueSignature = ToOne<Signature>();
  ToOne<Timing>? valueTiming = ToOne<Timing>();
  ToOne<ContactDetail>? valueContactDetail = ToOne<ContactDetail>();
  ToOne<Contributor>? valueContributor = ToOne<Contributor>();
  ToOne<DataRequirement>? valueDataRequirement = ToOne<DataRequirement>();
  ToOne<FhirExpression>? valueExpression = ToOne<FhirExpression>();
  ToOne<ParameterDefinition>? valueParameterDefinition =
      ToOne<ParameterDefinition>();
  ToOne<RelatedArtifact>? valueRelatedArtifact = ToOne<RelatedArtifact>();
  ToOne<TriggerDefinition>? valueTriggerDefinition = ToOne<TriggerDefinition>();
  ToOne<UsageContext>? valueUsageContext = ToOne<UsageContext>();
  ToOne<Dosage>? valueDosage = ToOne<Dosage>();
}

@Entity()
class ElementDefinitionConstraint {
  ElementDefinitionConstraint({
    this.id,
    this.extension_,
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
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String key;
  ToOne<Element>? keyElement = ToOne<Element>();
  String? requirements;
  ToOne<Element>? requirementsElement = ToOne<Element>();
  String severity;
  ToOne<Element>? severityElement = ToOne<Element>();
  String human;
  ToOne<Element>? humanElement = ToOne<Element>();
  String? expression;
  ToOne<Element>? expressionElement = ToOne<Element>();
  String? xpath;
  ToOne<Element>? xpathElement = ToOne<Element>();
  String? source;
  ToOne<Element>? sourceElement = ToOne<Element>();
}

@Entity()
class ElementDefinitionBinding {
  ElementDefinitionBinding({
    this.id,
    this.extension_,
    required this.strength,
    this.strengthElement,
    this.description,
    this.descriptionElement,
    this.valueSet,
    this.valueSetElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String strength;
  ToOne<Element>? strengthElement = ToOne<Element>();
  String? description;
  ToOne<Element>? descriptionElement = ToOne<Element>();
  String? valueSet;
  ToOne<Element>? valueSetElement = ToOne<Element>();
}

@Entity()
class ElementDefinitionMapping {
  ElementDefinitionMapping({
    this.id,
    this.extension_,
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
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String identity;
  ToOne<Element>? identityElement = ToOne<Element>();
  String? language;
  ToOne<Element>? languageElement = ToOne<Element>();
  String map;
  ToOne<Element>? mapElement = ToOne<Element>();
  String? comment;
  ToOne<Element>? commentElement = ToOne<Element>();
}
