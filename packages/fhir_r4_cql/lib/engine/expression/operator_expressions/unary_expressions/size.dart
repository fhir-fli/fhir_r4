import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// Operator to return the size of an interval (End(i) - Start(i) + point-size),
/// where point-size is determined by: Successor(Minimum_T) - Minimum_T.
/// Note: This operator is not defined for intervals of type Date, DateTime,
/// and Time.
/// If the argument is null, the result is null.
/// Signature:
///
/// Size(argument Interval<T>) T
/// Description:
///
/// The Size operator returns the size of an interval. The result of this
/// operator is equivalent to invoking: (end of argument – start of argument)
/// + point-size, where point-size is determined by
/// successor of minimum T - minimum T.
///
/// Note that because CQL defines duration and difference operations for date
/// and time valued intervals, size is not defined for intervals of these types.
///
/// If the argument is null, the result is null.
///
/// The following examples illustrate the behavior of the Size operator:
///
/// define "SizeTest": Size(Interval[3, 7]) // 5, i.e. the interval contains
/// 5 points
/// define "SizeTestEquivalent": Size(Interval[3, 8)) // 5, i.e. the interval
/// contains 5 points
/// define "SizeIsNull": Size(null as Interval<Integer>) // null
class Size extends UnaryExpression {
  Size({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Size.fromJson(Map<String, dynamic> json) => Size(
        operand: CqlExpression.fromJson(json['operand']),
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
  String get type => 'Size';
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
  List<String> getReturnTypes(CqlLibrary library) {
    return operand.getReturnTypes(library);
  }

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    final interval = await operand.execute(context);
    if (interval == null) {
      return null;
    } else if (interval is CqlInterval) {
      final end = interval.getEnd();
      final start = interval.getStart();
      if (end == null || start == null) {
        return null;
      } else {
        final difference = Subtract.subtract(end, start);
        final min = MinValue.minValue(difference.runtimeType.toString());
        final successor = Successor.successor(min);
        final pointSize = Subtract.subtract(successor, min);
        return Add.add(difference, pointSize);
      }
    } else {
      throw Exception(
          "Cannot perform end operator with argument of type '${interval.runtimeType}'.");
    }
  }
}
