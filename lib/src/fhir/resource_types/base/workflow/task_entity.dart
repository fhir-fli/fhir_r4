import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class TaskEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'Task';

  String? id;

  @ToOne()
  FhirMetaEntity? meta;

  String? implicitRules;

  @ToOne()
  PrimitiveElementEntity? implicitRulesElement;

  String? language;

  @ToOne()
  PrimitiveElementEntity? languageElement;

  @ToOne()
  NarrativeEntity? text;

  @ToMany()
  List<ResourceEntity>? contained;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToMany()
  List<IdentifierEntity>? identifier;

  String? instantiatesCanonical;

  String? instantiatesUri;

  @ToOne()
  PrimitiveElementEntity? instantiatesUriElement;

  @ToMany()
  List<ReferenceEntity>? basedOn;

  @ToOne()
  IdentifierEntity? groupIdentifier;

  @ToMany()
  List<ReferenceEntity>? partOf;

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  @ToOne()
  CodeableConceptEntity? statusReason;

  @ToOne()
  CodeableConceptEntity? businessStatus;

  String? intent;

  @ToOne()
  PrimitiveElementEntity? intentElement;

  String? priority;

  @ToOne()
  PrimitiveElementEntity? priorityElement;

  @ToOne()
  CodeableConceptEntity? code;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  @ToOne()
  ReferenceEntity? focus;

  @ToOne()
  ReferenceEntity? for_;

  @ToOne()
  ReferenceEntity? encounter;

  @ToOne()
  PeriodEntity? executionPeriod;

  String? authoredOn;

  @ToOne()
  PrimitiveElementEntity? authoredOnElement;

  String? lastModified;

  @ToOne()
  PrimitiveElementEntity? lastModifiedElement;

  @ToOne()
  ReferenceEntity? requester;

  @ToMany()
  List<CodeableConceptEntity>? performerType;

  @ToOne()
  ReferenceEntity? owner;

  @ToOne()
  ReferenceEntity? location;

  @ToOne()
  CodeableConceptEntity? reasonCode;

  @ToOne()
  ReferenceEntity? reasonReference;

  @ToMany()
  List<ReferenceEntity>? insurance;

  @ToMany()
  List<AnnotationEntity>? note;

  @ToMany()
  List<ReferenceEntity>? relevantHistory;

  @ToOne()
  TaskRestrictionEntity? restriction;

  @ToMany()
  List<TaskInputEntity>? input;

  @ToMany()
  List<TaskOutputEntity>? output;
}

class TaskRestrictionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  int? repetitions;

  @ToOne()
  PrimitiveElementEntity? repetitionsElement;

  @ToOne()
  PeriodEntity? period;

  @ToMany()
  List<ReferenceEntity>? recipient;
}

class TaskInputEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? type;

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

class TaskOutputEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? type;

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
