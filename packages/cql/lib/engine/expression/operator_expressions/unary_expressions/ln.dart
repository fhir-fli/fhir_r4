import 'dart:math';

import 'package:fhir_r4/fhir_r4.dart';

import '../../../../cql.dart';

/// Operator to compute the natural logarithm of its argument.
/// If the argument is null, the result is null.
/// If the result of the operation cannot be represented, the result is null.
/// Signature:
///
/// Ln(argument Decimal) Decimal
/// Description:
///
/// The Ln operator computes the natural logarithm of its argument.
///
/// When invoked with an Integer or Long argument, the argument will be
/// implicitly converted to Decimal.
///
/// If the argument is null, the result is null.
///
/// If the result of the operation cannot be represented, the result is null.
///
/// The following examples illustrate the behavior of the Ln operator:
///
/// define "IntegerLn": Ln(1) // 0.0
/// define "LongLn": Ln(1L) // 0.0
/// define "DecimalLn": Ln(1.0) // 0.0
/// define "QuantityLnIsNull": Ln(null as Decimal)
class Ln extends UnaryExpression {
  Ln({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Ln.compareFirst({
    required CqlExpression first,
    List<CqlToElmBase>? annotation,
    String? localId,
    String? locator,
    String? resultTypeName,
    TypeSpecifierExpression? resultTypeSpecifier,
    required CqlLibrary library,
  }) {
    CqlExpression? operand;
    if (first is LiteralInteger || first is LiteralLong) {
      operand = ToDecimal(operand: first);
    } else if (first is LiteralDecimal) {
      operand = first;
    } else if (first is LiteralNull) {
      operand = As(operand: first, asType: QName.fromDataType('Decimal'));
    } else {
      final return1 = first.getReturnTypes(library);
      if (return1.length == 1) {
        if (return1.first == 'LiteralInteger' ||
            return1.first == 'LiteralLong') {
          operand = ToDecimal(operand: first);
        } else if (return1.first == 'LiteralDecimal') {
          operand = first;
        } else if (return1.first == 'LiteralNull') {
          operand = As(operand: first, asType: QName.fromDataType('Decimal'));
        }
      }
    }

    if (operand == null) {
      throw ArgumentError('The argument of Ln cannot be null');
    }

    return Ln(
      operand: operand,
      annotation: annotation,
      localId: localId,
      locator: locator,
      resultTypeName: resultTypeName,
      resultTypeSpecifier: resultTypeSpecifier,
    );
  }

  factory Ln.fromJson(Map<String, dynamic> json) => Ln(
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
  String get type => 'Ln';

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
  FhirDecimal? execute(Map<String, dynamic> context) {
    final first = operand.execute(context);
    if (first == null || first is! FhirDecimal) {
      return null;
    }
    return FhirDecimal(log(first.value!));
  }

  @override
  List<String> getReturnTypes(CqlLibrary library) => ['FhirDecimal'];
}
