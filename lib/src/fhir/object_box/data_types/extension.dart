import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class FhirExtension {
  FhirExtension({
    this.id,
    this.extension_,
    required this.url,
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
  ToOne<String> url = ToOne<String>();
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
