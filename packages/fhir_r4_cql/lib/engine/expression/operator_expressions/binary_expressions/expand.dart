import 'package:fhir_r4/fhir_r4.dart';
import 'package:ucum/ucum.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Operator returns the set of intervals of size per for all the ranges present
/// in the given list of intervals.
/// Adjacent intervals within a sorted list are merged if they either overlap
/// or meet.
/// The operation combines successive intervals in the input that either overlap
/// or meet.
/// If the per argument is null, it's constructed based on the coarsest
/// precision of the boundaries of the intervals in the input set.
/// If the list of intervals is empty, the result is empty. If the list
/// contains a single interval, the result is a list with that interval.
/// If the list contains nulls, they will be excluded from the resulting list.
/// If the source argument is null, the result is null.
/// Signature:
///
/// expand(argument List<Interval<T>>, per Quantity) List<Interval<T>>
/// expand(argument Interval<T>, per Quantity) List<T>
/// The Interval<T> overload for expand is a new feature being introduced in
/// CQL 1.5, and has trial-use status.
///
/// Description:
///
/// The expand operator returns the set of intervals of size per for all the
/// intervals in the input, or the list of points covering the range of the
/// given interval, if invoked on a single interval.
///
/// The per argument determines the size of the resulting intervals and must be
/// a quantity-valued expression compatible with the interval point type. For
/// numeric intervals, this means a quantity with the default unit '1' (not to
/// be confused with the quantity value, which may be any valid positive
/// decimal). For Date-, DateTime-, and Time-valued intervals, this means a
/// quantity with a temporal unit (e.g., 'year', 'month', etc).
///
/// Conceptually, the per argument to the expand operator partitions the
/// value-space for the operation into units of size 'per', and the intervals
/// will be expanded aligning with those partitions. Note that the 'per'
/// partitions start from the starting boundary of the first input interval,
/// ordered.
///
/// If the per argument is null, a per value will be constructed based on the
/// coarsest precision of the boundaries of the intervals in the input set. For
/// example, a list of DateTime-based intervals where the boundaries are a
/// mixture of hours and minutes will expand at the hour precision.
///
/// More precisely, for each interval in the input, contribute all the intervals
/// of size per that start on or after the lower boundary and end on or before
/// the upper boundary, where the lower boundary for each interval contributed
/// is obtained by successively adding the per to the lower boundary of the
/// input interval.
///
/// For example:
///
/// expand { Interval[@2018-01-01, @2018-01-04] } per day
/// expand { Interval[@2018-01-01, @2018-01-04] } per 2 days
/// The following are the results of these examples:
///
/// { Interval[@2018-01-01, @2018-01-01], Interval[@2018-01-02, @2018-01-02], Interval[@2018-01-03, @2018-01-03], Interval[@2018-01-04, @2018-01-04] }
/// { Interval[@2018-01-01, @2018-01-02], Interval[@2018-01-03, @2018-01-04] }
/// If the interval boundaries are more precise than the per quantity, the more
/// precise values will be truncated to the precision specified by the per
/// quantity. In these cases, the resulting list of intervals may be more
/// broad than the input range due to this truncation. For example:
///
/// expand { Interval[@T10:00, @T12:30] } per hour
/// expand { Interval[10.0, 12.5] } per 1
/// The above examples would result in:
///
/// { Interval[@T10, @T10], Interval[@T11, @T11], Interval[@T12, @T12] }
/// { Interval[10, 10], Interval[11, 11], Interval[12, 12] }
/// If the interval boundaries are less precise than the per quantity, for
/// dates and times where the lack of precision indicates uncertainty, the
/// interval will not contribute any results to the output, because adding the
/// per to the lower boundary of the input interval results in null. For numeric
/// intervals, adding the per to the lower boundary produces a more precise
/// value for the output intervals. For example:
///
/// expand { Interval[@T10, @T10] } per minute
/// expand { Interval[10, 10] } per 0.1
/// The above examples would result in:
///
/// { }
/// { Interval[10.0, 10.0], Interval[10.1, 10.1], ..., Interval[10.9, 10.9] }
/// For intervals of quantities, the semantics of quantity arithmetic and
/// comparison apply, including unit conversion and compatible unit conversion.
/// As with all unit operations, implementations are required to respect units,
/// but are not required to support unit conversion.
///
/// If the input argument is an interval, rather than a list of intervals, the
/// result is a list of points, rather than a list of intervals. In this case,
/// the calculation is performed the same way, but the starting point of each
/// resulting interval is returned, rather than the interval. For example:
///
/// expand Interval[1, 10]
/// expand Interval[1, 10] per 2
/// The above examples would result in:
///
/// { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 }
/// { 1, 3, 5, 7, 9 }
/// If the list of intervals is empty, the result is empty. If the list of
/// intervals contains nulls, they will be excluded from the resulting list.
///
/// If the list argument is null, the result is null.
///
/// For intervals with null boundaries (intervals with an undefined start or
/// end date), if the boundary is open (e.g., Interval[0, null)), the interval
/// will not contribute any results to the output. If the boundary is closed
/// (e.g., Interval[0, null]), in theory the interval would contribute all
/// intervals to the beginning or ending of the domain. In practice, because
/// such an expansion is potentially too expensive to compute, and
/// implementations are allowed to not return results for such an interval.
class Expand extends BinaryExpression {
  Expand({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Expand.fromJson(Map<String, dynamic> json) => Expand(
        operand: List<CqlExpression>.from(
          json['operand'].map(
            (x) => CqlExpression.fromJson(x),
          ),
        ),
        annotation: json['annotation'] != null
            ? (json['annotation'] as List)
                .map((e) => CqlToElmBase.fromJson(e))
                .toList()
            : null,
        localId: json['localId'],
        locator: json['locator'],
        resultTypeName: json['resultTypeName'],
        resultTypeSpecifier: json['resultTypeSpecifier'] != null
            ? TypeSpecifierExpression.fromJson(json['resultTypeSpecifier'])
            : null,
      );

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {'type': type};
    if (operand.length > 1) {
      json['operand'] = operand.map((x) => x.toJson()).toList();
    } else {
      json['operand'] = [operand[0].toJson(), LiteralNull().toJson()];
    }

    if (annotation != null) {
      json['annotation'] = annotation!.map((e) => e.toJson()).toList();
    }
    if (localId != null) {
      json['localId'] = localId;
    }
    if (locator != null) {
      json['locator'] = locator;
    }
    if (resultTypeName != null) {
      json['resultTypeName'] = resultTypeName;
    }
    if (resultTypeSpecifier != null) {
      json['resultTypeSpecifier'] = resultTypeSpecifier!.toJson();
    }
    return json;
  }

  @override
  String get type => 'Expand';

  @override
  List<String> getReturnTypes(CqlLibrary library) =>
      ['List<CqlInterval>', 'List'];

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    if (operand.isEmpty) {
      return [];
    }

    final source = await operand[0].execute(context);
    final per = operand.length > 1 ? operand[1].execute(context) : null;
    return expand(source, per);
  }

