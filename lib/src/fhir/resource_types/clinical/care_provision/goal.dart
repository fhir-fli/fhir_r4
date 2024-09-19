// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'goal.freezed.dart';
part 'goal.g.dart';

/// [Goal] Describes the intended objective(s) for a patient, group or
@freezed
class Goal extends DomainResource with _$Goal {
  /// [Goal] Describes the intended objective(s) for a patient, group or
  Goal._();

  /// [Goal] Describes the intended objective(s) for a patient, group or
  /// organization care, for example, weight loss, restoring an activity of
  /// daily living, obtaining herd immunity via immunization, meeting a process
  ///  improvement objective, etc.
  ///
  /// [resourceType] This is a Goal resource
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  ///
  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  ///
  /// [implicitRulesElement] Extensions for implicitRules
  ///
  /// [language] The base language in which the resource is written.
  ///
  /// [languageElement] Extensions for language
  ///
  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  ///
  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the resource and that modifies the
  /// understanding of the element that contains it and/or the understanding of
  /// the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the definition
  /// and use of extensions. Though any implementer is allowed to define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [identifier] Business identifiers assigned to this goal by the performer
  /// or other systems which remain constant as the resource is updated and
  ///  propagates from server to server.
  ///
  /// [lifecycleStatus] The state of the goal throughout its lifecycle.
  ///
  /// [lifecycleStatusElement] Extensions for lifecycleStatus
  ///
  /// [achievementStatus] Describes the progression, or lack thereof, towards
  ///  the goal against the target.
  ///
  /// [category] Indicates a category the goal falls within.
  ///
  /// [priority] Identifies the mutually agreed level of importance associated
  ///  with reaching/sustaining the goal.
  ///
  /// [description] Human-readable and/or coded description of a specific
  /// desired objective of care, such as "control blood pressure" or "negotiate
  ///  an obstacle course" or "dance with child at wedding".
  ///
  /// [subject] Identifies the patient, group or organization for whom the goal
  ///  is being established.
  ///
  /// [startDate] The date or event after which the goal should begin being
  ///  pursued.
  ///
  /// [startDateElement] Extensions for startDate
  ///
  /// [startCodeableConcept] The date or event after which the goal should
  ///  begin being pursued.
  ///
  /// [target] Indicates what should be done by when.
  ///
  /// [statusDate] Identifies when the current status.  I.e. When initially
  ///  created, when achieved, when cancelled, etc.
  ///
  /// [statusDateElement] Extensions for statusDate
  ///
  /// [statusReason] Captures the reason for the current status.
  ///
  /// [statusReasonElement] Extensions for statusReason
  ///
  /// [expressedBy] Indicates whose goal this is - patient goal, practitioner
  ///  goal, etc.
  ///
  /// [addresses] The identified conditions and other health record elements
  ///  that are intended to be addressed by the goal.
  ///
  /// [note] Any comments related to the goal.
  ///
  /// [outcomeCode] Identifies the change (or lack of change) at the point when
  ///  the status of the goal is assessed.
  ///
  /// [outcomeReference] Details of what's changed (or not changed).
  factory Goal({
    @Default(R4ResourceType.Goal)
    @JsonKey(unknownEnumValue: R4ResourceType.Goal)

    /// [resourceType] This is a Goal resource
    R4ResourceType resourceType,

    /// [id] The logical id of the resource, as used in the URL for the resource.
    ///  Once assigned, this value never changes.
    String? id,

    /// [meta] The metadata about the resource. This is content that is
    /// maintained by the infrastructure. Changes to the content might not always
    ///  be associated with version changes to the resource.
    FhirMeta? meta,

    /// [implicitRules] A reference to a set of rules that were followed when the
    /// resource was constructed, and which must be understood when processing the
    /// content. Often, this is a reference to an implementation guide that
    ///  defines the special rules along with other profiles etc.
    FhirUri? implicitRules,

    /// [implicitRulesElement] Extensions for implicitRules
    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,

    /// [language] The base language in which the resource is written.
    FhirCode? language,

    /// [languageElement] Extensions for language
    @JsonKey(name: '_language') PrimitiveElement? languageElement,

    /// [text] A human-readable narrative that contains a summary of the resource
    /// and can be used to represent the content of the resource to a human. The
    /// narrative need not encode all the structured data, but is required to
    /// contain sufficient detail to make it "clinically safe" for a human to just
    /// read the narrative. Resource definitions may define what content should be
    ///  represented in the narrative to ensure clinical safety.
    Narrative? text,

    /// [contained] These resources do not have an independent existence apart
    /// from the resource that contains them - they cannot be identified
    /// independently, and nor can they have their own independent transaction
    ///  scope.
    List<Resource>? contained,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the resource. To make the use of
    /// extensions safe and manageable, there is a strict set of governance
    /// applied to the definition and use of extensions. Though any implementer
    /// can define an extension, there is a set of requirements that SHALL be met
    ///  as part of the definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the resource and that modifies the
    /// understanding of the element that contains it and/or the understanding of
    /// the containing element's descendants. Usually modifier elements provide
    /// negation or qualification. To make the use of extensions safe and
    /// manageable, there is a strict set of governance applied to the definition
    /// and use of extensions. Though any implementer is allowed to define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [identifier] Business identifiers assigned to this goal by the performer
    /// or other systems which remain constant as the resource is updated and
    ///  propagates from server to server.
    List<Identifier>? identifier,

    /// [lifecycleStatus] The state of the goal throughout its lifecycle.
    FhirCode? lifecycleStatus,

    /// [lifecycleStatusElement] Extensions for lifecycleStatus
    @JsonKey(name: '_lifecycleStatus') PrimitiveElement? lifecycleStatusElement,

    /// [achievementStatus] Describes the progression, or lack thereof, towards
    ///  the goal against the target.
    CodeableConcept? achievementStatus,

    /// [category] Indicates a category the goal falls within.
    List<CodeableConcept>? category,

    /// [priority] Identifies the mutually agreed level of importance associated
    ///  with reaching/sustaining the goal.
    CodeableConcept? priority,

    /// [description] Human-readable and/or coded description of a specific
    /// desired objective of care, such as "control blood pressure" or "negotiate
    ///  an obstacle course" or "dance with child at wedding".
    required CodeableConcept description,

    /// [subject] Identifies the patient, group or organization for whom the goal
    ///  is being established.
    required Reference subject,

    /// [startDate] The date or event after which the goal should begin being
    ///  pursued.
    FhirDate? startDate,

    /// [startDateElement] Extensions for startDate
    @JsonKey(name: '_startDate') PrimitiveElement? startDateElement,

    /// [startCodeableConcept] The date or event after which the goal should
    ///  begin being pursued.
    CodeableConcept? startCodeableConcept,

    /// [target] Indicates what should be done by when.
    List<GoalTarget>? target,

    /// [statusDate] Identifies when the current status.  I.e. When initially
    ///  created, when achieved, when cancelled, etc.
    FhirDate? statusDate,

    /// [statusDateElement] Extensions for statusDate
    @JsonKey(name: '_statusDate') PrimitiveElement? statusDateElement,

    /// [statusReason] Captures the reason for the current status.
    String? statusReason,

    /// [statusReasonElement] Extensions for statusReason
    @JsonKey(name: '_statusReason') PrimitiveElement? statusReasonElement,

    /// [expressedBy] Indicates whose goal this is - patient goal, practitioner
    ///  goal, etc.
    Reference? expressedBy,

    /// [addresses] The identified conditions and other health record elements
    ///  that are intended to be addressed by the goal.
    List<Reference>? addresses,

    /// [note] Any comments related to the goal.
    List<Annotation>? note,

    /// [outcomeCode] Identifies the change (or lack of change) at the point when
    ///  the status of the goal is assessed.
    List<CodeableConcept>? outcomeCode,

    /// [outcomeReference] Details of what's changed (or not changed).
    List<Reference>? outcomeReference,
  }) = _Goal;

