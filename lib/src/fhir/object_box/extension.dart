import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class FhirExtension {
  FhirExtension({
    this.id,
    this.extension_,
    required this.url,
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
  ToOne<String> url = ToOne<String>();
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
