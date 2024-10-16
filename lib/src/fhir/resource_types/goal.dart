import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Goal]
/// Describes the intended objective(s) for a patient, group or
/// organization care, for example, weight loss, restoring an activity of
/// daily living, obtaining herd immunity via immunization, meeting a
/// process improvement objective, etc.
class Goal extends DomainResource {
  /// Primary constructor for [Goal]

  Goal({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
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
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.Goal,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Goal.fromJson(Map<String, dynamic> json) {
    return Goal(
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
      startDate: json['startDate'] != null
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
      statusDate: json['statusDate'] != null
          ? FhirDate.fromJson({
              'value': json['statusDate'],
              '_value': json['_statusDate'],
            })
          : null,
      statusReason: json['statusReason'] != null
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

  /// Deserialize [Goal] from a [String]
  /// or [YamlMap] object
  factory Goal.fromYaml(dynamic yaml) => yaml is String
      ? Goal.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? Goal.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('Goal cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [Goal]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Goal.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map((Identifier v) => v.toJson()).toList();
    }
    json['lifecycleStatus'] = lifecycleStatus.toJson();
    if (achievementStatus != null) {
      json['achievementStatus'] = achievementStatus!.toJson();
    }
    if (category != null && category!.isNotEmpty) {
      json['category'] =
          category!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (priority != null) {
      json['priority'] = priority!.toJson();
    }
    json['description'] = description.toJson();
    json['subject'] = subject.toJson();
    if (startDate != null) {
      json['startDate'] = startDate!.toJson();
    }
    if (startCodeableConcept != null) {
      json['startCodeableConcept'] = startCodeableConcept!.toJson();
    }
    if (target != null && target!.isNotEmpty) {
      json['target'] = target!.map((GoalTarget v) => v.toJson()).toList();
    }
    if (statusDate?.value != null) {
      json['statusDate'] = statusDate!.toJson();
    }
    if (statusReason?.value != null) {
      json['statusReason'] = statusReason!.toJson();
    }
    if (expressedBy != null) {
      json['expressedBy'] = expressedBy!.toJson();
    }
    if (addresses != null && addresses!.isNotEmpty) {
      json['addresses'] = addresses!.map((Reference v) => v.toJson()).toList();
    }
    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map((Annotation v) => v.toJson()).toList();
    }
    if (outcomeCode != null && outcomeCode!.isNotEmpty) {
      json['outcomeCode'] =
          outcomeCode!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (outcomeReference != null && outcomeReference!.isNotEmpty) {
      json['outcomeReference'] =
          outcomeReference!.map((Reference v) => v.toJson()).toList();
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [GoalTarget]
/// Indicates what should be done by when.
class GoalTarget extends BackboneElement {
  /// Primary constructor for [GoalTarget]

  GoalTarget({
    super.id,
    this.extension_,
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory GoalTarget.fromJson(Map<String, dynamic> json) {
    return GoalTarget(
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
      detailString: json['detailString'] != null
          ? FhirString.fromJson({
              'value': json['detailString'],
              '_value': json['_detailString'],
            })
          : null,
      detailBoolean: json['detailBoolean'] != null
          ? FhirBoolean.fromJson({
              'value': json['detailBoolean'],
              '_value': json['_detailBoolean'],
            })
          : null,
      detailInteger: json['detailInteger'] != null
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
      dueDate: json['dueDate'] != null
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

  /// Deserialize [GoalTarget] from a [String]
  /// or [YamlMap] object
  factory GoalTarget.fromYaml(dynamic yaml) => yaml is String
      ? GoalTarget.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? GoalTarget.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('GoalTarget cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [GoalTarget]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory GoalTarget.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
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
    if (detailString?.value != null) {
      json['detailString'] = detailString!.toJson();
    }
    if (detailBoolean?.value != null) {
      json['detailBoolean'] = detailBoolean!.toJson();
    }
    if (detailInteger?.value != null) {
      json['detailInteger'] = detailInteger!.toJson();
    }
    if (detailRatio != null) {
      json['detailRatio'] = detailRatio!.toJson();
    }
    if (dueDate?.value != null) {
      json['dueDate'] = dueDate!.toJson();
    }
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
