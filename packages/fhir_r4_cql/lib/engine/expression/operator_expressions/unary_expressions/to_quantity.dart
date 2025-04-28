import 'package:fhir_r4/fhir_r4.dart';
import 'package:ucum/ucum.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// Operator to convert the value of its argument to a Quantity value.
/// The operator may be used with Integer, Decimal, Ratio, or String values.
/// For String values, the operator accepts strings using the following format:
/// (+|-)?#0(.0#)?('<unit>')?, where it's an optional polarity indicator,
/// followed by any number of digits (including none), optionally followed by
/// a decimal point,
/// at least one digit, and any number of additional digits, all optionally
/// followed by a unit designator.
/// If the input string is not formatted correctly or cannot be interpreted as
/// a valid Quantity value, the result is null.
/// For Integer and Decimal values, the result is a Quantity with the value of
/// the integer or decimal input, and the default unit ('1').
/// For Ratio values, the operation is equivalent to the result of dividing the
/// numerator of the ratio by the denominator.
/// If the argument is null, the result is null.
/// Signature:

/// ToQuantity(argument Decimal) Quantity
/// ToQuantity(argument Integer) Quantity
/// ToQuantity(argument Ratio) Quantity
/// ToQuantity(argument String) Quantity
/// Description:
///
/// The ToQuantity operator converts the value of its argument to a Quantity
/// value. The operation does not perform any unit conversion, that capability
/// is supported by the ConvertQuantity operator.
///
/// For the String overload, the operator accepts strings using the following
/// format:
///
/// (+|-)?#0(.0#)?('<unit>')?
///
/// Meaning an optional polarity indicator, followed by any number of digits
/// (including none) followed by at least one digit, optionally followed by a
/// decimal point, at least one digit, and any number of additional digits, all
/// optionally followed by a unit designator as a string literal specifying a
/// valid, case-sensitive UCUM unit of measure or calendar duration keyword,
/// singular or plural. Spaces are allowed between the quantity value and the
/// unit designator.
///
/// See Formatting Strings for a description of the formatting strings used in
/// this specification.
///
/// Note that the decimal value of the quantity returned by this operator must
/// be a valid value in the range representable for Decimal values in CQL.
///
/// If the input string is not formatted correctly, or cannot be interpreted as
/// a valid Quantity value, the result is null.
///
/// For the Integer and Decimal overloads, the operator returns a quantity with
/// the value of the argument and a unit of '1' (the default unit).
///
/// For the Ratio overload, the operator is equivalent to dividing the numerator
/// of the ratio by the denominator.
///
/// If the argument is null, the result is null.
///
/// The following examples illustrate the behavior of the ToQuantity operator:
///
/// define "DecimalOverload": ToQuantity(0.1) // 0.1 '1'
/// define "IntegerOverload": ToQuantity(13) // 13 '1'
/// define "StringOverload": ToQuantity('-0.1 \'mg\'') // -0.1 'mg'
/// define "IsNull": ToQuantity('444 \'cm')
class ToQuantity extends UnaryExpression {
  ToQuantity({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ToQuantity.fromJson(Map<String, dynamic> json) => ToQuantity(
        operand: CqlExpression.fromJson(json['operand']),
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
  String get type => 'ToQuantity';

  @override
  Future<ValidatedQuantity?> execute(Map<String, dynamic> context) async {
    final result = await operand.execute(context);
    switch (result) {
      case null:
        return null;
      case FhirInteger _:
        return result.valueInt == null
            ? null
            : ValidatedQuantity.fromNumber(result.valueInt!, unit: '1');
      case FhirInteger64 _:
        return result.valueBigInt == null
            ? null
            : ValidatedQuantity.fromBigInt(result.valueBigInt!, unit: '1');
      case FhirDecimal _:
        return result.valueDouble == null
            ? null
            : ValidatedQuantity.fromNumber(result.valueDouble!, unit: '1');
      case String _:
        return ValidatedQuantity.fromString(result);
      case ValidatedQuantity _:
        return result;
      // TODO(Dokotela): Implement the Ratio case
      // case Ratio _;
      default:
        return null;
    }
  }

  @override
  List<String> getReturnTypes(CqlLibrary library) => ['ValidatedQuantity'];
}