  @override
  String get fhirType => 'Goal';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Goal.fromYaml(dynamic yaml) => yaml is String
      ? Goal.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Goal.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Goal cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Goal.fromJson(Map<String, dynamic> json) => _$GoalFromJson(json);

  /// Acts like a constructor, returns a [Goal], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Goal.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$GoalFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  Resource newId() => copyWith(id: generateNewUuidString());

  @override
  Resource newIdIfNoId() => id == null ? newId() : this;

  @override
  String get path => '$fhirType/$id';

  @override
  String get resourceTypeString => fhirType;

  @override
  Reference get thisReference =>
      Reference(reference: path, type: FhirUri(resourceTypeString));

  @override
  String toYaml() => json2yaml(toJson());

  @override
  Resource updateVersion({FhirMeta? oldMeta, bool versionIdAsTime = false}) =>
      copyWith(meta: updateFhirMetaVersion(oldMeta ?? meta, versionIdAsTime));
}

/// [GoalTarget] Describes the intended objective(s) for a patient, group or
@freezed

/// [GoalTarget] Describes the intended objective(s) for a patient, group or
@freezed
class GoalTarget extends BackboneElement with _$GoalTarget {
  /// [GoalTarget] Describes the intended objective(s) for a patient, group or
  GoalTarget._();

