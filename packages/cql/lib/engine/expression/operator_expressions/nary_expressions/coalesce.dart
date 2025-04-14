import '../../../../cql.dart';

/// Coalesce operator returning the first non-null result in a list of arguments.
/// Signature:
///
/// Coalesce<T>(argument1 T, argument2 T) T
/// Coalesce<T>(argument1 T, argument2 T, argument3 T) T
/// Coalesce<T>(argument1 T, argument2 T, argument3 T, argument4 T) T
/// Coalesce<T>(argument1 T, argument2 T, argument3 T, argument4 T, argument5 T) T
/// Coalesce<T>(arguments List<T>) T
/// Description:
///
/// The Coalesce operator returns the first non-null result in a list of
/// arguments. If all arguments evaluate to null, the result is null.
///
/// The static type of the first argument determines the type of the result,
/// and all subsequent arguments must be of that same type.
///
/// The following examples illustrate the behavior of the Coalesce operator:
///
/// define "Coalesce15": Coalesce(null, 15, null)
/// define "IsNull": Coalesce({ null, null, null })
/// define "CoalesceError": Coalesce(null, 15, null, null, null, null) // more
/// than 5 inputs must be represented as list
class Coalesce extends NaryExpression {
  Coalesce({
    super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Coalesce.one(
    CqlExpression operand1, {
    List<CqlToElmBase>? annotation,
    String? localId,
    String? locator,
    String? resultTypeName,
    TypeSpecifierExpression? resultTypeSpecifier,
  }) =>
      Coalesce(
        operand: [operand1],
        annotation: annotation,
        localId: localId,
        locator: locator,
        resultTypeName: resultTypeName,
        resultTypeSpecifier: resultTypeSpecifier,
      );

  factory Coalesce.two(
    CqlExpression operand1,
    CqlExpression operand2, {
    List<CqlToElmBase>? annotation,
    String? localId,
    String? locator,
    String? resultTypeName,
    TypeSpecifierExpression? resultTypeSpecifier,
  }) =>
      Coalesce(
        operand: [operand1, operand2],
        annotation: annotation,
        localId: localId,
        locator: locator,
        resultTypeName: resultTypeName,
        resultTypeSpecifier: resultTypeSpecifier,
      );

  factory Coalesce.three(
    CqlExpression operand1,
    CqlExpression operand2,
    CqlExpression operand3, {
    List<CqlToElmBase>? annotation,
    String? localId,
    String? locator,
    String? resultTypeName,
    TypeSpecifierExpression? resultTypeSpecifier,
  }) =>
      Coalesce(
        operand: [operand1, operand2, operand3],
        annotation: annotation,
        localId: localId,
        locator: locator,
        resultTypeName: resultTypeName,
        resultTypeSpecifier: resultTypeSpecifier,
      );

  factory Coalesce.four(
    CqlExpression operand1,
    CqlExpression operand2,
    CqlExpression operand3,
    CqlExpression operand4, {
    List<CqlToElmBase>? annotation,
    String? localId,
    String? locator,
    String? resultTypeName,
    TypeSpecifierExpression? resultTypeSpecifier,
  }) =>
      Coalesce(
        operand: [operand1, operand2, operand3, operand4],
        annotation: annotation,
        localId: localId,
        locator: locator,
        resultTypeName: resultTypeName,
        resultTypeSpecifier: resultTypeSpecifier,
      );

  factory Coalesce.five(
    CqlExpression operand1,
    CqlExpression operand2,
    CqlExpression operand3,
    CqlExpression operand4,
    CqlExpression operand5, {
    List<CqlToElmBase>? annotation,
    String? localId,
    String? locator,
    String? resultTypeName,
    TypeSpecifierExpression? resultTypeSpecifier,
  }) =>
      Coalesce(
        operand: [operand1, operand2, operand3, operand4, operand5],
        annotation: annotation,
        localId: localId,
        locator: locator,
        resultTypeName: resultTypeName,
        resultTypeSpecifier: resultTypeSpecifier,
      );

  factory Coalesce.fromJson(Map<String, dynamic> json) => Coalesce(
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
  String get type => 'Coalesce';

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
  Future<dynamic> execute(Map<String, dynamic> context) async {
    for (final op in operand!) {
      final result = await op.execute(context);
      if (result != null) {
        return result;
      }
    }
    return null;
  }

  @override
  List<String> getReturnTypes(CqlLibrary library) {
    if (operand == null || operand!.isEmpty) {
      return [];
    }
    for (final op in operand!) {
      final returnTypes = op.getReturnTypes(library);
      if (returnTypes.isNotEmpty && returnTypes.length == 1) {
        return [returnTypes.first];
      }
    }
    return [];
  }
}
