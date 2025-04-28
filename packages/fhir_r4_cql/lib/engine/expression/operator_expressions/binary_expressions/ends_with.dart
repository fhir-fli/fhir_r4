import 'package:fhir_r4/fhir_r4.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// Operator to return true if the given string ends with the given suffix.
/// If the suffix is the empty string, the result is true.
/// If either argument is null, the result is null.
/// Signature:
///
///EndsWith(argument String, suffix String) Boolean
///Description:
///
///The EndsWith operator returns true if the given string ends with the given
///suffix.
///
///If the suffix is the empty string, the result is true.
///
///If either argument is null, the result is null.
///
///The following examples illustrate the behavior of the EndsWith operator:
///
///define "EndsWithIsTrue": EndsWith('ABC', 'C') // true
///define "EndsWithIsFalse": EndsWith('ABC', 'Z') // false
///define "EndsWithIsNull": EndsWith('ABC', null) // null
class EndsWith extends BinaryExpression {
  EndsWith({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory EndsWith.fromJson(Map<String, dynamic> json) => EndsWith(
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
  String get type => 'EndsWith';

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
    return FhirBoolean(argument.endsWith(prefix));
  }
}
