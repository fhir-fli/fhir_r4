import 'package:fhir_r4/fhir_r4.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Operator to return the number of boundaries crossed for the specified
/// precision between the first and second arguments.
/// If the first argument is after the second argument, the result is negative.
/// Because this operation is only counting boundaries crossed, the result is
/// always an integer.
/// If either argument is null, the result is null.
///
/// Signature:
///
/// difference in _precision_ between(low Date, high Date) Integer
/// difference in _precision_ between(low DateTime, high DateTime) Integer
/// difference in _precision_ between(low Time, high Time) Integer
/// Description:
///
/// The difference-between operator returns the number of boundaries crossed
/// for the specified precision between the first and second arguments. If the
/// first argument is after the second argument, the result is negative. The
/// result of this operation is always an integer; any fractional boundaries
/// are dropped.
///
/// For Date values, precision must be one of: years, months, weeks, or days.
///
/// For DateTime values, precision must be one of: years, months, weeks, days,
/// hours, minutes, seconds, or milliseconds.
///
/// For Time values, precision must be one of: hours, minutes, seconds, or
/// milliseconds.
///
/// For calculations involving weeks, Sunday is considered to be the first day
/// of the week for the purposes of determining the number of boundaries crossed.
///
/// When this operator is called with both Date and DateTime inputs, the Date
/// values will be implicitly converted to DateTime as defined by the
/// ToDateTime operator.
///
/// When computing the difference between DateTime values with different
/// timezone offsets, implementations should normalize to the timezone offset
/// of the evaluation request timestamp, but only when the comparison precision
/// is hours, minutes, seconds, or milliseconds.
///
/// If either argument is null, the result is null.
///
/// The following examples illustrate the behavior of the difference-between operator:
///
/// define "DifferenceInMonths": difference in months between @2012-01-01 and @2012-02-01 // 1
/// define "UncertainDifferenceInMonths": difference in months between @2012-01-02 and @2012 // [0, 11]
/// define "DifferenceIsNull": difference in months between @2012-01-01 and null
class DifferenceBetween extends BinaryExpression {
  final CqlDateTimePrecision precision;

  DifferenceBetween({
    required this.precision,
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory DifferenceBetween.fromJson(Map<String, dynamic> json) =>
      DifferenceBetween(
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
  String get type => 'DifferenceBetween';

  @override
  List<String> getReturnTypes(CqlLibrary library) =>
      const ['FhirInteger', 'CqlInterval'];

  // TODO(Dokotela): uncertainties
  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    if (operand.length != 2) {
      throw ArgumentError('Difference Between must have 2 operands');
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
            return FhirInteger(high.year! - low.year!);
          case CqlDateTimePrecision.month:
            return FhirInteger(
                (high.year! - low.year!) * 12 + high.month! - low.month!);
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
            message:
                'DifferenceBetween must be passed two Dates, DateTimes, or '
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
            message:
                'DifferenceBetween must be passed two Dates, DateTimes, or '
                'Times, it was instead passed: '
                'low (${low.runtimeType}) and'
                'high (${high.runtimeType})');
      }
    } else {
      throw CqlException(
          message:
              'DifferenceBetween must be either Dates, DateTimes, or Times,'
              'but was instead passed low (${low.runtimeType}) and '
              'high (${high.runtimeType}).');
    }
  }
}
