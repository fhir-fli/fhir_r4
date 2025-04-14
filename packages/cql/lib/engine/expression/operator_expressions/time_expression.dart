import 'package:fhir_r4/fhir_r4.dart';

import '../../../../cql.dart';

/// Operator to construct a time value from the given components.
/// At least one component must be specified, and no component may be specified
/// at a precision below an unspecified precision.
/// For example, minute may be null, but if it is, second, and millisecond must
/// all be null as well.
/// Definition:
///
/// simple type Time
/// Description:
///
/// The Time type represents time-of-day values within CQL.
///
/// CQL supports time values in the range @T00:00:00.0 to @T23:59:59.999 with a
/// step size of 1 millisecond.
///
/// CQL also supports partial time values. For example, the time @T03 represents
/// some instant during the hour of 3:00.
///
/// Although the milliseconds are specified with a separate component, seconds
/// and milliseconds are combined and represented as a Decimal for the purposes
/// of comparison.
class TimeExpression extends OperatorExpression {
  final CqlExpression hour;
  final CqlExpression? millisecond;
  final CqlExpression? minute;
  final CqlExpression? second;

  TimeExpression({
    required this.hour,
    this.minute,
    this.second,
    this.millisecond,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory TimeExpression.fromOperandList(
      {required List<CqlExpression> operand}) {
    if (operand.isEmpty) {
      throw ArgumentError('TimeExpression must have at least one operand');
    }

    return TimeExpression(
      hour: operand[0],
      minute: operand.length > 1 ? operand[1] : null,
      second: operand.length > 2 ? operand[2] : null,
      millisecond: operand.length > 3 ? operand[3] : null,
    );
  }

  factory TimeExpression.fromJson(Map<String, dynamic> json) => TimeExpression(
        hour: CqlExpression.fromJson(json['hour']),
        minute: json['minute'] == null
            ? null
            : CqlExpression.fromJson(json['minute']),
        second: json['second'] == null
            ? null
            : CqlExpression.fromJson(json['second']),
        millisecond: json['millisecond'] == null
            ? null
            : CqlExpression.fromJson(json['millisecond']),
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
      'type': type,
      'hour': hour.toJson(),
    };

    if (minute != null) {
      data['minute'] = minute!.toJson();
    }

    if (second != null) {
      data['second'] = second!.toJson();
    }

    if (millisecond != null) {
      data['millisecond'] = millisecond!.toJson();
    }

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
  String get type => 'TimeExpression';

  @override
  Future<FhirTime> execute(Map<String, dynamic> context) async {
    final hourValue = await hour.execute(context);
    final minuteValue = await minute?.execute(context);
    final secondValue = await second?.execute(context);
    final millisecondValue = await millisecond?.execute(context);

    return FhirTime.fromUnits(
      hour: hourValue,
      minute: minuteValue,
      second: secondValue,
      millisecond: millisecondValue,
    );
  }
}
