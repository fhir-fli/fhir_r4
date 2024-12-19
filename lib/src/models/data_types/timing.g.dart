part of 'timing.dart';

/// Either a duration for the length of the timing schedule, a range of
/// possible length, or outer bounds for start and/or end limits of the
/// timing schedule.
sealed class BoundsXTimingRepeat {}

/// Either a duration for the length of the timing schedule, a range of
/// possible length, or outer bounds for start and/or end limits of the
/// timing schedule.
class DurationBoundsTimingRepeat extends FhirDuration
    implements BoundsXTimingRepeat {
  /// Factory constructor for super class
  factory DurationBoundsTimingRepeat.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDuration.fromJson(json) as DurationBoundsTimingRepeat;
}

/// Either a duration for the length of the timing schedule, a range of
/// possible length, or outer bounds for start and/or end limits of the
/// timing schedule.
class RangeBoundsTimingRepeat extends Range implements BoundsXTimingRepeat {
  /// Factory constructor for super class
  factory RangeBoundsTimingRepeat.fromJson(
    Map<String, dynamic> json,
  ) =>
      Range.fromJson(json) as RangeBoundsTimingRepeat;
}

/// Either a duration for the length of the timing schedule, a range of
/// possible length, or outer bounds for start and/or end limits of the
/// timing schedule.
class PeriodBoundsTimingRepeat extends Period implements BoundsXTimingRepeat {
  /// Factory constructor for super class
  factory PeriodBoundsTimingRepeat.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json) as PeriodBoundsTimingRepeat;
}
