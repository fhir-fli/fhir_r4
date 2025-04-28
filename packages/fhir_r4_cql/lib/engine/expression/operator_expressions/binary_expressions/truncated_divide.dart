import 'package:fhir_r4/fhir_r4.dart';
import 'package:ucum/ucum.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// Operator to perform integer division of its arguments.
/// If either argument is null, the result is null.
/// If the result of the operation cannot be represented, or the right argument
/// is 0, the result is null.
/// The TruncatedDivide operator is defined for the Integer and Decimal types.
/// Signature:
///
/// div(left Integer, right Integer) Integer
/// div(left Decimal, right Decimal) Decimal
/// div(left Long, right Long) Long
/// div(left Quantity, right Quantity) Quantity
/// The Long type is a new feature being introduced in CQL 1.5, and has trial-use status. The Quantity overload for this operator is a new feature being introduced in CQL 1.5, and has trial-use status.
///
/// Description:
///
/// The div operator performs truncated division of its arguments.
///
/// When invoked with mixed Integer and Decimal or Long arguments, the Integer argument will be implicitly converted to Decimal or Long.
///
/// When invoked with mixed Long and Decimal arguments, the Long argument will be implicitly converted to Decimal
///
/// When invoked with mixed Integer or Decimal and Quantity arguments, the Integer or Decimal argument will be implicitly converted to Quantity.
///
/// For division operations involving quantities, the resulting quantity will have the appropriate unit.
///
/// If either argument is null, the result is null.
///
/// If the result of the operation cannot be represented, or the right argument is 0, the result is null.
///
/// The following examples illustrate the behavior of the div operator:
///
/// define "IntegerTruncatedDivide": 4 div 2 // 2
/// define "LongTruncatedDivide": 4L div 2L // 2L
/// define "DecimalTruncatedDivide": 4.14 div 2.06 // 2
/// define "TruncatedDivideIsNull": 3 div null
class TruncatedDivide extends BinaryExpression {
  TruncatedDivide({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory TruncatedDivide.fromJson(Map<String, dynamic> json) =>
      TruncatedDivide(
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
    final data = <String, dynamic>{};
    data['type'] = type;
    data['operand'] = operand.map((e) => e.toJson()).toList();
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
  String get type => 'TruncatedDivide';

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    final left = await operand[0].execute(context);
    final right = await operand[1].execute(context);

    if (left == null || right == null) {
      return null;
    }

    switch (left) {
      case FhirInteger _:
        {
          if (right is FhirInteger) {
            return FhirInteger(left.valueNum! ~/ right.valueNum!);
          } else if (right is FhirInteger64) {
            return FhirInteger64(
                BigInt.from(left.valueNum!) ~/ right.valueBigInt!);
          } else if (right is FhirDecimal) {
            return FhirDecimal(left.valueNum! ~/ right.valueNum!);
          }
        }
        break;
      case FhirInteger64 _:
        {
          if (right is FhirInteger) {
            return FhirInteger64(
                left.valueBigInt! ~/ BigInt.from(right.valueNum!));
          } else if (right is FhirInteger64) {
            return FhirInteger64(left.valueBigInt! ~/ right.valueBigInt!);
          } else if (right is FhirDecimal) {
            return FhirDecimal(left.valueBigInt!.toDouble() ~/ right.valueNum!);
          }
        }
        break;
      case FhirDecimal _:
        {
          if (right is FhirInteger) {
            return FhirDecimal(left.valueNum! ~/ right.valueNum!);
          } else if (right is FhirInteger64) {
            return FhirDecimal(left.valueNum! ~/ right.valueBigInt!.toDouble());
          } else if (right is FhirDecimal) {
            return FhirDecimal(left.valueNum! ~/ right.valueNum!);
          } else if (right is ValidatedQuantity && right.isValid()) {
            return ValidatedQuantity.fromNumber(left.valueNum!) ~/ right;
          }
        }
        break;
      case ValidatedQuantity _:
        {
          if (right is FhirDecimal && left.isValid()) {
            return left ~/ ValidatedQuantity.fromNumber(right.valueNum!);
          } else if (right is ValidatedQuantity &&
              left.isValid() &&
              right.isValid()) {
            return left ~/ right;
          }
        }
        break;
    }

    throw ArgumentError('Invalid arguments for divide operation');
  }
}
