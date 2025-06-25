import 'dart:math';

import 'package:fhir_r4/fhir_r4.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Operator to raise the first argument to the power given by the second argument.
/// If either argument is null, the result is null.
/// If the result of the operation cannot be represented, the result is null.
/// Signature:
///
/// ^(argument Integer, exponent Integer) Integer
/// ^(argument Long, exponent Long) Long
/// ^(argument Decimal, exponent Decimal) Decimal
/// The Long type is a new feature being introduced in CQL 1.5, and has
/// trial-use status.
///
/// Description:
///
/// The power (^) operator raises the first argument to the power given by the
/// second argument.
///
/// When invoked with mixed Integer and Decimal or Long arguments, the Integer
/// argument will be implicitly converted to Decimal or Long.
///
/// When invoked with mixed Long and Decimal arguments, the Long argument will.
/// be implicitly converted to Decimal.
///
/// If either argument is null, the result is null.
///
/// If the result of the operation cannot be represented, the result is null.
///
/// The following examples illustrate the behavior of the power operator:
///
/// define "IntegerPower": 2^3 // 8
/// define "IntegerPowerFun": Power(2, 3) // 8
/// define "LongPower": 2L^3L // 8L
/// define "DecimalPower": 2.5^2.0 // 6.25
/// define "NegateIsNull": 2.5^null
class Power extends BinaryExpression {
  Power({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Power.compareFirst({
    required CqlExpression first,
    required CqlExpression second,
    List<CqlToElmBase>? annotation,
    String? localId,
    String? locator,
    String? resultTypeName,
    TypeSpecifierExpression? resultTypeSpecifier,
  }) {
    final operand = <CqlExpression>[];
    switch (first) {
      case LiteralInteger _:
        {
          if (second is LiteralInteger) {
            operand.add(first);
            operand.add(second);
          } else if (second is LiteralLong) {
            operand.add(ToLong(operand: first));
            operand.add(second);
          } else if (second is LiteralDecimal) {
            operand.add(ToDecimal(operand: first));
            operand.add(second);
          }
        }
        break;
      case LiteralLong _:
        {
          if (second is LiteralInteger) {
            operand.add(first);
            operand.add(ToLong(operand: second));
          } else if (second is LiteralLong) {
            operand.add(first);
            operand.add(second);
          } else if (second is LiteralDecimal) {
            operand.add(ToDecimal(operand: first));
            operand.add(second);
          }
        }
        break;
      case LiteralDecimal _:
        {
          if (second is LiteralInteger) {
            operand.add(first);
            operand.add(ToDecimal(operand: second));
          } else if (second is LiteralLong) {
            operand.add(first);
            operand.add(ToDecimal(operand: second));
          } else if (second is LiteralDecimal) {
            operand.add(first);
            operand.add(second);
          }
        }
        break;
      default:
        throw ArgumentError(
            'First argument must be an Integer, Long, or Decimal');
    }

    return Power(
      operand: operand,
      annotation: annotation,
      localId: localId,
      locator: locator,
      resultTypeName: resultTypeName,
      resultTypeSpecifier: resultTypeSpecifier,
    );
  }

  factory Power.fromJson(Map<String, dynamic> json) => Power(
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
  String get type => 'Power';

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    if (operand.length != 2) {
      throw ArgumentError('Power must have two operands');
    } else {
      final first = await operand.first.execute(context);
      final second = await operand.last.execute(context);
      if (first == null || second == null) {
        return null;
      } else if (first is FhirInteger && second is FhirInteger) {
        return FhirInteger.tryParse(pow(first.valueNum!, second.valueNum!));
      } else if (first is FhirInteger64 && second is FhirInteger64) {
        return FhirInteger64(
            first.valueBigInt!.pow(second.valueBigInt!.toInt()));
      } else if (first is FhirDecimal && second is FhirDecimal) {
        return FhirDecimal(pow(first.valueNum!, second.valueNum!));
      } else {
        throw ArgumentError(
            'Power must have two operands of type Integer, Long, or Decimal');
      }
    }
  }

  @override
  List<String> getReturnTypes(CqlLibrary library) {
    return operand.isEmpty ? [] : operand.first.getReturnTypes(library);
  }
}
