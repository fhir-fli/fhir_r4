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
    this.startDate,
    this.startCodeableConcept,
    this.target,
    this.statusDate,
    this.statusReason,
    this.expressedBy,
    this.addresses,
    this.note,
    this.outcomeCode,
    this.outcomeReference,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  }) : super(
          resourceType: R4ResourceType.Goal,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Goal.fromJson(
    Map<String, dynamic> json,
  ) {
    return Goal(
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
      lifecycleStatus: GoalLifecycleStatus.fromJson({
        'value': json['lifecycleStatus'],
        '_value': json['_lifecycleStatus'],
      }),
      achievementStatus: json['achievementStatus'] != null
          ? CodeableConcept.fromJson(
              json['achievementStatus'] as Map<String, dynamic>,
            )
          : null,
      category: json['category'] != null
          ? (json['category'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      priority: json['priority'] != null
          ? CodeableConcept.fromJson(
              json['priority'] as Map<String, dynamic>,
            )
          : null,
      description: CodeableConcept.fromJson(
        json['description'] as Map<String, dynamic>,
      ),
      subject: Reference.fromJson(
        json['subject'] as Map<String, dynamic>,
      ),
      startDate: (json['startDate'] != null || json['_startDate'] != null)
          ? GoalStartEvent.fromJson({
              'value': json['startDate'],
              '_value': json['_startDate'],
            })
          : null,
      startCodeableConcept: json['startCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['startCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      target: json['target'] != null
          ? (json['target'] as List<dynamic>)
              .map<GoalTarget>(
                (v) => GoalTarget.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      statusDate: (json['statusDate'] != null || json['_statusDate'] != null)
          ? FhirDate.fromJson({
              'value': json['statusDate'],
              '_value': json['_statusDate'],
            })
          : null,
      statusReason:
          (json['statusReason'] != null || json['_statusReason'] != null)
              ? FhirString.fromJson({
                  'value': json['statusReason'],
                  '_value': json['_statusReason'],
                })
              : null,
      expressedBy: json['expressedBy'] != null
          ? Reference.fromJson(
              json['expressedBy'] as Map<String, dynamic>,
            )
          : null,
      addresses: json['addresses'] != null
          ? (json['addresses'] as List<dynamic>)
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
      outcomeCode: json['outcomeCode'] != null
          ? (json['outcomeCode'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      outcomeReference: json['outcomeReference'] != null
          ? (json['outcomeReference'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
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

  /// [startDate]
  /// The date or event after which the goal should begin being pursued.
  final GoalStartEvent? startDate;

  /// [startCodeableConcept]
  /// The date or event after which the goal should begin being pursued.
  final CodeableConcept? startCodeableConcept;

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

    addField('lifecycleStatus', lifecycleStatus);
    if (achievementStatus != null) {
      json['achievementStatus'] = achievementStatus!.toJson();
    }

    if (category != null && category!.isNotEmpty) {
      json['category'] = category!.map((e) => e.toJson()).toList();
    }

    if (priority != null) {
      json['priority'] = priority!.toJson();
    }

    json['description'] = description.toJson();

    json['subject'] = subject.toJson();

    addField('startDate', startDate);
    if (startCodeableConcept != null) {
      json['startCodeableConcept'] = startCodeableConcept!.toJson();
    }

    if (target != null && target!.isNotEmpty) {
      json['target'] = target!.map((e) => e.toJson()).toList();
    }

    addField('statusDate', statusDate);
    addField('statusReason', statusReason);
    if (expressedBy != null) {
      json['expressedBy'] = expressedBy!.toJson();
    }

    if (addresses != null && addresses!.isNotEmpty) {
      json['addresses'] = addresses!.map((e) => e.toJson()).toList();
    }

    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map((e) => e.toJson()).toList();
    }

    if (outcomeCode != null && outcomeCode!.isNotEmpty) {
      json['outcomeCode'] = outcomeCode!.map((e) => e.toJson()).toList();
    }

    if (outcomeReference != null && outcomeReference!.isNotEmpty) {
      json['outcomeReference'] =
          outcomeReference!.map((e) => e.toJson()).toList();
    }

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
    GoalStartEvent? startDate,
    CodeableConcept? startCodeableConcept,
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
      startDate: startDate ?? this.startDate,
      startCodeableConcept: startCodeableConcept ?? this.startCodeableConcept,
      target: target ?? this.target,
      statusDate: statusDate ?? this.statusDate,
      statusReason: statusReason ?? this.statusReason,
      expressedBy: expressedBy ?? this.expressedBy,
      addresses: addresses ?? this.addresses,
      note: note ?? this.note,
      outcomeCode: outcomeCode ?? this.outcomeCode,
      outcomeReference: outcomeReference ?? this.outcomeReference,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
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
    this.detailQuantity,
    this.detailRange,
    this.detailCodeableConcept,
    this.detailString,
    this.detailBoolean,
    this.detailInteger,
    this.detailRatio,
    this.dueDate,
    this.dueDuration,
    super.disallowExtensions,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory GoalTarget.fromJson(
    Map<String, dynamic> json,
  ) {
    return GoalTarget(
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
      measure: json['measure'] != null
          ? CodeableConcept.fromJson(
              json['measure'] as Map<String, dynamic>,
            )
          : null,
      detailQuantity: json['detailQuantity'] != null
          ? Quantity.fromJson(
              json['detailQuantity'] as Map<String, dynamic>,
            )
          : null,
      detailRange: json['detailRange'] != null
          ? Range.fromJson(
              json['detailRange'] as Map<String, dynamic>,
            )
          : null,
      detailCodeableConcept: json['detailCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['detailCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      detailString:
          (json['detailString'] != null || json['_detailString'] != null)
              ? FhirString.fromJson({
                  'value': json['detailString'],
                  '_value': json['_detailString'],
                })
              : null,
      detailBoolean:
          (json['detailBoolean'] != null || json['_detailBoolean'] != null)
              ? FhirBoolean.fromJson({
                  'value': json['detailBoolean'],
                  '_value': json['_detailBoolean'],
                })
              : null,
      detailInteger:
          (json['detailInteger'] != null || json['_detailInteger'] != null)
              ? FhirInteger.fromJson({
                  'value': json['detailInteger'],
                  '_value': json['_detailInteger'],
                })
              : null,
      detailRatio: json['detailRatio'] != null
          ? Ratio.fromJson(
              json['detailRatio'] as Map<String, dynamic>,
            )
          : null,
      dueDate: (json['dueDate'] != null || json['_dueDate'] != null)
          ? FhirDate.fromJson({
              'value': json['dueDate'],
              '_value': json['_dueDate'],
            })
          : null,
      dueDuration: json['dueDuration'] != null
          ? FhirDuration.fromJson(
              json['dueDuration'] as Map<String, dynamic>,
            )
          : null,
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

  /// [detailQuantity]
  /// The target value of the focus to be achieved to signify the fulfillment
  /// of the goal, e.g. 150 pounds, 7.0%. Either the high or low or both
  /// values of the range can be specified. When a low value is missing, it
  /// indicates that the goal is achieved at any focus value at or below the
  /// high value. Similarly, if the high value is missing, it indicates that
  /// the goal is achieved at any focus value at or above the low value.
  final Quantity? detailQuantity;

  /// [detailRange]
  /// The target value of the focus to be achieved to signify the fulfillment
  /// of the goal, e.g. 150 pounds, 7.0%. Either the high or low or both
  /// values of the range can be specified. When a low value is missing, it
  /// indicates that the goal is achieved at any focus value at or below the
  /// high value. Similarly, if the high value is missing, it indicates that
  /// the goal is achieved at any focus value at or above the low value.
  final Range? detailRange;

  /// [detailCodeableConcept]
  /// The target value of the focus to be achieved to signify the fulfillment
  /// of the goal, e.g. 150 pounds, 7.0%. Either the high or low or both
  /// values of the range can be specified. When a low value is missing, it
  /// indicates that the goal is achieved at any focus value at or below the
  /// high value. Similarly, if the high value is missing, it indicates that
  /// the goal is achieved at any focus value at or above the low value.
  final CodeableConcept? detailCodeableConcept;

  /// [detailString]
  /// The target value of the focus to be achieved to signify the fulfillment
  /// of the goal, e.g. 150 pounds, 7.0%. Either the high or low or both
  /// values of the range can be specified. When a low value is missing, it
  /// indicates that the goal is achieved at any focus value at or below the
  /// high value. Similarly, if the high value is missing, it indicates that
  /// the goal is achieved at any focus value at or above the low value.
  final FhirString? detailString;

  /// [detailBoolean]
  /// The target value of the focus to be achieved to signify the fulfillment
  /// of the goal, e.g. 150 pounds, 7.0%. Either the high or low or both
  /// values of the range can be specified. When a low value is missing, it
  /// indicates that the goal is achieved at any focus value at or below the
  /// high value. Similarly, if the high value is missing, it indicates that
  /// the goal is achieved at any focus value at or above the low value.
  final FhirBoolean? detailBoolean;

  /// [detailInteger]
  /// The target value of the focus to be achieved to signify the fulfillment
  /// of the goal, e.g. 150 pounds, 7.0%. Either the high or low or both
  /// values of the range can be specified. When a low value is missing, it
  /// indicates that the goal is achieved at any focus value at or below the
  /// high value. Similarly, if the high value is missing, it indicates that
  /// the goal is achieved at any focus value at or above the low value.
  final FhirInteger? detailInteger;

  /// [detailRatio]
  /// The target value of the focus to be achieved to signify the fulfillment
  /// of the goal, e.g. 150 pounds, 7.0%. Either the high or low or both
  /// values of the range can be specified. When a low value is missing, it
  /// indicates that the goal is achieved at any focus value at or below the
  /// high value. Similarly, if the high value is missing, it indicates that
  /// the goal is achieved at any focus value at or above the low value.
  final Ratio? detailRatio;

  /// [dueDate]
  /// Indicates either the date or the duration after start by which the goal
  /// should be met.
  final FhirDate? dueDate;

  /// [dueDuration]
  /// Indicates either the date or the duration after start by which the goal
  /// should be met.
  final FhirDuration? dueDuration;
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

    if (measure != null) {
      json['measure'] = measure!.toJson();
    }

    if (detailQuantity != null) {
      json['detailQuantity'] = detailQuantity!.toJson();
    }

    if (detailRange != null) {
      json['detailRange'] = detailRange!.toJson();
    }

    if (detailCodeableConcept != null) {
      json['detailCodeableConcept'] = detailCodeableConcept!.toJson();
    }

    addField('detailString', detailString);
    addField('detailBoolean', detailBoolean);
    addField('detailInteger', detailInteger);
    if (detailRatio != null) {
      json['detailRatio'] = detailRatio!.toJson();
    }

    addField('dueDate', dueDate);
    if (dueDuration != null) {
      json['dueDuration'] = dueDuration!.toJson();
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
    Quantity? detailQuantity,
    Range? detailRange,
    CodeableConcept? detailCodeableConcept,
    FhirString? detailString,
    FhirBoolean? detailBoolean,
    FhirInteger? detailInteger,
    Ratio? detailRatio,
    FhirDate? dueDate,
    FhirDuration? dueDuration,
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
      detailQuantity: detailQuantity ?? this.detailQuantity,
      detailRange: detailRange ?? this.detailRange,
      detailCodeableConcept:
          detailCodeableConcept ?? this.detailCodeableConcept,
      detailString: detailString ?? this.detailString,
      detailBoolean: detailBoolean ?? this.detailBoolean,
      detailInteger: detailInteger ?? this.detailInteger,
      detailRatio: detailRatio ?? this.detailRatio,
      dueDate: dueDate ?? this.dueDate,
      dueDuration: dueDuration ?? this.dueDuration,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}
