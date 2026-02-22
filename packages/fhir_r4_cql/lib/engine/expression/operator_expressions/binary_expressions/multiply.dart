import 'package:fhir_r4/fhir_r4.dart' hide Quantity;
import 'package:fhir_r4/fhir_r4.dart' as fhir show Quantity;
import 'package:ucum/ucum.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Operator to perform numeric multiplication of its arguments.
/// For multiplication operations involving quantities, the resulting quantity
/// will have the appropriate unit.
/// The Multiply operator is defined for the Integer, Decimal, and Quantity types.
/// If either argument is null, the result is null.
/// If the result of the operation cannot be represented, the result is null.
/// Signature:
///
/// *(left Integer, right Integer) Integer
/// *(left Long, right Long) Long
/// *(left Decimal, right Decimal) Decimal
/// *(left Quantity, right Quantity) Quantity
/// The Long type is a new feature being introduced in CQL 1.5, and has
/// trial-use status.
///
/// Description:
///
/// The multiply (*) operator performs numeric multiplication of its arguments.
///
/// When invoked with mixed Integer and Decimal or Long arguments, the Integer
/// argument will be implicitly converted to Decimal or Long.
///
/// When invoked with mixed Long and Decimal arguments, the Long argument will
/// be implicitly converted to Decimal.
///
/// When invoked with mixed Decimal and Quantity arguments, the Decimal argument
/// will be implicitly converted to Quantity.
///
/// For multiplication operations involving quantities, the resulting quantity
/// will have the appropriate unit. For example:
///
/// 12 'cm' * 3 'cm'
/// 3 'cm' * 12 'cm2'
/// In this example, the first result will have a unit of 'cm2', and the second
/// result will have a unit of 'cm3'. When a quantity has no units specified,
/// it is treated as a quantity with the default unit ('1').
///
/// If either argument is null, the result is null.
///
/// If the result of the operation cannot be represented, the result is null.
class Multiply extends BinaryExpression {
  Multiply({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Multiply.fromJson(Map<String, dynamic> json) => Multiply(
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
  String get type => 'Multiply';

  /// Convert FHIR Quantity to ValidatedQuantity for arithmetic
  static dynamic _convertFhirQuantity(dynamic value) {
    if (value is fhir.Quantity) {
      final num? numVal = value.value?.valueNum;
      final unit =
          value.unit?.valueString ?? value.code?.valueString ?? '1';
      if (numVal != null) {
        return ValidatedQuantity.fromNumber(numVal, unit: unit);
      }
    }
    return value;
  }

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    var left = await operand[0].execute(context);
    var right = await operand[1].execute(context);

    // Convert FHIR Quantity to ValidatedQuantity
    left = _convertFhirQuantity(left);
    right = _convertFhirQuantity(right);

    if (left == null || right == null) {
      return null;
    } else {
      switch (left) {
        case FhirInteger _:
          if (right is FhirInteger) {
            return FhirInteger.tryParse(left.valueNum! * right.valueNum!);
          } else if (right is FhirDecimal) {
            return FhirDecimal(double.parse(
                (UcumDecimal.fromString(left.valueString!) *
                        UcumDecimal.fromString(right.valueString!))
                    .asUcumDecimal()));
          } else if (right is FhirInteger64) {
            return FhirInteger64(BigInt.from(left.valueInt as int) *
                (right.valueBigInt as BigInt));
          }
          break;
        case FhirInteger64 _:
          if (right is FhirInteger) {
            return FhirInteger64(
                left.valueBigInt! * BigInt.from(right.valueInt as int));
          } else if (right is FhirInteger64) {
            return FhirInteger64(left.valueBigInt! * right.valueBigInt!);
          } else if (right is FhirDecimal) {
            return FhirDecimal((UcumDecimal.fromString(left.valueString!) *
                    UcumDecimal.fromString(right.valueString!))
                .asUcumDecimal());
          }
          break;
        case FhirDecimal _:
          if (right is FhirInteger) {
            return FhirDecimal((UcumDecimal.fromString(left.valueString!) *
                    UcumDecimal.fromString(right.valueString!))
                .asUcumDecimal());
          } else if (right is FhirInteger64) {
            return FhirDecimal((UcumDecimal.fromString(left.valueString!) *
                    UcumDecimal.fromString(right.valueString!))
                .asUcumDecimal());
          } else if (right is FhirDecimal) {
            return FhirDecimal(double.parse(
                (UcumDecimal.fromString(left.valueString!) *
                        UcumDecimal.fromString(right.valueString!))
                    .asUcumDecimal()));
          } else if (right is ValidatedQuantity) {
            // Scale value, keep units (avoid UCUM canonicalization)
            final numVal = right.value *
                UcumDecimal.fromString(left.valueString!);
            return ValidatedQuantity(value: numVal, unit: right.unit);
          }
          break;
        case ValidatedQuantity _:
          if (right is FhirDecimal && left.isValid()) {
            // Scale value, keep units (avoid UCUM canonicalization)
            final numVal = left.value *
                UcumDecimal.fromString(right.valueString!);
            return ValidatedQuantity(value: numVal, unit: left.unit);
          } else if (right is FhirInteger && left.isValid()) {
            final numVal = left.value *
                UcumDecimal.fromString(right.valueString!);
            return ValidatedQuantity(value: numVal, unit: left.unit);
          } else if (right is ValidatedQuantity) {
            return left * right;
          }
          break;
      }
    }

    // CqlInterval multiplication: [a,b] * [c,d] = [min(ac,ad,bc,bd), max(ac,ad,bc,bd)]
    if (left is CqlInterval && right is CqlInterval) {
      final a = left.getStart();
      final b = left.getEnd();
      final c = right.getStart();
      final d = right.getEnd();
      final products = [
        Multiply._multiply(a, c),
        Multiply._multiply(a, d),
        Multiply._multiply(b, c),
        Multiply._multiply(b, d),
      ].whereType<FhirInteger>().toList();
      if (products.isEmpty) return null;
      products.sort((x, y) => x.valueNum!.compareTo(y.valueNum!));
      return CqlInterval(
        low: products.first,
        lowClosed: true,
        high: products.last,
        highClosed: true,
      );
    }
    if (left is CqlInterval || right is CqlInterval) {
      return null;
    }

    throw ArgumentError('Invalid arguments for multiply operation\n'
        '1. $left ${left.runtimeType}\n2. $right ${right.runtimeType}');
  }

  static FhirInteger? _multiply(dynamic a, dynamic b) {
    if (a == null || b == null) return null;
    if (a is FhirInteger && b is FhirInteger) {
      return FhirInteger(a.valueNum!.toInt() * b.valueNum!.toInt());
    }
    return null;
  }
}
