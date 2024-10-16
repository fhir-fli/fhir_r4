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

    final fieldJson9 = lifecycleStatus.toJson();
    json['lifecycleStatus'] = fieldJson9['value'];
    if (fieldJson9['_value'] != null) {
      json['_lifecycleStatus'] = fieldJson9['_value'];
    }

    if (achievementStatus != null) {
      final fieldJson10 = achievementStatus!.toJson();
      json['achievementStatus'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_achievementStatus'] = fieldJson10['_value'];
      }
    }

    if (category != null && category!.isNotEmpty) {
      final fieldJson11 = category!.map((e) => e.toJson()).toList();
      json['category'] = fieldJson11.map((e) => e['value']).toList();
      if (fieldJson11.any((e) => e['_value'] != null)) {
        json['_category'] = fieldJson11.map((e) => e['_value']).toList();
      }
    }

    if (priority != null) {
      final fieldJson12 = priority!.toJson();
      json['priority'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_priority'] = fieldJson12['_value'];
      }
    }

    final fieldJson13 = description.toJson();
    json['description'] = fieldJson13['value'];
    if (fieldJson13['_value'] != null) {
      json['_description'] = fieldJson13['_value'];
    }

    final fieldJson14 = subject.toJson();
    json['subject'] = fieldJson14['value'];
    if (fieldJson14['_value'] != null) {
      json['_subject'] = fieldJson14['_value'];
    }

    if (startDate != null) {
      final fieldJson15 = startDate!.toJson();
      json['startDate'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_startDate'] = fieldJson15['_value'];
      }
    }

    if (startCodeableConcept != null) {
      final fieldJson16 = startCodeableConcept!.toJson();
      json['startCodeableConcept'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_startCodeableConcept'] = fieldJson16['_value'];
      }
    }

    if (target != null && target!.isNotEmpty) {
      final fieldJson17 = target!.map((e) => e.toJson()).toList();
      json['target'] = fieldJson17.map((e) => e['value']).toList();
      if (fieldJson17.any((e) => e['_value'] != null)) {
        json['_target'] = fieldJson17.map((e) => e['_value']).toList();
      }
    }

    if (statusDate != null) {
      final fieldJson18 = statusDate!.toJson();
      json['statusDate'] = fieldJson18['value'];
      if (fieldJson18['_value'] != null) {
        json['_statusDate'] = fieldJson18['_value'];
      }
    }

    if (statusReason != null) {
      final fieldJson19 = statusReason!.toJson();
      json['statusReason'] = fieldJson19['value'];
      if (fieldJson19['_value'] != null) {
        json['_statusReason'] = fieldJson19['_value'];
      }
    }

    if (expressedBy != null) {
      final fieldJson20 = expressedBy!.toJson();
      json['expressedBy'] = fieldJson20['value'];
      if (fieldJson20['_value'] != null) {
        json['_expressedBy'] = fieldJson20['_value'];
      }
    }

    if (addresses != null && addresses!.isNotEmpty) {
      final fieldJson21 = addresses!.map((e) => e.toJson()).toList();
      json['addresses'] = fieldJson21.map((e) => e['value']).toList();
      if (fieldJson21.any((e) => e['_value'] != null)) {
        json['_addresses'] = fieldJson21.map((e) => e['_value']).toList();
      }
    }

    if (note != null && note!.isNotEmpty) {
      final fieldJson22 = note!.map((e) => e.toJson()).toList();
      json['note'] = fieldJson22.map((e) => e['value']).toList();
      if (fieldJson22.any((e) => e['_value'] != null)) {
        json['_note'] = fieldJson22.map((e) => e['_value']).toList();
      }
    }

    if (outcomeCode != null && outcomeCode!.isNotEmpty) {
      final fieldJson23 = outcomeCode!.map((e) => e.toJson()).toList();
      json['outcomeCode'] = fieldJson23.map((e) => e['value']).toList();
      if (fieldJson23.any((e) => e['_value'] != null)) {
        json['_outcomeCode'] = fieldJson23.map((e) => e['_value']).toList();
      }
    }

    if (outcomeReference != null && outcomeReference!.isNotEmpty) {
      final fieldJson24 = outcomeReference!.map((e) => e.toJson()).toList();
      json['outcomeReference'] = fieldJson24.map((e) => e['value']).toList();
      if (fieldJson24.any((e) => e['_value'] != null)) {
        json['_outcomeReference'] =
            fieldJson24.map((e) => e['_value']).toList();
      }
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

    if (measure != null) {
      final fieldJson3 = measure!.toJson();
      json['measure'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_measure'] = fieldJson3['_value'];
      }
    }

    if (detailQuantity != null) {
      final fieldJson4 = detailQuantity!.toJson();
      json['detailQuantity'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_detailQuantity'] = fieldJson4['_value'];
      }
    }

    if (detailRange != null) {
      final fieldJson5 = detailRange!.toJson();
      json['detailRange'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_detailRange'] = fieldJson5['_value'];
      }
    }

    if (detailCodeableConcept != null) {
      final fieldJson6 = detailCodeableConcept!.toJson();
      json['detailCodeableConcept'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_detailCodeableConcept'] = fieldJson6['_value'];
      }
    }

    if (detailString != null) {
      final fieldJson7 = detailString!.toJson();
      json['detailString'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_detailString'] = fieldJson7['_value'];
      }
    }

    if (detailBoolean != null) {
      final fieldJson8 = detailBoolean!.toJson();
      json['detailBoolean'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_detailBoolean'] = fieldJson8['_value'];
      }
    }

    if (detailInteger != null) {
      final fieldJson9 = detailInteger!.toJson();
      json['detailInteger'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_detailInteger'] = fieldJson9['_value'];
      }
    }

    if (detailRatio != null) {
      final fieldJson10 = detailRatio!.toJson();
      json['detailRatio'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_detailRatio'] = fieldJson10['_value'];
      }
    }

    if (dueDate != null) {
      final fieldJson11 = dueDate!.toJson();
      json['dueDate'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_dueDate'] = fieldJson11['_value'];
      }
    }

    if (dueDuration != null) {
      final fieldJson12 = dueDuration!.toJson();
      json['dueDuration'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_dueDuration'] = fieldJson12['_value'];
      }
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
