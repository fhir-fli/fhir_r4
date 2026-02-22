import 'package:fhir_r4/fhir_r4.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class CqlInterval<T> implements CqlType, Comparable<CqlInterval> {
  T? low;
  bool lowClosed;
  T? high;
  bool highClosed;
  dynamic state; // Adjust based on your State implementation
  bool uncertain = false;

  CqlInterval({
    this.low,
    bool? lowClosed,
    this.high,
    bool? highClosed,
    this.state,
  })  : lowClosed = lowClosed ?? true,
        highClosed = highClosed ?? true {
    if (low is FhirDateTimeBase && high is FhirDateTimeBase) {
      if ((low as FhirDateTimeBase).isAfter(high as FhirDateTimeBase) ?? true) {
        throw Exception(
            "Invalid Interval - the ending boundary must be greater than or equal to the starting boundary.");
      }
    } else if (low != null && high != null) {
      bool? isStartGreater =
          Greater.greater(getStart(), getEnd())?.valueBoolean;
      if (isStartGreater == true) {
        throw Exception(
            "Invalid Interval - the ending boundary must be greater than or equal to the starting boundary.");
      }
    }
  }

  String get type => T != dynamic
      ? T.toString()
      : low != null
          ? low.runtimeType.toString()
          : high != null
              ? high.runtimeType.toString()
              : 'dynamic';

  dynamic getSize(dynamic start, dynamic end) {
    if (start == null || end == null) {
      return null;
    }

    if (start is FhirNumber || false) {
      return Subtract.subtract(end, start);
    }

    throw Exception(
        "Cannot perform width operator with argument of type '${start.runtimeType}'.");
  }

  bool isUncertain() => uncertain;

  CqlInterval setUncertain(bool uncertain) {
    this.uncertain = uncertain;
    return this;
  }

  Object? getStart() {
    return lowClosed
        ? low ?? MinValue.minValue(high.runtimeType.toString())
        : Successor.successor(low);
  }

  Object? getEnd() => highClosed
      ? high ?? MaxValue.maxValue(low.runtimeType.toString())
      : Predecessor.predecessor(high);

  @override
  int compareTo(CqlInterval other) {
    if (_compareTo(getStart(), other.getStart()) == 0) {
      return _compareTo(getEnd(), other.getEnd());
    }
    return _compareTo(getStart(), other.getStart());
  }

  int _compareTo(dynamic left, dynamic right) {
    if (left == null && right == null) {
      return 0;
    } else if (left == null) {
      return -1;
    } else if (right == null) {
      return 1;
    }

    try {
      if (left is Comparable) {
        return left.compareTo(right);
      } else {
        throw Exception("Type ${left.runtimeType} is not comparable");
      }
    } on TypeError catch (_) {
      throw Exception(
          "Type ${left.runtimeType} is not compatible for comparison with ${right.runtimeType}");
    }
  }

  bool contains(dynamic value) => value == null
      ? false
      : value is CqlInterval
          ? (GreaterOrEqual.greaterOrEqual(value.getStart(), getStart())
                      ?.valueBoolean ??
                  false) &&
              (LessOrEqual.lessOrEqual(value.getEnd(), getEnd())
                      ?.valueBoolean ??
                  false)
          : (GreaterOrEqual.greaterOrEqual(value, getStart())?.valueBoolean ??
                  false) &&
              (LessOrEqual.lessOrEqual(value, getEnd())?.valueBoolean ?? false);

  @override
  bool equivalent(Object other) => other is CqlInterval
      ? (Equivalent.equivalent(getStart(), other.getStart()).valueBoolean ??
              false) &&
          (Equivalent.equivalent(getEnd(), other.getEnd()).valueBoolean ??
              false)
      : false;

  @override
  bool? equal(Object other) {
    if (other is CqlInterval) {
      if (isUncertain()) {
        if (Intersect.intersect(this, other) != null) {
          return null;
        }
      }

      return And.and(Equal.equal(getStart(), other.getStart()),
              Equal.equal(getEnd(), other.getEnd()))
          ?.valueBoolean;
    }

    if (other is int) {
      // Assuming the constructor and methods to handle this scenario
      return equal(CqlInterval(
          low: other,
          lowClosed: true,
          high: other,
          highClosed: true,
          state: state));
    }

    throw Exception(
        "Cannot perform equal operation on types: '$runtimeType' and '${other.runtimeType}'");
  }

  /// This method returns the intersection of two intervals.
  CqlInterval? intersect(CqlInterval right) {
    // Get start and end points for both intervals
    var leftStart = getStart();
    var leftEnd = getEnd();
    var rightStart = right.getStart();
    var rightEnd = right.getEnd();

    // Handle null boundaries as extending to infinity
    // Both start AND end null means empty/invalid — return null
    if (leftStart == null && leftEnd == null) return null;
    if (rightStart == null && rightEnd == null) return null;

    // Check overlap: if we have all four endpoints, check properly;
    // if some are null (unbounded), check what we can
    if (leftStart != null &&
        leftEnd != null &&
        rightStart != null &&
        rightEnd != null) {
      bool overlaps = Overlaps.overlaps(this, right)?.valueBoolean ?? false;
      if (!overlaps) return null;
    } else {
      // Partial null check: if left ends before right starts, no overlap
      if (leftEnd != null &&
          rightStart != null &&
          (Less.less(leftEnd, rightStart)?.valueBoolean ?? false)) {
        return null;
      }
      if (rightEnd != null &&
          leftStart != null &&
          (Less.less(rightEnd, leftStart)?.valueBoolean ?? false)) {
        return null;
      }
    }

    // Find the maximum start point (null start = unknown → result unknown)
    Object? maxStart;
    bool resultLowClosed;
    if (leftStart == null && rightStart == null) {
      maxStart = null;
      resultLowClosed = false;
    } else if (leftStart == null) {
      // Left start unknown: max(unknown, rightStart) = unknown
      maxStart = null;
      resultLowClosed = false;
    } else if (rightStart == null) {
      // Right start unknown: max(leftStart, unknown) = unknown
      maxStart = null;
      resultLowClosed = false;
    } else {
      maxStart = (Greater.greater(leftStart, rightStart)?.valueBoolean ?? false)
          ? leftStart
          : rightStart;
      resultLowClosed = true;
    }

    // Find the minimum end point (null end = unknown → result unknown)
    Object? minEnd;
    bool resultHighClosed;
    if (leftEnd == null && rightEnd == null) {
      minEnd = null;
      resultHighClosed = false;
    } else if (leftEnd == null) {
      // Left end unknown: min(unknown, rightEnd) = unknown
      minEnd = null;
      resultHighClosed = false;
    } else if (rightEnd == null) {
      // Right end unknown: min(leftEnd, unknown) = unknown
      minEnd = null;
      resultHighClosed = false;
    } else {
      minEnd = (Less.less(leftEnd, rightEnd)?.valueBoolean ?? false)
          ? leftEnd
          : rightEnd;
      resultHighClosed = true;
    }

    // Ensure the intersection is valid (start is before end)
    if (maxStart != null &&
        minEnd != null &&
        !(GreaterOrEqual.greaterOrEqual(minEnd, maxStart)?.valueBoolean ??
            false)) {
      return null;
    }

    // Return the new interval representing the intersection
    return CqlInterval(
        low: maxStart, lowClosed: resultLowClosed, high: minEnd, highClosed: resultHighClosed);
  }

  CqlInterval? except(CqlInterval right) {
    // Get start and end points for both intervals
    var leftStart = getStart();
    var leftEnd = getEnd();
    var rightStart = right.getStart();
    var rightEnd = right.getEnd();

    // Ensure no start or end point is null
    if (leftStart == null ||
        leftEnd == null ||
        rightStart == null ||
        rightEnd == null) {
      return null;
    }

    // Determine if intervals overlap
    bool overlaps = Overlaps.overlaps(this, right)?.valueBoolean ?? false;
    if (!overlaps) {
      return this;
    }
    final doesContain = contains(right);
    if (doesContain) {
      // If right shares left's end, return the portion before right
      final endsEqual = Equal.equal(rightEnd, leftEnd)?.valueBoolean ?? false;
      if (endsEqual) {
        final newEnd = Predecessor.predecessor(rightStart);
        if ((GreaterOrEqual.greaterOrEqual(newEnd, leftStart)?.valueBoolean ??
            false)) {
          return CqlInterval(
              low: leftStart, lowClosed: true, high: newEnd, highClosed: true);
        }
        return null;
      }
      // If right shares left's start, return the portion after right
      final startsEqual =
          Equal.equal(rightStart, leftStart)?.valueBoolean ?? false;
      if (startsEqual) {
        final newStart = Successor.successor(rightEnd);
        if ((LessOrEqual.lessOrEqual(newStart, leftEnd)?.valueBoolean ??
            false)) {
          return CqlInterval(
              low: newStart, lowClosed: true, high: leftEnd, highClosed: true);
        }
        return null;
      }
      // Right is strictly interior — result would be disjoint
      return null;
    }

    dynamic start;
    dynamic end;
    if ((Less.less(leftStart, rightStart)?.valueBoolean ?? false)) {
      start = leftStart;
      end = Predecessor.predecessor(rightStart);
    } else if (Greater.greater(leftEnd, rightEnd)?.valueBoolean ?? false) {
      start = Successor.successor(rightEnd);
      end = leftEnd;
    }

    // Ensure the result is valid (start is before or equal to end)
    if (!(GreaterOrEqual.greaterOrEqual(end, start)?.valueBoolean ?? false)) {
      return null;
    }

    return CqlInterval(
        low: start, lowClosed: true, high: end, highClosed: true);
  }

  @override
  bool operator ==(Object other) {
    if (other is CqlInterval) {
      return equivalent(other);
    }
    return false;
  }

  @override
  int get hashCode {
    int result = 17;
    result = 31 * result + (lowClosed ? 1 : 0);
    result = 47 * result + (highClosed ? 1 : 0);
    result = 13 * result + (low != null ? low.hashCode : 0);
    result = 89 * result + (high != null ? high.hashCode : 0);
    return result;
  }

  @override
  String toString() {
    return 'Interval${lowClosed ? "[" : "("}${low ?? "null"}, ${high ?? "null"}${highClosed ? "]" : ")"}';
  }
}
