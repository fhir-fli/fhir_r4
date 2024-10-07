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
  final BackboneElement? restriction;
  final List<BackboneElement>? input;
  final List<BackboneElement>? output;

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
  final FhirBase64Binary valueFhirBase64Binary;
  final Element? valueFhirBase64BinaryElement;
  final FhirBoolean valueFhirBoolean;
  final Element? valueFhirBooleanElement;
  final FhirCanonical valueFhirCanonical;
  final Element? valueFhirCanonicalElement;
  final FhirCode valueFhirCode;
  final Element? valueFhirCodeElement;
  final FhirDate valueFhirDate;
  final Element? valueFhirDateElement;
  final FhirDateTime valueFhirDateTime;
  final Element? valueFhirDateTimeElement;
  final FhirDecimal valueFhirDecimal;
  final Element? valueFhirDecimalElement;
  final FhirId valueFhirId;
  final Element? valueFhirIdElement;
  final FhirInstant valueFhirInstant;
  final Element? valueFhirInstantElement;
  final FhirInteger valueFhirInteger;
  final Element? valueFhirIntegerElement;
  final FhirMarkdown valueFhirMarkdown;
  final Element? valueFhirMarkdownElement;
  final FhirOid valueFhirOid;
  final Element? valueFhirOidElement;
  final FhirPositiveInt valueFhirPositiveInt;
  final Element? valueFhirPositiveIntElement;
  final FhirString valueFhirString;
  final Element? valueFhirStringElement;
  final FhirTime valueFhirTime;
  final Element? valueFhirTimeElement;
  final FhirUnsignedInt valueFhirUnsignedInt;
  final Element? valueFhirUnsignedIntElement;
  final FhirUri valueFhirUri;
  final Element? valueFhirUriElement;
  final FhirUrl valueFhirUrl;
  final Element? valueFhirUrlElement;
  final FhirUuid valueFhirUuid;
  final Element? valueFhirUuidElement;
  final Address valueAddress;
  final Age valueAge;
  final Annotation valueAnnotation;
  final Attachment valueAttachment;
  final CodeableConcept valueCodeableConcept;
  final Coding valueCoding;
  final ContactPoint valueContactPoint;
  final Count valueCount;
  final Distance valueDistance;
  final FhirDuration valueFhirDuration;
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
  final FhirExpression valueFhirExpression;
  final ParameterDefinition valueParameterDefinition;
  final RelatedArtifact valueRelatedArtifact;
  final TriggerDefinition valueTriggerDefinition;
  final UsageContext valueUsageContext;
  final Dosage valueDosage;
  final FhirMeta valueFhirMeta;

  TaskInput({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    required this.valueFhirBase64Binary,
this.valueFhirBase64BinaryElement,
    required this.valueFhirBoolean,
this.valueFhirBooleanElement,
    required this.valueFhirCanonical,
this.valueFhirCanonicalElement,
    required this.valueFhirCode,
this.valueFhirCodeElement,
    required this.valueFhirDate,
this.valueFhirDateElement,
    required this.valueFhirDateTime,
this.valueFhirDateTimeElement,
    required this.valueFhirDecimal,
this.valueFhirDecimalElement,
    required this.valueFhirId,
this.valueFhirIdElement,
    required this.valueFhirInstant,
this.valueFhirInstantElement,
    required this.valueFhirInteger,
this.valueFhirIntegerElement,
    required this.valueFhirMarkdown,
this.valueFhirMarkdownElement,
    required this.valueFhirOid,
this.valueFhirOidElement,
    required this.valueFhirPositiveInt,
this.valueFhirPositiveIntElement,
    required this.valueFhirString,
this.valueFhirStringElement,
    required this.valueFhirTime,
this.valueFhirTimeElement,
    required this.valueFhirUnsignedInt,
this.valueFhirUnsignedIntElement,
    required this.valueFhirUri,
this.valueFhirUriElement,
    required this.valueFhirUrl,
this.valueFhirUrlElement,
    required this.valueFhirUuid,
this.valueFhirUuidElement,
    required this.valueAddress,
    required this.valueAge,
    required this.valueAnnotation,
    required this.valueAttachment,
    required this.valueCodeableConcept,
    required this.valueCoding,
    required this.valueContactPoint,
    required this.valueCount,
    required this.valueDistance,
    required this.valueFhirDuration,
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
    required this.valueFhirExpression,
    required this.valueParameterDefinition,
    required this.valueRelatedArtifact,
    required this.valueTriggerDefinition,
    required this.valueUsageContext,
    required this.valueDosage,
    required this.valueFhirMeta,
  });

