import 'package:fhir_r4/fhir_r4.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// Operator to return true if the given string starts with the given prefix.
/// If the prefix is the empty string, the result is true.
/// If either argument is null, the result is null.
/// Signature:
///
///StartsWith(argument String, prefix String) Boolean
///Description:
///
///The StartsWith operator returns true if the given string starts with the
///given prefix.
///
///If the prefix is the empty string, the result is true.
///
///If either argument is null, the result is null.
///
///The following examples illustrate the behavior of the StartsWith operator:
///
///define "StartsWithIsTrue": StartsWith('ABCDE', 'ABC') // true
///define "StartsWithIsFalse": StartsWith('ABCDE', 'XYZ') // false
///define "StartsWithIsNull": StartsWith('ABCDE', null) // null
class StartsWith extends BinaryExpression {
  StartsWith({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory StartsWith.fromJson(Map<String, dynamic> json) => StartsWith(
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
    final data = <String, dynamic>{};
    data['type'] = type;
    data['operand'] = operand.map((e) => e.toJson()).toList();
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
  String get type => 'StartsWith';

  @override
  List<String> getReturnTypes(CqlLibrary library) => const ['FhirBoolean'];

  @override
  Future<FhirBoolean?> execute(Map<String, dynamic> context) async {
    if (operand.length != 2) {
      throw ArgumentError('StartsWith must have 2 operands');
    }
    final argument = await operand[0].execute(context);
    final prefix = await operand[1].execute(context);
    if (argument == null || prefix == null) {
      return null;
    }
    if (argument is! String || prefix is! String) {
      throw ArgumentError('StartsWith operands must be of type String');
    }
    return FhirBoolean(argument.startsWith(prefix));
  }
}
