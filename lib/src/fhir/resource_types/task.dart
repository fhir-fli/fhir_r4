import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(resourceType: R4ResourceType.Task);

  @override
  String get fhirType => 'Task';

  @Id()
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
  final TaskStatus status;
  final Element? statusElement;

  /// [statusReason] /// An explanation as to why this task is held, failed, was refused, etc.
  final CodeableConcept? statusReason;

  /// [businessStatus] /// Contains business-specific nuances of the business state.
  final CodeableConcept? businessStatus;

  /// [intent] /// Indicates the "level" of actionability associated with the Task, i.e.
  /// i+R[9]Cs this a proposed task, a planned task, an actionable task, etc.
  final TaskIntent intent;
  final Element? intentElement;

  /// [priority] /// Indicates how quickly the Task should be addressed with respect to other
  /// requests.
  final RequestPriority? priority;
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
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.value;
    }
    if (implicitRulesElement != null) {
      json['_implicitRules'] = implicitRulesElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] =
          contained!.map<dynamic>((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map<dynamic>((Identifier v) => v.toJson()).toList();
    }
    if (instantiatesCanonical?.value != null) {
      json['instantiatesCanonical'] = instantiatesCanonical!.value;
    }
    if (instantiatesCanonicalElement != null) {
      json['_instantiatesCanonical'] = instantiatesCanonicalElement!.toJson();
    }
    if (instantiatesUri?.value != null) {
      json['instantiatesUri'] = instantiatesUri!.value;
    }
    if (instantiatesUriElement != null) {
      json['_instantiatesUri'] = instantiatesUriElement!.toJson();
    }
    if (basedOn != null && basedOn!.isNotEmpty) {
      json['basedOn'] =
          basedOn!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (groupIdentifier != null) {
      json['groupIdentifier'] = groupIdentifier!.toJson();
    }
    if (partOf != null && partOf!.isNotEmpty) {
      json['partOf'] =
          partOf!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    json['status'] = status.toJson();
    if (statusReason != null) {
      json['statusReason'] = statusReason!.toJson();
    }
    if (businessStatus != null) {
      json['businessStatus'] = businessStatus!.toJson();
    }
    json['intent'] = intent.toJson();
    if (priority != null) {
      json['priority'] = priority!.toJson();
    }
    if (code != null) {
      json['code'] = code!.toJson();
    }
    if (description?.value != null) {
      json['description'] = description!.value;
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (focus != null) {
      json['focus'] = focus!.toJson();
    }
    if (for_ != null) {
      json['for'] = for_!.toJson();
    }
    if (encounter != null) {
      json['encounter'] = encounter!.toJson();
    }
    if (executionPeriod != null) {
      json['executionPeriod'] = executionPeriod!.toJson();
    }
    if (authoredOn?.value != null) {
      json['authoredOn'] = authoredOn!.value;
    }
    if (authoredOnElement != null) {
      json['_authoredOn'] = authoredOnElement!.toJson();
    }
    if (lastModified?.value != null) {
      json['lastModified'] = lastModified!.value;
    }
    if (lastModifiedElement != null) {
      json['_lastModified'] = lastModifiedElement!.toJson();
    }
    if (requester != null) {
      json['requester'] = requester!.toJson();
    }
    if (performerType != null && performerType!.isNotEmpty) {
      json['performerType'] = performerType!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (owner != null) {
      json['owner'] = owner!.toJson();
    }
    if (location != null) {
      json['location'] = location!.toJson();
    }
    if (reasonCode != null) {
      json['reasonCode'] = reasonCode!.toJson();
    }
    if (reasonReference != null) {
      json['reasonReference'] = reasonReference!.toJson();
    }
    if (insurance != null && insurance!.isNotEmpty) {
      json['insurance'] =
          insurance!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map<dynamic>((Annotation v) => v.toJson()).toList();
    }
    if (relevantHistory != null && relevantHistory!.isNotEmpty) {
      json['relevantHistory'] =
          relevantHistory!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (restriction != null) {
      json['restriction'] = restriction!.toJson();
    }
    if (input != null && input!.isNotEmpty) {
      json['input'] = input!.map<dynamic>((TaskInput v) => v.toJson()).toList();
    }
    if (output != null && output!.isNotEmpty) {
      json['output'] =
          output!.map<dynamic>((TaskOutput v) => v.toJson()).toList();
    }
    return json;
  }

  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      id: json['id'] != null ? FhirString(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules:
          json['implicitRules'] != null ? FhirUri(json['implicitRules']) : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                  (dynamic v) => Resource.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                  (dynamic v) => Identifier.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      instantiatesCanonical: json['instantiatesCanonical'] != null
          ? FhirCanonical(json['instantiatesCanonical'])
          : null,
      instantiatesCanonicalElement: json['_instantiatesCanonical'] != null
          ? Element.fromJson(
              json['_instantiatesCanonical'] as Map<String, dynamic>)
          : null,
      instantiatesUri: json['instantiatesUri'] != null
          ? FhirUri(json['instantiatesUri'])
          : null,
      instantiatesUriElement: json['_instantiatesUri'] != null
          ? Element.fromJson(json['_instantiatesUri'] as Map<String, dynamic>)
          : null,
      basedOn: json['basedOn'] != null
          ? (json['basedOn'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      groupIdentifier: json['groupIdentifier'] != null
          ? Identifier.fromJson(json['groupIdentifier'] as Map<String, dynamic>)
          : null,
      partOf: json['partOf'] != null
          ? (json['partOf'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      status: TaskStatus.fromJson(json['status'] as Map<String, dynamic>),
      statusReason: json['statusReason'] != null
          ? CodeableConcept.fromJson(
              json['statusReason'] as Map<String, dynamic>)
          : null,
      businessStatus: json['businessStatus'] != null
          ? CodeableConcept.fromJson(
              json['businessStatus'] as Map<String, dynamic>)
          : null,
      intent: TaskIntent.fromJson(json['intent'] as Map<String, dynamic>),
      priority: json['priority'] != null
          ? RequestPriority.fromJson(json['priority'] as Map<String, dynamic>)
          : null,
      code: json['code'] != null
          ? CodeableConcept.fromJson(json['code'] as Map<String, dynamic>)
          : null,
      description:
          json['description'] != null ? FhirString(json['description']) : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(json['_description'] as Map<String, dynamic>)
          : null,
      focus: json['focus'] != null
          ? Reference.fromJson(json['focus'] as Map<String, dynamic>)
          : null,
      for_: json['for'] != null
          ? Reference.fromJson(json['for'] as Map<String, dynamic>)
          : null,
      encounter: json['encounter'] != null
          ? Reference.fromJson(json['encounter'] as Map<String, dynamic>)
          : null,
      executionPeriod: json['executionPeriod'] != null
          ? Period.fromJson(json['executionPeriod'] as Map<String, dynamic>)
          : null,
      authoredOn:
          json['authoredOn'] != null ? FhirDateTime(json['authoredOn']) : null,
      authoredOnElement: json['_authoredOn'] != null
          ? Element.fromJson(json['_authoredOn'] as Map<String, dynamic>)
          : null,
      lastModified: json['lastModified'] != null
          ? FhirDateTime(json['lastModified'])
          : null,
      lastModifiedElement: json['_lastModified'] != null
          ? Element.fromJson(json['_lastModified'] as Map<String, dynamic>)
          : null,
      requester: json['requester'] != null
          ? Reference.fromJson(json['requester'] as Map<String, dynamic>)
          : null,
      performerType: json['performerType'] != null
          ? (json['performerType'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      owner: json['owner'] != null
          ? Reference.fromJson(json['owner'] as Map<String, dynamic>)
          : null,
      location: json['location'] != null
          ? Reference.fromJson(json['location'] as Map<String, dynamic>)
          : null,
      reasonCode: json['reasonCode'] != null
          ? CodeableConcept.fromJson(json['reasonCode'] as Map<String, dynamic>)
          : null,
      reasonReference: json['reasonReference'] != null
          ? Reference.fromJson(json['reasonReference'] as Map<String, dynamic>)
          : null,
      insurance: json['insurance'] != null
          ? (json['insurance'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                  (dynamic v) => Annotation.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      relevantHistory: json['relevantHistory'] != null
          ? (json['relevantHistory'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      restriction: json['restriction'] != null
          ? TaskRestriction.fromJson(
              json['restriction'] as Map<String, dynamic>)
          : null,
      input: json['input'] != null
          ? (json['input'] as List<dynamic>)
              .map<TaskInput>(
                  (dynamic v) => TaskInput.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      output: json['output'] != null
          ? (json['output'] as List<dynamic>)
              .map<TaskOutput>(
                  (dynamic v) => TaskOutput.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
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
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (repetitions?.value != null) {
      json['repetitions'] = repetitions!.value;
    }
    if (repetitionsElement != null) {
      json['_repetitions'] = repetitionsElement!.toJson();
    }
    if (period != null) {
      json['period'] = period!.toJson();
    }
    if (recipient != null && recipient!.isNotEmpty) {
      json['recipient'] =
          recipient!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    return json;
  }

  factory TaskRestriction.fromJson(Map<String, dynamic> json) {
    return TaskRestriction(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      repetitions: json['repetitions'] != null
          ? FhirPositiveInt(json['repetitions'])
          : null,
      repetitionsElement: json['_repetitions'] != null
          ? Element.fromJson(json['_repetitions'] as Map<String, dynamic>)
          : null,
      period: json['period'] != null
          ? Period.fromJson(json['period'] as Map<String, dynamic>)
          : null,
      recipient: json['recipient'] != null
          ? (json['recipient'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
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
class TaskInput extends BackboneElement {
  TaskInput({
    super.id,
    super.extension_,
    super.modifierExtension,
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
  int dbId = 0;

  /// [type] /// A code or description indicating how the input is intended to be used as
  /// part of the task execution.
  final CodeableConcept type;

  /// [valueBase64Binary] /// The value of the input parameter as a basic type.
  final FhirBase64Binary? valueBase64Binary;
  final Element? valueBase64BinaryElement;

  /// [valueBoolean] /// The value of the input parameter as a basic type.
  final FhirBoolean? valueBoolean;
  final Element? valueBooleanElement;

  /// [valueCanonical] /// The value of the input parameter as a basic type.
  final FhirCanonical? valueCanonical;
  final Element? valueCanonicalElement;

  /// [valueCode] /// The value of the input parameter as a basic type.
  final FhirCode? valueCode;
  final Element? valueCodeElement;

  /// [valueDate] /// The value of the input parameter as a basic type.
  final FhirDate? valueDate;
  final Element? valueDateElement;

  /// [valueDateTime] /// The value of the input parameter as a basic type.
  final FhirDateTime? valueDateTime;
  final Element? valueDateTimeElement;

  /// [valueDecimal] /// The value of the input parameter as a basic type.
  final FhirDecimal? valueDecimal;
  final Element? valueDecimalElement;

  /// [valueId] /// The value of the input parameter as a basic type.
  final FhirId? valueId;
  final Element? valueIdElement;

  /// [valueInstant] /// The value of the input parameter as a basic type.
  final FhirInstant? valueInstant;
  final Element? valueInstantElement;

  /// [valueInteger] /// The value of the input parameter as a basic type.
  final FhirInteger? valueInteger;
  final Element? valueIntegerElement;

  /// [valueMarkdown] /// The value of the input parameter as a basic type.
  final FhirMarkdown? valueMarkdown;
  final Element? valueMarkdownElement;

  /// [valueOid] /// The value of the input parameter as a basic type.
  final FhirOid? valueOid;
  final Element? valueOidElement;

  /// [valuePositiveInt] /// The value of the input parameter as a basic type.
  final FhirPositiveInt? valuePositiveInt;
  final Element? valuePositiveIntElement;

  /// [valueString] /// The value of the input parameter as a basic type.
  final FhirString? valueString;
  final Element? valueStringElement;

  /// [valueTime] /// The value of the input parameter as a basic type.
  final FhirTime? valueTime;
  final Element? valueTimeElement;

  /// [valueUnsignedInt] /// The value of the input parameter as a basic type.
  final FhirUnsignedInt? valueUnsignedInt;
  final Element? valueUnsignedIntElement;

  /// [valueUri] /// The value of the input parameter as a basic type.
  final FhirUri? valueUri;
  final Element? valueUriElement;

  /// [valueUrl] /// The value of the input parameter as a basic type.
  final FhirUrl? valueUrl;
  final Element? valueUrlElement;

  /// [valueUuid] /// The value of the input parameter as a basic type.
  final FhirUuid? valueUuid;
  final Element? valueUuidElement;

  /// [valueAddress] /// The value of the input parameter as a basic type.
  final Address? valueAddress;

  /// [valueAge] /// The value of the input parameter as a basic type.
  final Age? valueAge;

  /// [valueAnnotation] /// The value of the input parameter as a basic type.
  final Annotation? valueAnnotation;

  /// [valueAttachment] /// The value of the input parameter as a basic type.
  final Attachment? valueAttachment;

  /// [valueCodeableConcept] /// The value of the input parameter as a basic type.
  final CodeableConcept? valueCodeableConcept;

  /// [valueCoding] /// The value of the input parameter as a basic type.
  final Coding? valueCoding;

  /// [valueContactPoint] /// The value of the input parameter as a basic type.
  final ContactPoint? valueContactPoint;

  /// [valueCount] /// The value of the input parameter as a basic type.
  final Count? valueCount;

  /// [valueDistance] /// The value of the input parameter as a basic type.
  final Distance? valueDistance;

  /// [valueDuration] /// The value of the input parameter as a basic type.
  final FhirDuration? valueDuration;

  /// [valueHumanName] /// The value of the input parameter as a basic type.
  final HumanName? valueHumanName;

  /// [valueIdentifier] /// The value of the input parameter as a basic type.
  final Identifier? valueIdentifier;

  /// [valueMoney] /// The value of the input parameter as a basic type.
  final Money? valueMoney;

  /// [valuePeriod] /// The value of the input parameter as a basic type.
  final Period? valuePeriod;

  /// [valueQuantity] /// The value of the input parameter as a basic type.
  final Quantity? valueQuantity;

  /// [valueRange] /// The value of the input parameter as a basic type.
  final Range? valueRange;

  /// [valueRatio] /// The value of the input parameter as a basic type.
  final Ratio? valueRatio;

  /// [valueReference] /// The value of the input parameter as a basic type.
  final Reference? valueReference;

  /// [valueSampledData] /// The value of the input parameter as a basic type.
  final SampledData? valueSampledData;

  /// [valueSignature] /// The value of the input parameter as a basic type.
  final Signature? valueSignature;

  /// [valueTiming] /// The value of the input parameter as a basic type.
  final Timing? valueTiming;

  /// [valueContactDetail] /// The value of the input parameter as a basic type.
  final ContactDetail? valueContactDetail;

  /// [valueContributor] /// The value of the input parameter as a basic type.
  final Contributor? valueContributor;

  /// [valueDataRequirement] /// The value of the input parameter as a basic type.
  final DataRequirement? valueDataRequirement;

  /// [valueExpression] /// The value of the input parameter as a basic type.
  final FhirExpression? valueExpression;

  /// [valueParameterDefinition] /// The value of the input parameter as a basic type.
  final ParameterDefinition? valueParameterDefinition;

  /// [valueRelatedArtifact] /// The value of the input parameter as a basic type.
  final RelatedArtifact? valueRelatedArtifact;

  /// [valueTriggerDefinition] /// The value of the input parameter as a basic type.
  final TriggerDefinition? valueTriggerDefinition;

  /// [valueUsageContext] /// The value of the input parameter as a basic type.
  final UsageContext? valueUsageContext;

  /// [valueDosage] /// The value of the input parameter as a basic type.
  final Dosage? valueDosage;

  /// [valueMeta] /// The value of the input parameter as a basic type.
  final FhirMeta? valueMeta;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['type'] = type.toJson();
    if (valueBase64Binary?.value != null) {
      json['valueBase64Binary'] = valueBase64Binary!.value;
    }
    if (valueBase64BinaryElement != null) {
      json['_valueBase64Binary'] = valueBase64BinaryElement!.toJson();
    }
    if (valueBoolean?.value != null) {
      json['valueBoolean'] = valueBoolean!.value;
    }
    if (valueBooleanElement != null) {
      json['_valueBoolean'] = valueBooleanElement!.toJson();
    }
    if (valueCanonical?.value != null) {
      json['valueCanonical'] = valueCanonical!.value;
    }
    if (valueCanonicalElement != null) {
      json['_valueCanonical'] = valueCanonicalElement!.toJson();
    }
    if (valueCode?.value != null) {
      json['valueCode'] = valueCode!.value;
    }
    if (valueCodeElement != null) {
      json['_valueCode'] = valueCodeElement!.toJson();
    }
    if (valueDate?.value != null) {
      json['valueDate'] = valueDate!.value;
    }
    if (valueDateElement != null) {
      json['_valueDate'] = valueDateElement!.toJson();
    }
    if (valueDateTime?.value != null) {
      json['valueDateTime'] = valueDateTime!.value;
    }
    if (valueDateTimeElement != null) {
      json['_valueDateTime'] = valueDateTimeElement!.toJson();
    }
    if (valueDecimal?.value != null) {
      json['valueDecimal'] = valueDecimal!.value;
    }
    if (valueDecimalElement != null) {
      json['_valueDecimal'] = valueDecimalElement!.toJson();
    }
    if (valueId?.value != null) {
      json['valueId'] = valueId!.value;
    }
    if (valueIdElement != null) {
      json['_valueId'] = valueIdElement!.toJson();
    }
    if (valueInstant?.value != null) {
      json['valueInstant'] = valueInstant!.value;
    }
    if (valueInstantElement != null) {
      json['_valueInstant'] = valueInstantElement!.toJson();
    }
    if (valueInteger?.value != null) {
      json['valueInteger'] = valueInteger!.value;
    }
    if (valueIntegerElement != null) {
      json['_valueInteger'] = valueIntegerElement!.toJson();
    }
    if (valueMarkdown?.value != null) {
      json['valueMarkdown'] = valueMarkdown!.value;
    }
    if (valueMarkdownElement != null) {
      json['_valueMarkdown'] = valueMarkdownElement!.toJson();
    }
    if (valueOid?.value != null) {
      json['valueOid'] = valueOid!.value;
    }
    if (valueOidElement != null) {
      json['_valueOid'] = valueOidElement!.toJson();
    }
    if (valuePositiveInt?.value != null) {
      json['valuePositiveInt'] = valuePositiveInt!.value;
    }
    if (valuePositiveIntElement != null) {
      json['_valuePositiveInt'] = valuePositiveIntElement!.toJson();
    }
    if (valueString?.value != null) {
      json['valueString'] = valueString!.value;
    }
    if (valueStringElement != null) {
      json['_valueString'] = valueStringElement!.toJson();
    }
    if (valueTime?.value != null) {
      json['valueTime'] = valueTime!.value;
    }
    if (valueTimeElement != null) {
      json['_valueTime'] = valueTimeElement!.toJson();
    }
    if (valueUnsignedInt?.value != null) {
      json['valueUnsignedInt'] = valueUnsignedInt!.value;
    }
    if (valueUnsignedIntElement != null) {
      json['_valueUnsignedInt'] = valueUnsignedIntElement!.toJson();
    }
    if (valueUri?.value != null) {
      json['valueUri'] = valueUri!.value;
    }
    if (valueUriElement != null) {
      json['_valueUri'] = valueUriElement!.toJson();
    }
    if (valueUrl?.value != null) {
      json['valueUrl'] = valueUrl!.value;
    }
    if (valueUrlElement != null) {
      json['_valueUrl'] = valueUrlElement!.toJson();
    }
    if (valueUuid?.value != null) {
      json['valueUuid'] = valueUuid!.value;
    }
    if (valueUuidElement != null) {
      json['_valueUuid'] = valueUuidElement!.toJson();
    }
    if (valueAddress != null) {
      json['valueAddress'] = valueAddress!.toJson();
    }
    if (valueAge != null) {
      json['valueAge'] = valueAge!.toJson();
    }
    if (valueAnnotation != null) {
      json['valueAnnotation'] = valueAnnotation!.toJson();
    }
    if (valueAttachment != null) {
      json['valueAttachment'] = valueAttachment!.toJson();
    }
    if (valueCodeableConcept != null) {
      json['valueCodeableConcept'] = valueCodeableConcept!.toJson();
    }
    if (valueCoding != null) {
      json['valueCoding'] = valueCoding!.toJson();
    }
    if (valueContactPoint != null) {
      json['valueContactPoint'] = valueContactPoint!.toJson();
    }
    if (valueCount != null) {
      json['valueCount'] = valueCount!.toJson();
    }
    if (valueDistance != null) {
      json['valueDistance'] = valueDistance!.toJson();
    }
    if (valueDuration != null) {
      json['valueDuration'] = valueDuration!.toJson();
    }
    if (valueHumanName != null) {
      json['valueHumanName'] = valueHumanName!.toJson();
    }
    if (valueIdentifier != null) {
      json['valueIdentifier'] = valueIdentifier!.toJson();
    }
    if (valueMoney != null) {
      json['valueMoney'] = valueMoney!.toJson();
    }
    if (valuePeriod != null) {
      json['valuePeriod'] = valuePeriod!.toJson();
    }
    if (valueQuantity != null) {
      json['valueQuantity'] = valueQuantity!.toJson();
    }
    if (valueRange != null) {
      json['valueRange'] = valueRange!.toJson();
    }
    if (valueRatio != null) {
      json['valueRatio'] = valueRatio!.toJson();
    }
    if (valueReference != null) {
      json['valueReference'] = valueReference!.toJson();
    }
    if (valueSampledData != null) {
      json['valueSampledData'] = valueSampledData!.toJson();
    }
    if (valueSignature != null) {
      json['valueSignature'] = valueSignature!.toJson();
    }
    if (valueTiming != null) {
      json['valueTiming'] = valueTiming!.toJson();
    }
    if (valueContactDetail != null) {
      json['valueContactDetail'] = valueContactDetail!.toJson();
    }
    if (valueContributor != null) {
      json['valueContributor'] = valueContributor!.toJson();
    }
    if (valueDataRequirement != null) {
      json['valueDataRequirement'] = valueDataRequirement!.toJson();
    }
    if (valueExpression != null) {
      json['valueExpression'] = valueExpression!.toJson();
    }
    if (valueParameterDefinition != null) {
      json['valueParameterDefinition'] = valueParameterDefinition!.toJson();
    }
    if (valueRelatedArtifact != null) {
      json['valueRelatedArtifact'] = valueRelatedArtifact!.toJson();
    }
    if (valueTriggerDefinition != null) {
      json['valueTriggerDefinition'] = valueTriggerDefinition!.toJson();
    }
    if (valueUsageContext != null) {
      json['valueUsageContext'] = valueUsageContext!.toJson();
    }
    if (valueDosage != null) {
      json['valueDosage'] = valueDosage!.toJson();
    }
    if (valueMeta != null) {
      json['valueMeta'] = valueMeta!.toJson();
    }
    return json;
  }

  factory TaskInput.fromJson(Map<String, dynamic> json) {
    return TaskInput(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      type: CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      valueBase64Binary: json['valueBase64Binary'] != null
          ? FhirBase64Binary(json['valueBase64Binary'])
          : null,
      valueBase64BinaryElement: json['_valueBase64Binary'] != null
          ? Element.fromJson(json['_valueBase64Binary'] as Map<String, dynamic>)
          : null,
      valueBoolean: json['valueBoolean'] != null
          ? FhirBoolean(json['valueBoolean'])
          : null,
      valueBooleanElement: json['_valueBoolean'] != null
          ? Element.fromJson(json['_valueBoolean'] as Map<String, dynamic>)
          : null,
      valueCanonical: json['valueCanonical'] != null
          ? FhirCanonical(json['valueCanonical'])
          : null,
      valueCanonicalElement: json['_valueCanonical'] != null
          ? Element.fromJson(json['_valueCanonical'] as Map<String, dynamic>)
          : null,
      valueCode: json['valueCode'] != null ? FhirCode(json['valueCode']) : null,
      valueCodeElement: json['_valueCode'] != null
          ? Element.fromJson(json['_valueCode'] as Map<String, dynamic>)
          : null,
      valueDate: json['valueDate'] != null ? FhirDate(json['valueDate']) : null,
      valueDateElement: json['_valueDate'] != null
          ? Element.fromJson(json['_valueDate'] as Map<String, dynamic>)
          : null,
      valueDateTime: json['valueDateTime'] != null
          ? FhirDateTime(json['valueDateTime'])
          : null,
      valueDateTimeElement: json['_valueDateTime'] != null
          ? Element.fromJson(json['_valueDateTime'] as Map<String, dynamic>)
          : null,
      valueDecimal: json['valueDecimal'] != null
          ? FhirDecimal(json['valueDecimal'])
          : null,
      valueDecimalElement: json['_valueDecimal'] != null
          ? Element.fromJson(json['_valueDecimal'] as Map<String, dynamic>)
          : null,
      valueId: json['valueId'] != null ? FhirId(json['valueId']) : null,
      valueIdElement: json['_valueId'] != null
          ? Element.fromJson(json['_valueId'] as Map<String, dynamic>)
          : null,
      valueInstant: json['valueInstant'] != null
          ? FhirInstant(json['valueInstant'])
          : null,
      valueInstantElement: json['_valueInstant'] != null
          ? Element.fromJson(json['_valueInstant'] as Map<String, dynamic>)
          : null,
      valueInteger: json['valueInteger'] != null
          ? FhirInteger(json['valueInteger'])
          : null,
      valueIntegerElement: json['_valueInteger'] != null
          ? Element.fromJson(json['_valueInteger'] as Map<String, dynamic>)
          : null,
      valueMarkdown: json['valueMarkdown'] != null
          ? FhirMarkdown(json['valueMarkdown'])
          : null,
      valueMarkdownElement: json['_valueMarkdown'] != null
          ? Element.fromJson(json['_valueMarkdown'] as Map<String, dynamic>)
          : null,
      valueOid: json['valueOid'] != null ? FhirOid(json['valueOid']) : null,
      valueOidElement: json['_valueOid'] != null
          ? Element.fromJson(json['_valueOid'] as Map<String, dynamic>)
          : null,
      valuePositiveInt: json['valuePositiveInt'] != null
          ? FhirPositiveInt(json['valuePositiveInt'])
          : null,
      valuePositiveIntElement: json['_valuePositiveInt'] != null
          ? Element.fromJson(json['_valuePositiveInt'] as Map<String, dynamic>)
          : null,
      valueString:
          json['valueString'] != null ? FhirString(json['valueString']) : null,
      valueStringElement: json['_valueString'] != null
          ? Element.fromJson(json['_valueString'] as Map<String, dynamic>)
          : null,
      valueTime: json['valueTime'] != null ? FhirTime(json['valueTime']) : null,
      valueTimeElement: json['_valueTime'] != null
          ? Element.fromJson(json['_valueTime'] as Map<String, dynamic>)
          : null,
      valueUnsignedInt: json['valueUnsignedInt'] != null
          ? FhirUnsignedInt(json['valueUnsignedInt'])
          : null,
      valueUnsignedIntElement: json['_valueUnsignedInt'] != null
          ? Element.fromJson(json['_valueUnsignedInt'] as Map<String, dynamic>)
          : null,
      valueUri: json['valueUri'] != null ? FhirUri(json['valueUri']) : null,
      valueUriElement: json['_valueUri'] != null
          ? Element.fromJson(json['_valueUri'] as Map<String, dynamic>)
          : null,
      valueUrl: json['valueUrl'] != null ? FhirUrl(json['valueUrl']) : null,
      valueUrlElement: json['_valueUrl'] != null
          ? Element.fromJson(json['_valueUrl'] as Map<String, dynamic>)
          : null,
      valueUuid: json['valueUuid'] != null ? FhirUuid(json['valueUuid']) : null,
      valueUuidElement: json['_valueUuid'] != null
          ? Element.fromJson(json['_valueUuid'] as Map<String, dynamic>)
          : null,
      valueAddress: json['valueAddress'] != null
          ? Address.fromJson(json['valueAddress'] as Map<String, dynamic>)
          : null,
      valueAge: json['valueAge'] != null
          ? Age.fromJson(json['valueAge'] as Map<String, dynamic>)
          : null,
      valueAnnotation: json['valueAnnotation'] != null
          ? Annotation.fromJson(json['valueAnnotation'] as Map<String, dynamic>)
          : null,
      valueAttachment: json['valueAttachment'] != null
          ? Attachment.fromJson(json['valueAttachment'] as Map<String, dynamic>)
          : null,
      valueCodeableConcept: json['valueCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['valueCodeableConcept'] as Map<String, dynamic>)
          : null,
      valueCoding: json['valueCoding'] != null
          ? Coding.fromJson(json['valueCoding'] as Map<String, dynamic>)
          : null,
      valueContactPoint: json['valueContactPoint'] != null
          ? ContactPoint.fromJson(
              json['valueContactPoint'] as Map<String, dynamic>)
          : null,
      valueCount: json['valueCount'] != null
          ? Count.fromJson(json['valueCount'] as Map<String, dynamic>)
          : null,
      valueDistance: json['valueDistance'] != null
          ? Distance.fromJson(json['valueDistance'] as Map<String, dynamic>)
          : null,
      valueDuration: json['valueDuration'] != null
          ? FhirDuration.fromJson(json['valueDuration'] as Map<String, dynamic>)
          : null,
      valueHumanName: json['valueHumanName'] != null
          ? HumanName.fromJson(json['valueHumanName'] as Map<String, dynamic>)
          : null,
      valueIdentifier: json['valueIdentifier'] != null
          ? Identifier.fromJson(json['valueIdentifier'] as Map<String, dynamic>)
          : null,
      valueMoney: json['valueMoney'] != null
          ? Money.fromJson(json['valueMoney'] as Map<String, dynamic>)
          : null,
      valuePeriod: json['valuePeriod'] != null
          ? Period.fromJson(json['valuePeriod'] as Map<String, dynamic>)
          : null,
      valueQuantity: json['valueQuantity'] != null
          ? Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>)
          : null,
      valueRange: json['valueRange'] != null
          ? Range.fromJson(json['valueRange'] as Map<String, dynamic>)
          : null,
      valueRatio: json['valueRatio'] != null
          ? Ratio.fromJson(json['valueRatio'] as Map<String, dynamic>)
          : null,
      valueReference: json['valueReference'] != null
          ? Reference.fromJson(json['valueReference'] as Map<String, dynamic>)
          : null,
      valueSampledData: json['valueSampledData'] != null
          ? SampledData.fromJson(
              json['valueSampledData'] as Map<String, dynamic>)
          : null,
      valueSignature: json['valueSignature'] != null
          ? Signature.fromJson(json['valueSignature'] as Map<String, dynamic>)
          : null,
      valueTiming: json['valueTiming'] != null
          ? Timing.fromJson(json['valueTiming'] as Map<String, dynamic>)
          : null,
      valueContactDetail: json['valueContactDetail'] != null
          ? ContactDetail.fromJson(
              json['valueContactDetail'] as Map<String, dynamic>)
          : null,
      valueContributor: json['valueContributor'] != null
          ? Contributor.fromJson(
              json['valueContributor'] as Map<String, dynamic>)
          : null,
      valueDataRequirement: json['valueDataRequirement'] != null
          ? DataRequirement.fromJson(
              json['valueDataRequirement'] as Map<String, dynamic>)
          : null,
      valueExpression: json['valueExpression'] != null
          ? FhirExpression.fromJson(
              json['valueExpression'] as Map<String, dynamic>)
          : null,
      valueParameterDefinition: json['valueParameterDefinition'] != null
          ? ParameterDefinition.fromJson(
              json['valueParameterDefinition'] as Map<String, dynamic>)
          : null,
      valueRelatedArtifact: json['valueRelatedArtifact'] != null
          ? RelatedArtifact.fromJson(
              json['valueRelatedArtifact'] as Map<String, dynamic>)
          : null,
      valueTriggerDefinition: json['valueTriggerDefinition'] != null
          ? TriggerDefinition.fromJson(
              json['valueTriggerDefinition'] as Map<String, dynamic>)
          : null,
      valueUsageContext: json['valueUsageContext'] != null
          ? UsageContext.fromJson(
              json['valueUsageContext'] as Map<String, dynamic>)
          : null,
      valueDosage: json['valueDosage'] != null
          ? Dosage.fromJson(json['valueDosage'] as Map<String, dynamic>)
          : null,
      valueMeta: json['valueMeta'] != null
          ? FhirMeta.fromJson(json['valueMeta'] as Map<String, dynamic>)
          : null,
    );
  }
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
class TaskOutput extends BackboneElement {
  TaskOutput({
    super.id,
    super.extension_,
    super.modifierExtension,
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
  int dbId = 0;

  /// [type] /// The name of the Output parameter.
  final CodeableConcept type;

  /// [valueBase64Binary] /// The value of the Output parameter as a basic type.
  final FhirBase64Binary? valueBase64Binary;
  final Element? valueBase64BinaryElement;

  /// [valueBoolean] /// The value of the Output parameter as a basic type.
  final FhirBoolean? valueBoolean;
  final Element? valueBooleanElement;

  /// [valueCanonical] /// The value of the Output parameter as a basic type.
  final FhirCanonical? valueCanonical;
  final Element? valueCanonicalElement;

  /// [valueCode] /// The value of the Output parameter as a basic type.
  final FhirCode? valueCode;
  final Element? valueCodeElement;

  /// [valueDate] /// The value of the Output parameter as a basic type.
  final FhirDate? valueDate;
  final Element? valueDateElement;

  /// [valueDateTime] /// The value of the Output parameter as a basic type.
  final FhirDateTime? valueDateTime;
  final Element? valueDateTimeElement;

  /// [valueDecimal] /// The value of the Output parameter as a basic type.
  final FhirDecimal? valueDecimal;
  final Element? valueDecimalElement;

  /// [valueId] /// The value of the Output parameter as a basic type.
  final FhirId? valueId;
  final Element? valueIdElement;

  /// [valueInstant] /// The value of the Output parameter as a basic type.
  final FhirInstant? valueInstant;
  final Element? valueInstantElement;

  /// [valueInteger] /// The value of the Output parameter as a basic type.
  final FhirInteger? valueInteger;
  final Element? valueIntegerElement;

  /// [valueMarkdown] /// The value of the Output parameter as a basic type.
  final FhirMarkdown? valueMarkdown;
  final Element? valueMarkdownElement;

  /// [valueOid] /// The value of the Output parameter as a basic type.
  final FhirOid? valueOid;
  final Element? valueOidElement;

  /// [valuePositiveInt] /// The value of the Output parameter as a basic type.
  final FhirPositiveInt? valuePositiveInt;
  final Element? valuePositiveIntElement;

  /// [valueString] /// The value of the Output parameter as a basic type.
  final FhirString? valueString;
  final Element? valueStringElement;

  /// [valueTime] /// The value of the Output parameter as a basic type.
  final FhirTime? valueTime;
  final Element? valueTimeElement;

  /// [valueUnsignedInt] /// The value of the Output parameter as a basic type.
  final FhirUnsignedInt? valueUnsignedInt;
  final Element? valueUnsignedIntElement;

  /// [valueUri] /// The value of the Output parameter as a basic type.
  final FhirUri? valueUri;
  final Element? valueUriElement;

  /// [valueUrl] /// The value of the Output parameter as a basic type.
  final FhirUrl? valueUrl;
  final Element? valueUrlElement;

  /// [valueUuid] /// The value of the Output parameter as a basic type.
  final FhirUuid? valueUuid;
  final Element? valueUuidElement;

  /// [valueAddress] /// The value of the Output parameter as a basic type.
  final Address? valueAddress;

  /// [valueAge] /// The value of the Output parameter as a basic type.
  final Age? valueAge;

  /// [valueAnnotation] /// The value of the Output parameter as a basic type.
  final Annotation? valueAnnotation;

  /// [valueAttachment] /// The value of the Output parameter as a basic type.
  final Attachment? valueAttachment;

  /// [valueCodeableConcept] /// The value of the Output parameter as a basic type.
  final CodeableConcept? valueCodeableConcept;

  /// [valueCoding] /// The value of the Output parameter as a basic type.
  final Coding? valueCoding;

  /// [valueContactPoint] /// The value of the Output parameter as a basic type.
  final ContactPoint? valueContactPoint;

  /// [valueCount] /// The value of the Output parameter as a basic type.
  final Count? valueCount;

  /// [valueDistance] /// The value of the Output parameter as a basic type.
  final Distance? valueDistance;

  /// [valueDuration] /// The value of the Output parameter as a basic type.
  final FhirDuration? valueDuration;

  /// [valueHumanName] /// The value of the Output parameter as a basic type.
  final HumanName? valueHumanName;

  /// [valueIdentifier] /// The value of the Output parameter as a basic type.
  final Identifier? valueIdentifier;

  /// [valueMoney] /// The value of the Output parameter as a basic type.
  final Money? valueMoney;

  /// [valuePeriod] /// The value of the Output parameter as a basic type.
  final Period? valuePeriod;

  /// [valueQuantity] /// The value of the Output parameter as a basic type.
  final Quantity? valueQuantity;

  /// [valueRange] /// The value of the Output parameter as a basic type.
  final Range? valueRange;

  /// [valueRatio] /// The value of the Output parameter as a basic type.
  final Ratio? valueRatio;

  /// [valueReference] /// The value of the Output parameter as a basic type.
  final Reference? valueReference;

  /// [valueSampledData] /// The value of the Output parameter as a basic type.
  final SampledData? valueSampledData;

  /// [valueSignature] /// The value of the Output parameter as a basic type.
  final Signature? valueSignature;

  /// [valueTiming] /// The value of the Output parameter as a basic type.
  final Timing? valueTiming;

  /// [valueContactDetail] /// The value of the Output parameter as a basic type.
  final ContactDetail? valueContactDetail;

  /// [valueContributor] /// The value of the Output parameter as a basic type.
  final Contributor? valueContributor;

  /// [valueDataRequirement] /// The value of the Output parameter as a basic type.
  final DataRequirement? valueDataRequirement;

  /// [valueExpression] /// The value of the Output parameter as a basic type.
  final FhirExpression? valueExpression;

  /// [valueParameterDefinition] /// The value of the Output parameter as a basic type.
  final ParameterDefinition? valueParameterDefinition;

  /// [valueRelatedArtifact] /// The value of the Output parameter as a basic type.
  final RelatedArtifact? valueRelatedArtifact;

  /// [valueTriggerDefinition] /// The value of the Output parameter as a basic type.
  final TriggerDefinition? valueTriggerDefinition;

  /// [valueUsageContext] /// The value of the Output parameter as a basic type.
  final UsageContext? valueUsageContext;

  /// [valueDosage] /// The value of the Output parameter as a basic type.
  final Dosage? valueDosage;

  /// [valueMeta] /// The value of the Output parameter as a basic type.
  final FhirMeta? valueMeta;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['type'] = type.toJson();
    if (valueBase64Binary?.value != null) {
      json['valueBase64Binary'] = valueBase64Binary!.value;
    }
    if (valueBase64BinaryElement != null) {
      json['_valueBase64Binary'] = valueBase64BinaryElement!.toJson();
    }
    if (valueBoolean?.value != null) {
      json['valueBoolean'] = valueBoolean!.value;
    }
    if (valueBooleanElement != null) {
      json['_valueBoolean'] = valueBooleanElement!.toJson();
    }
    if (valueCanonical?.value != null) {
      json['valueCanonical'] = valueCanonical!.value;
    }
    if (valueCanonicalElement != null) {
      json['_valueCanonical'] = valueCanonicalElement!.toJson();
    }
    if (valueCode?.value != null) {
      json['valueCode'] = valueCode!.value;
    }
    if (valueCodeElement != null) {
      json['_valueCode'] = valueCodeElement!.toJson();
    }
    if (valueDate?.value != null) {
      json['valueDate'] = valueDate!.value;
    }
    if (valueDateElement != null) {
      json['_valueDate'] = valueDateElement!.toJson();
    }
    if (valueDateTime?.value != null) {
      json['valueDateTime'] = valueDateTime!.value;
    }
    if (valueDateTimeElement != null) {
      json['_valueDateTime'] = valueDateTimeElement!.toJson();
    }
    if (valueDecimal?.value != null) {
      json['valueDecimal'] = valueDecimal!.value;
    }
    if (valueDecimalElement != null) {
      json['_valueDecimal'] = valueDecimalElement!.toJson();
    }
    if (valueId?.value != null) {
      json['valueId'] = valueId!.value;
    }
    if (valueIdElement != null) {
      json['_valueId'] = valueIdElement!.toJson();
    }
    if (valueInstant?.value != null) {
      json['valueInstant'] = valueInstant!.value;
    }
    if (valueInstantElement != null) {
      json['_valueInstant'] = valueInstantElement!.toJson();
    }
    if (valueInteger?.value != null) {
      json['valueInteger'] = valueInteger!.value;
    }
    if (valueIntegerElement != null) {
      json['_valueInteger'] = valueIntegerElement!.toJson();
    }
    if (valueMarkdown?.value != null) {
      json['valueMarkdown'] = valueMarkdown!.value;
    }
    if (valueMarkdownElement != null) {
      json['_valueMarkdown'] = valueMarkdownElement!.toJson();
    }
    if (valueOid?.value != null) {
      json['valueOid'] = valueOid!.value;
    }
    if (valueOidElement != null) {
      json['_valueOid'] = valueOidElement!.toJson();
    }
    if (valuePositiveInt?.value != null) {
      json['valuePositiveInt'] = valuePositiveInt!.value;
    }
    if (valuePositiveIntElement != null) {
      json['_valuePositiveInt'] = valuePositiveIntElement!.toJson();
    }
    if (valueString?.value != null) {
      json['valueString'] = valueString!.value;
    }
    if (valueStringElement != null) {
      json['_valueString'] = valueStringElement!.toJson();
    }
    if (valueTime?.value != null) {
      json['valueTime'] = valueTime!.value;
    }
    if (valueTimeElement != null) {
      json['_valueTime'] = valueTimeElement!.toJson();
    }
    if (valueUnsignedInt?.value != null) {
      json['valueUnsignedInt'] = valueUnsignedInt!.value;
    }
    if (valueUnsignedIntElement != null) {
      json['_valueUnsignedInt'] = valueUnsignedIntElement!.toJson();
    }
    if (valueUri?.value != null) {
      json['valueUri'] = valueUri!.value;
    }
    if (valueUriElement != null) {
      json['_valueUri'] = valueUriElement!.toJson();
    }
    if (valueUrl?.value != null) {
      json['valueUrl'] = valueUrl!.value;
    }
    if (valueUrlElement != null) {
      json['_valueUrl'] = valueUrlElement!.toJson();
    }
    if (valueUuid?.value != null) {
      json['valueUuid'] = valueUuid!.value;
    }
    if (valueUuidElement != null) {
      json['_valueUuid'] = valueUuidElement!.toJson();
    }
    if (valueAddress != null) {
      json['valueAddress'] = valueAddress!.toJson();
    }
    if (valueAge != null) {
      json['valueAge'] = valueAge!.toJson();
    }
    if (valueAnnotation != null) {
      json['valueAnnotation'] = valueAnnotation!.toJson();
    }
    if (valueAttachment != null) {
      json['valueAttachment'] = valueAttachment!.toJson();
    }
    if (valueCodeableConcept != null) {
      json['valueCodeableConcept'] = valueCodeableConcept!.toJson();
    }
    if (valueCoding != null) {
      json['valueCoding'] = valueCoding!.toJson();
    }
    if (valueContactPoint != null) {
      json['valueContactPoint'] = valueContactPoint!.toJson();
    }
    if (valueCount != null) {
      json['valueCount'] = valueCount!.toJson();
    }
    if (valueDistance != null) {
      json['valueDistance'] = valueDistance!.toJson();
    }
    if (valueDuration != null) {
      json['valueDuration'] = valueDuration!.toJson();
    }
    if (valueHumanName != null) {
      json['valueHumanName'] = valueHumanName!.toJson();
    }
    if (valueIdentifier != null) {
      json['valueIdentifier'] = valueIdentifier!.toJson();
    }
    if (valueMoney != null) {
      json['valueMoney'] = valueMoney!.toJson();
    }
    if (valuePeriod != null) {
      json['valuePeriod'] = valuePeriod!.toJson();
    }
    if (valueQuantity != null) {
      json['valueQuantity'] = valueQuantity!.toJson();
    }
    if (valueRange != null) {
      json['valueRange'] = valueRange!.toJson();
    }
    if (valueRatio != null) {
      json['valueRatio'] = valueRatio!.toJson();
    }
    if (valueReference != null) {
      json['valueReference'] = valueReference!.toJson();
    }
    if (valueSampledData != null) {
      json['valueSampledData'] = valueSampledData!.toJson();
    }
    if (valueSignature != null) {
      json['valueSignature'] = valueSignature!.toJson();
    }
    if (valueTiming != null) {
      json['valueTiming'] = valueTiming!.toJson();
    }
    if (valueContactDetail != null) {
      json['valueContactDetail'] = valueContactDetail!.toJson();
    }
    if (valueContributor != null) {
      json['valueContributor'] = valueContributor!.toJson();
    }
    if (valueDataRequirement != null) {
      json['valueDataRequirement'] = valueDataRequirement!.toJson();
    }
    if (valueExpression != null) {
      json['valueExpression'] = valueExpression!.toJson();
    }
    if (valueParameterDefinition != null) {
      json['valueParameterDefinition'] = valueParameterDefinition!.toJson();
    }
    if (valueRelatedArtifact != null) {
      json['valueRelatedArtifact'] = valueRelatedArtifact!.toJson();
    }
    if (valueTriggerDefinition != null) {
      json['valueTriggerDefinition'] = valueTriggerDefinition!.toJson();
    }
    if (valueUsageContext != null) {
      json['valueUsageContext'] = valueUsageContext!.toJson();
    }
    if (valueDosage != null) {
      json['valueDosage'] = valueDosage!.toJson();
    }
    if (valueMeta != null) {
      json['valueMeta'] = valueMeta!.toJson();
    }
    return json;
  }

  factory TaskOutput.fromJson(Map<String, dynamic> json) {
    return TaskOutput(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      type: CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      valueBase64Binary: json['valueBase64Binary'] != null
          ? FhirBase64Binary(json['valueBase64Binary'])
          : null,
      valueBase64BinaryElement: json['_valueBase64Binary'] != null
          ? Element.fromJson(json['_valueBase64Binary'] as Map<String, dynamic>)
          : null,
      valueBoolean: json['valueBoolean'] != null
          ? FhirBoolean(json['valueBoolean'])
          : null,
      valueBooleanElement: json['_valueBoolean'] != null
          ? Element.fromJson(json['_valueBoolean'] as Map<String, dynamic>)
          : null,
      valueCanonical: json['valueCanonical'] != null
          ? FhirCanonical(json['valueCanonical'])
          : null,
      valueCanonicalElement: json['_valueCanonical'] != null
          ? Element.fromJson(json['_valueCanonical'] as Map<String, dynamic>)
          : null,
      valueCode: json['valueCode'] != null ? FhirCode(json['valueCode']) : null,
      valueCodeElement: json['_valueCode'] != null
          ? Element.fromJson(json['_valueCode'] as Map<String, dynamic>)
          : null,
      valueDate: json['valueDate'] != null ? FhirDate(json['valueDate']) : null,
      valueDateElement: json['_valueDate'] != null
          ? Element.fromJson(json['_valueDate'] as Map<String, dynamic>)
          : null,
      valueDateTime: json['valueDateTime'] != null
          ? FhirDateTime(json['valueDateTime'])
          : null,
      valueDateTimeElement: json['_valueDateTime'] != null
          ? Element.fromJson(json['_valueDateTime'] as Map<String, dynamic>)
          : null,
      valueDecimal: json['valueDecimal'] != null
          ? FhirDecimal(json['valueDecimal'])
          : null,
      valueDecimalElement: json['_valueDecimal'] != null
          ? Element.fromJson(json['_valueDecimal'] as Map<String, dynamic>)
          : null,
      valueId: json['valueId'] != null ? FhirId(json['valueId']) : null,
      valueIdElement: json['_valueId'] != null
          ? Element.fromJson(json['_valueId'] as Map<String, dynamic>)
          : null,
      valueInstant: json['valueInstant'] != null
          ? FhirInstant(json['valueInstant'])
          : null,
      valueInstantElement: json['_valueInstant'] != null
          ? Element.fromJson(json['_valueInstant'] as Map<String, dynamic>)
          : null,
      valueInteger: json['valueInteger'] != null
          ? FhirInteger(json['valueInteger'])
          : null,
      valueIntegerElement: json['_valueInteger'] != null
          ? Element.fromJson(json['_valueInteger'] as Map<String, dynamic>)
          : null,
      valueMarkdown: json['valueMarkdown'] != null
          ? FhirMarkdown(json['valueMarkdown'])
          : null,
      valueMarkdownElement: json['_valueMarkdown'] != null
          ? Element.fromJson(json['_valueMarkdown'] as Map<String, dynamic>)
          : null,
      valueOid: json['valueOid'] != null ? FhirOid(json['valueOid']) : null,
      valueOidElement: json['_valueOid'] != null
          ? Element.fromJson(json['_valueOid'] as Map<String, dynamic>)
          : null,
      valuePositiveInt: json['valuePositiveInt'] != null
          ? FhirPositiveInt(json['valuePositiveInt'])
          : null,
      valuePositiveIntElement: json['_valuePositiveInt'] != null
          ? Element.fromJson(json['_valuePositiveInt'] as Map<String, dynamic>)
          : null,
      valueString:
          json['valueString'] != null ? FhirString(json['valueString']) : null,
      valueStringElement: json['_valueString'] != null
          ? Element.fromJson(json['_valueString'] as Map<String, dynamic>)
          : null,
      valueTime: json['valueTime'] != null ? FhirTime(json['valueTime']) : null,
      valueTimeElement: json['_valueTime'] != null
          ? Element.fromJson(json['_valueTime'] as Map<String, dynamic>)
          : null,
      valueUnsignedInt: json['valueUnsignedInt'] != null
          ? FhirUnsignedInt(json['valueUnsignedInt'])
          : null,
      valueUnsignedIntElement: json['_valueUnsignedInt'] != null
          ? Element.fromJson(json['_valueUnsignedInt'] as Map<String, dynamic>)
          : null,
      valueUri: json['valueUri'] != null ? FhirUri(json['valueUri']) : null,
      valueUriElement: json['_valueUri'] != null
          ? Element.fromJson(json['_valueUri'] as Map<String, dynamic>)
          : null,
      valueUrl: json['valueUrl'] != null ? FhirUrl(json['valueUrl']) : null,
      valueUrlElement: json['_valueUrl'] != null
          ? Element.fromJson(json['_valueUrl'] as Map<String, dynamic>)
          : null,
      valueUuid: json['valueUuid'] != null ? FhirUuid(json['valueUuid']) : null,
      valueUuidElement: json['_valueUuid'] != null
          ? Element.fromJson(json['_valueUuid'] as Map<String, dynamic>)
          : null,
      valueAddress: json['valueAddress'] != null
          ? Address.fromJson(json['valueAddress'] as Map<String, dynamic>)
          : null,
      valueAge: json['valueAge'] != null
          ? Age.fromJson(json['valueAge'] as Map<String, dynamic>)
          : null,
      valueAnnotation: json['valueAnnotation'] != null
          ? Annotation.fromJson(json['valueAnnotation'] as Map<String, dynamic>)
          : null,
      valueAttachment: json['valueAttachment'] != null
          ? Attachment.fromJson(json['valueAttachment'] as Map<String, dynamic>)
          : null,
      valueCodeableConcept: json['valueCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['valueCodeableConcept'] as Map<String, dynamic>)
          : null,
      valueCoding: json['valueCoding'] != null
          ? Coding.fromJson(json['valueCoding'] as Map<String, dynamic>)
          : null,
      valueContactPoint: json['valueContactPoint'] != null
          ? ContactPoint.fromJson(
              json['valueContactPoint'] as Map<String, dynamic>)
          : null,
      valueCount: json['valueCount'] != null
          ? Count.fromJson(json['valueCount'] as Map<String, dynamic>)
          : null,
      valueDistance: json['valueDistance'] != null
          ? Distance.fromJson(json['valueDistance'] as Map<String, dynamic>)
          : null,
      valueDuration: json['valueDuration'] != null
          ? FhirDuration.fromJson(json['valueDuration'] as Map<String, dynamic>)
          : null,
      valueHumanName: json['valueHumanName'] != null
          ? HumanName.fromJson(json['valueHumanName'] as Map<String, dynamic>)
          : null,
      valueIdentifier: json['valueIdentifier'] != null
          ? Identifier.fromJson(json['valueIdentifier'] as Map<String, dynamic>)
          : null,
      valueMoney: json['valueMoney'] != null
          ? Money.fromJson(json['valueMoney'] as Map<String, dynamic>)
          : null,
      valuePeriod: json['valuePeriod'] != null
          ? Period.fromJson(json['valuePeriod'] as Map<String, dynamic>)
          : null,
      valueQuantity: json['valueQuantity'] != null
          ? Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>)
          : null,
      valueRange: json['valueRange'] != null
          ? Range.fromJson(json['valueRange'] as Map<String, dynamic>)
          : null,
      valueRatio: json['valueRatio'] != null
          ? Ratio.fromJson(json['valueRatio'] as Map<String, dynamic>)
          : null,
      valueReference: json['valueReference'] != null
          ? Reference.fromJson(json['valueReference'] as Map<String, dynamic>)
          : null,
      valueSampledData: json['valueSampledData'] != null
          ? SampledData.fromJson(
              json['valueSampledData'] as Map<String, dynamic>)
          : null,
      valueSignature: json['valueSignature'] != null
          ? Signature.fromJson(json['valueSignature'] as Map<String, dynamic>)
          : null,
      valueTiming: json['valueTiming'] != null
          ? Timing.fromJson(json['valueTiming'] as Map<String, dynamic>)
          : null,
      valueContactDetail: json['valueContactDetail'] != null
          ? ContactDetail.fromJson(
              json['valueContactDetail'] as Map<String, dynamic>)
          : null,
      valueContributor: json['valueContributor'] != null
          ? Contributor.fromJson(
              json['valueContributor'] as Map<String, dynamic>)
          : null,
      valueDataRequirement: json['valueDataRequirement'] != null
          ? DataRequirement.fromJson(
              json['valueDataRequirement'] as Map<String, dynamic>)
          : null,
      valueExpression: json['valueExpression'] != null
          ? FhirExpression.fromJson(
              json['valueExpression'] as Map<String, dynamic>)
          : null,
      valueParameterDefinition: json['valueParameterDefinition'] != null
          ? ParameterDefinition.fromJson(
              json['valueParameterDefinition'] as Map<String, dynamic>)
          : null,
      valueRelatedArtifact: json['valueRelatedArtifact'] != null
          ? RelatedArtifact.fromJson(
              json['valueRelatedArtifact'] as Map<String, dynamic>)
          : null,
      valueTriggerDefinition: json['valueTriggerDefinition'] != null
          ? TriggerDefinition.fromJson(
              json['valueTriggerDefinition'] as Map<String, dynamic>)
          : null,
      valueUsageContext: json['valueUsageContext'] != null
          ? UsageContext.fromJson(
              json['valueUsageContext'] as Map<String, dynamic>)
          : null,
      valueDosage: json['valueDosage'] != null
          ? Dosage.fromJson(json['valueDosage'] as Map<String, dynamic>)
          : null,
      valueMeta: json['valueMeta'] != null
          ? FhirMeta.fromJson(json['valueMeta'] as Map<String, dynamic>)
          : null,
    );
  }
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
