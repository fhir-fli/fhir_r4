import 'package:fhir_r4/fhir_r4.dart';
import 'package:ucum/ucum.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Operator to perform numeric addition of its arguments.
/// When adding quantities, the dimensions of each quantity must be the same,
/// but not necessarily the unit.
/// The Add operator is defined for the Integer, Decimal, and Quantity types.
/// In addition, a time-valued Quantity can be added to a Date, DateTime, or
/// Time using this operator.
/// If either argument is null, the result is null.
/// If the result of the addition cannot be represented (i.e., arithmetic
/// overflow), the result is null.
///
/// Signature:
/// +(left Integer, right Integer) Integer
/// +(left Long, right Long) Long
/// +(left Decimal, right Decimal) Decimal
/// +(left Quantity, right Quantity) Quantity
///
/// The Long type is a new feature being introduced in CQL 1.5, and has
/// trial-use status.
///
/// Description:
///
/// The add (+) operator performs numeric addition of its arguments.
///
/// When invoked with mixed Integer and Decimal or Long arguments, the Integer
/// argument will be implicitly converted to Decimal or Long.
///
/// When invoked with mixed Long and Decimal, the Long argument will be
/// implicitly converted to Decimal.
///
/// When invoked with mixed Decimal and Quantity arguments, the Decimal
/// argument will be implicitly converted to Quantity.
///
/// When adding quantities, the dimensions of each quantity must be the same,
/// but not necessarily the unit. For example, units of 'cm' and 'm' can be
/// added, but units of 'cm2' and 'cm' cannot. The unit of the result will be
/// the most granular unit of either input. Attempting to operate on quantities
/// with invalid units will result in a null. When a quantity has no units
/// specified, it is treated as a quantity with the default unit ('1').
///
/// If either argument is null, the result is null.
///
/// If the result of the addition cannot be represented (i.e. arithmetic
/// overflow), the result is null.
/// The following examples illustrate the behavior of the add operator:
/// define "IntegerAdd": 2 + 2 // 4
/// define "IntegerAddIsNull": 2 + null
/// define "LongAdd": 25L + 5 // 30L
/// define "DecimalAdd": 2.5 + 5 // 7.5
/// define "QuantityAdd": -5.5 'mg' + 2 'mg' // -3.5 'mg'
/// define "QuantityAddIsNull": -5.5 'cm' + 2 'cm2'

