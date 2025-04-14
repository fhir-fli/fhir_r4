import '../../../../cql.dart';

/// Operator to return the starting point of an interval.
/// If the low boundary of the interval is open, this operator returns the
/// Successor of the low value of the interval.
/// If the low boundary of the interval is closed and the low value of the
/// interval is not null, this operator returns the low value of the interval.
/// Otherwise, the result is the minimum value of the point type of the interval.
/// If the argument is null, the result is null.
/// Signature:
///
/// start of(argument Interval<T>) T
/// Description:
///
/// The Start operator returns the starting point of an interval.
///
/// If the low boundary of the interval is open, this operator returns the
/// successor of the low value of the interval. Note that if the low value of
/// the interval is null, the result is null.
///
/// If the low boundary of the interval is closed and the low value of the
/// interval is not null, this operator returns the low value of the interval.
/// Otherwise, the result is the minimum value of the point type of the interval.
///
/// If the argument is null, the result is null.
///
/// The following examples illustrate the behavior of the Start operator:
///
/// define "StartOfInterval": start of Interval[1, 5] // 1
/// define "StartIsNull": start of (null as Interval<Integer>)
class Start extends UnaryExpression {
  Start({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Start.fromJson(Map<String, dynamic> json) => Start(
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
  String get type => 'Start';

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
      return interval.getStart();
    } else {
      throw Exception(
          "Cannot perform end operator with argument of type '${interval.runtimeType}'.");
    }
  }
}
