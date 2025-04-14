import '../../../../cql.dart';

/// The SingletonFrom expression extracts a single element from the source list.
/// If the source list is empty, the result is null.
/// If the source list contains one element, that element is returned.
/// If the list contains more than one element, a run-time error is thrown.
/// If the source list is null, the result is null.
/// Signature:
///
/// singleton from(argument List<T>) T
/// Description:
///
/// The singleton from operator extracts a single element from the source list.
/// If the source list is empty, the result is null. If the source list contains
/// one element, that element is returned. If the list contains more than one
/// element, a run-time error is thrown.
///
/// If the source list is null, the result is null.
///
/// The following examples illustrate the behavior of the singleton from operator:
///
/// define "SingletonFrom": singleton from { 1 } // 1
/// define "SingletonFromError": singleton from { 1, 3, 5 }
/// define "SingletonFromIsNull": singleton from (null as List<Integer>)
class SingletonFrom extends UnaryExpression {
  SingletonFrom({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory SingletonFrom.fromJson(Map<String, dynamic> json) => SingletonFrom(
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
  String get type => 'SingletonFrom';
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
  Future<dynamic> execute(Map<String, dynamic> context) async {
    final list = await operand.execute(context);
    if (list == null) {
      return null;
    } else if (list is List) {
      if (list.isEmpty) {
        return null;
      } else if (list.length == 1) {
        return list.first;
      } else {
        throw ArgumentError(
            'The source list for SingletonFrom contains more than one element');
      }
    } else {
      throw ArgumentError('SingletonFrom can only be applied to a list');
    }
  }
}
