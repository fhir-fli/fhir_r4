import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'task.g.dart';

/// [Task] /// A task to be performed.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    // ignore: avoid_unused_constructor_parameters
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.Task);
  @override
  String get fhirType => 'Task';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// The business identifier for this task.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [instantiatesCanonical] /// The URL pointing to a *FHIR*-defined protocol, guideline, orderset or other
  /// definition that is adhered to in whole or in part by this Task.
  @JsonKey(name: 'instantiatesCanonical')
  final FhirCanonical? instantiatesCanonical;
  @JsonKey(name: '_instantiatesCanonical')
  final Element? instantiatesCanonicalElement;

  /// [instantiatesUri] /// The URL pointing to an *externally* maintained protocol, guideline,
  /// orderset or other definition that is adhered to in whole or in part by this
  /// Task.
  @JsonKey(name: 'instantiatesUri')
  final FhirUri? instantiatesUri;
  @JsonKey(name: '_instantiatesUri')
  final Element? instantiatesUriElement;

  /// [basedOn] /// BasedOn refers to a higher-level authorization that triggered the creation
  /// of the task. It references a "request" resource such as a ServiceRequest,
  /// MedicationRequest, ServiceRequest, CarePlan, etc. which is distinct from
  /// the "request" resource the task is seeking to fulfill. This latter resource
  /// is referenced by FocusOn. For example, based on a ServiceRequest (=
  /// BasedOn), a task is created to fulfill a procedureRequest ( = FocusOn ) to
  /// collect a specimen from a patient.
  @JsonKey(name: 'basedOn')
  final List<Reference>? basedOn;

  /// [groupIdentifier] /// An identifier that links together multiple tasks and other requests that
  /// were created in the same context.
  @JsonKey(name: 'groupIdentifier')
  final Identifier? groupIdentifier;

  /// [partOf] /// Task that this particular task is part of.
  @JsonKey(name: 'partOf')
  final List<Reference>? partOf;

  /// [status] /// The current status of the task.
  @JsonKey(name: 'status')
  final TaskStatus status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [statusReason] /// An explanation as to why this task is held, failed, was refused, etc.
  @JsonKey(name: 'statusReason')
  final CodeableConcept? statusReason;

  /// [businessStatus] /// Contains business-specific nuances of the business state.
  @JsonKey(name: 'businessStatus')
  final CodeableConcept? businessStatus;

  /// [intent] /// Indicates the "level" of actionability associated with the Task, i.e.
  /// i+R[9]Cs this a proposed task, a planned task, an actionable task, etc.
  @JsonKey(name: 'intent')
  final TaskIntent intent;
  @JsonKey(name: '_intent')
  final Element? intentElement;

  /// [priority] /// Indicates how quickly the Task should be addressed with respect to other
  /// requests.
  @JsonKey(name: 'priority')
  final RequestPriority? priority;
  @JsonKey(name: '_priority')
  final Element? priorityElement;

  /// [code] /// A name or code (or both) briefly describing what the task involves.
  @JsonKey(name: 'code')
  final TaskCode? code;

  /// [description] /// A free-text description of what is to be performed.
  @JsonKey(name: 'description')
  final FhirString? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [focus] /// The request being actioned or the resource being manipulated by this task.
  @JsonKey(name: 'focus')
  final Reference? focus;

  /// [for_] /// The entity who benefits from the performance of the service specified in
  /// the task (e.g., the patient).
  @JsonKey(name: 'for')
  final Reference? for_;

  /// [encounter] /// The healthcare event (e.g. a patient and healthcare provider interaction)
  /// during which this task was created.
  @JsonKey(name: 'encounter')
  final Reference? encounter;

  /// [executionPeriod] /// Identifies the time action was first taken against the task (start) and/or
  /// the time final action was taken against the task prior to marking it as
  /// completed (end).
  @JsonKey(name: 'executionPeriod')
  final Period? executionPeriod;

  /// [authoredOn] /// The date and time this task was created.
  @JsonKey(name: 'authoredOn')
  final FhirDateTime? authoredOn;
  @JsonKey(name: '_authoredOn')
  final Element? authoredOnElement;

  /// [lastModified] /// The date and time of last modification to this task.
  @JsonKey(name: 'lastModified')
  final FhirDateTime? lastModified;
  @JsonKey(name: '_lastModified')
  final Element? lastModifiedElement;

  /// [requester] /// The creator of the task.
  @JsonKey(name: 'requester')
  final Reference? requester;

  /// [performerType] /// The kind of participant that should perform the task.
  @JsonKey(name: 'performerType')
  final List<CodeableConcept>? performerType;

  /// [owner] /// Individual organization or Device currently responsible for task execution.
  @JsonKey(name: 'owner')
  final Reference? owner;

  /// [location] /// Principal physical location where the this task is performed.
  @JsonKey(name: 'location')
  final Reference? location;

  /// [reasonCode] /// A description or code indicating why this task needs to be performed.
  @JsonKey(name: 'reasonCode')
  final CodeableConcept? reasonCode;

  /// [reasonReference] /// A resource reference indicating why this task needs to be performed.
  @JsonKey(name: 'reasonReference')
  final Reference? reasonReference;

  /// [insurance] /// Insurance plans, coverage extensions, pre-authorizations and/or
  /// pre-determinations that may be relevant to the Task.
  @JsonKey(name: 'insurance')
  final List<Reference>? insurance;

  /// [note] /// Free-text information captured about the task as it progresses.
  @JsonKey(name: 'note')
  final List<Annotation>? note;

  /// [relevantHistory] /// Links to Provenance records for past versions of this Task that identify
  /// key state transitions or updates that are likely to be relevant to a user
  /// looking at the current version of the task.
  @JsonKey(name: 'relevantHistory')
  final List<Reference>? relevantHistory;

  /// [restriction] /// If the Task.focus is a request resource and the task is seeking fulfillment
  /// (i.e. is asking for the request to be actioned), this element identifies
  /// any limitations on what parts of the referenced request should be actioned.
  @JsonKey(name: 'restriction')
  final TaskRestriction? restriction;

  /// [input] /// Additional information that may be needed in the execution of the task.
  @JsonKey(name: 'input')
  final List<TaskInput>? input;

  /// [output] /// Outputs produced by the Task.
  @JsonKey(name: 'output')
  final List<TaskOutput>? output;
  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TaskToJson(this);

  @override
  Task clone() => throw UnimplementedError();
  @override
  Task copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    CommonLanguages? language,
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
    TaskStatus? status,
    Element? statusElement,
    CodeableConcept? statusReason,
    CodeableConcept? businessStatus,
    TaskIntent? intent,
    Element? intentElement,
    RequestPriority? priority,
    Element? priorityElement,
    TaskCode? code,
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory Task.fromYaml(dynamic yaml) => yaml is String
      ? Task.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Task.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Task cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Task.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Task.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [TaskRestriction] /// If the Task.focus is a request resource and the task is seeking fulfillment
