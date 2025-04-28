import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// Operator to check if the value of its argument can be converted to a Quantity value.
/// The operator may be used with Integer, Decimal, Ratio, or String values.
/// For String values, the operator accepts strings using the following format:
/// (+|-)?#0(.0#)?('<unit>')?, where it's an optional polarity indicator,
/// followed by any number of digits (including none), optionally followed by a decimal point,
/// at least one digit, and any number of additional digits, all optionally followed by a unit designator.
/// If the input string is not formatted correctly or cannot be interpreted as a valid Quantity value, the result is false.
/// For Integer, Decimal, and Ratio values, the operator simply returns true.
/// If the argument is null, the result is null.
class ConvertsToQuantity extends UnaryExpression {
  ConvertsToQuantity({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ConvertsToQuantity.fromJson(Map<String, dynamic> json) =>
      ConvertsToQuantity(
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
  String get type => 'ConvertsToQuantity';

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
