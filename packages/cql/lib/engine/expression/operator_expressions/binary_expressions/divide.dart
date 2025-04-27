import 'package:fhir_r4/fhir_r4.dart';
import 'package:ucum/ucum.dart';

import '../../../../cql.dart';

/// Operator to perform numeric division of its arguments.
/// Note that the result type of Divide is Decimal, even if its arguments are
/// of type Integer.
/// For division operations involving quantities, the resulting quantity will
/// have the appropriate unit.
/// If either argument is null, the result is null.
/// If the result of the division cannot be represented, or the right argument
/// is 0, the result is null.
/// The Divide operator is defined for the Decimal and Quantity types.
/// Signature:
///
/// /(left Decimal, right Decimal) Decimal
/// /(left Quantity, right Quantity) Quantity
/// Description:
///
/// The divide (/) operator performs numeric division of its arguments. Note
/// that this operator is Decimal division; for Integer division, use the
/// truncated divide (div) operator.
///
/// When invoked with Integer or Long arguments, the arguments will be
/// implicitly converted to Decimal.
///
/// When invoked with a mixture of Decimal and Quantity arguments, the Decimal
/// arguments will be implicitly converted to Quantity.
///
/// For division operations involving quantities, the resulting quantity will
/// have the appropriate unit. For example:
///
/// 12 'cm2' / 3 'cm'
/// In this example, the result will have a unit of 'cm'. Note that when
/// performing division of quantities with the same units, the result will
/// have the default UCUM unit ('1'). When a quantity has no units specified,
/// it is treated as a quantity with the default unit ('1').
///
/// If either argument is null, the result is null.
///
/// If the result of the division cannot be represented, or the right argument
/// is 0, the result is null.
///
/// The following examples illustrate the behavior of the divide operator:
///
/// define "IntegerDivide": 4.0 / 2 // 2.0
/// define "LongDivide": 4.0 / 2L // 2.0
/// define "DecimalDivide": 9.9 / 3.0 // 3.3
/// define "DecimalDivideIsNull": 2.2 / null
/// define "DecimalDivideIsError": 2.2 / 0
/// define "QuantityDivide": -5.5 'mg' / 2.0 'mg' // -2.75
class Divide extends BinaryExpression {
  Divide({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Divide.fromJson(Map<String, dynamic> json) => Divide(
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
  String get type => 'Divide';

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    final left = await operand[0].execute(context);
    final right = await operand[1].execute(context);

    if (left == null || right == null) {
      return null;
    } else if ((left is FhirNumber || left is FhirInteger64) &&
        (right is FhirNumber || right is FhirInteger64)) {
      final leftDecimal = UcumDecimal.fromString(left.valueString);
      final rightDecimal = UcumDecimal.fromString(right.valueString);
      final result = leftDecimal / rightDecimal;
      return FhirDecimal(double.parse(result.asUcumDecimal()));
    } else if ((left is ValidatedQuantity || left is FhirDecimal) &&
        (right is ValidatedQuantity || right is FhirDecimal)) {
      final leftQuantity = left is ValidatedQuantity
          ? left
          : ValidatedQuantity(value: left.value, unit: '1');
      final rightQuantity = right is ValidatedQuantity
          ? right
          : ValidatedQuantity(value: right.value, unit: '1');
      final result = leftQuantity / rightQuantity;
      return result;
    }
    throw ArgumentError('Invalid arguments for divide operation');
  }
}