/// (i.e. is asking for the request to be actioned), this element identifies
/// any limitations on what parts of the referenced request should be actioned.
@JsonSerializable()
class TaskRestriction extends BackboneElement {
  TaskRestriction({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.repetitions,
    this.repetitionsElement,
    this.period,
    this.recipient,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'TaskRestriction';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [repetitions] /// Indicates the number of times the requested action should occur.
  @JsonKey(name: 'repetitions')
  final FhirPositiveInt? repetitions;
  @JsonKey(name: '_repetitions')
  final Element? repetitionsElement;

  /// [period] /// Over what time-period is fulfillment sought.
  @JsonKey(name: 'period')
  final Period? period;

  /// [recipient] /// For requests that are targeted to more than on potential recipient/target,
  /// for whom is fulfillment sought?
  @JsonKey(name: 'recipient')
  final List<Reference>? recipient;
  factory TaskRestriction.fromJson(Map<String, dynamic> json) =>
      _$TaskRestrictionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TaskRestrictionToJson(this);

  @override
  TaskRestriction clone() => throw UnimplementedError();
  @override
  TaskRestriction copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? repetitions,
    Element? repetitionsElement,
    Period? period,
    List<Reference>? recipient,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return TaskRestriction(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      repetitions: repetitions ?? this.repetitions,
      repetitionsElement: repetitionsElement ?? this.repetitionsElement,
      period: period ?? this.period,
      recipient: recipient ?? this.recipient,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory TaskRestriction.fromYaml(dynamic yaml) => yaml is String
      ? TaskRestriction.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? TaskRestriction.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'TaskRestriction cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory TaskRestriction.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TaskRestriction.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [TaskInput] /// Additional information that may be needed in the execution of the task.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'TaskInput';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// A code or description indicating how the input is intended to be used as
  /// part of the task execution.
  @JsonKey(name: 'type')
  final CodeableConcept type;

  /// [valueBase64Binary] /// The value of the input parameter as a basic type.
  @JsonKey(name: 'valueBase64Binary')
  final FhirBase64Binary valueBase64Binary;
  @JsonKey(name: '_valueBase64Binary')
  final Element? valueBase64BinaryElement;

  /// [valueBoolean] /// The value of the input parameter as a basic type.
  @JsonKey(name: 'valueBoolean')
  final FhirBoolean valueBoolean;
  @JsonKey(name: '_valueBoolean')
  final Element? valueBooleanElement;

  /// [valueCanonical] /// The value of the input parameter as a basic type.
  @JsonKey(name: 'valueCanonical')
  final FhirCanonical valueCanonical;
  @JsonKey(name: '_valueCanonical')
  final Element? valueCanonicalElement;

  /// [valueCode] /// The value of the input parameter as a basic type.
  @JsonKey(name: 'valueCode')
  final FhirCode valueCode;
  @JsonKey(name: '_valueCode')
  final Element? valueCodeElement;

  /// [valueDate] /// The value of the input parameter as a basic type.
  @JsonKey(name: 'valueDate')
  final FhirDate valueDate;
  @JsonKey(name: '_valueDate')
  final Element? valueDateElement;

  /// [valueDateTime] /// The value of the input parameter as a basic type.
  @JsonKey(name: 'valueDateTime')
  final FhirDateTime valueDateTime;
  @JsonKey(name: '_valueDateTime')
  final Element? valueDateTimeElement;

  /// [valueDecimal] /// The value of the input parameter as a basic type.
  @JsonKey(name: 'valueDecimal')
  final FhirDecimal valueDecimal;
  @JsonKey(name: '_valueDecimal')
  final Element? valueDecimalElement;

  /// [valueId] /// The value of the input parameter as a basic type.
  @JsonKey(name: 'valueId')
  final FhirId valueId;
  @JsonKey(name: '_valueId')
  final Element? valueIdElement;

  /// [valueInstant] /// The value of the input parameter as a basic type.
  @JsonKey(name: 'valueInstant')
  final FhirInstant valueInstant;
  @JsonKey(name: '_valueInstant')
  final Element? valueInstantElement;

  /// [valueInteger] /// The value of the input parameter as a basic type.
  @JsonKey(name: 'valueInteger')
  final FhirInteger valueInteger;
  @JsonKey(name: '_valueInteger')
  final Element? valueIntegerElement;

  /// [valueMarkdown] /// The value of the input parameter as a basic type.
  @JsonKey(name: 'valueMarkdown')
  final FhirMarkdown valueMarkdown;
  @JsonKey(name: '_valueMarkdown')
  final Element? valueMarkdownElement;

  /// [valueOid] /// The value of the input parameter as a basic type.
  @JsonKey(name: 'valueOid')
  final FhirOid valueOid;
  @JsonKey(name: '_valueOid')
  final Element? valueOidElement;

  /// [valuePositiveInt] /// The value of the input parameter as a basic type.
  @JsonKey(name: 'valuePositiveInt')
  final FhirPositiveInt valuePositiveInt;
  @JsonKey(name: '_valuePositiveInt')
  final Element? valuePositiveIntElement;

  /// [valueString] /// The value of the input parameter as a basic type.
  @JsonKey(name: 'valueString')
  final FhirString valueString;
  @JsonKey(name: '_valueString')
  final Element? valueStringElement;

  /// [valueTime] /// The value of the input parameter as a basic type.
  @JsonKey(name: 'valueTime')
  final FhirTime valueTime;
  @JsonKey(name: '_valueTime')
  final Element? valueTimeElement;

  /// [valueUnsignedInt] /// The value of the input parameter as a basic type.
  @JsonKey(name: 'valueUnsignedInt')
  final FhirUnsignedInt valueUnsignedInt;
  @JsonKey(name: '_valueUnsignedInt')
  final Element? valueUnsignedIntElement;

  /// [valueUri] /// The value of the input parameter as a basic type.
  @JsonKey(name: 'valueUri')
  final FhirUri valueUri;
  @JsonKey(name: '_valueUri')
  final Element? valueUriElement;

  /// [valueUrl] /// The value of the input parameter as a basic type.
  @JsonKey(name: 'valueUrl')
  final FhirUrl valueUrl;
  @JsonKey(name: '_valueUrl')
  final Element? valueUrlElement;

  /// [valueUuid] /// The value of the input parameter as a basic type.
  @JsonKey(name: 'valueUuid')
  final FhirUuid valueUuid;
  @JsonKey(name: '_valueUuid')
  final Element? valueUuidElement;

  /// [valueAddress] /// The value of the input parameter as a basic type.
  @JsonKey(name: 'valueAddress')
  final Address valueAddress;

  /// [valueAge] /// The value of the input parameter as a basic type.
  @JsonKey(name: 'valueAge')
  final Age valueAge;

  /// [valueAnnotation] /// The value of the input parameter as a basic type.
  @JsonKey(name: 'valueAnnotation')
  final Annotation valueAnnotation;

  /// [valueAttachment] /// The value of the input parameter as a basic type.
  @JsonKey(name: 'valueAttachment')
  final Attachment valueAttachment;

  /// [valueCodeableConcept] /// The value of the input parameter as a basic type.
  @JsonKey(name: 'valueCodeableConcept')
  final CodeableConcept valueCodeableConcept;

  /// [valueCoding] /// The value of the input parameter as a basic type.
  @JsonKey(name: 'valueCoding')
  final Coding valueCoding;

  /// [valueContactPoint] /// The value of the input parameter as a basic type.
  @JsonKey(name: 'valueContactPoint')
  final ContactPoint valueContactPoint;

  /// [valueCount] /// The value of the input parameter as a basic type.
  @JsonKey(name: 'valueCount')
  final Count valueCount;

  /// [valueDistance] /// The value of the input parameter as a basic type.
  @JsonKey(name: 'valueDistance')
  final Distance valueDistance;

  /// [valueDuration] /// The value of the input parameter as a basic type.
  @JsonKey(name: 'valueDuration')
  final FhirDuration valueDuration;

  /// [valueHumanName] /// The value of the input parameter as a basic type.
  @JsonKey(name: 'valueHumanName')
  final HumanName valueHumanName;

  /// [valueIdentifier] /// The value of the input parameter as a basic type.
  @JsonKey(name: 'valueIdentifier')
  final Identifier valueIdentifier;

  /// [valueMoney] /// The value of the input parameter as a basic type.
  @JsonKey(name: 'valueMoney')
  final Money valueMoney;

  /// [valuePeriod] /// The value of the input parameter as a basic type.
  @JsonKey(name: 'valuePeriod')
  final Period valuePeriod;

  /// [valueQuantity] /// The value of the input parameter as a basic type.
  @JsonKey(name: 'valueQuantity')
  final Quantity valueQuantity;

  /// [valueRange] /// The value of the input parameter as a basic type.
  @JsonKey(name: 'valueRange')
  final Range valueRange;

  /// [valueRatio] /// The value of the input parameter as a basic type.
  @JsonKey(name: 'valueRatio')
  final Ratio valueRatio;

  /// [valueReference] /// The value of the input parameter as a basic type.
  @JsonKey(name: 'valueReference')
  final Reference valueReference;

  /// [valueSampledData] /// The value of the input parameter as a basic type.
  @JsonKey(name: 'valueSampledData')
  final SampledData valueSampledData;

  /// [valueSignature] /// The value of the input parameter as a basic type.
  @JsonKey(name: 'valueSignature')
  final Signature valueSignature;

  /// [valueTiming] /// The value of the input parameter as a basic type.
  @JsonKey(name: 'valueTiming')
  final Timing valueTiming;

  /// [valueContactDetail] /// The value of the input parameter as a basic type.
  @JsonKey(name: 'valueContactDetail')
  final ContactDetail valueContactDetail;

  /// [valueContributor] /// The value of the input parameter as a basic type.
  @JsonKey(name: 'valueContributor')
  final Contributor valueContributor;

  /// [valueDataRequirement] /// The value of the input parameter as a basic type.
  @JsonKey(name: 'valueDataRequirement')
  final DataRequirement valueDataRequirement;

  /// [valueExpression] /// The value of the input parameter as a basic type.
  @JsonKey(name: 'valueExpression')
  final FhirExpression valueExpression;

  /// [valueParameterDefinition] /// The value of the input parameter as a basic type.
  @JsonKey(name: 'valueParameterDefinition')
  final ParameterDefinition valueParameterDefinition;

  /// [valueRelatedArtifact] /// The value of the input parameter as a basic type.
  @JsonKey(name: 'valueRelatedArtifact')
  final RelatedArtifact valueRelatedArtifact;

  /// [valueTriggerDefinition] /// The value of the input parameter as a basic type.
  @JsonKey(name: 'valueTriggerDefinition')
  final TriggerDefinition valueTriggerDefinition;

  /// [valueUsageContext] /// The value of the input parameter as a basic type.
  @JsonKey(name: 'valueUsageContext')
  final UsageContext valueUsageContext;

  /// [valueDosage] /// The value of the input parameter as a basic type.
  @JsonKey(name: 'valueDosage')
  final Dosage valueDosage;

  /// [valueMeta] /// The value of the input parameter as a basic type.
  @JsonKey(name: 'valueMeta')
  final FhirMeta valueMeta;
  factory TaskInput.fromJson(Map<String, dynamic> json) =>
      _$TaskInputFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TaskInputToJson(this);

  @override
  TaskInput clone() => throw UnimplementedError();
  @override
  TaskInput copyWith({
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory TaskInput.fromYaml(dynamic yaml) => yaml is String
      ? TaskInput.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? TaskInput.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'TaskInput cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory TaskInput.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TaskInput.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [TaskOutput] /// Outputs produced by the Task.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'TaskOutput';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// The name of the Output parameter.
  @JsonKey(name: 'type')
  final CodeableConcept type;

  /// [valueBase64Binary] /// The value of the Output parameter as a basic type.
  @JsonKey(name: 'valueBase64Binary')
  final FhirBase64Binary valueBase64Binary;
  @JsonKey(name: '_valueBase64Binary')
  final Element? valueBase64BinaryElement;

  /// [valueBoolean] /// The value of the Output parameter as a basic type.
  @JsonKey(name: 'valueBoolean')
  final FhirBoolean valueBoolean;
  @JsonKey(name: '_valueBoolean')
  final Element? valueBooleanElement;

  /// [valueCanonical] /// The value of the Output parameter as a basic type.
  @JsonKey(name: 'valueCanonical')
  final FhirCanonical valueCanonical;
  @JsonKey(name: '_valueCanonical')
  final Element? valueCanonicalElement;

  /// [valueCode] /// The value of the Output parameter as a basic type.
  @JsonKey(name: 'valueCode')
  final FhirCode valueCode;
  @JsonKey(name: '_valueCode')
  final Element? valueCodeElement;

  /// [valueDate] /// The value of the Output parameter as a basic type.
  @JsonKey(name: 'valueDate')
  final FhirDate valueDate;
  @JsonKey(name: '_valueDate')
  final Element? valueDateElement;

  /// [valueDateTime] /// The value of the Output parameter as a basic type.
  @JsonKey(name: 'valueDateTime')
  final FhirDateTime valueDateTime;
  @JsonKey(name: '_valueDateTime')
  final Element? valueDateTimeElement;

  /// [valueDecimal] /// The value of the Output parameter as a basic type.
  @JsonKey(name: 'valueDecimal')
  final FhirDecimal valueDecimal;
  @JsonKey(name: '_valueDecimal')
  final Element? valueDecimalElement;

  /// [valueId] /// The value of the Output parameter as a basic type.
  @JsonKey(name: 'valueId')
  final FhirId valueId;
  @JsonKey(name: '_valueId')
  final Element? valueIdElement;

  /// [valueInstant] /// The value of the Output parameter as a basic type.
  @JsonKey(name: 'valueInstant')
  final FhirInstant valueInstant;
  @JsonKey(name: '_valueInstant')
  final Element? valueInstantElement;

  /// [valueInteger] /// The value of the Output parameter as a basic type.
  @JsonKey(name: 'valueInteger')
  final FhirInteger valueInteger;
  @JsonKey(name: '_valueInteger')
  final Element? valueIntegerElement;

  /// [valueMarkdown] /// The value of the Output parameter as a basic type.
  @JsonKey(name: 'valueMarkdown')
  final FhirMarkdown valueMarkdown;
  @JsonKey(name: '_valueMarkdown')
  final Element? valueMarkdownElement;

  /// [valueOid] /// The value of the Output parameter as a basic type.
  @JsonKey(name: 'valueOid')
  final FhirOid valueOid;
  @JsonKey(name: '_valueOid')
  final Element? valueOidElement;

  /// [valuePositiveInt] /// The value of the Output parameter as a basic type.
  @JsonKey(name: 'valuePositiveInt')
  final FhirPositiveInt valuePositiveInt;
  @JsonKey(name: '_valuePositiveInt')
  final Element? valuePositiveIntElement;

  /// [valueString] /// The value of the Output parameter as a basic type.
  @JsonKey(name: 'valueString')
  final FhirString valueString;
  @JsonKey(name: '_valueString')
  final Element? valueStringElement;

  /// [valueTime] /// The value of the Output parameter as a basic type.
  @JsonKey(name: 'valueTime')
  final FhirTime valueTime;
  @JsonKey(name: '_valueTime')
  final Element? valueTimeElement;

  /// [valueUnsignedInt] /// The value of the Output parameter as a basic type.
  @JsonKey(name: 'valueUnsignedInt')
  final FhirUnsignedInt valueUnsignedInt;
  @JsonKey(name: '_valueUnsignedInt')
  final Element? valueUnsignedIntElement;

  /// [valueUri] /// The value of the Output parameter as a basic type.
  @JsonKey(name: 'valueUri')
  final FhirUri valueUri;
  @JsonKey(name: '_valueUri')
  final Element? valueUriElement;

  /// [valueUrl] /// The value of the Output parameter as a basic type.
  @JsonKey(name: 'valueUrl')
  final FhirUrl valueUrl;
  @JsonKey(name: '_valueUrl')
  final Element? valueUrlElement;

  /// [valueUuid] /// The value of the Output parameter as a basic type.
  @JsonKey(name: 'valueUuid')
  final FhirUuid valueUuid;
  @JsonKey(name: '_valueUuid')
  final Element? valueUuidElement;

  /// [valueAddress] /// The value of the Output parameter as a basic type.
  @JsonKey(name: 'valueAddress')
  final Address valueAddress;

  /// [valueAge] /// The value of the Output parameter as a basic type.
  @JsonKey(name: 'valueAge')
  final Age valueAge;

  /// [valueAnnotation] /// The value of the Output parameter as a basic type.
  @JsonKey(name: 'valueAnnotation')
  final Annotation valueAnnotation;

  /// [valueAttachment] /// The value of the Output parameter as a basic type.
  @JsonKey(name: 'valueAttachment')
  final Attachment valueAttachment;

  /// [valueCodeableConcept] /// The value of the Output parameter as a basic type.
  @JsonKey(name: 'valueCodeableConcept')
  final CodeableConcept valueCodeableConcept;

  /// [valueCoding] /// The value of the Output parameter as a basic type.
  @JsonKey(name: 'valueCoding')
  final Coding valueCoding;

  /// [valueContactPoint] /// The value of the Output parameter as a basic type.
  @JsonKey(name: 'valueContactPoint')
  final ContactPoint valueContactPoint;

  /// [valueCount] /// The value of the Output parameter as a basic type.
  @JsonKey(name: 'valueCount')
  final Count valueCount;

  /// [valueDistance] /// The value of the Output parameter as a basic type.
  @JsonKey(name: 'valueDistance')
  final Distance valueDistance;

  /// [valueDuration] /// The value of the Output parameter as a basic type.
  @JsonKey(name: 'valueDuration')
  final FhirDuration valueDuration;

  /// [valueHumanName] /// The value of the Output parameter as a basic type.
  @JsonKey(name: 'valueHumanName')
  final HumanName valueHumanName;

  /// [valueIdentifier] /// The value of the Output parameter as a basic type.
  @JsonKey(name: 'valueIdentifier')
  final Identifier valueIdentifier;

  /// [valueMoney] /// The value of the Output parameter as a basic type.
  @JsonKey(name: 'valueMoney')
  final Money valueMoney;

  /// [valuePeriod] /// The value of the Output parameter as a basic type.
  @JsonKey(name: 'valuePeriod')
  final Period valuePeriod;

  /// [valueQuantity] /// The value of the Output parameter as a basic type.
  @JsonKey(name: 'valueQuantity')
  final Quantity valueQuantity;

  /// [valueRange] /// The value of the Output parameter as a basic type.
  @JsonKey(name: 'valueRange')
  final Range valueRange;

  /// [valueRatio] /// The value of the Output parameter as a basic type.
  @JsonKey(name: 'valueRatio')
  final Ratio valueRatio;

  /// [valueReference] /// The value of the Output parameter as a basic type.
  @JsonKey(name: 'valueReference')
  final Reference valueReference;

  /// [valueSampledData] /// The value of the Output parameter as a basic type.
  @JsonKey(name: 'valueSampledData')
  final SampledData valueSampledData;

  /// [valueSignature] /// The value of the Output parameter as a basic type.
  @JsonKey(name: 'valueSignature')
  final Signature valueSignature;

  /// [valueTiming] /// The value of the Output parameter as a basic type.
  @JsonKey(name: 'valueTiming')
  final Timing valueTiming;

  /// [valueContactDetail] /// The value of the Output parameter as a basic type.
  @JsonKey(name: 'valueContactDetail')
  final ContactDetail valueContactDetail;

  /// [valueContributor] /// The value of the Output parameter as a basic type.
  @JsonKey(name: 'valueContributor')
  final Contributor valueContributor;

  /// [valueDataRequirement] /// The value of the Output parameter as a basic type.
  @JsonKey(name: 'valueDataRequirement')
  final DataRequirement valueDataRequirement;

  /// [valueExpression] /// The value of the Output parameter as a basic type.
  @JsonKey(name: 'valueExpression')
  final FhirExpression valueExpression;

  /// [valueParameterDefinition] /// The value of the Output parameter as a basic type.
  @JsonKey(name: 'valueParameterDefinition')
  final ParameterDefinition valueParameterDefinition;

  /// [valueRelatedArtifact] /// The value of the Output parameter as a basic type.
  @JsonKey(name: 'valueRelatedArtifact')
  final RelatedArtifact valueRelatedArtifact;

  /// [valueTriggerDefinition] /// The value of the Output parameter as a basic type.
  @JsonKey(name: 'valueTriggerDefinition')
  final TriggerDefinition valueTriggerDefinition;

  /// [valueUsageContext] /// The value of the Output parameter as a basic type.
  @JsonKey(name: 'valueUsageContext')
  final UsageContext valueUsageContext;

  /// [valueDosage] /// The value of the Output parameter as a basic type.
  @JsonKey(name: 'valueDosage')
  final Dosage valueDosage;

  /// [valueMeta] /// The value of the Output parameter as a basic type.
  @JsonKey(name: 'valueMeta')
  final FhirMeta valueMeta;
  factory TaskOutput.fromJson(Map<String, dynamic> json) =>
      _$TaskOutputFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TaskOutputToJson(this);

  @override
  TaskOutput clone() => throw UnimplementedError();
  @override
  TaskOutput copyWith({
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory TaskOutput.fromYaml(dynamic yaml) => yaml is String
      ? TaskOutput.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? TaskOutput.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'TaskOutput cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory TaskOutput.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TaskOutput.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
