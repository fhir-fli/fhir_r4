import 'package:fhir_r4/fhir_r4.dart';

import '../../../../cql.dart';

/// IsTrue operator determining whether its argument evaluates to true.
/// Signature:
///
/// is true(argument Boolean) Boolean
/// Description:
///
/// The is true operator determines whether or not its argument evaluates to
/// true. If the argument evaluates to true, the result is true; otherwise,
/// the result is false.
///
/// The following examples illustrate the behavior of the is true operator:
///
/// define "IsTrueIsTrue": true is true
/// define "IsTrueIsFalse": false is true
class IsTrue extends UnaryExpression {
  IsTrue({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory IsTrue.fromJson(Map<String, dynamic> json) => IsTrue(
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
  String get type => 'IsTrue';
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
      return FhirBoolean(operandValue.valueBoolean == true);
    } else {
      return FhirBoolean(false);
    }
  }
}
