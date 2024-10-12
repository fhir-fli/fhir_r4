// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxFhirExtension {
  ObjectBoxFhirExtension({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToOne<String> url = ToOne<String>();
  String? valueBase64Binary;
  ToOne<ObjectBoxElement>? valueBase64BinaryElement = ToOne<ObjectBoxElement>();
  bool? valueBoolean;
  ToOne<ObjectBoxElement>? valueBooleanElement = ToOne<ObjectBoxElement>();
  String? valueCanonical;
  ToOne<ObjectBoxElement>? valueCanonicalElement = ToOne<ObjectBoxElement>();
  String? valueCode;
  ToOne<ObjectBoxElement>? valueCodeElement = ToOne<ObjectBoxElement>();
  String? valueDate;
  ToOne<ObjectBoxElement>? valueDateElement = ToOne<ObjectBoxElement>();
  String? valueDateTime;
  ToOne<ObjectBoxElement>? valueDateTimeElement = ToOne<ObjectBoxElement>();
  double? valueDecimal;
  ToOne<ObjectBoxElement>? valueDecimalElement = ToOne<ObjectBoxElement>();
  String? valueId;
  ToOne<ObjectBoxElement>? valueIdElement = ToOne<ObjectBoxElement>();
  String? valueInstant;
  ToOne<ObjectBoxElement>? valueInstantElement = ToOne<ObjectBoxElement>();
  int? valueInteger;
  ToOne<ObjectBoxElement>? valueIntegerElement = ToOne<ObjectBoxElement>();
  String? valueMarkdown;
  ToOne<ObjectBoxElement>? valueMarkdownElement = ToOne<ObjectBoxElement>();
  String? valueOid;
  ToOne<ObjectBoxElement>? valueOidElement = ToOne<ObjectBoxElement>();
  int? valuePositiveInt;
  ToOne<ObjectBoxElement>? valuePositiveIntElement = ToOne<ObjectBoxElement>();
  String? valueString;
  ToOne<ObjectBoxElement>? valueStringElement = ToOne<ObjectBoxElement>();
  String? valueTime;
  ToOne<ObjectBoxElement>? valueTimeElement = ToOne<ObjectBoxElement>();
  int? valueUnsignedInt;
  ToOne<ObjectBoxElement>? valueUnsignedIntElement = ToOne<ObjectBoxElement>();
  String? valueUri;
  ToOne<ObjectBoxElement>? valueUriElement = ToOne<ObjectBoxElement>();
  String? valueUrl;
  ToOne<ObjectBoxElement>? valueUrlElement = ToOne<ObjectBoxElement>();
  String? valueUuid;
  ToOne<ObjectBoxElement>? valueUuidElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxAddress>? valueAddress = ToOne<ObjectBoxAddress>();
  ToOne<ObjectBoxAge>? valueAge = ToOne<ObjectBoxAge>();
  ToOne<ObjectBoxAnnotation>? valueAnnotation = ToOne<ObjectBoxAnnotation>();
  ToOne<ObjectBoxAttachment>? valueAttachment = ToOne<ObjectBoxAttachment>();
  ToOne<ObjectBoxCodeableConcept>? valueCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableReference>? valueCodeableReference =
      ToOne<ObjectBoxCodeableReference>();
  ToOne<ObjectBoxCoding>? valueCoding = ToOne<ObjectBoxCoding>();
  ToOne<ObjectBoxContactPoint>? valueContactPoint =
      ToOne<ObjectBoxContactPoint>();
  ToOne<ObjectBoxCount>? valueCount = ToOne<ObjectBoxCount>();
  ToOne<ObjectBoxDistance>? valueDistance = ToOne<ObjectBoxDistance>();
  ToOne<ObjectBoxFhirDuration>? valueDuration = ToOne<ObjectBoxFhirDuration>();
  ToOne<ObjectBoxHumanName>? valueHumanName = ToOne<ObjectBoxHumanName>();
  ToOne<ObjectBoxIdentifier>? valueIdentifier = ToOne<ObjectBoxIdentifier>();
  ToOne<ObjectBoxMoney>? valueMoney = ToOne<ObjectBoxMoney>();
  ToOne<ObjectBoxPeriod>? valuePeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxQuantity>? valueQuantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxRange>? valueRange = ToOne<ObjectBoxRange>();
  ToOne<ObjectBoxRatio>? valueRatio = ToOne<ObjectBoxRatio>();
  ToOne<ObjectBoxRatioRange>? valueRatioRange = ToOne<ObjectBoxRatioRange>();
  ToOne<ObjectBoxReference>? valueReference = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxSampledData>? valueSampledData = ToOne<ObjectBoxSampledData>();
  ToOne<ObjectBoxSignature>? valueSignature = ToOne<ObjectBoxSignature>();
  ToOne<ObjectBoxTiming>? valueTiming = ToOne<ObjectBoxTiming>();
  ToOne<ObjectBoxContactDetail>? valueContactDetail =
      ToOne<ObjectBoxContactDetail>();
  ToOne<ObjectBoxContributor>? valueContributor = ToOne<ObjectBoxContributor>();
  ToOne<ObjectBoxDataRequirement>? valueDataRequirement =
      ToOne<ObjectBoxDataRequirement>();
  ToOne<ObjectBoxFhirExpression>? valueExpression =
      ToOne<ObjectBoxFhirExpression>();
  ToOne<ObjectBoxParameterDefinition>? valueParameterDefinition =
      ToOne<ObjectBoxParameterDefinition>();
  ToOne<ObjectBoxRelatedArtifact>? valueRelatedArtifact =
      ToOne<ObjectBoxRelatedArtifact>();
  ToOne<ObjectBoxTriggerDefinition>? valueTriggerDefinition =
      ToOne<ObjectBoxTriggerDefinition>();
  ToOne<ObjectBoxUsageContext>? valueUsageContext =
      ToOne<ObjectBoxUsageContext>();
  ToOne<ObjectBoxDosage>? valueDosage = ToOne<ObjectBoxDosage>();
}
