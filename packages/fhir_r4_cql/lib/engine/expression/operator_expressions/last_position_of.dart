import 'package:fhir_r4/fhir_r4.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Operator to return the 0-based index of the beginning of the last
/// appearance of the given pattern in the given string.
/// If the pattern is not found, the result is -1.
/// If either argument is null, the result is null.
/// Signature:
///
///LastPositionOf(pattern String, argument String) Integer
///Description:
///
///The LastPositionOf operator returns the 0-based index of the last
///appearance of the given pattern in the given string.
///
///If the pattern is not found, the result is -1.
///
///If either argument is null, the result is null.
///
///The following examples illustrate the behavior of the LastPositionOf
///operator:
///
///define "LastPositionOfFound": LastPositionOf('B', 'ABCDEDCBA') // 7
///define "LastPositionOfNotFound": LastPositionOf('XYZ', 'ABCDE') // -1
///define "LastPositionOfIsNull": LastPositionOf(null, 'ABCDE') // null
class LastPositionOf extends OperatorExpression {
  final CqlExpression pattern;
  final CqlExpression string;

  LastPositionOf({
    required this.pattern,
    required this.string,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory LastPositionOf.fromJson(Map<String, dynamic> json) => LastPositionOf(
        pattern: CqlExpression.fromJson(json['pattern']!),
        string: CqlExpression.fromJson(json['string']!),
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
  String get type => 'LastPositionOf';

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
      return FhirInteger(stringValue.lastIndexOf(patternValue));
    }
    return null;
  }
}
