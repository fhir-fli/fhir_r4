import 'dart:convert';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(resourceType: R4ResourceType.Goal);

  @override
  String get fhirType => 'Goal';

  /// [identifier] /// Business identifiers assigned to this goal by the performer or other
  /// systems which remain constant as the resource is updated and propagates
  /// from server to server.
  final List<Identifier>? identifier;

  /// [lifecycleStatus] /// The state of the goal throughout its lifecycle.
  final GoalLifecycleStatus lifecycleStatus;
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
  final GoalStartEvent? startDate;
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
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
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
    if (implicitRulesElement != null) {
      json['_implicitRules'] = implicitRulesElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] =
          contained!.map<dynamic>((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map<dynamic>((Identifier v) => v.toJson()).toList();
    }
    json['lifecycleStatus'] = lifecycleStatus.toJson();
    if (achievementStatus != null) {
      json['achievementStatus'] = achievementStatus!.toJson();
    }
    if (category != null && category!.isNotEmpty) {
      json['category'] =
          category!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
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
      json['target'] =
          target!.map<dynamic>((GoalTarget v) => v.toJson()).toList();
    }
    if (statusDate?.value != null) {
      json['statusDate'] = statusDate!.toJson();
    }
    if (statusDateElement != null) {
      json['_statusDate'] = statusDateElement!.toJson();
    }
    if (statusReason?.value != null) {
      json['statusReason'] = statusReason!.toJson();
    }
    if (statusReasonElement != null) {
      json['_statusReason'] = statusReasonElement!.toJson();
    }
    if (expressedBy != null) {
      json['expressedBy'] = expressedBy!.toJson();
    }
    if (addresses != null && addresses!.isNotEmpty) {
      json['addresses'] =
          addresses!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map<dynamic>((Annotation v) => v.toJson()).toList();
    }
    if (outcomeCode != null && outcomeCode!.isNotEmpty) {
      json['outcomeCode'] =
          outcomeCode!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (outcomeReference != null && outcomeReference!.isNotEmpty) {
      json['outcomeReference'] =
          outcomeReference!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    return json;
  }

  factory Goal.fromJson(Map<String, dynamic> json) {
    return Goal(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson(json['implicitRules'])
          : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'])
          : null,
      languageElement: json['_language'] != null
          ? Element.fromJson(json['_language'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                  (dynamic v) => Resource.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                  (dynamic v) => Identifier.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      lifecycleStatus: GoalLifecycleStatus.fromJson(json['lifecycleStatus']),
      lifecycleStatusElement: json['_lifecycleStatus'] != null
          ? Element.fromJson(json['_lifecycleStatus'] as Map<String, dynamic>)
          : null,
      achievementStatus: json['achievementStatus'] != null
          ? CodeableConcept.fromJson(
              json['achievementStatus'] as Map<String, dynamic>)
          : null,
      category: json['category'] != null
          ? (json['category'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      priority: json['priority'] != null
          ? CodeableConcept.fromJson(json['priority'] as Map<String, dynamic>)
          : null,
      description:
          CodeableConcept.fromJson(json['description'] as Map<String, dynamic>),
      subject: Reference.fromJson(json['subject'] as Map<String, dynamic>),
      startDate: json['startDate'] != null
          ? GoalStartEvent.fromJson(json['startDate'])
          : null,
      startDateElement: json['_startDate'] != null
          ? Element.fromJson(json['_startDate'] as Map<String, dynamic>)
          : null,
      startCodeableConcept: json['startCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['startCodeableConcept'] as Map<String, dynamic>)
          : null,
      target: json['target'] != null
          ? (json['target'] as List<dynamic>)
              .map<GoalTarget>(
                  (dynamic v) => GoalTarget.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      statusDate: json['statusDate'] != null
          ? FhirDate.fromJson(json['statusDate'])
          : null,
      statusDateElement: json['_statusDate'] != null
          ? Element.fromJson(json['_statusDate'] as Map<String, dynamic>)
          : null,
      statusReason: json['statusReason'] != null
          ? FhirString.fromJson(json['statusReason'])
          : null,
      statusReasonElement: json['_statusReason'] != null
          ? Element.fromJson(json['_statusReason'] as Map<String, dynamic>)
          : null,
      expressedBy: json['expressedBy'] != null
          ? Reference.fromJson(json['expressedBy'] as Map<String, dynamic>)
          : null,
      addresses: json['addresses'] != null
          ? (json['addresses'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                  (dynamic v) => Annotation.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      outcomeCode: json['outcomeCode'] != null
          ? (json['outcomeCode'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      outcomeReference: json['outcomeReference'] != null
          ? (json['outcomeReference'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
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
    CodeableConcept? achievementStatus,
    List<CodeableConcept>? category,
    CodeableConcept? priority,
    CodeableConcept? description,
    Reference? subject,
    GoalStartEvent? startDate,
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
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
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
    if (detailStringElement != null) {
      json['_detailString'] = detailStringElement!.toJson();
    }
    if (detailBoolean?.value != null) {
      json['detailBoolean'] = detailBoolean!.toJson();
    }
    if (detailBooleanElement != null) {
      json['_detailBoolean'] = detailBooleanElement!.toJson();
    }
    if (detailInteger?.value != null) {
      json['detailInteger'] = detailInteger!.toJson();
    }
    if (detailIntegerElement != null) {
      json['_detailInteger'] = detailIntegerElement!.toJson();
    }
    if (detailRatio != null) {
      json['detailRatio'] = detailRatio!.toJson();
    }
    if (dueDate?.value != null) {
      json['dueDate'] = dueDate!.toJson();
    }
    if (dueDateElement != null) {
      json['_dueDate'] = dueDateElement!.toJson();
    }
    if (dueDuration != null) {
      json['dueDuration'] = dueDuration!.toJson();
    }
    return json;
  }

  factory GoalTarget.fromJson(Map<String, dynamic> json) {
    return GoalTarget(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      measure: json['measure'] != null
          ? CodeableConcept.fromJson(json['measure'] as Map<String, dynamic>)
          : null,
      detailQuantity: json['detailQuantity'] != null
          ? Quantity.fromJson(json['detailQuantity'] as Map<String, dynamic>)
          : null,
      detailRange: json['detailRange'] != null
          ? Range.fromJson(json['detailRange'] as Map<String, dynamic>)
          : null,
      detailCodeableConcept: json['detailCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['detailCodeableConcept'] as Map<String, dynamic>)
          : null,
      detailString: json['detailString'] != null
          ? FhirString.fromJson(json['detailString'])
          : null,
      detailStringElement: json['_detailString'] != null
          ? Element.fromJson(json['_detailString'] as Map<String, dynamic>)
          : null,
      detailBoolean: json['detailBoolean'] != null
          ? FhirBoolean.fromJson(json['detailBoolean'])
          : null,
      detailBooleanElement: json['_detailBoolean'] != null
          ? Element.fromJson(json['_detailBoolean'] as Map<String, dynamic>)
          : null,
      detailInteger: json['detailInteger'] != null
          ? FhirInteger.fromJson(json['detailInteger'])
          : null,
      detailIntegerElement: json['_detailInteger'] != null
          ? Element.fromJson(json['_detailInteger'] as Map<String, dynamic>)
          : null,
      detailRatio: json['detailRatio'] != null
          ? Ratio.fromJson(json['detailRatio'] as Map<String, dynamic>)
          : null,
      dueDate:
          json['dueDate'] != null ? FhirDate.fromJson(json['dueDate']) : null,
      dueDateElement: json['_dueDate'] != null
          ? Element.fromJson(json['_dueDate'] as Map<String, dynamic>)
          : null,
      dueDuration: json['dueDuration'] != null
          ? FhirDuration.fromJson(json['dueDuration'] as Map<String, dynamic>)
          : null,
    );
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
