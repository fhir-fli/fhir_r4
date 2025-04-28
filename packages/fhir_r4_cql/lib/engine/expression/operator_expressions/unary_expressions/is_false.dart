import 'package:fhir_r4/fhir_r4.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// IsFalse operator determining whether its argument evaluates to false.
/// Signature:
///
/// is false(argument Boolean) Boolean
/// Description:
///
/// The is false operator determines whether or not its argument evaluates to false. If the argument evaluates to false, the result is true; otherwise, the result is false.
///
/// The following examples illustrate the behavior of the is false operator:
///
/// define "IsFalseIsTrue": false is false
/// define "IsFalseIsFalse": null is false
class IsFalse extends UnaryExpression {
  IsFalse({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory IsFalse.fromJson(Map<String, dynamic> json) => IsFalse(
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
  String get type => 'IsFalse';
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
  Future<FhirBoolean> execute(Map<String, dynamic> context) async {
    final operandValue = await operand.execute(context);
    if (operandValue is FhirBoolean) {
      return FhirBoolean(operandValue.valueBoolean == false);
    } else {
      return FhirBoolean(false);
    }
  }
}
