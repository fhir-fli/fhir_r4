import 'package:fhir_r4/fhir_r4.dart';

import '../../../../cql.dart';

/// Xor operator returning the exclusive or of its arguments.
/// Signature:
///
/// xor (left Boolean, right Boolean) Boolean
/// Description:
///
/// The xor (exclusive or) operator returns true if one argument is true and the other is false. If both arguments are true or both arguments are false, the result is false. Otherwise, the result is null.
///
/// The following table defines the truth table for this operator:
///
/// Table The truth table for the Xor operator
///
///        TRUE    FALSE    NULL
///
/// TRUE   FALSE   TRUE    NULL
///
/// FALSE  TRUE    FALSE    NULL
///
/// NULL   NULL    NULL     NULL
///
///
/// The following examples illustrate the behavior of the xor operator:
///
/// define "IsTrue": true xor false
/// define "IsAlsoTrue": false xor true
/// define "IsFalse": true xor true
/// define "IsNull": true xor null
class Xor extends BinaryExpression {
  Xor({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Xor.fromJson(Map<String, dynamic> json) => Xor(
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
    final data = <String, dynamic>{};
    data['type'] = type;
    data['operand'] = operand.map((e) => e.toJson()).toList();
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
  String get type => 'Xor';

  @override
  FhirBoolean? execute(Map<String, dynamic> context) {
    /// Assuming operand is accessible and contains the operands
    final left = operand[0].execute(context);
    final right = operand[1].execute(context);

    /// If both operands are null
    if (left == null && right == null) {
      return null;
    } else

    /// If one operand is true and the other is false
    if ((left is FhirBoolean &&
            left.value == true &&
            right is FhirBoolean &&
            right.value == false) ||
        (right is FhirBoolean &&
            right.value == true &&
            left is FhirBoolean &&
            left.value == false)) {
      return FhirBoolean(true);
    } else

    /// If both operands are true or both are false
    if ((left is FhirBoolean &&
        right is FhirBoolean &&
        left.value == right.value)) {
      return FhirBoolean(false);
    }

    /// In all other cases, including when one operand is null and the other is not
    return null;
  }

  @override
  List<String> getReturnTypes(CqlLibrary library) => const ['FhirBoolean'];
}
