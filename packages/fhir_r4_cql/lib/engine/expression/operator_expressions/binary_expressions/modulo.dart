import 'package:fhir_r4/fhir_r4.dart';
import 'package:ucum/ucum.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// Operator to compute the remainder of the division of its arguments.
/// The Modulo operator is defined for the Integer and Decimal types.
/// If either argument is null, the result is null.
/// If the result of the modulo cannot be represented, or the right argument is
/// 0, the result is null.
/// Signature:
///
/// mod(left Integer, right Integer) Integer
/// mod(left Long, right Long) Long
/// mod(left Decimal, right Decimal) Decimal
/// mod(left Quantity, right Quantity) Quantity
/// The Long type is a new feature being introduced in CQL 1.5, and has
/// trial-use status. The Quantity overload for this operator is a new feature
/// being introduced in CQL 1.5, and has trial-use status.
///
/// Description:
///
/// The mod operator computes the remainder of the division of its arguments.
///
/// When invoked with mixed Integer and Decimal or Long arguments, the Integer
/// argument will be implicitly converted to Decimal or Long.
///
/// When invoked with mixed Long and Decimal arguments, the Long argument will
/// be implicitly convert to Decimal.
///
/// When invoked with mixed Integer or Decimal, and Quantity arguments, the
/// Integer or Decimal argument will be implicitly converted to Quantity.
///
/// For modulo operations involving quantities, the resulting quantity will have
/// the appropriate unit.
///
/// If either argument is null, the result is null.
///
/// If the result of the modulo cannot be represented, or the right argument is
/// 0, the result is null.
///
/// The following examples illustrate the behavior of the mod operator:
///
/// define "IntegerModulo": 3 mod 2 // 1
/// define "LongModulo": 3L mod 2 // 1L
/// define "DecimalModulo": 2.5 mod 2 // 0.5
/// define "ModuloIsNull": 2.5 mod null
class Modulo extends BinaryExpression {
  Modulo({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Modulo.fromJson(Map<String, dynamic> json) => Modulo(
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
  String get type => 'Modulo';

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    final left = await operand[0].execute(context);
    final right = await operand[1].execute(context);

    if (left == null || right == null) {
      return null;
    } else {
      switch (left) {
        case FhirInteger _:
          if (right is FhirInteger) {
            return FhirInteger.tryParse(left.valueNum! % right.valueNum!);
          } else if (right is FhirDecimal) {
            return FhirDecimal(double.parse(
                (UcumDecimal.fromString(left.valueString!)
                        .modulo(UcumDecimal.fromString(right.valueString!)))
                    .asUcumDecimal()));
          } else if (right is FhirInteger64) {
            return FhirInteger64(BigInt.from(left.valueInt as int) %
                (right.valueBigInt as BigInt));
          }
          break;
        case FhirInteger64 _:
          if (right is FhirInteger) {
            return FhirInteger64(
                left.valueBigInt! % BigInt.from(right.valueInt as int));
          } else if (right is FhirInteger64) {
            return FhirInteger64(left.valueBigInt! % right.valueBigInt!);
          } else if (right is FhirDecimal) {
            return FhirDecimal(double.parse(
                (UcumDecimal.fromString(left.valueString!)
                        .modulo(UcumDecimal.fromString(right.valueString!)))
                    .asUcumDecimal()));
          }
          break;
        case FhirDecimal _:
          if (right is FhirInteger) {
            return FhirDecimal(double.parse(
                (UcumDecimal.fromString(left.valueString!)
                        .modulo(UcumDecimal.fromString(right.valueString!)))
                    .asUcumDecimal()));
          } else if (right is FhirInteger64) {
            return FhirDecimal(double.parse(
                (UcumDecimal.fromString(left.valueString!)
                        .modulo(UcumDecimal.fromString(right.valueString!)))
                    .asUcumDecimal()));
          } else if (right is FhirDecimal) {
            return FhirDecimal(double.parse(
                (UcumDecimal.fromString(left.valueString!)
                        .modulo(UcumDecimal.fromString(right.valueString!)))
                    .asUcumDecimal()));
          } else if (right is ValidatedQuantity) {
            return ValidatedQuantity.fromString(left.valueString!) % right;
          }
          break;
        case ValidatedQuantity _:
          if (right is FhirDecimal && left.isValid()) {
            return left % ValidatedQuantity.fromString(right.valueString!);
          } else if (right is ValidatedQuantity) {
            return left % right;
          }
          break;
      }
    }

    throw ArgumentError('Invalid arguments for modulo operation'
        '1. $left ${left.runtimeType}\n2. $right ${right.runtimeType}');
  }
}
