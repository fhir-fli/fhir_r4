import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Task extends DomainResource {
  final List<Identifier>? identifier;
  final FhirCanonical? instantiatesCanonical;
  final Element? instantiatesCanonicalElement;
  final FhirUri? instantiatesUri;
  final Element? instantiatesUriElement;
  final List<Reference>? basedOn;
  final Identifier? groupIdentifier;
  final List<Reference>? partOf;
  final FhirCode status;
  final Element? statusElement;
  final CodeableConcept? statusReason;
  final CodeableConcept? businessStatus;
  final FhirCode intent;
  final Element? intentElement;
  final FhirCode? priority;
  final Element? priorityElement;
  final CodeableConcept? code;
  final FhirString? description;
  final Element? descriptionElement;
  final Reference? focus;
  final Reference? for_;
  final Reference? encounter;
  final Period? executionPeriod;
  final FhirDateTime? authoredOn;
  final Element? authoredOnElement;
  final FhirDateTime? lastModified;
  final Element? lastModifiedElement;
  final Reference? requester;
  final List<CodeableConcept>? performerType;
  final Reference? owner;
  final Reference? location;
  final CodeableConcept? reasonCode;
  final Reference? reasonReference;
  final List<Reference>? insurance;
  final List<Annotation>? note;
  final List<Reference>? relevantHistory;
  final TaskRestriction? restriction;
  final List<TaskInput>? input;
  final List<TaskOutput>? output;

  Task({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
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
  }) : super(resourceType: R4ResourceType.Task);

  @override
  Task clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class TaskRestriction extends BackboneElement {
  final FhirPositiveInt? repetitions;
  final Element? repetitionsElement;
  final Period? period;
  final List<Reference>? recipient;

  TaskRestriction({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.repetitions,
    this.repetitionsElement,
    this.period,
    this.recipient,
  });

  @override
  TaskRestriction clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class TaskInput extends BackboneElement {
  final CodeableConcept type;
  final FhirBase64Binary valueBase64Binary;
  final Element? valueBase64BinaryElement;
  final FhirBoolean valueBoolean;
  final Element? valueBooleanElement;
  final FhirCanonical valueCanonical;
  final Element? valueCanonicalElement;
  final FhirCode valueCode;
  final Element? valueCodeElement;
  final FhirDate valueDate;
  final Element? valueDateElement;
  final FhirDateTime valueDateTime;
  final Element? valueDateTimeElement;
  final FhirDecimal valueDecimal;
  final Element? valueDecimalElement;
  final FhirId valueId;
  final Element? valueIdElement;
  final FhirInstant valueInstant;
  final Element? valueInstantElement;
  final FhirInteger valueInteger;
  final Element? valueIntegerElement;
  final FhirMarkdown valueMarkdown;
  final Element? valueMarkdownElement;
  final FhirOid valueOid;
  final Element? valueOidElement;
  final FhirPositiveInt valuePositiveInt;
  final Element? valuePositiveIntElement;
  final FhirString valueString;
  final Element? valueStringElement;
  final FhirTime valueTime;
  final Element? valueTimeElement;
  final FhirUnsignedInt valueUnsignedInt;
  final Element? valueUnsignedIntElement;
  final FhirUri valueUri;
  final Element? valueUriElement;
  final FhirUrl valueUrl;
  final Element? valueUrlElement;
  final FhirUuid valueUuid;
  final Element? valueUuidElement;
  final Address valueAddress;
  final Age valueAge;
  final Annotation valueAnnotation;
  final Attachment valueAttachment;
  final CodeableConcept valueCodeableConcept;
  final Coding valueCoding;
  final ContactPoint valueContactPoint;
  final Count valueCount;
  final Distance valueDistance;
  final FhirDuration valueDuration;
  final HumanName valueHumanName;
  final Identifier valueIdentifier;
  final Money valueMoney;
  final Period valuePeriod;
  final Quantity valueQuantity;
  final Range valueRange;
  final Ratio valueRatio;
  final Reference valueReference;
  final SampledData valueSampledData;
  final Signature valueSignature;
  final Timing valueTiming;
  final ContactDetail valueContactDetail;
  final Contributor valueContributor;
  final DataRequirement valueDataRequirement;
  final FhirExpression valueExpression;
  final ParameterDefinition valueParameterDefinition;
  final RelatedArtifact valueRelatedArtifact;
  final TriggerDefinition valueTriggerDefinition;
  final UsageContext valueUsageContext;
  final Dosage valueDosage;
  final FhirMeta valueMeta;

  TaskInput({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    required this.valueBase64Binary,
    this.valueBase64BinaryElement,
    required this.valueBoolean,
    this.valueBooleanElement,
    required this.valueCanonical,
    this.valueCanonicalElement,
    required this.valueCode,
    this.valueCodeElement,
    required this.valueDate,
    this.valueDateElement,
    required this.valueDateTime,
    this.valueDateTimeElement,
    required this.valueDecimal,
    this.valueDecimalElement,
    required this.valueId,
    this.valueIdElement,
    required this.valueInstant,
    this.valueInstantElement,
    required this.valueInteger,
    this.valueIntegerElement,
    required this.valueMarkdown,
    this.valueMarkdownElement,
    required this.valueOid,
    this.valueOidElement,
    required this.valuePositiveInt,
    this.valuePositiveIntElement,
    required this.valueString,
    this.valueStringElement,
    required this.valueTime,
    this.valueTimeElement,
    required this.valueUnsignedInt,
    this.valueUnsignedIntElement,
    required this.valueUri,
    this.valueUriElement,
    required this.valueUrl,
    this.valueUrlElement,
    required this.valueUuid,
    this.valueUuidElement,
    required this.valueAddress,
    required this.valueAge,
    required this.valueAnnotation,
    required this.valueAttachment,
    required this.valueCodeableConcept,
    required this.valueCoding,
    required this.valueContactPoint,
    required this.valueCount,
    required this.valueDistance,
    required this.valueDuration,
    required this.valueHumanName,
    required this.valueIdentifier,
    required this.valueMoney,
    required this.valuePeriod,
    required this.valueQuantity,
    required this.valueRange,
    required this.valueRatio,
    required this.valueReference,
    required this.valueSampledData,
    required this.valueSignature,
    required this.valueTiming,
    required this.valueContactDetail,
    required this.valueContributor,
    required this.valueDataRequirement,
    required this.valueExpression,
    required this.valueParameterDefinition,
    required this.valueRelatedArtifact,
    required this.valueTriggerDefinition,
    required this.valueUsageContext,
    required this.valueDosage,
    required this.valueMeta,
  });

  @override
  TaskInput clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class TaskOutput extends BackboneElement {
  final CodeableConcept type;
  final FhirBase64Binary valueBase64Binary;
  final Element? valueBase64BinaryElement;
  final FhirBoolean valueBoolean;
  final Element? valueBooleanElement;
  final FhirCanonical valueCanonical;
  final Element? valueCanonicalElement;
  final FhirCode valueCode;
  final Element? valueCodeElement;
  final FhirDate valueDate;
  final Element? valueDateElement;
  final FhirDateTime valueDateTime;
  final Element? valueDateTimeElement;
  final FhirDecimal valueDecimal;
  final Element? valueDecimalElement;
  final FhirId valueId;
  final Element? valueIdElement;
  final FhirInstant valueInstant;
  final Element? valueInstantElement;
  final FhirInteger valueInteger;
  final Element? valueIntegerElement;
  final FhirMarkdown valueMarkdown;
  final Element? valueMarkdownElement;
  final FhirOid valueOid;
  final Element? valueOidElement;
  final FhirPositiveInt valuePositiveInt;
  final Element? valuePositiveIntElement;
  final FhirString valueString;
  final Element? valueStringElement;
  final FhirTime valueTime;
  final Element? valueTimeElement;
  final FhirUnsignedInt valueUnsignedInt;
  final Element? valueUnsignedIntElement;
  final FhirUri valueUri;
  final Element? valueUriElement;
  final FhirUrl valueUrl;
  final Element? valueUrlElement;
  final FhirUuid valueUuid;
  final Element? valueUuidElement;
  final Address valueAddress;
  final Age valueAge;
  final Annotation valueAnnotation;
  final Attachment valueAttachment;
  final CodeableConcept valueCodeableConcept;
  final Coding valueCoding;
  final ContactPoint valueContactPoint;
  final Count valueCount;
  final Distance valueDistance;
  final FhirDuration valueDuration;
  final HumanName valueHumanName;
  final Identifier valueIdentifier;
  final Money valueMoney;
  final Period valuePeriod;
  final Quantity valueQuantity;
  final Range valueRange;
  final Ratio valueRatio;
  final Reference valueReference;
  final SampledData valueSampledData;
  final Signature valueSignature;
  final Timing valueTiming;
  final ContactDetail valueContactDetail;
  final Contributor valueContributor;
  final DataRequirement valueDataRequirement;
  final FhirExpression valueExpression;
  final ParameterDefinition valueParameterDefinition;
  final RelatedArtifact valueRelatedArtifact;
  final TriggerDefinition valueTriggerDefinition;
  final UsageContext valueUsageContext;
  final Dosage valueDosage;
  final FhirMeta valueMeta;

  TaskOutput({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    required this.valueBase64Binary,
    this.valueBase64BinaryElement,
    required this.valueBoolean,
    this.valueBooleanElement,
    required this.valueCanonical,
    this.valueCanonicalElement,
    required this.valueCode,
    this.valueCodeElement,
    required this.valueDate,
    this.valueDateElement,
    required this.valueDateTime,
    this.valueDateTimeElement,
    required this.valueDecimal,
    this.valueDecimalElement,
    required this.valueId,
    this.valueIdElement,
    required this.valueInstant,
    this.valueInstantElement,
    required this.valueInteger,
    this.valueIntegerElement,
    required this.valueMarkdown,
    this.valueMarkdownElement,
    required this.valueOid,
    this.valueOidElement,
    required this.valuePositiveInt,
    this.valuePositiveIntElement,
    required this.valueString,
    this.valueStringElement,
    required this.valueTime,
    this.valueTimeElement,
    required this.valueUnsignedInt,
    this.valueUnsignedIntElement,
    required this.valueUri,
    this.valueUriElement,
    required this.valueUrl,
    this.valueUrlElement,
    required this.valueUuid,
    this.valueUuidElement,
    required this.valueAddress,
    required this.valueAge,
    required this.valueAnnotation,
    required this.valueAttachment,
    required this.valueCodeableConcept,
    required this.valueCoding,
    required this.valueContactPoint,
    required this.valueCount,
    required this.valueDistance,
    required this.valueDuration,
    required this.valueHumanName,
    required this.valueIdentifier,
    required this.valueMoney,
    required this.valuePeriod,
    required this.valueQuantity,
    required this.valueRange,
    required this.valueRatio,
    required this.valueReference,
    required this.valueSampledData,
    required this.valueSignature,
    required this.valueTiming,
    required this.valueContactDetail,
    required this.valueContributor,
    required this.valueDataRequirement,
    required this.valueExpression,
    required this.valueParameterDefinition,
    required this.valueRelatedArtifact,
    required this.valueTriggerDefinition,
    required this.valueUsageContext,
    required this.valueDosage,
    required this.valueMeta,
  });

  @override
  TaskOutput clone() => throw UnimplementedError();
}
