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
  List<CqlInterval> _expandList(List<CqlInterval> intervals, dynamic per) {
    final List<CqlInterval> result = [];
    for (final interval in intervals) {
      result.addAll(_computeSubIntervals(interval, per));
    }
    return result;
  }

  /// Compute the sub-intervals for a single interval.
  List<CqlInterval> _computeSubIntervals(CqlInterval interval, dynamic per) {
    final List<CqlInterval> result = [];
    dynamic start = interval.getStart();
    dynamic end = interval.getEnd();

    if (start == null || end == null) {
      return result;
    }

    per ??= _defaultPer(start);

    // Apply precision adjustments to boundaries
    final adjusted = _adjustBoundaries(start, end, per);
    if (adjusted == null) return [];
    start = adjusted.$1;
    end = adjusted.$2;

    // Compute the step size for high boundary calculation
    final isDecimalPer = per is FhirDecimal;

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
      final high = isDecimalPer
          ? _decimalPredecessor(nextStart, per as FhirDecimal)
          : Predecessor.predecessor(nextStart);
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
      // Integer end expands to maximum decimal at per precision:
      // integer 10 at tenths precision → 10.9
      final endDec =
          FhirDecimal(end.valueNum!.toDouble() + 1.0 - step);
      return (startDec, endDec);
    }

    // Decimal interval with integer per: truncate boundaries to integers
    if (start is FhirDecimal && per is FhirInteger) {
      return (
        FhirInteger(start.valueNum!.truncate()),
        FhirInteger(end.valueNum!.truncate()),
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
      final s = _truncateDateTimeToPer(start, per);
      final e = _truncateDateTimeToPer(end, per);
      if (s == null || e == null) return null;
      return (s, e);
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
    if (start is FhirInteger) return FhirInteger(1);
    if (start is FhirInteger64) return FhirInteger64.fromNum(1);
    if (start is FhirDecimal) return FhirDecimal(0.00000001);
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