  /// [GoalTarget] Describes the intended objective(s) for a patient, group or
  /// organization care, for example, weight loss, restoring an activity of
  /// daily living, obtaining herd immunity via immunization, meeting a process
  ///  improvement objective, etc.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [measure] The parameter whose value is being tracked, e.g. body weight,
  ///  blood pressure, or hemoglobin A1c level.
  ///
  /// [detailQuantity] The target value of the focus to be achieved to signify
  /// the fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the high or low
  /// or both values of the range can be specified. When a low value is missing,
  /// it indicates that the goal is achieved at any focus value at or below the
  /// high value. Similarly, if the high value is missing, it indicates that the
  ///  goal is achieved at any focus value at or above the low value.
  ///
  /// [detailRange] The target value of the focus to be achieved to signify the
  /// fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the high or low or
  /// both values of the range can be specified. When a low value is missing, it
  /// indicates that the goal is achieved at any focus value at or below the
  /// high value. Similarly, if the high value is missing, it indicates that the
  ///  goal is achieved at any focus value at or above the low value.
  ///
  /// [detailCodeableConcept] The target value of the focus to be achieved to
  /// signify the fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the
  /// high or low or both values of the range can be specified. When a low value
  /// is missing, it indicates that the goal is achieved at any focus value at
  /// or below the high value. Similarly, if the high value is missing, it
  /// indicates that the goal is achieved at any focus value at or above the low
  ///  value.
  ///
  /// [detailString] The target value of the focus to be achieved to signify
  /// the fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the high or low
  /// or both values of the range can be specified. When a low value is missing,
  /// it indicates that the goal is achieved at any focus value at or below the
  /// high value. Similarly, if the high value is missing, it indicates that the
  ///  goal is achieved at any focus value at or above the low value.
  ///
  /// [detailStringElement] Extensions for detailString
  ///
  /// [detailBoolean] The target value of the focus to be achieved to signify
  /// the fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the high or low
  /// or both values of the range can be specified. When a low value is missing,
  /// it indicates that the goal is achieved at any focus value at or below the
  /// high value. Similarly, if the high value is missing, it indicates that the
  ///  goal is achieved at any focus value at or above the low value.
  ///
  /// [detailBooleanElement] Extensions for detailBoolean
  ///
  /// [detailInteger] The target value of the focus to be achieved to signify
  /// the fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the high or low
  /// or both values of the range can be specified. When a low value is missing,
  /// it indicates that the goal is achieved at any focus value at or below the
  /// high value. Similarly, if the high value is missing, it indicates that the
  ///  goal is achieved at any focus value at or above the low value.
  ///
  /// [detailIntegerElement] Extensions for detailInteger
  ///
  /// [detailRatio] The target value of the focus to be achieved to signify the
  /// fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the high or low or
  /// both values of the range can be specified. When a low value is missing, it
  /// indicates that the goal is achieved at any focus value at or below the
  /// high value. Similarly, if the high value is missing, it indicates that the
  ///  goal is achieved at any focus value at or above the low value.
  ///
  /// [dueDate] Indicates either the date or the duration after start by which
  ///  the goal should be met.
  ///
  /// [dueDateElement] Extensions for dueDate
  ///
  /// [dueDuration] Indicates either the date or the duration after start by
  ///  which the goal should be met.
  factory GoalTarget({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [measure] The parameter whose value is being tracked, e.g. body weight,
    ///  blood pressure, or hemoglobin A1c level.
    CodeableConcept? measure,

    /// [detailQuantity] The target value of the focus to be achieved to signify
    /// the fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the high or low
    /// or both values of the range can be specified. When a low value is missing,
    /// it indicates that the goal is achieved at any focus value at or below the
    /// high value. Similarly, if the high value is missing, it indicates that the
    ///  goal is achieved at any focus value at or above the low value.
    Quantity? detailQuantity,

    /// [detailRange] The target value of the focus to be achieved to signify the
    /// fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the high or low or
    /// both values of the range can be specified. When a low value is missing, it
    /// indicates that the goal is achieved at any focus value at or below the
    /// high value. Similarly, if the high value is missing, it indicates that the
    ///  goal is achieved at any focus value at or above the low value.
    Range? detailRange,

    /// [detailCodeableConcept] The target value of the focus to be achieved to
    /// signify the fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the
    /// high or low or both values of the range can be specified. When a low value
    /// is missing, it indicates that the goal is achieved at any focus value at
    /// or below the high value. Similarly, if the high value is missing, it
    /// indicates that the goal is achieved at any focus value at or above the low
    ///  value.
    CodeableConcept? detailCodeableConcept,

    /// [detailString] The target value of the focus to be achieved to signify
    /// the fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the high or low
    /// or both values of the range can be specified. When a low value is missing,
    /// it indicates that the goal is achieved at any focus value at or below the
    /// high value. Similarly, if the high value is missing, it indicates that the
    ///  goal is achieved at any focus value at or above the low value.
    String? detailString,

    /// [detailStringElement] Extensions for detailString
    @JsonKey(name: '_detailString') PrimitiveElement? detailStringElement,

    /// [detailBoolean] The target value of the focus to be achieved to signify
    /// the fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the high or low
    /// or both values of the range can be specified. When a low value is missing,
    /// it indicates that the goal is achieved at any focus value at or below the
    /// high value. Similarly, if the high value is missing, it indicates that the
    ///  goal is achieved at any focus value at or above the low value.
    FhirBoolean? detailBoolean,

    /// [detailBooleanElement] Extensions for detailBoolean
    @JsonKey(name: '_detailBoolean') PrimitiveElement? detailBooleanElement,

    /// [detailInteger] The target value of the focus to be achieved to signify
    /// the fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the high or low
    /// or both values of the range can be specified. When a low value is missing,
    /// it indicates that the goal is achieved at any focus value at or below the
    /// high value. Similarly, if the high value is missing, it indicates that the
    ///  goal is achieved at any focus value at or above the low value.
    FhirInteger? detailInteger,

    /// [detailIntegerElement] Extensions for detailInteger
    @JsonKey(name: '_detailInteger') PrimitiveElement? detailIntegerElement,

    /// [detailRatio] The target value of the focus to be achieved to signify the
    /// fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the high or low or
    /// both values of the range can be specified. When a low value is missing, it
    /// indicates that the goal is achieved at any focus value at or below the
    /// high value. Similarly, if the high value is missing, it indicates that the
    ///  goal is achieved at any focus value at or above the low value.
    Ratio? detailRatio,

    /// [dueDate] Indicates either the date or the duration after start by which
    ///  the goal should be met.
    FhirDate? dueDate,

    /// [dueDateElement] Extensions for dueDate
    @JsonKey(name: '_dueDate') PrimitiveElement? dueDateElement,

    /// [dueDuration] Indicates either the date or the duration after start by
    ///  which the goal should be met.
    FhirDuration? dueDuration,
  }) = _GoalTarget;

  @override
  String get fhirType => 'GoalTarget';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory GoalTarget.fromYaml(dynamic yaml) => yaml is String
      ? GoalTarget.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? GoalTarget.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'GoalTarget cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory GoalTarget.fromJson(Map<String, dynamic> json) =>
      _$GoalTargetFromJson(json);

  /// Acts like a constructor, returns a [GoalTarget], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory GoalTarget.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$GoalTargetFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