class Add extends BinaryExpression {
  Add({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Add.fromJson(Map<String, dynamic> json) => Add(
        operand: List<CqlExpression>.from(
          json['operand'].map((x) => CqlExpression.fromJson(x)),
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
  String get type => 'Add';

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    if (operand.length != 2) {
      return null;
    } else {
      final left = await operand[0].execute(context);
      final right = await operand[1].execute(context);
      return add(left, right);
    }
  }

  static dynamic add(dynamic left, dynamic right) {
    switch (left) {
      case FhirInteger _:
        return right is FhirInteger
            ? FhirInteger((left.valueNum! + right.valueNum!).toInt())
            : right is FhirDecimal
                ? FhirDecimal(double.parse(
                    UcumDecimal.fromString(left.valueString!)
                        .add(UcumDecimal.fromString(right.valueString!))
                        .asUcumDecimal()))
                : right is FhirInteger64
                    ? FhirInteger64.fromNum(
                        (left.valueNum as int) + right.valueBigInt!.toInt())
                    : null;
      case FhirInteger64 _:
        return right is FhirInteger64
            ? FhirInteger64(left.valueBigInt! + right.valueBigInt!)
            : right is FhirDecimal
                ? FhirDecimal(double.parse(
                    UcumDecimal.fromString(left.valueString!)
                        .add(UcumDecimal.fromString(right.valueString!))
                        .asUcumDecimal()))
                : right is FhirInteger
                    ? FhirInteger64.fromNum(
                        left.valueBigInt!.toInt() + right.valueNum!.toInt())
                    : null;
      case FhirDecimal _:
        return right is FhirDecimal
            ? FhirDecimal(double.parse(UcumDecimal.fromString(left.valueString!)
                .add(UcumDecimal.fromString(right.valueString!))
                .asUcumDecimal()))
            : right is FhirInteger
                ? FhirDecimal(double.parse(
                    UcumDecimal.fromString(left.valueString!)
                        .add(UcumDecimal.fromString(right.valueString!))
                        .asUcumDecimal()))
                : right is FhirInteger64
                    ? FhirDecimal(double.parse(
                        UcumDecimal.fromString(left.valueString!)
                            .add(UcumDecimal.fromString(right.valueString!))
                            .asUcumDecimal()))
                    : null;
      case ValidatedQuantity _:
        return right is ValidatedQuantity
            ? left.isValid() && right.isValid()
                ? left + right
                : right is FhirDecimal
                    ? left + right
                    : null
            : null;
      case FhirDateTimeBase _:
        {
          if (right is ValidatedQuantity && right.isDuration) {
            return addToDateTime(left, right);
          }
          return null;
        }
      case FhirTime _:
        {
          if (right is ValidatedQuantity && right.isDuration) {
            return left.plus(
              hours: right.hours?.toInt() ?? 0,
              minutes: right.minutes?.toInt() ?? 0,
              seconds: right.seconds?.toInt() ?? 0,
              milliseconds: right.milliseconds?.toInt() ?? 0,
            );
          }
          return null;
        }
      case CqlInterval _:
        {
          if (right is CqlInterval) {
            // [a,b] + [c,d] = [a+c, b+d]
            return CqlInterval(
              low: add(left.getStart(), right.getStart()),
              lowClosed: true,
              high: add(left.getEnd(), right.getEnd()),
              highClosed: true,
            );
          }
          return null;
        }
      case String _:
        {
          final r = right is String
              ? right
              : right is PrimitiveType
                  ? right.valueString
                  : null;
          return r != null ? left + r : null;
        }
      case FhirString _:
        {
          final l = left.valueString;
          if (l == null) return null;
          final r = right is String
              ? right
              : right is PrimitiveType
                  ? right.valueString
                  : null;
          return r != null ? l + r : null;
        }
      default:
        return null;
    }
  }

  /// CQL-compliant date/time addition.
  ///
  /// Handles weeks-to-days conversion, leap year day clamping, and
  /// precision truncation for partial dates.
  static dynamic addToDateTime(
    FhirDateTimeBase base,
    ValidatedQuantity qty, {
    bool subtract = false,
  }) {
    final sign = subtract ? -1 : 1;

    // Identify the single non-null quantity component
    int? qValue;
    String? qUnit;
    if (qty.years != null) {
      qValue = qty.years!.toInt();
      qUnit = 'year';
    } else if (qty.months != null) {
      qValue = qty.months!.toInt();
      qUnit = 'month';
    } else if (qty.weeks != null) {
      qValue = qty.weeks!.toInt();
      qUnit = 'week';
    } else if (qty.days != null) {
      qValue = qty.days!.toInt();
      qUnit = 'day';
    } else if (qty.hours != null) {
      qValue = qty.hours!.toInt();
      qUnit = 'hour';
    } else if (qty.minutes != null) {
      qValue = qty.minutes!.toInt();
      qUnit = 'minute';
    } else if (qty.seconds != null) {
      qValue = qty.seconds!.toInt();
      qUnit = 'second';
    } else if (qty.milliseconds != null) {
      qValue = qty.milliseconds!.toInt();
      qUnit = 'millisecond';
    }
    if (qValue == null || qUnit == null) return null;

    qValue = qValue * sign;

    // Determine the base date's precision level
    // 0=year, 1=month, 2=day, 3=hour, 4=minute, 5=second, 6=millisecond
    final int basePrecision;
    if (base.millisecond != null) {
      basePrecision = 6;
    } else if (base.second != null) {
      basePrecision = 5;
    } else if (base.minute != null) {
      basePrecision = 4;
    } else if (base.hour != null) {
      basePrecision = 3;
    } else if (base.day != null) {
      basePrecision = 2;
    } else if (base.month != null) {
      basePrecision = 1;
    } else {
      basePrecision = 0;
    }

    // Unit precision: week treated as day-level
    final int unitPrecision;
    switch (qUnit) {
      case 'year':
        unitPrecision = 0;
      case 'month':
        unitPrecision = 1;
      case 'week' || 'day':
        unitPrecision = 2;
      case 'hour':
        unitPrecision = 3;
      case 'minute':
        unitPrecision = 4;
      case 'second':
        unitPrecision = 5;
      case 'millisecond':
        unitPrecision = 6;
      default:
        return null;
    }

    // Prepare the add components
    int addYears = 0, addMonths = 0, addDays = 0;
    int addHours = 0, addMinutes = 0, addSeconds = 0, addMs = 0;

    if (unitPrecision <= basePrecision) {
      // Quantity precision is same or coarser than base — apply directly
      switch (qUnit) {
        case 'year':
          addYears = qValue;
        case 'month':
          addMonths = qValue;
        case 'week':
          addDays = qValue * 7;
        case 'day':
          addDays = qValue;
        case 'hour':
          addHours = qValue;
        case 'minute':
          addMinutes = qValue;
        case 'second':
          addSeconds = qValue;
        case 'millisecond':
          addMs = qValue;
      }
    } else {
      // Quantity is more precise than base — truncate to base precision
      // Per CQL spec: "converting the time-based quantity to the most
      // precise value specified in the first argument (truncating any
      // resulting decimal portion)"
      switch (basePrecision) {
        case 0: // year
          switch (qUnit) {
            case 'month':
              addYears = qValue ~/ 12;
            case 'week':
              addYears = (qValue * 7) ~/ 365;
            case 'day':
              addYears = qValue ~/ 365;
            case 'hour':
              addYears = qValue ~/ (365 * 24);
            case 'minute':
              addYears = qValue ~/ (365 * 24 * 60);
            case 'second':
              addYears = qValue ~/ (365 * 24 * 3600);
            case 'millisecond':
              addYears = qValue ~/ (365 * 24 * 3600 * 1000);
          }
        case 1: // month
          switch (qUnit) {
            case 'week':
              addMonths = (qValue * 7) ~/ 30;
            case 'day':
              addMonths = qValue ~/ 30;
            case 'hour':
              addMonths = qValue ~/ (30 * 24);
            case 'minute':
              addMonths = qValue ~/ (30 * 24 * 60);
            case 'second':
              addMonths = qValue ~/ (30 * 24 * 3600);
            case 'millisecond':
              addMonths = qValue ~/ (30 * 24 * 3600 * 1000);
          }
        case 2: // day
          switch (qUnit) {
            case 'hour':
              addDays = qValue ~/ 24;
            case 'minute':
              addDays = qValue ~/ (24 * 60);
            case 'second':
              addDays = qValue ~/ (24 * 3600);
            case 'millisecond':
              addDays = qValue ~/ (24 * 3600 * 1000);
          }
        case 3: // hour
          switch (qUnit) {
            case 'minute':
              addHours = qValue ~/ 60;
            case 'second':
              addHours = qValue ~/ 3600;
            case 'millisecond':
              addHours = qValue ~/ 3600000;
          }
        case 4: // minute
          switch (qUnit) {
            case 'second':
              addMinutes = qValue ~/ 60;
            case 'millisecond':
              addMinutes = qValue ~/ 60000;
          }
        case 5: // second
          addSeconds = qValue ~/ 1000; // only millisecond→second
      }
    }

    // Step 1: Add years and months with day clamping
    int y = (base.year ?? 0) + addYears;
    int m = (base.month ?? 1) + addMonths;

    // Normalize months
    if (m > 12) {
      y += (m - 1) ~/ 12;
      m = ((m - 1) % 12) + 1;
    } else {
      while (m < 1) {
        y--;
        m += 12;
      }
    }

    // Clamp day to last day of target month (handles leap year)
    int d = base.day ?? 1;
    if (addYears != 0 || addMonths != 0) {
      final maxDay = DateTime(y, m + 1, 0).day;
      if (d > maxDay) d = maxDay;
    }

    // Step 2: Add definite duration (days + sub-day)
    d += addDays;
    int h = (base.hour ?? 0) + addHours;
    int min = (base.minute ?? 0) + addMinutes;
    int s = (base.second ?? 0) + addSeconds;
    int ms = (base.millisecond ?? 0) + addMs;

    // Let Dart's DateTime handle day/time overflow/underflow
    final dt = base.isUtc
        ? DateTime.utc(y, m, d, h, min, s, ms)
        : DateTime(y, m, d, h, min, s, ms);

    // Reconstruct preserving original precision
    if (base is FhirDate) {
      return FhirDateTimeBase.fromUnits<FhirDate>(
        year: dt.year,
        month: base.month != null ? dt.month : null,
        day: base.day != null ? dt.day : null,
        isUtc: false,
      );
    }
    return FhirDateTimeBase.fromUnits<FhirDateTime>(
      year: dt.year,
      month: base.month != null ? dt.month : null,
      day: base.day != null ? dt.day : null,
      hour: base.hour != null ? dt.hour : null,
      minute: base.minute != null ? dt.minute : null,
      second: base.second != null ? dt.second : null,
      millisecond: base.millisecond != null ? dt.millisecond : null,
      timeZoneOffset: base.timeZoneOffset,
      isUtc: base.isUtc,
    );
  }
}
