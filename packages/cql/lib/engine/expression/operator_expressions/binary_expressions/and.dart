import 'package:fhir_r4/fhir_r4.dart';

import '../../../../cql.dart';

/// And operator returning the logical conjunction of its arguments.
/// Signature:
///
/// and (left Boolean, right Boolean) Boolean
/// Description:
///
/// The and operator returns true if both its arguments are true. If either
/// argument is false, the result is false. Otherwise, the result is null.
///
/// The following table defines the truth table for this operator:
///
/// The truth table for the And operator
///        TRUE    FALSE    NULL
///
/// TRUE   TRUE    FALSE    NULL
///
/// FALSE  FALSE   FALSE    FALSE
///
/// NULL   NULL    FALSE    NULL
///
///
/// Example:
///
/// The following examples illustrate the behavior of the and operator:
///
/// define "IsTrue": true and true
/// define "IsFalse": true and false
/// define "IsAlsoFalse": false and null
/// define "IsNull": true and null
/// Note that CQL does not prescribe short-circuit evaluation of logical operators.
class And extends BinaryExpression {
  And({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory And.fromJson(Map<String, dynamic> json) => And(
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
  String get type => 'And';

  @override
  String toString() => 'And(operand: $operand)';

  @override
  List<String> getReturnTypes(CqlLibrary library) => const ['FhirBoolean'];

  @override
  FhirBoolean? execute(Map<String, dynamic> context) {
    /// Assuming operand is accessible and contains the operands
    final left = operand[0].execute(context);
    final right = operand[1].execute(context);
    return and(left, right);
  }

  static FhirBoolean? and(dynamic left, dynamic right) {
    /// Both operands are non-null and true
    if (left is FhirBoolean && right is FhirBoolean) {
      return FhirBoolean(left.value! && right.value!);
    }

    /// Either operand is false
    /// One operand is null and the other is false (handled above as "either operand is false")
    if ((left is FhirBoolean && left.value == false) ||
        (right is FhirBoolean && right.value == false)) {
      return FhirBoolean(false);
    }

    /// Both operands are null
    if (left == null && right == null) {
      return null;
    }

    /// One operand is null and the other is true
    if ((left == null && right is FhirBoolean && (right.value ?? false)) ||
        (right == null && left is FhirBoolean && (left.value ?? false))) {
      return null;
    }

    /// Default return null if not covered above, though all cases should be covered
    return null;
  }
}
