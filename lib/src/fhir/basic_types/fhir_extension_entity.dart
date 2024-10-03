import 'package:objectbox/objectbox.dart';
import '../r4_entity.dart';

@Entity()
class FhirExtensionEntity {
  @Id(assignable: true)
  int dbId = 0;


  @ToMany()


  @ToOne()


  @ToOne()


  @ToOne()


  @ToOne()


  @ToOne()


  @ToOne()


  @ToOne()


  @ToOne()


  @ToOne()


  @ToOne()


  @ToOne()


  @ToOne()


  @ToOne()


  @ToOne()


  @ToOne()


  @ToOne()


  @ToOne()


  @ToOne()


  @ToOne()


  @ToOne()

  @ToOne()

  @ToOne()

  @ToOne()

  @ToOne()

  @ToOne()

  @ToOne()

  @ToOne()

  @ToOne()

  @ToOne()

  @ToOne()

  @ToOne()

  @ToOne()

  @ToOne()

  @ToOne()

  @ToOne()

  @ToOne()

  @ToOne()

  @ToOne()

  @ToOne()

  @ToOne()

  @ToOne()

  @ToOne()

  @ToOne()

  @ToOne()

  @ToOne()

  @ToOne()

  @ToOne()

  @ToOne()

  @ToOne()

  @ToOne()

  @ToOne()

  @ToOne()
final String? id;
final List<FhirExtensionEntity>? extension_;
final String? url;
final PrimitiveElementEntity? urlElement;
final String? valueBase64Binary;
final PrimitiveElementEntity? valueBase64BinaryElement;
final bool? valueBoolean;
final PrimitiveElementEntity? valueBooleanElement;
final String? valueCanonical;
final PrimitiveElementEntity? valueCanonicalElement;
final String? valueCode;
final PrimitiveElementEntity? valueCodeElement;
final String? valueDate;
final PrimitiveElementEntity? valueDateElement;
final String? valueDateTime;
final PrimitiveElementEntity? valueDateTimeElement;
final double? valueDecimal;
final PrimitiveElementEntity? valueDecimalElement;
final String? valueId;
final PrimitiveElementEntity? valueIdElement;
final String? valueInstant;
final PrimitiveElementEntity? valueInstantElement;
final int? valueInteger;
final PrimitiveElementEntity? valueIntegerElement;
final String? valueMarkdown;
final PrimitiveElementEntity? valueMarkdownElement;
final String? valueOid;
final PrimitiveElementEntity? valueOidElement;
final int? valuePositiveInt;
final PrimitiveElementEntity? valuePositiveIntElement;
final String? valueString;
final PrimitiveElementEntity? valueStringElement;
final String? valueTime;
final PrimitiveElementEntity? valueTimeElement;
final int? valueUnsignedInt;
final PrimitiveElementEntity? valueUnsignedIntElement;
final String? valueUri;
final PrimitiveElementEntity? valueUriElement;
final String? valueUrl;
final PrimitiveElementEntity? valueUrlElement;
final String? valueUuid;
final PrimitiveElementEntity? valueUuidElement;
final AddressEntity? valueAddress;
final AgeEntity? valueAge;
final AnnotationEntity? valueAnnotation;
final AttachmentEntity? valueAttachment;
final CodeableConceptEntity? valueCodeableConcept;
final CodeableReferenceEntity? valueCodeableReference;
final CodingEntity? valueCoding;
final ContactPointEntity? valueContactPoint;
final CountEntity? valueCount;
final DistanceEntity? valueDistance;
final FhirDurationEntity? valueDuration;
final HumanNameEntity? valueHumanName;
final IdentifierEntity? valueIdentifier;
final MoneyEntity? valueMoney;
final PeriodEntity? valuePeriod;
final QuantityEntity? valueQuantity;
final RangeEntity? valueRange;
final RatioEntity? valueRatio;
final RatioRangeEntity? valueRatioRange;
final ReferenceEntity? valueReference;
final SampledDataEntity? valueSampledData;
final SignatureEntity? valueSignature;
final TimingEntity? valueTiming;
final ContactDetailEntity? valueContactDetail;
final ContributorEntity? valueContributor;
final DataRequirementEntity? valueDataRequirement;
final FhirExpressionEntity? valueExpression;
final ParameterDefinitionEntity? valueParameterDefinition;
final RelatedArtifactEntity? valueRelatedArtifact;
final TriggerDefinitionEntity? valueTriggerDefinition;
final UsageContextEntity? valueUsageContext;
final DosageEntity? valueDosage;
  const FhirExtensionEntity({
    this.id,
    this.extension_,
    this.url,
    this.urlElement,
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

