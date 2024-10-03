import 'package:objectbox/objectbox.dart';
import '../r4_entity.dart';

@Entity()
class FhirExtensionEntity {
  @Id(assignable: true)
  int dbId = 0;

  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  String? url;

  @ToOne()
  PrimitiveElementEntity? urlElement;

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
}
