import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

part 'task.g.dart';

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
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      instantiatesCanonical: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'instantiatesCanonical',
        FhirCanonical.fromJson,
      ),
      instantiatesUri: JsonParser.parsePrimitive<FhirUri>(
        json,
        'instantiatesUri',
        FhirUri.fromJson,
      ),
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      groupIdentifier: JsonParser.parseObject<Identifier>(
        json,
        'groupIdentifier',
        Identifier.fromJson,
      ),
      partOf: (json['partOf'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<TaskStatus>(
        json,
        'status',
        TaskStatus.fromJson,
      )!,
      statusReason: JsonParser.parseObject<CodeableConcept>(
        json,
        'statusReason',
        CodeableConcept.fromJson,
      ),
      businessStatus: JsonParser.parseObject<CodeableConcept>(
        json,
        'businessStatus',
        CodeableConcept.fromJson,
      ),
      intent: JsonParser.parsePrimitive<TaskIntent>(
        json,
        'intent',
        TaskIntent.fromJson,
      )!,
      priority: JsonParser.parsePrimitive<RequestPriority>(
        json,
        'priority',
        RequestPriority.fromJson,
      ),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      ),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
      ),
      focus: JsonParser.parseObject<Reference>(
        json,
        'focus',
        Reference.fromJson,
      ),
      for_: JsonParser.parseObject<Reference>(
        json,
        'for',
        Reference.fromJson,
      ),
      encounter: JsonParser.parseObject<Reference>(
        json,
        'encounter',
        Reference.fromJson,
      ),
      executionPeriod: JsonParser.parseObject<Period>(
        json,
        'executionPeriod',
        Period.fromJson,
      ),
      authoredOn: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'authoredOn',
        FhirDateTime.fromJson,
      ),
      lastModified: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'lastModified',
        FhirDateTime.fromJson,
      ),
      requester: JsonParser.parseObject<Reference>(
        json,
        'requester',
        Reference.fromJson,
      ),
      performerType: (json['performerType'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      owner: JsonParser.parseObject<Reference>(
        json,
        'owner',
        Reference.fromJson,
      ),
      location: JsonParser.parseObject<Reference>(
        json,
        'location',
        Reference.fromJson,
      ),
      reasonCode: JsonParser.parseObject<CodeableConcept>(
        json,
        'reasonCode',
        CodeableConcept.fromJson,
      ),
      reasonReference: JsonParser.parseObject<Reference>(
        json,
        'reasonReference',
        Reference.fromJson,
      ),
      insurance: (json['insurance'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      relevantHistory: (json['relevantHistory'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      restriction: JsonParser.parseObject<TaskRestriction>(
        json,
        'restriction',
        TaskRestriction.fromJson,
      ),
      input: (json['input'] as List<dynamic>?)
          ?.map<TaskInput>(
            (v) => TaskInput.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      output: (json['output'] as List<dynamic>?)
          ?.map<TaskOutput>(
            (v) => TaskOutput.fromJson(
              {...v as Map<String, dynamic>},
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField(
      'id',
      id,
    );
    addField(
      'meta',
      meta,
    );
    addField(
      'implicitRules',
      implicitRules,
    );
    addField(
      'language',
      language,
    );
    addField(
      'text',
      text,
    );
    addField(
      'contained',
      contained,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'identifier',
      identifier,
    );
    addField(
      'instantiatesCanonical',
      instantiatesCanonical,
    );
    addField(
      'instantiatesUri',
      instantiatesUri,
    );
    addField(
      'basedOn',
      basedOn,
    );
    addField(
      'groupIdentifier',
      groupIdentifier,
    );
    addField(
      'partOf',
      partOf,
    );
    addField(
      'status',
      status,
    );
    addField(
      'statusReason',
      statusReason,
    );
    addField(
      'businessStatus',
      businessStatus,
    );
    addField(
      'intent',
      intent,
    );
    addField(
      'priority',
      priority,
    );
    addField(
      'code',
      code,
    );
    addField(
      'description',
      description,
    );
    addField(
      'focus',
      focus,
    );
    addField(
      'for',
      for_,
    );
    addField(
      'encounter',
      encounter,
    );
    addField(
      'executionPeriod',
      executionPeriod,
    );
    addField(
      'authoredOn',
      authoredOn,
    );
    addField(
      'lastModified',
      lastModified,
    );
    addField(
      'requester',
      requester,
    );
    addField(
      'performerType',
      performerType,
    );
    addField(
      'owner',
      owner,
    );
    addField(
      'location',
      location,
    );
    addField(
      'reasonCode',
      reasonCode,
    );
    addField(
      'reasonReference',
      reasonReference,
    );
    addField(
      'insurance',
      insurance,
    );
    addField(
      'note',
      note,
    );
    addField(
      'relevantHistory',
      relevantHistory,
    );
    addField(
      'restriction',
      restriction,
    );
    addField(
      'input',
      input,
    );
    addField(
      'output',
      output,
    );
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
  Task clone() => copyWith();

  /// Copy function for [Task]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $TaskCopyWith<Task> get copyWith => _$TaskCopyWithImpl<Task>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Task) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      instantiatesCanonical,
      o.instantiatesCanonical,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      instantiatesUri,
      o.instantiatesUri,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Reference>(
      basedOn,
      o.basedOn,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      groupIdentifier,
      o.groupIdentifier,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Reference>(
      partOf,
      o.partOf,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      statusReason,
      o.statusReason,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      businessStatus,
      o.businessStatus,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      intent,
      o.intent,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      priority,
      o.priority,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      code,
      o.code,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      focus,
      o.focus,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      for_,
      o.for_,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      encounter,
      o.encounter,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      executionPeriod,
      o.executionPeriod,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      authoredOn,
      o.authoredOn,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      lastModified,
      o.lastModified,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      requester,
      o.requester,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      performerType,
      o.performerType,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      owner,
      o.owner,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      location,
      o.location,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      reasonCode,
      o.reasonCode,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      reasonReference,
      o.reasonReference,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Reference>(
      insurance,
      o.insurance,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Reference>(
      relevantHistory,
      o.relevantHistory,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      restriction,
      o.restriction,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<TaskInput>(
      input,
      o.input,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<TaskOutput>(
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TaskRestriction.fromJson(
    Map<String, dynamic> json,
  ) {
    return TaskRestriction(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      repetitions: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'repetitions',
        FhirPositiveInt.fromJson,
      ),
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
      ),
      recipient: (json['recipient'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'repetitions',
      repetitions,
    );
    addField(
      'period',
      period,
    );
    addField(
      'recipient',
      recipient,
    );
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
  TaskRestriction clone() => copyWith();

  /// Copy function for [TaskRestriction]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $TaskRestrictionCopyWith<TaskRestriction> get copyWith =>
      _$TaskRestrictionCopyWithImpl<TaskRestriction>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! TaskRestriction) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      repetitions,
      o.repetitions,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      period,
      o.period,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Reference>(
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TaskInput.fromJson(
    Map<String, dynamic> json,
  ) {
    return TaskInput(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'type',
      type,
    );
    final valueXFhirType = valueX.fhirType;
    addField(
      'value${valueXFhirType.capitalize()}',
      valueX,
    );

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
  TaskInput clone() => copyWith();

  /// Copy function for [TaskInput]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $TaskInputCopyWith<TaskInput> get copyWith =>
      _$TaskInputCopyWithImpl<TaskInput>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! TaskInput) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      valueX,
      o.valueX,
    )) {
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TaskOutput.fromJson(
    Map<String, dynamic> json,
  ) {
    return TaskOutput(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'type',
      type,
    );
    final valueXFhirType = valueX.fhirType;
    addField(
      'value${valueXFhirType.capitalize()}',
      valueX,
    );

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
  TaskOutput clone() => copyWith();

  /// Copy function for [TaskOutput]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $TaskOutputCopyWith<TaskOutput> get copyWith =>
      _$TaskOutputCopyWithImpl<TaskOutput>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! TaskOutput) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      valueX,
      o.valueX,
    )) {
      return false;
    }
    return true;
  }
}
