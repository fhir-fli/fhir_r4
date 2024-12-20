part of 'request_group.dart';

/// An optional value describing when the action should be performed.
sealed class TimingXRequestGroupAction extends DataType {}

/// An optional value describing when the action should be performed.
class DateTimeTimingRequestGroupAction extends FhirDateTime
    implements TimingXRequestGroupAction {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeTimingRequestGroupAction.fromString(
    String input, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
  }) =>
      FhirDateTime.fromString(
        input,
        element: element,
        id: id,
        extension_: extension_,
      ) as DateTimeTimingRequestGroupAction;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeTimingRequestGroupAction.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeTimingRequestGroupAction;

  /// Factory constructor for super class
  factory DateTimeTimingRequestGroupAction.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json) as DateTimeTimingRequestGroupAction;
}

/// An optional value describing when the action should be performed.
class AgeTimingRequestGroupAction extends Age
    implements TimingXRequestGroupAction {
  /// Factory constructor for super class
  factory AgeTimingRequestGroupAction.fromJson(
    Map<String, dynamic> json,
  ) =>
      Age.fromJson(json) as AgeTimingRequestGroupAction;
}

/// An optional value describing when the action should be performed.
class PeriodTimingRequestGroupAction extends Period
    implements TimingXRequestGroupAction {
  /// Factory constructor for super class
  factory PeriodTimingRequestGroupAction.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json) as PeriodTimingRequestGroupAction;
}

/// An optional value describing when the action should be performed.
class DurationTimingRequestGroupAction extends FhirDuration
    implements TimingXRequestGroupAction {
  /// Factory constructor for super class
  factory DurationTimingRequestGroupAction.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDuration.fromJson(json) as DurationTimingRequestGroupAction;
}

/// An optional value describing when the action should be performed.
class RangeTimingRequestGroupAction extends Range
    implements TimingXRequestGroupAction {
  /// Factory constructor for super class
  factory RangeTimingRequestGroupAction.fromJson(
    Map<String, dynamic> json,
  ) =>
      Range.fromJson(json) as RangeTimingRequestGroupAction;
}

/// An optional value describing when the action should be performed.
class TimingTimingRequestGroupAction extends Timing
    implements TimingXRequestGroupAction {
  /// Factory constructor for super class
  factory TimingTimingRequestGroupAction.fromJson(
    Map<String, dynamic> json,
  ) =>
      Timing.fromJson(json) as TimingTimingRequestGroupAction;
}

/// A duration or range of durations to apply to the relationship. For
/// example, 30-60 minutes before.
sealed class OffsetXRequestGroupRelatedAction extends DataType {}

/// A duration or range of durations to apply to the relationship. For
/// example, 30-60 minutes before.
class DurationOffsetRequestGroupRelatedAction extends FhirDuration
    implements OffsetXRequestGroupRelatedAction {
  /// Factory constructor for super class
  factory DurationOffsetRequestGroupRelatedAction.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDuration.fromJson(json) as DurationOffsetRequestGroupRelatedAction;
}

/// A duration or range of durations to apply to the relationship. For
/// example, 30-60 minutes before.
class RangeOffsetRequestGroupRelatedAction extends Range
    implements OffsetXRequestGroupRelatedAction {
  /// Factory constructor for super class
  factory RangeOffsetRequestGroupRelatedAction.fromJson(
    Map<String, dynamic> json,
  ) =>
      Range.fromJson(json) as RangeOffsetRequestGroupRelatedAction;
}