@override
TaskInput clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class TaskOutput extends BackboneElement {
  final CodeableConcept type;
  final FhirBase64Binary valueFhirBase64Binary;
  final Element? valueFhirBase64BinaryElement;
  final FhirBoolean valueFhirBoolean;
  final Element? valueFhirBooleanElement;
  final FhirCanonical valueFhirCanonical;
  final Element? valueFhirCanonicalElement;
  final FhirCode valueFhirCode;
  final Element? valueFhirCodeElement;
  final FhirDate valueFhirDate;
  final Element? valueFhirDateElement;
  final FhirDateTime valueFhirDateTime;
  final Element? valueFhirDateTimeElement;
  final FhirDecimal valueFhirDecimal;
  final Element? valueFhirDecimalElement;
  final FhirId valueFhirId;
  final Element? valueFhirIdElement;
  final FhirInstant valueFhirInstant;
  final Element? valueFhirInstantElement;
  final FhirInteger valueFhirInteger;
  final Element? valueFhirIntegerElement;
  final FhirMarkdown valueFhirMarkdown;
  final Element? valueFhirMarkdownElement;
  final FhirOid valueFhirOid;
  final Element? valueFhirOidElement;
  final FhirPositiveInt valueFhirPositiveInt;
  final Element? valueFhirPositiveIntElement;
  final FhirString valueFhirString;
  final Element? valueFhirStringElement;
  final FhirTime valueFhirTime;
  final Element? valueFhirTimeElement;
  final FhirUnsignedInt valueFhirUnsignedInt;
  final Element? valueFhirUnsignedIntElement;
  final FhirUri valueFhirUri;
  final Element? valueFhirUriElement;
  final FhirUrl valueFhirUrl;
  final Element? valueFhirUrlElement;
  final FhirUuid valueFhirUuid;
  final Element? valueFhirUuidElement;
  final Address valueAddress;
  final Age valueAge;
  final Annotation valueAnnotation;
  final Attachment valueAttachment;
  final CodeableConcept valueCodeableConcept;
  final Coding valueCoding;
  final ContactPoint valueContactPoint;
  final Count valueCount;
  final Distance valueDistance;
  final FhirDuration valueFhirDuration;
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
  final FhirExpression valueFhirExpression;
  final ParameterDefinition valueParameterDefinition;
  final RelatedArtifact valueRelatedArtifact;
  final TriggerDefinition valueTriggerDefinition;
  final UsageContext valueUsageContext;
  final Dosage valueDosage;
  final FhirMeta valueFhirMeta;

  TaskOutput({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    required this.valueFhirBase64Binary,
this.valueFhirBase64BinaryElement,
    required this.valueFhirBoolean,
this.valueFhirBooleanElement,
    required this.valueFhirCanonical,
this.valueFhirCanonicalElement,
    required this.valueFhirCode,
this.valueFhirCodeElement,
    required this.valueFhirDate,
this.valueFhirDateElement,
    required this.valueFhirDateTime,
this.valueFhirDateTimeElement,
    required this.valueFhirDecimal,
this.valueFhirDecimalElement,
    required this.valueFhirId,
this.valueFhirIdElement,
    required this.valueFhirInstant,
this.valueFhirInstantElement,
    required this.valueFhirInteger,
this.valueFhirIntegerElement,
    required this.valueFhirMarkdown,
this.valueFhirMarkdownElement,
    required this.valueFhirOid,
this.valueFhirOidElement,
    required this.valueFhirPositiveInt,
this.valueFhirPositiveIntElement,
    required this.valueFhirString,
this.valueFhirStringElement,
    required this.valueFhirTime,
this.valueFhirTimeElement,
    required this.valueFhirUnsignedInt,
this.valueFhirUnsignedIntElement,
    required this.valueFhirUri,
this.valueFhirUriElement,
    required this.valueFhirUrl,
this.valueFhirUrlElement,
    required this.valueFhirUuid,
this.valueFhirUuidElement,
    required this.valueAddress,
    required this.valueAge,
    required this.valueAnnotation,
    required this.valueAttachment,
    required this.valueCodeableConcept,
    required this.valueCoding,
    required this.valueContactPoint,
    required this.valueCount,
    required this.valueDistance,
    required this.valueFhirDuration,
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
    required this.valueFhirExpression,
    required this.valueParameterDefinition,
    required this.valueRelatedArtifact,
    required this.valueTriggerDefinition,
    required this.valueUsageContext,
    required this.valueDosage,
    required this.valueFhirMeta,
  });

@override
TaskOutput clone() => throw UnimplementedError();
}

