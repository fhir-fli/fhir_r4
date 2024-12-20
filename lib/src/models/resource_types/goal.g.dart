part of 'goal.dart';

/// The date or event after which the goal should begin being pursued.
sealed class StartXGoalGoal extends DataType {}

/// The date or event after which the goal should begin being pursued.
class GoalStartEventStartGoalGoal extends GoalStartEvent
    implements StartXGoalGoal {
  /// Factory constructor for super class
  factory GoalStartEventStartGoalGoal.fromJson(
    Map<String, dynamic> json,
  ) =>
      GoalStartEvent.fromJson(json) as GoalStartEventStartGoalGoal;
}

/// The date or event after which the goal should begin being pursued.
class CodeableConceptStartGoalGoal extends CodeableConcept
    implements StartXGoalGoal {
  /// Factory constructor for super class
  factory CodeableConceptStartGoalGoal.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json) as CodeableConceptStartGoalGoal;
}

/// The target value of the focus to be achieved to signify the fulfillment
/// of the goal, e.g. 150 pounds, 7.0%. Either the high or low or both
/// values of the range can be specified. When a low value is missing, it
/// indicates that the goal is achieved at any focus value at or below the
/// high value. Similarly, if the high value is missing, it indicates that
/// the goal is achieved at any focus value at or above the low value.
sealed class DetailXGoalTarget extends DataType {}

/// The target value of the focus to be achieved to signify the fulfillment
/// of the goal, e.g. 150 pounds, 7.0%. Either the high or low or both
/// values of the range can be specified. When a low value is missing, it
/// indicates that the goal is achieved at any focus value at or below the
/// high value. Similarly, if the high value is missing, it indicates that
/// the goal is achieved at any focus value at or above the low value.
class QuantityDetailGoalTarget extends Quantity implements DetailXGoalTarget {
  /// Factory constructor for super class
  factory QuantityDetailGoalTarget.fromJson(
    Map<String, dynamic> json,
  ) =>
      Quantity.fromJson(json) as QuantityDetailGoalTarget;
}

/// The target value of the focus to be achieved to signify the fulfillment
/// of the goal, e.g. 150 pounds, 7.0%. Either the high or low or both
/// values of the range can be specified. When a low value is missing, it
/// indicates that the goal is achieved at any focus value at or below the
/// high value. Similarly, if the high value is missing, it indicates that
/// the goal is achieved at any focus value at or above the low value.
class RangeDetailGoalTarget extends Range implements DetailXGoalTarget {
  /// Factory constructor for super class
  factory RangeDetailGoalTarget.fromJson(
    Map<String, dynamic> json,
  ) =>
      Range.fromJson(json) as RangeDetailGoalTarget;
}

/// The target value of the focus to be achieved to signify the fulfillment
/// of the goal, e.g. 150 pounds, 7.0%. Either the high or low or both
/// values of the range can be specified. When a low value is missing, it
/// indicates that the goal is achieved at any focus value at or below the
/// high value. Similarly, if the high value is missing, it indicates that
/// the goal is achieved at any focus value at or above the low value.
class CodeableConceptDetailGoalTarget extends CodeableConcept
    implements DetailXGoalTarget {
  /// Factory constructor for super class
  factory CodeableConceptDetailGoalTarget.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json) as CodeableConceptDetailGoalTarget;
}

/// The target value of the focus to be achieved to signify the fulfillment
/// of the goal, e.g. 150 pounds, 7.0%. Either the high or low or both
/// values of the range can be specified. When a low value is missing, it
/// indicates that the goal is achieved at any focus value at or below the
/// high value. Similarly, if the high value is missing, it indicates that
/// the goal is achieved at any focus value at or above the low value.
class StringDetailGoalTarget extends FhirString implements DetailXGoalTarget {
  /// Constructor for [StringDetailGoalTarget]
  StringDetailGoalTarget(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringDetailGoalTarget.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json) as StringDetailGoalTarget;
}

/// The target value of the focus to be achieved to signify the fulfillment
/// of the goal, e.g. 150 pounds, 7.0%. Either the high or low or both
/// values of the range can be specified. When a low value is missing, it
/// indicates that the goal is achieved at any focus value at or below the
/// high value. Similarly, if the high value is missing, it indicates that
/// the goal is achieved at any focus value at or above the low value.
class BooleanDetailGoalTarget extends FhirBoolean implements DetailXGoalTarget {
  /// Constructor for [BooleanDetailGoalTarget]
  BooleanDetailGoalTarget(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory BooleanDetailGoalTarget.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirBoolean.fromJson(json) as BooleanDetailGoalTarget;
}

/// The target value of the focus to be achieved to signify the fulfillment
/// of the goal, e.g. 150 pounds, 7.0%. Either the high or low or both
/// values of the range can be specified. When a low value is missing, it
/// indicates that the goal is achieved at any focus value at or below the
/// high value. Similarly, if the high value is missing, it indicates that
/// the goal is achieved at any focus value at or above the low value.
class IntegerDetailGoalTarget extends FhirInteger implements DetailXGoalTarget {
  /// Constructor for [IntegerDetailGoalTarget]
  IntegerDetailGoalTarget(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory IntegerDetailGoalTarget.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirInteger.fromJson(json) as IntegerDetailGoalTarget;
}

/// The target value of the focus to be achieved to signify the fulfillment
/// of the goal, e.g. 150 pounds, 7.0%. Either the high or low or both
/// values of the range can be specified. When a low value is missing, it
/// indicates that the goal is achieved at any focus value at or below the
/// high value. Similarly, if the high value is missing, it indicates that
/// the goal is achieved at any focus value at or above the low value.
class RatioDetailGoalTarget extends Ratio implements DetailXGoalTarget {
  /// Factory constructor for super class
  factory RatioDetailGoalTarget.fromJson(
    Map<String, dynamic> json,
  ) =>
      Ratio.fromJson(json) as RatioDetailGoalTarget;
}

/// Indicates either the date or the duration after start by which the goal
/// should be met.
sealed class DueXGoalTarget extends DataType {}

/// Indicates either the date or the duration after start by which the goal
/// should be met.
class DateDueGoalTarget extends FhirDate implements DueXGoalTarget {
  /// Factory constructor to create a [FhirDate] from a [String]
  factory DateDueGoalTarget.fromString(
    String input, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
  }) =>
      FhirDate.fromString(
        input,
        element: element,
        id: id,
        extension_: extension_,
      ) as DateDueGoalTarget;

  /// Factory constructor to create a [FhirDate] from a [DateTime]
  factory DateDueGoalTarget.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDate.fromDateTime(input, element: element) as DateDueGoalTarget;

  /// Factory constructor for super class
  factory DateDueGoalTarget.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDate.fromJson(json) as DateDueGoalTarget;
}

/// Indicates either the date or the duration after start by which the goal
/// should be met.
class DurationDueGoalTarget extends FhirDuration implements DueXGoalTarget {
  /// Factory constructor for super class
  factory DurationDueGoalTarget.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDuration.fromJson(json) as DurationDueGoalTarget;
}
