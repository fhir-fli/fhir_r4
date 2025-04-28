import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// Operator to check if the value of its argument can be converted to a Time value.
/// For String values, the operator expects the string to be formatted using ISO-8601 time representation: hh:mm:ss.fff.
/// If the input string is not formatted correctly or does not represent a valid time-of-day value, the result is false.
/// As with time-of-day literals, time-of-day values may be specified to any precision.
/// If the argument is null, the result is null.
class ConvertsToTime extends UnaryExpression {
  ConvertsToTime({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ConvertsToTime.fromJson(Map<String, dynamic> json) => ConvertsToTime(
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
  String get type => 'ConvertsToTime';

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
}
