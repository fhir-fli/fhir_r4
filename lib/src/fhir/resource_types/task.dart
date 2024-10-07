import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Task] /// A task to be performed.
class Task extends DomainResource {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// The business identifier for this task.
  final List<Identifier>? identifier;

  /// [instantiatesCanonical] /// The URL pointing to a *FHIR*-defined protocol, guideline, orderset or other
  /// definition that is adhered to in whole or in part by this Task.
  final FhirCanonical? instantiatesCanonical;
  final Element? instantiatesCanonicalElement;

  /// [instantiatesUri] /// The URL pointing to an *externally* maintained protocol, guideline,
  /// orderset or other definition that is adhered to in whole or in part by this
  /// Task.
  final FhirUri? instantiatesUri;
  final Element? instantiatesUriElement;

  /// [basedOn] /// BasedOn refers to a higher-level authorization that triggered the creation
  /// of the task. It references a "request" resource such as a ServiceRequest,
  /// MedicationRequest, ServiceRequest, CarePlan, etc. which is distinct from
  /// the "request" resource the task is seeking to fulfill. This latter resource
  /// is referenced by FocusOn. For example, based on a ServiceRequest (=
  /// BasedOn), a task is created to fulfill a procedureRequest ( = FocusOn ) to
  /// collect a specimen from a patient.
  final List<Reference>? basedOn;

  /// [groupIdentifier] /// An identifier that links together multiple tasks and other requests that
  /// were created in the same context.
  final Identifier? groupIdentifier;

  /// [partOf] /// Task that this particular task is part of.
  final List<Reference>? partOf;

  /// [status] /// The current status of the task.
  final FhirCode status;
  final Element? statusElement;

  /// [statusReason] /// An explanation as to why this task is held, failed, was refused, etc.
  final CodeableConcept? statusReason;

  /// [businessStatus] /// Contains business-specific nuances of the business state.
  final CodeableConcept? businessStatus;

  /// [intent] /// Indicates the "level" of actionability associated with the Task, i.e.
  /// i+R[9]Cs this a proposed task, a planned task, an actionable task, etc.
  final FhirCode intent;
  final Element? intentElement;

  /// [priority] /// Indicates how quickly the Task should be addressed with respect to other
  /// requests.
  final FhirCode? priority;
  final Element? priorityElement;

  /// [code] /// A name or code (or both) briefly describing what the task involves.
  final CodeableConcept? code;

  /// [description] /// A free-text description of what is to be performed.
  final FhirString? description;
  final Element? descriptionElement;

  /// [focus] /// The request being actioned or the resource being manipulated by this task.
  final Reference? focus;

  /// [for_] /// The entity who benefits from the performance of the service specified in
  /// the task (e.g., the patient).
  final Reference? for_;

  /// [encounter] /// The healthcare event (e.g. a patient and healthcare provider interaction)
  /// during which this task was created.
  final Reference? encounter;

  /// [executionPeriod] /// Identifies the time action was first taken against the task (start) and/or
  /// the time final action was taken against the task prior to marking it as
  /// completed (end).
  final Period? executionPeriod;

  /// [authoredOn] /// The date and time this task was created.
  final FhirDateTime? authoredOn;
  final Element? authoredOnElement;

  /// [lastModified] /// The date and time of last modification to this task.
  final FhirDateTime? lastModified;
  final Element? lastModifiedElement;

  /// [requester] /// The creator of the task.
  final Reference? requester;

  /// [performerType] /// The kind of participant that should perform the task.
  final List<CodeableConcept>? performerType;

  /// [owner] /// Individual organization or Device currently responsible for task execution.
  final Reference? owner;

  /// [location] /// Principal physical location where the this task is performed.
  final Reference? location;

  /// [reasonCode] /// A description or code indicating why this task needs to be performed.
  final CodeableConcept? reasonCode;

  /// [reasonReference] /// A resource reference indicating why this task needs to be performed.
  final Reference? reasonReference;

  /// [insurance] /// Insurance plans, coverage extensions, pre-authorizations and/or
  /// pre-determinations that may be relevant to the Task.
  final List<Reference>? insurance;

  /// [note] /// Free-text information captured about the task as it progresses.
  final List<Annotation>? note;

  /// [relevantHistory] /// Links to Provenance records for past versions of this Task that identify
  /// key state transitions or updates that are likely to be relevant to a user
  /// looking at the current version of the task.
  final List<Reference>? relevantHistory;

  /// [restriction] /// If the Task.focus is a request resource and the task is seeking fulfillment
  /// (i.e. is asking for the request to be actioned), this element identifies
  /// any limitations on what parts of the referenced request should be actioned.
  final TaskRestriction? restriction;

