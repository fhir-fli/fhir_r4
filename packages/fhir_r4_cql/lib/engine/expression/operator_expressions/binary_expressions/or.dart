import 'package:fhir_r4/fhir_r4.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// Or operator returning the logical disjunction of its arguments.
/// Signature:
///
/// or (left Boolean, right Boolean) Boolean
/// Description:
///
/// The or operator returns true if either of its arguments are true. If both
/// arguments are false, the result is false. Otherwise, the result is null.
///
/// The following table defines the truth table for this operator:
///
/// The truth table for the Or operator
///        TRUE    FALSE    NULL
///
/// TRUE   TRUE    TRUE     TRUE
///
/// FALSE  TRUE    FALSE    NULL
///
/// NULL   TRUE    NULL     NULL
///
/// Example:
///
/// The following examples illustrate the behavior of the or operator:
///
/// define "IsTrue": true or false
/// define "IsAlsoTrue": true or null
/// define "IsFalse": false or false
/// define "IsNull": false or null
/// Note that CQL does not prescribe short-circuit evaluation of logical operators.
class Or extends BinaryExpression {
  Or({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Or.fromJson(Map<String, dynamic> json) => Or(
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
      'operand': operand.map((e) => e.toJson()).toList(),
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
  String get type => 'Or';

  @override
  Future<FhirBoolean?> execute(Map<String, dynamic> context) async {
    /// Assuming operand is accessible and contains the operands
    final left = await operand[0].execute(context);
    final right = await operand[1].execute(context);

    /// If either operand is true
    if ((left is FhirBoolean && left.valueBoolean == true) ||
        (right is FhirBoolean && right.valueBoolean == true)) {
      return FhirBoolean(true);
    }

    /// If both operands are false
    if ((left is FhirBoolean && left.valueBoolean == false) &&
        (right is FhirBoolean && right.valueBoolean == false)) {
      return FhirBoolean(false);
    }

    /// If one operand is false and the other is null
    if (((left is FhirBoolean && left.valueBoolean == false) &&
            right == null) ||
        ((right is FhirBoolean && right.valueBoolean == false) &&
            left == null)) {
      return null;
    }

    /// If both operands are null
    if (left == null && right == null) {
      return null;
    }

    /// If not covered above, return null as a fallback
    return null;
  }

  @override
  List<String> getReturnTypes(CqlLibrary library) => const ['FhirBoolean'];
}
