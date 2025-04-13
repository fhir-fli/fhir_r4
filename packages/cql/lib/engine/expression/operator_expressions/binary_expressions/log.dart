import 'dart:math';

import 'package:fhir_r4/fhir_r4.dart';

import '../../../../cql.dart';

/// Operator to compute the logarithm of its first argument, using the second
/// argument as the base.
/// If either argument is null, the result is null.
/// If the result of the operation cannot be represented, the result is null.
/// Signature:
///
/// Log(argument Decimal, base Decimal) Decimal
/// Description:
///
/// The Log operator computes the logarithm of its first argument, using the
/// second argument as the base.
///
/// When invoked with Integer or Long arguments, the arguments will be
/// implicitly converted to Decimal.
///
/// If either argument is null, the result is null.
///
/// If the result of the operation cannot be represented, the result is null.
///
/// The following examples illustrate the behavior of the Log operator:
///
/// define "IntegerLog": Log(16, 2) // 4.0
/// define "LongLog": Log(16L, 2L) // 4.0
/// define "DecimalLog": Log(100.0, 10.0) // 2.0
/// define "QuantityLogIsNull": Log(null, 10.0)
class Log extends BinaryExpression {
  Log({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Log.compareFirst({
    required CqlExpression first,
    required CqlExpression second,
    List<CqlToElmBase>? annotation,
    String? localId,
    String? locator,
    String? resultTypeName,
    TypeSpecifierExpression? resultTypeSpecifier,
    required CqlLibrary library,
  }) {
    final operand = <CqlExpression>[];
    if (first is LiteralInteger || first is LiteralLong) {
      operand.add(ToDecimal(operand: first));
    } else if (first is LiteralDecimal) {
      operand.add(first);
    } else if (first is LiteralNull) {
      operand.add(As(operand: first, asType: QName.fromDataType('Decimal')));
    } else {
      final return1 = operand.first.getReturnTypes(library);
      if (return1.length == 1) {
        if (return1.first == 'LiteralInteger' ||
            return1.first == 'LiteralLong') {
          operand.add(ToDecimal(operand: first));
        } else if (return1.first == 'FhirDecimal') {
          operand.add(first);
        } else if (return1.first == 'Null') {
          operand
              .add(As(operand: first, asType: QName.fromDataType('Decimal')));
        }
      }
    }
    if (second is LiteralInteger || second is LiteralLong) {
      operand.add(ToDecimal(operand: second));
    } else if (second is LiteralDecimal) {
      operand.add(second);
    } else if (second is LiteralNull) {
      operand.add(As(operand: second, asType: QName.fromDataType('Decimal')));
    } else {
      final return2 = operand.last.getReturnTypes(library);
      if (return2.length == 1) {
        if (return2.first == 'LiteralInteger' || return2.first is LiteralLong) {
          operand.add(ToDecimal(operand: second));
        } else if (return2.first == 'Null') {
          operand
              .add(As(operand: second, asType: QName.fromDataType('Decimal')));
        }
      }
    }

    if (operand.length != 2) {
      throw ArgumentError('Log.compareFirst requires two operands');
    }

    return Log(
      operand: operand,
      annotation: annotation,
      localId: localId,
      locator: locator,
      resultTypeName: resultTypeName,
      resultTypeSpecifier: resultTypeSpecifier,
    );
  }

  factory Log.fromJson(Map<String, dynamic> json) => Log(
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
  String get type => 'Log';

  @override
  FhirDecimal? execute(Map<String, dynamic> context) {
    final first = operand.first.execute(context);
    final second = operand.last.execute(context);

    if (first == null ||
        second == null ||
        first is! FhirDecimal ||
        second is! FhirDecimal) {
      return null;
    }
    return FhirDecimal(log(first.value!) / log(second.value!));
  }

  @override
  List<String> getReturnTypes(CqlLibrary library) => const ['FhirDecimal'];
}