  /// [input] /// Additional information that may be needed in the execution of the task.
  final List<TaskInput>? input;

  /// [output] /// Outputs produced by the Task.
  final List<TaskOutput>? output;
  @override
  Task clone() => throw UnimplementedError();
  Task copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FhirCanonical? instantiatesCanonical,
    Element? instantiatesCanonicalElement,
    FhirUri? instantiatesUri,
    Element? instantiatesUriElement,
    List<Reference>? basedOn,
    Identifier? groupIdentifier,
    List<Reference>? partOf,
    FhirCode? status,
    Element? statusElement,
    CodeableConcept? statusReason,
    CodeableConcept? businessStatus,
    FhirCode? intent,
    Element? intentElement,
    FhirCode? priority,
    Element? priorityElement,
    CodeableConcept? code,
    FhirString? description,
    Element? descriptionElement,
    Reference? focus,
    Reference? for_,
    Reference? encounter,
    Period? executionPeriod,
    FhirDateTime? authoredOn,
    Element? authoredOnElement,
    FhirDateTime? lastModified,
    Element? lastModifiedElement,
    Reference? requester,
    List<CodeableConcept>? performerType,
    Reference? owner,
    Reference? location,
    CodeableConcept? reasonCode,
    Reference? reasonReference,
    List<Reference>? insurance,
    List<Annotation>? note,
    List<Reference>? relevantHistory,
    TaskRestriction? restriction,
    List<TaskInput>? input,
    List<TaskOutput>? output,
  }) {
    return Task(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      instantiatesCanonical:
          instantiatesCanonical ?? this.instantiatesCanonical,
      instantiatesCanonicalElement:
          instantiatesCanonicalElement ?? this.instantiatesCanonicalElement,
      instantiatesUri: instantiatesUri ?? this.instantiatesUri,
      instantiatesUriElement:
          instantiatesUriElement ?? this.instantiatesUriElement,
      basedOn: basedOn ?? this.basedOn,
      groupIdentifier: groupIdentifier ?? this.groupIdentifier,
      partOf: partOf ?? this.partOf,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      statusReason: statusReason ?? this.statusReason,
      businessStatus: businessStatus ?? this.businessStatus,
      intent: intent ?? this.intent,
      intentElement: intentElement ?? this.intentElement,
      priority: priority ?? this.priority,
      priorityElement: priorityElement ?? this.priorityElement,
      code: code ?? this.code,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      focus: focus ?? this.focus,
      for_: for_ ?? this.for_,
      encounter: encounter ?? this.encounter,
      executionPeriod: executionPeriod ?? this.executionPeriod,
      authoredOn: authoredOn ?? this.authoredOn,
      authoredOnElement: authoredOnElement ?? this.authoredOnElement,
      lastModified: lastModified ?? this.lastModified,
      lastModifiedElement: lastModifiedElement ?? this.lastModifiedElement,
      requester: requester ?? this.requester,
      performerType: performerType ?? this.performerType,
      owner: owner ?? this.owner,
      location: location ?? this.location,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      insurance: insurance ?? this.insurance,
      note: note ?? this.note,
      relevantHistory: relevantHistory ?? this.relevantHistory,
      restriction: restriction ?? this.restriction,
      input: input ?? this.input,
      output: output ?? this.output,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [TaskRestriction] /// If the Task.focus is a request resource and the task is seeking fulfillment
/// (i.e. is asking for the request to be actioned), this element identifies
/// any limitations on what parts of the referenced request should be actioned.
class TaskRestriction extends BackboneElement {
  TaskRestriction({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.repetitions,
    this.repetitionsElement,
    this.period,
    this.recipient,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [repetitions] /// Indicates the number of times the requested action should occur.
  final FhirPositiveInt? repetitions;
  final Element? repetitionsElement;

  /// [period] /// Over what time-period is fulfillment sought.
  final Period? period;

  /// [recipient] /// For requests that are targeted to more than on potential recipient/target,
  /// for whom is fulfillment sought?
  final List<Reference>? recipient;
  @override
  TaskRestriction clone() => throw UnimplementedError();
  TaskRestriction copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? repetitions,
    Element? repetitionsElement,
    Period? period,
    List<Reference>? recipient,
  }) {
    return TaskRestriction(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      repetitions: repetitions ?? this.repetitions,
      repetitionsElement: repetitionsElement ?? this.repetitionsElement,
      period: period ?? this.period,
      recipient: recipient ?? this.recipient,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [TaskInput] /// Additional information that may be needed in the execution of the task.
class TaskInput extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// A code or description indicating how the input is intended to be used as
  /// part of the task execution.
  final CodeableConcept type;

  /// [valueBase64Binary] /// The value of the input parameter as a basic type.
  final FhirBase64Binary valueBase64Binary;
  final Element? valueBase64BinaryElement;

  /// [valueBoolean] /// The value of the input parameter as a basic type.
  final FhirBoolean valueBoolean;
  final Element? valueBooleanElement;

  /// [valueCanonical] /// The value of the input parameter as a basic type.
  final FhirCanonical valueCanonical;
  final Element? valueCanonicalElement;

  /// [valueCode] /// The value of the input parameter as a basic type.
  final FhirCode valueCode;
  final Element? valueCodeElement;

  /// [valueDate] /// The value of the input parameter as a basic type.
  final FhirDate valueDate;
  final Element? valueDateElement;

  /// [valueDateTime] /// The value of the input parameter as a basic type.
  final FhirDateTime valueDateTime;
  final Element? valueDateTimeElement;

  /// [valueDecimal] /// The value of the input parameter as a basic type.
  final FhirDecimal valueDecimal;
  final Element? valueDecimalElement;

  /// [valueId] /// The value of the input parameter as a basic type.
  final FhirId valueId;
  final Element? valueIdElement;

  /// [valueInstant] /// The value of the input parameter as a basic type.
  final FhirInstant valueInstant;
  final Element? valueInstantElement;

  /// [valueInteger] /// The value of the input parameter as a basic type.
  final FhirInteger valueInteger;
  final Element? valueIntegerElement;

  /// [valueMarkdown] /// The value of the input parameter as a basic type.
  final FhirMarkdown valueMarkdown;
  final Element? valueMarkdownElement;

  /// [valueOid] /// The value of the input parameter as a basic type.
  final FhirOid valueOid;
  final Element? valueOidElement;

  /// [valuePositiveInt] /// The value of the input parameter as a basic type.
  final FhirPositiveInt valuePositiveInt;
  final Element? valuePositiveIntElement;

  /// [valueString] /// The value of the input parameter as a basic type.
  final FhirString valueString;
  final Element? valueStringElement;

  /// [valueTime] /// The value of the input parameter as a basic type.
  final FhirTime valueTime;
  final Element? valueTimeElement;

  /// [valueUnsignedInt] /// The value of the input parameter as a basic type.
  final FhirUnsignedInt valueUnsignedInt;
  final Element? valueUnsignedIntElement;

  /// [valueUri] /// The value of the input parameter as a basic type.
  final FhirUri valueUri;
  final Element? valueUriElement;

  /// [valueUrl] /// The value of the input parameter as a basic type.
  final FhirUrl valueUrl;
  final Element? valueUrlElement;

  /// [valueUuid] /// The value of the input parameter as a basic type.
  final FhirUuid valueUuid;
  final Element? valueUuidElement;

  /// [valueAddress] /// The value of the input parameter as a basic type.
  final Address valueAddress;

  /// [valueAge] /// The value of the input parameter as a basic type.
  final Age valueAge;

  /// [valueAnnotation] /// The value of the input parameter as a basic type.
  final Annotation valueAnnotation;

  /// [valueAttachment] /// The value of the input parameter as a basic type.
  final Attachment valueAttachment;

  /// [valueCodeableConcept] /// The value of the input parameter as a basic type.
  final CodeableConcept valueCodeableConcept;

  /// [valueCoding] /// The value of the input parameter as a basic type.
  final Coding valueCoding;

  /// [valueContactPoint] /// The value of the input parameter as a basic type.
  final ContactPoint valueContactPoint;

  /// [valueCount] /// The value of the input parameter as a basic type.
  final Count valueCount;

  /// [valueDistance] /// The value of the input parameter as a basic type.
  final Distance valueDistance;

  /// [valueDuration] /// The value of the input parameter as a basic type.
  final FhirDuration valueDuration;

  /// [valueHumanName] /// The value of the input parameter as a basic type.
  final HumanName valueHumanName;

  /// [valueIdentifier] /// The value of the input parameter as a basic type.
  final Identifier valueIdentifier;

  /// [valueMoney] /// The value of the input parameter as a basic type.
  final Money valueMoney;

  /// [valuePeriod] /// The value of the input parameter as a basic type.
  final Period valuePeriod;

  /// [valueQuantity] /// The value of the input parameter as a basic type.
  final Quantity valueQuantity;

  /// [valueRange] /// The value of the input parameter as a basic type.
  final Range valueRange;

  /// [valueRatio] /// The value of the input parameter as a basic type.
  final Ratio valueRatio;

  /// [valueReference] /// The value of the input parameter as a basic type.
  final Reference valueReference;

  /// [valueSampledData] /// The value of the input parameter as a basic type.
  final SampledData valueSampledData;

  /// [valueSignature] /// The value of the input parameter as a basic type.
  final Signature valueSignature;

  /// [valueTiming] /// The value of the input parameter as a basic type.
  final Timing valueTiming;

  /// [valueContactDetail] /// The value of the input parameter as a basic type.
  final ContactDetail valueContactDetail;

  /// [valueContributor] /// The value of the input parameter as a basic type.
  final Contributor valueContributor;

  /// [valueDataRequirement] /// The value of the input parameter as a basic type.
  final DataRequirement valueDataRequirement;

  /// [valueExpression] /// The value of the input parameter as a basic type.
  final FhirExpression valueExpression;

  /// [valueParameterDefinition] /// The value of the input parameter as a basic type.
  final ParameterDefinition valueParameterDefinition;

  /// [valueRelatedArtifact] /// The value of the input parameter as a basic type.
  final RelatedArtifact valueRelatedArtifact;

  /// [valueTriggerDefinition] /// The value of the input parameter as a basic type.
  final TriggerDefinition valueTriggerDefinition;

  /// [valueUsageContext] /// The value of the input parameter as a basic type.
  final UsageContext valueUsageContext;

  /// [valueDosage] /// The value of the input parameter as a basic type.
  final Dosage valueDosage;

  /// [valueMeta] /// The value of the input parameter as a basic type.
  final FhirMeta valueMeta;
  @override
  TaskInput clone() => throw UnimplementedError();
  TaskInput copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirBase64Binary? valueBase64Binary,
    Element? valueBase64BinaryElement,
    FhirBoolean? valueBoolean,
    Element? valueBooleanElement,
    FhirCanonical? valueCanonical,
    Element? valueCanonicalElement,
    FhirCode? valueCode,
    Element? valueCodeElement,
    FhirDate? valueDate,
    Element? valueDateElement,
    FhirDateTime? valueDateTime,
    Element? valueDateTimeElement,
    FhirDecimal? valueDecimal,
    Element? valueDecimalElement,
    FhirId? valueId,
    Element? valueIdElement,
    FhirInstant? valueInstant,
    Element? valueInstantElement,
    FhirInteger? valueInteger,
    Element? valueIntegerElement,
    FhirMarkdown? valueMarkdown,
    Element? valueMarkdownElement,
    FhirOid? valueOid,
    Element? valueOidElement,
    FhirPositiveInt? valuePositiveInt,
    Element? valuePositiveIntElement,
    FhirString? valueString,
    Element? valueStringElement,
    FhirTime? valueTime,
    Element? valueTimeElement,
    FhirUnsignedInt? valueUnsignedInt,
    Element? valueUnsignedIntElement,
    FhirUri? valueUri,
    Element? valueUriElement,
    FhirUrl? valueUrl,
    Element? valueUrlElement,
    FhirUuid? valueUuid,
    Element? valueUuidElement,
    Address? valueAddress,
    Age? valueAge,
    Annotation? valueAnnotation,
    Attachment? valueAttachment,
    CodeableConcept? valueCodeableConcept,
    Coding? valueCoding,
    ContactPoint? valueContactPoint,
    Count? valueCount,
    Distance? valueDistance,
    FhirDuration? valueDuration,
    HumanName? valueHumanName,
    Identifier? valueIdentifier,
    Money? valueMoney,
    Period? valuePeriod,
    Quantity? valueQuantity,
    Range? valueRange,
    Ratio? valueRatio,
    Reference? valueReference,
    SampledData? valueSampledData,
    Signature? valueSignature,
    Timing? valueTiming,
    ContactDetail? valueContactDetail,
    Contributor? valueContributor,
    DataRequirement? valueDataRequirement,
    FhirExpression? valueExpression,
    ParameterDefinition? valueParameterDefinition,
    RelatedArtifact? valueRelatedArtifact,
    TriggerDefinition? valueTriggerDefinition,
    UsageContext? valueUsageContext,
    Dosage? valueDosage,
    FhirMeta? valueMeta,
  }) {
    return TaskInput(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      valueBase64Binary: valueBase64Binary ?? this.valueBase64Binary,
      valueBase64BinaryElement:
          valueBase64BinaryElement ?? this.valueBase64BinaryElement,
      valueBoolean: valueBoolean ?? this.valueBoolean,
      valueBooleanElement: valueBooleanElement ?? this.valueBooleanElement,
      valueCanonical: valueCanonical ?? this.valueCanonical,
      valueCanonicalElement:
          valueCanonicalElement ?? this.valueCanonicalElement,
      valueCode: valueCode ?? this.valueCode,
      valueCodeElement: valueCodeElement ?? this.valueCodeElement,
      valueDate: valueDate ?? this.valueDate,
      valueDateElement: valueDateElement ?? this.valueDateElement,
      valueDateTime: valueDateTime ?? this.valueDateTime,
      valueDateTimeElement: valueDateTimeElement ?? this.valueDateTimeElement,
      valueDecimal: valueDecimal ?? this.valueDecimal,
      valueDecimalElement: valueDecimalElement ?? this.valueDecimalElement,
      valueId: valueId ?? this.valueId,
      valueIdElement: valueIdElement ?? this.valueIdElement,
      valueInstant: valueInstant ?? this.valueInstant,
      valueInstantElement: valueInstantElement ?? this.valueInstantElement,
      valueInteger: valueInteger ?? this.valueInteger,
      valueIntegerElement: valueIntegerElement ?? this.valueIntegerElement,
      valueMarkdown: valueMarkdown ?? this.valueMarkdown,
      valueMarkdownElement: valueMarkdownElement ?? this.valueMarkdownElement,
      valueOid: valueOid ?? this.valueOid,
      valueOidElement: valueOidElement ?? this.valueOidElement,
      valuePositiveInt: valuePositiveInt ?? this.valuePositiveInt,
      valuePositiveIntElement:
          valuePositiveIntElement ?? this.valuePositiveIntElement,
      valueString: valueString ?? this.valueString,
      valueStringElement: valueStringElement ?? this.valueStringElement,
      valueTime: valueTime ?? this.valueTime,
      valueTimeElement: valueTimeElement ?? this.valueTimeElement,
      valueUnsignedInt: valueUnsignedInt ?? this.valueUnsignedInt,
      valueUnsignedIntElement:
          valueUnsignedIntElement ?? this.valueUnsignedIntElement,
      valueUri: valueUri ?? this.valueUri,
      valueUriElement: valueUriElement ?? this.valueUriElement,
      valueUrl: valueUrl ?? this.valueUrl,
      valueUrlElement: valueUrlElement ?? this.valueUrlElement,
      valueUuid: valueUuid ?? this.valueUuid,
      valueUuidElement: valueUuidElement ?? this.valueUuidElement,
      valueAddress: valueAddress ?? this.valueAddress,
      valueAge: valueAge ?? this.valueAge,
      valueAnnotation: valueAnnotation ?? this.valueAnnotation,
      valueAttachment: valueAttachment ?? this.valueAttachment,
      valueCodeableConcept: valueCodeableConcept ?? this.valueCodeableConcept,
      valueCoding: valueCoding ?? this.valueCoding,
      valueContactPoint: valueContactPoint ?? this.valueContactPoint,
      valueCount: valueCount ?? this.valueCount,
      valueDistance: valueDistance ?? this.valueDistance,
      valueDuration: valueDuration ?? this.valueDuration,
      valueHumanName: valueHumanName ?? this.valueHumanName,
      valueIdentifier: valueIdentifier ?? this.valueIdentifier,
      valueMoney: valueMoney ?? this.valueMoney,
      valuePeriod: valuePeriod ?? this.valuePeriod,
      valueQuantity: valueQuantity ?? this.valueQuantity,
      valueRange: valueRange ?? this.valueRange,
      valueRatio: valueRatio ?? this.valueRatio,
      valueReference: valueReference ?? this.valueReference,
      valueSampledData: valueSampledData ?? this.valueSampledData,
      valueSignature: valueSignature ?? this.valueSignature,
      valueTiming: valueTiming ?? this.valueTiming,
      valueContactDetail: valueContactDetail ?? this.valueContactDetail,
      valueContributor: valueContributor ?? this.valueContributor,
      valueDataRequirement: valueDataRequirement ?? this.valueDataRequirement,
      valueExpression: valueExpression ?? this.valueExpression,
      valueParameterDefinition:
          valueParameterDefinition ?? this.valueParameterDefinition,
      valueRelatedArtifact: valueRelatedArtifact ?? this.valueRelatedArtifact,
      valueTriggerDefinition:
          valueTriggerDefinition ?? this.valueTriggerDefinition,
      valueUsageContext: valueUsageContext ?? this.valueUsageContext,
      valueDosage: valueDosage ?? this.valueDosage,
      valueMeta: valueMeta ?? this.valueMeta,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [TaskOutput] /// Outputs produced by the Task.
class TaskOutput extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// The name of the Output parameter.
  final CodeableConcept type;

  /// [valueBase64Binary] /// The value of the Output parameter as a basic type.
  final FhirBase64Binary valueBase64Binary;
  final Element? valueBase64BinaryElement;

  /// [valueBoolean] /// The value of the Output parameter as a basic type.
  final FhirBoolean valueBoolean;
  final Element? valueBooleanElement;

  /// [valueCanonical] /// The value of the Output parameter as a basic type.
  final FhirCanonical valueCanonical;
  final Element? valueCanonicalElement;

  /// [valueCode] /// The value of the Output parameter as a basic type.
  final FhirCode valueCode;
  final Element? valueCodeElement;

  /// [valueDate] /// The value of the Output parameter as a basic type.
  final FhirDate valueDate;
  final Element? valueDateElement;

  /// [valueDateTime] /// The value of the Output parameter as a basic type.
  final FhirDateTime valueDateTime;
  final Element? valueDateTimeElement;

  /// [valueDecimal] /// The value of the Output parameter as a basic type.
  final FhirDecimal valueDecimal;
  final Element? valueDecimalElement;

  /// [valueId] /// The value of the Output parameter as a basic type.
  final FhirId valueId;
  final Element? valueIdElement;

  /// [valueInstant] /// The value of the Output parameter as a basic type.
  final FhirInstant valueInstant;
  final Element? valueInstantElement;

  /// [valueInteger] /// The value of the Output parameter as a basic type.
  final FhirInteger valueInteger;
  final Element? valueIntegerElement;

  /// [valueMarkdown] /// The value of the Output parameter as a basic type.
  final FhirMarkdown valueMarkdown;
  final Element? valueMarkdownElement;

  /// [valueOid] /// The value of the Output parameter as a basic type.
  final FhirOid valueOid;
  final Element? valueOidElement;

  /// [valuePositiveInt] /// The value of the Output parameter as a basic type.
  final FhirPositiveInt valuePositiveInt;
  final Element? valuePositiveIntElement;

  /// [valueString] /// The value of the Output parameter as a basic type.
  final FhirString valueString;
  final Element? valueStringElement;

  /// [valueTime] /// The value of the Output parameter as a basic type.
  final FhirTime valueTime;
  final Element? valueTimeElement;

  /// [valueUnsignedInt] /// The value of the Output parameter as a basic type.
  final FhirUnsignedInt valueUnsignedInt;
  final Element? valueUnsignedIntElement;

  /// [valueUri] /// The value of the Output parameter as a basic type.
  final FhirUri valueUri;
  final Element? valueUriElement;

  /// [valueUrl] /// The value of the Output parameter as a basic type.
  final FhirUrl valueUrl;
  final Element? valueUrlElement;

  /// [valueUuid] /// The value of the Output parameter as a basic type.
  final FhirUuid valueUuid;
  final Element? valueUuidElement;

  /// [valueAddress] /// The value of the Output parameter as a basic type.
  final Address valueAddress;

  /// [valueAge] /// The value of the Output parameter as a basic type.
  final Age valueAge;

  /// [valueAnnotation] /// The value of the Output parameter as a basic type.
  final Annotation valueAnnotation;

  /// [valueAttachment] /// The value of the Output parameter as a basic type.
  final Attachment valueAttachment;

  /// [valueCodeableConcept] /// The value of the Output parameter as a basic type.
  final CodeableConcept valueCodeableConcept;

  /// [valueCoding] /// The value of the Output parameter as a basic type.
  final Coding valueCoding;

  /// [valueContactPoint] /// The value of the Output parameter as a basic type.
  final ContactPoint valueContactPoint;

  /// [valueCount] /// The value of the Output parameter as a basic type.
  final Count valueCount;

  /// [valueDistance] /// The value of the Output parameter as a basic type.
  final Distance valueDistance;

  /// [valueDuration] /// The value of the Output parameter as a basic type.
  final FhirDuration valueDuration;

  /// [valueHumanName] /// The value of the Output parameter as a basic type.
  final HumanName valueHumanName;

  /// [valueIdentifier] /// The value of the Output parameter as a basic type.
  final Identifier valueIdentifier;

  /// [valueMoney] /// The value of the Output parameter as a basic type.
  final Money valueMoney;

  /// [valuePeriod] /// The value of the Output parameter as a basic type.
  final Period valuePeriod;

  /// [valueQuantity] /// The value of the Output parameter as a basic type.
  final Quantity valueQuantity;

  /// [valueRange] /// The value of the Output parameter as a basic type.
  final Range valueRange;

  /// [valueRatio] /// The value of the Output parameter as a basic type.
  final Ratio valueRatio;

  /// [valueReference] /// The value of the Output parameter as a basic type.
  final Reference valueReference;

  /// [valueSampledData] /// The value of the Output parameter as a basic type.
  final SampledData valueSampledData;

  /// [valueSignature] /// The value of the Output parameter as a basic type.
  final Signature valueSignature;

  /// [valueTiming] /// The value of the Output parameter as a basic type.
  final Timing valueTiming;

  /// [valueContactDetail] /// The value of the Output parameter as a basic type.
  final ContactDetail valueContactDetail;

  /// [valueContributor] /// The value of the Output parameter as a basic type.
  final Contributor valueContributor;

  /// [valueDataRequirement] /// The value of the Output parameter as a basic type.
  final DataRequirement valueDataRequirement;

  /// [valueExpression] /// The value of the Output parameter as a basic type.
  final FhirExpression valueExpression;

  /// [valueParameterDefinition] /// The value of the Output parameter as a basic type.
  final ParameterDefinition valueParameterDefinition;

  /// [valueRelatedArtifact] /// The value of the Output parameter as a basic type.
  final RelatedArtifact valueRelatedArtifact;

  /// [valueTriggerDefinition] /// The value of the Output parameter as a basic type.
  final TriggerDefinition valueTriggerDefinition;

  /// [valueUsageContext] /// The value of the Output parameter as a basic type.
  final UsageContext valueUsageContext;

  /// [valueDosage] /// The value of the Output parameter as a basic type.
  final Dosage valueDosage;

  /// [valueMeta] /// The value of the Output parameter as a basic type.
  final FhirMeta valueMeta;
  @override
  TaskOutput clone() => throw UnimplementedError();
  TaskOutput copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirBase64Binary? valueBase64Binary,
    Element? valueBase64BinaryElement,
    FhirBoolean? valueBoolean,
    Element? valueBooleanElement,
    FhirCanonical? valueCanonical,
    Element? valueCanonicalElement,
    FhirCode? valueCode,
    Element? valueCodeElement,
    FhirDate? valueDate,
    Element? valueDateElement,
    FhirDateTime? valueDateTime,
    Element? valueDateTimeElement,
    FhirDecimal? valueDecimal,
    Element? valueDecimalElement,
    FhirId? valueId,
    Element? valueIdElement,
    FhirInstant? valueInstant,
    Element? valueInstantElement,
    FhirInteger? valueInteger,
    Element? valueIntegerElement,
    FhirMarkdown? valueMarkdown,
    Element? valueMarkdownElement,
    FhirOid? valueOid,
    Element? valueOidElement,
    FhirPositiveInt? valuePositiveInt,
    Element? valuePositiveIntElement,
    FhirString? valueString,
    Element? valueStringElement,
    FhirTime? valueTime,
    Element? valueTimeElement,
    FhirUnsignedInt? valueUnsignedInt,
    Element? valueUnsignedIntElement,
    FhirUri? valueUri,
    Element? valueUriElement,
    FhirUrl? valueUrl,
    Element? valueUrlElement,
    FhirUuid? valueUuid,
    Element? valueUuidElement,
    Address? valueAddress,
    Age? valueAge,
    Annotation? valueAnnotation,
    Attachment? valueAttachment,
    CodeableConcept? valueCodeableConcept,
    Coding? valueCoding,
    ContactPoint? valueContactPoint,
    Count? valueCount,
    Distance? valueDistance,
    FhirDuration? valueDuration,
    HumanName? valueHumanName,
    Identifier? valueIdentifier,
    Money? valueMoney,
    Period? valuePeriod,
    Quantity? valueQuantity,
    Range? valueRange,
    Ratio? valueRatio,
    Reference? valueReference,
    SampledData? valueSampledData,
    Signature? valueSignature,
    Timing? valueTiming,
    ContactDetail? valueContactDetail,
    Contributor? valueContributor,
    DataRequirement? valueDataRequirement,
    FhirExpression? valueExpression,
    ParameterDefinition? valueParameterDefinition,
    RelatedArtifact? valueRelatedArtifact,
    TriggerDefinition? valueTriggerDefinition,
    UsageContext? valueUsageContext,
    Dosage? valueDosage,
    FhirMeta? valueMeta,
  }) {
    return TaskOutput(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      valueBase64Binary: valueBase64Binary ?? this.valueBase64Binary,
      valueBase64BinaryElement:
          valueBase64BinaryElement ?? this.valueBase64BinaryElement,
      valueBoolean: valueBoolean ?? this.valueBoolean,
      valueBooleanElement: valueBooleanElement ?? this.valueBooleanElement,
      valueCanonical: valueCanonical ?? this.valueCanonical,
      valueCanonicalElement:
          valueCanonicalElement ?? this.valueCanonicalElement,
      valueCode: valueCode ?? this.valueCode,
      valueCodeElement: valueCodeElement ?? this.valueCodeElement,
      valueDate: valueDate ?? this.valueDate,
      valueDateElement: valueDateElement ?? this.valueDateElement,
      valueDateTime: valueDateTime ?? this.valueDateTime,
      valueDateTimeElement: valueDateTimeElement ?? this.valueDateTimeElement,
      valueDecimal: valueDecimal ?? this.valueDecimal,
      valueDecimalElement: valueDecimalElement ?? this.valueDecimalElement,
      valueId: valueId ?? this.valueId,
      valueIdElement: valueIdElement ?? this.valueIdElement,
      valueInstant: valueInstant ?? this.valueInstant,
      valueInstantElement: valueInstantElement ?? this.valueInstantElement,
      valueInteger: valueInteger ?? this.valueInteger,
      valueIntegerElement: valueIntegerElement ?? this.valueIntegerElement,
      valueMarkdown: valueMarkdown ?? this.valueMarkdown,
      valueMarkdownElement: valueMarkdownElement ?? this.valueMarkdownElement,
      valueOid: valueOid ?? this.valueOid,
      valueOidElement: valueOidElement ?? this.valueOidElement,
      valuePositiveInt: valuePositiveInt ?? this.valuePositiveInt,
      valuePositiveIntElement:
          valuePositiveIntElement ?? this.valuePositiveIntElement,
      valueString: valueString ?? this.valueString,
      valueStringElement: valueStringElement ?? this.valueStringElement,
      valueTime: valueTime ?? this.valueTime,
      valueTimeElement: valueTimeElement ?? this.valueTimeElement,
      valueUnsignedInt: valueUnsignedInt ?? this.valueUnsignedInt,
      valueUnsignedIntElement:
          valueUnsignedIntElement ?? this.valueUnsignedIntElement,
      valueUri: valueUri ?? this.valueUri,
      valueUriElement: valueUriElement ?? this.valueUriElement,
      valueUrl: valueUrl ?? this.valueUrl,
      valueUrlElement: valueUrlElement ?? this.valueUrlElement,
      valueUuid: valueUuid ?? this.valueUuid,
      valueUuidElement: valueUuidElement ?? this.valueUuidElement,
      valueAddress: valueAddress ?? this.valueAddress,
      valueAge: valueAge ?? this.valueAge,
      valueAnnotation: valueAnnotation ?? this.valueAnnotation,
      valueAttachment: valueAttachment ?? this.valueAttachment,
      valueCodeableConcept: valueCodeableConcept ?? this.valueCodeableConcept,
      valueCoding: valueCoding ?? this.valueCoding,
      valueContactPoint: valueContactPoint ?? this.valueContactPoint,
      valueCount: valueCount ?? this.valueCount,
      valueDistance: valueDistance ?? this.valueDistance,
      valueDuration: valueDuration ?? this.valueDuration,
      valueHumanName: valueHumanName ?? this.valueHumanName,
      valueIdentifier: valueIdentifier ?? this.valueIdentifier,
      valueMoney: valueMoney ?? this.valueMoney,
      valuePeriod: valuePeriod ?? this.valuePeriod,
      valueQuantity: valueQuantity ?? this.valueQuantity,
      valueRange: valueRange ?? this.valueRange,
      valueRatio: valueRatio ?? this.valueRatio,
      valueReference: valueReference ?? this.valueReference,
      valueSampledData: valueSampledData ?? this.valueSampledData,
      valueSignature: valueSignature ?? this.valueSignature,
      valueTiming: valueTiming ?? this.valueTiming,
      valueContactDetail: valueContactDetail ?? this.valueContactDetail,
      valueContributor: valueContributor ?? this.valueContributor,
      valueDataRequirement: valueDataRequirement ?? this.valueDataRequirement,
      valueExpression: valueExpression ?? this.valueExpression,
      valueParameterDefinition:
          valueParameterDefinition ?? this.valueParameterDefinition,
      valueRelatedArtifact: valueRelatedArtifact ?? this.valueRelatedArtifact,
      valueTriggerDefinition:
          valueTriggerDefinition ?? this.valueTriggerDefinition,
      valueUsageContext: valueUsageContext ?? this.valueUsageContext,
      valueDosage: valueDosage ?? this.valueDosage,
      valueMeta: valueMeta ?? this.valueMeta,
    );
  }
}
