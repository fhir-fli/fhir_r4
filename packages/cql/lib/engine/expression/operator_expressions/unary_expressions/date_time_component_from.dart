import 'package:fhir_r4/fhir_r4.dart';

import '../../../../cql.dart';

/// Operator to return the specified component of the argument.
/// If the argument is null, the result is null.
/// The precision must be one of Year, Month, Day, Hour, Minute, Second, or Millisecond.
/// Signature:
///
/// _precision_ from(argument Date) Integer
/// _precision_ from(argument DateTime) Integer
/// _precision_ from(argument Time) Integer
/// timezoneoffset from(argument DateTime) Decimal
/// date from(argument DateTime) Date
/// time from(argument DateTime) Time
/// Description:
///
/// The component-from operator returns the specified component of the argument.
///
/// For Date values, precision must be one of: year, month, or day.
///
/// For DateTime values, precision must be one of: year, month, day, hour,
/// minute, second, or millisecond.
///
/// For Time values, precision must be one of: hour, minute, second, or millisecond.
///
/// Note specifically that due to variability in the way week numbers are
/// determined, extraction of a week component is not supported.
///
/// When extracting the Date or Time from a DateTime value, implementations
/// should normalize to the timezone offset of the evaluation request timestamp.
///
/// If the argument is null, or is not specified to the level of precision
/// being extracted, the result is null.
///
/// The following examples illustrate the behavior of the component-from operator:
///
/// define "MonthFrom": month from DateTime(2012, 1, 1, 12, 30, 0, 0, -7) // 1
/// define "TimeZoneOffsetFrom": timezoneoffset from DateTime(2012, 1, 1, 12, 30, 0, 0, -7) // -7.0
/// define "DateFrom": date from DateTime(2012, 1, 1, 12, 30, 0, 0, -7) // @2012-01-01
/// define "TimeFrom": time from DateTime(2012, 1, 1, 12, 30, 0, 0, -7) // @T12:30:00.000-07:00
/// define "MonthFromIsNull": month from DateTime(2012)
class DateTimeComponentFrom extends UnaryExpression {
  final CqlDateTimePrecision precision;

  DateTimeComponentFrom({
    required this.precision,
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory DateTimeComponentFrom.fromJson(Map<String, dynamic> json) =>
      DateTimeComponentFrom(
        precision: CqlDateTimePrecisionExtension.fromJson(json['precision']),
        operand: CqlExpression.fromJson(json['operand']!),
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
    final data = <String, dynamic>{
      'precision': precision.toJson(),
      'type': type,
      'operand': operand.toJson(),
    };

    if (annotation != null) {
      data['annotation'] = annotation!.map((e) => e.toJson()).toList();
    }

    if (localId != null) {
      data['localId'] = localId;
    }

    if (locator != null) {
      data['locator'] = locator;
    }

    if (resultTypeName != null) {
      data['resultTypeName'] = resultTypeName;
    }

    if (resultTypeSpecifier != null) {
      data['resultTypeSpecifier'] = resultTypeSpecifier!.toJson();
    }

    return data;
  }

  @override
  String get type => 'DateTimeComponentFrom';

  @override
  Future<FhirInteger?> execute(Map<String, dynamic> context) async {
    final operandValue = await operand.execute(context);
    if (operandValue is FhirDateTime) {
      switch (precision) {
        case CqlDateTimePrecision.year:
          return operandValue.hasYear ? FhirInteger(operandValue.year) : null;
        case CqlDateTimePrecision.month:
          return operandValue.hasMonth ? FhirInteger(operandValue.month) : null;
        case CqlDateTimePrecision.day:
          return operandValue.hasDay ? FhirInteger(operandValue.day) : null;
        case CqlDateTimePrecision.hour:
          return operandValue.hasHours ? FhirInteger(operandValue.hour) : null;
        case CqlDateTimePrecision.minute:
          return operandValue.hasMinutes
              ? FhirInteger(operandValue.minute)
              : null;
        case CqlDateTimePrecision.second:
          return operandValue.hasSeconds
              ? FhirInteger(operandValue.second)
              : null;
        case CqlDateTimePrecision.millisecond:
          return operandValue.hasMilliseconds
              ? FhirInteger(operandValue.millisecond)
              : null;
        default:
          return null;
      }
    } else if (operandValue is FhirDate) {
      switch (precision) {
        case CqlDateTimePrecision.year:
          return operandValue.hasYear ? FhirInteger(operandValue.year) : null;
        case CqlDateTimePrecision.month:
          return operandValue.hasMonth ? FhirInteger(operandValue.month) : null;
        case CqlDateTimePrecision.day:
          return operandValue.hasDay ? FhirInteger(operandValue.day) : null;
        default:
          return null;
      }
    } else if (operandValue is FhirTime) {
      switch (precision) {
        case CqlDateTimePrecision.hour:
          return operandValue.hour != null
              ? FhirInteger(operandValue.hour)
              : null;
        case CqlDateTimePrecision.minute:
          return operandValue.minute != null
              ? FhirInteger(operandValue.minute)
              : null;
        case CqlDateTimePrecision.second:
          return operandValue.second != null
              ? FhirInteger(operandValue.second)
              : null;
        case CqlDateTimePrecision.millisecond:
          return operandValue.millisecond != null
              ? FhirInteger(operandValue.millisecond)
              : null;
        default:
          return null;
      }
    }
    return null;
  }
}
