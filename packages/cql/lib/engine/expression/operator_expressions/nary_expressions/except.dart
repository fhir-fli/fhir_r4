import '../../../../cql.dart';

/// Except operator returns the set difference of the two arguments.
/// This operator has two overloads: List, List and Interval, Interval.
/// For the list overload, returns a list with elements from the first operand
/// not in the second, using equality semantics, with null elements considered
/// equal. The operator is defined with set semantics.
/// For the interval overload, returns the portion of the first interval that
/// does not overlap with the second. If the second argument is properly
/// contained within the first and does not start or end it, returns null.
/// If the first argument is null, the result is null. If the second argument
/// is null, the operation is performed as though t
/// Signature:
///
/// except(left Interval<T>, right Interval<T>) Interval<T>
/// Description:
///
/// The except operator for intervals returns the set difference of two
/// intervals. More precisely, this operator returns the portion of the first
/// interval that does not overlap with the second. Note that to avoid returning
/// an improper interval, if the second argument is properly contained within
/// the first and does not start or end it, this operator returns null.
///
/// If either argument is null, the result is null.
///
/// The following examples illustrate the behavior of the except operator:
///
/// define "Except": Interval[0, 5] except Interval[3, 7] // Interval[0, 2]
/// define "ExceptIsNull": null except Interval[-1, 7]he second argument was an
/// empty list.
///
/// Signature:
///
/// except(left List<T>, right List<T>) List<T>
/// Description:
///
/// The except operator returns the set difference of two lists. More precisely,
/// the operator returns a list with the elements that appear in the first
/// operand that do not appear in the second operand.
///
/// This operator uses equality semantics to determine whether two elements are
/// the same for the purposes of computing the difference, with the exception
/// that null elements are considered equal.
///
/// The operator is defined with set semantics, meaning that each element will
/// appear in the result at most once, and that there is no expectation that the
/// order of the inputs will be preserved in the results.
///
/// If the first argument is null, the result is null. If the second argument is
/// null, the operation is performed as though the second argument was an empty
/// list.
///
/// The following examples illustrate the behavior of the except operator:
///
/// define "Except": { 1, 3, 5, 7 } except { 1, 3 } // { 5, 7 }
/// define "ExceptLeft": { 1, 3, 5, 7 } except null // { 1, 3, 5, 7 }
/// define "ExceptWithNull": { 1, 3, 5, 7, null } except { 1, 3, null } // { 5, 7 }
/// define "ExceptIsNull": null except { 1, 3, 5 }
class Except extends NaryExpression {
  Except({
    super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Except.fromJson(Map<String, dynamic> json) => Except(
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
  String get type => 'Except';

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['type'] = type;
    if (operand != null) {
      data['operand'] = operand!.map((e) => e.toJson()).toList();
    }
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
  dynamic execute(Map<String, dynamic> context) {
    if (operand?.length != 2) {
      throw ArgumentError('After expression must have 2 operands');
    }
    final left = operand![0].execute(context);
    final right = operand![1].execute(context);
    return except(left, right);
  }

  static dynamic except(dynamic left, dynamic right) {
    if (left is CqlInterval || right is CqlInterval) {
      if (left == null || right == null) {
        return null;
      } else if (left is CqlInterval && right is CqlInterval) {
        return left.except(right);
      }
    } else if (left is List || right is List) {
      if (left == null) {
        return null;
      } else if (right == null) {
        return (left as List).toSet().toList();
      } else if (left is List && right is List) {
        return left.toSet().difference(right.toSet()).toList();
      }
    }
    throw ArgumentError(
        'Except operator is not defined for ${left.runtimeType} and ${right.runtimeType}');
  }
}
