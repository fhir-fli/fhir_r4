import 'dart:math';

import 'package:fhir_r4/fhir_r4.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Operator to return the nearest integer to its argument.
/// The semantics of round are defined as a traditional round, meaning that a
/// decimal value of 0.5 or higher will round to 1.
/// If the argument is null, the result is null.
/// Precision determines the decimal place at which the rounding will occur.
/// If precision is not specified or null, 0 is assumed.
/// Signature:
///
/// Round(argument Decimal) Decimal
/// Round(argument Decimal, precision Integer) Decimal
/// Description:
///
/// The Round operator returns the nearest whole number to its argument. The
/// semantics of round are defined as a traditional round, meaning that a
/// decimal value of 0.5 or higher will round to 1.
///
/// When invoked with an Integer argument, the argument will be implicitly
/// converted to Decimal.
///
/// If the argument is null, the result is null.
///
/// Precision determines the decimal place at which the rounding will occur.
/// If precision is not specified or null, 0 is assumed.
///
/// The following examples illustrate the behavior of the Round operator:
///
/// define "IntegerRound": Round(1) // 1
/// define "DecimalRound": Round(3.14159, 3) // 3.142
/// define "RoundIsNull": Round(null)
class Round extends OperatorExpression {
  final CqlExpression operand;
  final CqlExpression? precision;

  Round({
    required this.operand,
    this.precision,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Round.fromJson(Map<String, dynamic> json) => Round(
        operand: CqlExpression.fromJson(json['operand']),
        precision: json['precision'] != null
            ? CqlExpression.fromJson(json['precision'])
            : null,
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

    if (precision != null) {
      data['precision'] = precision!.toJson();
    }

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
  String get type => 'Round';

  @override
  List<String> getReturnTypes(CqlLibrary library) => const ['Decimal'];

  @override
  Future<FhirDecimal?> execute(Map<String, dynamic> context) async {
    final value = await operand.execute(context);
    if (value == null) {
      return null;
    } else if (value is FhirDecimal) {
      final precisionValue = await precision?.execute(context);
      if (precisionValue == null) {
        return FhirDecimal(value.valueNum!.round());
      } else if (precisionValue is FhirInteger) {
        num mod = pow(10.0, precisionValue.valueNum!.toDouble());
        return FhirDecimal((value.valueNum! * mod).round().toDouble() / mod);
      } else {
        return null;
      }
    } else {
      return null;
    }
  }
}
