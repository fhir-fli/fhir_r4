import '../../cql.dart';

/// The Query operator represents a clause-based query.
class Query extends CqlExpression {
  List<LetClause>? let;
  List<RelationshipClause>? relationship;
  ReturnClause? returnClause;
  SortClause? sort;
  AggregateClause? aggregate;
  List<AliasedQuerySource> source;
  CqlExpression? where;

  Query({
    required this.source,
    this.let,
    this.relationship,
    this.where,
    this.returnClause,
    this.sort,
    this.aggregate,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Query.fromJson(Map<String, dynamic> json) => Query(
        source: List<AliasedQuerySource>.from(
            json['source'].map((x) => AliasedQuerySource.fromJson(x))),
        let: json['let'] == null
            ? null
            : List<LetClause>.from(
                json['let'].map((x) => LetClause.fromJson(x))),
        relationship: json['relationship'] == null
            ? null
            : List<RelationshipClause>.from(json['relationship']
                .map((x) => RelationshipClause.fromJson(x))),
        where: json['where'] == null
            ? null
            : CqlExpression.fromJson(json['where']),
        returnClause: json['return'] == null
            ? null
            : ReturnClause.fromJson(json['return']),
        sort: json['sort'] == null ? null : SortClause.fromJson(json['sort']),
        aggregate: json['aggregate'] == null
            ? null
            : AggregateClause.fromJson(json['aggregate']),
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
      'source': source.map((x) => x.toJson()).toList(),
    };
    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('let', let?.map((e) => e.toJson()).toList());
    writeNotNull('relationship', relationship?.map((e) => e.toJson()).toList());
    writeNotNull('where', where?.toJson());
    writeNotNull('return', returnClause?.toJson());
    writeNotNull('sort', sort?.toJson());
    writeNotNull('aggregate', aggregate?.toJson());
    writeNotNull('annotation', annotation?.map((e) => e.toJson()).toList());
    writeNotNull('localId', localId);
    writeNotNull('locator', locator);
    writeNotNull('resultTypeName', resultTypeName);
    writeNotNull('resultTypeSpecifier', resultTypeSpecifier?.toJson());
    return val;
  }

  @override
  String get type => 'Query';

  @override
  String toString() {
    return 'Query(source: $source, let: $let, relationship: $relationship, where: $where, returnClause: $returnClause, sort: $sort, aggregate: $aggregate)';
  }
}
