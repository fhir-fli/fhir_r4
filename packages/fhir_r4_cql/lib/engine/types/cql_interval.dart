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
      return null;
    }

    // Find the maximum start point and minimum end point for the intersection
    var maxStart =
        (Greater.greater(leftStart, rightStart)?.valueBoolean ?? false)
            ? leftStart
            : rightStart;
    var minEnd = (Less.less(leftEnd, rightEnd)?.valueBoolean ?? false)
        ? leftEnd
        : rightEnd;

    // Ensure the intersection is valid (start is before end)
    if (!(Greater.greater(minEnd, maxStart)?.valueBoolean ?? false)) {
      return null;
    }

    // Return the new interval representing the intersection
    return CqlInterval(
        low: maxStart, lowClosed: true, high: minEnd, highClosed: true);
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

    // Ensure the intersection is valid (start is before end)
    if (!(Greater.greater(end, start)?.valueBoolean ?? false)) {
      return null;
    }

    // Return the new interval representing the intersection
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
