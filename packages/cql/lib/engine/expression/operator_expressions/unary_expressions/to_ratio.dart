import '../../../../cql.dart';

/// Operator to convert the value of its argument to a Ratio value.
/// The operator accepts strings using the format: <quantity>:<quantity>,
/// where it's a quantity, followed by a colon (:), followed by another quantity.
/// The operator accepts quantity strings using the same format as the ToQuantity operator.
/// If the input string is not formatted correctly or cannot be interpreted as a valid Ratio value, the result is null.
/// If the argument is null, the result is null.
class ToRatio extends UnaryExpression {
  ToRatio({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ToRatio.fromJson(Map<String, dynamic> json) => ToRatio(
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
  String get type => 'ToRatio';
}
