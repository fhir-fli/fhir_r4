import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Goal] /// Describes the intended objective(s) for a patient, group or organization
/// care, for example, weight loss, restoring an activity of daily living,
/// obtaining herd immunity via immunization, meeting a process improvement
/// objective, etc.
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
  }) : super(resourceType: R4ResourceType.Goal);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Business identifiers assigned to this goal by the performer or other
  /// systems which remain constant as the resource is updated and propagates
  /// from server to server.
  final List<Identifier>? identifier;

  /// [lifecycleStatus] /// The state of the goal throughout its lifecycle.
  final FhirCode lifecycleStatus;
  final Element? lifecycleStatusElement;

  /// [achievementStatus] /// Describes the progression, or lack thereof, towards the goal against the
  /// target.
  final CodeableConcept? achievementStatus;

  /// [category] /// Indicates a category the goal falls within.
  final List<CodeableConcept>? category;

  /// [priority] /// Identifies the mutually agreed level of importance associated with
  /// reaching/sustaining the goal.
  final CodeableConcept? priority;

  /// [description] /// Human-readable and/or coded description of a specific desired objective of
  /// care, such as "control blood pressure" or "negotiate an obstacle course" or
  /// "dance with child at wedding".
  final CodeableConcept description;

  /// [subject] /// Identifies the patient, group or organization for whom the goal is being
  /// established.
  final Reference subject;

  /// [startDate] /// The date or event after which the goal should begin being pursued.
  final FhirDate? startDate;
  final Element? startDateElement;

  /// [startCodeableConcept] /// The date or event after which the goal should begin being pursued.
  final CodeableConcept? startCodeableConcept;

  /// [target] /// Indicates what should be done by when.
  final List<GoalTarget>? target;

  /// [statusDate] /// Identifies when the current status. I.e. When initially created, when
  /// achieved, when cancelled, etc.
  final FhirDate? statusDate;
  final Element? statusDateElement;

  /// [statusReason] /// Captures the reason for the current status.
  final FhirString? statusReason;
  final Element? statusReasonElement;

  /// [expressedBy] /// Indicates whose goal this is - patient goal, practitioner goal, etc.
  final Reference? expressedBy;

  /// [addresses] /// The identified conditions and other health record elements that are
  /// intended to be addressed by the goal.
  final List<Reference>? addresses;

  /// [note] /// Any comments related to the goal.
  final List<Annotation>? note;

  /// [outcomeCode] /// Identifies the change (or lack of change) at the point when the status of
  /// the goal is assessed.
  final List<CodeableConcept>? outcomeCode;

  /// [outcomeReference] /// Details of what's changed (or not changed).
  final List<Reference>? outcomeReference;
  @override
  Goal clone() => throw UnimplementedError();
  Goal copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FhirCode? lifecycleStatus,
    Element? lifecycleStatusElement,
    CodeableConcept? achievementStatus,
    List<CodeableConcept>? category,
    CodeableConcept? priority,
    CodeableConcept? description,
    Reference? subject,
    FhirDate? startDate,
    Element? startDateElement,
    CodeableConcept? startCodeableConcept,
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [GoalTarget] /// Indicates what should be done by when.
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
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [measure] /// The parameter whose value is being tracked, e.g. body weight, blood
  /// pressure, or hemoglobin A1c level.
  final CodeableConcept? measure;

  /// [detailQuantity] /// The target value of the focus to be achieved to signify the fulfillment of
  /// the goal, e.g. 150 pounds, 7.0%. Either the high or low or both values of
  /// the range can be specified. When a low value is missing, it indicates that
  /// the goal is achieved at any focus value at or below the high value.
  /// Similarly, if the high value is missing, it indicates that the goal is
  /// achieved at any focus value at or above the low value.
  final Quantity? detailQuantity;

  /// [detailRange] /// The target value of the focus to be achieved to signify the fulfillment of
  /// the goal, e.g. 150 pounds, 7.0%. Either the high or low or both values of
  /// the range can be specified. When a low value is missing, it indicates that
  /// the goal is achieved at any focus value at or below the high value.
  /// Similarly, if the high value is missing, it indicates that the goal is
  /// achieved at any focus value at or above the low value.
  final Range? detailRange;

  /// [detailCodeableConcept] /// The target value of the focus to be achieved to signify the fulfillment of
  /// the goal, e.g. 150 pounds, 7.0%. Either the high or low or both values of
  /// the range can be specified. When a low value is missing, it indicates that
  /// the goal is achieved at any focus value at or below the high value.
  /// Similarly, if the high value is missing, it indicates that the goal is
  /// achieved at any focus value at or above the low value.
  final CodeableConcept? detailCodeableConcept;

  /// [detailString] /// The target value of the focus to be achieved to signify the fulfillment of
  /// the goal, e.g. 150 pounds, 7.0%. Either the high or low or both values of
  /// the range can be specified. When a low value is missing, it indicates that
  /// the goal is achieved at any focus value at or below the high value.
  /// Similarly, if the high value is missing, it indicates that the goal is
  /// achieved at any focus value at or above the low value.
  final FhirString? detailString;
  final Element? detailStringElement;

  /// [detailBoolean] /// The target value of the focus to be achieved to signify the fulfillment of
  /// the goal, e.g. 150 pounds, 7.0%. Either the high or low or both values of
  /// the range can be specified. When a low value is missing, it indicates that
  /// the goal is achieved at any focus value at or below the high value.
  /// Similarly, if the high value is missing, it indicates that the goal is
  /// achieved at any focus value at or above the low value.
  final FhirBoolean? detailBoolean;
  final Element? detailBooleanElement;

  /// [detailInteger] /// The target value of the focus to be achieved to signify the fulfillment of
  /// the goal, e.g. 150 pounds, 7.0%. Either the high or low or both values of
  /// the range can be specified. When a low value is missing, it indicates that
  /// the goal is achieved at any focus value at or below the high value.
  /// Similarly, if the high value is missing, it indicates that the goal is
  /// achieved at any focus value at or above the low value.
  final FhirInteger? detailInteger;
  final Element? detailIntegerElement;

  /// [detailRatio] /// The target value of the focus to be achieved to signify the fulfillment of
  /// the goal, e.g. 150 pounds, 7.0%. Either the high or low or both values of
  /// the range can be specified. When a low value is missing, it indicates that
  /// the goal is achieved at any focus value at or below the high value.
  /// Similarly, if the high value is missing, it indicates that the goal is
  /// achieved at any focus value at or above the low value.
  final Ratio? detailRatio;

  /// [dueDate] /// Indicates either the date or the duration after start by which the goal
  /// should be met.
  final FhirDate? dueDate;
  final Element? dueDateElement;

  /// [dueDuration] /// Indicates either the date or the duration after start by which the goal
  /// should be met.
  final FhirDuration? dueDuration;
  @override
  GoalTarget clone() => throw UnimplementedError();
  GoalTarget copy({
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
    );
  }
}
