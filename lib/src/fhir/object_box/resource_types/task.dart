// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxTask {
  ObjectBoxTask({
    String? id,
    ObjectBoxFhirMeta? meta,
    this.implicitRules,
    ObjectBoxElement? implicitRulesElement,
    this.language,
    ObjectBoxElement? languageElement,
    ObjectBoxNarrative? text,
    List<ObjectBoxResource>? contained,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxIdentifier>? identifier,
    this.instantiatesCanonical,
    ObjectBoxElement? instantiatesCanonicalElement,
    this.instantiatesUri,
    ObjectBoxElement? instantiatesUriElement,
    List<ObjectBoxReference>? basedOn,
    ObjectBoxIdentifier? groupIdentifier,
    List<ObjectBoxReference>? partOf,
    required this.status,
    ObjectBoxElement? statusElement,
    ObjectBoxCodeableConcept? statusReason,
    ObjectBoxCodeableConcept? businessStatus,
    required this.intent,
    ObjectBoxElement? intentElement,
    this.priority,
    ObjectBoxElement? priorityElement,
    ObjectBoxCodeableConcept? code,
    this.description,
    ObjectBoxElement? descriptionElement,
    ObjectBoxReference? focus,
    ObjectBoxReference? for_,
    ObjectBoxReference? encounter,
    ObjectBoxPeriod? executionPeriod,
    this.authoredOn,
    ObjectBoxElement? authoredOnElement,
    this.lastModified,
    ObjectBoxElement? lastModifiedElement,
    ObjectBoxReference? requester,
    List<ObjectBoxCodeableConcept>? performerType,
    ObjectBoxReference? owner,
    ObjectBoxReference? location,
    ObjectBoxCodeableConcept? reasonCode,
    ObjectBoxReference? reasonReference,
    List<ObjectBoxReference>? insurance,
    List<ObjectBoxAnnotation>? note,
    List<ObjectBoxReference>? relevantHistory,
    ObjectBoxTaskRestriction? restriction,
    List<ObjectBoxTaskInput>? input,
    List<ObjectBoxTaskOutput>? output,
  }) {
    this.id.target = id;
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this.instantiatesCanonicalElement.target = instantiatesCanonicalElement;
    this.instantiatesUriElement.target = instantiatesUriElement;
    this.basedOn.addAll(basedOn ?? []);
    this.groupIdentifier.target = groupIdentifier;
    this.partOf.addAll(partOf ?? []);
    this.statusElement.target = statusElement;
    this.statusReason.target = statusReason;
    this.businessStatus.target = businessStatus;
    this.intentElement.target = intentElement;
    this.priorityElement.target = priorityElement;
    this.code.target = code;
    this.descriptionElement.target = descriptionElement;
    this.focus.target = focus;
    this.for_.target = for_;
    this.encounter.target = encounter;
    this.executionPeriod.target = executionPeriod;
    this.authoredOnElement.target = authoredOnElement;
    this.lastModifiedElement.target = lastModifiedElement;
    this.requester.target = requester;
    this.performerType.addAll(performerType ?? []);
    this.owner.target = owner;
    this.location.target = location;
    this.reasonCode.target = reasonCode;
    this.reasonReference.target = reasonReference;
    this.insurance.addAll(insurance ?? []);
    this.note.addAll(note ?? []);
    this.relevantHistory.addAll(relevantHistory ?? []);
    this.restriction.target = restriction;
    this.input.addAll(input ?? []);
    this.output.addAll(output ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToOne<ObjectBoxFhirMeta> meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement> implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement> languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative> text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource> contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  String? instantiatesCanonical;
  ToOne<ObjectBoxElement> instantiatesCanonicalElement =
      ToOne<ObjectBoxElement>();
  String? instantiatesUri;
  ToOne<ObjectBoxElement> instantiatesUriElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference> basedOn = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxIdentifier> groupIdentifier = ToOne<ObjectBoxIdentifier>();
  ToMany<ObjectBoxReference> partOf = ToMany<ObjectBoxReference>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> statusReason =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> businessStatus =
      ToOne<ObjectBoxCodeableConcept>();
  String intent;
  ToOne<ObjectBoxElement> intentElement = ToOne<ObjectBoxElement>();
  String? priority;
  ToOne<ObjectBoxElement> priorityElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> focus = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> for_ = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> encounter = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxPeriod> executionPeriod = ToOne<ObjectBoxPeriod>();
  String? authoredOn;
  ToOne<ObjectBoxElement> authoredOnElement = ToOne<ObjectBoxElement>();
  String? lastModified;
  ToOne<ObjectBoxElement> lastModifiedElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> requester = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept> performerType =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> owner = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> location = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> reasonCode =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> reasonReference = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference> insurance = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxAnnotation> note = ToMany<ObjectBoxAnnotation>();
  ToMany<ObjectBoxReference> relevantHistory = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxTaskRestriction> restriction =
      ToOne<ObjectBoxTaskRestriction>();
  ToMany<ObjectBoxTaskInput> input = ToMany<ObjectBoxTaskInput>();
  ToMany<ObjectBoxTaskOutput> output = ToMany<ObjectBoxTaskOutput>();
}

@Entity()
class ObjectBoxTaskRestriction {
  ObjectBoxTaskRestriction({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.repetitions,
    ObjectBoxElement? repetitionsElement,
    ObjectBoxPeriod? period,
    List<ObjectBoxReference>? recipient,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.repetitionsElement.target = repetitionsElement;
    this.period.target = period;
    this.recipient.addAll(recipient ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  int? repetitions;
  ToOne<ObjectBoxElement> repetitionsElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> period = ToOne<ObjectBoxPeriod>();
  ToMany<ObjectBoxReference> recipient = ToMany<ObjectBoxReference>();
}

@Entity()
class ObjectBoxTaskInput {
  ObjectBoxTaskInput({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? type,
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
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
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
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
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
}

@Entity()
class ObjectBoxTaskOutput {
  ObjectBoxTaskOutput({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? type,
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
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
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
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
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
}
