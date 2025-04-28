import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// The ReturnClause element defines the shape of the result set of the query.
class ReturnClause extends Element {
  final bool? distinct;
  final CqlExpression expression;

  ReturnClause({
    required this.expression,
    this.distinct,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ReturnClause.fromJson(Map<String, dynamic> json) => ReturnClause(
        expression: CqlExpression.fromJson(json['expression']),
        distinct: json['distinct'],
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
    final Map<String, dynamic> val = {};
    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('distinct', distinct);
    writeNotNull('expression', expression.toJson());
    writeNotNull('annotation', annotation?.map((e) => e.toJson()).toList());
    writeNotNull('localId', localId);
    writeNotNull('locator', locator);
    writeNotNull('resultTypeName', resultTypeName);
    writeNotNull('resultTypeSpecifier', resultTypeSpecifier?.toJson());
    return val;
  }

  String get type => 'ReturnClause';

  @override
  String toString() => 'ReturnClause: $expression';
}
