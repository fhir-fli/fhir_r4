// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxTask {
  ObjectBoxTask({
    this.id,
    this.meta,
    this.implicitRules,
    this.implicitRulesElement,
    this.language,
    this.languageElement,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.instantiatesCanonical,
    this.instantiatesCanonicalElement,
    this.instantiatesUri,
    this.instantiatesUriElement,
    this.basedOn,
    this.groupIdentifier,
    this.partOf,
    required this.status,
    this.statusElement,
    this.statusReason,
    this.businessStatus,
    required this.intent,
    this.intentElement,
    this.priority,
    this.priorityElement,
    this.code,
    this.description,
    this.descriptionElement,
    this.focus,
    this.for_,
    this.encounter,
    this.executionPeriod,
    this.authoredOn,
    this.authoredOnElement,
    this.lastModified,
    this.lastModifiedElement,
    this.requester,
    this.performerType,
    this.owner,
    this.location,
    this.reasonCode,
    this.reasonReference,
    this.insurance,
    this.note,
    this.relevantHistory,
    this.restriction,
    this.input,
    this.output,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<ObjectBoxFhirMeta>? meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement>? implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement>? languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative>? text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource>? contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxIdentifier>? identifier = ToMany<ObjectBoxIdentifier>();
  String? instantiatesCanonical;
  ToOne<ObjectBoxElement>? instantiatesCanonicalElement =
      ToOne<ObjectBoxElement>();
  String? instantiatesUri;
  ToOne<ObjectBoxElement>? instantiatesUriElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference>? basedOn = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxIdentifier>? groupIdentifier = ToOne<ObjectBoxIdentifier>();
  ToMany<ObjectBoxReference>? partOf = ToMany<ObjectBoxReference>();
  String status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? statusReason =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? businessStatus =
      ToOne<ObjectBoxCodeableConcept>();
  String intent;
  ToOne<ObjectBoxElement>? intentElement = ToOne<ObjectBoxElement>();
  String? priority;
  ToOne<ObjectBoxElement>? priorityElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? code = ToOne<ObjectBoxCodeableConcept>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? focus = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? for_ = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? encounter = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxPeriod>? executionPeriod = ToOne<ObjectBoxPeriod>();
  String? authoredOn;
  ToOne<ObjectBoxElement>? authoredOnElement = ToOne<ObjectBoxElement>();
  String? lastModified;
  ToOne<ObjectBoxElement>? lastModifiedElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? requester = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept>? performerType =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? owner = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? location = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept>? reasonCode =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? reasonReference = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? insurance = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxAnnotation>? note = ToMany<ObjectBoxAnnotation>();
  ToMany<ObjectBoxReference>? relevantHistory = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxTaskRestriction>? restriction =
      ToOne<ObjectBoxTaskRestriction>();
  ToMany<ObjectBoxTaskInput>? input = ToMany<ObjectBoxTaskInput>();
  ToMany<ObjectBoxTaskOutput>? output = ToMany<ObjectBoxTaskOutput>();
}

@Entity()
class ObjectBoxTaskRestriction {
  ObjectBoxTaskRestriction({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.repetitions,
    this.repetitionsElement,
    this.period,
    this.recipient,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  int? repetitions;
  ToOne<ObjectBoxElement>? repetitionsElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod>? period = ToOne<ObjectBoxPeriod>();
  ToMany<ObjectBoxReference>? recipient = ToMany<ObjectBoxReference>();
}

@Entity()
class ObjectBoxTaskInput {
  ObjectBoxTaskInput({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
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
    this.valueMeta,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
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
  ToOne<ObjectBoxFhirMeta>? valueMeta = ToOne<ObjectBoxFhirMeta>();
}

@Entity()
class ObjectBoxTaskOutput {
  ObjectBoxTaskOutput({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
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
    this.valueMeta,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
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
  ToOne<ObjectBoxFhirMeta>? valueMeta = ToOne<ObjectBoxFhirMeta>();
}
