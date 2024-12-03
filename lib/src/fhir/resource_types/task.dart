import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Task]
/// A task to be performed.
class Task extends DomainResource {
  /// Primary constructor for
  /// [Task]

  Task({
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.Task,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Task.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return Task(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: parseField<FhirUri>(
        json['implicitRules'],
        json['_implicitRules'],
        FhirUri.fromJson,
      ),
      language: parseField<CommonLanguages>(
        json['language'],
        json['_language'],
        CommonLanguages.fromJson,
      ),
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: parseList<Resource>(
        json['contained'] as List<dynamic>?,
        json['_contained'] as List<dynamic>?,
        Resource.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      identifier: parseList<Identifier>(
        json['identifier'] as List<dynamic>?,
        json['_identifier'] as List<dynamic>?,
        Identifier.fromJson,
      ),
      instantiatesCanonical: parseField<FhirCanonical>(
        json['instantiatesCanonical'],
        json['_instantiatesCanonical'],
        FhirCanonical.fromJson,
      ),
      instantiatesUri: parseField<FhirUri>(
        json['instantiatesUri'],
        json['_instantiatesUri'],
        FhirUri.fromJson,
      ),
      basedOn: parseList<Reference>(
        json['basedOn'] as List<dynamic>?,
        json['_basedOn'] as List<dynamic>?,
        Reference.fromJson,
      ),
      groupIdentifier: json['groupIdentifier'] != null
          ? Identifier.fromJson(
              json['groupIdentifier'] as Map<String, dynamic>,
            )
          : null,
      partOf: parseList<Reference>(
        json['partOf'] as List<dynamic>?,
        json['_partOf'] as List<dynamic>?,
        Reference.fromJson,
      ),
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
      priority: parseField<RequestPriority>(
        json['priority'],
        json['_priority'],
        RequestPriority.fromJson,
      ),
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              json['code'] as Map<String, dynamic>,
            )
          : null,
      description: parseField<FhirString>(
        json['description'],
        json['_description'],
        FhirString.fromJson,
      ),
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
      authoredOn: parseField<FhirDateTime>(
        json['authoredOn'],
        json['_authoredOn'],
        FhirDateTime.fromJson,
      ),
      lastModified: parseField<FhirDateTime>(
        json['lastModified'],
        json['_lastModified'],
        FhirDateTime.fromJson,
      ),
      requester: json['requester'] != null
          ? Reference.fromJson(
              json['requester'] as Map<String, dynamic>,
            )
          : null,
      performerType: parseList<CodeableConcept>(
        json['performerType'] as List<dynamic>?,
        json['_performerType'] as List<dynamic>?,
        CodeableConcept.fromJson,
      ),
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
      insurance: parseList<Reference>(
        json['insurance'] as List<dynamic>?,
        json['_insurance'] as List<dynamic>?,
        Reference.fromJson,
      ),
      note: parseList<Annotation>(
        json['note'] as List<dynamic>?,
        json['_note'] as List<dynamic>?,
        Annotation.fromJson,
      ),
      relevantHistory: parseList<Reference>(
        json['relevantHistory'] as List<dynamic>?,
        json['_relevantHistory'] as List<dynamic>?,
        Reference.fromJson,
      ),
      restriction: json['restriction'] != null
          ? TaskRestriction.fromJson(
              json['restriction'] as Map<String, dynamic>,
            )
          : null,
      input: parseList<TaskInput>(
        json['input'] as List<dynamic>?,
        json['_input'] as List<dynamic>?,
        TaskInput.fromJson,
      ),
      output: parseList<TaskOutput>(
        json['output'] as List<dynamic>?,
        json['_output'] as List<dynamic>?,
        TaskOutput.fromJson,
      ),
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
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

  TaskRestriction({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.repetitions,
    this.period,
    this.recipient,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TaskRestriction.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return TaskRestriction(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      repetitions: parseField<FhirPositiveInt>(
        json['repetitions'],
        json['_repetitions'],
        FhirPositiveInt.fromJson,
      ),
      period: json['period'] != null
          ? Period.fromJson(
              json['period'] as Map<String, dynamic>,
            )
          : null,
      recipient: parseList<Reference>(
        json['recipient'] as List<dynamic>?,
        json['_recipient'] as List<dynamic>?,
        Reference.fromJson,
      ),
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return TaskRestriction(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      repetitions: repetitions ?? this.repetitions,
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
}

/// [TaskInput]
/// Additional information that may be needed in the execution of the task.
class TaskInput extends BackboneElement {
  /// Primary constructor for
  /// [TaskInput]

  TaskInput({
    super.id,
    super.extension_,
    super.modifierExtension,
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TaskInput.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return TaskInput(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      type: CodeableConcept.fromJson(
        json['type'] as Map<String, dynamic>,
      ),
      valueBase64Binary: parseField<FhirBase64Binary>(
        json['valueBase64Binary'],
        json['_valueBase64Binary'],
        FhirBase64Binary.fromJson,
      ),
      valueBoolean: parseField<FhirBoolean>(
        json['valueBoolean'],
        json['_valueBoolean'],
        FhirBoolean.fromJson,
      ),
      valueCanonical: parseField<FhirCanonical>(
        json['valueCanonical'],
        json['_valueCanonical'],
        FhirCanonical.fromJson,
      ),
      valueCode: parseField<FhirCode>(
        json['valueCode'],
        json['_valueCode'],
        FhirCode.fromJson,
      ),
      valueDate: parseField<FhirDate>(
        json['valueDate'],
        json['_valueDate'],
        FhirDate.fromJson,
      ),
      valueDateTime: parseField<FhirDateTime>(
        json['valueDateTime'],
        json['_valueDateTime'],
        FhirDateTime.fromJson,
      ),
      valueDecimal: parseField<FhirDecimal>(
        json['valueDecimal'],
        json['_valueDecimal'],
        FhirDecimal.fromJson,
      ),
      valueId: parseField<FhirId>(
        json['valueId'],
        json['_valueId'],
        FhirId.fromJson,
      ),
      valueInstant: parseField<FhirInstant>(
        json['valueInstant'],
        json['_valueInstant'],
        FhirInstant.fromJson,
      ),
      valueInteger: parseField<FhirInteger>(
        json['valueInteger'],
        json['_valueInteger'],
        FhirInteger.fromJson,
      ),
      valueMarkdown: parseField<FhirMarkdown>(
        json['valueMarkdown'],
        json['_valueMarkdown'],
        FhirMarkdown.fromJson,
      ),
      valueOid: parseField<FhirOid>(
        json['valueOid'],
        json['_valueOid'],
        FhirOid.fromJson,
      ),
      valuePositiveInt: parseField<FhirPositiveInt>(
        json['valuePositiveInt'],
        json['_valuePositiveInt'],
        FhirPositiveInt.fromJson,
      ),
      valueString: parseField<FhirString>(
        json['valueString'],
        json['_valueString'],
        FhirString.fromJson,
      ),
      valueTime: parseField<FhirTime>(
        json['valueTime'],
        json['_valueTime'],
        FhirTime.fromJson,
      ),
      valueUnsignedInt: parseField<FhirUnsignedInt>(
        json['valueUnsignedInt'],
        json['_valueUnsignedInt'],
        FhirUnsignedInt.fromJson,
      ),
      valueUri: parseField<FhirUri>(
        json['valueUri'],
        json['_valueUri'],
        FhirUri.fromJson,
      ),
      valueUrl: parseField<FhirUrl>(
        json['valueUrl'],
        json['_valueUrl'],
        FhirUrl.fromJson,
      ),
      valueUuid: parseField<FhirUuid>(
        json['valueUuid'],
        json['_valueUuid'],
        FhirUuid.fromJson,
      ),
      valueAddress: json['valueAddress'] != null
          ? Address.fromJson(
              json['valueAddress'] as Map<String, dynamic>,
            )
          : null,
      valueAge: json['valueAge'] != null
          ? Age.fromJson(
              json['valueAge'] as Map<String, dynamic>,
            )
          : null,
      valueAnnotation: json['valueAnnotation'] != null
          ? Annotation.fromJson(
              json['valueAnnotation'] as Map<String, dynamic>,
            )
          : null,
      valueAttachment: json['valueAttachment'] != null
          ? Attachment.fromJson(
              json['valueAttachment'] as Map<String, dynamic>,
            )
          : null,
      valueCodeableConcept: json['valueCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['valueCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      valueCoding: json['valueCoding'] != null
          ? Coding.fromJson(
              json['valueCoding'] as Map<String, dynamic>,
            )
          : null,
      valueContactPoint: json['valueContactPoint'] != null
          ? ContactPoint.fromJson(
              json['valueContactPoint'] as Map<String, dynamic>,
            )
          : null,
      valueCount: json['valueCount'] != null
          ? Count.fromJson(
              json['valueCount'] as Map<String, dynamic>,
            )
          : null,
      valueDistance: json['valueDistance'] != null
          ? Distance.fromJson(
              json['valueDistance'] as Map<String, dynamic>,
            )
          : null,
      valueDuration: json['valueDuration'] != null
          ? FhirDuration.fromJson(
              json['valueDuration'] as Map<String, dynamic>,
            )
          : null,
      valueHumanName: json['valueHumanName'] != null
          ? HumanName.fromJson(
              json['valueHumanName'] as Map<String, dynamic>,
            )
          : null,
      valueIdentifier: json['valueIdentifier'] != null
          ? Identifier.fromJson(
              json['valueIdentifier'] as Map<String, dynamic>,
            )
          : null,
      valueMoney: json['valueMoney'] != null
          ? Money.fromJson(
              json['valueMoney'] as Map<String, dynamic>,
            )
          : null,
      valuePeriod: json['valuePeriod'] != null
          ? Period.fromJson(
              json['valuePeriod'] as Map<String, dynamic>,
            )
          : null,
      valueQuantity: json['valueQuantity'] != null
          ? Quantity.fromJson(
              json['valueQuantity'] as Map<String, dynamic>,
            )
          : null,
      valueRange: json['valueRange'] != null
          ? Range.fromJson(
              json['valueRange'] as Map<String, dynamic>,
            )
          : null,
      valueRatio: json['valueRatio'] != null
          ? Ratio.fromJson(
              json['valueRatio'] as Map<String, dynamic>,
            )
          : null,
      valueReference: json['valueReference'] != null
          ? Reference.fromJson(
              json['valueReference'] as Map<String, dynamic>,
            )
          : null,
      valueSampledData: json['valueSampledData'] != null
          ? SampledData.fromJson(
              json['valueSampledData'] as Map<String, dynamic>,
            )
          : null,
      valueSignature: json['valueSignature'] != null
          ? Signature.fromJson(
              json['valueSignature'] as Map<String, dynamic>,
            )
          : null,
      valueTiming: json['valueTiming'] != null
          ? Timing.fromJson(
              json['valueTiming'] as Map<String, dynamic>,
            )
          : null,
      valueContactDetail: json['valueContactDetail'] != null
          ? ContactDetail.fromJson(
              json['valueContactDetail'] as Map<String, dynamic>,
            )
          : null,
      valueContributor: json['valueContributor'] != null
          ? Contributor.fromJson(
              json['valueContributor'] as Map<String, dynamic>,
            )
          : null,
      valueDataRequirement: json['valueDataRequirement'] != null
          ? DataRequirement.fromJson(
              json['valueDataRequirement'] as Map<String, dynamic>,
            )
          : null,
      valueExpression: json['valueExpression'] != null
          ? FhirExpression.fromJson(
              json['valueExpression'] as Map<String, dynamic>,
            )
          : null,
      valueParameterDefinition: json['valueParameterDefinition'] != null
          ? ParameterDefinition.fromJson(
              json['valueParameterDefinition'] as Map<String, dynamic>,
            )
          : null,
      valueRelatedArtifact: json['valueRelatedArtifact'] != null
          ? RelatedArtifact.fromJson(
              json['valueRelatedArtifact'] as Map<String, dynamic>,
            )
          : null,
      valueTriggerDefinition: json['valueTriggerDefinition'] != null
          ? TriggerDefinition.fromJson(
              json['valueTriggerDefinition'] as Map<String, dynamic>,
            )
          : null,
      valueUsageContext: json['valueUsageContext'] != null
          ? UsageContext.fromJson(
              json['valueUsageContext'] as Map<String, dynamic>,
            )
          : null,
      valueDosage: json['valueDosage'] != null
          ? Dosage.fromJson(
              json['valueDosage'] as Map<String, dynamic>,
            )
          : null,
      valueMeta: json['valueMeta'] != null
          ? FhirMeta.fromJson(
              json['valueMeta'] as Map<String, dynamic>,
            )
          : null,
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

  /// [valueBase64Binary]
  /// The value of the input parameter as a basic type.
  final FhirBase64Binary? valueBase64Binary;

  /// [valueBoolean]
  /// The value of the input parameter as a basic type.
  final FhirBoolean? valueBoolean;

  /// [valueCanonical]
  /// The value of the input parameter as a basic type.
  final FhirCanonical? valueCanonical;

  /// [valueCode]
  /// The value of the input parameter as a basic type.
  final FhirCode? valueCode;

  /// [valueDate]
  /// The value of the input parameter as a basic type.
  final FhirDate? valueDate;

  /// [valueDateTime]
  /// The value of the input parameter as a basic type.
  final FhirDateTime? valueDateTime;

  /// [valueDecimal]
  /// The value of the input parameter as a basic type.
  final FhirDecimal? valueDecimal;

  /// [valueId]
  /// The value of the input parameter as a basic type.
  final FhirId? valueId;

  /// [valueInstant]
  /// The value of the input parameter as a basic type.
  final FhirInstant? valueInstant;

  /// [valueInteger]
  /// The value of the input parameter as a basic type.
  final FhirInteger? valueInteger;

  /// [valueMarkdown]
  /// The value of the input parameter as a basic type.
  final FhirMarkdown? valueMarkdown;

  /// [valueOid]
  /// The value of the input parameter as a basic type.
  final FhirOid? valueOid;

  /// [valuePositiveInt]
  /// The value of the input parameter as a basic type.
  final FhirPositiveInt? valuePositiveInt;

  /// [valueString]
  /// The value of the input parameter as a basic type.
  final FhirString? valueString;

  /// [valueTime]
  /// The value of the input parameter as a basic type.
  final FhirTime? valueTime;

  /// [valueUnsignedInt]
  /// The value of the input parameter as a basic type.
  final FhirUnsignedInt? valueUnsignedInt;

  /// [valueUri]
  /// The value of the input parameter as a basic type.
  final FhirUri? valueUri;

  /// [valueUrl]
  /// The value of the input parameter as a basic type.
  final FhirUrl? valueUrl;

  /// [valueUuid]
  /// The value of the input parameter as a basic type.
  final FhirUuid? valueUuid;

  /// [valueAddress]
  /// The value of the input parameter as a basic type.
  final Address? valueAddress;

  /// [valueAge]
  /// The value of the input parameter as a basic type.
  final Age? valueAge;

  /// [valueAnnotation]
  /// The value of the input parameter as a basic type.
  final Annotation? valueAnnotation;

  /// [valueAttachment]
  /// The value of the input parameter as a basic type.
  final Attachment? valueAttachment;

  /// [valueCodeableConcept]
  /// The value of the input parameter as a basic type.
  final CodeableConcept? valueCodeableConcept;

  /// [valueCoding]
  /// The value of the input parameter as a basic type.
  final Coding? valueCoding;

  /// [valueContactPoint]
  /// The value of the input parameter as a basic type.
  final ContactPoint? valueContactPoint;

  /// [valueCount]
  /// The value of the input parameter as a basic type.
  final Count? valueCount;

  /// [valueDistance]
  /// The value of the input parameter as a basic type.
  final Distance? valueDistance;

  /// [valueDuration]
  /// The value of the input parameter as a basic type.
  final FhirDuration? valueDuration;

  /// [valueHumanName]
  /// The value of the input parameter as a basic type.
  final HumanName? valueHumanName;

  /// [valueIdentifier]
  /// The value of the input parameter as a basic type.
  final Identifier? valueIdentifier;

  /// [valueMoney]
  /// The value of the input parameter as a basic type.
  final Money? valueMoney;

  /// [valuePeriod]
  /// The value of the input parameter as a basic type.
  final Period? valuePeriod;

  /// [valueQuantity]
  /// The value of the input parameter as a basic type.
  final Quantity? valueQuantity;

  /// [valueRange]
  /// The value of the input parameter as a basic type.
  final Range? valueRange;

  /// [valueRatio]
  /// The value of the input parameter as a basic type.
  final Ratio? valueRatio;

  /// [valueReference]
  /// The value of the input parameter as a basic type.
  final Reference? valueReference;

  /// [valueSampledData]
  /// The value of the input parameter as a basic type.
  final SampledData? valueSampledData;

  /// [valueSignature]
  /// The value of the input parameter as a basic type.
  final Signature? valueSignature;

  /// [valueTiming]
  /// The value of the input parameter as a basic type.
  final Timing? valueTiming;

  /// [valueContactDetail]
  /// The value of the input parameter as a basic type.
  final ContactDetail? valueContactDetail;

  /// [valueContributor]
  /// The value of the input parameter as a basic type.
  final Contributor? valueContributor;

  /// [valueDataRequirement]
  /// The value of the input parameter as a basic type.
  final DataRequirement? valueDataRequirement;

  /// [valueExpression]
  /// The value of the input parameter as a basic type.
  final FhirExpression? valueExpression;

  /// [valueParameterDefinition]
  /// The value of the input parameter as a basic type.
  final ParameterDefinition? valueParameterDefinition;

  /// [valueRelatedArtifact]
  /// The value of the input parameter as a basic type.
  final RelatedArtifact? valueRelatedArtifact;

  /// [valueTriggerDefinition]
  /// The value of the input parameter as a basic type.
  final TriggerDefinition? valueTriggerDefinition;

  /// [valueUsageContext]
  /// The value of the input parameter as a basic type.
  final UsageContext? valueUsageContext;

  /// [valueDosage]
  /// The value of the input parameter as a basic type.
  final Dosage? valueDosage;

  /// [valueMeta]
  /// The value of the input parameter as a basic type.
  final FhirMeta? valueMeta;
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

    addField('valueBase64Binary', valueBase64Binary);
    addField('valueBoolean', valueBoolean);
    addField('valueCanonical', valueCanonical);
    addField('valueCode', valueCode);
    addField('valueDate', valueDate);
    addField('valueDateTime', valueDateTime);
    addField('valueDecimal', valueDecimal);
    addField('valueId', valueId);
    addField('valueInstant', valueInstant);
    addField('valueInteger', valueInteger);
    addField('valueMarkdown', valueMarkdown);
    addField('valueOid', valueOid);
    addField('valuePositiveInt', valuePositiveInt);
    addField('valueString', valueString);
    addField('valueTime', valueTime);
    addField('valueUnsignedInt', valueUnsignedInt);
    addField('valueUri', valueUri);
    addField('valueUrl', valueUrl);
    addField('valueUuid', valueUuid);
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

  @override
  TaskInput clone() => throw UnimplementedError();
  @override
  TaskInput copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirBase64Binary? valueBase64Binary,
    FhirBoolean? valueBoolean,
    FhirCanonical? valueCanonical,
    FhirCode? valueCode,
    FhirDate? valueDate,
    FhirDateTime? valueDateTime,
    FhirDecimal? valueDecimal,
    FhirId? valueId,
    FhirInstant? valueInstant,
    FhirInteger? valueInteger,
    FhirMarkdown? valueMarkdown,
    FhirOid? valueOid,
    FhirPositiveInt? valuePositiveInt,
    FhirString? valueString,
    FhirTime? valueTime,
    FhirUnsignedInt? valueUnsignedInt,
    FhirUri? valueUri,
    FhirUrl? valueUrl,
    FhirUuid? valueUuid,
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
      valueBoolean: valueBoolean ?? this.valueBoolean,
      valueCanonical: valueCanonical ?? this.valueCanonical,
      valueCode: valueCode ?? this.valueCode,
      valueDate: valueDate ?? this.valueDate,
      valueDateTime: valueDateTime ?? this.valueDateTime,
      valueDecimal: valueDecimal ?? this.valueDecimal,
      valueId: valueId ?? this.valueId,
      valueInstant: valueInstant ?? this.valueInstant,
      valueInteger: valueInteger ?? this.valueInteger,
      valueMarkdown: valueMarkdown ?? this.valueMarkdown,
      valueOid: valueOid ?? this.valueOid,
      valuePositiveInt: valuePositiveInt ?? this.valuePositiveInt,
      valueString: valueString ?? this.valueString,
      valueTime: valueTime ?? this.valueTime,
      valueUnsignedInt: valueUnsignedInt ?? this.valueUnsignedInt,
      valueUri: valueUri ?? this.valueUri,
      valueUrl: valueUrl ?? this.valueUrl,
      valueUuid: valueUuid ?? this.valueUuid,
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
}

/// [TaskOutput]
/// Outputs produced by the Task.
class TaskOutput extends BackboneElement {
  /// Primary constructor for
  /// [TaskOutput]

  TaskOutput({
    super.id,
    super.extension_,
    super.modifierExtension,
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TaskOutput.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return TaskOutput(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      type: CodeableConcept.fromJson(
        json['type'] as Map<String, dynamic>,
      ),
      valueBase64Binary: parseField<FhirBase64Binary>(
        json['valueBase64Binary'],
        json['_valueBase64Binary'],
        FhirBase64Binary.fromJson,
      ),
      valueBoolean: parseField<FhirBoolean>(
        json['valueBoolean'],
        json['_valueBoolean'],
        FhirBoolean.fromJson,
      ),
      valueCanonical: parseField<FhirCanonical>(
        json['valueCanonical'],
        json['_valueCanonical'],
        FhirCanonical.fromJson,
      ),
      valueCode: parseField<FhirCode>(
        json['valueCode'],
        json['_valueCode'],
        FhirCode.fromJson,
      ),
      valueDate: parseField<FhirDate>(
        json['valueDate'],
        json['_valueDate'],
        FhirDate.fromJson,
      ),
      valueDateTime: parseField<FhirDateTime>(
        json['valueDateTime'],
        json['_valueDateTime'],
        FhirDateTime.fromJson,
      ),
      valueDecimal: parseField<FhirDecimal>(
        json['valueDecimal'],
        json['_valueDecimal'],
        FhirDecimal.fromJson,
      ),
      valueId: parseField<FhirId>(
        json['valueId'],
        json['_valueId'],
        FhirId.fromJson,
      ),
      valueInstant: parseField<FhirInstant>(
        json['valueInstant'],
        json['_valueInstant'],
        FhirInstant.fromJson,
      ),
      valueInteger: parseField<FhirInteger>(
        json['valueInteger'],
        json['_valueInteger'],
        FhirInteger.fromJson,
      ),
      valueMarkdown: parseField<FhirMarkdown>(
        json['valueMarkdown'],
        json['_valueMarkdown'],
        FhirMarkdown.fromJson,
      ),
      valueOid: parseField<FhirOid>(
        json['valueOid'],
        json['_valueOid'],
        FhirOid.fromJson,
      ),
      valuePositiveInt: parseField<FhirPositiveInt>(
        json['valuePositiveInt'],
        json['_valuePositiveInt'],
        FhirPositiveInt.fromJson,
      ),
      valueString: parseField<FhirString>(
        json['valueString'],
        json['_valueString'],
        FhirString.fromJson,
      ),
      valueTime: parseField<FhirTime>(
        json['valueTime'],
        json['_valueTime'],
        FhirTime.fromJson,
      ),
      valueUnsignedInt: parseField<FhirUnsignedInt>(
        json['valueUnsignedInt'],
        json['_valueUnsignedInt'],
        FhirUnsignedInt.fromJson,
      ),
      valueUri: parseField<FhirUri>(
        json['valueUri'],
        json['_valueUri'],
        FhirUri.fromJson,
      ),
      valueUrl: parseField<FhirUrl>(
        json['valueUrl'],
        json['_valueUrl'],
        FhirUrl.fromJson,
      ),
      valueUuid: parseField<FhirUuid>(
        json['valueUuid'],
        json['_valueUuid'],
        FhirUuid.fromJson,
      ),
      valueAddress: json['valueAddress'] != null
          ? Address.fromJson(
              json['valueAddress'] as Map<String, dynamic>,
            )
          : null,
      valueAge: json['valueAge'] != null
          ? Age.fromJson(
              json['valueAge'] as Map<String, dynamic>,
            )
          : null,
      valueAnnotation: json['valueAnnotation'] != null
          ? Annotation.fromJson(
              json['valueAnnotation'] as Map<String, dynamic>,
            )
          : null,
      valueAttachment: json['valueAttachment'] != null
          ? Attachment.fromJson(
              json['valueAttachment'] as Map<String, dynamic>,
            )
          : null,
      valueCodeableConcept: json['valueCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['valueCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      valueCoding: json['valueCoding'] != null
          ? Coding.fromJson(
              json['valueCoding'] as Map<String, dynamic>,
            )
          : null,
      valueContactPoint: json['valueContactPoint'] != null
          ? ContactPoint.fromJson(
              json['valueContactPoint'] as Map<String, dynamic>,
            )
          : null,
      valueCount: json['valueCount'] != null
          ? Count.fromJson(
              json['valueCount'] as Map<String, dynamic>,
            )
          : null,
      valueDistance: json['valueDistance'] != null
          ? Distance.fromJson(
              json['valueDistance'] as Map<String, dynamic>,
            )
          : null,
      valueDuration: json['valueDuration'] != null
          ? FhirDuration.fromJson(
              json['valueDuration'] as Map<String, dynamic>,
            )
          : null,
      valueHumanName: json['valueHumanName'] != null
          ? HumanName.fromJson(
              json['valueHumanName'] as Map<String, dynamic>,
            )
          : null,
      valueIdentifier: json['valueIdentifier'] != null
          ? Identifier.fromJson(
              json['valueIdentifier'] as Map<String, dynamic>,
            )
          : null,
      valueMoney: json['valueMoney'] != null
          ? Money.fromJson(
              json['valueMoney'] as Map<String, dynamic>,
            )
          : null,
      valuePeriod: json['valuePeriod'] != null
          ? Period.fromJson(
              json['valuePeriod'] as Map<String, dynamic>,
            )
          : null,
      valueQuantity: json['valueQuantity'] != null
          ? Quantity.fromJson(
              json['valueQuantity'] as Map<String, dynamic>,
            )
          : null,
      valueRange: json['valueRange'] != null
          ? Range.fromJson(
              json['valueRange'] as Map<String, dynamic>,
            )
          : null,
      valueRatio: json['valueRatio'] != null
          ? Ratio.fromJson(
              json['valueRatio'] as Map<String, dynamic>,
            )
          : null,
      valueReference: json['valueReference'] != null
          ? Reference.fromJson(
              json['valueReference'] as Map<String, dynamic>,
            )
          : null,
      valueSampledData: json['valueSampledData'] != null
          ? SampledData.fromJson(
              json['valueSampledData'] as Map<String, dynamic>,
            )
          : null,
      valueSignature: json['valueSignature'] != null
          ? Signature.fromJson(
              json['valueSignature'] as Map<String, dynamic>,
            )
          : null,
      valueTiming: json['valueTiming'] != null
          ? Timing.fromJson(
              json['valueTiming'] as Map<String, dynamic>,
            )
          : null,
      valueContactDetail: json['valueContactDetail'] != null
          ? ContactDetail.fromJson(
              json['valueContactDetail'] as Map<String, dynamic>,
            )
          : null,
      valueContributor: json['valueContributor'] != null
          ? Contributor.fromJson(
              json['valueContributor'] as Map<String, dynamic>,
            )
          : null,
      valueDataRequirement: json['valueDataRequirement'] != null
          ? DataRequirement.fromJson(
              json['valueDataRequirement'] as Map<String, dynamic>,
            )
          : null,
      valueExpression: json['valueExpression'] != null
          ? FhirExpression.fromJson(
              json['valueExpression'] as Map<String, dynamic>,
            )
          : null,
      valueParameterDefinition: json['valueParameterDefinition'] != null
          ? ParameterDefinition.fromJson(
              json['valueParameterDefinition'] as Map<String, dynamic>,
            )
          : null,
      valueRelatedArtifact: json['valueRelatedArtifact'] != null
          ? RelatedArtifact.fromJson(
              json['valueRelatedArtifact'] as Map<String, dynamic>,
            )
          : null,
      valueTriggerDefinition: json['valueTriggerDefinition'] != null
          ? TriggerDefinition.fromJson(
              json['valueTriggerDefinition'] as Map<String, dynamic>,
            )
          : null,
      valueUsageContext: json['valueUsageContext'] != null
          ? UsageContext.fromJson(
              json['valueUsageContext'] as Map<String, dynamic>,
            )
          : null,
      valueDosage: json['valueDosage'] != null
          ? Dosage.fromJson(
              json['valueDosage'] as Map<String, dynamic>,
            )
          : null,
      valueMeta: json['valueMeta'] != null
          ? FhirMeta.fromJson(
              json['valueMeta'] as Map<String, dynamic>,
            )
          : null,
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

  /// [valueBase64Binary]
  /// The value of the Output parameter as a basic type.
  final FhirBase64Binary? valueBase64Binary;

  /// [valueBoolean]
  /// The value of the Output parameter as a basic type.
  final FhirBoolean? valueBoolean;

  /// [valueCanonical]
  /// The value of the Output parameter as a basic type.
  final FhirCanonical? valueCanonical;

  /// [valueCode]
  /// The value of the Output parameter as a basic type.
  final FhirCode? valueCode;

  /// [valueDate]
  /// The value of the Output parameter as a basic type.
  final FhirDate? valueDate;

  /// [valueDateTime]
  /// The value of the Output parameter as a basic type.
  final FhirDateTime? valueDateTime;

  /// [valueDecimal]
  /// The value of the Output parameter as a basic type.
  final FhirDecimal? valueDecimal;

  /// [valueId]
  /// The value of the Output parameter as a basic type.
  final FhirId? valueId;

  /// [valueInstant]
  /// The value of the Output parameter as a basic type.
  final FhirInstant? valueInstant;

  /// [valueInteger]
  /// The value of the Output parameter as a basic type.
  final FhirInteger? valueInteger;

  /// [valueMarkdown]
  /// The value of the Output parameter as a basic type.
  final FhirMarkdown? valueMarkdown;

  /// [valueOid]
  /// The value of the Output parameter as a basic type.
  final FhirOid? valueOid;

  /// [valuePositiveInt]
  /// The value of the Output parameter as a basic type.
  final FhirPositiveInt? valuePositiveInt;

  /// [valueString]
  /// The value of the Output parameter as a basic type.
  final FhirString? valueString;

  /// [valueTime]
  /// The value of the Output parameter as a basic type.
  final FhirTime? valueTime;

  /// [valueUnsignedInt]
  /// The value of the Output parameter as a basic type.
  final FhirUnsignedInt? valueUnsignedInt;

  /// [valueUri]
  /// The value of the Output parameter as a basic type.
  final FhirUri? valueUri;

  /// [valueUrl]
  /// The value of the Output parameter as a basic type.
  final FhirUrl? valueUrl;

  /// [valueUuid]
  /// The value of the Output parameter as a basic type.
  final FhirUuid? valueUuid;

  /// [valueAddress]
  /// The value of the Output parameter as a basic type.
  final Address? valueAddress;

  /// [valueAge]
  /// The value of the Output parameter as a basic type.
  final Age? valueAge;

  /// [valueAnnotation]
  /// The value of the Output parameter as a basic type.
  final Annotation? valueAnnotation;

  /// [valueAttachment]
  /// The value of the Output parameter as a basic type.
  final Attachment? valueAttachment;

  /// [valueCodeableConcept]
  /// The value of the Output parameter as a basic type.
  final CodeableConcept? valueCodeableConcept;

  /// [valueCoding]
  /// The value of the Output parameter as a basic type.
  final Coding? valueCoding;

  /// [valueContactPoint]
  /// The value of the Output parameter as a basic type.
  final ContactPoint? valueContactPoint;

  /// [valueCount]
  /// The value of the Output parameter as a basic type.
  final Count? valueCount;

  /// [valueDistance]
  /// The value of the Output parameter as a basic type.
  final Distance? valueDistance;

  /// [valueDuration]
  /// The value of the Output parameter as a basic type.
  final FhirDuration? valueDuration;

  /// [valueHumanName]
  /// The value of the Output parameter as a basic type.
  final HumanName? valueHumanName;

  /// [valueIdentifier]
  /// The value of the Output parameter as a basic type.
  final Identifier? valueIdentifier;

  /// [valueMoney]
  /// The value of the Output parameter as a basic type.
  final Money? valueMoney;

  /// [valuePeriod]
  /// The value of the Output parameter as a basic type.
  final Period? valuePeriod;

  /// [valueQuantity]
  /// The value of the Output parameter as a basic type.
  final Quantity? valueQuantity;

  /// [valueRange]
  /// The value of the Output parameter as a basic type.
  final Range? valueRange;

  /// [valueRatio]
  /// The value of the Output parameter as a basic type.
  final Ratio? valueRatio;

  /// [valueReference]
  /// The value of the Output parameter as a basic type.
  final Reference? valueReference;

  /// [valueSampledData]
  /// The value of the Output parameter as a basic type.
  final SampledData? valueSampledData;

  /// [valueSignature]
  /// The value of the Output parameter as a basic type.
  final Signature? valueSignature;

  /// [valueTiming]
  /// The value of the Output parameter as a basic type.
  final Timing? valueTiming;

  /// [valueContactDetail]
  /// The value of the Output parameter as a basic type.
  final ContactDetail? valueContactDetail;

  /// [valueContributor]
  /// The value of the Output parameter as a basic type.
  final Contributor? valueContributor;

  /// [valueDataRequirement]
  /// The value of the Output parameter as a basic type.
  final DataRequirement? valueDataRequirement;

  /// [valueExpression]
  /// The value of the Output parameter as a basic type.
  final FhirExpression? valueExpression;

  /// [valueParameterDefinition]
  /// The value of the Output parameter as a basic type.
  final ParameterDefinition? valueParameterDefinition;

  /// [valueRelatedArtifact]
  /// The value of the Output parameter as a basic type.
  final RelatedArtifact? valueRelatedArtifact;

  /// [valueTriggerDefinition]
  /// The value of the Output parameter as a basic type.
  final TriggerDefinition? valueTriggerDefinition;

  /// [valueUsageContext]
  /// The value of the Output parameter as a basic type.
  final UsageContext? valueUsageContext;

  /// [valueDosage]
  /// The value of the Output parameter as a basic type.
  final Dosage? valueDosage;

  /// [valueMeta]
  /// The value of the Output parameter as a basic type.
  final FhirMeta? valueMeta;
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

    addField('valueBase64Binary', valueBase64Binary);
    addField('valueBoolean', valueBoolean);
    addField('valueCanonical', valueCanonical);
    addField('valueCode', valueCode);
    addField('valueDate', valueDate);
    addField('valueDateTime', valueDateTime);
    addField('valueDecimal', valueDecimal);
    addField('valueId', valueId);
    addField('valueInstant', valueInstant);
    addField('valueInteger', valueInteger);
    addField('valueMarkdown', valueMarkdown);
    addField('valueOid', valueOid);
    addField('valuePositiveInt', valuePositiveInt);
    addField('valueString', valueString);
    addField('valueTime', valueTime);
    addField('valueUnsignedInt', valueUnsignedInt);
    addField('valueUri', valueUri);
    addField('valueUrl', valueUrl);
    addField('valueUuid', valueUuid);
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

  @override
  TaskOutput clone() => throw UnimplementedError();
  @override
  TaskOutput copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirBase64Binary? valueBase64Binary,
    FhirBoolean? valueBoolean,
    FhirCanonical? valueCanonical,
    FhirCode? valueCode,
    FhirDate? valueDate,
    FhirDateTime? valueDateTime,
    FhirDecimal? valueDecimal,
    FhirId? valueId,
    FhirInstant? valueInstant,
    FhirInteger? valueInteger,
    FhirMarkdown? valueMarkdown,
    FhirOid? valueOid,
    FhirPositiveInt? valuePositiveInt,
    FhirString? valueString,
    FhirTime? valueTime,
    FhirUnsignedInt? valueUnsignedInt,
    FhirUri? valueUri,
    FhirUrl? valueUrl,
    FhirUuid? valueUuid,
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
      valueBoolean: valueBoolean ?? this.valueBoolean,
      valueCanonical: valueCanonical ?? this.valueCanonical,
      valueCode: valueCode ?? this.valueCode,
      valueDate: valueDate ?? this.valueDate,
      valueDateTime: valueDateTime ?? this.valueDateTime,
      valueDecimal: valueDecimal ?? this.valueDecimal,
      valueId: valueId ?? this.valueId,
      valueInstant: valueInstant ?? this.valueInstant,
      valueInteger: valueInteger ?? this.valueInteger,
      valueMarkdown: valueMarkdown ?? this.valueMarkdown,
      valueOid: valueOid ?? this.valueOid,
      valuePositiveInt: valuePositiveInt ?? this.valuePositiveInt,
      valueString: valueString ?? this.valueString,
      valueTime: valueTime ?? this.valueTime,
      valueUnsignedInt: valueUnsignedInt ?? this.valueUnsignedInt,
      valueUri: valueUri ?? this.valueUri,
      valueUrl: valueUrl ?? this.valueUrl,
      valueUuid: valueUuid ?? this.valueUuid,
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
}