  dynamic expand(dynamic source, dynamic per) {
    if (source == null) {
      return null;
    }

    if (source is CqlInterval) {
      return expandSingleInterval(source, per);
    } else if (source is List &&
        source.every((element) => element is CqlInterval)) {
      return expandList(source, per);
    } else {
      throw ArgumentError(
          'Expand expression must have a single interval or a list of intervals');
    }
  }

  List<dynamic> expandSingleInterval(CqlInterval interval, dynamic per) {
    final List<dynamic> expandedInterval = [];
    dynamic start = interval.getStart();
    dynamic end = interval.getEnd();
    per ??= perUnit(start);

    if (start == null || end == null) {
      return expandedInterval;
    }

    while ((LessOrEqual.lessOrEqual(start, end)?.valueBoolean ?? false)) {
      expandedInterval.add(start);
      start = Add.add(start, per);
    }

    return expandedInterval;
  }

  List<CqlInterval> expandList(List<dynamic> intervals, dynamic per) {
    final List<CqlInterval> expandedIntervals = [];
    for (final interval in intervals) {
      expandedIntervals.addAll(expandInterval(interval, per));
    }
    return expandedIntervals;
  }

  List<CqlInterval> expandInterval(CqlInterval interval, dynamic per) {
    final List<CqlInterval> expandedIntervals = [];
    dynamic start = interval.getStart();
    dynamic end = interval.getEnd();
    per ??= perUnit(start);

    if (start == null || end == null) {
      return expandedIntervals;
    }

    while ((LessOrEqual.lessOrEqual(start, end)?.valueBoolean ?? false)) {
      expandedIntervals.add(CqlInterval(
        low: start,
        lowClosed: true,
        high: start,
        highClosed: true,
      ));
      start = Add.add(start, per);
    }

    return expandedIntervals;
  }

  dynamic perUnit(dynamic source) {
    switch (source) {
      case FhirInteger _:
        return FhirInteger(1);
      case FhirDecimal _:
        return FhirDecimal(.00000001);
      case FhirInteger64 _:
        return FhirInteger64.fromNum(1);
      case FhirDate _:
        return ValidatedQuantity.fromNumber(1, unit: 'day');
      case FhirDateTime _:
        return ValidatedQuantity.fromNumber(1, unit: 'millisecond');
      case FhirTime _:
        return ValidatedQuantity.fromNumber(1, unit: 'millisecond');
    }
  }
}
