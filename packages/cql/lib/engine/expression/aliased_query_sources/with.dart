import '../../../cql.dart';

/// The With clause restricts the elements of a given source to only those elements that have elements in the related source that satisfy the suchThat condition.
/// This operation is known as a semi-join in database languages.
class With extends RelationshipClause {
  With({
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

  factory With.fromJson(Map<String, dynamic> json) {
    return With(
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
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> map = {
      'alias': alias,
      if (type.isNotEmpty) 'type': type,
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
  String toString() => 'With(alias: $alias, expression: $expression, '
      'suchThat: $suchThat)';
}
