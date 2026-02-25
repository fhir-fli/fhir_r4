import 'dart:math' as math;

import 'package:fhir_r4/fhir_r4.dart';
import 'package:ucum/ucum.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Operator returns the set of intervals of size per for all the ranges present
/// in the given list of intervals, or a list of points covering the range
/// of a single interval.
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
    final per = operand.length > 1 ? await operand[1].execute(context) : null;
    return expand(source, per);
  }

  dynamic expand(dynamic source, dynamic per) {
    if (source == null) {
      return null;
    }

    if (source is CqlInterval) {
      // Single interval overload: compute sub-intervals then return starts
      final intervals = _computeSubIntervals(source, per);
      if (intervals == null) return null;
      return intervals.map((iv) => iv.low).toList();
    } else if (source is List) {
      // Filter out nulls per spec
      final intervals = source.whereType<CqlInterval>().toList();
      return _expandList(intervals, per);
    } else {
      throw ArgumentError(
          'Expand expression must have a single interval or a list of intervals');
    }
  }

  /// Expand a list of intervals into a list of sub-intervals of size per.
  /// Overlapping intervals are collapsed first, then each is expanded.
  dynamic _expandList(List<CqlInterval> intervals, dynamic per) {
    if (intervals.isEmpty) return <CqlInterval>[];
    // Collapse overlapping intervals first to avoid duplicates
    final collapsed = Collapse(operand: []).collapse(intervals, null);
    if (collapsed == null) return null;
    final List<CqlInterval> result = [];
    for (final interval in collapsed) {
      final sub = _computeSubIntervals(interval, per);
      // null return from _computeSubIntervals means incompatible per
      if (sub == null) return null;
      result.addAll(sub);
    }
    return result;
  }

  static const _temporalUnits = {
    'year', 'years', 'a', 'month', 'months', 'mo',
    'week', 'weeks', 'wk', 'day', 'days', 'd',
    'hour', 'hours', 'h', 'minute', 'minutes', 'min',
    'second', 'seconds', 's', 'millisecond', 'milliseconds', 'ms',
  };

  /// Normalize per to a type compatible with start for arithmetic.
  /// Returns null if per is incompatible with start type.
  static dynamic normalizePer(dynamic per, dynamic start) {
    if (per is! ValidatedQuantity) return per;
    final unit = per.unit;
    final num? numVal = num.tryParse(per.value.asUcumDecimal());
    if (numVal == null) return per;

    // Numeric intervals: per with unit '1' or no unit → convert to matching type
    if (unit == '1' || unit == '' || unit == null) {
      final isIntVal = numVal == numVal.truncateToDouble();
      if (start is FhirInteger) {
        if (isIntVal) return FhirInteger(numVal.toInt());
        // Decimal per with integer start: return decimal (triggers int→dec conversion)
        return FhirDecimal(numVal.toDouble());
      }
      if (start is FhirInteger64) return FhirInteger64.fromNum(numVal.toInt());
      if (start is FhirDecimal) {
        // Integer per with decimal start: keep as FhirInteger for ceiling alignment
        if (isIntVal) return FhirInteger(numVal.toInt());
        return FhirDecimal(numVal.toDouble());
      }
      if (start is ValidatedQuantity) return FhirDecimal(numVal.toDouble());
      // Temporal start + unitless per → incompatible
      if (start is FhirDateTimeBase || start is FhirTime) return null;
    }

    // Temporal per with numeric interval → incompatible
    if (start is FhirInteger || start is FhirDecimal ||
        start is FhirInteger64) {
      if (_temporalUnits.contains(unit)) return null;
    }

    // Non-temporal, non-unitless per with temporal interval → incompatible
    if (start is FhirDateTimeBase || start is FhirTime) {
      if (!_temporalUnits.contains(unit)) return null;
    }

    // Quantity intervals: keep as ValidatedQuantity for same-unit or convert
    if (start is ValidatedQuantity) {
      if (!_temporalUnits.contains(unit)) {
        // Quantity per with quantity start — keep as ValidatedQuantity
        return per;
      }
      // Temporal per with quantity start → incompatible
      return null;
    }

    return per; // Keep as ValidatedQuantity for temporal intervals
  }

  /// Compute the sub-intervals for a single interval.
  /// Returns null if per is incompatible with the interval type.
  List<CqlInterval>? _computeSubIntervals(CqlInterval interval, dynamic per) {
    final List<CqlInterval> result = [];
    // Check original boundaries for null (not getStart/getEnd which substitute min/max)
    if (interval.low == null || interval.high == null) {
      return result; // Null boundary → empty result
    }
    // Use raw low/high for open boundaries (we'll apply per-precision
    // successor/predecessor after normalization). For closed boundaries,
    // use getStart/getEnd which handles null→min/max substitution.
    dynamic start = interval.lowClosed == false
        ? interval.low
        : interval.getStart();
    dynamic end = interval.highClosed == false
        ? interval.high
        : interval.getEnd();

    if (start == null || end == null) {
      return result;
    }

    per ??= _defaultPer(start);

    // Normalize per to match start type
    per = normalizePer(per, start);
    if (per == null) return null; // Incompatible per → null result

    // For open boundaries, apply per-precision successor/predecessor
    // instead of the default type successor/predecessor.
    if (interval.lowClosed == false && interval.low != null) {
      start = _perSuccessor(interval.low!, per);
      if (start == null) return [];
    }
    if (interval.highClosed == false && interval.high != null) {
      end = _perPredecessor(interval.high!, per);
      if (end == null) return [];
    }

    // Apply precision adjustments to boundaries
    final adjusted = _adjustBoundaries(start, end, per);
    if (adjusted == null) return [];
    start = adjusted.$1;
    end = adjusted.$2;

    // Compute the step size for high boundary calculation
    final isDecimalPer = per is FhirDecimal;
    final isQuantityPer = per is ValidatedQuantity && !_temporalUnits.contains(per.unit);

    // For decimal per, track decimal places for rounding
    final int decPlaces = isDecimalPer ? _decimalPlaces(per as FhirDecimal) : 0;

    // Safety limit to prevent infinite loops
    for (var i = 0; i < 100000; i++) {
      if (!(LessOrEqual.lessOrEqual(start, end)?.valueBoolean ?? false)) break;
      var nextStart = Add.add(start, per);
      // If adding per returns null, per is more precise than boundary
      if (nextStart == null) return [];

      // Round to avoid floating-point drift for decimal per
      if (isDecimalPer && nextStart is FhirDecimal) {
        nextStart =
            FhirDecimal(_roundTo(nextStart.valueNum!.toDouble(), decPlaces));
      }

      // High boundary: predecessor of next start at per's precision
      dynamic high;
      if (isDecimalPer) {
        high = _decimalPredecessor(nextStart, per as FhirDecimal);
      } else if (isQuantityPer) {
        high = _quantityPredecessor(nextStart, per as ValidatedQuantity);
      } else {
        high = Predecessor.predecessor(nextStart);
      }
      if (high == null) break;

      // Only include if the entire sub-interval fits within [start, end]
      if (!(LessOrEqual.lessOrEqual(high, end)?.valueBoolean ?? false)) break;

      result.add(CqlInterval(
        low: start,
        lowClosed: true,
        high: high,
        highClosed: true,
      ));
      start = nextStart;
    }

    return result;
  }

  /// For quantity per, compute the predecessor at the per's precision.
  static dynamic _quantityPredecessor(
      dynamic value, ValidatedQuantity per) {
    if (value is! ValidatedQuantity) return Predecessor.predecessor(value);
    final perNum =
        num.tryParse(per.value.asUcumDecimal())?.toDouble() ?? 1.0;
    final valNum =
        num.tryParse(value.value.asUcumDecimal())?.toDouble();
    if (valNum == null) return null;
    // If per is integer-valued, step is 1; otherwise use decimal precision
    final isIntPer = perNum == perNum.truncateToDouble();
    if (isIntPer) {
      return ValidatedQuantity.fromNumber(valNum - 1, unit: value.unit);
    }
    final places = _quantityDecimalPlaces(perNum);
    final step = math.pow(10, -places).toDouble();
    final factor = math.pow(10, places);
    final rounded = ((valNum - step) * factor).roundToDouble() / factor;
    return ValidatedQuantity.fromNumber(rounded, unit: value.unit);
  }

  static int _quantityDecimalPlaces(double value) {
    final s = value.toString();
    final dotIdx = s.indexOf('.');
    if (dotIdx < 0) return 0;
    // Trim trailing zeros
    var end = s.length;
    while (end > dotIdx + 1 && s[end - 1] == '0') {
      end--;
    }
    return end - dotIdx - 1;
  }

  /// For decimal per, compute the predecessor at the per's decimal precision
  /// rather than using the default decimal predecessor (which subtracts 10^-8).
  static dynamic _decimalPredecessor(dynamic value, FhirDecimal per) {
    if (value is! FhirDecimal) return Predecessor.predecessor(value);
    final step = _decimalStepSize(per);
    final places = _decimalPlaces(per);
    // Round to avoid floating-point drift
    final raw = value.valueNum! - step;
    final factor = math.pow(10, places);
    final rounded = (raw * factor).roundToDouble() / factor;
    return FhirDecimal(rounded);
  }

  /// Check if ceiling alignment is needed: returns true if the original
  /// date/time has sub-per-precision fields that aren't at their minimum.
  static bool _needsCeilingAlignment(
      FhirDateTimeBase original, ValidatedQuantity per) {
    final unit = per.unit;
    // Fields to check and their minimums:
    // month→1, day→1, hour→0, minute→0, second→0, millisecond→0
    switch (unit) {
      case 'year' || 'years' || 'a':
        if (original.month != null && original.month! > 1) return true;
        if (original.day != null && original.day! > 1) return true;
        if (original.hour != null && original.hour! > 0) return true;
        if (original.minute != null && original.minute! > 0) return true;
        if (original.second != null && original.second! > 0) return true;
        if (original.millisecond != null && original.millisecond! > 0) {
          return true;
        }
      case 'month' || 'months' || 'mo':
        if (original.day != null && original.day! > 1) return true;
        if (original.hour != null && original.hour! > 0) return true;
        if (original.minute != null && original.minute! > 0) return true;
        if (original.second != null && original.second! > 0) return true;
        if (original.millisecond != null && original.millisecond! > 0) {
          return true;
        }
      case 'week' || 'weeks' || 'wk' || 'day' || 'days' || 'd':
        if (original.hour != null && original.hour! > 0) return true;
        if (original.minute != null && original.minute! > 0) return true;
        if (original.second != null && original.second! > 0) return true;
        if (original.millisecond != null && original.millisecond! > 0) {
          return true;
        }
      case 'hour' || 'hours' || 'h':
        if (original.minute != null && original.minute! > 0) return true;
        if (original.second != null && original.second! > 0) return true;
        if (original.millisecond != null && original.millisecond! > 0) {
          return true;
        }
      case 'minute' || 'minutes' || 'min':
        if (original.second != null && original.second! > 0) return true;
        if (original.millisecond != null && original.millisecond! > 0) {
          return true;
        }
      case 'second' || 'seconds' || 's':
        if (original.millisecond != null && original.millisecond! > 0) {
          return true;
        }
    }
    return false;
  }

  /// Successor at per's precision for open boundary handling.
  static dynamic _perSuccessor(dynamic value, dynamic per) {
    if (per is FhirDecimal && value is FhirNumber) {
      final step = _decimalStepSize(per);
      final places = _decimalPlaces(per);
      return FhirDecimal(
          _roundTo(value.valueNum!.toDouble() + step, places));
    }
    // Default: use standard successor
    return Successor.successor(value);
  }

  /// Predecessor at per's precision for open boundary handling.
  static dynamic _perPredecessor(dynamic value, dynamic per) {
    if (per is FhirDecimal && value is FhirNumber) {
      final step = _decimalStepSize(per);
      final places = _decimalPlaces(per);
      return FhirDecimal(
          _roundTo(value.valueNum!.toDouble() - step, places));
    }
    // Default: use standard predecessor
    return Predecessor.predecessor(value);
  }

  /// Get the step size (minimum unit) at the per's decimal precision.
  /// For per=0.1 → step=0.1, for per=0.01 → step=0.01, etc.
  static double _decimalStepSize(FhirDecimal per) {
    return math.pow(10, -_decimalPlaces(per)).toDouble();
  }

  /// Count decimal places in a FhirDecimal value.
  static int _decimalPlaces(FhirDecimal per) {
    final s = per.valueString ?? per.valueNum.toString();
    final dotIndex = s.indexOf('.');
    if (dotIndex < 0) return 0;
    return s.length - dotIndex - 1;
  }

  /// Round a double to the given number of decimal places.
  static double _roundTo(double value, int places) {
    final factor = math.pow(10, places);
    return (value * factor).roundToDouble() / factor;
  }

  /// Adjust start/end boundaries based on per type and precision.
  /// Returns null if per is more precise than boundaries (for dates/times).
  static (dynamic, dynamic)? _adjustBoundaries(
      dynamic start, dynamic end, dynamic per) {
    // Integer interval with decimal per: expand integer range to decimal
    if (start is FhirInteger && per is FhirDecimal) {
      final step = _decimalStepSize(per);
      final startDec = FhirDecimal(start.valueNum!.toDouble());
      // Only expand integer ends; decimal ends stay as-is
      final endVal = end.valueNum!.toDouble();
      final endDec = end is FhirInteger
          ? FhirDecimal(endVal + 1.0 - step)
          : FhirDecimal(endVal);
      return (startDec, endDec);
    }

    // Decimal interval with integer per: convert to integers
    if (start is FhirDecimal && per is FhirInteger) {
      final startVal = start.valueNum!.toDouble();
      // Ceiling alignment: if start has fractional part, advance to next int
      final ceilStart = startVal == startVal.truncateToDouble()
          ? startVal.toInt()
          : startVal.ceil();
      final endVal = end.valueNum!.toDouble();
      return (
        FhirInteger(ceilStart),
        FhirInteger(endVal.truncate()),
      );
    }

    // Time truncation based on quantity unit
    if (start is FhirTime && per is ValidatedQuantity) {
      final s = _truncateTimeToPer(start, per);
      final e = _truncateTimeToPer(end, per);
      if (s == null || e == null) return null;
      return (s, e);
    }

    // DateTime/Date truncation based on quantity unit
    if (start is FhirDateTimeBase && per is ValidatedQuantity) {
      var s = _truncateDateTimeToPer(start, per);
      final e = _truncateDateTimeToPer(end, per);
      if (s == null || e == null) return null;
      // Ceiling alignment: if truncation dropped non-minimum fields, advance
      if (s is FhirDateTimeBase &&
          _needsCeilingAlignment(start, per)) {
        s = Add.add(s, per);
        if (s == null) return null;
      }
      return (s, e);
    }

    // Quantity interval with integer per: ceiling-align start, floor-align end
    if (start is ValidatedQuantity && per is ValidatedQuantity) {
      final perNum =
          num.tryParse(per.value.asUcumDecimal())?.toDouble();
      if (perNum != null && perNum == perNum.truncateToDouble()) {
        final startNum =
            num.tryParse(start.value.asUcumDecimal())?.toDouble();
        final endNum = end is ValidatedQuantity
            ? num.tryParse((end as ValidatedQuantity).value.asUcumDecimal())
                ?.toDouble()
            : null;
        if (startNum != null && endNum != null) {
          final ceilStart = startNum == startNum.truncateToDouble()
              ? startNum
              : startNum.ceilToDouble();
          final floorEnd = endNum.truncateToDouble();
          return (
            ValidatedQuantity.fromNumber(ceilStart,
                unit: start.unit),
            ValidatedQuantity.fromNumber(floorEnd,
                unit: (end as ValidatedQuantity).unit),
          );
        }
      }
    }

    return (start, end);
  }

  /// Truncate FhirTime to per precision. Returns null if per is finer.
  static FhirTime? _truncateTimeToPer(FhirTime value, ValidatedQuantity per) {
    final unit = per.unit;
    final int perPrecision;
    switch (unit) {
      case 'hour' || 'hours' || 'h':
        perPrecision = 0;
      case 'minute' || 'minutes' || 'min':
        perPrecision = 1;
      case 'second' || 'seconds' || 's':
        perPrecision = 2;
      case 'millisecond' || 'milliseconds' || 'ms':
        perPrecision = 3;
      default:
        return value;
    }

    final int valuePrecision;
    if (value.millisecond != null) {
      valuePrecision = 3;
    } else if (value.second != null) {
      valuePrecision = 2;
    } else if (value.minute != null) {
      valuePrecision = 1;
    } else {
      valuePrecision = 0;
    }

    // Per more precise than boundary → return null (empty result for times)
    if (perPrecision > valuePrecision) return null;

    // Truncate to per precision
    return FhirTime.fromUnits(
      hour: value.hour!,
      minute: perPrecision >= 1 ? value.minute : null,
      second: perPrecision >= 2 ? value.second : null,
      millisecond: perPrecision >= 3 ? value.millisecond : null,
    );
  }

  /// Truncate FhirDateTimeBase to per precision. Returns null if per is finer.
  static dynamic _truncateDateTimeToPer(
      FhirDateTimeBase value, ValidatedQuantity per) {
    final unit = per.unit;
    final int perPrecision;
    switch (unit) {
      case 'year' || 'years' || 'a':
        perPrecision = 0;
      case 'month' || 'months' || 'mo':
        perPrecision = 1;
      case 'week' || 'weeks' || 'wk' || 'day' || 'days' || 'd':
        perPrecision = 2;
      case 'hour' || 'hours' || 'h':
        perPrecision = 3;
      case 'minute' || 'minutes' || 'min':
        perPrecision = 4;
      case 'second' || 'seconds' || 's':
        perPrecision = 5;
      case 'millisecond' || 'milliseconds' || 'ms':
        perPrecision = 6;
      default:
        return value;
    }

    final int valuePrecision;
    if (value.millisecond != null) {
      valuePrecision = 6;
    } else if (value.second != null) {
      valuePrecision = 5;
    } else if (value.minute != null) {
      valuePrecision = 4;
    } else if (value.hour != null) {
      valuePrecision = 3;
    } else if (value.day != null) {
      valuePrecision = 2;
    } else if (value.month != null) {
      valuePrecision = 1;
    } else {
      valuePrecision = 0;
    }

    // Per more precise than boundary → return null (empty for dates/times)
    if (perPrecision > valuePrecision) return null;

    if (value is FhirDate) {
      return FhirDateTimeBase.fromUnits<FhirDate>(
        year: value.year!,
        month: perPrecision >= 1 ? value.month : null,
        day: perPrecision >= 2 ? value.day : null,
        isUtc: false,
      );
    }
    return FhirDateTimeBase.fromUnits<FhirDateTime>(
      year: value.year!,
      month: perPrecision >= 1 ? value.month : null,
      day: perPrecision >= 2 ? value.day : null,
      hour: perPrecision >= 3 ? value.hour : null,
      minute: perPrecision >= 4 ? value.minute : null,
      second: perPrecision >= 5 ? value.second : null,
      millisecond: perPrecision >= 6 ? value.millisecond : null,
      timeZoneOffset: value.timeZoneOffset,
      isUtc: value.isUtc,
    );
  }

  /// Default per based on the coarsest precision of the point type.
  dynamic _defaultPer(dynamic start) {
    if (start is ValidatedQuantity) {
      return ValidatedQuantity.fromNumber(1, unit: start.unit);
    }
    if (start is FhirInteger) return FhirInteger(1);
    if (start is FhirInteger64) return FhirInteger64.fromNum(1);
    if (start is FhirDecimal) {
      return FhirDecimal(1.0);
    }
    if (start is FhirDate) {
      if (start.day != null) {
        return ValidatedQuantity.fromNumber(1, unit: 'day');
      }
      if (start.month != null) {
        return ValidatedQuantity.fromNumber(1, unit: 'month');
      }
      return ValidatedQuantity.fromNumber(1, unit: 'year');
    }
    if (start is FhirDateTime) {
      if (start.millisecond != null) {
        return ValidatedQuantity.fromNumber(1, unit: 'millisecond');
      }
      if (start.second != null) {
        return ValidatedQuantity.fromNumber(1, unit: 'second');
      }
      if (start.minute != null) {
        return ValidatedQuantity.fromNumber(1, unit: 'minute');
      }
      if (start.hour != null) {
        return ValidatedQuantity.fromNumber(1, unit: 'hour');
      }
      if (start.day != null) {
        return ValidatedQuantity.fromNumber(1, unit: 'day');
      }
      if (start.month != null) {
        return ValidatedQuantity.fromNumber(1, unit: 'month');
      }
      return ValidatedQuantity.fromNumber(1, unit: 'year');
    }
    if (start is FhirTime) {
      if (start.millisecond != null) {
        return ValidatedQuantity.fromNumber(1, unit: 'millisecond');
      }
      if (start.second != null) {
        return ValidatedQuantity.fromNumber(1, unit: 'second');
      }
      if (start.minute != null) {
        return ValidatedQuantity.fromNumber(1, unit: 'minute');
      }
      return ValidatedQuantity.fromNumber(1, unit: 'hour');
    }
    return FhirInteger(1);
  }
}
