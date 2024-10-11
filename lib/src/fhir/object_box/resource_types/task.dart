import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class Task extends Resource {
  Task({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.instantiatesCanonical,
    this.instantiatesUri,
    this.basedOn,
    this.groupIdentifier,
    this.partOf,
    required this.status,
    this.statusReason,
    this.businessStatus,
    required this.intent,
    this.priority,
    this.code,
    this.description,
    this.focus,
    this.for_,
    this.encounter,
    this.executionPeriod,
    this.authoredOn,
    this.lastModified,
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
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  String? instantiatesCanonical;
  String? instantiatesUri;
  ToMany<Reference>? basedOn = ToMany<Reference>();
  ToOne<Identifier>? groupIdentifier = ToOne<Identifier>();
  ToMany<Reference>? partOf = ToMany<Reference>();
  String status;
  ToOne<CodeableConcept>? statusReason = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? businessStatus = ToOne<CodeableConcept>();
  String intent;
  String? priority;
  ToOne<CodeableConcept>? code = ToOne<CodeableConcept>();
  String? description;
  ToOne<Reference>? focus = ToOne<Reference>();
  ToOne<Reference>? for_ = ToOne<Reference>();
  ToOne<Reference>? encounter = ToOne<Reference>();
  ToOne<Period>? executionPeriod = ToOne<Period>();
  String? authoredOn;
  String? lastModified;
  ToOne<Reference>? requester = ToOne<Reference>();
  ToMany<CodeableConcept>? performerType = ToMany<CodeableConcept>();
  ToOne<Reference>? owner = ToOne<Reference>();
  ToOne<Reference>? location = ToOne<Reference>();
  ToOne<CodeableConcept>? reasonCode = ToOne<CodeableConcept>();
  ToOne<Reference>? reasonReference = ToOne<Reference>();
  ToMany<Reference>? insurance = ToMany<Reference>();
  ToMany<Annotation>? note = ToMany<Annotation>();
  ToMany<Reference>? relevantHistory = ToMany<Reference>();
  ToOne<TaskRestriction>? restriction = ToOne<TaskRestriction>();
  ToMany<TaskInput>? input = ToMany<TaskInput>();
  ToMany<TaskOutput>? output = ToMany<TaskOutput>();
}

@Entity()
class TaskRestriction {
  TaskRestriction({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.repetitions,
    this.period,
    this.recipient,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  int? repetitions;
  ToOne<Period>? period = ToOne<Period>();
  ToMany<Reference>? recipient = ToMany<Reference>();
}

@Entity()
class TaskInput {
  TaskInput({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
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
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> type = ToOne<CodeableConcept>();
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
  ToOne<FhirMeta>? valueMeta = ToOne<FhirMeta>();
}

@Entity()
class TaskOutput {
  TaskOutput({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
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
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> type = ToOne<CodeableConcept>();
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
  ToOne<FhirMeta>? valueMeta = ToOne<FhirMeta>();
}
