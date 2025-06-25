import 'package:fhir_r4/fhir_r4.dart';
import 'package:ucum/ucum.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Operator to return the absolute value of its argument.
/// When taking the absolute value of a quantity, the unit is unchanged.
/// If the argument is null or the result of taking the absolute value cannot
/// be represented, the result is null.
/// The Abs operator is defined for the Integer, Decimal, and Quantity types.
/// Signature:
///
/// Abs(argument Integer) Integer
/// Abs(argument Long) Long
/// Abs(argument Decimal) Decimal
/// Abs(argument Quantity) Quantity
/// The Long type is a new feature being introduced in CQL 1.5, and has
/// trial-use status.
///
/// Description:
///
/// The Abs operator returns the absolute value of its argument.
///
/// When taking the absolute value of a quantity, the unit is unchanged.
///
/// If the argument is null, the result is null.
///
/// If the result of taking the absolute value of the input cannot be
/// represented (e.g. Abs(minimum Integer)), the result is null.
///
/// The following examples illustrate the behavior of the Abs operator:
///
/// define "IntegerAbs": Abs(-5) // 5
/// define "IntegerAbsIsNull": Abs(null as Integer)
/// define "LongAbs": Abs(-5000000L) // 5000000L
/// define "DecimalAbs": Abs(-5.5) // 5.5
/// define "QuantityAbs": Abs(-5.5 'mg') // 5.5 'mg'
class Abs extends UnaryExpression {
  Abs({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Abs.fromJson(Map<String, dynamic> json) => Abs(
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
  String get type => 'Abs';

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
      return FhirInteger.tryParse(value.valueNum!.abs());
    } else if (value is FhirInteger64) {
      return FhirInteger64(value.valueBigInt!.abs());
    } else if (value is FhirDecimal) {
      return FhirDecimal(value.valueNum!.abs());
    } else if (value is ValidatedQuantity && value.isValid()) {
      return ValidatedQuantity(value: value.value.absolute(), unit: value.unit);
    }
    throw ArgumentError('Invalid input type for Abs: ${value.runtimeType}');
  }
}
