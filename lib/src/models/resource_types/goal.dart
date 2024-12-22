import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Goal]
/// Describes the intended objective(s) for a patient, group or
/// organization care, for example, weight loss, restoring an activity of
/// daily living, obtaining herd immunity via immunization, meeting a
/// process improvement objective, etc.
class Goal extends DomainResource {
  /// Primary constructor for
  /// [Goal]

  const Goal({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.lifecycleStatus,
    this.achievementStatus,
    this.category,
    this.priority,
    required this.description,
    required this.subject,
    this.startX,
    this.target,
    this.statusDate,
    this.statusReason,
    this.expressedBy,
    this.addresses,
    this.note,
    this.outcomeCode,
    this.outcomeReference,
  }) : super(
          resourceType: R4ResourceType.Goal,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Goal.fromJson(
    Map<String, dynamic> json,
  ) {
    return Goal(
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
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      lifecycleStatus: JsonParser.parsePrimitive<GoalLifecycleStatus>(
        json,
        'lifecycleStatus',
        GoalLifecycleStatus.fromJson,
      )!,
      achievementStatus: JsonParser.parseObject<CodeableConcept>(
        json,
        'achievementStatus',
        CodeableConcept.fromJson,
      ),
      category: (json['category'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      priority: JsonParser.parseObject<CodeableConcept>(
        json,
        'priority',
        CodeableConcept.fromJson,
      ),
      description: JsonParser.parseObject<CodeableConcept>(
        json,
        'description',
        CodeableConcept.fromJson,
      )!,
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
      )!,
      startX: JsonParser.parsePolymorphic<StartXGoal>(json, {
        'startDate': FhirDate.fromJson,
        'startCodeableConcept': CodeableConcept.fromJson,
      }),
      target: (json['target'] as List<dynamic>?)
          ?.map<GoalTarget>(
            (v) => GoalTarget.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      statusDate: JsonParser.parsePrimitive<FhirDate>(
        json,
        'statusDate',
        FhirDate.fromJson,
      ),
      statusReason: JsonParser.parsePrimitive<FhirString>(
        json,
        'statusReason',
        FhirString.fromJson,
      ),
      expressedBy: JsonParser.parseObject<Reference>(
        json,
        'expressedBy',
        Reference.fromJson,
      ),
      addresses: (json['addresses'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      outcomeCode: (json['outcomeCode'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      outcomeReference: (json['outcomeReference'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [Goal]
  /// from a [String] or [YamlMap] object
  factory Goal.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Goal.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Goal.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Goal '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Goal]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Goal.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Goal.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Goal';

  /// [identifier]
  /// Business identifiers assigned to this goal by the performer or other
  /// systems which remain constant as the resource is updated and propagates
  /// from server to server.
  final List<Identifier>? identifier;

  /// [lifecycleStatus]
  /// The state of the goal throughout its lifecycle.
  final GoalLifecycleStatus lifecycleStatus;

  /// [achievementStatus]
  /// Describes the progression, or lack thereof, towards the goal against
  /// the target.
  final CodeableConcept? achievementStatus;

  /// [category]
  /// Indicates a category the goal falls within.
  final List<CodeableConcept>? category;

  /// [priority]
  /// Identifies the mutually agreed level of importance associated with
  /// reaching/sustaining the goal.
  final CodeableConcept? priority;

  /// [description]
  /// Human-readable and/or coded description of a specific desired objective
  /// of care, such as "control blood pressure" or "negotiate an obstacle
  /// course" or "dance with child at wedding".
  final CodeableConcept description;

  /// [subject]
  /// Identifies the patient, group or organization for whom the goal is
  /// being established.
  final Reference subject;

  /// [startX]
  /// The date or event after which the goal should begin being pursued.
  final StartXGoal? startX;

  /// [target]
  /// Indicates what should be done by when.
  final List<GoalTarget>? target;

  /// [statusDate]
  /// Identifies when the current status. I.e. When initially created, when
  /// achieved, when cancelled, etc.
  final FhirDate? statusDate;

  /// [statusReason]
  /// Captures the reason for the current status.
  final FhirString? statusReason;

  /// [expressedBy]
  /// Indicates whose goal this is - patient goal, practitioner goal, etc.
  final Reference? expressedBy;

  /// [addresses]
  /// The identified conditions and other health record elements that are
  /// intended to be addressed by the goal.
  final List<Reference>? addresses;

  /// [note]
  /// Any comments related to the goal.
  final List<Annotation>? note;

  /// [outcomeCode]
  /// Identifies the change (or lack of change) at the point when the status
  /// of the goal is assessed.
  final List<CodeableConcept>? outcomeCode;

  /// [outcomeReference]
  /// Details of what's changed (or not changed).
  final List<Reference>? outcomeReference;
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
    addField('lifecycleStatus', lifecycleStatus);
    addField('achievementStatus', achievementStatus);
    addField('category', category);
    addField('priority', priority);
    addField('description', description);
    addField('subject', subject);
    if (startX != null) {
      final fhirType = startX!.fhirType;
      addField('start${fhirType.capitalize()}', startX);
    }

    addField('target', target);
    addField('statusDate', statusDate);
    addField('statusReason', statusReason);
    addField('expressedBy', expressedBy);
    addField('addresses', addresses);
    addField('note', note);
    addField('outcomeCode', outcomeCode);
    addField('outcomeReference', outcomeReference);
    return json;
  }

  @override
  Goal clone() => throw UnimplementedError();
  @override
  Goal copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    GoalLifecycleStatus? lifecycleStatus,
    CodeableConcept? achievementStatus,
    List<CodeableConcept>? category,
    CodeableConcept? priority,
    CodeableConcept? description,
    Reference? subject,
    StartXGoal? startX,
    List<GoalTarget>? target,
    FhirDate? statusDate,
    FhirString? statusReason,
    Reference? expressedBy,
    List<Reference>? addresses,
    List<Annotation>? note,
    List<CodeableConcept>? outcomeCode,
    List<Reference>? outcomeReference,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return Goal(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      lifecycleStatus: lifecycleStatus ?? this.lifecycleStatus,
      achievementStatus: achievementStatus ?? this.achievementStatus,
      category: category ?? this.category,
      priority: priority ?? this.priority,
      description: description ?? this.description,
      subject: subject ?? this.subject,
      startX: startX ?? this.startX,
      target: target ?? this.target,
      statusDate: statusDate ?? this.statusDate,
      statusReason: statusReason ?? this.statusReason,
      expressedBy: expressedBy ?? this.expressedBy,
      addresses: addresses ?? this.addresses,
      note: note ?? this.note,
      outcomeCode: outcomeCode ?? this.outcomeCode,
      outcomeReference: outcomeReference ?? this.outcomeReference,
    );
  }
}

/// [GoalTarget]
/// Indicates what should be done by when.
class GoalTarget extends BackboneElement {
  /// Primary constructor for
  /// [GoalTarget]

  const GoalTarget({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.measure,
    this.detailX,
    this.dueX,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory GoalTarget.fromJson(
    Map<String, dynamic> json,
  ) {
    return GoalTarget(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      measure: JsonParser.parseObject<CodeableConcept>(
        json,
        'measure',
        CodeableConcept.fromJson,
      ),
      detailX: JsonParser.parsePolymorphic<DetailXGoalTarget>(json, {
        'detailQuantity': Quantity.fromJson,
        'detailRange': Range.fromJson,
        'detailCodeableConcept': CodeableConcept.fromJson,
        'detailString': FhirString.fromJson,
        'detailBoolean': FhirBoolean.fromJson,
        'detailInteger': FhirInteger.fromJson,
        'detailRatio': Ratio.fromJson,
      }),
      dueX: JsonParser.parsePolymorphic<DueXGoalTarget>(json, {
        'dueDate': FhirDate.fromJson,
        'dueDuration': FhirDuration.fromJson,
      }),
    );
  }

  /// Deserialize [GoalTarget]
  /// from a [String] or [YamlMap] object
  factory GoalTarget.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return GoalTarget.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return GoalTarget.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'GoalTarget '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [GoalTarget]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory GoalTarget.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return GoalTarget.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'GoalTarget';

  /// [measure]
  /// The parameter whose value is being tracked, e.g. body weight, blood
  /// pressure, or hemoglobin A1c level.
  final CodeableConcept? measure;

  /// [detailX]
  /// The target value of the focus to be achieved to signify the fulfillment
  /// of the goal, e.g. 150 pounds, 7.0%. Either the high or low or both
  /// values of the range can be specified. When a low value is missing, it
  /// indicates that the goal is achieved at any focus value at or below the
  /// high value. Similarly, if the high value is missing, it indicates that
  /// the goal is achieved at any focus value at or above the low value.
  final DetailXGoalTarget? detailX;

  /// [dueX]
  /// Indicates either the date or the duration after start by which the goal
  /// should be met.
  final DueXGoalTarget? dueX;
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
    addField('measure', measure);
    if (detailX != null) {
      final fhirType = detailX!.fhirType;
      addField('detail${fhirType.capitalize()}', detailX);
    }

    if (dueX != null) {
      final fhirType = dueX!.fhirType;
      addField('due${fhirType.capitalize()}', dueX);
    }

    return json;
  }

  @override
  GoalTarget clone() => throw UnimplementedError();
  @override
  GoalTarget copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? measure,
    DetailXGoalTarget? detailX,
    DueXGoalTarget? dueX,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return GoalTarget(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      measure: measure ?? this.measure,
      detailX: detailX ?? this.detailX,
      dueX: dueX ?? this.dueX,
    );
  }
}
