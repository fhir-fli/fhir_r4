import 'package:fhir_r4/fhir_r4.dart';

import '../../../../cql.dart';

/// IsNull operator determining whether its argument evaluates to null.
/// Signature:
///
/// is null(argument Any) Boolean
/// Description:
///
/// The is null operator determines whether or not its argument evaluates to null. If the argument evaluates to null, the result is true; otherwise, the result is false.
///
/// The following examples illustrate the behavior of the is null operator:
///
/// define "IsTrue": null is null
/// define "IsFalse": true is null
class IsNull extends UnaryExpression {
  IsNull({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory IsNull.fromJson(Map<String, dynamic> json) => IsNull(
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
  String get type => 'IsNull';
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
    return FhirBoolean(operandValue == null);
  }
}
