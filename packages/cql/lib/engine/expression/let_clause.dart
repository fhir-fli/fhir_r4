import '../../cql.dart';

/// The LetClause element allows any number of expression definitions to be introduced within a query scope.
/// Defined expressions can be referenced by name within the query scope.
class LetClause extends Element {
  final CqlExpression expression;
  final String identifier;

  LetClause({
    required this.expression,
    required this.identifier,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory LetClause.fromJson(Map<String, dynamic> json) => LetClause(
        expression: CqlExpression.fromJson(json['expression']),
        identifier: json['identifier'],
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
    final Map<String, dynamic> val = {
      'type': type,
      'expression': expression.toJson(),
      'identifier': identifier,
    };
    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('annotation', annotation?.map((e) => e.toJson()).toList());
    writeNotNull('localId', localId);
    writeNotNull('locator', locator);
    writeNotNull('resultTypeName', resultTypeName);
    writeNotNull('resultTypeSpecifier', resultTypeSpecifier?.toJson());
    return val;
  }

  @override
  String toString() => toJson().toString();

  String get type => 'LetClause';
}
