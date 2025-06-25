import 'package:fhir_r4/fhir_r4.dart';
import 'package:ucum/ucum.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Operator to return the negative of its argument.
/// When negating quantities, the unit is unchanged.
/// If the argument is null or the result of negating the argument cannot be
/// represented, the result is null.
/// The Negate operator is defined for the Integer, Decimal, and Quantity types.
/// Signature:
///
/// -(argument Integer) Integer
/// -(argument Long) Long
/// -(argument Decimal) Decimal
/// -(argument Quantity) Quantity
/// The Long type is a new feature being introduced in CQL 1.5, and has
/// trial-use status.
///
/// Description:
///
/// The negate (-) operator returns the negative of its argument.
///
/// When negating quantities, the unit is unchanged.
///
/// If the argument is null, the result is null.
///
/// If the result of negating the argument cannot be represented
/// (e.g. -(minimum Integer)), the result is null.
///
/// The following examples illustrate the behavior of the negate operator:
///
/// define "IntegerNegate": -3 // -3
/// define "LongNegate": -3L // -3L
/// define "DecimalNegate": -(-3.3) // 3.3
/// define "QuantityNegate": -3.3 'mg' // -3.3 'mg'
/// define "NegateIsNull": -(null as Integer)
class Negate extends UnaryExpression {
  Negate({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Negate.fromJson(Map<String, dynamic> json) => Negate(
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
  String get type => 'Negate';
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
  List<String> getReturnTypes(CqlLibrary library) =>
      operand.getReturnTypes(library);

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    final value = await operand.execute(context);
    if (value == null) {
      return null;
    } else if (value is FhirInteger) {
      return FhirInteger.tryParse(value.valueNum! * -1);
    } else if (value is FhirInteger64) {
      return FhirInteger64(value.valueBigInt! * BigInt.from(-1));
    } else if (value is FhirDecimal) {
      return FhirDecimal(value.valueNum! * -1);
    } else if (value is ValidatedQuantity && value.isValid()) {
      return ValidatedQuantity(
          value: value.value.multiply(UcumDecimal.fromNum(-1)),
          unit: value.unit);
    }
    return null;
  }
}
