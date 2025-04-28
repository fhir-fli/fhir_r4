import 'package:fhir_r4/fhir_r4.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// Implies operator returning the logical implication of its arguments.
/// Signature:
///
/// implies (left Boolean, right Boolean) Boolean
/// Description:
///
/// The implies operator returns the logical implication of its arguments.
/// This means that if the left operand evaluates to true, this operator
/// returns the boolean evaluation of the right operand. If the left operand
/// evaluates to false, this operator returns true. Otherwise, this operator
/// returns true if the right operand evaluates to true, and null otherwise.
///
/// Note that implies may use short-circuit evaluation in the case that the
/// first operand evaluates to false.
///
/// The following table defines the truth table for this operator:
///
/// The truth table for the Implies operator
///        TRUE    FALSE    NULL
///
/// TRUE   TRUE    FALSE    NULL
///
/// FALSE  TRUE    TRUE     TRUE
///
/// NULL   TRUE    NULL     NULL
///
/// Example:
///
/// The following examples illustrate the behavior of the implies operator:
///
/// define "IsTrue": false implies false
/// define "IsAlsoTrue": false implies null
/// define "IsFalse": true implies false
/// define "IsNull": true implies null
class Implies extends BinaryExpression {
  Implies({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Implies.fromJson(Map<String, dynamic> json) => Implies(
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
      'operand': operand.map((x) => x.toJson()).toList(),
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
  String get type => 'Implies';

  @override
  Future<FhirBoolean?> execute(Map<String, dynamic> context) async {
    /// Assuming operand is accessible and contains the operands
    final left = await operand[0].execute(context);
    final right = await operand[1].execute(context);

    /// TRUE implies TRUE and FALSE implies anything is TRUE
    if ((left is FhirBoolean &&
            left.valueBoolean == true &&
            right is FhirBoolean &&
            right.valueBoolean == true) ||
        (left is FhirBoolean && left.valueBoolean == false) ||
        (left == null)) {
      return FhirBoolean(true);
    }

    /// TRUE implies FALSE
    if (left is FhirBoolean &&
        left.valueBoolean == true &&
        right is FhirBoolean &&
        right.valueBoolean == false) {
      return FhirBoolean(false);
    }

    /// TRUE implies NULL
    if (left is FhirBoolean && left.valueBoolean == true && right == null) {
      return null;
    }

    /// NULL implies NULL
    if (left == null && right == null) {
      return null;
    }

    return null;
  }

  @override
  List<String> getReturnTypes(CqlLibrary library) => const ['FhirBoolean'];
}
