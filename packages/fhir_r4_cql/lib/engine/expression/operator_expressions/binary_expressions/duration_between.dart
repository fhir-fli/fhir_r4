import 'package:fhir_r4/fhir_r4.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// Operator to return the number of whole calendar periods for the specified
/// precision between the first and second arguments.
/// If the first argument is after the second argument, the result is negative.
/// The result of this operation is always an integer; any fractional periods
/// are dropped.
/// If either argument is null, the result is null.
/// Signature:
///
/// _duration_ between(low Date, high Date) Integer
/// _duration_ between(low DateTime, high DateTime) Integer
/// _duration_ between(low Time, high Time) Integer
/// Description:
///
/// The duration-between operator returns the number of whole calendar periods for the specified precision between the first and second arguments. If the first argument is after the second argument, the result is negative. The result of this operation is always an integer; any fractional periods are dropped.
///
/// For Date values, duration must be one of: years, months, weeks, or days.
///
/// For DateTime values, duration must be one of: years, months, weeks, days,
/// hours, minutes, seconds, or milliseconds.
///
/// For Time values, duration must be one of: hours, minutes, seconds, or
/// milliseconds.
///
/// When this operator is called with both Date and DateTime inputs, the Date
/// values will be implicitly converted to DateTime as defined by the ToDateTime
/// operator.
///
/// When computing the duration between DateTime values with different timezone
/// offsets, implementations should normalize to the timezone offset of the
/// evaluation request timestamp, but only when the comparison precision is
/// hours, minutes, seconds, or milliseconds.
///
/// If either argument is null, the result is null.
///
/// The following examples illustrate the behavior of the duration-between
/// operator:
///
/// define "DurationInMonths": months between @2012-01-01 and @2012-02-01 // 1
/// define "UncertainDurationInMonths": months between @2012-01-02 and @2012 // [0, 10]
/// define "DurationIsNull": months between @2012-01-01 and null
class DurationBetween extends BinaryExpression {
  final CqlDateTimePrecision precision;

  DurationBetween({
    required this.precision,
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory DurationBetween.fromJson(Map<String, dynamic> json) =>
      DurationBetween(
        precision: CqlDateTimePrecisionExtension.fromJson(json['precision']),
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
      'precision': precision.toJson(),
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
  String get type => 'DurationBetween';

  @override
  List<String> getReturnTypes(CqlLibrary library) =>
      ['FhirInteger', 'List<FhirInteger>'];

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    if (operand.length != 2) {
      throw ArgumentError('DurationBetween expression must have 2 operands');
    }
    final low = await operand[0].execute(context);
    final high = await operand[1].execute(context);
    if (low == null || high == null) {
      return null;
    } else if (low is FhirDateTimeBase) {
      if (high is FhirDateTimeBase) {
        final result = low.valueDateTime == null
            ? null
            : high.valueDateTime?.difference(low.valueDateTime!);
        if (result == null) {
          return null;
        }
        switch (precision) {
          case CqlDateTimePrecision.year:
            return FhirInteger(result.inDays ~/ 365);
          case CqlDateTimePrecision.month:
            return FhirInteger(result.inDays ~/ 30);
          case CqlDateTimePrecision.week:
            return FhirInteger(result.inDays ~/ 7);
          case CqlDateTimePrecision.day:
            return FhirInteger(result.inDays);
          case CqlDateTimePrecision.hour:
            return FhirInteger(result.inHours);
          case CqlDateTimePrecision.minute:
            return FhirInteger(result.inMinutes);
          case CqlDateTimePrecision.second:
            return FhirInteger(result.inSeconds);
          case CqlDateTimePrecision.millisecond:
            return FhirInteger(result.inMilliseconds);
        }
      } else {
        throw CqlException(
            message: 'DurationBetween must be passed two Dates, DateTimes, or '
                'Times, it was instead passed: '
                'low (${low.runtimeType}) and'
                'high (${high.runtimeType})');
      }
    } else if (low is FhirTime) {
      if (high is FhirTime) {
        final int lowTotalMilliseconds = (low.hour ?? 0) * 3600000 +
            (low.minute ?? 0) * 60000 +
            (low.second ?? 0) * 1000 +
            (low.millisecond ?? 0);
        final int highTotalMilliseconds = (high.hour ?? 0) * 3600000 +
            (high.minute ?? 0) * 60000 +
            (high.second ?? 0) * 1000 +
            (high.millisecond ?? 0);

        final int differenceMilliseconds =
            highTotalMilliseconds - lowTotalMilliseconds;

        switch (precision) {
          case CqlDateTimePrecision.hour:
            return FhirInteger((differenceMilliseconds / 3600000).floor());
          case CqlDateTimePrecision.minute:
            return FhirInteger((differenceMilliseconds / 60000).floor());
          case CqlDateTimePrecision.second:
            return FhirInteger((differenceMilliseconds / 1000).floor());
          case CqlDateTimePrecision.millisecond:
            return FhirInteger(differenceMilliseconds);
          default:
            throw CqlException(
                message:
                    'Unsupported precision for FhirTime comparison. Supported precisions are: hours, minutes, seconds, milliseconds.');
        }
      } else {
        throw CqlException(
            message: 'DurationBetween must be passed two Dates, DateTimes, or '
                'Times, it was instead passed: '
                'low (${low.runtimeType}) and'
                'high (${high.runtimeType})');
      }
    } else {
      throw CqlException(
          message: 'DurationBetween must be either Dates, DateTimes, or Times,'
              'but was instead passed low (${low.runtimeType}) and '
              'high (${high.runtimeType}).');
    }
  }
}
