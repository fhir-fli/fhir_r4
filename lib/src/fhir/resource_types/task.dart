import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Task]
/// A task to be performed.
class Task extends DomainResource {
  /// Primary constructor for [Task]

  Task({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
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
  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson({
              'value': json['implicitRules'],
              '_value': json['_implicitRules'],
            })
          : null,
      language: json['language'] != null
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
      instantiatesCanonical: json['instantiatesCanonical'] != null
          ? FhirCanonical.fromJson({
              'value': json['instantiatesCanonical'],
              '_value': json['_instantiatesCanonical'],
            })
          : null,
      instantiatesUri: json['instantiatesUri'] != null
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
      priority: json['priority'] != null
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
      description: json['description'] != null
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
      authoredOn: json['authoredOn'] != null
          ? FhirDateTime.fromJson({
              'value': json['authoredOn'],
              '_value': json['_authoredOn'],
            })
          : null,
      lastModified: json['lastModified'] != null
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

  /// Deserialize [Task] from a [String]
  /// or [YamlMap] object
  factory Task.fromYaml(dynamic yaml) => yaml is String
      ? Task.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? Task.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('Task cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [Task]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Task.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (meta != null) {
      final fieldJson1 = meta!.toJson();
      json['meta'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_meta'] = fieldJson1['_value'];
      }
    }

    if (implicitRules != null) {
      final fieldJson2 = implicitRules!.toJson();
      json['implicitRules'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_implicitRules'] = fieldJson2['_value'];
      }
    }

    if (language != null) {
      final fieldJson3 = language!.toJson();
      json['language'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_language'] = fieldJson3['_value'];
      }
    }

    if (text != null) {
      final fieldJson4 = text!.toJson();
      json['text'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_text'] = fieldJson4['_value'];
      }
    }

    if (contained != null && contained!.isNotEmpty) {
      final fieldJson5 = contained!.map((e) => e.toJson()).toList();
      json['contained'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_contained'] = fieldJson5.map((e) => e['_value']).toList();
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson6 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson6.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson7 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson7.map((e) => e['value']).toList();
      if (fieldJson7.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson7.map((e) => e['_value']).toList();
      }
    }

    if (identifier != null && identifier!.isNotEmpty) {
      final fieldJson8 = identifier!.map((e) => e.toJson()).toList();
      json['identifier'] = fieldJson8.map((e) => e['value']).toList();
      if (fieldJson8.any((e) => e['_value'] != null)) {
        json['_identifier'] = fieldJson8.map((e) => e['_value']).toList();
      }
    }

    if (instantiatesCanonical != null) {
      final fieldJson9 = instantiatesCanonical!.toJson();
      json['instantiatesCanonical'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_instantiatesCanonical'] = fieldJson9['_value'];
      }
    }

    if (instantiatesUri != null) {
      final fieldJson10 = instantiatesUri!.toJson();
      json['instantiatesUri'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_instantiatesUri'] = fieldJson10['_value'];
      }
    }

    if (basedOn != null && basedOn!.isNotEmpty) {
      final fieldJson11 = basedOn!.map((e) => e.toJson()).toList();
      json['basedOn'] = fieldJson11.map((e) => e['value']).toList();
      if (fieldJson11.any((e) => e['_value'] != null)) {
        json['_basedOn'] = fieldJson11.map((e) => e['_value']).toList();
      }
    }

    if (groupIdentifier != null) {
      final fieldJson12 = groupIdentifier!.toJson();
      json['groupIdentifier'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_groupIdentifier'] = fieldJson12['_value'];
      }
    }

    if (partOf != null && partOf!.isNotEmpty) {
      final fieldJson13 = partOf!.map((e) => e.toJson()).toList();
      json['partOf'] = fieldJson13.map((e) => e['value']).toList();
      if (fieldJson13.any((e) => e['_value'] != null)) {
        json['_partOf'] = fieldJson13.map((e) => e['_value']).toList();
      }
    }

    final fieldJson14 = status.toJson();
    json['status'] = fieldJson14['value'];
    if (fieldJson14['_value'] != null) {
      json['_status'] = fieldJson14['_value'];
    }

    if (statusReason != null) {
      final fieldJson15 = statusReason!.toJson();
      json['statusReason'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_statusReason'] = fieldJson15['_value'];
      }
    }

    if (businessStatus != null) {
      final fieldJson16 = businessStatus!.toJson();
      json['businessStatus'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_businessStatus'] = fieldJson16['_value'];
      }
    }

    final fieldJson17 = intent.toJson();
    json['intent'] = fieldJson17['value'];
    if (fieldJson17['_value'] != null) {
      json['_intent'] = fieldJson17['_value'];
    }

    if (priority != null) {
      final fieldJson18 = priority!.toJson();
      json['priority'] = fieldJson18['value'];
      if (fieldJson18['_value'] != null) {
        json['_priority'] = fieldJson18['_value'];
      }
    }

    if (code != null) {
      final fieldJson19 = code!.toJson();
      json['code'] = fieldJson19['value'];
      if (fieldJson19['_value'] != null) {
        json['_code'] = fieldJson19['_value'];
      }
    }

    if (description != null) {
      final fieldJson20 = description!.toJson();
      json['description'] = fieldJson20['value'];
      if (fieldJson20['_value'] != null) {
        json['_description'] = fieldJson20['_value'];
      }
    }

    if (focus != null) {
      final fieldJson21 = focus!.toJson();
      json['focus'] = fieldJson21['value'];
      if (fieldJson21['_value'] != null) {
        json['_focus'] = fieldJson21['_value'];
      }
    }

    if (for_ != null) {
      final fieldJson22 = for_!.toJson();
      json['for'] = fieldJson22['value'];
      if (fieldJson22['_value'] != null) {
        json['_for'] = fieldJson22['_value'];
      }
    }

    if (encounter != null) {
      final fieldJson23 = encounter!.toJson();
      json['encounter'] = fieldJson23['value'];
      if (fieldJson23['_value'] != null) {
        json['_encounter'] = fieldJson23['_value'];
      }
    }

    if (executionPeriod != null) {
      final fieldJson24 = executionPeriod!.toJson();
      json['executionPeriod'] = fieldJson24['value'];
      if (fieldJson24['_value'] != null) {
        json['_executionPeriod'] = fieldJson24['_value'];
      }
    }

    if (authoredOn != null) {
      final fieldJson25 = authoredOn!.toJson();
      json['authoredOn'] = fieldJson25['value'];
      if (fieldJson25['_value'] != null) {
        json['_authoredOn'] = fieldJson25['_value'];
      }
    }

    if (lastModified != null) {
      final fieldJson26 = lastModified!.toJson();
      json['lastModified'] = fieldJson26['value'];
      if (fieldJson26['_value'] != null) {
        json['_lastModified'] = fieldJson26['_value'];
      }
    }

    if (requester != null) {
      final fieldJson27 = requester!.toJson();
      json['requester'] = fieldJson27['value'];
      if (fieldJson27['_value'] != null) {
        json['_requester'] = fieldJson27['_value'];
      }
    }

    if (performerType != null && performerType!.isNotEmpty) {
      final fieldJson28 = performerType!.map((e) => e.toJson()).toList();
      json['performerType'] = fieldJson28.map((e) => e['value']).toList();
      if (fieldJson28.any((e) => e['_value'] != null)) {
        json['_performerType'] = fieldJson28.map((e) => e['_value']).toList();
      }
    }

    if (owner != null) {
      final fieldJson29 = owner!.toJson();
      json['owner'] = fieldJson29['value'];
      if (fieldJson29['_value'] != null) {
        json['_owner'] = fieldJson29['_value'];
      }
    }

    if (location != null) {
      final fieldJson30 = location!.toJson();
      json['location'] = fieldJson30['value'];
      if (fieldJson30['_value'] != null) {
        json['_location'] = fieldJson30['_value'];
      }
    }

    if (reasonCode != null) {
      final fieldJson31 = reasonCode!.toJson();
      json['reasonCode'] = fieldJson31['value'];
      if (fieldJson31['_value'] != null) {
        json['_reasonCode'] = fieldJson31['_value'];
      }
    }

    if (reasonReference != null) {
      final fieldJson32 = reasonReference!.toJson();
      json['reasonReference'] = fieldJson32['value'];
      if (fieldJson32['_value'] != null) {
        json['_reasonReference'] = fieldJson32['_value'];
      }
    }

    if (insurance != null && insurance!.isNotEmpty) {
      final fieldJson33 = insurance!.map((e) => e.toJson()).toList();
      json['insurance'] = fieldJson33.map((e) => e['value']).toList();
      if (fieldJson33.any((e) => e['_value'] != null)) {
        json['_insurance'] = fieldJson33.map((e) => e['_value']).toList();
      }
    }

    if (note != null && note!.isNotEmpty) {
      final fieldJson34 = note!.map((e) => e.toJson()).toList();
      json['note'] = fieldJson34.map((e) => e['value']).toList();
      if (fieldJson34.any((e) => e['_value'] != null)) {
        json['_note'] = fieldJson34.map((e) => e['_value']).toList();
      }
    }

    if (relevantHistory != null && relevantHistory!.isNotEmpty) {
      final fieldJson35 = relevantHistory!.map((e) => e.toJson()).toList();
      json['relevantHistory'] = fieldJson35.map((e) => e['value']).toList();
      if (fieldJson35.any((e) => e['_value'] != null)) {
        json['_relevantHistory'] = fieldJson35.map((e) => e['_value']).toList();
      }
    }

    if (restriction != null) {
      final fieldJson36 = restriction!.toJson();
      json['restriction'] = fieldJson36['value'];
      if (fieldJson36['_value'] != null) {
        json['_restriction'] = fieldJson36['_value'];
      }
    }

    if (input != null && input!.isNotEmpty) {
      final fieldJson37 = input!.map((e) => e.toJson()).toList();
      json['input'] = fieldJson37.map((e) => e['value']).toList();
      if (fieldJson37.any((e) => e['_value'] != null)) {
        json['_input'] = fieldJson37.map((e) => e['_value']).toList();
      }
    }

    if (output != null && output!.isNotEmpty) {
      final fieldJson38 = output!.map((e) => e.toJson()).toList();
      json['output'] = fieldJson38.map((e) => e['value']).toList();
      if (fieldJson38.any((e) => e['_value'] != null)) {
        json['_output'] = fieldJson38.map((e) => e['_value']).toList();
      }
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
  /// Primary constructor for [TaskRestriction]

  TaskRestriction({
    super.id,
    this.extension_,
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
  factory TaskRestriction.fromJson(Map<String, dynamic> json) {
    return TaskRestriction(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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
      repetitions: json['repetitions'] != null
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

  /// Deserialize [TaskRestriction] from a [String]
  /// or [YamlMap] object
  factory TaskRestriction.fromYaml(dynamic yaml) => yaml is String
      ? TaskRestriction.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? TaskRestriction.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('TaskRestriction cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [TaskRestriction]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TaskRestriction.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (repetitions != null) {
      final fieldJson3 = repetitions!.toJson();
      json['repetitions'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_repetitions'] = fieldJson3['_value'];
      }
    }

    if (period != null) {
      final fieldJson4 = period!.toJson();
      json['period'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_period'] = fieldJson4['_value'];
      }
    }

    if (recipient != null && recipient!.isNotEmpty) {
      final fieldJson5 = recipient!.map((e) => e.toJson()).toList();
      json['recipient'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_recipient'] = fieldJson5.map((e) => e['_value']).toList();
      }
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
  /// Primary constructor for [TaskInput]

  TaskInput({
    super.id,
    this.extension_,
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
  factory TaskInput.fromJson(Map<String, dynamic> json) {
    return TaskInput(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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
      valueBase64Binary: json['valueBase64Binary'] != null
          ? FhirBase64Binary.fromJson({
              'value': json['valueBase64Binary'],
              '_value': json['_valueBase64Binary'],
            })
          : null,
      valueBoolean: json['valueBoolean'] != null
          ? FhirBoolean.fromJson({
              'value': json['valueBoolean'],
              '_value': json['_valueBoolean'],
            })
          : null,
      valueCanonical: json['valueCanonical'] != null
          ? FhirCanonical.fromJson({
              'value': json['valueCanonical'],
              '_value': json['_valueCanonical'],
            })
          : null,
      valueCode: json['valueCode'] != null
          ? FhirCode.fromJson({
              'value': json['valueCode'],
              '_value': json['_valueCode'],
            })
          : null,
      valueDate: json['valueDate'] != null
          ? FhirDate.fromJson({
              'value': json['valueDate'],
              '_value': json['_valueDate'],
            })
          : null,
      valueDateTime: json['valueDateTime'] != null
          ? FhirDateTime.fromJson({
              'value': json['valueDateTime'],
              '_value': json['_valueDateTime'],
            })
          : null,
      valueDecimal: json['valueDecimal'] != null
          ? FhirDecimal.fromJson({
              'value': json['valueDecimal'],
              '_value': json['_valueDecimal'],
            })
          : null,
      valueId: json['valueId'] != null
          ? FhirId.fromJson({
              'value': json['valueId'],
              '_value': json['_valueId'],
            })
          : null,
      valueInstant: json['valueInstant'] != null
          ? FhirInstant.fromJson({
              'value': json['valueInstant'],
              '_value': json['_valueInstant'],
            })
          : null,
      valueInteger: json['valueInteger'] != null
          ? FhirInteger.fromJson({
              'value': json['valueInteger'],
              '_value': json['_valueInteger'],
            })
          : null,
      valueMarkdown: json['valueMarkdown'] != null
          ? FhirMarkdown.fromJson({
              'value': json['valueMarkdown'],
              '_value': json['_valueMarkdown'],
            })
          : null,
      valueOid: json['valueOid'] != null
          ? FhirOid.fromJson({
              'value': json['valueOid'],
              '_value': json['_valueOid'],
            })
          : null,
      valuePositiveInt: json['valuePositiveInt'] != null
          ? FhirPositiveInt.fromJson({
              'value': json['valuePositiveInt'],
              '_value': json['_valuePositiveInt'],
            })
          : null,
      valueString: json['valueString'] != null
          ? FhirString.fromJson({
              'value': json['valueString'],
              '_value': json['_valueString'],
            })
          : null,
      valueTime: json['valueTime'] != null
          ? FhirTime.fromJson({
              'value': json['valueTime'],
              '_value': json['_valueTime'],
            })
          : null,
      valueUnsignedInt: json['valueUnsignedInt'] != null
          ? FhirUnsignedInt.fromJson({
              'value': json['valueUnsignedInt'],
              '_value': json['_valueUnsignedInt'],
            })
          : null,
      valueUri: json['valueUri'] != null
          ? FhirUri.fromJson({
              'value': json['valueUri'],
              '_value': json['_valueUri'],
            })
          : null,
      valueUrl: json['valueUrl'] != null
          ? FhirUrl.fromJson({
              'value': json['valueUrl'],
              '_value': json['_valueUrl'],
            })
          : null,
      valueUuid: json['valueUuid'] != null
          ? FhirUuid.fromJson({
              'value': json['valueUuid'],
              '_value': json['_valueUuid'],
            })
          : null,
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

  /// Deserialize [TaskInput] from a [String]
  /// or [YamlMap] object
  factory TaskInput.fromYaml(dynamic yaml) => yaml is String
      ? TaskInput.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? TaskInput.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('TaskInput cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [TaskInput]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TaskInput.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    final fieldJson3 = type.toJson();
    json['type'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_type'] = fieldJson3['_value'];
    }

    if (valueBase64Binary != null) {
      final fieldJson4 = valueBase64Binary!.toJson();
      json['valueBase64Binary'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_valueBase64Binary'] = fieldJson4['_value'];
      }
    }

    if (valueBoolean != null) {
      final fieldJson5 = valueBoolean!.toJson();
      json['valueBoolean'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_valueBoolean'] = fieldJson5['_value'];
      }
    }

    if (valueCanonical != null) {
      final fieldJson6 = valueCanonical!.toJson();
      json['valueCanonical'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_valueCanonical'] = fieldJson6['_value'];
      }
    }

    if (valueCode != null) {
      final fieldJson7 = valueCode!.toJson();
      json['valueCode'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_valueCode'] = fieldJson7['_value'];
      }
    }

    if (valueDate != null) {
      final fieldJson8 = valueDate!.toJson();
      json['valueDate'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_valueDate'] = fieldJson8['_value'];
      }
    }

    if (valueDateTime != null) {
      final fieldJson9 = valueDateTime!.toJson();
      json['valueDateTime'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_valueDateTime'] = fieldJson9['_value'];
      }
    }

    if (valueDecimal != null) {
      final fieldJson10 = valueDecimal!.toJson();
      json['valueDecimal'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_valueDecimal'] = fieldJson10['_value'];
      }
    }

    if (valueId != null) {
      final fieldJson11 = valueId!.toJson();
      json['valueId'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_valueId'] = fieldJson11['_value'];
      }
    }

    if (valueInstant != null) {
      final fieldJson12 = valueInstant!.toJson();
      json['valueInstant'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_valueInstant'] = fieldJson12['_value'];
      }
    }

    if (valueInteger != null) {
      final fieldJson13 = valueInteger!.toJson();
      json['valueInteger'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_valueInteger'] = fieldJson13['_value'];
      }
    }

    if (valueMarkdown != null) {
      final fieldJson14 = valueMarkdown!.toJson();
      json['valueMarkdown'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_valueMarkdown'] = fieldJson14['_value'];
      }
    }

    if (valueOid != null) {
      final fieldJson15 = valueOid!.toJson();
      json['valueOid'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_valueOid'] = fieldJson15['_value'];
      }
    }

    if (valuePositiveInt != null) {
      final fieldJson16 = valuePositiveInt!.toJson();
      json['valuePositiveInt'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_valuePositiveInt'] = fieldJson16['_value'];
      }
    }

    if (valueString != null) {
      final fieldJson17 = valueString!.toJson();
      json['valueString'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_valueString'] = fieldJson17['_value'];
      }
    }

    if (valueTime != null) {
      final fieldJson18 = valueTime!.toJson();
      json['valueTime'] = fieldJson18['value'];
      if (fieldJson18['_value'] != null) {
        json['_valueTime'] = fieldJson18['_value'];
      }
    }

    if (valueUnsignedInt != null) {
      final fieldJson19 = valueUnsignedInt!.toJson();
      json['valueUnsignedInt'] = fieldJson19['value'];
      if (fieldJson19['_value'] != null) {
        json['_valueUnsignedInt'] = fieldJson19['_value'];
      }
    }

    if (valueUri != null) {
      final fieldJson20 = valueUri!.toJson();
      json['valueUri'] = fieldJson20['value'];
      if (fieldJson20['_value'] != null) {
        json['_valueUri'] = fieldJson20['_value'];
      }
    }

    if (valueUrl != null) {
      final fieldJson21 = valueUrl!.toJson();
      json['valueUrl'] = fieldJson21['value'];
      if (fieldJson21['_value'] != null) {
        json['_valueUrl'] = fieldJson21['_value'];
      }
    }

    if (valueUuid != null) {
      final fieldJson22 = valueUuid!.toJson();
      json['valueUuid'] = fieldJson22['value'];
      if (fieldJson22['_value'] != null) {
        json['_valueUuid'] = fieldJson22['_value'];
      }
    }

    if (valueAddress != null) {
      final fieldJson23 = valueAddress!.toJson();
      json['valueAddress'] = fieldJson23['value'];
      if (fieldJson23['_value'] != null) {
        json['_valueAddress'] = fieldJson23['_value'];
      }
    }

    if (valueAge != null) {
      final fieldJson24 = valueAge!.toJson();
      json['valueAge'] = fieldJson24['value'];
      if (fieldJson24['_value'] != null) {
        json['_valueAge'] = fieldJson24['_value'];
      }
    }

    if (valueAnnotation != null) {
      final fieldJson25 = valueAnnotation!.toJson();
      json['valueAnnotation'] = fieldJson25['value'];
      if (fieldJson25['_value'] != null) {
        json['_valueAnnotation'] = fieldJson25['_value'];
      }
    }

    if (valueAttachment != null) {
      final fieldJson26 = valueAttachment!.toJson();
      json['valueAttachment'] = fieldJson26['value'];
      if (fieldJson26['_value'] != null) {
        json['_valueAttachment'] = fieldJson26['_value'];
      }
    }

    if (valueCodeableConcept != null) {
      final fieldJson27 = valueCodeableConcept!.toJson();
      json['valueCodeableConcept'] = fieldJson27['value'];
      if (fieldJson27['_value'] != null) {
        json['_valueCodeableConcept'] = fieldJson27['_value'];
      }
    }

    if (valueCoding != null) {
      final fieldJson28 = valueCoding!.toJson();
      json['valueCoding'] = fieldJson28['value'];
      if (fieldJson28['_value'] != null) {
        json['_valueCoding'] = fieldJson28['_value'];
      }
    }

    if (valueContactPoint != null) {
      final fieldJson29 = valueContactPoint!.toJson();
      json['valueContactPoint'] = fieldJson29['value'];
      if (fieldJson29['_value'] != null) {
        json['_valueContactPoint'] = fieldJson29['_value'];
      }
    }

    if (valueCount != null) {
      final fieldJson30 = valueCount!.toJson();
      json['valueCount'] = fieldJson30['value'];
      if (fieldJson30['_value'] != null) {
        json['_valueCount'] = fieldJson30['_value'];
      }
    }

    if (valueDistance != null) {
      final fieldJson31 = valueDistance!.toJson();
      json['valueDistance'] = fieldJson31['value'];
      if (fieldJson31['_value'] != null) {
        json['_valueDistance'] = fieldJson31['_value'];
      }
    }

    if (valueDuration != null) {
      final fieldJson32 = valueDuration!.toJson();
      json['valueDuration'] = fieldJson32['value'];
      if (fieldJson32['_value'] != null) {
        json['_valueDuration'] = fieldJson32['_value'];
      }
    }

    if (valueHumanName != null) {
      final fieldJson33 = valueHumanName!.toJson();
      json['valueHumanName'] = fieldJson33['value'];
      if (fieldJson33['_value'] != null) {
        json['_valueHumanName'] = fieldJson33['_value'];
      }
    }

    if (valueIdentifier != null) {
      final fieldJson34 = valueIdentifier!.toJson();
      json['valueIdentifier'] = fieldJson34['value'];
      if (fieldJson34['_value'] != null) {
        json['_valueIdentifier'] = fieldJson34['_value'];
      }
    }

    if (valueMoney != null) {
      final fieldJson35 = valueMoney!.toJson();
      json['valueMoney'] = fieldJson35['value'];
      if (fieldJson35['_value'] != null) {
        json['_valueMoney'] = fieldJson35['_value'];
      }
    }

    if (valuePeriod != null) {
      final fieldJson36 = valuePeriod!.toJson();
      json['valuePeriod'] = fieldJson36['value'];
      if (fieldJson36['_value'] != null) {
        json['_valuePeriod'] = fieldJson36['_value'];
      }
    }

    if (valueQuantity != null) {
      final fieldJson37 = valueQuantity!.toJson();
      json['valueQuantity'] = fieldJson37['value'];
      if (fieldJson37['_value'] != null) {
        json['_valueQuantity'] = fieldJson37['_value'];
      }
    }

    if (valueRange != null) {
      final fieldJson38 = valueRange!.toJson();
      json['valueRange'] = fieldJson38['value'];
      if (fieldJson38['_value'] != null) {
        json['_valueRange'] = fieldJson38['_value'];
      }
    }

    if (valueRatio != null) {
      final fieldJson39 = valueRatio!.toJson();
      json['valueRatio'] = fieldJson39['value'];
      if (fieldJson39['_value'] != null) {
        json['_valueRatio'] = fieldJson39['_value'];
      }
    }

    if (valueReference != null) {
      final fieldJson40 = valueReference!.toJson();
      json['valueReference'] = fieldJson40['value'];
      if (fieldJson40['_value'] != null) {
        json['_valueReference'] = fieldJson40['_value'];
      }
    }

    if (valueSampledData != null) {
      final fieldJson41 = valueSampledData!.toJson();
      json['valueSampledData'] = fieldJson41['value'];
      if (fieldJson41['_value'] != null) {
        json['_valueSampledData'] = fieldJson41['_value'];
      }
    }

    if (valueSignature != null) {
      final fieldJson42 = valueSignature!.toJson();
      json['valueSignature'] = fieldJson42['value'];
      if (fieldJson42['_value'] != null) {
        json['_valueSignature'] = fieldJson42['_value'];
      }
    }

    if (valueTiming != null) {
      final fieldJson43 = valueTiming!.toJson();
      json['valueTiming'] = fieldJson43['value'];
      if (fieldJson43['_value'] != null) {
        json['_valueTiming'] = fieldJson43['_value'];
      }
    }

    if (valueContactDetail != null) {
      final fieldJson44 = valueContactDetail!.toJson();
      json['valueContactDetail'] = fieldJson44['value'];
      if (fieldJson44['_value'] != null) {
        json['_valueContactDetail'] = fieldJson44['_value'];
      }
    }

    if (valueContributor != null) {
      final fieldJson45 = valueContributor!.toJson();
      json['valueContributor'] = fieldJson45['value'];
      if (fieldJson45['_value'] != null) {
        json['_valueContributor'] = fieldJson45['_value'];
      }
    }

    if (valueDataRequirement != null) {
      final fieldJson46 = valueDataRequirement!.toJson();
      json['valueDataRequirement'] = fieldJson46['value'];
      if (fieldJson46['_value'] != null) {
        json['_valueDataRequirement'] = fieldJson46['_value'];
      }
    }

    if (valueExpression != null) {
      final fieldJson47 = valueExpression!.toJson();
      json['valueExpression'] = fieldJson47['value'];
      if (fieldJson47['_value'] != null) {
        json['_valueExpression'] = fieldJson47['_value'];
      }
    }

    if (valueParameterDefinition != null) {
      final fieldJson48 = valueParameterDefinition!.toJson();
      json['valueParameterDefinition'] = fieldJson48['value'];
      if (fieldJson48['_value'] != null) {
        json['_valueParameterDefinition'] = fieldJson48['_value'];
      }
    }

    if (valueRelatedArtifact != null) {
      final fieldJson49 = valueRelatedArtifact!.toJson();
      json['valueRelatedArtifact'] = fieldJson49['value'];
      if (fieldJson49['_value'] != null) {
        json['_valueRelatedArtifact'] = fieldJson49['_value'];
      }
    }

    if (valueTriggerDefinition != null) {
      final fieldJson50 = valueTriggerDefinition!.toJson();
      json['valueTriggerDefinition'] = fieldJson50['value'];
      if (fieldJson50['_value'] != null) {
        json['_valueTriggerDefinition'] = fieldJson50['_value'];
      }
    }

    if (valueUsageContext != null) {
      final fieldJson51 = valueUsageContext!.toJson();
      json['valueUsageContext'] = fieldJson51['value'];
      if (fieldJson51['_value'] != null) {
        json['_valueUsageContext'] = fieldJson51['_value'];
      }
    }

    if (valueDosage != null) {
      final fieldJson52 = valueDosage!.toJson();
      json['valueDosage'] = fieldJson52['value'];
      if (fieldJson52['_value'] != null) {
        json['_valueDosage'] = fieldJson52['_value'];
      }
    }

    if (valueMeta != null) {
      final fieldJson53 = valueMeta!.toJson();
      json['valueMeta'] = fieldJson53['value'];
      if (fieldJson53['_value'] != null) {
        json['_valueMeta'] = fieldJson53['_value'];
      }
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
  /// Primary constructor for [TaskOutput]

  TaskOutput({
    super.id,
    this.extension_,
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
  factory TaskOutput.fromJson(Map<String, dynamic> json) {
    return TaskOutput(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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
      valueBase64Binary: json['valueBase64Binary'] != null
          ? FhirBase64Binary.fromJson({
              'value': json['valueBase64Binary'],
              '_value': json['_valueBase64Binary'],
            })
          : null,
      valueBoolean: json['valueBoolean'] != null
          ? FhirBoolean.fromJson({
              'value': json['valueBoolean'],
              '_value': json['_valueBoolean'],
            })
          : null,
      valueCanonical: json['valueCanonical'] != null
          ? FhirCanonical.fromJson({
              'value': json['valueCanonical'],
              '_value': json['_valueCanonical'],
            })
          : null,
      valueCode: json['valueCode'] != null
          ? FhirCode.fromJson({
              'value': json['valueCode'],
              '_value': json['_valueCode'],
            })
          : null,
      valueDate: json['valueDate'] != null
          ? FhirDate.fromJson({
              'value': json['valueDate'],
              '_value': json['_valueDate'],
            })
          : null,
      valueDateTime: json['valueDateTime'] != null
          ? FhirDateTime.fromJson({
              'value': json['valueDateTime'],
              '_value': json['_valueDateTime'],
            })
          : null,
      valueDecimal: json['valueDecimal'] != null
          ? FhirDecimal.fromJson({
              'value': json['valueDecimal'],
              '_value': json['_valueDecimal'],
            })
          : null,
      valueId: json['valueId'] != null
          ? FhirId.fromJson({
              'value': json['valueId'],
              '_value': json['_valueId'],
            })
          : null,
      valueInstant: json['valueInstant'] != null
          ? FhirInstant.fromJson({
              'value': json['valueInstant'],
              '_value': json['_valueInstant'],
            })
          : null,
      valueInteger: json['valueInteger'] != null
          ? FhirInteger.fromJson({
              'value': json['valueInteger'],
              '_value': json['_valueInteger'],
            })
          : null,
      valueMarkdown: json['valueMarkdown'] != null
          ? FhirMarkdown.fromJson({
              'value': json['valueMarkdown'],
              '_value': json['_valueMarkdown'],
            })
          : null,
      valueOid: json['valueOid'] != null
          ? FhirOid.fromJson({
              'value': json['valueOid'],
              '_value': json['_valueOid'],
            })
          : null,
      valuePositiveInt: json['valuePositiveInt'] != null
          ? FhirPositiveInt.fromJson({
              'value': json['valuePositiveInt'],
              '_value': json['_valuePositiveInt'],
            })
          : null,
      valueString: json['valueString'] != null
          ? FhirString.fromJson({
              'value': json['valueString'],
              '_value': json['_valueString'],
            })
          : null,
      valueTime: json['valueTime'] != null
          ? FhirTime.fromJson({
              'value': json['valueTime'],
              '_value': json['_valueTime'],
            })
          : null,
      valueUnsignedInt: json['valueUnsignedInt'] != null
          ? FhirUnsignedInt.fromJson({
              'value': json['valueUnsignedInt'],
              '_value': json['_valueUnsignedInt'],
            })
          : null,
      valueUri: json['valueUri'] != null
          ? FhirUri.fromJson({
              'value': json['valueUri'],
              '_value': json['_valueUri'],
            })
          : null,
      valueUrl: json['valueUrl'] != null
          ? FhirUrl.fromJson({
              'value': json['valueUrl'],
              '_value': json['_valueUrl'],
            })
          : null,
      valueUuid: json['valueUuid'] != null
          ? FhirUuid.fromJson({
              'value': json['valueUuid'],
              '_value': json['_valueUuid'],
            })
          : null,
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

  /// Deserialize [TaskOutput] from a [String]
  /// or [YamlMap] object
  factory TaskOutput.fromYaml(dynamic yaml) => yaml is String
      ? TaskOutput.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? TaskOutput.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('TaskOutput cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [TaskOutput]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TaskOutput.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    final fieldJson3 = type.toJson();
    json['type'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_type'] = fieldJson3['_value'];
    }

    if (valueBase64Binary != null) {
      final fieldJson4 = valueBase64Binary!.toJson();
      json['valueBase64Binary'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_valueBase64Binary'] = fieldJson4['_value'];
      }
    }

    if (valueBoolean != null) {
      final fieldJson5 = valueBoolean!.toJson();
      json['valueBoolean'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_valueBoolean'] = fieldJson5['_value'];
      }
    }

    if (valueCanonical != null) {
      final fieldJson6 = valueCanonical!.toJson();
      json['valueCanonical'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_valueCanonical'] = fieldJson6['_value'];
      }
    }

    if (valueCode != null) {
      final fieldJson7 = valueCode!.toJson();
      json['valueCode'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_valueCode'] = fieldJson7['_value'];
      }
    }

    if (valueDate != null) {
      final fieldJson8 = valueDate!.toJson();
      json['valueDate'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_valueDate'] = fieldJson8['_value'];
      }
    }

    if (valueDateTime != null) {
      final fieldJson9 = valueDateTime!.toJson();
      json['valueDateTime'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_valueDateTime'] = fieldJson9['_value'];
      }
    }

    if (valueDecimal != null) {
      final fieldJson10 = valueDecimal!.toJson();
      json['valueDecimal'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_valueDecimal'] = fieldJson10['_value'];
      }
    }

    if (valueId != null) {
      final fieldJson11 = valueId!.toJson();
      json['valueId'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_valueId'] = fieldJson11['_value'];
      }
    }

    if (valueInstant != null) {
      final fieldJson12 = valueInstant!.toJson();
      json['valueInstant'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_valueInstant'] = fieldJson12['_value'];
      }
    }

    if (valueInteger != null) {
      final fieldJson13 = valueInteger!.toJson();
      json['valueInteger'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_valueInteger'] = fieldJson13['_value'];
      }
    }

    if (valueMarkdown != null) {
      final fieldJson14 = valueMarkdown!.toJson();
      json['valueMarkdown'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_valueMarkdown'] = fieldJson14['_value'];
      }
    }

    if (valueOid != null) {
      final fieldJson15 = valueOid!.toJson();
      json['valueOid'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_valueOid'] = fieldJson15['_value'];
      }
    }

    if (valuePositiveInt != null) {
      final fieldJson16 = valuePositiveInt!.toJson();
      json['valuePositiveInt'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_valuePositiveInt'] = fieldJson16['_value'];
      }
    }

    if (valueString != null) {
      final fieldJson17 = valueString!.toJson();
      json['valueString'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_valueString'] = fieldJson17['_value'];
      }
    }

    if (valueTime != null) {
      final fieldJson18 = valueTime!.toJson();
      json['valueTime'] = fieldJson18['value'];
      if (fieldJson18['_value'] != null) {
        json['_valueTime'] = fieldJson18['_value'];
      }
    }

    if (valueUnsignedInt != null) {
      final fieldJson19 = valueUnsignedInt!.toJson();
      json['valueUnsignedInt'] = fieldJson19['value'];
      if (fieldJson19['_value'] != null) {
        json['_valueUnsignedInt'] = fieldJson19['_value'];
      }
    }

    if (valueUri != null) {
      final fieldJson20 = valueUri!.toJson();
      json['valueUri'] = fieldJson20['value'];
      if (fieldJson20['_value'] != null) {
        json['_valueUri'] = fieldJson20['_value'];
      }
    }

    if (valueUrl != null) {
      final fieldJson21 = valueUrl!.toJson();
      json['valueUrl'] = fieldJson21['value'];
      if (fieldJson21['_value'] != null) {
        json['_valueUrl'] = fieldJson21['_value'];
      }
    }

    if (valueUuid != null) {
      final fieldJson22 = valueUuid!.toJson();
      json['valueUuid'] = fieldJson22['value'];
      if (fieldJson22['_value'] != null) {
        json['_valueUuid'] = fieldJson22['_value'];
      }
    }

    if (valueAddress != null) {
      final fieldJson23 = valueAddress!.toJson();
      json['valueAddress'] = fieldJson23['value'];
      if (fieldJson23['_value'] != null) {
        json['_valueAddress'] = fieldJson23['_value'];
      }
    }

    if (valueAge != null) {
      final fieldJson24 = valueAge!.toJson();
      json['valueAge'] = fieldJson24['value'];
      if (fieldJson24['_value'] != null) {
        json['_valueAge'] = fieldJson24['_value'];
      }
    }

    if (valueAnnotation != null) {
      final fieldJson25 = valueAnnotation!.toJson();
      json['valueAnnotation'] = fieldJson25['value'];
      if (fieldJson25['_value'] != null) {
        json['_valueAnnotation'] = fieldJson25['_value'];
      }
    }

    if (valueAttachment != null) {
      final fieldJson26 = valueAttachment!.toJson();
      json['valueAttachment'] = fieldJson26['value'];
      if (fieldJson26['_value'] != null) {
        json['_valueAttachment'] = fieldJson26['_value'];
      }
    }

    if (valueCodeableConcept != null) {
      final fieldJson27 = valueCodeableConcept!.toJson();
      json['valueCodeableConcept'] = fieldJson27['value'];
      if (fieldJson27['_value'] != null) {
        json['_valueCodeableConcept'] = fieldJson27['_value'];
      }
    }

    if (valueCoding != null) {
      final fieldJson28 = valueCoding!.toJson();
      json['valueCoding'] = fieldJson28['value'];
      if (fieldJson28['_value'] != null) {
        json['_valueCoding'] = fieldJson28['_value'];
      }
    }

    if (valueContactPoint != null) {
      final fieldJson29 = valueContactPoint!.toJson();
      json['valueContactPoint'] = fieldJson29['value'];
      if (fieldJson29['_value'] != null) {
        json['_valueContactPoint'] = fieldJson29['_value'];
      }
    }

    if (valueCount != null) {
      final fieldJson30 = valueCount!.toJson();
      json['valueCount'] = fieldJson30['value'];
      if (fieldJson30['_value'] != null) {
        json['_valueCount'] = fieldJson30['_value'];
      }
    }

    if (valueDistance != null) {
      final fieldJson31 = valueDistance!.toJson();
      json['valueDistance'] = fieldJson31['value'];
      if (fieldJson31['_value'] != null) {
        json['_valueDistance'] = fieldJson31['_value'];
      }
    }

    if (valueDuration != null) {
      final fieldJson32 = valueDuration!.toJson();
      json['valueDuration'] = fieldJson32['value'];
      if (fieldJson32['_value'] != null) {
        json['_valueDuration'] = fieldJson32['_value'];
      }
    }

    if (valueHumanName != null) {
      final fieldJson33 = valueHumanName!.toJson();
      json['valueHumanName'] = fieldJson33['value'];
      if (fieldJson33['_value'] != null) {
        json['_valueHumanName'] = fieldJson33['_value'];
      }
    }

    if (valueIdentifier != null) {
      final fieldJson34 = valueIdentifier!.toJson();
      json['valueIdentifier'] = fieldJson34['value'];
      if (fieldJson34['_value'] != null) {
        json['_valueIdentifier'] = fieldJson34['_value'];
      }
    }

    if (valueMoney != null) {
      final fieldJson35 = valueMoney!.toJson();
      json['valueMoney'] = fieldJson35['value'];
      if (fieldJson35['_value'] != null) {
        json['_valueMoney'] = fieldJson35['_value'];
      }
    }

    if (valuePeriod != null) {
      final fieldJson36 = valuePeriod!.toJson();
      json['valuePeriod'] = fieldJson36['value'];
      if (fieldJson36['_value'] != null) {
        json['_valuePeriod'] = fieldJson36['_value'];
      }
    }

    if (valueQuantity != null) {
      final fieldJson37 = valueQuantity!.toJson();
      json['valueQuantity'] = fieldJson37['value'];
      if (fieldJson37['_value'] != null) {
        json['_valueQuantity'] = fieldJson37['_value'];
      }
    }

    if (valueRange != null) {
      final fieldJson38 = valueRange!.toJson();
      json['valueRange'] = fieldJson38['value'];
      if (fieldJson38['_value'] != null) {
        json['_valueRange'] = fieldJson38['_value'];
      }
    }

    if (valueRatio != null) {
      final fieldJson39 = valueRatio!.toJson();
      json['valueRatio'] = fieldJson39['value'];
      if (fieldJson39['_value'] != null) {
        json['_valueRatio'] = fieldJson39['_value'];
      }
    }

    if (valueReference != null) {
      final fieldJson40 = valueReference!.toJson();
      json['valueReference'] = fieldJson40['value'];
      if (fieldJson40['_value'] != null) {
        json['_valueReference'] = fieldJson40['_value'];
      }
    }

    if (valueSampledData != null) {
      final fieldJson41 = valueSampledData!.toJson();
      json['valueSampledData'] = fieldJson41['value'];
      if (fieldJson41['_value'] != null) {
        json['_valueSampledData'] = fieldJson41['_value'];
      }
    }

    if (valueSignature != null) {
      final fieldJson42 = valueSignature!.toJson();
      json['valueSignature'] = fieldJson42['value'];
      if (fieldJson42['_value'] != null) {
        json['_valueSignature'] = fieldJson42['_value'];
      }
    }

    if (valueTiming != null) {
      final fieldJson43 = valueTiming!.toJson();
      json['valueTiming'] = fieldJson43['value'];
      if (fieldJson43['_value'] != null) {
        json['_valueTiming'] = fieldJson43['_value'];
      }
    }

    if (valueContactDetail != null) {
      final fieldJson44 = valueContactDetail!.toJson();
      json['valueContactDetail'] = fieldJson44['value'];
      if (fieldJson44['_value'] != null) {
        json['_valueContactDetail'] = fieldJson44['_value'];
      }
    }

    if (valueContributor != null) {
      final fieldJson45 = valueContributor!.toJson();
      json['valueContributor'] = fieldJson45['value'];
      if (fieldJson45['_value'] != null) {
        json['_valueContributor'] = fieldJson45['_value'];
      }
    }

    if (valueDataRequirement != null) {
      final fieldJson46 = valueDataRequirement!.toJson();
      json['valueDataRequirement'] = fieldJson46['value'];
      if (fieldJson46['_value'] != null) {
        json['_valueDataRequirement'] = fieldJson46['_value'];
      }
    }

    if (valueExpression != null) {
      final fieldJson47 = valueExpression!.toJson();
      json['valueExpression'] = fieldJson47['value'];
      if (fieldJson47['_value'] != null) {
        json['_valueExpression'] = fieldJson47['_value'];
      }
    }

    if (valueParameterDefinition != null) {
      final fieldJson48 = valueParameterDefinition!.toJson();
      json['valueParameterDefinition'] = fieldJson48['value'];
      if (fieldJson48['_value'] != null) {
        json['_valueParameterDefinition'] = fieldJson48['_value'];
      }
    }

    if (valueRelatedArtifact != null) {
      final fieldJson49 = valueRelatedArtifact!.toJson();
      json['valueRelatedArtifact'] = fieldJson49['value'];
      if (fieldJson49['_value'] != null) {
        json['_valueRelatedArtifact'] = fieldJson49['_value'];
      }
    }

    if (valueTriggerDefinition != null) {
      final fieldJson50 = valueTriggerDefinition!.toJson();
      json['valueTriggerDefinition'] = fieldJson50['value'];
      if (fieldJson50['_value'] != null) {
        json['_valueTriggerDefinition'] = fieldJson50['_value'];
      }
    }

    if (valueUsageContext != null) {
      final fieldJson51 = valueUsageContext!.toJson();
      json['valueUsageContext'] = fieldJson51['value'];
      if (fieldJson51['_value'] != null) {
        json['_valueUsageContext'] = fieldJson51['_value'];
      }
    }

    if (valueDosage != null) {
      final fieldJson52 = valueDosage!.toJson();
      json['valueDosage'] = fieldJson52['value'];
      if (fieldJson52['_value'] != null) {
        json['_valueDosage'] = fieldJson52['_value'];
      }
    }

    if (valueMeta != null) {
      final fieldJson53 = valueMeta!.toJson();
      json['valueMeta'] = fieldJson53['value'];
      if (fieldJson53['_value'] != null) {
        json['_valueMeta'] = fieldJson53['_value'];
      }
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
