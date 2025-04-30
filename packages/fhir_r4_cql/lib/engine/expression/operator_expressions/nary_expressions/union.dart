import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Union operator returns the union of its arguments.
/// This operator has two overloads: List, Interval.
/// For the list overload, this operator returns a list with all unique
/// elements from both arguments, using equality semantics, with null elements
/// considered equal. For the interval overload, this operator returns the
/// interval that starts at the earliest starting point in either argument and
/// ends at the latest starting point in either argument. If the arguments do
/// not overlap or meet, returns null. If either argument is null, the
/// operation is performed as though the argument was an empty list.
/// Signature:
///
/// union(left Interval<T>, right Interval<T>) Interval<T>
/// Description:
///
/// The union operator for intervals returns the union of the intervals. More
/// precisely, the operator returns the interval that starts at the earliest
/// starting point in either argument, and ends at the latest starting point in
/// either argument. If the arguments do not overlap or meet, this operator
/// returns null.
///
/// If either argument is null, the result is null.
///
/// The following examples illustrate the behavior of the union operator:
///
/// define "Union": Interval[1, 5] union Interval[3, 7] // Interval[1, 7]
/// define "UnionIsNull": Interval[3, 5] union (null as Interval<Integer>)
/// Signature:
///
/// union(left List<T>, right List<T>) List<T>
/// Description:
///
/// The union operator for lists returns a list with all unique elements from
/// both arguments.
///
/// The union operator is defined as a set operation, meaning that duplicates
/// are eliminated; if an element appears in both sources, that element will
/// only appear once in the resulting list. In addition, there is no expectation
/// that the order of elements in the inputs will be preserved in the results.
///
/// This operator uses equality semantics with the exception that null elements
/// are considered equal.
///
/// If either argument is null, it is considered an empty list for the purposes
/// of evaluating the union.
///
/// Note that the union operator can also be invoked with the symbolic
/// operator (|).
///
/// The following examples illustrate the behavior of the union operator:
///
/// define "Union": { 1, 2, 3 } union { 4, 5 } // { 1, 2, 3, 4, 5 }
/// define "UnionAlternateSyntax": { 1, 2, 3 } | { 4, 5 } // { 1, 2, 3, 4, 5 }
/// define "UnionWithNull": null union { 4, 5 } // { 4, 5 }
class Union extends NaryExpression {
  Union({
    super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Union.fromJson(Map<String, dynamic> json) => Union(
        operand: json['operand'] != null
            ? (json['operand'] as List)
                .map((e) => CqlExpression.fromJson(e))
                .toList()
            : null,
        annotation: json['annotation'] != null
            ? (json['annotation'] as List)
                .map((e) => CqlToElmBase.fromJson(e))
                .toList()
            : null,
        localId: json['localId'] as String?,
        locator: json['locator'] as String?,
        resultTypeName: json['resultTypeName'] as String?,
        resultTypeSpecifier: json['resultTypeSpecifier'] != null
            ? TypeSpecifierExpression.fromJson(json['resultTypeSpecifier'])
            : null,
      );

  @override
  String get type => 'Union';

  @override
  Map<String, dynamic> toJson() {
    final data = super.toJson();
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
  Future<dynamic> execute(Map<String, dynamic> context) async {
    if (operand?.length != 2) {
      throw ArgumentError('After expression must have 2 operands');
    }

    print('${operand![0].toString()}');
    print('${operand![1].toString()}');
    final left = await operand![0].execute(context);
    final right = await operand![1].execute(context);
    print('Left: $left');
    print('Right: $right');
    return union(left, right);
  }

  static dynamic union(dynamic left, dynamic right) {
    if (left is CqlInterval || right is CqlInterval) {
      if (left == null || right == null) {
        return null;
      } else if (left is! CqlInterval || right is! CqlInterval) {
        throw ArgumentError(
            'Union operator is not defined for ${left.runtimeType} and ${right.runtimeType}');
      }
      final leftStart = left.getStart();
      final rightStart = right.getStart();
      final leftEnd = left.getEnd();
      final rightEnd = right.getEnd();
      dynamic finalStart;
      dynamic finalEnd;
      if (leftStart == null) {
        finalStart = rightStart;
      } else if (rightStart == null) {
        finalStart = leftStart;
      } else if (leftStart is Comparable && rightStart is Comparable) {
        finalStart =
            leftStart.compareTo(rightStart) < 0 ? leftStart : rightStart;
      }
      if (leftEnd == null) {
        finalEnd = rightEnd;
      } else if (rightEnd == null) {
        finalEnd = leftEnd;
      } else if (leftEnd is Comparable && rightEnd is Comparable) {
        finalEnd = leftEnd.compareTo(rightEnd) > 0 ? leftEnd : rightEnd;
      }
      return CqlInterval(low: finalStart, high: finalEnd);
    } else if (left is List || right is List) {
      if (left == null) {
        return (right as List).toSet().toList();
      } else if (right == null) {
        return (left as List).toSet().toList();
      } else if (left is! List || right is! List) {
        throw ArgumentError(
            'Union operator is not defined for ${left.runtimeType} and ${right.runtimeType}');
      }
      final result = left.toSet().union(right.toSet()).toList();
      return result;
    } else {
      throw ArgumentError(
          'Union operator is not defined for ${left.runtimeType} and ${right.runtimeType}');
    }
  }

  @override
  List<String> getReturnTypes(CqlLibrary library) {
    final returnTypes = <String>{};
    operand?.forEach((e) {
      returnTypes.addAll(e.getReturnTypes(library));
    });
    return returnTypes.toList();
  }

  @override
  String toString() {
    return 'Union{operand: ${operand?.map((e) => e.toString()).toList().join(', ')})';
  }
}
