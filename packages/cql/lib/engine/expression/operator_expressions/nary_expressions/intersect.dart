import '../../../../cql.dart';

/// Intersect operator returns the intersection of its arguments.
/// This operator has two overloads: List, Interval.
/// For the list overload, returns a list with the elements that appear in both
/// lists using equality semantics. Null elements are considered equal for
/// intersection purposes. The operator is defined with set semantics.
/// For the interval overload, returns the interval that defines the overlapping
/// portion of both arguments. If the arguments do not overlap, returns null.
/// If either argument is null, the result is null.
/// Signature:
///
/// intersect(left List<T>, right List<T>) List<T>
/// Description:
///
/// The intersect operator for lists returns the intersection of two lists.
/// More precisely, the operator returns a list containing only the elements
/// that appear in both lists.
///
/// This operator uses equality semantics to determine whether or not two
/// elements are the same, with the exception that null elements are considered
/// equal for the purposes of the intersection.
///
/// The operator is defined with set semantics, meaning that each element will
/// appear in the result at most once, and that there is no expectation that
/// the order of the inputs will be preserved in the results.
///
/// If either argument is null, the result is null.
///
/// The following examples illustrate the behavior of the intersect operator:
///
/// define "Intersect": { 1, 3, 5 } intersect { 3, 5, 7 } // { 3, 5 }
/// define "IntersectWithNull": { null, 1, 3, 5 } intersect { null, 3, 5, 7 } // { null, 3, 5 }
/// define "IntersectIsNull": { 1, 3, 5 } intersect null
///
/// Signature:
///
/// intersect(left Interval<T>, right Interval<T>) Interval<T>
/// Description:
///
/// The intersect operator for intervals returns the intersection of two
/// intervals. More precisely, the operator returns the interval that defines
/// the overlapping portion of both arguments. If the arguments do not overlap,
/// this operator returns null.
///
/// If either argument is null, the result is null.
///
/// The following examples illustrate the behavior of the intersect operator:
///
/// define "Intersect": Interval[1, 5] intersect Interval[3, 7] // Interval[3, 5]
/// define "IntersectIsNull": Interval[3, 5] intersect (null as Interval<Integer>)
class Intersect extends NaryExpression {
  Intersect({
    super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Intersect.fromJson(Map<String, dynamic> json) => Intersect(
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
  String get type => 'Intersect';

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
  List<String> getReturnTypes(CqlLibrary library) {
    final leftReturnTypes = operand![0].getReturnTypes(library);
    final rightReturnTypes = operand![1].getReturnTypes(library);
    if (leftReturnTypes.length == 1 && rightReturnTypes.length == 1) {
      if (leftReturnTypes.first == rightReturnTypes.first) {
        return [leftReturnTypes.first];
      }
      if (leftReturnTypes.contains('List') &&
          rightReturnTypes.contains('List')) {
        return ['List'];
      }
      if (leftReturnTypes.contains('CqlInterval') &&
          rightReturnTypes.contains('CqlInterval')) {
        return ['CqlInterval'];
      }
    }
    return ['Unknown'];
  }

  @override
  dynamic execute(Map<String, dynamic> context) {
    if (operand?.length != 2) {
      throw ArgumentError('Intersect operator requires two operands');
    }
    final left = operand![0].execute(context);
    final right = operand![1].execute(context);
    return intersect(left, right);
  }

  static dynamic intersect(dynamic left, dynamic right) {
    if (left is CqlInterval && right is CqlInterval) {
      return left.intersect(right);
    } else if (left is List && right is List) {
      return List.from(left)..retainWhere((e) => right.contains(e));
    } else {
      return null;
    }
  }
}
