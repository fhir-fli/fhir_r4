import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Operator to return the width of an interval (End(i) - Start(i)).
/// Note: This operator is not defined for intervals of type Date, DateTime,
/// and Time.
/// If the argument is null, the result is null.
/// Signature:
///
/// width of(argument Interval<T>) T
/// Description:
///
/// The width operator returns the width of an interval. The result of this
/// operator is equivalent to invoking: (end of argument – start of argument).
///
/// Note that because CQL defines duration and difference operations for date
/// and time valued intervals, width is not defined for intervals of these
/// types.
///
/// If the argument is null, the result is null.
///
/// The following examples illustrate the behavior of the width operator:
///
/// define "Width": width of Interval[3, 7] // 4
/// define "WidthIsNull": width of (null as Interval<Integer>) // null
/// define "NullInterval": width of Interval[0, null) //null
class Width extends UnaryExpression {
  Width({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Width.fromJson(Map<String, dynamic> json) => Width(
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
  String get type => 'Width';
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
        return Subtract.subtract(end, start);
      }
    } else {
      throw Exception(
          "Cannot perform end operator with argument of type '${interval.runtimeType}'.");
    }
  }
}
