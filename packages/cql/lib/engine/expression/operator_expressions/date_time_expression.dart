import 'package:fhir_r4/fhir_r4.dart';

import '../../../../cql.dart';

/// Operator to construct a DateTime value from the given components.
/// At least one component other than timezoneOffset must be specified,
/// and no component may be specified at a precision below an unspecified
/// precision.
/// For example, hour may be null, but if it is, minute, second, and
/// millisecond must all be null as well.
/// If timezoneOffset is not specified, it is defaulted to the timezone offset
/// of the evaluation request.
/// Definition:
///
/// simple type DateTime
/// Description:
///
/// The DateTime type represents date and time values with potential
/// uncertainty within CQL.
///
/// CQL supports date and time values in the range @0001-01-01T00:00:00.0 to
/// @9999-12-31T23:59:59.999 with a 1 millisecond step size. Note that DateTime
/// values may also optionally indicate an offset.
///
/// CQL also supports partial datetime values. For example, the datetime
/// @2014-01-01T03 represents some instant during the hour of 3:00 on January
/// 1st, 2014.
///
/// Although the milliseconds are specified with a separate component, seconds
/// and milliseconds are combined and represented as a Decimal for the purposes
/// of comparison.
class DateTimeExpression extends OperatorExpression {
  final CqlExpression? day;
  final CqlExpression? hour;
  final CqlExpression? millisecond;
  final CqlExpression? minute;
  final CqlExpression? month;
  final CqlExpression? second;
  final CqlExpression? timezoneOffset;
  final CqlExpression year;

  DateTimeExpression({
    required this.year,
    this.month,
    this.day,
    this.hour,
    this.minute,
    this.second,
    this.millisecond,
    this.timezoneOffset,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory DateTimeExpression.fromOperandList(
      {required List<CqlExpression> operand}) {
    if (operand.isEmpty) {
      throw ArgumentError('DateTimeExpression must have at least one operand');
    }

    return DateTimeExpression(
      year: operand[0],
      month: operand.length > 1 ? operand[1] : null,
      day: operand.length > 2 ? operand[2] : null,
      hour: operand.length > 3 ? operand[3] : null,
      minute: operand.length > 4 ? operand[4] : null,
      second: operand.length > 5 ? operand[5] : null,
      millisecond: operand.length > 6 ? operand[6] : null,
      timezoneOffset: operand.length > 7 ? operand[7] : null,
    );
  }

  factory DateTimeExpression.fromJson(Map<String, dynamic> json) =>
      DateTimeExpression(
        year: CqlExpression.fromJson(json['year']),
        month: json['month'] == null
            ? null
            : CqlExpression.fromJson(json['month']),
        day: json['day'] == null ? null : CqlExpression.fromJson(json['day']),
        hour:
            json['hour'] == null ? null : CqlExpression.fromJson(json['hour']),
        minute: json['minute'] == null
            ? null
            : CqlExpression.fromJson(json['minute']),
        second: json['second'] == null
            ? null
            : CqlExpression.fromJson(json['second']),
        millisecond: json['millisecond'] == null
            ? null
            : CqlExpression.fromJson(json['millisecond']),
        timezoneOffset: json['timezoneOffset'] == null
            ? null
            : CqlExpression.fromJson(json['timezoneOffset']),
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
    final json = <String, dynamic>{
      'type': type,
      'year': year.toJson(),
    };
    if (month != null) {
      json['month'] = month!.toJson();
      if (day != null) {
        json['day'] = day!.toJson();
        if (hour != null) {
          json['hour'] = hour!.toJson();
          if (minute != null) {
            json['minute'] = minute!.toJson();
            if (second != null) {
              json['second'] = second!.toJson();
              if (millisecond != null) {
                json['millisecond'] = millisecond!.toJson();
                if (timezoneOffset != null) {
                  json['timezoneOffset'] = timezoneOffset!.toJson();
                }
              }
            }
          }
        }
      }
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
  String get type => 'DateTime';

  @override
  Future<FhirDateTime> execute(Map<String, dynamic> context) async {
    final yearValue = await year.execute(context);
    final monthValue = await month?.execute(context);
    final dayValue = await day?.execute(context);
    final hourValue = await hour?.execute(context);
    final minuteValue = await minute?.execute(context);
    final secondValue = await second?.execute(context);
    final millisecondValue = await millisecond?.execute(context);
    final timezoneOffsetValue = await timezoneOffset?.execute(context);

    return FhirDateTime.fromUnits(
        year: yearValue?.value,
        month: monthValue?.value,
        day: dayValue?.value,
        hour: hourValue?.value,
        minute: minuteValue?.value,
        second: secondValue?.value,
        millisecond: millisecondValue?.value,
        timeZoneOffset: timezoneOffsetValue?.stringToTimeZoneOffset);
  }
}
