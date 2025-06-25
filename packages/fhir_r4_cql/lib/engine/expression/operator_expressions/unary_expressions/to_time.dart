import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Operator to convert the value of its argument to a Time value.
/// For String values, the operator expects the string to be formatted using ISO-8601 time representation: hh:mm:ss.fff.
/// In addition, the string must be interpretable as a valid time-of-day value.
/// If the input string is not formatted correctly or does not represent a valid time-of-day value, the result is null.
/// As with time-of-day literals, time-of-day values may be specified to any precision.
/// For DateTime values, the result is the same as extracting the Time component from the DateTime value.
/// If the argument is null, the result is null.
class ToTime extends UnaryExpression {
  ToTime({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ToTime.fromJson(Map<String, dynamic> json) => ToTime(
        operand: CqlExpression.fromJson(json['operand']),
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
  String get type => 'ToTime';
}
