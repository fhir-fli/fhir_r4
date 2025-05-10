import 'package:fhir_r4/fhir_r4.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// Operator to return the 0-based index of the beginning of the given pattern
/// in the given string.
/// If the pattern is not found, the result is -1.
/// If either argument is null, the result is null.
/// Signature:
///
///PositionOf(pattern String, argument String) Integer
///Description:
///
///The PositionOf operator returns the 0-based index of the given pattern in
///the given string.
///
///If the pattern is not found, the result is -1.
///
///If either argument is null, the result is null.
///
///The following examples illustrate the behavior of the PositionOf operator:
///
///define "PositionOfFound": PositionOf('B', 'ABCDEDCBA') // 1
///define "PositionOfNotFound": PositionOf('Z', 'ABCDE') // -1
///define "PositionOfIsNull": PositionOf(null, 'ABCDE') // null
class PositionOf extends OperatorExpression {
  final CqlExpression pattern;
  final CqlExpression string;

  PositionOf({
    required this.pattern,
    required this.string,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory PositionOf.fromJson(Map<String, dynamic> json) => PositionOf(
        pattern: CqlExpression.fromJson(json['pattern']),
        string: CqlExpression.fromJson(json['string']),
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
    final data = <String, dynamic>{
      'type': type,
      'pattern': pattern.toJson(),
      'string': string.toJson(),
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
  String get type => 'PositionOf';

  @override
  List<String> getReturnTypes(CqlLibrary library) => ['Integer'];

  @override
  Future<FhirInteger?> execute(Map<String, dynamic> context) async {
    final patternValue = await pattern.execute(context);
    final stringValue = await string.execute(context);
    if (patternValue == null || stringValue == null) {
      return null;
    }
    if (patternValue is String && stringValue is String) {
      return FhirInteger(stringValue.indexOf(patternValue));
    }
    return null;
  }
}
