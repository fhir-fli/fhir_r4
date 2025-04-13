import '../../../../cql.dart';

/// Operator to get the unique set of intervals that completely cover the ranges
/// present in the given list of intervals.
/// Adjacent intervals within a sorted list are merged if they either overlap or
/// meet.
/// The operation combines successive intervals in the input that either overlap
/// or meet.
/// If the per argument is null, it's constructed based on the coarsest
/// precision of the boundaries of the intervals in the input set.
/// If the list of intervals is empty, the result is empty. If the list contains
/// a single interval, the result is a list with that interval.
/// If the list contains nulls, they will be excluded from the resulting list.
/// If the source argument is null, the result is null.
/// Signature:
///
/// collapse(argument List<Interval<T>>) List<Interval<T>>
/// collapse(argument List<Interval<T>>, per Quantity) List<Interval<T>>
/// Description:
///
/// The collapse operator returns the unique set of intervals that completely
/// covers the ranges present in the given list of intervals. In other words,
/// adjacent intervals within a sorted list are merged if they either overlap or
/// meet.
///
/// Note that because the semantics for overlaps and meets are themselves
/// defined in terms of the interval successor and predecessor operators, sets
/// of Date-, DateTime-, or Time-based intervals that are only defined to a
/// particular precision will calculate meets and overlaps at that precision.
/// For example, a list of DateTime-based intervals where the boundaries are
/// all specified to the hour will collapse at the hour precision, unless the
/// collapse precision is overridden with the per argument.
///
/// Conceptually, the per argument to the collapse operator partitions the
/// value-space for the operation into units of size 'per', and the intervals
/// will be collapsed aligning with those partitions. Note that the 'per'
/// partitions start from the starting boundary of the first input interval,
/// ordered.
///
/// The per argument determines the precision at which the collapse is computed
/// and must be a quantity-valued expression compatible with the interval point
/// type. For numeric intervals, this means a quantity with the default unit
/// '1' (not to be confused with the quantity value, which may be any valid
/// positive decimal). For Date-, DateTime-, and Time-valued intervals, this
/// means a quantity with a temporal unit (e.g., 'year', 'month', etc).
///
/// If the per argument is null, a per value will be constructed based on the
/// coarsest precision of the boundaries of the intervals in the input set. For
/// example, a list of DateTime-based intervals where the boundaries are a
/// mixture of hours and minutes will collapse at the hour precision.
///
/// If the list of intervals is empty, the result is empty. If the list of
/// intervals contains a single interval, the result is a list with that
/// interval. If the list of intervals contains nulls, they will be excluded
/// from the resulting list.
///
/// If the list argument is null, the result is null.
///
/// The following examples illustrate the behavior of the collapse operator:
///
/// define "Collapse1To9": collapse { Interval[1, 4], Interval[4, 8], Interval[7, 9] } // { Interval[1, 9] }
/// define "CollapseIsNull": collapse null
class Collapse extends BinaryExpression {
  Collapse({
    required super.operand,
    super.isList = true,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Collapse.fromJson(Map<String, dynamic> json) {
    List<CqlExpression> operand = [];
    if (json['operand'] is List) {
      operand = List<CqlExpression>.from(
          json['operand'].map((x) => CqlExpression.fromJson(x)));
    } else if (json['operand'] is Map) {
      operand = [CqlExpression.fromJson(json['operand'])];
    }
    return Collapse(
      operand: operand,
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
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {
      'type': type,
      'operand': operand.map((x) => x.toJson()).toList(),
    };
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
  String get type => 'Collapse';

  @override
  List<String> getReturnTypes(CqlLibrary library) =>
      const ['List<CqlInterval>'];

  @override
  List<CqlInterval>? execute(Map<String, dynamic> context) {
    if (operand.isEmpty) {
      return [];
    }

    final source = operand[0].execute(context);
    final per = operand.length > 1 ? operand[1].execute(context) : null;
    return collapse(source, per);
  }

  // TODO(Dokotela): with precision
  List<CqlInterval>? collapse(dynamic source, dynamic per) {
    if (source == null) {
      return null;
    }

    if (source.isEmpty) {
      return [];
    }

    if (source is List && source.every((element) => element is CqlInterval)) {
      if (source.length == 1) {
        return source as List<CqlInterval>;
      }

      // Sort the source by their start points
      source.sort((a, b) => a.compareTo(b));

      final List<CqlInterval> collapsedSource = [];
      CqlInterval? currentInterval = source.first;

      for (var i = 1; i < source.length; i++) {
        final nextInterval = source[i];

        // Check if current and next source overlap or meet
        final overlaps =
            Overlaps.overlaps(currentInterval, nextInterval)?.value ?? false;
        final meets =
            Meets.meets(currentInterval, nextInterval)?.value ?? false;

        if (overlaps || meets) {
          // Merge the source
          final newEnd =
              (Greater.greater(currentInterval?.getEnd(), nextInterval.getEnd())
                          ?.value ??
                      false)
                  ? currentInterval?.getEnd()
                  : nextInterval.getEnd();
          currentInterval = CqlInterval(
            low: currentInterval?.low,
            lowClosed: currentInterval?.lowClosed,
            high: newEnd,
            highClosed: nextInterval.highClosed,
          );
        } else if (currentInterval != null) {
          collapsedSource.add(currentInterval);
          currentInterval = nextInterval;
        }
      }

      if (currentInterval != null) {
        collapsedSource.add(currentInterval);
      }

      return collapsedSource;
    }
    throw ArgumentError('Collapse expression must have a list of intervals');
  }
}
