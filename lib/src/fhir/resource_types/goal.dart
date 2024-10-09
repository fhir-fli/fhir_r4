import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'goal.g.dart';

/// [Goal] /// Describes the intended objective(s) for a patient, group or organization
/// care, for example, weight loss, restoring an activity of daily living,
/// obtaining herd immunity via immunization, meeting a process improvement
/// objective, etc.
@JsonSerializable()
class Goal extends DomainResource {
  Goal({
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
    required this.lifecycleStatus,
    this.lifecycleStatusElement,
    this.achievementStatus,
    this.category,
    this.priority,
    required this.description,
    required this.subject,
    this.startDate,
    this.startDateElement,
    this.startCodeableConcept,
    this.target,
    this.statusDate,
    this.statusDateElement,
    this.statusReason,
    this.statusReasonElement,
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
    // ignore: avoid_unused_constructor_parameters
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.Goal);
  @override
  String get fhirType => 'Goal';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Business identifiers assigned to this goal by the performer or other
  /// systems which remain constant as the resource is updated and propagates
  /// from server to server.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [lifecycleStatus] /// The state of the goal throughout its lifecycle.
  @JsonKey(name: 'lifecycleStatus')
  final GoalLifecycleStatus lifecycleStatus;
  @JsonKey(name: '_lifecycleStatus')
  final Element? lifecycleStatusElement;

  /// [achievementStatus] /// Describes the progression, or lack thereof, towards the goal against the
  /// target.
  @JsonKey(name: 'achievementStatus')
  final GoalAchievementStatus? achievementStatus;

  /// [category] /// Indicates a category the goal falls within.
  @JsonKey(name: 'category')
  final List<GoalCategory>? category;

  /// [priority] /// Identifies the mutually agreed level of importance associated with
  /// reaching/sustaining the goal.
  @JsonKey(name: 'priority')
  final GoalPriority? priority;

  /// [description] /// Human-readable and/or coded description of a specific desired objective of
  /// care, such as "control blood pressure" or "negotiate an obstacle course" or
  /// "dance with child at wedding".
  @JsonKey(name: 'description')
  final CodeableConcept description;

  /// [subject] /// Identifies the patient, group or organization for whom the goal is being
  /// established.
  @JsonKey(name: 'subject')
  final Reference subject;

  /// [startDate] /// The date or event after which the goal should begin being pursued.
  @JsonKey(name: 'startDate')
  final GoalStartEvent? startDate;
  @JsonKey(name: '_startDate')
  final Element? startDateElement;

  /// [startCodeableConcept] /// The date or event after which the goal should begin being pursued.
  @JsonKey(name: 'startCodeableConcept')
  final GoalStartEvent? startCodeableConcept;

  /// [target] /// Indicates what should be done by when.
  @JsonKey(name: 'target')
  final List<GoalTarget>? target;

  /// [statusDate] /// Identifies when the current status. I.e. When initially created, when
  /// achieved, when cancelled, etc.
  @JsonKey(name: 'statusDate')
  final FhirDate? statusDate;
  @JsonKey(name: '_statusDate')
  final Element? statusDateElement;

  /// [statusReason] /// Captures the reason for the current status.
  @JsonKey(name: 'statusReason')
  final FhirString? statusReason;
  @JsonKey(name: '_statusReason')
  final Element? statusReasonElement;

  /// [expressedBy] /// Indicates whose goal this is - patient goal, practitioner goal, etc.
  @JsonKey(name: 'expressedBy')
  final Reference? expressedBy;

  /// [addresses] /// The identified conditions and other health record elements that are
  /// intended to be addressed by the goal.
  @JsonKey(name: 'addresses')
  final List<Reference>? addresses;

  /// [note] /// Any comments related to the goal.
  @JsonKey(name: 'note')
  final List<Annotation>? note;

  /// [outcomeCode] /// Identifies the change (or lack of change) at the point when the status of
  /// the goal is assessed.
  @JsonKey(name: 'outcomeCode')
  final List<CodeableConcept>? outcomeCode;

  /// [outcomeReference] /// Details of what's changed (or not changed).
  @JsonKey(name: 'outcomeReference')
  final List<Reference>? outcomeReference;
  factory Goal.fromJson(Map<String, dynamic> json) => _$GoalFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$GoalToJson(this);

  @override
  Goal clone() => throw UnimplementedError();
  @override
  Goal copyWith({
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
    GoalLifecycleStatus? lifecycleStatus,
    Element? lifecycleStatusElement,
    GoalAchievementStatus? achievementStatus,
    List<GoalCategory>? category,
    GoalPriority? priority,
    CodeableConcept? description,
    Reference? subject,
    GoalStartEvent? startDate,
    Element? startDateElement,
    GoalStartEvent? startCodeableConcept,
    List<GoalTarget>? target,
    FhirDate? statusDate,
    Element? statusDateElement,
    FhirString? statusReason,
    Element? statusReasonElement,
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
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      lifecycleStatus: lifecycleStatus ?? this.lifecycleStatus,
      lifecycleStatusElement:
          lifecycleStatusElement ?? this.lifecycleStatusElement,
      achievementStatus: achievementStatus ?? this.achievementStatus,
      category: category ?? this.category,
      priority: priority ?? this.priority,
      description: description ?? this.description,
      subject: subject ?? this.subject,
      startDate: startDate ?? this.startDate,
      startDateElement: startDateElement ?? this.startDateElement,
      startCodeableConcept: startCodeableConcept ?? this.startCodeableConcept,
      target: target ?? this.target,
      statusDate: statusDate ?? this.statusDate,
      statusDateElement: statusDateElement ?? this.statusDateElement,
      statusReason: statusReason ?? this.statusReason,
      statusReasonElement: statusReasonElement ?? this.statusReasonElement,
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

  factory Goal.fromYaml(dynamic yaml) => yaml is String
      ? Goal.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Goal.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Goal cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Goal.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Goal.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [GoalTarget] /// Indicates what should be done by when.
@JsonSerializable()
class GoalTarget extends BackboneElement {
  GoalTarget({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.measure,
    this.detailQuantity,
    this.detailRange,
    this.detailCodeableConcept,
    this.detailString,
    this.detailStringElement,
    this.detailBoolean,
    this.detailBooleanElement,
    this.detailInteger,
    this.detailIntegerElement,
    this.detailRatio,
    this.dueDate,
    this.dueDateElement,
    this.dueDuration,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'GoalTarget';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [measure] /// The parameter whose value is being tracked, e.g. body weight, blood
  /// pressure, or hemoglobin A1c level.
  @JsonKey(name: 'measure')
  final CodeableConcept? measure;

  /// [detailQuantity] /// The target value of the focus to be achieved to signify the fulfillment of
  /// the goal, e.g. 150 pounds, 7.0%. Either the high or low or both values of
  /// the range can be specified. When a low value is missing, it indicates that
  /// the goal is achieved at any focus value at or below the high value.
  /// Similarly, if the high value is missing, it indicates that the goal is
  /// achieved at any focus value at or above the low value.
  @JsonKey(name: 'detailQuantity')
  final Quantity? detailQuantity;

  /// [detailRange] /// The target value of the focus to be achieved to signify the fulfillment of
  /// the goal, e.g. 150 pounds, 7.0%. Either the high or low or both values of
  /// the range can be specified. When a low value is missing, it indicates that
  /// the goal is achieved at any focus value at or below the high value.
  /// Similarly, if the high value is missing, it indicates that the goal is
  /// achieved at any focus value at or above the low value.
  @JsonKey(name: 'detailRange')
  final Range? detailRange;

  /// [detailCodeableConcept] /// The target value of the focus to be achieved to signify the fulfillment of
  /// the goal, e.g. 150 pounds, 7.0%. Either the high or low or both values of
  /// the range can be specified. When a low value is missing, it indicates that
  /// the goal is achieved at any focus value at or below the high value.
  /// Similarly, if the high value is missing, it indicates that the goal is
  /// achieved at any focus value at or above the low value.
  @JsonKey(name: 'detailCodeableConcept')
  final CodeableConcept? detailCodeableConcept;

  /// [detailString] /// The target value of the focus to be achieved to signify the fulfillment of
  /// the goal, e.g. 150 pounds, 7.0%. Either the high or low or both values of
  /// the range can be specified. When a low value is missing, it indicates that
  /// the goal is achieved at any focus value at or below the high value.
  /// Similarly, if the high value is missing, it indicates that the goal is
  /// achieved at any focus value at or above the low value.
  @JsonKey(name: 'detailString')
  final FhirString? detailString;
  @JsonKey(name: '_detailString')
  final Element? detailStringElement;

  /// [detailBoolean] /// The target value of the focus to be achieved to signify the fulfillment of
  /// the goal, e.g. 150 pounds, 7.0%. Either the high or low or both values of
  /// the range can be specified. When a low value is missing, it indicates that
  /// the goal is achieved at any focus value at or below the high value.
  /// Similarly, if the high value is missing, it indicates that the goal is
  /// achieved at any focus value at or above the low value.
  @JsonKey(name: 'detailBoolean')
  final FhirBoolean? detailBoolean;
  @JsonKey(name: '_detailBoolean')
  final Element? detailBooleanElement;

  /// [detailInteger] /// The target value of the focus to be achieved to signify the fulfillment of
  /// the goal, e.g. 150 pounds, 7.0%. Either the high or low or both values of
  /// the range can be specified. When a low value is missing, it indicates that
  /// the goal is achieved at any focus value at or below the high value.
  /// Similarly, if the high value is missing, it indicates that the goal is
  /// achieved at any focus value at or above the low value.
  @JsonKey(name: 'detailInteger')
  final FhirInteger? detailInteger;
  @JsonKey(name: '_detailInteger')
  final Element? detailIntegerElement;

  /// [detailRatio] /// The target value of the focus to be achieved to signify the fulfillment of
  /// the goal, e.g. 150 pounds, 7.0%. Either the high or low or both values of
  /// the range can be specified. When a low value is missing, it indicates that
  /// the goal is achieved at any focus value at or below the high value.
  /// Similarly, if the high value is missing, it indicates that the goal is
  /// achieved at any focus value at or above the low value.
  @JsonKey(name: 'detailRatio')
  final Ratio? detailRatio;

  /// [dueDate] /// Indicates either the date or the duration after start by which the goal
  /// should be met.
  @JsonKey(name: 'dueDate')
  final FhirDate? dueDate;
  @JsonKey(name: '_dueDate')
  final Element? dueDateElement;

  /// [dueDuration] /// Indicates either the date or the duration after start by which the goal
  /// should be met.
  @JsonKey(name: 'dueDuration')
  final FhirDuration? dueDuration;
  factory GoalTarget.fromJson(Map<String, dynamic> json) =>
      _$GoalTargetFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$GoalTargetToJson(this);

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
    Element? detailStringElement,
    FhirBoolean? detailBoolean,
    Element? detailBooleanElement,
    FhirInteger? detailInteger,
    Element? detailIntegerElement,
    Ratio? detailRatio,
    FhirDate? dueDate,
    Element? dueDateElement,
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
      detailStringElement: detailStringElement ?? this.detailStringElement,
      detailBoolean: detailBoolean ?? this.detailBoolean,
      detailBooleanElement: detailBooleanElement ?? this.detailBooleanElement,
      detailInteger: detailInteger ?? this.detailInteger,
      detailIntegerElement: detailIntegerElement ?? this.detailIntegerElement,
      detailRatio: detailRatio ?? this.detailRatio,
      dueDate: dueDate ?? this.dueDate,
      dueDateElement: dueDateElement ?? this.dueDateElement,
      dueDuration: dueDuration ?? this.dueDuration,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory GoalTarget.fromYaml(dynamic yaml) => yaml is String
      ? GoalTarget.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? GoalTarget.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'GoalTarget cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory GoalTarget.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return GoalTarget.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
