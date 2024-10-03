import 'package:objectbox/objectbox.dart';
import '../r4_entity.dart';

@Entity()
class ElementDefinitionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? path;

  @ToOne()
  PrimitiveElementEntity? pathElement;

  @ToMany()
  List<ElementDefinitionRepresentationEntity>? representation;

  @ToMany()
  List<PrimitiveElementEntity>? representationElement;

  String? sliceName;

  @ToOne()
  PrimitiveElementEntity? sliceNameElement;

  bool? sliceIsConstraining;

  @ToOne()
  PrimitiveElementEntity? sliceIsConstrainingElement;

  String? label;

  @ToOne()
  PrimitiveElementEntity? labelElement;

  @ToMany()
  List<CodingEntity>? code;

  @ToOne()
  ElementDefinitionSlicingEntity? slicing;

  String? short;

  @ToOne()
  PrimitiveElementEntity? shortElement;

  String? definition;

  @ToOne()
  PrimitiveElementEntity? definitionElement;

  String? comment;

  @ToOne()
  PrimitiveElementEntity? commentElement;

  String? requirements;

  @ToOne()
  PrimitiveElementEntity? requirementsElement;

  List<String>? alias;

  @ToMany()
  List<PrimitiveElementEntity>? aliasElement;

  int? min;

  @ToOne()
  PrimitiveElementEntity? minElement;

  String? max;

  @ToOne()
  PrimitiveElementEntity? maxElement;

  @ToOne()
  ElementDefinitionBaseEntity? base;

  String? contentReference;

  @ToOne()
  PrimitiveElementEntity? contentReferenceElement;

  @ToMany()
  List<ElementDefinitionTypeEntity>? type;

  String? defaultValueBase64Binary;

  @ToOne()
  PrimitiveElementEntity? defaultValueBase64BinaryElement;

  bool? defaultValueBoolean;

  @ToOne()
  PrimitiveElementEntity? defaultValueBooleanElement;

  String? defaultValueCanonical;

  @ToOne()
  PrimitiveElementEntity? defaultValueCanonicalElement;

  String? defaultValueCode;

  @ToOne()
  PrimitiveElementEntity? defaultValueCodeElement;

  String? defaultValueDate;

  @ToOne()
  PrimitiveElementEntity? defaultValueDateElement;

  String? defaultValueDateTime;

  @ToOne()
  PrimitiveElementEntity? defaultValueDateTimeElement;

  double? defaultValueDecimal;

  @ToOne()
  PrimitiveElementEntity? defaultValueDecimalElement;

  String? defaultValueId;

  @ToOne()
  PrimitiveElementEntity? defaultValueIdElement;

  String? defaultValueInstant;

  @ToOne()
  PrimitiveElementEntity? defaultValueInstantElement;

  int? defaultValueInteger;

  @ToOne()
  PrimitiveElementEntity? defaultValueIntegerElement;

  String? defaultValueMarkdown;

  @ToOne()
  PrimitiveElementEntity? defaultValueMarkdownElement;

  String? defaultValueOid;

  @ToOne()
  PrimitiveElementEntity? defaultValueOidElement;

  int? defaultValuePositiveInt;

  @ToOne()
  PrimitiveElementEntity? defaultValuePositiveIntElement;

  String? defaultValueString;

  @ToOne()
  PrimitiveElementEntity? defaultValueStringElement;

  String? defaultValueTime;

  @ToOne()
  PrimitiveElementEntity? defaultValueTimeElement;

  int? defaultValueUnsignedInt;

  @ToOne()
  PrimitiveElementEntity? defaultValueUnsignedIntElement;

  String? defaultValueUri;

  @ToOne()
  PrimitiveElementEntity? defaultValueUriElement;

  String? defaultValueUrl;

  @ToOne()
  PrimitiveElementEntity? defaultValueUrlElement;

  String? defaultValueUuid;

  @ToOne()
  PrimitiveElementEntity? defaultValueUuidElement;

  @ToOne()
  AddressEntity? defaultValueAddress;

  @ToOne()
  AgeEntity? defaultValueAge;

  @ToOne()
  AnnotationEntity? defaultValueAnnotation;

  @ToOne()
  AttachmentEntity? defaultValueAttachment;

  @ToOne()
  CodeableConceptEntity? defaultValueCodeableConcept;
  @ToOne()
  CodeableReferenceEntity? defaultValueCodeableReference;

  @ToOne()
  CodingEntity? defaultValueCoding;

  @ToOne()
  ContactPointEntity? defaultValueContactPoint;

  @ToOne()
  CountEntity? defaultValueCount;

  @ToOne()
  DistanceEntity? defaultValueDistance;

  @ToOne()
  FhirDurationEntity? defaultValueDuration;

  @ToOne()
  HumanNameEntity? defaultValueHumanName;

  @ToOne()
  IdentifierEntity? defaultValueIdentifier;

  @ToOne()
  MoneyEntity? defaultValueMoney;

  @ToOne()
  PeriodEntity? defaultValuePeriod;

  @ToOne()
  QuantityEntity? defaultValueQuantity;

  @ToOne()
  RangeEntity? defaultValueRange;

  @ToOne()
  RatioEntity? defaultValueRatio;
  @ToOne()
  RatioRangeEntity? defaultValueRatioRange;

  @ToOne()
  ReferenceEntity? defaultValueReference;

  @ToOne()
  SampledDataEntity? defaultValueSampledData;

  @ToOne()
  SignatureEntity? defaultValueSignature;

  @ToOne()
  TimingEntity? defaultValueTiming;

  @ToOne()
  ContactDetailEntity? defaultValueContactDetail;

  @ToOne()
  ContributorEntity? defaultValueContributor;

  @ToOne()
  DataRequirementEntity? defaultValueDataRequirement;

  @ToOne()
  FhirExpressionEntity? defaultValueExpression;

  @ToOne()
  ParameterDefinitionEntity? defaultValueParameterDefinition;

  @ToOne()
  RelatedArtifactEntity? defaultValueRelatedArtifact;

  @ToOne()
  TriggerDefinitionEntity? defaultValueTriggerDefinition;

  @ToOne()
  UsageContextEntity? defaultValueUsageContext;

  @ToOne()
  DosageEntity? defaultValueDosage;

  String? meaningWhenMissing;

  @ToOne()
  PrimitiveElementEntity? meaningWhenMissingElement;

  String? orderMeaning;

  @ToOne()
  PrimitiveElementEntity? orderMeaningElement;

  String? fixedBase64Binary;

  @ToOne()
  PrimitiveElementEntity? fixedBase64BinaryElement;

  bool? fixedBoolean;

  @ToOne()
  PrimitiveElementEntity? fixedBooleanElement;

  String? fixedCanonical;

  @ToOne()
  PrimitiveElementEntity? fixedCanonicalElement;

  String? fixedCode;

  @ToOne()
  PrimitiveElementEntity? fixedCodeElement;

  String? fixedDate;

  @ToOne()
  PrimitiveElementEntity? fixedDateElement;

  String? fixedDateTime;

  @ToOne()
  PrimitiveElementEntity? fixedDateTimeElement;

  double? fixedDecimal;

  @ToOne()
  PrimitiveElementEntity? fixedDecimalElement;

  String? fixedId;

  @ToOne()
  PrimitiveElementEntity? fixedIdElement;

  String? fixedInstant;

  @ToOne()
  PrimitiveElementEntity? fixedInstantElement;

  int? fixedInteger;

  @ToOne()
  PrimitiveElementEntity? fixedIntegerElement;

  String? fixedMarkdown;

  @ToOne()
  PrimitiveElementEntity? fixedMarkdownElement;

  String? fixedOid;

  @ToOne()
  PrimitiveElementEntity? fixedOidElement;

  int? fixedPositiveInt;

  @ToOne()
  PrimitiveElementEntity? fixedPositiveIntElement;

  String? fixedString;

  @ToOne()
  PrimitiveElementEntity? fixedStringElement;

  String? fixedTime;

  @ToOne()
  PrimitiveElementEntity? fixedTimeElement;

  int? fixedUnsignedInt;

  @ToOne()
  PrimitiveElementEntity? fixedUnsignedIntElement;

  String? fixedUri;

  @ToOne()
  PrimitiveElementEntity? fixedUriElement;

  String? fixedUrl;

  @ToOne()
  PrimitiveElementEntity? fixedUrlElement;

  String? fixedUuid;

  @ToOne()
  PrimitiveElementEntity? fixedUuidElement;

  @ToOne()
  AddressEntity? fixedAddress;

  @ToOne()
  AgeEntity? fixedAge;

  @ToOne()
  AnnotationEntity? fixedAnnotation;

  @ToOne()
  AttachmentEntity? fixedAttachment;

  @ToOne()
  CodeableConceptEntity? fixedCodeableConcept;
  @ToOne()
  CodeableReferenceEntity? fixedCodeableReference;

  @ToOne()
  CodingEntity? fixedCoding;

  @ToOne()
  ContactPointEntity? fixedContactPoint;

  @ToOne()
  CountEntity? fixedCount;

  @ToOne()
  DistanceEntity? fixedDistance;

  @ToOne()
  FhirDurationEntity? fixedDuration;

  @ToOne()
  HumanNameEntity? fixedHumanName;

  @ToOne()
  IdentifierEntity? fixedIdentifier;

  @ToOne()
  MoneyEntity? fixedMoney;

  @ToOne()
  PeriodEntity? fixedPeriod;

  @ToOne()
  QuantityEntity? fixedQuantity;

  @ToOne()
  RangeEntity? fixedRange;

  @ToOne()
  RatioEntity? fixedRatio;
  @ToOne()
  RatioRangeEntity? fixedRatioRange;

  @ToOne()
  ReferenceEntity? fixedReference;

  @ToOne()
  SampledDataEntity? fixedSampledData;

  @ToOne()
  SignatureEntity? fixedSignature;

  @ToOne()
  TimingEntity? fixedTiming;

  @ToOne()
  ContactDetailEntity? fixedContactDetail;

  @ToOne()
  ContributorEntity? fixedContributor;

  @ToOne()
  DataRequirementEntity? fixedDataRequirement;

  @ToOne()
  FhirExpressionEntity? fixedExpression;

  @ToOne()
  ParameterDefinitionEntity? fixedParameterDefinition;

  @ToOne()
  RelatedArtifactEntity? fixedRelatedArtifact;

  @ToOne()
  TriggerDefinitionEntity? fixedTriggerDefinition;

  @ToOne()
  UsageContextEntity? fixedUsageContext;

  @ToOne()
  DosageEntity? fixedDosage;

  String? patternBase64Binary;

  @ToOne()
  PrimitiveElementEntity? patternBase64BinaryElement;

  bool? patternBoolean;

  @ToOne()
  PrimitiveElementEntity? patternBooleanElement;

  String? patternCanonical;

  @ToOne()
  PrimitiveElementEntity? patternCanonicalElement;

  String? patternCode;

  @ToOne()
  PrimitiveElementEntity? patternCodeElement;

  String? patternDate;

  @ToOne()
  PrimitiveElementEntity? patternDateElement;

  String? patternDateTime;

  @ToOne()
  PrimitiveElementEntity? patternDateTimeElement;

  double? patternDecimal;

  @ToOne()
  PrimitiveElementEntity? patternDecimalElement;

  String? patternId;

  @ToOne()
  PrimitiveElementEntity? patternIdElement;

  String? patternInstant;

  @ToOne()
  PrimitiveElementEntity? patternInstantElement;

  int? patternInteger;

  @ToOne()
  PrimitiveElementEntity? patternIntegerElement;

  String? patternMarkdown;

  @ToOne()
  PrimitiveElementEntity? patternMarkdownElement;

  String? patternOid;

  @ToOne()
  PrimitiveElementEntity? patternOidElement;

  int? patternPositiveInt;

  @ToOne()
  PrimitiveElementEntity? patternPositiveIntElement;

  String? patternString;

  @ToOne()
  PrimitiveElementEntity? patternStringElement;

  String? patternTime;

  @ToOne()
  PrimitiveElementEntity? patternTimeElement;

  int? patternUnsignedInt;

  @ToOne()
  PrimitiveElementEntity? patternUnsignedIntElement;

  String? patternUri;

  @ToOne()
  PrimitiveElementEntity? patternUriElement;

  String? patternUrl;

  @ToOne()
  PrimitiveElementEntity? patternUrlElement;

  String? patternUuid;

  @ToOne()
  PrimitiveElementEntity? patternUuidElement;

  @ToOne()
  AddressEntity? patternAddress;

  @ToOne()
  AgeEntity? patternAge;

  @ToOne()
  AnnotationEntity? patternAnnotation;

  @ToOne()
  AttachmentEntity? patternAttachment;

  @ToOne()
  CodeableConceptEntity? patternCodeableConcept;
  @ToOne()
  CodeableReferenceEntity? patternCodeableReference;

  @ToOne()
  CodingEntity? patternCoding;

  @ToOne()
  ContactPointEntity? patternContactPoint;

  @ToOne()
  CountEntity? patternCount;

  @ToOne()
  DistanceEntity? patternDistance;

  @ToOne()
  FhirDurationEntity? patternDuration;

  @ToOne()
  HumanNameEntity? patternHumanName;

  @ToOne()
  IdentifierEntity? patternIdentifier;

  @ToOne()
  MoneyEntity? patternMoney;

  @ToOne()
  PeriodEntity? patternPeriod;

  @ToOne()
  QuantityEntity? patternQuantity;

  @ToOne()
  RangeEntity? patternRange;

  @ToOne()
  RatioEntity? patternRatio;
  @ToOne()
  RatioRangeEntity? patternRatioRange;

  @ToOne()
  ReferenceEntity? patternReference;

  @ToOne()
  SampledDataEntity? patternSampledData;

  @ToOne()
  SignatureEntity? patternSignature;

  @ToOne()
  TimingEntity? patternTiming;

  @ToOne()
  ContactDetailEntity? patternContactDetail;

  @ToOne()
  ContributorEntity? patternContributor;

  @ToOne()
  DataRequirementEntity? patternDataRequirement;

  @ToOne()
  FhirExpressionEntity? patternExpression;

  @ToOne()
  ParameterDefinitionEntity? patternParameterDefinition;

  @ToOne()
  RelatedArtifactEntity? patternRelatedArtifact;

  @ToOne()
  TriggerDefinitionEntity? patternTriggerDefinition;

  @ToOne()
  UsageContextEntity? patternUsageContext;

  @ToOne()
  DosageEntity? patternDosage;

  @ToMany()
  List<ElementDefinitionExampleEntity>? example;

  String? minValueDate;

  @ToOne()
  PrimitiveElementEntity? minValueDateElement;

  String? minValueDateTime;

  @ToOne()
  PrimitiveElementEntity? minValueDateTimeElement;

  String? minValueInstant;

  @ToOne()
  PrimitiveElementEntity? minValueInstantElement;

  String? minValueTime;

  @ToOne()
  PrimitiveElementEntity? minValueTimeElement;

  double? minValueDecimal;

  @ToOne()
  PrimitiveElementEntity? minValueDecimalElement;

  int? minValueInteger;

  @ToOne()
  PrimitiveElementEntity? minValueIntegerElement;

  int? minValuePositiveInt;

  @ToOne()
  PrimitiveElementEntity? minValuePositiveIntElement;

  int? minValueUnsignedInt;

  @ToOne()
  PrimitiveElementEntity? minValueUnsignedIntElement;

  @ToOne()
  QuantityEntity? minValueQuantity;

  String? maxValueDate;

  @ToOne()
  PrimitiveElementEntity? maxValueDateElement;

  String? maxValueDateTime;

  @ToOne()
  PrimitiveElementEntity? maxValueDateTimeElement;

  String? maxValueInstant;

  @ToOne()
  PrimitiveElementEntity? maxValueInstantElement;

  String? maxValueTime;

  @ToOne()
  PrimitiveElementEntity? maxValueTimeElement;

  double? maxValueDecimal;

  @ToOne()
  PrimitiveElementEntity? maxValueDecimalElement;

  int? maxValueInteger;

  @ToOne()
  PrimitiveElementEntity? maxValueIntegerElement;

  int? maxValuePositiveInt;

  @ToOne()
  PrimitiveElementEntity? maxValuePositiveIntElement;

  int? maxValueUnsignedInt;

  @ToOne()
  PrimitiveElementEntity? maxValueUnsignedIntElement;

  @ToOne()
  QuantityEntity? maxValueQuantity;

  int? maxLength;

  @ToOne()
  PrimitiveElementEntity? maxLengthElement;

  List<FhirId>? condition;

  @ToMany()
  List<PrimitiveElementEntity>? conditionElement;

  @ToMany()
  List<ElementDefinitionConstraintEntity>? constraint;

  bool? mustSupport;

  @ToOne()
  PrimitiveElementEntity? mustSupportElement;

  bool? isModifier;

  @ToOne()
  PrimitiveElementEntity? isModifierElement;

  String? isModifierReason;

  @ToOne()
  PrimitiveElementEntity? isModifierReasonElement;

  bool? isSummary;

  @ToOne()
  PrimitiveElementEntity? isSummaryElement;

  @ToOne()
  ElementDefinitionBindingEntity? binding;

  @ToMany()
  List<ElementDefinitionMappingEntity>? mapping;
}

class ElementDefinitionSlicingEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToMany()
  List<ElementDefinitionDiscriminatorEntity>? discriminator;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  bool? ordered;

  @ToOne()
  PrimitiveElementEntity? orderedElement;

  @ToOne()
  ElementDefinitionSlicingRulesEntity? rules;

  @ToOne()
  PrimitiveElementEntity? rulesElement;
}

class ElementDefinitionDiscriminatorEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  ElementDefinitionDiscriminatorTypeEntity? type;

  @ToOne()
  PrimitiveElementEntity? typeElement;

  String? path;

  @ToOne()
  PrimitiveElementEntity? pathElement;
}

class ElementDefinitionBaseEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? path;

  @ToOne()
  PrimitiveElementEntity? pathElement;

  int? min;

  @ToOne()
  PrimitiveElementEntity? minElement;

  String? max;

  @ToOne()
  PrimitiveElementEntity? maxElement;
}

class ElementDefinitionTypeEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? code;

  @ToOne()
  PrimitiveElementEntity? codeElement;

  List<String>? profile;
  @ToMany()
  List<PrimitiveElementEntity>? profileElement;

  List<String>? targetProfile;

  @ToMany()
  List<ElementDefinitionTypeAggregationEntity>? aggregation;

  @ToMany()
  List<PrimitiveElementEntity>? aggregationElement;

  @ToOne()
  ElementDefinitionTypeVersioningEntity? versioning;

  @ToOne()
  PrimitiveElementEntity? versioningElement;
}

class ElementDefinitionExampleEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? label;

  @ToOne()
  PrimitiveElementEntity? labelElement;

  String? valueBase64Binary;

  @ToOne()
  PrimitiveElementEntity? valueBase64BinaryElement;

  bool? valueBoolean;

  @ToOne()
  PrimitiveElementEntity? valueBooleanElement;

  String? valueCanonical;

  @ToOne()
  PrimitiveElementEntity? valueCanonicalElement;

  String? valueCode;

  @ToOne()
  PrimitiveElementEntity? valueCodeElement;

  String? valueDate;

  @ToOne()
  PrimitiveElementEntity? valueDateElement;

  String? valueDateTime;

  @ToOne()
  PrimitiveElementEntity? valueDateTimeElement;

  double? valueDecimal;

  @ToOne()
  PrimitiveElementEntity? valueDecimalElement;

  String? valueId;

  @ToOne()
  PrimitiveElementEntity? valueIdElement;

  String? valueInstant;

  @ToOne()
  PrimitiveElementEntity? valueInstantElement;

  int? valueInteger;

  @ToOne()
  PrimitiveElementEntity? valueIntegerElement;

  String? valueMarkdown;

  @ToOne()
  PrimitiveElementEntity? valueMarkdownElement;

  String? valueOid;

  @ToOne()
  PrimitiveElementEntity? valueOidElement;

  int? valuePositiveInt;

  @ToOne()
  PrimitiveElementEntity? valuePositiveIntElement;

  String? valueString;

  @ToOne()
  PrimitiveElementEntity? valueStringElement;

  String? valueTime;

  @ToOne()
  PrimitiveElementEntity? valueTimeElement;

  int? valueUnsignedInt;

  @ToOne()
  PrimitiveElementEntity? valueUnsignedIntElement;

  String? valueUri;

  @ToOne()
  PrimitiveElementEntity? valueUriElement;

  String? valueUrl;

  @ToOne()
  PrimitiveElementEntity? valueUrlElement;

  String? valueUuid;

  @ToOne()
  PrimitiveElementEntity? valueUuidElement;

  @ToOne()
  AddressEntity? valueAddress;

  @ToOne()
  AgeEntity? valueAge;

  @ToOne()
  AnnotationEntity? valueAnnotation;

  @ToOne()
  AttachmentEntity? valueAttachment;

  @ToOne()
  CodeableConceptEntity? valueCodeableConcept;
  @ToOne()
  CodeableReferenceEntity? valueCodeableReference;

  @ToOne()
  CodingEntity? valueCoding;

  @ToOne()
  ContactPointEntity? valueContactPoint;

  @ToOne()
  CountEntity? valueCount;

  @ToOne()
  DistanceEntity? valueDistance;

  @ToOne()
  FhirDurationEntity? valueDuration;

  @ToOne()
  HumanNameEntity? valueHumanName;

  @ToOne()
  IdentifierEntity? valueIdentifier;

  @ToOne()
  MoneyEntity? valueMoney;

  @ToOne()
  PeriodEntity? valuePeriod;

  @ToOne()
  QuantityEntity? valueQuantity;

  @ToOne()
  RangeEntity? valueRange;

  @ToOne()
  RatioEntity? valueRatio;
  @ToOne()
  RatioRangeEntity? valueRatioRange;

  @ToOne()
  ReferenceEntity? valueReference;

  @ToOne()
  SampledDataEntity? valueSampledData;

  @ToOne()
  SignatureEntity? valueSignature;

  @ToOne()
  TimingEntity? valueTiming;

  @ToOne()
  ContactDetailEntity? valueContactDetail;

  @ToOne()
  ContributorEntity? valueContributor;

  @ToOne()
  DataRequirementEntity? valueDataRequirement;

  @ToOne()
  FhirExpressionEntity? valueExpression;

  @ToOne()
  ParameterDefinitionEntity? valueParameterDefinition;

  @ToOne()
  RelatedArtifactEntity? valueRelatedArtifact;

  @ToOne()
  TriggerDefinitionEntity? valueTriggerDefinition;

  @ToOne()
  UsageContextEntity? valueUsageContext;

  @ToOne()
  DosageEntity? valueDosage;

  @ToOne()
  FhirMetaEntity? valueMeta;
}

class ElementDefinitionConstraintEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? key;

  @ToOne()
  PrimitiveElementEntity? keyElement;

  String? requirements;

  @ToOne()
  PrimitiveElementEntity? requirementsElement;

  @ToOne()
  ElementDefinitionConstraintSeverityEntity? severity;

  @ToOne()
  PrimitiveElementEntity? severityElement;

  String? human;

  @ToOne()
  PrimitiveElementEntity? humanElement;

  String? expression;

  @ToOne()
  PrimitiveElementEntity? expressionElement;

  String? xpath;

  @ToOne()
  PrimitiveElementEntity? xpathElement;

  String? source;
}

class ElementDefinitionBindingEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  ElementDefinitionBindingStrengthEntity? strength;

  @ToOne()
  PrimitiveElementEntity? strengthElement;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  String? valueSet;
}

class ElementDefinitionMappingEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? identity;

  @ToOne()
  PrimitiveElementEntity? identityElement;

  String? language;

  @ToOne()
  PrimitiveElementEntity? languageElement;

  String? map;

  @ToOne()
  PrimitiveElementEntity? mapElement;

  String? comment;

  @ToOne()
  PrimitiveElementEntity? commentElement;
}
