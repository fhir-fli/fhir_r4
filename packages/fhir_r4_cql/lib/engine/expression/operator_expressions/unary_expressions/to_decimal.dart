import 'package:fhir_r4/fhir_r4.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// Operator to convert the value of its argument to a Decimal value.
/// The operator accepts strings using the following format: (+|-)?#0(.0#)?
/// If the input string is not formatted correctly or cannot be interpreted as
/// a valid Decimal value, the result is null.
/// If the argument is null, the result is null.
/// Signature:
///
/// ToDecimal(argument Boolean) Decimal
/// ToDecimal(argument String) Decimal
/// Description:
///
/// The ToDecimal operator converts the value of its argument to a Decimal
/// value. The operator accepts strings using the following format:
///
/// (+|-)?#0(.0#)?
///
/// Meaning an optional polarity indicator, followed by any number of digits
/// (including none), followed by at least one digit, followed optionally by a
/// decimal point, at least one digit, and any number of additional digits
/// (including none).
///
/// See Formatting Strings for a description of the formatting strings used in
/// this specification.
///
/// Note that the Decimal value returned by this operator will be limited in
/// precision and scale to the maximum precision and scale representable by the
/// implementation (at least 28 digits of precision, and 8 digits of scale).
///
/// If the input string is not formatted correctly, or cannot be interpreted as
/// a valid Decimal value, the result is null.
///
/// If the input is Boolean, true will result in 1.0, false will result in 0.0.
///
/// If the argument is null, the result is null.
///
/// The following examples illustrate the behavior of the ToDecimal operator:
///
/// define "IsValid": ToDecimal('-0.1')
/// define "IsNull": ToDecimal('+-0.1')
class ToDecimal extends UnaryExpression {
  ToDecimal({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ToDecimal.fromJson(Map<String, dynamic> json) => ToDecimal(
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
  String get type => 'ToDecimal';
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
  Future<FhirDecimal?> execute(Map<String, dynamic> context) async {
    final result = await operand.execute(context);
    switch (result) {
      case null:
        return null;
      case FhirBoolean _:
        {
          if (result.valueBoolean == null) {
            return null;
          } else {
            return result.valueBoolean! ? FhirDecimal(1.0) : FhirDecimal(0.0);
          }
        }
      case String _:
        {
          if (RegExp(r'(\+|-)?\d+(\.\d+)?').hasMatch(result)) {
            final value = double.tryParse(result);
            if (value == null) {
              return null;
            } else {
              return FhirDecimal(value);
            }
          } else {
            return null;
          }
        }
      case FhirInteger _:
        {
          return result.valueInt == null ? null : FhirDecimal(result.valueInt!);
        }
      case FhirInteger64 _:
        {
          final value = result.valueBigInt;
          if (value == null) {
            return null;
          } else {
            return FhirDecimal(value.toDouble());
          }
        }
      case FhirDecimal _:
        {
          return result;
        }
      default:
        return null;
    }
  }

  @override
  List<String> getReturnTypes(CqlLibrary library) => ['Decimal'];
}
