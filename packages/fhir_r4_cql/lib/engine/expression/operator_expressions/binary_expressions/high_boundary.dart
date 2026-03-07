import 'package:fhir_r4/fhir_r4.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Operator to return the greatest possible value of the input to the specified precision.
/// The operator can be used with Decimal, Date, DateTime, and Time values.
/// If the input value is null, the result is null.
class HighBoundary extends BinaryExpression {
  HighBoundary({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory HighBoundary.fromJson(Map<String, dynamic> json) => HighBoundary(
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
  String get type => 'HighBoundary';

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    final value = await operand[0].execute(context);
    final precisionValue = await operand[1].execute(context);
    if (value == null) return null;
    final int targetPrecision =
        (precisionValue is FhirInteger) ? precisionValue.valueNum!.toInt() : 8;

    if (value is FhirDecimal) {
      return _highBoundaryDecimal(value, targetPrecision);
    } else if (value is FhirDate) {
      return _highBoundaryDate(value, targetPrecision);
    } else if (value is FhirDateTime) {
      return _highBoundaryDateTime(value, targetPrecision);
    } else if (value is FhirTime) {
      return _highBoundaryTime(value, targetPrecision);
    }
    return value;
  }

  static FhirDecimal _highBoundaryDecimal(FhirDecimal value, int precision) {
    final str = value.valueString ?? '0';
    final dotIdx = str.indexOf('.');
    final currentDigits = dotIdx == -1 ? 0 : str.length - dotIdx - 1;
    if (currentDigits >= precision) return value;
    final base = dotIdx == -1 ? '$str.' : str;
    final padded = base.padRight(
        (dotIdx == -1 ? str.length + 1 : dotIdx + 1) + precision, '9');
    return FhirDecimal(double.parse(padded));
  }

  /// Precision mapping for Date: 4=year, 6=month, 8=day
  static FhirDate _highBoundaryDate(FhirDate value, int precision) {
    final year = value.year;
    if (year == null) return value;
    final month = value.month ?? (precision >= 6 ? 12 : null);
    final day = value.day ??
        (precision >= 8 && month != null
            ? DateTime(year, month + 1, 0).day
            : null);
    return FhirDate.fromUnits(year: year, month: month, day: day);
  }

  /// Precision mapping for DateTime:
  /// 4=year, 6=month, 8=day, 10=hour, 12=minute, 14=second, 17=millisecond
  static FhirDateTime _highBoundaryDateTime(FhirDateTime value, int precision) {
    final year = value.year;
    if (year == null) return value;
    final month = value.month ?? (precision >= 6 ? 12 : null);
    final day = value.day ??
        (precision >= 8 && month != null
            ? DateTime(year, month + 1, 0).day
            : null);
    final hour = value.hour ?? (precision >= 10 ? 23 : null);
    final minute = value.minute ?? (precision >= 12 ? 59 : null);
    final second = value.second ?? (precision >= 14 ? 59 : null);
    final millisecond = value.millisecond ?? (precision >= 17 ? 999 : null);
    return FhirDateTime.fromUnits(
      year: year,
      month: month,
      day: day,
      hour: hour,
      minute: minute,
      second: second,
      millisecond: millisecond,
      timeZoneOffset: value.timeZoneOffset,
    );
  }

  /// Precision mapping for Time: 2=hour, 4=minute, 6=second, 9=millisecond
  static FhirTime _highBoundaryTime(FhirTime value, int precision) {
    final hour = value.hour;
    if (hour == null) return value;
    final minute = value.minute ?? (precision >= 4 ? 59 : null);
    final second = value.second ?? (precision >= 6 ? 59 : null);
    final millisecond = value.millisecond ?? (precision >= 9 ? 999 : null);
    return FhirTime.fromUnits(
      hour: hour,
      minute: minute,
      second: second,
      millisecond: millisecond,
    );
  }
}
