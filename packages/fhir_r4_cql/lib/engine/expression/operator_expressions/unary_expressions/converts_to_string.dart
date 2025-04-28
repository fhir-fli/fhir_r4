import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// Operator to check if the value of its argument can be converted to a String value.
/// The operator returns true if the argument is any of the following types: Boolean, Integer, Decimal, DateTime, Date, Time, Quantity, Ratio.
/// If the argument is null, the result is null.
class ConvertsToString extends UnaryExpression {
  ConvertsToString({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ConvertsToString.fromJson(Map<String, dynamic> json) =>
      ConvertsToString(
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
  String get type => 'ConvertsToString';
}
