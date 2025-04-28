import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// The Without clause restricts the elements of a given source to only those elements that do not have elements in the related source that satisfy the suchThat condition.
/// This operation is known as a semi-difference in database languages.
class Without extends RelationshipClause {
  Without({
    required super.alias,
    required super.expression,
    super.suchThat,
    super.type,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Without.fromJson(Map<String, dynamic> json) => Without(
        alias: json['alias'],
        expression: CqlExpression.fromJson(json['expression']),
        suchThat: json['suchThat'] == null
            ? null
            : CqlExpression.fromJson(json['suchThat']),
        type: json['type'] ?? '',
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
    final Map<String, dynamic> map = {
      if (type.isNotEmpty) 'type': type,
      'alias': alias,
      'expression': expression.toJson(),
    };
    if (suchThat != null) {
      map['suchThat'] = suchThat!.toJson();
    }
    if (annotation != null) {
      map['annotation'] = annotation!.map((e) => e.toJson()).toList();
    }
    if (localId != null) {
      map['localId'] = localId;
    }
    if (locator != null) {
      map['locator'] = locator;
    }
    if (resultTypeName != null) {
      map['resultTypeName'] = resultTypeName;
    }
    if (resultTypeSpecifier != null) {
      map['resultTypeSpecifier'] = resultTypeSpecifier!.toJson();
    }
    return map;
  }

  @override
  String toString() => 'Without(alias: $alias, expression: $expression, '
      'suchThat: $suchThat)';
}
