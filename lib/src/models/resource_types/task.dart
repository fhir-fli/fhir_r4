import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Task]
/// A task to be performed.
class Task extends DomainResource {
  /// Primary constructor for
  /// [Task]

  const Task({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
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
  }) : super(
          resourceType: R4ResourceType.Task,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Task.fromJson(
    Map<String, dynamic> json,
  ) {
    return Task(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules:
          (json['implicitRules'] != null || json['_implicitRules'] != null)
              ? FhirUri.fromJson({
                  'value': json['implicitRules'],
                  '_value': json['_implicitRules'],
                })
              : null,
      language: (json['language'] != null || json['_language'] != null)
          ? CommonLanguages.fromJson({
              'value': json['language'],
              '_value': json['_language'],
            })
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      instantiatesCanonical: (json['instantiatesCanonical'] != null ||
              json['_instantiatesCanonical'] != null)
          ? FhirCanonical.fromJson({
              'value': json['instantiatesCanonical'],
              '_value': json['_instantiatesCanonical'],
            })
          : null,
      instantiatesUri:
          (json['instantiatesUri'] != null || json['_instantiatesUri'] != null)
              ? FhirUri.fromJson({
                  'value': json['instantiatesUri'],
                  '_value': json['_instantiatesUri'],
                })
              : null,
      basedOn: json['basedOn'] != null
          ? (json['basedOn'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      groupIdentifier: json['groupIdentifier'] != null
          ? Identifier.fromJson(
              json['groupIdentifier'] as Map<String, dynamic>,
            )
          : null,
      partOf: json['partOf'] != null
          ? (json['partOf'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      status: TaskStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      statusReason: json['statusReason'] != null
          ? CodeableConcept.fromJson(
              json['statusReason'] as Map<String, dynamic>,
            )
          : null,
      businessStatus: json['businessStatus'] != null
          ? CodeableConcept.fromJson(
              json['businessStatus'] as Map<String, dynamic>,
            )
          : null,
      intent: TaskIntent.fromJson({
        'value': json['intent'],
        '_value': json['_intent'],
      }),
      priority: (json['priority'] != null || json['_priority'] != null)
          ? RequestPriority.fromJson({
              'value': json['priority'],
              '_value': json['_priority'],
            })
          : null,
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              json['code'] as Map<String, dynamic>,
            )
          : null,
      description: (json['description'] != null || json['_description'] != null)
          ? FhirString.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      focus: json['focus'] != null
          ? Reference.fromJson(
              json['focus'] as Map<String, dynamic>,
            )
          : null,
      for_: json['for'] != null
          ? Reference.fromJson(
              json['for'] as Map<String, dynamic>,
            )
          : null,
      encounter: json['encounter'] != null
          ? Reference.fromJson(
              json['encounter'] as Map<String, dynamic>,
            )
          : null,
      executionPeriod: json['executionPeriod'] != null
          ? Period.fromJson(
              json['executionPeriod'] as Map<String, dynamic>,
            )
          : null,
      authoredOn: (json['authoredOn'] != null || json['_authoredOn'] != null)
          ? FhirDateTime.fromJson({
              'value': json['authoredOn'],
              '_value': json['_authoredOn'],
            })
          : null,
      lastModified:
          (json['lastModified'] != null || json['_lastModified'] != null)
              ? FhirDateTime.fromJson({
                  'value': json['lastModified'],
                  '_value': json['_lastModified'],
                })
              : null,
      requester: json['requester'] != null
          ? Reference.fromJson(
              json['requester'] as Map<String, dynamic>,
            )
          : null,
      performerType: json['performerType'] != null
          ? (json['performerType'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      owner: json['owner'] != null
          ? Reference.fromJson(
              json['owner'] as Map<String, dynamic>,
            )
          : null,
      location: json['location'] != null
          ? Reference.fromJson(
              json['location'] as Map<String, dynamic>,
            )
          : null,
      reasonCode: json['reasonCode'] != null
          ? CodeableConcept.fromJson(
              json['reasonCode'] as Map<String, dynamic>,
            )
          : null,
      reasonReference: json['reasonReference'] != null
          ? Reference.fromJson(
              json['reasonReference'] as Map<String, dynamic>,
            )
          : null,
      insurance: json['insurance'] != null
          ? (json['insurance'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                (v) => Annotation.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      relevantHistory: json['relevantHistory'] != null
          ? (json['relevantHistory'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      restriction: json['restriction'] != null
          ? TaskRestriction.fromJson(
              json['restriction'] as Map<String, dynamic>,
            )
          : null,
      input: json['input'] != null
          ? (json['input'] as List<dynamic>)
              .map<TaskInput>(
                (v) => TaskInput.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      output: json['output'] != null
          ? (json['output'] as List<dynamic>)
              .map<TaskOutput>(
                (v) => TaskOutput.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [Task]
  /// from a [String] or [YamlMap] object
  factory Task.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Task.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Task.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Task '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Task]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Task.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Task.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Task';

  /// [identifier]
  /// The business identifier for this task.
  final List<Identifier>? identifier;

  /// [instantiatesCanonical]
  /// The URL pointing to a *FHIR*-defined protocol, guideline, orderset or
  /// other definition that is adhered to in whole or in part by this Task.
  final FhirCanonical? instantiatesCanonical;

  /// [instantiatesUri]
  /// The URL pointing to an *externally* maintained protocol, guideline,
  /// orderset or other definition that is adhered to in whole or in part by
  /// this Task.
  final FhirUri? instantiatesUri;

  /// [basedOn]
  /// BasedOn refers to a higher-level authorization that triggered the
  /// creation of the task. It references a "request" resource such as a
  /// ServiceRequest, MedicationRequest, ServiceRequest, CarePlan, etc. which
  /// is distinct from the "request" resource the task is seeking to fulfill.
  /// This latter resource is referenced by FocusOn. For example, based on a
  /// ServiceRequest (= BasedOn), a task is created to fulfill a
  /// procedureRequest ( = FocusOn ) to collect a specimen from a patient.
  final List<Reference>? basedOn;

  /// [groupIdentifier]
  /// An identifier that links together multiple tasks and other requests
  /// that were created in the same context.
  final Identifier? groupIdentifier;

  /// [partOf]
  /// Task that this particular task is part of.
  final List<Reference>? partOf;

  /// [status]
  /// The current status of the task.
  final TaskStatus status;

  /// [statusReason]
  /// An explanation as to why this task is held, failed, was refused, etc.
  final CodeableConcept? statusReason;

  /// [businessStatus]
  /// Contains business-specific nuances of the business state.
  final CodeableConcept? businessStatus;

  /// [intent]
  /// Indicates the "level" of actionability associated with the Task, i.e.
  /// i+R[9]Cs this a proposed task, a planned task, an actionable task, etc.
  final TaskIntent intent;

  /// [priority]
  /// Indicates how quickly the Task should be addressed with respect to
  /// other requests.
  final RequestPriority? priority;

  /// [code]
  /// A name or code (or both) briefly describing what the task involves.
  final CodeableConcept? code;

  /// [description]
  /// A free-text description of what is to be performed.
  final FhirString? description;

  /// [focus]
  /// The request being actioned or the resource being manipulated by this
  /// task.
  final Reference? focus;

  /// [for_]
  /// The entity who benefits from the performance of the service specified
  /// in the task (e.g., the patient).
  final Reference? for_;

  /// [encounter]
  /// The healthcare event (e.g. a patient and healthcare provider
  /// interaction) during which this task was created.
  final Reference? encounter;

  /// [executionPeriod]
  /// Identifies the time action was first taken against the task (start)
  /// and/or the time final action was taken against the task prior to
  /// marking it as completed (end).
  final Period? executionPeriod;

  /// [authoredOn]
  /// The date and time this task was created.
  final FhirDateTime? authoredOn;

  /// [lastModified]
  /// The date and time of last modification to this task.
  final FhirDateTime? lastModified;

  /// [requester]
  /// The creator of the task.
  final Reference? requester;

  /// [performerType]
  /// The kind of participant that should perform the task.
  final List<CodeableConcept>? performerType;

  /// [owner]
  /// Individual organization or Device currently responsible for task
  /// execution.
  final Reference? owner;

  /// [location]
  /// Principal physical location where the this task is performed.
  final Reference? location;

  /// [reasonCode]
  /// A description or code indicating why this task needs to be performed.
  final CodeableConcept? reasonCode;

  /// [reasonReference]
  /// A resource reference indicating why this task needs to be performed.
  final Reference? reasonReference;

  /// [insurance]
  /// Insurance plans, coverage extensions, pre-authorizations and/or
  /// pre-determinations that may be relevant to the Task.
  final List<Reference>? insurance;

  /// [note]
  /// Free-text information captured about the task as it progresses.
  final List<Annotation>? note;

  /// [relevantHistory]
  /// Links to Provenance records for past versions of this Task that
  /// identify key state transitions or updates that are likely to be
  /// relevant to a user looking at the current version of the task.
  final List<Reference>? relevantHistory;

  /// [restriction]
  /// If the Task.focus is a request resource and the task is seeking
  /// fulfillment (i.e. is asking for the request to be actioned), this
  /// element identifies any limitations on what parts of the referenced
  /// request should be actioned.
  final TaskRestriction? restriction;

  /// [input]
  /// Additional information that may be needed in the execution of the task.
  final List<TaskInput>? input;

  /// [output]
  /// Outputs produced by the Task.
  final List<TaskOutput>? output;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    addField('implicitRules', implicitRules);
    addField('language', language);
    if (text != null) {
      json['text'] = text!.toJson();
    }

    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((e) => e.toJson()).toList();
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    addField('instantiatesCanonical', instantiatesCanonical);
    addField('instantiatesUri', instantiatesUri);
    if (basedOn != null && basedOn!.isNotEmpty) {
      json['basedOn'] = basedOn!.map((e) => e.toJson()).toList();
    }

    if (groupIdentifier != null) {
      json['groupIdentifier'] = groupIdentifier!.toJson();
    }

    if (partOf != null && partOf!.isNotEmpty) {
      json['partOf'] = partOf!.map((e) => e.toJson()).toList();
    }

    addField('status', status);
    if (statusReason != null) {
      json['statusReason'] = statusReason!.toJson();
    }

    if (businessStatus != null) {
      json['businessStatus'] = businessStatus!.toJson();
    }

    addField('intent', intent);
    addField('priority', priority);
    if (code != null) {
      json['code'] = code!.toJson();
    }

    addField('description', description);
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

    addField('authoredOn', authoredOn);
    addField('lastModified', lastModified);
    if (requester != null) {
      json['requester'] = requester!.toJson();
    }

    if (performerType != null && performerType!.isNotEmpty) {
      json['performerType'] = performerType!.map((e) => e.toJson()).toList();
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
      json['insurance'] = insurance!.map((e) => e.toJson()).toList();
    }

    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map((e) => e.toJson()).toList();
    }

    if (relevantHistory != null && relevantHistory!.isNotEmpty) {
      json['relevantHistory'] =
          relevantHistory!.map((e) => e.toJson()).toList();
    }

    if (restriction != null) {
      json['restriction'] = restriction!.toJson();
    }

    if (input != null && input!.isNotEmpty) {
      json['input'] = input!.map((e) => e.toJson()).toList();
    }

    if (output != null && output!.isNotEmpty) {
      json['output'] = output!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  Task clone() => throw UnimplementedError();
  @override
  Task copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FhirCanonical? instantiatesCanonical,
    FhirUri? instantiatesUri,
    List<Reference>? basedOn,
    Identifier? groupIdentifier,
    List<Reference>? partOf,
    TaskStatus? status,
    CodeableConcept? statusReason,
    CodeableConcept? businessStatus,
    TaskIntent? intent,
    RequestPriority? priority,
    CodeableConcept? code,
    FhirString? description,
    Reference? focus,
    Reference? for_,
    Reference? encounter,
    Period? executionPeriod,
    FhirDateTime? authoredOn,
    FhirDateTime? lastModified,
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
  }) {
    return Task(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      instantiatesCanonical:
          instantiatesCanonical ?? this.instantiatesCanonical,
      instantiatesUri: instantiatesUri ?? this.instantiatesUri,
      basedOn: basedOn ?? this.basedOn,
      groupIdentifier: groupIdentifier ?? this.groupIdentifier,
      partOf: partOf ?? this.partOf,
      status: status ?? this.status,
      statusReason: statusReason ?? this.statusReason,
      businessStatus: businessStatus ?? this.businessStatus,
      intent: intent ?? this.intent,
      priority: priority ?? this.priority,
      code: code ?? this.code,
      description: description ?? this.description,
      focus: focus ?? this.focus,
      for_: for_ ?? this.for_,
      encounter: encounter ?? this.encounter,
      executionPeriod: executionPeriod ?? this.executionPeriod,
      authoredOn: authoredOn ?? this.authoredOn,
      lastModified: lastModified ?? this.lastModified,
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

/// [TaskRestriction]
/// If the Task.focus is a request resource and the task is seeking
/// fulfillment (i.e. is asking for the request to be actioned), this
/// element identifies any limitations on what parts of the referenced
/// request should be actioned.
class TaskRestriction extends BackboneElement {
  /// Primary constructor for
  /// [TaskRestriction]

  const TaskRestriction({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.repetitions,
    this.period,
    this.recipient,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TaskRestriction.fromJson(
    Map<String, dynamic> json,
  ) {
    return TaskRestriction(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      repetitions: (json['repetitions'] != null || json['_repetitions'] != null)
          ? FhirPositiveInt.fromJson({
              'value': json['repetitions'],
              '_value': json['_repetitions'],
            })
          : null,
      period: json['period'] != null
          ? Period.fromJson(
              json['period'] as Map<String, dynamic>,
            )
          : null,
      recipient: json['recipient'] != null
          ? (json['recipient'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [TaskRestriction]
  /// from a [String] or [YamlMap] object
  factory TaskRestriction.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TaskRestriction.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TaskRestriction.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TaskRestriction '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TaskRestriction]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TaskRestriction.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TaskRestriction.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TaskRestriction';

  /// [repetitions]
  /// Indicates the number of times the requested action should occur.
  final FhirPositiveInt? repetitions;

  /// [period]
  /// Over what time-period is fulfillment sought.
  final Period? period;

  /// [recipient]
  /// For requests that are targeted to more than on potential
  /// recipient/target, for whom is fulfillment sought?
  final List<Reference>? recipient;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('repetitions', repetitions);
    if (period != null) {
      json['period'] = period!.toJson();
    }

    if (recipient != null && recipient!.isNotEmpty) {
      json['recipient'] = recipient!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  TaskRestriction clone() => throw UnimplementedError();
  @override
  TaskRestriction copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? repetitions,
    Period? period,
    List<Reference>? recipient,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return TaskRestriction(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      repetitions: repetitions ?? this.repetitions,
      period: period ?? this.period,
      recipient: recipient ?? this.recipient,
    );
  }
}

/// [TaskInput]
/// Additional information that may be needed in the execution of the task.
class TaskInput extends BackboneElement {
  /// Primary constructor for
  /// [TaskInput]

  const TaskInput({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    required this.valueXTaskInput,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TaskInput.fromJson(
    Map<String, dynamic> json,
  ) {
    return TaskInput(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      type: CodeableConcept.fromJson(
        json['type'] as Map<String, dynamic>,
      ),
      valueXTaskInput: json['valueBase64Binary'] != null ||
              json['_valueBase64Binary'] != null
          ? FhirBase64Binary.fromJson({
              'value': json['valueBase64Binary'],
              '_value': json['_valueBase64Binary'],
            })
          : json['valueBoolean'] != null || json['_valueBoolean'] != null
              ? FhirBoolean.fromJson({
                  'value': json['valueBoolean'],
                  '_value': json['_valueBoolean'],
                })
              : json['valueCanonical'] != null ||
                      json['_valueCanonical'] != null
                  ? FhirCanonical.fromJson({
                      'value': json['valueCanonical'],
                      '_value': json['_valueCanonical'],
                    })
                  : json['valueCode'] != null || json['_valueCode'] != null
                      ? FhirCode.fromJson({
                          'value': json['valueCode'],
                          '_value': json['_valueCode'],
                        })
                      : json['valueDate'] != null || json['_valueDate'] != null
                          ? FhirDate.fromJson({
                              'value': json['valueDate'],
                              '_value': json['_valueDate'],
                            })
                          : json['valueDateTime'] != null ||
                                  json['_valueDateTime'] != null
                              ? FhirDateTime.fromJson({
                                  'value': json['valueDateTime'],
                                  '_value': json['_valueDateTime'],
                                })
                              : json['valueDecimal'] != null ||
                                      json['_valueDecimal'] != null
                                  ? FhirDecimal.fromJson({
                                      'value': json['valueDecimal'],
                                      '_value': json['_valueDecimal'],
                                    })
                                  : json['valueId'] != null ||
                                          json['_valueId'] != null
                                      ? FhirId.fromJson({
                                          'value': json['valueId'],
                                          '_value': json['_valueId'],
                                        })
                                      : json['valueInstant'] != null ||
                                              json['_valueInstant'] != null
                                          ? FhirInstant.fromJson({
                                              'value': json['valueInstant'],
                                              '_value': json['_valueInstant'],
                                            })
                                          : json['valueInteger'] != null ||
                                                  json['_valueInteger'] != null
                                              ? FhirInteger.fromJson({
                                                  'value': json['valueInteger'],
                                                  '_value':
                                                      json['_valueInteger'],
                                                })
                                              : json['valueMarkdown'] != null ||
                                                      json['_valueMarkdown'] !=
                                                          null
                                                  ? FhirMarkdown.fromJson({
                                                      'value':
                                                          json['valueMarkdown'],
                                                      '_value': json[
                                                          '_valueMarkdown'],
                                                    })
                                                  : json['valueOid'] != null ||
                                                          json['_valueOid'] !=
                                                              null
                                                      ? FhirOid.fromJson({
                                                          'value':
                                                              json['valueOid'],
                                                          '_value':
                                                              json['_valueOid'],
                                                        })
                                                      : json['valuePositiveInt'] !=
                                                                  null ||
                                                              json['_valuePositiveInt'] !=
                                                                  null
                                                          ? FhirPositiveInt.fromJson({
                                                              'value': json[
                                                                  'valuePositiveInt'],
                                                              '_value': json[
                                                                  '_valuePositiveInt'],
                                                            })
                                                          : json['valueString'] !=
                                                                      null ||
                                                                  json['_valueString'] !=
                                                                      null
                                                              ? FhirString.fromJson({
                                                                  'value': json[
                                                                      'valueString'],
                                                                  '_value': json[
                                                                      '_valueString'],
                                                                })
                                                              : json['valueTime'] !=
                                                                          null ||
                                                                      json['_valueTime'] !=
                                                                          null
                                                                  ? FhirTime.fromJson({
                                                                      'value': json[
                                                                          'valueTime'],
                                                                      '_value':
                                                                          json[
                                                                              '_valueTime'],
                                                                    })
                                                                  : json['valueUnsignedInt'] !=
                                                                              null ||
                                                                          json['_valueUnsignedInt'] !=
                                                                              null
                                                                      ? FhirUnsignedInt.fromJson({
                                                                          'value':
                                                                              json['valueUnsignedInt'],
                                                                          '_value':
                                                                              json['_valueUnsignedInt'],
                                                                        })
                                                                      : json['valueUri'] != null || json['_valueUri'] != null
                                                                          ? FhirUri.fromJson({
                                                                              'value': json['valueUri'],
                                                                              '_value': json['_valueUri'],
                                                                            })
                                                                          : json['valueUrl'] != null || json['_valueUrl'] != null
                                                                              ? FhirUrl.fromJson({
                                                                                  'value': json['valueUrl'],
                                                                                  '_value': json['_valueUrl'],
                                                                                })
                                                                              : json['valueUuid'] != null || json['_valueUuid'] != null
                                                                                  ? FhirUuid.fromJson({
                                                                                      'value': json['valueUuid'],
                                                                                      '_value': json['_valueUuid'],
                                                                                    })
                                                                                  : json['valueAddress'] != null || json['_valueAddress'] != null
                                                                                      ? Address.fromJson({
                                                                                          'value': json['valueAddress'],
                                                                                          '_value': json['_valueAddress'],
                                                                                        })
                                                                                      : json['valueAge'] != null || json['_valueAge'] != null
                                                                                          ? Age.fromJson({
                                                                                              'value': json['valueAge'],
                                                                                              '_value': json['_valueAge'],
                                                                                            })
                                                                                          : json['valueAnnotation'] != null || json['_valueAnnotation'] != null
                                                                                              ? Annotation.fromJson({
                                                                                                  'value': json['valueAnnotation'],
                                                                                                  '_value': json['_valueAnnotation'],
                                                                                                })
                                                                                              : json['valueAttachment'] != null || json['_valueAttachment'] != null
                                                                                                  ? Attachment.fromJson({
                                                                                                      'value': json['valueAttachment'],
                                                                                                      '_value': json['_valueAttachment'],
                                                                                                    })
                                                                                                  : json['valueCodeableConcept'] != null || json['_valueCodeableConcept'] != null
                                                                                                      ? CodeableConcept.fromJson({
                                                                                                          'value': json['valueCodeableConcept'],
                                                                                                          '_value': json['_valueCodeableConcept'],
                                                                                                        })
                                                                                                      : json['valueCoding'] != null || json['_valueCoding'] != null
                                                                                                          ? Coding.fromJson({
                                                                                                              'value': json['valueCoding'],
                                                                                                              '_value': json['_valueCoding'],
                                                                                                            })
                                                                                                          : json['valueContactPoint'] != null || json['_valueContactPoint'] != null
                                                                                                              ? ContactPoint.fromJson({
                                                                                                                  'value': json['valueContactPoint'],
                                                                                                                  '_value': json['_valueContactPoint'],
                                                                                                                })
                                                                                                              : json['valueCount'] != null || json['_valueCount'] != null
                                                                                                                  ? Count.fromJson({
                                                                                                                      'value': json['valueCount'],
                                                                                                                      '_value': json['_valueCount'],
                                                                                                                    })
                                                                                                                  : json['valueDistance'] != null || json['_valueDistance'] != null
                                                                                                                      ? Distance.fromJson({
                                                                                                                          'value': json['valueDistance'],
                                                                                                                          '_value': json['_valueDistance'],
                                                                                                                        })
                                                                                                                      : json['valueDuration'] != null || json['_valueDuration'] != null
                                                                                                                          ? FhirDuration.fromJson({
                                                                                                                              'value': json['valueDuration'],
                                                                                                                              '_value': json['_valueDuration'],
                                                                                                                            })
                                                                                                                          : json['valueHumanName'] != null || json['_valueHumanName'] != null
                                                                                                                              ? HumanName.fromJson({
                                                                                                                                  'value': json['valueHumanName'],
                                                                                                                                  '_value': json['_valueHumanName'],
                                                                                                                                })
                                                                                                                              : json['valueIdentifier'] != null || json['_valueIdentifier'] != null
                                                                                                                                  ? Identifier.fromJson({
                                                                                                                                      'value': json['valueIdentifier'],
                                                                                                                                      '_value': json['_valueIdentifier'],
                                                                                                                                    })
                                                                                                                                  : json['valueMoney'] != null || json['_valueMoney'] != null
                                                                                                                                      ? Money.fromJson({
                                                                                                                                          'value': json['valueMoney'],
                                                                                                                                          '_value': json['_valueMoney'],
                                                                                                                                        })
                                                                                                                                      : json['valuePeriod'] != null || json['_valuePeriod'] != null
                                                                                                                                          ? Period.fromJson({
                                                                                                                                              'value': json['valuePeriod'],
                                                                                                                                              '_value': json['_valuePeriod'],
                                                                                                                                            })
                                                                                                                                          : json['valueQuantity'] != null || json['_valueQuantity'] != null
                                                                                                                                              ? Quantity.fromJson({
                                                                                                                                                  'value': json['valueQuantity'],
                                                                                                                                                  '_value': json['_valueQuantity'],
                                                                                                                                                })
                                                                                                                                              : json['valueRange'] != null || json['_valueRange'] != null
                                                                                                                                                  ? Range.fromJson({
                                                                                                                                                      'value': json['valueRange'],
                                                                                                                                                      '_value': json['_valueRange'],
                                                                                                                                                    })
                                                                                                                                                  : json['valueRatio'] != null || json['_valueRatio'] != null
                                                                                                                                                      ? Ratio.fromJson({
                                                                                                                                                          'value': json['valueRatio'],
                                                                                                                                                          '_value': json['_valueRatio'],
                                                                                                                                                        })
                                                                                                                                                      : json['valueReference'] != null || json['_valueReference'] != null
                                                                                                                                                          ? Reference.fromJson({
                                                                                                                                                              'value': json['valueReference'],
                                                                                                                                                              '_value': json['_valueReference'],
                                                                                                                                                            })
                                                                                                                                                          : json['valueSampledData'] != null || json['_valueSampledData'] != null
                                                                                                                                                              ? SampledData.fromJson({
                                                                                                                                                                  'value': json['valueSampledData'],
                                                                                                                                                                  '_value': json['_valueSampledData'],
                                                                                                                                                                })
                                                                                                                                                              : json['valueSignature'] != null || json['_valueSignature'] != null
                                                                                                                                                                  ? Signature.fromJson({
                                                                                                                                                                      'value': json['valueSignature'],
                                                                                                                                                                      '_value': json['_valueSignature'],
                                                                                                                                                                    })
                                                                                                                                                                  : json['valueTiming'] != null || json['_valueTiming'] != null
                                                                                                                                                                      ? Timing.fromJson({
                                                                                                                                                                          'value': json['valueTiming'],
                                                                                                                                                                          '_value': json['_valueTiming'],
                                                                                                                                                                        })
                                                                                                                                                                      : json['valueContactDetail'] != null || json['_valueContactDetail'] != null
                                                                                                                                                                          ? ContactDetail.fromJson({
                                                                                                                                                                              'value': json['valueContactDetail'],
                                                                                                                                                                              '_value': json['_valueContactDetail'],
                                                                                                                                                                            })
                                                                                                                                                                          : json['valueContributor'] != null || json['_valueContributor'] != null
                                                                                                                                                                              ? Contributor.fromJson({
                                                                                                                                                                                  'value': json['valueContributor'],
                                                                                                                                                                                  '_value': json['_valueContributor'],
                                                                                                                                                                                })
                                                                                                                                                                              : json['valueDataRequirement'] != null || json['_valueDataRequirement'] != null
                                                                                                                                                                                  ? DataRequirement.fromJson({
                                                                                                                                                                                      'value': json['valueDataRequirement'],
                                                                                                                                                                                      '_value': json['_valueDataRequirement'],
                                                                                                                                                                                    })
                                                                                                                                                                                  : json['valueExpression'] != null || json['_valueExpression'] != null
                                                                                                                                                                                      ? FhirExpression.fromJson({
                                                                                                                                                                                          'value': json['valueExpression'],
                                                                                                                                                                                          '_value': json['_valueExpression'],
                                                                                                                                                                                        })
                                                                                                                                                                                      : json['valueParameterDefinition'] != null || json['_valueParameterDefinition'] != null
                                                                                                                                                                                          ? ParameterDefinition.fromJson({
                                                                                                                                                                                              'value': json['valueParameterDefinition'],
                                                                                                                                                                                              '_value': json['_valueParameterDefinition'],
                                                                                                                                                                                            })
                                                                                                                                                                                          : json['valueRelatedArtifact'] != null || json['_valueRelatedArtifact'] != null
                                                                                                                                                                                              ? RelatedArtifact.fromJson({
                                                                                                                                                                                                  'value': json['valueRelatedArtifact'],
                                                                                                                                                                                                  '_value': json['_valueRelatedArtifact'],
                                                                                                                                                                                                })
                                                                                                                                                                                              : json['valueTriggerDefinition'] != null || json['_valueTriggerDefinition'] != null
                                                                                                                                                                                                  ? TriggerDefinition.fromJson({
                                                                                                                                                                                                      'value': json['valueTriggerDefinition'],
                                                                                                                                                                                                      '_value': json['_valueTriggerDefinition'],
                                                                                                                                                                                                    })
                                                                                                                                                                                                  : json['valueUsageContext'] != null || json['_valueUsageContext'] != null
                                                                                                                                                                                                      ? UsageContext.fromJson({
                                                                                                                                                                                                          'value': json['valueUsageContext'],
                                                                                                                                                                                                          '_value': json['_valueUsageContext'],
                                                                                                                                                                                                        })
                                                                                                                                                                                                      : json['valueDosage'] != null || json['_valueDosage'] != null
                                                                                                                                                                                                          ? Dosage.fromJson({
                                                                                                                                                                                                              'value': json['valueDosage'],
                                                                                                                                                                                                              '_value': json['_valueDosage'],
                                                                                                                                                                                                            })
                                                                                                                                                                                                          : FhirMeta.fromJson(
                                                                                                                                                                                                              json['valueMeta'] as Map<String, dynamic>,
                                                                                                                                                                                                            ),
    );
  }

  /// Deserialize [TaskInput]
  /// from a [String] or [YamlMap] object
  factory TaskInput.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TaskInput.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TaskInput.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TaskInput '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TaskInput]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TaskInput.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TaskInput.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TaskInput';

  /// [type]
  /// A code or description indicating how the input is intended to be used
  /// as part of the task execution.
  final CodeableConcept type;

  /// [valueXTaskInput]
  /// The value of the input parameter as a basic type.
  final ValueXTaskInput valueXTaskInput;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['type'] = type.toJson();

    addField('valueXTaskInput', valueXTaskInput);
    return json;
  }

  @override
  TaskInput clone() => throw UnimplementedError();
  @override
  TaskInput copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    ValueXTaskInput? valueXTaskInput,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return TaskInput(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      valueXTaskInput: valueXTaskInput ?? this.valueXTaskInput,
    );
  }
}

/// [TaskOutput]
/// Outputs produced by the Task.
class TaskOutput extends BackboneElement {
  /// Primary constructor for
  /// [TaskOutput]

  const TaskOutput({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    required this.valueXTaskOutput,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TaskOutput.fromJson(
    Map<String, dynamic> json,
  ) {
    return TaskOutput(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      type: CodeableConcept.fromJson(
        json['type'] as Map<String, dynamic>,
      ),
      valueXTaskOutput: json['valueBase64Binary'] != null ||
              json['_valueBase64Binary'] != null
          ? FhirBase64Binary.fromJson({
              'value': json['valueBase64Binary'],
              '_value': json['_valueBase64Binary'],
            })
          : json['valueBoolean'] != null || json['_valueBoolean'] != null
              ? FhirBoolean.fromJson({
                  'value': json['valueBoolean'],
                  '_value': json['_valueBoolean'],
                })
              : json['valueCanonical'] != null ||
                      json['_valueCanonical'] != null
                  ? FhirCanonical.fromJson({
                      'value': json['valueCanonical'],
                      '_value': json['_valueCanonical'],
                    })
                  : json['valueCode'] != null || json['_valueCode'] != null
                      ? FhirCode.fromJson({
                          'value': json['valueCode'],
                          '_value': json['_valueCode'],
                        })
                      : json['valueDate'] != null || json['_valueDate'] != null
                          ? FhirDate.fromJson({
                              'value': json['valueDate'],
                              '_value': json['_valueDate'],
                            })
                          : json['valueDateTime'] != null ||
                                  json['_valueDateTime'] != null
                              ? FhirDateTime.fromJson({
                                  'value': json['valueDateTime'],
                                  '_value': json['_valueDateTime'],
                                })
                              : json['valueDecimal'] != null ||
                                      json['_valueDecimal'] != null
                                  ? FhirDecimal.fromJson({
                                      'value': json['valueDecimal'],
                                      '_value': json['_valueDecimal'],
                                    })
                                  : json['valueId'] != null ||
                                          json['_valueId'] != null
                                      ? FhirId.fromJson({
                                          'value': json['valueId'],
                                          '_value': json['_valueId'],
                                        })
                                      : json['valueInstant'] != null ||
                                              json['_valueInstant'] != null
                                          ? FhirInstant.fromJson({
                                              'value': json['valueInstant'],
                                              '_value': json['_valueInstant'],
                                            })
                                          : json['valueInteger'] != null ||
                                                  json['_valueInteger'] != null
                                              ? FhirInteger.fromJson({
                                                  'value': json['valueInteger'],
                                                  '_value':
                                                      json['_valueInteger'],
                                                })
                                              : json['valueMarkdown'] != null ||
                                                      json['_valueMarkdown'] !=
                                                          null
                                                  ? FhirMarkdown.fromJson({
                                                      'value':
                                                          json['valueMarkdown'],
                                                      '_value': json[
                                                          '_valueMarkdown'],
                                                    })
                                                  : json['valueOid'] != null ||
                                                          json['_valueOid'] !=
                                                              null
                                                      ? FhirOid.fromJson({
                                                          'value':
                                                              json['valueOid'],
                                                          '_value':
                                                              json['_valueOid'],
                                                        })
                                                      : json['valuePositiveInt'] !=
                                                                  null ||
                                                              json['_valuePositiveInt'] !=
                                                                  null
                                                          ? FhirPositiveInt.fromJson({
                                                              'value': json[
                                                                  'valuePositiveInt'],
                                                              '_value': json[
                                                                  '_valuePositiveInt'],
                                                            })
                                                          : json['valueString'] !=
                                                                      null ||
                                                                  json['_valueString'] !=
                                                                      null
                                                              ? FhirString.fromJson({
                                                                  'value': json[
                                                                      'valueString'],
                                                                  '_value': json[
                                                                      '_valueString'],
                                                                })
                                                              : json['valueTime'] !=
                                                                          null ||
                                                                      json['_valueTime'] !=
                                                                          null
                                                                  ? FhirTime.fromJson({
                                                                      'value': json[
                                                                          'valueTime'],
                                                                      '_value':
                                                                          json[
                                                                              '_valueTime'],
                                                                    })
                                                                  : json['valueUnsignedInt'] !=
                                                                              null ||
                                                                          json['_valueUnsignedInt'] !=
                                                                              null
                                                                      ? FhirUnsignedInt.fromJson({
                                                                          'value':
                                                                              json['valueUnsignedInt'],
                                                                          '_value':
                                                                              json['_valueUnsignedInt'],
                                                                        })
                                                                      : json['valueUri'] != null || json['_valueUri'] != null
                                                                          ? FhirUri.fromJson({
                                                                              'value': json['valueUri'],
                                                                              '_value': json['_valueUri'],
                                                                            })
                                                                          : json['valueUrl'] != null || json['_valueUrl'] != null
                                                                              ? FhirUrl.fromJson({
                                                                                  'value': json['valueUrl'],
                                                                                  '_value': json['_valueUrl'],
                                                                                })
                                                                              : json['valueUuid'] != null || json['_valueUuid'] != null
                                                                                  ? FhirUuid.fromJson({
                                                                                      'value': json['valueUuid'],
                                                                                      '_value': json['_valueUuid'],
                                                                                    })
                                                                                  : json['valueAddress'] != null || json['_valueAddress'] != null
                                                                                      ? Address.fromJson({
                                                                                          'value': json['valueAddress'],
                                                                                          '_value': json['_valueAddress'],
                                                                                        })
                                                                                      : json['valueAge'] != null || json['_valueAge'] != null
                                                                                          ? Age.fromJson({
                                                                                              'value': json['valueAge'],
                                                                                              '_value': json['_valueAge'],
                                                                                            })
                                                                                          : json['valueAnnotation'] != null || json['_valueAnnotation'] != null
                                                                                              ? Annotation.fromJson({
                                                                                                  'value': json['valueAnnotation'],
                                                                                                  '_value': json['_valueAnnotation'],
                                                                                                })
                                                                                              : json['valueAttachment'] != null || json['_valueAttachment'] != null
                                                                                                  ? Attachment.fromJson({
                                                                                                      'value': json['valueAttachment'],
                                                                                                      '_value': json['_valueAttachment'],
                                                                                                    })
                                                                                                  : json['valueCodeableConcept'] != null || json['_valueCodeableConcept'] != null
                                                                                                      ? CodeableConcept.fromJson({
                                                                                                          'value': json['valueCodeableConcept'],
                                                                                                          '_value': json['_valueCodeableConcept'],
                                                                                                        })
                                                                                                      : json['valueCoding'] != null || json['_valueCoding'] != null
                                                                                                          ? Coding.fromJson({
                                                                                                              'value': json['valueCoding'],
                                                                                                              '_value': json['_valueCoding'],
                                                                                                            })
                                                                                                          : json['valueContactPoint'] != null || json['_valueContactPoint'] != null
                                                                                                              ? ContactPoint.fromJson({
                                                                                                                  'value': json['valueContactPoint'],
                                                                                                                  '_value': json['_valueContactPoint'],
                                                                                                                })
                                                                                                              : json['valueCount'] != null || json['_valueCount'] != null
                                                                                                                  ? Count.fromJson({
                                                                                                                      'value': json['valueCount'],
                                                                                                                      '_value': json['_valueCount'],
                                                                                                                    })
                                                                                                                  : json['valueDistance'] != null || json['_valueDistance'] != null
                                                                                                                      ? Distance.fromJson({
                                                                                                                          'value': json['valueDistance'],
                                                                                                                          '_value': json['_valueDistance'],
                                                                                                                        })
                                                                                                                      : json['valueDuration'] != null || json['_valueDuration'] != null
                                                                                                                          ? FhirDuration.fromJson({
                                                                                                                              'value': json['valueDuration'],
                                                                                                                              '_value': json['_valueDuration'],
                                                                                                                            })
                                                                                                                          : json['valueHumanName'] != null || json['_valueHumanName'] != null
                                                                                                                              ? HumanName.fromJson({
                                                                                                                                  'value': json['valueHumanName'],
                                                                                                                                  '_value': json['_valueHumanName'],
                                                                                                                                })
                                                                                                                              : json['valueIdentifier'] != null || json['_valueIdentifier'] != null
                                                                                                                                  ? Identifier.fromJson({
                                                                                                                                      'value': json['valueIdentifier'],
                                                                                                                                      '_value': json['_valueIdentifier'],
                                                                                                                                    })
                                                                                                                                  : json['valueMoney'] != null || json['_valueMoney'] != null
                                                                                                                                      ? Money.fromJson({
                                                                                                                                          'value': json['valueMoney'],
                                                                                                                                          '_value': json['_valueMoney'],
                                                                                                                                        })
                                                                                                                                      : json['valuePeriod'] != null || json['_valuePeriod'] != null
                                                                                                                                          ? Period.fromJson({
                                                                                                                                              'value': json['valuePeriod'],
                                                                                                                                              '_value': json['_valuePeriod'],
                                                                                                                                            })
                                                                                                                                          : json['valueQuantity'] != null || json['_valueQuantity'] != null
                                                                                                                                              ? Quantity.fromJson({
                                                                                                                                                  'value': json['valueQuantity'],
                                                                                                                                                  '_value': json['_valueQuantity'],
                                                                                                                                                })
                                                                                                                                              : json['valueRange'] != null || json['_valueRange'] != null
                                                                                                                                                  ? Range.fromJson({
                                                                                                                                                      'value': json['valueRange'],
                                                                                                                                                      '_value': json['_valueRange'],
                                                                                                                                                    })
                                                                                                                                                  : json['valueRatio'] != null || json['_valueRatio'] != null
                                                                                                                                                      ? Ratio.fromJson({
                                                                                                                                                          'value': json['valueRatio'],
                                                                                                                                                          '_value': json['_valueRatio'],
                                                                                                                                                        })
                                                                                                                                                      : json['valueReference'] != null || json['_valueReference'] != null
                                                                                                                                                          ? Reference.fromJson({
                                                                                                                                                              'value': json['valueReference'],
                                                                                                                                                              '_value': json['_valueReference'],
                                                                                                                                                            })
                                                                                                                                                          : json['valueSampledData'] != null || json['_valueSampledData'] != null
                                                                                                                                                              ? SampledData.fromJson({
                                                                                                                                                                  'value': json['valueSampledData'],
                                                                                                                                                                  '_value': json['_valueSampledData'],
                                                                                                                                                                })
                                                                                                                                                              : json['valueSignature'] != null || json['_valueSignature'] != null
                                                                                                                                                                  ? Signature.fromJson({
                                                                                                                                                                      'value': json['valueSignature'],
                                                                                                                                                                      '_value': json['_valueSignature'],
                                                                                                                                                                    })
                                                                                                                                                                  : json['valueTiming'] != null || json['_valueTiming'] != null
                                                                                                                                                                      ? Timing.fromJson({
                                                                                                                                                                          'value': json['valueTiming'],
                                                                                                                                                                          '_value': json['_valueTiming'],
                                                                                                                                                                        })
                                                                                                                                                                      : json['valueContactDetail'] != null || json['_valueContactDetail'] != null
                                                                                                                                                                          ? ContactDetail.fromJson({
                                                                                                                                                                              'value': json['valueContactDetail'],
                                                                                                                                                                              '_value': json['_valueContactDetail'],
                                                                                                                                                                            })
                                                                                                                                                                          : json['valueContributor'] != null || json['_valueContributor'] != null
                                                                                                                                                                              ? Contributor.fromJson({
                                                                                                                                                                                  'value': json['valueContributor'],
                                                                                                                                                                                  '_value': json['_valueContributor'],
                                                                                                                                                                                })
                                                                                                                                                                              : json['valueDataRequirement'] != null || json['_valueDataRequirement'] != null
                                                                                                                                                                                  ? DataRequirement.fromJson({
                                                                                                                                                                                      'value': json['valueDataRequirement'],
                                                                                                                                                                                      '_value': json['_valueDataRequirement'],
                                                                                                                                                                                    })
                                                                                                                                                                                  : json['valueExpression'] != null || json['_valueExpression'] != null
                                                                                                                                                                                      ? FhirExpression.fromJson({
                                                                                                                                                                                          'value': json['valueExpression'],
                                                                                                                                                                                          '_value': json['_valueExpression'],
                                                                                                                                                                                        })
                                                                                                                                                                                      : json['valueParameterDefinition'] != null || json['_valueParameterDefinition'] != null
                                                                                                                                                                                          ? ParameterDefinition.fromJson({
                                                                                                                                                                                              'value': json['valueParameterDefinition'],
                                                                                                                                                                                              '_value': json['_valueParameterDefinition'],
                                                                                                                                                                                            })
                                                                                                                                                                                          : json['valueRelatedArtifact'] != null || json['_valueRelatedArtifact'] != null
                                                                                                                                                                                              ? RelatedArtifact.fromJson({
                                                                                                                                                                                                  'value': json['valueRelatedArtifact'],
                                                                                                                                                                                                  '_value': json['_valueRelatedArtifact'],
                                                                                                                                                                                                })
                                                                                                                                                                                              : json['valueTriggerDefinition'] != null || json['_valueTriggerDefinition'] != null
                                                                                                                                                                                                  ? TriggerDefinition.fromJson({
                                                                                                                                                                                                      'value': json['valueTriggerDefinition'],
                                                                                                                                                                                                      '_value': json['_valueTriggerDefinition'],
                                                                                                                                                                                                    })
                                                                                                                                                                                                  : json['valueUsageContext'] != null || json['_valueUsageContext'] != null
                                                                                                                                                                                                      ? UsageContext.fromJson({
                                                                                                                                                                                                          'value': json['valueUsageContext'],
                                                                                                                                                                                                          '_value': json['_valueUsageContext'],
                                                                                                                                                                                                        })
                                                                                                                                                                                                      : json['valueDosage'] != null || json['_valueDosage'] != null
                                                                                                                                                                                                          ? Dosage.fromJson({
                                                                                                                                                                                                              'value': json['valueDosage'],
                                                                                                                                                                                                              '_value': json['_valueDosage'],
                                                                                                                                                                                                            })
                                                                                                                                                                                                          : FhirMeta.fromJson(
                                                                                                                                                                                                              json['valueMeta'] as Map<String, dynamic>,
                                                                                                                                                                                                            ),
    );
  }

  /// Deserialize [TaskOutput]
  /// from a [String] or [YamlMap] object
  factory TaskOutput.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TaskOutput.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TaskOutput.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TaskOutput '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TaskOutput]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TaskOutput.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TaskOutput.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TaskOutput';

  /// [type]
  /// The name of the Output parameter.
  final CodeableConcept type;

  /// [valueXTaskOutput]
  /// The value of the Output parameter as a basic type.
  final ValueXTaskOutput valueXTaskOutput;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['type'] = type.toJson();

    addField('valueXTaskOutput', valueXTaskOutput);
    return json;
  }

  @override
  TaskOutput clone() => throw UnimplementedError();
  @override
  TaskOutput copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    ValueXTaskOutput? valueXTaskOutput,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return TaskOutput(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      valueXTaskOutput: valueXTaskOutput ?? this.valueXTaskOutput,
    );
  }
}
