import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class ElementDefinition {
  ElementDefinition({
    this.id,
    this.extension_,
    this.modifierExtension,
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
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String path;
  List<String>? representation;
  String? sliceName;
  bool? sliceIsConstraining;
  String? label;
  ToMany<Coding>? code = ToMany<Coding>();
  ToOne<ElementDefinitionSlicing>? slicing = ToOne<ElementDefinitionSlicing>();
  String? short;
  String? definition;
  String? comment;
  String? requirements;
  List<String>? alias;
  int? min;
  String? max;
  ToOne<ElementDefinitionBase>? base = ToOne<ElementDefinitionBase>();
  String? contentReference;
  ToMany<ElementDefinitionType>? type = ToMany<ElementDefinitionType>();
  String? defaultValueBase64Binary;
  bool? defaultValueBoolean;
  String? defaultValueCanonical;
  String? defaultValueCode;
  String? defaultValueDate;
  String? defaultValueDateTime;
  double? defaultValueDecimal;
  String? defaultValueId;
  String? defaultValueInstant;
  int? defaultValueInteger;
  String? defaultValueMarkdown;
  String? defaultValueOid;
  int? defaultValuePositiveInt;
  String? defaultValueString;
  String? defaultValueTime;
  int? defaultValueUnsignedInt;
  String? defaultValueUri;
  String? defaultValueUrl;
  String? defaultValueUuid;
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
  String? orderMeaning;
  String? fixedBase64Binary;
  bool? fixedBoolean;
  String? fixedCanonical;
  String? fixedCode;
  String? fixedDate;
  String? fixedDateTime;
  double? fixedDecimal;
  String? fixedId;
  String? fixedInstant;
  int? fixedInteger;
  String? fixedMarkdown;
  String? fixedOid;
  int? fixedPositiveInt;
  String? fixedString;
  String? fixedTime;
  int? fixedUnsignedInt;
  String? fixedUri;
  String? fixedUrl;
  String? fixedUuid;
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
  bool? patternBoolean;
  String? patternCanonical;
  String? patternCode;
  String? patternDate;
  String? patternDateTime;
  double? patternDecimal;
  String? patternId;
  String? patternInstant;
  int? patternInteger;
  String? patternMarkdown;
  String? patternOid;
  int? patternPositiveInt;
  String? patternString;
  String? patternTime;
  int? patternUnsignedInt;
  String? patternUri;
  String? patternUrl;
  String? patternUuid;
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
  String? minValueDateTime;
  String? minValueInstant;
  String? minValueTime;
  double? minValueDecimal;
  int? minValueInteger;
  int? minValuePositiveInt;
  int? minValueUnsignedInt;
  ToOne<Quantity>? minValueQuantity = ToOne<Quantity>();
  String? maxValueDate;
  String? maxValueDateTime;
  String? maxValueInstant;
  String? maxValueTime;
  double? maxValueDecimal;
  int? maxValueInteger;
  int? maxValuePositiveInt;
  int? maxValueUnsignedInt;
  ToOne<Quantity>? maxValueQuantity = ToOne<Quantity>();
  int? maxLength;
  List<String>? condition;
  ToMany<ElementDefinitionConstraint>? constraint =
      ToMany<ElementDefinitionConstraint>();
  bool? mustSupport;
  bool? isModifier;
  String? isModifierReason;
  bool? isSummary;
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
    this.ordered,
    required this.rules,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<ElementDefinitionDiscriminator>? discriminator =
      ToMany<ElementDefinitionDiscriminator>();
  String? description;
  bool? ordered;
  String rules;
}

@Entity()
class ElementDefinitionDiscriminator {
  ElementDefinitionDiscriminator({
    this.id,
    this.extension_,
    required this.type,
    required this.path,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String type;
  String path;
}

@Entity()
class ElementDefinitionBase {
  ElementDefinitionBase({
    this.id,
    this.extension_,
    required this.path,
    required this.min,
    required this.max,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String path;
  int min;
  String max;
}

@Entity()
class ElementDefinitionType {
  ElementDefinitionType({
    this.id,
    this.extension_,
    required this.code,
    this.profile,
    this.targetProfile,
    this.aggregation,
    this.versioning,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String code;
  List<String>? profile;
  List<String>? targetProfile;
  List<String>? aggregation;
  String? versioning;
}

@Entity()
class ElementDefinitionExample {
  ElementDefinitionExample({
    this.id,
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
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String label;
  String? valueBase64Binary;
  bool? valueBoolean;
  String? valueCanonical;
  String? valueCode;
  String? valueDate;
  String? valueDateTime;
  double? valueDecimal;
  String? valueId;
  String? valueInstant;
  int? valueInteger;
  String? valueMarkdown;
  String? valueOid;
  int? valuePositiveInt;
  String? valueString;
  String? valueTime;
  int? valueUnsignedInt;
  String? valueUri;
  String? valueUrl;
  String? valueUuid;
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
    this.requirements,
    required this.severity,
    required this.human,
    this.expression,
    this.xpath,
    this.source,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String key;
  String? requirements;
  String severity;
  String human;
  String? expression;
  String? xpath;
  String? source;
}

@Entity()
class ElementDefinitionBinding {
  ElementDefinitionBinding({
    this.id,
    this.extension_,
    required this.strength,
    this.description,
    this.valueSet,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String strength;
  String? description;
  String? valueSet;
}

@Entity()
class ElementDefinitionMapping {
  ElementDefinitionMapping({
    this.id,
    this.extension_,
    required this.identity,
    this.language,
    required this.map,
    this.comment,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  String identity;
  String? language;
  String map;
  String? comment;
}
