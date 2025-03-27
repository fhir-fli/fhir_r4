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
          objectPath: 'Task',
          resourceType: R4ResourceType.Task,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory Task.empty() => Task(
        status: TaskStatus.values.first,
        intent: TaskIntent.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Task.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Task';
    return Task(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      instantiatesCanonical: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'instantiatesCanonical',
        FhirCanonical.fromJson,
        '$objectPath.instantiatesCanonical',
      ),
      instantiatesUri: JsonParser.parsePrimitive<FhirUri>(
        json,
        'instantiatesUri',
        FhirUri.fromJson,
        '$objectPath.instantiatesUri',
      ),
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.basedOn',
              },
            ),
          )
          .toList(),
      groupIdentifier: JsonParser.parseObject<Identifier>(
        json,
        'groupIdentifier',
        Identifier.fromJson,
        '$objectPath.groupIdentifier',
      ),
      partOf: (json['partOf'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.partOf',
              },
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<TaskStatus>(
        json,
        'status',
        TaskStatus.fromJson,
        '$objectPath.status',
      )!,
      statusReason: JsonParser.parseObject<CodeableConcept>(
        json,
        'statusReason',
        CodeableConcept.fromJson,
        '$objectPath.statusReason',
      ),
      businessStatus: JsonParser.parseObject<CodeableConcept>(
        json,
        'businessStatus',
        CodeableConcept.fromJson,
        '$objectPath.businessStatus',
      ),
      intent: JsonParser.parsePrimitive<TaskIntent>(
        json,
        'intent',
        TaskIntent.fromJson,
        '$objectPath.intent',
      )!,
      priority: JsonParser.parsePrimitive<RequestPriority>(
        json,
        'priority',
        RequestPriority.fromJson,
        '$objectPath.priority',
      ),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
        '$objectPath.code',
      ),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
        '$objectPath.description',
      ),
      focus: JsonParser.parseObject<Reference>(
        json,
        'focus',
        Reference.fromJson,
        '$objectPath.focus',
      ),
      for_: JsonParser.parseObject<Reference>(
        json,
        'for',
        Reference.fromJson,
        '$objectPath.for',
      ),
      encounter: JsonParser.parseObject<Reference>(
        json,
        'encounter',
        Reference.fromJson,
        '$objectPath.encounter',
      ),
      executionPeriod: JsonParser.parseObject<Period>(
        json,
        'executionPeriod',
        Period.fromJson,
        '$objectPath.executionPeriod',
      ),
      authoredOn: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'authoredOn',
        FhirDateTime.fromJson,
        '$objectPath.authoredOn',
      ),
      lastModified: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'lastModified',
        FhirDateTime.fromJson,
        '$objectPath.lastModified',
      ),
      requester: JsonParser.parseObject<Reference>(
        json,
        'requester',
        Reference.fromJson,
        '$objectPath.requester',
      ),
      performerType: (json['performerType'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.performerType',
              },
            ),
          )
          .toList(),
      owner: JsonParser.parseObject<Reference>(
        json,
        'owner',
        Reference.fromJson,
        '$objectPath.owner',
      ),
      location: JsonParser.parseObject<Reference>(
        json,
        'location',
        Reference.fromJson,
        '$objectPath.location',
      ),
      reasonCode: JsonParser.parseObject<CodeableConcept>(
        json,
        'reasonCode',
        CodeableConcept.fromJson,
        '$objectPath.reasonCode',
      ),
      reasonReference: JsonParser.parseObject<Reference>(
        json,
        'reasonReference',
        Reference.fromJson,
        '$objectPath.reasonReference',
      ),
      insurance: (json['insurance'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.insurance',
              },
            ),
          )
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.note',
              },
            ),
          )
          .toList(),
      relevantHistory: (json['relevantHistory'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.relevantHistory',
              },
            ),
          )
          .toList(),
      restriction: JsonParser.parseObject<TaskRestriction>(
        json,
        'restriction',
        TaskRestriction.fromJson,
        '$objectPath.restriction',
      ),
      input: (json['input'] as List<dynamic>?)
          ?.map<TaskInput>(
            (v) => TaskInput.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.input',
              },
            ),
          )
          .toList(),
      output: (json['output'] as List<dynamic>?)
          ?.map<TaskOutput>(
            (v) => TaskOutput.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.output',
              },
            ),
          )
          .toList(),
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
    if (json is Map<String, dynamic>) {
      return Task.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    addField('meta', meta);
    addField('implicitRules', implicitRules);
    addField('language', language);
    addField('text', text);
    addField('contained', contained);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('identifier', identifier);
    addField('instantiatesCanonical', instantiatesCanonical);
    addField('instantiatesUri', instantiatesUri);
    addField('basedOn', basedOn);
    addField('groupIdentifier', groupIdentifier);
    addField('partOf', partOf);
    addField('status', status);
    addField('statusReason', statusReason);
    addField('businessStatus', businessStatus);
    addField('intent', intent);
    addField('priority', priority);
    addField('code', code);
    addField('description', description);
    addField('focus', focus);
    addField('for', for_);
    addField('encounter', encounter);
    addField('executionPeriod', executionPeriod);
    addField('authoredOn', authoredOn);
    addField('lastModified', lastModified);
    addField('requester', requester);
    addField('performerType', performerType);
    addField('owner', owner);
    addField('location', location);
    addField('reasonCode', reasonCode);
    addField('reasonReference', reasonReference);
    addField('insurance', insurance);
    addField('note', note);
    addField('relevantHistory', relevantHistory);
    addField('restriction', restriction);
    addField('input', input);
    addField('output', output);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'meta',
      'implicitRules',
      'language',
      'text',
      'contained',
      'extension',
      'modifierExtension',
      'identifier',
      'instantiatesCanonical',
      'instantiatesUri',
      'basedOn',
      'groupIdentifier',
      'partOf',
      'status',
      'statusReason',
      'businessStatus',
      'intent',
      'priority',
      'code',
      'description',
      'focus',
      'for',
      'encounter',
      'executionPeriod',
      'authoredOn',
      'lastModified',
      'requester',
      'performerType',
      'owner',
      'location',
      'reasonCode',
      'reasonReference',
      'insurance',
      'note',
      'relevantHistory',
      'restriction',
      'input',
      'output',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'meta':
        if (meta != null) {
          fields.add(meta!);
        }
      case 'implicitRules':
        if (implicitRules != null) {
          fields.add(implicitRules!);
        }
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'contained':
        if (contained != null) {
          fields.addAll(contained!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'instantiatesCanonical':
        if (instantiatesCanonical != null) {
          fields.add(instantiatesCanonical!);
        }
      case 'instantiatesUri':
        if (instantiatesUri != null) {
          fields.add(instantiatesUri!);
        }
      case 'basedOn':
        if (basedOn != null) {
          fields.addAll(basedOn!);
        }
      case 'groupIdentifier':
        if (groupIdentifier != null) {
          fields.add(groupIdentifier!);
        }
      case 'partOf':
        if (partOf != null) {
          fields.addAll(partOf!);
        }
      case 'status':
        fields.add(status);
      case 'statusReason':
        if (statusReason != null) {
          fields.add(statusReason!);
        }
      case 'businessStatus':
        if (businessStatus != null) {
          fields.add(businessStatus!);
        }
      case 'intent':
        fields.add(intent);
      case 'priority':
        if (priority != null) {
          fields.add(priority!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'focus':
        if (focus != null) {
          fields.add(focus!);
        }
      case 'for':
        if (for_ != null) {
          fields.add(for_!);
        }
      case 'encounter':
        if (encounter != null) {
          fields.add(encounter!);
        }
      case 'executionPeriod':
        if (executionPeriod != null) {
          fields.add(executionPeriod!);
        }
      case 'authoredOn':
        if (authoredOn != null) {
          fields.add(authoredOn!);
        }
      case 'lastModified':
        if (lastModified != null) {
          fields.add(lastModified!);
        }
      case 'requester':
        if (requester != null) {
          fields.add(requester!);
        }
      case 'performerType':
        if (performerType != null) {
          fields.addAll(performerType!);
        }
      case 'owner':
        if (owner != null) {
          fields.add(owner!);
        }
      case 'location':
        if (location != null) {
          fields.add(location!);
        }
      case 'reasonCode':
        if (reasonCode != null) {
          fields.add(reasonCode!);
        }
      case 'reasonReference':
        if (reasonReference != null) {
          fields.add(reasonReference!);
        }
      case 'insurance':
        if (insurance != null) {
          fields.addAll(insurance!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'relevantHistory':
        if (relevantHistory != null) {
          fields.addAll(relevantHistory!);
        }
      case 'restriction':
        if (restriction != null) {
          fields.add(restriction!);
        }
      case 'input':
        if (input != null) {
          fields.addAll(input!);
        }
      case 'output':
        if (output != null) {
          fields.addAll(output!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a property by name, but only if that propery is a list. If it
  /// is not a list, it returns null. If it is a list, but the list is null or
  /// if the list is empty (which really shouldn't happen in FHIR), it returns
  /// an empty list.
  @override
  List<FhirBase>? getListChildByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    switch (fieldName) {
      case 'contained':
        if (contained != null) {
          return contained!;
        } else {
          return <FhirBase>[];
        }
      case 'extension':
        if (extension_ != null) {
          return extension_!;
        } else {
          return <FhirBase>[];
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          return modifierExtension!;
        } else {
          return <FhirBase>[];
        }
      case 'identifier':
        if (identifier != null) {
          return identifier!;
        } else {
          return <FhirBase>[];
        }
      case 'basedOn':
        if (basedOn != null) {
          return basedOn!;
        } else {
          return <FhirBase>[];
        }
      case 'partOf':
        if (partOf != null) {
          return partOf!;
        } else {
          return <FhirBase>[];
        }
      case 'performerType':
        if (performerType != null) {
          return performerType!;
        } else {
          return <FhirBase>[];
        }
      case 'insurance':
        if (insurance != null) {
          return insurance!;
        } else {
          return <FhirBase>[];
        }
      case 'note':
        if (note != null) {
          return note!;
        } else {
          return <FhirBase>[];
        }
      case 'relevantHistory':
        if (relevantHistory != null) {
          return relevantHistory!;
        } else {
          return <FhirBase>[];
        }
      case 'input':
        if (input != null) {
          return input!;
        } else {
          return <FhirBase>[];
        }
      case 'output':
        if (output != null) {
          return output!;
        } else {
          return <FhirBase>[];
        }
    }
    return null;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'meta':
        {
          if (child is FhirMeta) {
            return copyWith(meta: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUri) {
            return copyWith(implicitRules: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'language':
        {
          if (child is CommonLanguages) {
            return copyWith(language: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'text':
        {
          if (child is Narrative) {
            return copyWith(text: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'contained':
        {
          if (child is List<Resource>) {
            return copyWith(contained: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'identifier':
        {
          if (child is List<Identifier>) {
            return copyWith(identifier: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'instantiatesCanonical':
        {
          if (child is FhirCanonical) {
            return copyWith(instantiatesCanonical: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'instantiatesUri':
        {
          if (child is FhirUri) {
            return copyWith(instantiatesUri: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'basedOn':
        {
          if (child is List<Reference>) {
            return copyWith(basedOn: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'groupIdentifier':
        {
          if (child is Identifier) {
            return copyWith(groupIdentifier: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'partOf':
        {
          if (child is List<Reference>) {
            return copyWith(partOf: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'status':
        {
          if (child is TaskStatus) {
            return copyWith(status: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'statusReason':
        {
          if (child is CodeableConcept) {
            return copyWith(statusReason: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'businessStatus':
        {
          if (child is CodeableConcept) {
            return copyWith(businessStatus: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'intent':
        {
          if (child is TaskIntent) {
            return copyWith(intent: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'priority':
        {
          if (child is RequestPriority) {
            return copyWith(priority: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'code':
        {
          if (child is CodeableConcept) {
            return copyWith(code: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'description':
        {
          if (child is FhirString) {
            return copyWith(description: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'focus':
        {
          if (child is Reference) {
            return copyWith(focus: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'for':
        {
          if (child is Reference) {
            return copyWith(for_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'encounter':
        {
          if (child is Reference) {
            return copyWith(encounter: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'executionPeriod':
        {
          if (child is Period) {
            return copyWith(executionPeriod: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'authoredOn':
        {
          if (child is FhirDateTime) {
            return copyWith(authoredOn: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'lastModified':
        {
          if (child is FhirDateTime) {
            return copyWith(lastModified: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'requester':
        {
          if (child is Reference) {
            return copyWith(requester: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'performerType':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(performerType: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'owner':
        {
          if (child is Reference) {
            return copyWith(owner: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'location':
        {
          if (child is Reference) {
            return copyWith(location: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'reasonCode':
        {
          if (child is CodeableConcept) {
            return copyWith(reasonCode: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'reasonReference':
        {
          if (child is Reference) {
            return copyWith(reasonReference: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'insurance':
        {
          if (child is List<Reference>) {
            return copyWith(insurance: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'note':
        {
          if (child is List<Annotation>) {
            return copyWith(note: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'relevantHistory':
        {
          if (child is List<Reference>) {
            return copyWith(relevantHistory: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'restriction':
        {
          if (child is TaskRestriction) {
            return copyWith(restriction: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'input':
        {
          if (child is List<TaskInput>) {
            return copyWith(input: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'output':
        {
          if (child is List<TaskOutput>) {
            return copyWith(output: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'meta':
        return ['FhirMeta'];
      case 'implicitRules':
        return ['FhirUri'];
      case 'language':
        return ['FhirCode'];
      case 'text':
        return ['Narrative'];
      case 'contained':
        return ['Resource'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'identifier':
        return ['Identifier'];
      case 'instantiatesCanonical':
        return ['FhirCanonical'];
      case 'instantiatesUri':
        return ['FhirUri'];
      case 'basedOn':
        return ['Reference'];
      case 'groupIdentifier':
        return ['Identifier'];
      case 'partOf':
        return ['Reference'];
      case 'status':
        return ['FhirCode'];
      case 'statusReason':
        return ['CodeableConcept'];
      case 'businessStatus':
        return ['CodeableConcept'];
      case 'intent':
        return ['FhirCode'];
      case 'priority':
        return ['FhirCode'];
      case 'code':
        return ['CodeableConcept'];
      case 'description':
        return ['FhirString'];
      case 'focus':
        return ['Reference'];
      case 'for':
        return ['Reference'];
      case 'encounter':
        return ['Reference'];
      case 'executionPeriod':
        return ['Period'];
      case 'authoredOn':
        return ['FhirDateTime'];
      case 'lastModified':
        return ['FhirDateTime'];
      case 'requester':
        return ['Reference'];
      case 'performerType':
        return ['CodeableConcept'];
      case 'owner':
        return ['Reference'];
      case 'location':
        return ['Reference'];
      case 'reasonCode':
        return ['CodeableConcept'];
      case 'reasonReference':
        return ['Reference'];
      case 'insurance':
        return ['Reference'];
      case 'note':
        return ['Annotation'];
      case 'relevantHistory':
        return ['Reference'];
      case 'restriction':
        return ['TaskRestriction'];
      case 'input':
        return ['TaskInput'];
      case 'output':
        return ['TaskOutput'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [Task]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  Task createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'meta':
        {
          return copyWith(meta: FhirMeta.empty());
        }
      case 'implicitRules':
        {
          return copyWith(implicitRules: FhirUri.empty());
        }
      case 'language':
        {
          return copyWith(language: CommonLanguages.empty());
        }
      case 'text':
        {
          return copyWith(text: Narrative.empty());
        }
      case 'contained':
        {
          return copyWith(contained: <Resource>[]);
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'identifier':
        {
          return copyWith(identifier: <Identifier>[]);
        }
      case 'instantiatesCanonical':
        {
          return copyWith(instantiatesCanonical: FhirCanonical.empty());
        }
      case 'instantiatesUri':
        {
          return copyWith(instantiatesUri: FhirUri.empty());
        }
      case 'basedOn':
        {
          return copyWith(basedOn: <Reference>[]);
        }
      case 'groupIdentifier':
        {
          return copyWith(groupIdentifier: Identifier.empty());
        }
      case 'partOf':
        {
          return copyWith(partOf: <Reference>[]);
        }
      case 'status':
        {
          return copyWith(status: TaskStatus.empty());
        }
      case 'statusReason':
        {
          return copyWith(statusReason: CodeableConcept.empty());
        }
      case 'businessStatus':
        {
          return copyWith(businessStatus: CodeableConcept.empty());
        }
      case 'intent':
        {
          return copyWith(intent: TaskIntent.empty());
        }
      case 'priority':
        {
          return copyWith(priority: RequestPriority.empty());
        }
      case 'code':
        {
          return copyWith(code: CodeableConcept.empty());
        }
      case 'description':
        {
          return copyWith(description: FhirString.empty());
        }
      case 'focus':
        {
          return copyWith(focus: Reference.empty());
        }
      case 'for':
        {
          return copyWith(for_: Reference.empty());
        }
      case 'encounter':
        {
          return copyWith(encounter: Reference.empty());
        }
      case 'executionPeriod':
        {
          return copyWith(executionPeriod: Period.empty());
        }
      case 'authoredOn':
        {
          return copyWith(authoredOn: FhirDateTime.empty());
        }
      case 'lastModified':
        {
          return copyWith(lastModified: FhirDateTime.empty());
        }
      case 'requester':
        {
          return copyWith(requester: Reference.empty());
        }
      case 'performerType':
        {
          return copyWith(performerType: <CodeableConcept>[]);
        }
      case 'owner':
        {
          return copyWith(owner: Reference.empty());
        }
      case 'location':
        {
          return copyWith(location: Reference.empty());
        }
      case 'reasonCode':
        {
          return copyWith(reasonCode: CodeableConcept.empty());
        }
      case 'reasonReference':
        {
          return copyWith(reasonReference: Reference.empty());
        }
      case 'insurance':
        {
          return copyWith(insurance: <Reference>[]);
        }
      case 'note':
        {
          return copyWith(note: <Annotation>[]);
        }
      case 'relevantHistory':
        {
          return copyWith(relevantHistory: <Reference>[]);
        }
      case 'restriction':
        {
          return copyWith(restriction: TaskRestriction.empty());
        }
      case 'input':
        {
          return copyWith(input: <TaskInput>[]);
        }
      case 'output':
        {
          return copyWith(output: <TaskOutput>[]);
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  Task clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool identifier = false,
    bool instantiatesCanonical = false,
    bool instantiatesUri = false,
    bool basedOn = false,
    bool groupIdentifier = false,
    bool partOf = false,
    bool statusReason = false,
    bool businessStatus = false,
    bool priority = false,
    bool code = false,
    bool description = false,
    bool focus = false,
    bool for_ = false,
    bool encounter = false,
    bool executionPeriod = false,
    bool authoredOn = false,
    bool lastModified = false,
    bool requester = false,
    bool performerType = false,
    bool owner = false,
    bool location = false,
    bool reasonCode = false,
    bool reasonReference = false,
    bool insurance = false,
    bool note = false,
    bool relevantHistory = false,
    bool restriction = false,
    bool input = false,
    bool output = false,
  }) {
    return Task(
      id: id ? null : this.id,
      meta: meta ? null : this.meta,
      implicitRules: implicitRules ? null : this.implicitRules,
      language: language ? null : this.language,
      text: text ? null : this.text,
      contained: contained ? null : this.contained,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      identifier: identifier ? null : this.identifier,
      instantiatesCanonical:
          instantiatesCanonical ? null : this.instantiatesCanonical,
      instantiatesUri: instantiatesUri ? null : this.instantiatesUri,
      basedOn: basedOn ? null : this.basedOn,
      groupIdentifier: groupIdentifier ? null : this.groupIdentifier,
      partOf: partOf ? null : this.partOf,
      status: status,
      statusReason: statusReason ? null : this.statusReason,
      businessStatus: businessStatus ? null : this.businessStatus,
      intent: intent,
      priority: priority ? null : this.priority,
      code: code ? null : this.code,
      description: description ? null : this.description,
      focus: focus ? null : this.focus,
      for_: for_ ? null : this.for_,
      encounter: encounter ? null : this.encounter,
      executionPeriod: executionPeriod ? null : this.executionPeriod,
      authoredOn: authoredOn ? null : this.authoredOn,
      lastModified: lastModified ? null : this.lastModified,
      requester: requester ? null : this.requester,
      performerType: performerType ? null : this.performerType,
      owner: owner ? null : this.owner,
      location: location ? null : this.location,
      reasonCode: reasonCode ? null : this.reasonCode,
      reasonReference: reasonReference ? null : this.reasonReference,
      insurance: insurance ? null : this.insurance,
      note: note ? null : this.note,
      relevantHistory: relevantHistory ? null : this.relevantHistory,
      restriction: restriction ? null : this.restriction,
      input: input ? null : this.input,
      output: output ? null : this.output,
    );
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return Task(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      meta: meta?.copyWith(
            objectPath: '$newObjectPath.meta',
          ) ??
          this.meta,
      implicitRules: implicitRules?.copyWith(
            objectPath: '$newObjectPath.implicitRules',
          ) ??
          this.implicitRules,
      language: language?.copyWith(
            objectPath: '$newObjectPath.language',
          ) ??
          this.language,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
      contained: contained ?? this.contained,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      identifier: identifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.identifier',
                ),
              )
              .toList() ??
          this.identifier,
      instantiatesCanonical: instantiatesCanonical?.copyWith(
            objectPath: '$newObjectPath.instantiatesCanonical',
          ) ??
          this.instantiatesCanonical,
      instantiatesUri: instantiatesUri?.copyWith(
            objectPath: '$newObjectPath.instantiatesUri',
          ) ??
          this.instantiatesUri,
      basedOn: basedOn
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.basedOn',
                ),
              )
              .toList() ??
          this.basedOn,
      groupIdentifier: groupIdentifier?.copyWith(
            objectPath: '$newObjectPath.groupIdentifier',
          ) ??
          this.groupIdentifier,
      partOf: partOf
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.partOf',
                ),
              )
              .toList() ??
          this.partOf,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      statusReason: statusReason?.copyWith(
            objectPath: '$newObjectPath.statusReason',
          ) ??
          this.statusReason,
      businessStatus: businessStatus?.copyWith(
            objectPath: '$newObjectPath.businessStatus',
          ) ??
          this.businessStatus,
      intent: intent?.copyWith(
            objectPath: '$newObjectPath.intent',
          ) ??
          this.intent,
      priority: priority?.copyWith(
            objectPath: '$newObjectPath.priority',
          ) ??
          this.priority,
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      focus: focus?.copyWith(
            objectPath: '$newObjectPath.focus',
          ) ??
          this.focus,
      for_: for_?.copyWith(
            objectPath: '$newObjectPath.for',
          ) ??
          this.for_,
      encounter: encounter?.copyWith(
            objectPath: '$newObjectPath.encounter',
          ) ??
          this.encounter,
      executionPeriod: executionPeriod?.copyWith(
            objectPath: '$newObjectPath.executionPeriod',
          ) ??
          this.executionPeriod,
      authoredOn: authoredOn?.copyWith(
            objectPath: '$newObjectPath.authoredOn',
          ) ??
          this.authoredOn,
      lastModified: lastModified?.copyWith(
            objectPath: '$newObjectPath.lastModified',
          ) ??
          this.lastModified,
      requester: requester?.copyWith(
            objectPath: '$newObjectPath.requester',
          ) ??
          this.requester,
      performerType: performerType
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.performerType',
                ),
              )
              .toList() ??
          this.performerType,
      owner: owner?.copyWith(
            objectPath: '$newObjectPath.owner',
          ) ??
          this.owner,
      location: location?.copyWith(
            objectPath: '$newObjectPath.location',
          ) ??
          this.location,
      reasonCode: reasonCode?.copyWith(
            objectPath: '$newObjectPath.reasonCode',
          ) ??
          this.reasonCode,
      reasonReference: reasonReference?.copyWith(
            objectPath: '$newObjectPath.reasonReference',
          ) ??
          this.reasonReference,
      insurance: insurance
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.insurance',
                ),
              )
              .toList() ??
          this.insurance,
      note: note
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.note',
                ),
              )
              .toList() ??
          this.note,
      relevantHistory: relevantHistory
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.relevantHistory',
                ),
              )
              .toList() ??
          this.relevantHistory,
      restriction: restriction?.copyWith(
            objectPath: '$newObjectPath.restriction',
          ) ??
          this.restriction,
      input: input
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.input',
                ),
              )
              .toList() ??
          this.input,
      output: output
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.output',
                ),
              )
              .toList() ??
          this.output,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Task) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!equalsDeepWithNull(meta, o.meta)) {
      return false;
    }
    if (!equalsDeepWithNull(implicitRules, o.implicitRules)) {
      return false;
    }
    if (!equalsDeepWithNull(language, o.language)) {
      return false;
    }
    if (!equalsDeepWithNull(text, o.text)) {
      return false;
    }
    if (!listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(instantiatesCanonical, o.instantiatesCanonical)) {
      return false;
    }
    if (!equalsDeepWithNull(instantiatesUri, o.instantiatesUri)) {
      return false;
    }
    if (!listEquals<Reference>(
      basedOn,
      o.basedOn,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(groupIdentifier, o.groupIdentifier)) {
      return false;
    }
    if (!listEquals<Reference>(
      partOf,
      o.partOf,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(status, o.status)) {
      return false;
    }
    if (!equalsDeepWithNull(statusReason, o.statusReason)) {
      return false;
    }
    if (!equalsDeepWithNull(businessStatus, o.businessStatus)) {
      return false;
    }
    if (!equalsDeepWithNull(intent, o.intent)) {
      return false;
    }
    if (!equalsDeepWithNull(priority, o.priority)) {
      return false;
    }
    if (!equalsDeepWithNull(code, o.code)) {
      return false;
    }
    if (!equalsDeepWithNull(description, o.description)) {
      return false;
    }
    if (!equalsDeepWithNull(focus, o.focus)) {
      return false;
    }
    if (!equalsDeepWithNull(for_, o.for_)) {
      return false;
    }
    if (!equalsDeepWithNull(encounter, o.encounter)) {
      return false;
    }
    if (!equalsDeepWithNull(executionPeriod, o.executionPeriod)) {
      return false;
    }
    if (!equalsDeepWithNull(authoredOn, o.authoredOn)) {
      return false;
    }
    if (!equalsDeepWithNull(lastModified, o.lastModified)) {
      return false;
    }
    if (!equalsDeepWithNull(requester, o.requester)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      performerType,
      o.performerType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(owner, o.owner)) {
      return false;
    }
    if (!equalsDeepWithNull(location, o.location)) {
      return false;
    }
    if (!equalsDeepWithNull(reasonCode, o.reasonCode)) {
      return false;
    }
    if (!equalsDeepWithNull(reasonReference, o.reasonReference)) {
      return false;
    }
    if (!listEquals<Reference>(
      insurance,
      o.insurance,
    )) {
      return false;
    }
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      relevantHistory,
      o.relevantHistory,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(restriction, o.restriction)) {
      return false;
    }
    if (!listEquals<TaskInput>(
      input,
      o.input,
    )) {
      return false;
    }
    if (!listEquals<TaskOutput>(
      output,
      o.output,
    )) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'Task.restriction',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory TaskRestriction.empty() => const TaskRestriction();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TaskRestriction.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Task.restriction';
    return TaskRestriction(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      repetitions: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'repetitions',
        FhirPositiveInt.fromJson,
        '$objectPath.repetitions',
      ),
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
        '$objectPath.period',
      ),
      recipient: (json['recipient'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.recipient',
              },
            ),
          )
          .toList(),
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
    if (json is Map<String, dynamic>) {
      return TaskRestriction.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('repetitions', repetitions);
    addField('period', period);
    addField('recipient', recipient);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'repetitions',
      'period',
      'recipient',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'repetitions':
        if (repetitions != null) {
          fields.add(repetitions!);
        }
      case 'period':
        if (period != null) {
          fields.add(period!);
        }
      case 'recipient':
        if (recipient != null) {
          fields.addAll(recipient!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a property by name, but only if that propery is a list. If it
  /// is not a list, it returns null. If it is a list, but the list is null or
  /// if the list is empty (which really shouldn't happen in FHIR), it returns
  /// an empty list.
  @override
  List<FhirBase>? getListChildByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    switch (fieldName) {
      case 'extension':
        if (extension_ != null) {
          return extension_!;
        } else {
          return <FhirBase>[];
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          return modifierExtension!;
        } else {
          return <FhirBase>[];
        }
      case 'recipient':
        if (recipient != null) {
          return recipient!;
        } else {
          return <FhirBase>[];
        }
    }
    return null;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'repetitions':
        {
          if (child is FhirPositiveInt) {
            return copyWith(repetitions: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'period':
        {
          if (child is Period) {
            return copyWith(period: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'recipient':
        {
          if (child is List<Reference>) {
            return copyWith(recipient: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'repetitions':
        return ['FhirPositiveInt'];
      case 'period':
        return ['Period'];
      case 'recipient':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TaskRestriction]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  TaskRestriction createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'repetitions':
        {
          return copyWith(repetitions: FhirPositiveInt.empty());
        }
      case 'period':
        {
          return copyWith(period: Period.empty());
        }
      case 'recipient':
        {
          return copyWith(recipient: <Reference>[]);
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  TaskRestriction clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool repetitions = false,
    bool period = false,
    bool recipient = false,
  }) {
    return TaskRestriction(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      repetitions: repetitions ? null : this.repetitions,
      period: period ? null : this.period,
      recipient: recipient ? null : this.recipient,
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
    Period? period,
    List<Reference>? recipient,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return TaskRestriction(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      repetitions: repetitions?.copyWith(
            objectPath: '$newObjectPath.repetitions',
          ) ??
          this.repetitions,
      period: period?.copyWith(
            objectPath: '$newObjectPath.period',
          ) ??
          this.period,
      recipient: recipient
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.recipient',
                ),
              )
              .toList() ??
          this.recipient,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! TaskRestriction) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(repetitions, o.repetitions)) {
      return false;
    }
    if (!equalsDeepWithNull(period, o.period)) {
      return false;
    }
    if (!listEquals<Reference>(
      recipient,
      o.recipient,
    )) {
      return false;
    }
    return true;
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
    required this.valueX,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Task.input',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory TaskInput.empty() => TaskInput(
        type: CodeableConcept.empty(),
        valueX: FhirBase64Binary.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TaskInput.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Task.input';
    return TaskInput(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      )!,
      valueX: JsonParser.parsePolymorphic<ValueXTaskInput>(
        json,
        {
          'valueBase64Binary': FhirBase64Binary.fromJson,
          'valueBoolean': FhirBoolean.fromJson,
          'valueCanonical': FhirCanonical.fromJson,
          'valueCode': FhirCode.fromJson,
          'valueDate': FhirDate.fromJson,
          'valueDateTime': FhirDateTime.fromJson,
          'valueDecimal': FhirDecimal.fromJson,
          'valueId': FhirId.fromJson,
          'valueInstant': FhirInstant.fromJson,
          'valueInteger': FhirInteger.fromJson,
          'valueMarkdown': FhirMarkdown.fromJson,
          'valueOid': FhirOid.fromJson,
          'valuePositiveInt': FhirPositiveInt.fromJson,
          'valueString': FhirString.fromJson,
          'valueTime': FhirTime.fromJson,
          'valueUnsignedInt': FhirUnsignedInt.fromJson,
          'valueUri': FhirUri.fromJson,
          'valueUrl': FhirUrl.fromJson,
          'valueUuid': FhirUuid.fromJson,
          'valueAddress': Address.fromJson,
          'valueAge': Age.fromJson,
          'valueAnnotation': Annotation.fromJson,
          'valueAttachment': Attachment.fromJson,
          'valueCodeableConcept': CodeableConcept.fromJson,
          'valueCoding': Coding.fromJson,
          'valueContactPoint': ContactPoint.fromJson,
          'valueCount': Count.fromJson,
          'valueDistance': Distance.fromJson,
          'valueDuration': FhirDuration.fromJson,
          'valueHumanName': HumanName.fromJson,
          'valueIdentifier': Identifier.fromJson,
          'valueMoney': Money.fromJson,
          'valuePeriod': Period.fromJson,
          'valueQuantity': Quantity.fromJson,
          'valueRange': Range.fromJson,
          'valueRatio': Ratio.fromJson,
          'valueReference': Reference.fromJson,
          'valueSampledData': SampledData.fromJson,
          'valueSignature': Signature.fromJson,
          'valueTiming': Timing.fromJson,
          'valueContactDetail': ContactDetail.fromJson,
          'valueContributor': Contributor.fromJson,
          'valueDataRequirement': DataRequirement.fromJson,
          'valueExpression': FhirExpression.fromJson,
          'valueParameterDefinition': ParameterDefinition.fromJson,
          'valueRelatedArtifact': RelatedArtifact.fromJson,
          'valueTriggerDefinition': TriggerDefinition.fromJson,
          'valueUsageContext': UsageContext.fromJson,
          'valueDosage': Dosage.fromJson,
          'valueMeta': FhirMeta.fromJson,
        },
        objectPath,
      )!,
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
    if (json is Map<String, dynamic>) {
      return TaskInput.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'TaskInput';

  /// [type]
  /// A code or description indicating how the input is intended to be used
  /// as part of the task execution.
  final CodeableConcept type;

  /// [valueX]
  /// The value of the input parameter as a basic type.
  final ValueXTaskInput valueX;

  /// Getter for [valueBase64Binary] as a FhirBase64Binary
  FhirBase64Binary? get valueBase64Binary => valueX.isAs<FhirBase64Binary>();

  /// Getter for [valueBoolean] as a FhirBoolean
  FhirBoolean? get valueBoolean => valueX.isAs<FhirBoolean>();

  /// Getter for [valueCanonical] as a FhirCanonical
  FhirCanonical? get valueCanonical => valueX.isAs<FhirCanonical>();

  /// Getter for [valueCode] as a FhirCode
  FhirCode? get valueCode => valueX.isAs<FhirCode>();

  /// Getter for [valueDate] as a FhirDate
  FhirDate? get valueDate => valueX.isAs<FhirDate>();

  /// Getter for [valueDateTime] as a FhirDateTime
  FhirDateTime? get valueDateTime => valueX.isAs<FhirDateTime>();

  /// Getter for [valueDecimal] as a FhirDecimal
  FhirDecimal? get valueDecimal => valueX.isAs<FhirDecimal>();

  /// Getter for [valueId] as a FhirId
  FhirId? get valueId => valueX.isAs<FhirId>();

  /// Getter for [valueInstant] as a FhirInstant
  FhirInstant? get valueInstant => valueX.isAs<FhirInstant>();

  /// Getter for [valueInteger] as a FhirInteger
  FhirInteger? get valueInteger => valueX.isAs<FhirInteger>();

  /// Getter for [valueMarkdown] as a FhirMarkdown
  FhirMarkdown? get valueMarkdown => valueX.isAs<FhirMarkdown>();

  /// Getter for [valueOid] as a FhirOid
  FhirOid? get valueOid => valueX.isAs<FhirOid>();

  /// Getter for [valuePositiveInt] as a FhirPositiveInt
  FhirPositiveInt? get valuePositiveInt => valueX.isAs<FhirPositiveInt>();

  /// Getter for [valueString] as a FhirString
  FhirString? get valueString => valueX.isAs<FhirString>();

  /// Getter for [valueTime] as a FhirTime
  FhirTime? get valueTime => valueX.isAs<FhirTime>();

  /// Getter for [valueUnsignedInt] as a FhirUnsignedInt
  FhirUnsignedInt? get valueUnsignedInt => valueX.isAs<FhirUnsignedInt>();

  /// Getter for [valueUri] as a FhirUri
  FhirUri? get valueUri => valueX.isAs<FhirUri>();

  /// Getter for [valueUrl] as a FhirUrl
  FhirUrl? get valueUrl => valueX.isAs<FhirUrl>();

  /// Getter for [valueUuid] as a FhirUuid
  FhirUuid? get valueUuid => valueX.isAs<FhirUuid>();

  /// Getter for [valueAddress] as a Address
  Address? get valueAddress => valueX.isAs<Address>();

  /// Getter for [valueAge] as a Age
  Age? get valueAge => valueX.isAs<Age>();

  /// Getter for [valueAnnotation] as a Annotation
  Annotation? get valueAnnotation => valueX.isAs<Annotation>();

  /// Getter for [valueAttachment] as a Attachment
  Attachment? get valueAttachment => valueX.isAs<Attachment>();

  /// Getter for [valueCodeableConcept] as a CodeableConcept
  CodeableConcept? get valueCodeableConcept => valueX.isAs<CodeableConcept>();

  /// Getter for [valueCoding] as a Coding
  Coding? get valueCoding => valueX.isAs<Coding>();

  /// Getter for [valueContactPoint] as a ContactPoint
  ContactPoint? get valueContactPoint => valueX.isAs<ContactPoint>();

  /// Getter for [valueCount] as a Count
  Count? get valueCount => valueX.isAs<Count>();

  /// Getter for [valueDistance] as a Distance
  Distance? get valueDistance => valueX.isAs<Distance>();

  /// Getter for [valueDuration] as a FhirDuration
  FhirDuration? get valueDuration => valueX.isAs<FhirDuration>();

  /// Getter for [valueHumanName] as a HumanName
  HumanName? get valueHumanName => valueX.isAs<HumanName>();

  /// Getter for [valueIdentifier] as a Identifier
  Identifier? get valueIdentifier => valueX.isAs<Identifier>();

  /// Getter for [valueMoney] as a Money
  Money? get valueMoney => valueX.isAs<Money>();

  /// Getter for [valuePeriod] as a Period
  Period? get valuePeriod => valueX.isAs<Period>();

  /// Getter for [valueQuantity] as a Quantity
  Quantity? get valueQuantity => valueX.isAs<Quantity>();

  /// Getter for [valueRange] as a Range
  Range? get valueRange => valueX.isAs<Range>();

  /// Getter for [valueRatio] as a Ratio
  Ratio? get valueRatio => valueX.isAs<Ratio>();

  /// Getter for [valueReference] as a Reference
  Reference? get valueReference => valueX.isAs<Reference>();

  /// Getter for [valueSampledData] as a SampledData
  SampledData? get valueSampledData => valueX.isAs<SampledData>();

  /// Getter for [valueSignature] as a Signature
  Signature? get valueSignature => valueX.isAs<Signature>();

  /// Getter for [valueTiming] as a Timing
  Timing? get valueTiming => valueX.isAs<Timing>();

  /// Getter for [valueContactDetail] as a ContactDetail
  ContactDetail? get valueContactDetail => valueX.isAs<ContactDetail>();

  /// Getter for [valueContributor] as a Contributor
  Contributor? get valueContributor => valueX.isAs<Contributor>();

  /// Getter for [valueDataRequirement] as a DataRequirement
  DataRequirement? get valueDataRequirement => valueX.isAs<DataRequirement>();

  /// Getter for [valueExpression] as a FhirExpression
  FhirExpression? get valueExpression => valueX.isAs<FhirExpression>();

  /// Getter for [valueParameterDefinition] as a ParameterDefinition
  ParameterDefinition? get valueParameterDefinition =>
      valueX.isAs<ParameterDefinition>();

  /// Getter for [valueRelatedArtifact] as a RelatedArtifact
  RelatedArtifact? get valueRelatedArtifact => valueX.isAs<RelatedArtifact>();

  /// Getter for [valueTriggerDefinition] as a TriggerDefinition
  TriggerDefinition? get valueTriggerDefinition =>
      valueX.isAs<TriggerDefinition>();

  /// Getter for [valueUsageContext] as a UsageContext
  UsageContext? get valueUsageContext => valueX.isAs<UsageContext>();

  /// Getter for [valueDosage] as a Dosage
  Dosage? get valueDosage => valueX.isAs<Dosage>();

  /// Getter for [valueMeta] as a FhirMeta
  FhirMeta? get valueMeta => valueX.isAs<FhirMeta>();
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('type', type);
    final valueXFhirType = valueX.fhirType;
    addField('value${valueXFhirType.capitalize()}', valueX);

    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'type',
      'valueX',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'type':
        fields.add(type);
      case 'value':
        fields.add(valueX);
      case 'valueX':
        fields.add(valueX);
      case 'valueBase64Binary':
        if (valueX is FhirBase64Binary) {
          fields.add(valueX);
        }
      case 'valueBoolean':
        if (valueX is FhirBoolean) {
          fields.add(valueX);
        }
      case 'valueCanonical':
        if (valueX is FhirCanonical) {
          fields.add(valueX);
        }
      case 'valueCode':
        if (valueX is FhirCode) {
          fields.add(valueX);
        }
      case 'valueDate':
        if (valueX is FhirDate) {
          fields.add(valueX);
        }
      case 'valueDateTime':
        if (valueX is FhirDateTime) {
          fields.add(valueX);
        }
      case 'valueDecimal':
        if (valueX is FhirDecimal) {
          fields.add(valueX);
        }
      case 'valueId':
        if (valueX is FhirId) {
          fields.add(valueX);
        }
      case 'valueInstant':
        if (valueX is FhirInstant) {
          fields.add(valueX);
        }
      case 'valueInteger':
        if (valueX is FhirInteger) {
          fields.add(valueX);
        }
      case 'valueMarkdown':
        if (valueX is FhirMarkdown) {
          fields.add(valueX);
        }
      case 'valueOid':
        if (valueX is FhirOid) {
          fields.add(valueX);
        }
      case 'valuePositiveInt':
        if (valueX is FhirPositiveInt) {
          fields.add(valueX);
        }
      case 'valueString':
        if (valueX is FhirString) {
          fields.add(valueX);
        }
      case 'valueTime':
        if (valueX is FhirTime) {
          fields.add(valueX);
        }
      case 'valueUnsignedInt':
        if (valueX is FhirUnsignedInt) {
          fields.add(valueX);
        }
      case 'valueUri':
        if (valueX is FhirUri) {
          fields.add(valueX);
        }
      case 'valueUrl':
        if (valueX is FhirUrl) {
          fields.add(valueX);
        }
      case 'valueUuid':
        if (valueX is FhirUuid) {
          fields.add(valueX);
        }
      case 'valueAddress':
        if (valueX is Address) {
          fields.add(valueX);
        }
      case 'valueAge':
        if (valueX is Age) {
          fields.add(valueX);
        }
      case 'valueAnnotation':
        if (valueX is Annotation) {
          fields.add(valueX);
        }
      case 'valueAttachment':
        if (valueX is Attachment) {
          fields.add(valueX);
        }
      case 'valueCodeableConcept':
        if (valueX is CodeableConcept) {
          fields.add(valueX);
        }
      case 'valueCoding':
        if (valueX is Coding) {
          fields.add(valueX);
        }
      case 'valueContactPoint':
        if (valueX is ContactPoint) {
          fields.add(valueX);
        }
      case 'valueCount':
        if (valueX is Count) {
          fields.add(valueX);
        }
      case 'valueDistance':
        if (valueX is Distance) {
          fields.add(valueX);
        }
      case 'valueDuration':
        if (valueX is FhirDuration) {
          fields.add(valueX);
        }
      case 'valueHumanName':
        if (valueX is HumanName) {
          fields.add(valueX);
        }
      case 'valueIdentifier':
        if (valueX is Identifier) {
          fields.add(valueX);
        }
      case 'valueMoney':
        if (valueX is Money) {
          fields.add(valueX);
        }
      case 'valuePeriod':
        if (valueX is Period) {
          fields.add(valueX);
        }
      case 'valueQuantity':
        if (valueX is Quantity) {
          fields.add(valueX);
        }
      case 'valueRange':
        if (valueX is Range) {
          fields.add(valueX);
        }
      case 'valueRatio':
        if (valueX is Ratio) {
          fields.add(valueX);
        }
      case 'valueReference':
        if (valueX is Reference) {
          fields.add(valueX);
        }
      case 'valueSampledData':
        if (valueX is SampledData) {
          fields.add(valueX);
        }
      case 'valueSignature':
        if (valueX is Signature) {
          fields.add(valueX);
        }
      case 'valueTiming':
        if (valueX is Timing) {
          fields.add(valueX);
        }
      case 'valueContactDetail':
        if (valueX is ContactDetail) {
          fields.add(valueX);
        }
      case 'valueContributor':
        if (valueX is Contributor) {
          fields.add(valueX);
        }
      case 'valueDataRequirement':
        if (valueX is DataRequirement) {
          fields.add(valueX);
        }
      case 'valueExpression':
        if (valueX is FhirExpression) {
          fields.add(valueX);
        }
      case 'valueParameterDefinition':
        if (valueX is ParameterDefinition) {
          fields.add(valueX);
        }
      case 'valueRelatedArtifact':
        if (valueX is RelatedArtifact) {
          fields.add(valueX);
        }
      case 'valueTriggerDefinition':
        if (valueX is TriggerDefinition) {
          fields.add(valueX);
        }
      case 'valueUsageContext':
        if (valueX is UsageContext) {
          fields.add(valueX);
        }
      case 'valueDosage':
        if (valueX is Dosage) {
          fields.add(valueX);
        }
      case 'valueMeta':
        if (valueX is FhirMeta) {
          fields.add(valueX);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a property by name, but only if that propery is a list. If it
  /// is not a list, it returns null. If it is a list, but the list is null or
  /// if the list is empty (which really shouldn't happen in FHIR), it returns
  /// an empty list.
  @override
  List<FhirBase>? getListChildByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    switch (fieldName) {
      case 'extension':
        if (extension_ != null) {
          return extension_!;
        } else {
          return <FhirBase>[];
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          return modifierExtension!;
        } else {
          return <FhirBase>[];
        }
    }
    return null;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueX':
        {
          if (child is ValueXTaskInput) {
            // child is e.g. SubjectX union
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirBase64Binary':
        {
          if (child is FhirBase64Binary) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirBoolean':
        {
          if (child is FhirBoolean) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirCanonical':
        {
          if (child is FhirCanonical) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirCode':
        {
          if (child is FhirCode) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirDate':
        {
          if (child is FhirDate) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirDateTime':
        {
          if (child is FhirDateTime) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirDecimal':
        {
          if (child is FhirDecimal) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirId':
        {
          if (child is FhirId) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirInstant':
        {
          if (child is FhirInstant) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirInteger':
        {
          if (child is FhirInteger) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirMarkdown':
        {
          if (child is FhirMarkdown) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirOid':
        {
          if (child is FhirOid) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirPositiveInt':
        {
          if (child is FhirPositiveInt) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirString':
        {
          if (child is FhirString) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirTime':
        {
          if (child is FhirTime) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirUnsignedInt':
        {
          if (child is FhirUnsignedInt) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirUri':
        {
          if (child is FhirUri) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirUrl':
        {
          if (child is FhirUrl) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirUuid':
        {
          if (child is FhirUuid) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueAddress':
        {
          if (child is Address) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueAge':
        {
          if (child is Age) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueAnnotation':
        {
          if (child is Annotation) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueAttachment':
        {
          if (child is Attachment) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueCodeableConcept':
        {
          if (child is CodeableConcept) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueCoding':
        {
          if (child is Coding) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueContactPoint':
        {
          if (child is ContactPoint) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueCount':
        {
          if (child is Count) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueDistance':
        {
          if (child is Distance) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirDuration':
        {
          if (child is FhirDuration) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueHumanName':
        {
          if (child is HumanName) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueIdentifier':
        {
          if (child is Identifier) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueMoney':
        {
          if (child is Money) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valuePeriod':
        {
          if (child is Period) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueQuantity':
        {
          if (child is Quantity) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueRange':
        {
          if (child is Range) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueRatio':
        {
          if (child is Ratio) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueReference':
        {
          if (child is Reference) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueSampledData':
        {
          if (child is SampledData) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueSignature':
        {
          if (child is Signature) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueTiming':
        {
          if (child is Timing) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueContactDetail':
        {
          if (child is ContactDetail) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueContributor':
        {
          if (child is Contributor) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueDataRequirement':
        {
          if (child is DataRequirement) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirExpression':
        {
          if (child is FhirExpression) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueParameterDefinition':
        {
          if (child is ParameterDefinition) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueRelatedArtifact':
        {
          if (child is RelatedArtifact) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueTriggerDefinition':
        {
          if (child is TriggerDefinition) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueUsageContext':
        {
          if (child is UsageContext) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueDosage':
        {
          if (child is Dosage) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirMeta':
        {
          if (child is FhirMeta) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'type':
        return ['CodeableConcept'];
      case 'value':
      case 'valueX':
        return [
          'FhirBase64Binary',
          'FhirBoolean',
          'FhirCanonical',
          'FhirCode',
          'FhirDate',
          'FhirDateTime',
          'FhirDecimal',
          'FhirId',
          'FhirInstant',
          'FhirInteger',
          'FhirMarkdown',
          'FhirOid',
          'FhirPositiveInt',
          'FhirString',
          'FhirTime',
          'FhirUnsignedInt',
          'FhirUri',
          'FhirUrl',
          'FhirUuid',
          'Address',
          'Age',
          'Annotation',
          'Attachment',
          'CodeableConcept',
          'Coding',
          'ContactPoint',
          'Count',
          'Distance',
          'FhirDuration',
          'HumanName',
          'Identifier',
          'Money',
          'Period',
          'Quantity',
          'Range',
          'Ratio',
          'Reference',
          'SampledData',
          'Signature',
          'Timing',
          'ContactDetail',
          'Contributor',
          'DataRequirement',
          'FhirExpression',
          'ParameterDefinition',
          'RelatedArtifact',
          'TriggerDefinition',
          'UsageContext',
          'Dosage',
          'FhirMeta',
        ];
      case 'valueBase64Binary':
        return ['FhirBase64Binary'];
      case 'valueBoolean':
        return ['FhirBoolean'];
      case 'valueCanonical':
        return ['FhirCanonical'];
      case 'valueCode':
        return ['FhirCode'];
      case 'valueDate':
        return ['FhirDate'];
      case 'valueDateTime':
        return ['FhirDateTime'];
      case 'valueDecimal':
        return ['FhirDecimal'];
      case 'valueId':
        return ['FhirId'];
      case 'valueInstant':
        return ['FhirInstant'];
      case 'valueInteger':
        return ['FhirInteger'];
      case 'valueMarkdown':
        return ['FhirMarkdown'];
      case 'valueOid':
        return ['FhirOid'];
      case 'valuePositiveInt':
        return ['FhirPositiveInt'];
      case 'valueString':
        return ['FhirString'];
      case 'valueTime':
        return ['FhirTime'];
      case 'valueUnsignedInt':
        return ['FhirUnsignedInt'];
      case 'valueUri':
        return ['FhirUri'];
      case 'valueUrl':
        return ['FhirUrl'];
      case 'valueUuid':
        return ['FhirUuid'];
      case 'valueAddress':
        return ['Address'];
      case 'valueAge':
        return ['Age'];
      case 'valueAnnotation':
        return ['Annotation'];
      case 'valueAttachment':
        return ['Attachment'];
      case 'valueCodeableConcept':
        return ['CodeableConcept'];
      case 'valueCoding':
        return ['Coding'];
      case 'valueContactPoint':
        return ['ContactPoint'];
      case 'valueCount':
        return ['Count'];
      case 'valueDistance':
        return ['Distance'];
      case 'valueDuration':
        return ['FhirDuration'];
      case 'valueHumanName':
        return ['HumanName'];
      case 'valueIdentifier':
        return ['Identifier'];
      case 'valueMoney':
        return ['Money'];
      case 'valuePeriod':
        return ['Period'];
      case 'valueQuantity':
        return ['Quantity'];
      case 'valueRange':
        return ['Range'];
      case 'valueRatio':
        return ['Ratio'];
      case 'valueReference':
        return ['Reference'];
      case 'valueSampledData':
        return ['SampledData'];
      case 'valueSignature':
        return ['Signature'];
      case 'valueTiming':
        return ['Timing'];
      case 'valueContactDetail':
        return ['ContactDetail'];
      case 'valueContributor':
        return ['Contributor'];
      case 'valueDataRequirement':
        return ['DataRequirement'];
      case 'valueExpression':
        return ['FhirExpression'];
      case 'valueParameterDefinition':
        return ['ParameterDefinition'];
      case 'valueRelatedArtifact':
        return ['RelatedArtifact'];
      case 'valueTriggerDefinition':
        return ['TriggerDefinition'];
      case 'valueUsageContext':
        return ['UsageContext'];
      case 'valueDosage':
        return ['Dosage'];
      case 'valueMeta':
        return ['FhirMeta'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TaskInput]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  TaskInput createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'type':
        {
          return copyWith(type: CodeableConcept.empty());
        }
      case 'value':
      case 'valueX':
      case 'valueBase64Binary':
        {
          return copyWith(valueX: FhirBase64Binary.empty());
        }
      case 'valueBoolean':
        {
          return copyWith(valueX: FhirBoolean.empty());
        }
      case 'valueCanonical':
        {
          return copyWith(valueX: FhirCanonical.empty());
        }
      case 'valueCode':
        {
          return copyWith(valueX: FhirCode.empty());
        }
      case 'valueDate':
        {
          return copyWith(valueX: FhirDate.empty());
        }
      case 'valueDateTime':
        {
          return copyWith(valueX: FhirDateTime.empty());
        }
      case 'valueDecimal':
        {
          return copyWith(valueX: FhirDecimal.empty());
        }
      case 'valueId':
        {
          return copyWith(valueX: FhirId.empty());
        }
      case 'valueInstant':
        {
          return copyWith(valueX: FhirInstant.empty());
        }
      case 'valueInteger':
        {
          return copyWith(valueX: FhirInteger.empty());
        }
      case 'valueMarkdown':
        {
          return copyWith(valueX: FhirMarkdown.empty());
        }
      case 'valueOid':
        {
          return copyWith(valueX: FhirOid.empty());
        }
      case 'valuePositiveInt':
        {
          return copyWith(valueX: FhirPositiveInt.empty());
        }
      case 'valueString':
        {
          return copyWith(valueX: FhirString.empty());
        }
      case 'valueTime':
        {
          return copyWith(valueX: FhirTime.empty());
        }
      case 'valueUnsignedInt':
        {
          return copyWith(valueX: FhirUnsignedInt.empty());
        }
      case 'valueUri':
        {
          return copyWith(valueX: FhirUri.empty());
        }
      case 'valueUrl':
        {
          return copyWith(valueX: FhirUrl.empty());
        }
      case 'valueUuid':
        {
          return copyWith(valueX: FhirUuid.empty());
        }
      case 'valueAddress':
        {
          return copyWith(valueX: Address.empty());
        }
      case 'valueAge':
        {
          return copyWith(valueX: Age.empty());
        }
      case 'valueAnnotation':
        {
          return copyWith(valueX: Annotation.empty());
        }
      case 'valueAttachment':
        {
          return copyWith(valueX: Attachment.empty());
        }
      case 'valueCodeableConcept':
        {
          return copyWith(valueX: CodeableConcept.empty());
        }
      case 'valueCoding':
        {
          return copyWith(valueX: Coding.empty());
        }
      case 'valueContactPoint':
        {
          return copyWith(valueX: ContactPoint.empty());
        }
      case 'valueCount':
        {
          return copyWith(valueX: Count.empty());
        }
      case 'valueDistance':
        {
          return copyWith(valueX: Distance.empty());
        }
      case 'valueDuration':
        {
          return copyWith(valueX: FhirDuration.empty());
        }
      case 'valueHumanName':
        {
          return copyWith(valueX: HumanName.empty());
        }
      case 'valueIdentifier':
        {
          return copyWith(valueX: Identifier.empty());
        }
      case 'valueMoney':
        {
          return copyWith(valueX: Money.empty());
        }
      case 'valuePeriod':
        {
          return copyWith(valueX: Period.empty());
        }
      case 'valueQuantity':
        {
          return copyWith(valueX: Quantity.empty());
        }
      case 'valueRange':
        {
          return copyWith(valueX: Range.empty());
        }
      case 'valueRatio':
        {
          return copyWith(valueX: Ratio.empty());
        }
      case 'valueReference':
        {
          return copyWith(valueX: Reference.empty());
        }
      case 'valueSampledData':
        {
          return copyWith(valueX: SampledData.empty());
        }
      case 'valueSignature':
        {
          return copyWith(valueX: Signature.empty());
        }
      case 'valueTiming':
        {
          return copyWith(valueX: Timing.empty());
        }
      case 'valueContactDetail':
        {
          return copyWith(valueX: ContactDetail.empty());
        }
      case 'valueContributor':
        {
          return copyWith(valueX: Contributor.empty());
        }
      case 'valueDataRequirement':
        {
          return copyWith(valueX: DataRequirement.empty());
        }
      case 'valueExpression':
        {
          return copyWith(valueX: FhirExpression.empty());
        }
      case 'valueParameterDefinition':
        {
          return copyWith(valueX: ParameterDefinition.empty());
        }
      case 'valueRelatedArtifact':
        {
          return copyWith(valueX: RelatedArtifact.empty());
        }
      case 'valueTriggerDefinition':
        {
          return copyWith(valueX: TriggerDefinition.empty());
        }
      case 'valueUsageContext':
        {
          return copyWith(valueX: UsageContext.empty());
        }
      case 'valueDosage':
        {
          return copyWith(valueX: Dosage.empty());
        }
      case 'valueMeta':
        {
          return copyWith(valueX: FhirMeta.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  TaskInput clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
  }) {
    return TaskInput(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      type: type,
      valueX: valueX,
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
    ValueXTaskInput? valueX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return TaskInput(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      valueX: valueX?.copyWith(
            objectPath: '$newObjectPath.valueX',
          ) as ValueXTaskInput? ??
          this.valueX,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! TaskInput) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!equalsDeepWithNull(valueX, o.valueX)) {
      return false;
    }
    return true;
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
    required this.valueX,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Task.output',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory TaskOutput.empty() => TaskOutput(
        type: CodeableConcept.empty(),
        valueX: FhirBase64Binary.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TaskOutput.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Task.output';
    return TaskOutput(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      )!,
      valueX: JsonParser.parsePolymorphic<ValueXTaskOutput>(
        json,
        {
          'valueBase64Binary': FhirBase64Binary.fromJson,
          'valueBoolean': FhirBoolean.fromJson,
          'valueCanonical': FhirCanonical.fromJson,
          'valueCode': FhirCode.fromJson,
          'valueDate': FhirDate.fromJson,
          'valueDateTime': FhirDateTime.fromJson,
          'valueDecimal': FhirDecimal.fromJson,
          'valueId': FhirId.fromJson,
          'valueInstant': FhirInstant.fromJson,
          'valueInteger': FhirInteger.fromJson,
          'valueMarkdown': FhirMarkdown.fromJson,
          'valueOid': FhirOid.fromJson,
          'valuePositiveInt': FhirPositiveInt.fromJson,
          'valueString': FhirString.fromJson,
          'valueTime': FhirTime.fromJson,
          'valueUnsignedInt': FhirUnsignedInt.fromJson,
          'valueUri': FhirUri.fromJson,
          'valueUrl': FhirUrl.fromJson,
          'valueUuid': FhirUuid.fromJson,
          'valueAddress': Address.fromJson,
          'valueAge': Age.fromJson,
          'valueAnnotation': Annotation.fromJson,
          'valueAttachment': Attachment.fromJson,
          'valueCodeableConcept': CodeableConcept.fromJson,
          'valueCoding': Coding.fromJson,
          'valueContactPoint': ContactPoint.fromJson,
          'valueCount': Count.fromJson,
          'valueDistance': Distance.fromJson,
          'valueDuration': FhirDuration.fromJson,
          'valueHumanName': HumanName.fromJson,
          'valueIdentifier': Identifier.fromJson,
          'valueMoney': Money.fromJson,
          'valuePeriod': Period.fromJson,
          'valueQuantity': Quantity.fromJson,
          'valueRange': Range.fromJson,
          'valueRatio': Ratio.fromJson,
          'valueReference': Reference.fromJson,
          'valueSampledData': SampledData.fromJson,
          'valueSignature': Signature.fromJson,
          'valueTiming': Timing.fromJson,
          'valueContactDetail': ContactDetail.fromJson,
          'valueContributor': Contributor.fromJson,
          'valueDataRequirement': DataRequirement.fromJson,
          'valueExpression': FhirExpression.fromJson,
          'valueParameterDefinition': ParameterDefinition.fromJson,
          'valueRelatedArtifact': RelatedArtifact.fromJson,
          'valueTriggerDefinition': TriggerDefinition.fromJson,
          'valueUsageContext': UsageContext.fromJson,
          'valueDosage': Dosage.fromJson,
          'valueMeta': FhirMeta.fromJson,
        },
        objectPath,
      )!,
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
    if (json is Map<String, dynamic>) {
      return TaskOutput.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'TaskOutput';

  /// [type]
  /// The name of the Output parameter.
  final CodeableConcept type;

  /// [valueX]
  /// The value of the Output parameter as a basic type.
  final ValueXTaskOutput valueX;

  /// Getter for [valueBase64Binary] as a FhirBase64Binary
  FhirBase64Binary? get valueBase64Binary => valueX.isAs<FhirBase64Binary>();

  /// Getter for [valueBoolean] as a FhirBoolean
  FhirBoolean? get valueBoolean => valueX.isAs<FhirBoolean>();

  /// Getter for [valueCanonical] as a FhirCanonical
  FhirCanonical? get valueCanonical => valueX.isAs<FhirCanonical>();

  /// Getter for [valueCode] as a FhirCode
  FhirCode? get valueCode => valueX.isAs<FhirCode>();

  /// Getter for [valueDate] as a FhirDate
  FhirDate? get valueDate => valueX.isAs<FhirDate>();

  /// Getter for [valueDateTime] as a FhirDateTime
  FhirDateTime? get valueDateTime => valueX.isAs<FhirDateTime>();

  /// Getter for [valueDecimal] as a FhirDecimal
  FhirDecimal? get valueDecimal => valueX.isAs<FhirDecimal>();

  /// Getter for [valueId] as a FhirId
  FhirId? get valueId => valueX.isAs<FhirId>();

  /// Getter for [valueInstant] as a FhirInstant
  FhirInstant? get valueInstant => valueX.isAs<FhirInstant>();

  /// Getter for [valueInteger] as a FhirInteger
  FhirInteger? get valueInteger => valueX.isAs<FhirInteger>();

  /// Getter for [valueMarkdown] as a FhirMarkdown
  FhirMarkdown? get valueMarkdown => valueX.isAs<FhirMarkdown>();

  /// Getter for [valueOid] as a FhirOid
  FhirOid? get valueOid => valueX.isAs<FhirOid>();

  /// Getter for [valuePositiveInt] as a FhirPositiveInt
  FhirPositiveInt? get valuePositiveInt => valueX.isAs<FhirPositiveInt>();

  /// Getter for [valueString] as a FhirString
  FhirString? get valueString => valueX.isAs<FhirString>();

  /// Getter for [valueTime] as a FhirTime
  FhirTime? get valueTime => valueX.isAs<FhirTime>();

  /// Getter for [valueUnsignedInt] as a FhirUnsignedInt
  FhirUnsignedInt? get valueUnsignedInt => valueX.isAs<FhirUnsignedInt>();

  /// Getter for [valueUri] as a FhirUri
  FhirUri? get valueUri => valueX.isAs<FhirUri>();

  /// Getter for [valueUrl] as a FhirUrl
  FhirUrl? get valueUrl => valueX.isAs<FhirUrl>();

  /// Getter for [valueUuid] as a FhirUuid
  FhirUuid? get valueUuid => valueX.isAs<FhirUuid>();

  /// Getter for [valueAddress] as a Address
  Address? get valueAddress => valueX.isAs<Address>();

  /// Getter for [valueAge] as a Age
  Age? get valueAge => valueX.isAs<Age>();

  /// Getter for [valueAnnotation] as a Annotation
  Annotation? get valueAnnotation => valueX.isAs<Annotation>();

  /// Getter for [valueAttachment] as a Attachment
  Attachment? get valueAttachment => valueX.isAs<Attachment>();

  /// Getter for [valueCodeableConcept] as a CodeableConcept
  CodeableConcept? get valueCodeableConcept => valueX.isAs<CodeableConcept>();

  /// Getter for [valueCoding] as a Coding
  Coding? get valueCoding => valueX.isAs<Coding>();

  /// Getter for [valueContactPoint] as a ContactPoint
  ContactPoint? get valueContactPoint => valueX.isAs<ContactPoint>();

  /// Getter for [valueCount] as a Count
  Count? get valueCount => valueX.isAs<Count>();

  /// Getter for [valueDistance] as a Distance
  Distance? get valueDistance => valueX.isAs<Distance>();

  /// Getter for [valueDuration] as a FhirDuration
  FhirDuration? get valueDuration => valueX.isAs<FhirDuration>();

  /// Getter for [valueHumanName] as a HumanName
  HumanName? get valueHumanName => valueX.isAs<HumanName>();

  /// Getter for [valueIdentifier] as a Identifier
  Identifier? get valueIdentifier => valueX.isAs<Identifier>();

  /// Getter for [valueMoney] as a Money
  Money? get valueMoney => valueX.isAs<Money>();

  /// Getter for [valuePeriod] as a Period
  Period? get valuePeriod => valueX.isAs<Period>();

  /// Getter for [valueQuantity] as a Quantity
  Quantity? get valueQuantity => valueX.isAs<Quantity>();

  /// Getter for [valueRange] as a Range
  Range? get valueRange => valueX.isAs<Range>();

  /// Getter for [valueRatio] as a Ratio
  Ratio? get valueRatio => valueX.isAs<Ratio>();

  /// Getter for [valueReference] as a Reference
  Reference? get valueReference => valueX.isAs<Reference>();

  /// Getter for [valueSampledData] as a SampledData
  SampledData? get valueSampledData => valueX.isAs<SampledData>();

  /// Getter for [valueSignature] as a Signature
  Signature? get valueSignature => valueX.isAs<Signature>();

  /// Getter for [valueTiming] as a Timing
  Timing? get valueTiming => valueX.isAs<Timing>();

  /// Getter for [valueContactDetail] as a ContactDetail
  ContactDetail? get valueContactDetail => valueX.isAs<ContactDetail>();

  /// Getter for [valueContributor] as a Contributor
  Contributor? get valueContributor => valueX.isAs<Contributor>();

  /// Getter for [valueDataRequirement] as a DataRequirement
  DataRequirement? get valueDataRequirement => valueX.isAs<DataRequirement>();

  /// Getter for [valueExpression] as a FhirExpression
  FhirExpression? get valueExpression => valueX.isAs<FhirExpression>();

  /// Getter for [valueParameterDefinition] as a ParameterDefinition
  ParameterDefinition? get valueParameterDefinition =>
      valueX.isAs<ParameterDefinition>();

  /// Getter for [valueRelatedArtifact] as a RelatedArtifact
  RelatedArtifact? get valueRelatedArtifact => valueX.isAs<RelatedArtifact>();

  /// Getter for [valueTriggerDefinition] as a TriggerDefinition
  TriggerDefinition? get valueTriggerDefinition =>
      valueX.isAs<TriggerDefinition>();

  /// Getter for [valueUsageContext] as a UsageContext
  UsageContext? get valueUsageContext => valueX.isAs<UsageContext>();

  /// Getter for [valueDosage] as a Dosage
  Dosage? get valueDosage => valueX.isAs<Dosage>();

  /// Getter for [valueMeta] as a FhirMeta
  FhirMeta? get valueMeta => valueX.isAs<FhirMeta>();
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('type', type);
    final valueXFhirType = valueX.fhirType;
    addField('value${valueXFhirType.capitalize()}', valueX);

    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'type',
      'valueX',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'type':
        fields.add(type);
      case 'value':
        fields.add(valueX);
      case 'valueX':
        fields.add(valueX);
      case 'valueBase64Binary':
        if (valueX is FhirBase64Binary) {
          fields.add(valueX);
        }
      case 'valueBoolean':
        if (valueX is FhirBoolean) {
          fields.add(valueX);
        }
      case 'valueCanonical':
        if (valueX is FhirCanonical) {
          fields.add(valueX);
        }
      case 'valueCode':
        if (valueX is FhirCode) {
          fields.add(valueX);
        }
      case 'valueDate':
        if (valueX is FhirDate) {
          fields.add(valueX);
        }
      case 'valueDateTime':
        if (valueX is FhirDateTime) {
          fields.add(valueX);
        }
      case 'valueDecimal':
        if (valueX is FhirDecimal) {
          fields.add(valueX);
        }
      case 'valueId':
        if (valueX is FhirId) {
          fields.add(valueX);
        }
      case 'valueInstant':
        if (valueX is FhirInstant) {
          fields.add(valueX);
        }
      case 'valueInteger':
        if (valueX is FhirInteger) {
          fields.add(valueX);
        }
      case 'valueMarkdown':
        if (valueX is FhirMarkdown) {
          fields.add(valueX);
        }
      case 'valueOid':
        if (valueX is FhirOid) {
          fields.add(valueX);
        }
      case 'valuePositiveInt':
        if (valueX is FhirPositiveInt) {
          fields.add(valueX);
        }
      case 'valueString':
        if (valueX is FhirString) {
          fields.add(valueX);
        }
      case 'valueTime':
        if (valueX is FhirTime) {
          fields.add(valueX);
        }
      case 'valueUnsignedInt':
        if (valueX is FhirUnsignedInt) {
          fields.add(valueX);
        }
      case 'valueUri':
        if (valueX is FhirUri) {
          fields.add(valueX);
        }
      case 'valueUrl':
        if (valueX is FhirUrl) {
          fields.add(valueX);
        }
      case 'valueUuid':
        if (valueX is FhirUuid) {
          fields.add(valueX);
        }
      case 'valueAddress':
        if (valueX is Address) {
          fields.add(valueX);
        }
      case 'valueAge':
        if (valueX is Age) {
          fields.add(valueX);
        }
      case 'valueAnnotation':
        if (valueX is Annotation) {
          fields.add(valueX);
        }
      case 'valueAttachment':
        if (valueX is Attachment) {
          fields.add(valueX);
        }
      case 'valueCodeableConcept':
        if (valueX is CodeableConcept) {
          fields.add(valueX);
        }
      case 'valueCoding':
        if (valueX is Coding) {
          fields.add(valueX);
        }
      case 'valueContactPoint':
        if (valueX is ContactPoint) {
          fields.add(valueX);
        }
      case 'valueCount':
        if (valueX is Count) {
          fields.add(valueX);
        }
      case 'valueDistance':
        if (valueX is Distance) {
          fields.add(valueX);
        }
      case 'valueDuration':
        if (valueX is FhirDuration) {
          fields.add(valueX);
        }
      case 'valueHumanName':
        if (valueX is HumanName) {
          fields.add(valueX);
        }
      case 'valueIdentifier':
        if (valueX is Identifier) {
          fields.add(valueX);
        }
      case 'valueMoney':
        if (valueX is Money) {
          fields.add(valueX);
        }
      case 'valuePeriod':
        if (valueX is Period) {
          fields.add(valueX);
        }
      case 'valueQuantity':
        if (valueX is Quantity) {
          fields.add(valueX);
        }
      case 'valueRange':
        if (valueX is Range) {
          fields.add(valueX);
        }
      case 'valueRatio':
        if (valueX is Ratio) {
          fields.add(valueX);
        }
      case 'valueReference':
        if (valueX is Reference) {
          fields.add(valueX);
        }
      case 'valueSampledData':
        if (valueX is SampledData) {
          fields.add(valueX);
        }
      case 'valueSignature':
        if (valueX is Signature) {
          fields.add(valueX);
        }
      case 'valueTiming':
        if (valueX is Timing) {
          fields.add(valueX);
        }
      case 'valueContactDetail':
        if (valueX is ContactDetail) {
          fields.add(valueX);
        }
      case 'valueContributor':
        if (valueX is Contributor) {
          fields.add(valueX);
        }
      case 'valueDataRequirement':
        if (valueX is DataRequirement) {
          fields.add(valueX);
        }
      case 'valueExpression':
        if (valueX is FhirExpression) {
          fields.add(valueX);
        }
      case 'valueParameterDefinition':
        if (valueX is ParameterDefinition) {
          fields.add(valueX);
        }
      case 'valueRelatedArtifact':
        if (valueX is RelatedArtifact) {
          fields.add(valueX);
        }
      case 'valueTriggerDefinition':
        if (valueX is TriggerDefinition) {
          fields.add(valueX);
        }
      case 'valueUsageContext':
        if (valueX is UsageContext) {
          fields.add(valueX);
        }
      case 'valueDosage':
        if (valueX is Dosage) {
          fields.add(valueX);
        }
      case 'valueMeta':
        if (valueX is FhirMeta) {
          fields.add(valueX);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a property by name, but only if that propery is a list. If it
  /// is not a list, it returns null. If it is a list, but the list is null or
  /// if the list is empty (which really shouldn't happen in FHIR), it returns
  /// an empty list.
  @override
  List<FhirBase>? getListChildByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    switch (fieldName) {
      case 'extension':
        if (extension_ != null) {
          return extension_!;
        } else {
          return <FhirBase>[];
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          return modifierExtension!;
        } else {
          return <FhirBase>[];
        }
    }
    return null;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueX':
        {
          if (child is ValueXTaskOutput) {
            // child is e.g. SubjectX union
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirBase64Binary':
        {
          if (child is FhirBase64Binary) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirBoolean':
        {
          if (child is FhirBoolean) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirCanonical':
        {
          if (child is FhirCanonical) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirCode':
        {
          if (child is FhirCode) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirDate':
        {
          if (child is FhirDate) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirDateTime':
        {
          if (child is FhirDateTime) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirDecimal':
        {
          if (child is FhirDecimal) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirId':
        {
          if (child is FhirId) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirInstant':
        {
          if (child is FhirInstant) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirInteger':
        {
          if (child is FhirInteger) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirMarkdown':
        {
          if (child is FhirMarkdown) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirOid':
        {
          if (child is FhirOid) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirPositiveInt':
        {
          if (child is FhirPositiveInt) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirString':
        {
          if (child is FhirString) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirTime':
        {
          if (child is FhirTime) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirUnsignedInt':
        {
          if (child is FhirUnsignedInt) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirUri':
        {
          if (child is FhirUri) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirUrl':
        {
          if (child is FhirUrl) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirUuid':
        {
          if (child is FhirUuid) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueAddress':
        {
          if (child is Address) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueAge':
        {
          if (child is Age) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueAnnotation':
        {
          if (child is Annotation) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueAttachment':
        {
          if (child is Attachment) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueCodeableConcept':
        {
          if (child is CodeableConcept) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueCoding':
        {
          if (child is Coding) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueContactPoint':
        {
          if (child is ContactPoint) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueCount':
        {
          if (child is Count) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueDistance':
        {
          if (child is Distance) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirDuration':
        {
          if (child is FhirDuration) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueHumanName':
        {
          if (child is HumanName) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueIdentifier':
        {
          if (child is Identifier) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueMoney':
        {
          if (child is Money) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valuePeriod':
        {
          if (child is Period) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueQuantity':
        {
          if (child is Quantity) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueRange':
        {
          if (child is Range) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueRatio':
        {
          if (child is Ratio) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueReference':
        {
          if (child is Reference) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueSampledData':
        {
          if (child is SampledData) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueSignature':
        {
          if (child is Signature) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueTiming':
        {
          if (child is Timing) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueContactDetail':
        {
          if (child is ContactDetail) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueContributor':
        {
          if (child is Contributor) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueDataRequirement':
        {
          if (child is DataRequirement) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirExpression':
        {
          if (child is FhirExpression) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueParameterDefinition':
        {
          if (child is ParameterDefinition) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueRelatedArtifact':
        {
          if (child is RelatedArtifact) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueTriggerDefinition':
        {
          if (child is TriggerDefinition) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueUsageContext':
        {
          if (child is UsageContext) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueDosage':
        {
          if (child is Dosage) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'valueFhirMeta':
        {
          if (child is FhirMeta) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'type':
        return ['CodeableConcept'];
      case 'value':
      case 'valueX':
        return [
          'FhirBase64Binary',
          'FhirBoolean',
          'FhirCanonical',
          'FhirCode',
          'FhirDate',
          'FhirDateTime',
          'FhirDecimal',
          'FhirId',
          'FhirInstant',
          'FhirInteger',
          'FhirMarkdown',
          'FhirOid',
          'FhirPositiveInt',
          'FhirString',
          'FhirTime',
          'FhirUnsignedInt',
          'FhirUri',
          'FhirUrl',
          'FhirUuid',
          'Address',
          'Age',
          'Annotation',
          'Attachment',
          'CodeableConcept',
          'Coding',
          'ContactPoint',
          'Count',
          'Distance',
          'FhirDuration',
          'HumanName',
          'Identifier',
          'Money',
          'Period',
          'Quantity',
          'Range',
          'Ratio',
          'Reference',
          'SampledData',
          'Signature',
          'Timing',
          'ContactDetail',
          'Contributor',
          'DataRequirement',
          'FhirExpression',
          'ParameterDefinition',
          'RelatedArtifact',
          'TriggerDefinition',
          'UsageContext',
          'Dosage',
          'FhirMeta',
        ];
      case 'valueBase64Binary':
        return ['FhirBase64Binary'];
      case 'valueBoolean':
        return ['FhirBoolean'];
      case 'valueCanonical':
        return ['FhirCanonical'];
      case 'valueCode':
        return ['FhirCode'];
      case 'valueDate':
        return ['FhirDate'];
      case 'valueDateTime':
        return ['FhirDateTime'];
      case 'valueDecimal':
        return ['FhirDecimal'];
      case 'valueId':
        return ['FhirId'];
      case 'valueInstant':
        return ['FhirInstant'];
      case 'valueInteger':
        return ['FhirInteger'];
      case 'valueMarkdown':
        return ['FhirMarkdown'];
      case 'valueOid':
        return ['FhirOid'];
      case 'valuePositiveInt':
        return ['FhirPositiveInt'];
      case 'valueString':
        return ['FhirString'];
      case 'valueTime':
        return ['FhirTime'];
      case 'valueUnsignedInt':
        return ['FhirUnsignedInt'];
      case 'valueUri':
        return ['FhirUri'];
      case 'valueUrl':
        return ['FhirUrl'];
      case 'valueUuid':
        return ['FhirUuid'];
      case 'valueAddress':
        return ['Address'];
      case 'valueAge':
        return ['Age'];
      case 'valueAnnotation':
        return ['Annotation'];
      case 'valueAttachment':
        return ['Attachment'];
      case 'valueCodeableConcept':
        return ['CodeableConcept'];
      case 'valueCoding':
        return ['Coding'];
      case 'valueContactPoint':
        return ['ContactPoint'];
      case 'valueCount':
        return ['Count'];
      case 'valueDistance':
        return ['Distance'];
      case 'valueDuration':
        return ['FhirDuration'];
      case 'valueHumanName':
        return ['HumanName'];
      case 'valueIdentifier':
        return ['Identifier'];
      case 'valueMoney':
        return ['Money'];
      case 'valuePeriod':
        return ['Period'];
      case 'valueQuantity':
        return ['Quantity'];
      case 'valueRange':
        return ['Range'];
      case 'valueRatio':
        return ['Ratio'];
      case 'valueReference':
        return ['Reference'];
      case 'valueSampledData':
        return ['SampledData'];
      case 'valueSignature':
        return ['Signature'];
      case 'valueTiming':
        return ['Timing'];
      case 'valueContactDetail':
        return ['ContactDetail'];
      case 'valueContributor':
        return ['Contributor'];
      case 'valueDataRequirement':
        return ['DataRequirement'];
      case 'valueExpression':
        return ['FhirExpression'];
      case 'valueParameterDefinition':
        return ['ParameterDefinition'];
      case 'valueRelatedArtifact':
        return ['RelatedArtifact'];
      case 'valueTriggerDefinition':
        return ['TriggerDefinition'];
      case 'valueUsageContext':
        return ['UsageContext'];
      case 'valueDosage':
        return ['Dosage'];
      case 'valueMeta':
        return ['FhirMeta'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [TaskOutput]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  TaskOutput createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'type':
        {
          return copyWith(type: CodeableConcept.empty());
        }
      case 'value':
      case 'valueX':
      case 'valueBase64Binary':
        {
          return copyWith(valueX: FhirBase64Binary.empty());
        }
      case 'valueBoolean':
        {
          return copyWith(valueX: FhirBoolean.empty());
        }
      case 'valueCanonical':
        {
          return copyWith(valueX: FhirCanonical.empty());
        }
      case 'valueCode':
        {
          return copyWith(valueX: FhirCode.empty());
        }
      case 'valueDate':
        {
          return copyWith(valueX: FhirDate.empty());
        }
      case 'valueDateTime':
        {
          return copyWith(valueX: FhirDateTime.empty());
        }
      case 'valueDecimal':
        {
          return copyWith(valueX: FhirDecimal.empty());
        }
      case 'valueId':
        {
          return copyWith(valueX: FhirId.empty());
        }
      case 'valueInstant':
        {
          return copyWith(valueX: FhirInstant.empty());
        }
      case 'valueInteger':
        {
          return copyWith(valueX: FhirInteger.empty());
        }
      case 'valueMarkdown':
        {
          return copyWith(valueX: FhirMarkdown.empty());
        }
      case 'valueOid':
        {
          return copyWith(valueX: FhirOid.empty());
        }
      case 'valuePositiveInt':
        {
          return copyWith(valueX: FhirPositiveInt.empty());
        }
      case 'valueString':
        {
          return copyWith(valueX: FhirString.empty());
        }
      case 'valueTime':
        {
          return copyWith(valueX: FhirTime.empty());
        }
      case 'valueUnsignedInt':
        {
          return copyWith(valueX: FhirUnsignedInt.empty());
        }
      case 'valueUri':
        {
          return copyWith(valueX: FhirUri.empty());
        }
      case 'valueUrl':
        {
          return copyWith(valueX: FhirUrl.empty());
        }
      case 'valueUuid':
        {
          return copyWith(valueX: FhirUuid.empty());
        }
      case 'valueAddress':
        {
          return copyWith(valueX: Address.empty());
        }
      case 'valueAge':
        {
          return copyWith(valueX: Age.empty());
        }
      case 'valueAnnotation':
        {
          return copyWith(valueX: Annotation.empty());
        }
      case 'valueAttachment':
        {
          return copyWith(valueX: Attachment.empty());
        }
      case 'valueCodeableConcept':
        {
          return copyWith(valueX: CodeableConcept.empty());
        }
      case 'valueCoding':
        {
          return copyWith(valueX: Coding.empty());
        }
      case 'valueContactPoint':
        {
          return copyWith(valueX: ContactPoint.empty());
        }
      case 'valueCount':
        {
          return copyWith(valueX: Count.empty());
        }
      case 'valueDistance':
        {
          return copyWith(valueX: Distance.empty());
        }
      case 'valueDuration':
        {
          return copyWith(valueX: FhirDuration.empty());
        }
      case 'valueHumanName':
        {
          return copyWith(valueX: HumanName.empty());
        }
      case 'valueIdentifier':
        {
          return copyWith(valueX: Identifier.empty());
        }
      case 'valueMoney':
        {
          return copyWith(valueX: Money.empty());
        }
      case 'valuePeriod':
        {
          return copyWith(valueX: Period.empty());
        }
      case 'valueQuantity':
        {
          return copyWith(valueX: Quantity.empty());
        }
      case 'valueRange':
        {
          return copyWith(valueX: Range.empty());
        }
      case 'valueRatio':
        {
          return copyWith(valueX: Ratio.empty());
        }
      case 'valueReference':
        {
          return copyWith(valueX: Reference.empty());
        }
      case 'valueSampledData':
        {
          return copyWith(valueX: SampledData.empty());
        }
      case 'valueSignature':
        {
          return copyWith(valueX: Signature.empty());
        }
      case 'valueTiming':
        {
          return copyWith(valueX: Timing.empty());
        }
      case 'valueContactDetail':
        {
          return copyWith(valueX: ContactDetail.empty());
        }
      case 'valueContributor':
        {
          return copyWith(valueX: Contributor.empty());
        }
      case 'valueDataRequirement':
        {
          return copyWith(valueX: DataRequirement.empty());
        }
      case 'valueExpression':
        {
          return copyWith(valueX: FhirExpression.empty());
        }
      case 'valueParameterDefinition':
        {
          return copyWith(valueX: ParameterDefinition.empty());
        }
      case 'valueRelatedArtifact':
        {
          return copyWith(valueX: RelatedArtifact.empty());
        }
      case 'valueTriggerDefinition':
        {
          return copyWith(valueX: TriggerDefinition.empty());
        }
      case 'valueUsageContext':
        {
          return copyWith(valueX: UsageContext.empty());
        }
      case 'valueDosage':
        {
          return copyWith(valueX: Dosage.empty());
        }
      case 'valueMeta':
        {
          return copyWith(valueX: FhirMeta.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  TaskOutput clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
  }) {
    return TaskOutput(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      type: type,
      valueX: valueX,
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
    ValueXTaskOutput? valueX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return TaskOutput(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      valueX: valueX?.copyWith(
            objectPath: '$newObjectPath.valueX',
          ) as ValueXTaskOutput? ??
          this.valueX,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! TaskOutput) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!equalsDeepWithNull(valueX, o.valueX)) {
      return false;
    }
    return true;
  }
}
