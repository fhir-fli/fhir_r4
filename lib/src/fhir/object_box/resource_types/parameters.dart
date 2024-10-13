// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxParameters {
  ObjectBoxParameters({
    String? id,
    ObjectBoxFhirMeta? meta,
    this.implicitRules,
    ObjectBoxElement? implicitRulesElement,
    this.language,
    ObjectBoxElement? languageElement,
    List<ObjectBoxParametersParameter>? parameter,
  }) {
    this.id.target = id;
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.parameter.addAll(parameter ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToOne<ObjectBoxFhirMeta> meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement> implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement> languageElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxParametersParameter> parameter =
      ToMany<ObjectBoxParametersParameter>();
}

@Entity()
class ObjectBoxParametersParameter {
  ObjectBoxParametersParameter({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.name,
    ObjectBoxElement? nameElement,
    this.valueBase64Binary,
    ObjectBoxElement? valueBase64BinaryElement,
    this.valueBoolean,
    ObjectBoxElement? valueBooleanElement,
    this.valueCanonical,
    ObjectBoxElement? valueCanonicalElement,
    this.valueCode,
    ObjectBoxElement? valueCodeElement,
    this.valueDate,
    ObjectBoxElement? valueDateElement,
    this.valueDateTime,
    ObjectBoxElement? valueDateTimeElement,
    this.valueDecimal,
    ObjectBoxElement? valueDecimalElement,
    this.valueId,
    ObjectBoxElement? valueIdElement,
    this.valueInstant,
    ObjectBoxElement? valueInstantElement,
    this.valueInteger,
    ObjectBoxElement? valueIntegerElement,
    this.valueMarkdown,
    ObjectBoxElement? valueMarkdownElement,
    this.valueOid,
    ObjectBoxElement? valueOidElement,
    this.valuePositiveInt,
    ObjectBoxElement? valuePositiveIntElement,
    this.valueString,
    ObjectBoxElement? valueStringElement,
    this.valueTime,
    ObjectBoxElement? valueTimeElement,
    this.valueUnsignedInt,
    ObjectBoxElement? valueUnsignedIntElement,
    this.valueUri,
    ObjectBoxElement? valueUriElement,
    this.valueUrl,
    ObjectBoxElement? valueUrlElement,
    this.valueUuid,
    ObjectBoxElement? valueUuidElement,
    ObjectBoxAddress? valueAddress,
    ObjectBoxAge? valueAge,
    ObjectBoxAnnotation? valueAnnotation,
    ObjectBoxAttachment? valueAttachment,
    ObjectBoxCodeableConcept? valueCodeableConcept,
    ObjectBoxCoding? valueCoding,
    ObjectBoxContactPoint? valueContactPoint,
    ObjectBoxCount? valueCount,
    ObjectBoxDistance? valueDistance,
    ObjectBoxFhirDuration? valueDuration,
    ObjectBoxHumanName? valueHumanName,
    ObjectBoxIdentifier? valueIdentifier,
    ObjectBoxMoney? valueMoney,
    ObjectBoxPeriod? valuePeriod,
    ObjectBoxQuantity? valueQuantity,
    ObjectBoxRange? valueRange,
    ObjectBoxRatio? valueRatio,
    ObjectBoxReference? valueReference,
    ObjectBoxSampledData? valueSampledData,
    ObjectBoxSignature? valueSignature,
    ObjectBoxTiming? valueTiming,
    ObjectBoxContactDetail? valueContactDetail,
    ObjectBoxContributor? valueContributor,
    ObjectBoxDataRequirement? valueDataRequirement,
    ObjectBoxFhirExpression? valueExpression,
    ObjectBoxParameterDefinition? valueParameterDefinition,
    ObjectBoxRelatedArtifact? valueRelatedArtifact,
    ObjectBoxTriggerDefinition? valueTriggerDefinition,
    ObjectBoxUsageContext? valueUsageContext,
    ObjectBoxDosage? valueDosage,
    ObjectBoxFhirMeta? valueMeta,
    ObjectBoxResource? resource,
    List<ObjectBoxParametersParameter>? part_,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.nameElement.target = nameElement;
    this.valueBase64BinaryElement.target = valueBase64BinaryElement;
    this.valueBooleanElement.target = valueBooleanElement;
    this.valueCanonicalElement.target = valueCanonicalElement;
    this.valueCodeElement.target = valueCodeElement;
    this.valueDateElement.target = valueDateElement;
    this.valueDateTimeElement.target = valueDateTimeElement;
    this.valueDecimalElement.target = valueDecimalElement;
    this.valueIdElement.target = valueIdElement;
    this.valueInstantElement.target = valueInstantElement;
    this.valueIntegerElement.target = valueIntegerElement;
    this.valueMarkdownElement.target = valueMarkdownElement;
    this.valueOidElement.target = valueOidElement;
    this.valuePositiveIntElement.target = valuePositiveIntElement;
    this.valueStringElement.target = valueStringElement;
    this.valueTimeElement.target = valueTimeElement;
    this.valueUnsignedIntElement.target = valueUnsignedIntElement;
    this.valueUriElement.target = valueUriElement;
    this.valueUrlElement.target = valueUrlElement;
    this.valueUuidElement.target = valueUuidElement;
    this.valueAddress.target = valueAddress;
    this.valueAge.target = valueAge;
    this.valueAnnotation.target = valueAnnotation;
    this.valueAttachment.target = valueAttachment;
    this.valueCodeableConcept.target = valueCodeableConcept;
    this.valueCoding.target = valueCoding;
    this.valueContactPoint.target = valueContactPoint;
    this.valueCount.target = valueCount;
    this.valueDistance.target = valueDistance;
    this.valueDuration.target = valueDuration;
    this.valueHumanName.target = valueHumanName;
    this.valueIdentifier.target = valueIdentifier;
    this.valueMoney.target = valueMoney;
    this.valuePeriod.target = valuePeriod;
    this.valueQuantity.target = valueQuantity;
    this.valueRange.target = valueRange;
    this.valueRatio.target = valueRatio;
    this.valueReference.target = valueReference;
    this.valueSampledData.target = valueSampledData;
    this.valueSignature.target = valueSignature;
    this.valueTiming.target = valueTiming;
    this.valueContactDetail.target = valueContactDetail;
    this.valueContributor.target = valueContributor;
    this.valueDataRequirement.target = valueDataRequirement;
    this.valueExpression.target = valueExpression;
    this.valueParameterDefinition.target = valueParameterDefinition;
    this.valueRelatedArtifact.target = valueRelatedArtifact;
    this.valueTriggerDefinition.target = valueTriggerDefinition;
    this.valueUsageContext.target = valueUsageContext;
    this.valueDosage.target = valueDosage;
    this.valueMeta.target = valueMeta;
    this.resource.target = resource;
    this.part_.addAll(part_ ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  String? valueBase64Binary;
  ToOne<ObjectBoxElement> valueBase64BinaryElement = ToOne<ObjectBoxElement>();
  bool? valueBoolean;
  ToOne<ObjectBoxElement> valueBooleanElement = ToOne<ObjectBoxElement>();
  String? valueCanonical;
  ToOne<ObjectBoxElement> valueCanonicalElement = ToOne<ObjectBoxElement>();
  String? valueCode;
  ToOne<ObjectBoxElement> valueCodeElement = ToOne<ObjectBoxElement>();
  String? valueDate;
  ToOne<ObjectBoxElement> valueDateElement = ToOne<ObjectBoxElement>();
  String? valueDateTime;
  ToOne<ObjectBoxElement> valueDateTimeElement = ToOne<ObjectBoxElement>();
  double? valueDecimal;
  ToOne<ObjectBoxElement> valueDecimalElement = ToOne<ObjectBoxElement>();
  String? valueId;
  ToOne<ObjectBoxElement> valueIdElement = ToOne<ObjectBoxElement>();
  String? valueInstant;
  ToOne<ObjectBoxElement> valueInstantElement = ToOne<ObjectBoxElement>();
  int? valueInteger;
  ToOne<ObjectBoxElement> valueIntegerElement = ToOne<ObjectBoxElement>();
  String? valueMarkdown;
  ToOne<ObjectBoxElement> valueMarkdownElement = ToOne<ObjectBoxElement>();
  String? valueOid;
  ToOne<ObjectBoxElement> valueOidElement = ToOne<ObjectBoxElement>();
  int? valuePositiveInt;
  ToOne<ObjectBoxElement> valuePositiveIntElement = ToOne<ObjectBoxElement>();
  String? valueString;
  ToOne<ObjectBoxElement> valueStringElement = ToOne<ObjectBoxElement>();
  String? valueTime;
  ToOne<ObjectBoxElement> valueTimeElement = ToOne<ObjectBoxElement>();
  int? valueUnsignedInt;
  ToOne<ObjectBoxElement> valueUnsignedIntElement = ToOne<ObjectBoxElement>();
  String? valueUri;
  ToOne<ObjectBoxElement> valueUriElement = ToOne<ObjectBoxElement>();
  String? valueUrl;
  ToOne<ObjectBoxElement> valueUrlElement = ToOne<ObjectBoxElement>();
  String? valueUuid;
  ToOne<ObjectBoxElement> valueUuidElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxAddress> valueAddress = ToOne<ObjectBoxAddress>();
  ToOne<ObjectBoxAge> valueAge = ToOne<ObjectBoxAge>();
  ToOne<ObjectBoxAnnotation> valueAnnotation = ToOne<ObjectBoxAnnotation>();
  ToOne<ObjectBoxAttachment> valueAttachment = ToOne<ObjectBoxAttachment>();
  ToOne<ObjectBoxCodeableConcept> valueCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCoding> valueCoding = ToOne<ObjectBoxCoding>();
  ToOne<ObjectBoxContactPoint> valueContactPoint =
      ToOne<ObjectBoxContactPoint>();
  ToOne<ObjectBoxCount> valueCount = ToOne<ObjectBoxCount>();
  ToOne<ObjectBoxDistance> valueDistance = ToOne<ObjectBoxDistance>();
  ToOne<ObjectBoxFhirDuration> valueDuration = ToOne<ObjectBoxFhirDuration>();
  ToOne<ObjectBoxHumanName> valueHumanName = ToOne<ObjectBoxHumanName>();
  ToOne<ObjectBoxIdentifier> valueIdentifier = ToOne<ObjectBoxIdentifier>();
  ToOne<ObjectBoxMoney> valueMoney = ToOne<ObjectBoxMoney>();
  ToOne<ObjectBoxPeriod> valuePeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxQuantity> valueQuantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxRange> valueRange = ToOne<ObjectBoxRange>();
  ToOne<ObjectBoxRatio> valueRatio = ToOne<ObjectBoxRatio>();
  ToOne<ObjectBoxReference> valueReference = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxSampledData> valueSampledData = ToOne<ObjectBoxSampledData>();
  ToOne<ObjectBoxSignature> valueSignature = ToOne<ObjectBoxSignature>();
  ToOne<ObjectBoxTiming> valueTiming = ToOne<ObjectBoxTiming>();
  ToOne<ObjectBoxContactDetail> valueContactDetail =
      ToOne<ObjectBoxContactDetail>();
  ToOne<ObjectBoxContributor> valueContributor = ToOne<ObjectBoxContributor>();
  ToOne<ObjectBoxDataRequirement> valueDataRequirement =
      ToOne<ObjectBoxDataRequirement>();
  ToOne<ObjectBoxFhirExpression> valueExpression =
      ToOne<ObjectBoxFhirExpression>();
  ToOne<ObjectBoxParameterDefinition> valueParameterDefinition =
      ToOne<ObjectBoxParameterDefinition>();
  ToOne<ObjectBoxRelatedArtifact> valueRelatedArtifact =
      ToOne<ObjectBoxRelatedArtifact>();
  ToOne<ObjectBoxTriggerDefinition> valueTriggerDefinition =
      ToOne<ObjectBoxTriggerDefinition>();
  ToOne<ObjectBoxUsageContext> valueUsageContext =
      ToOne<ObjectBoxUsageContext>();
  ToOne<ObjectBoxDosage> valueDosage = ToOne<ObjectBoxDosage>();
  ToOne<ObjectBoxFhirMeta> valueMeta = ToOne<ObjectBoxFhirMeta>();
  ToOne<ObjectBoxResource> resource = ToOne<ObjectBoxResource>();
  ToMany<ObjectBoxParametersParameter> part_ =
      ToMany<ObjectBoxParametersParameter>();
}
