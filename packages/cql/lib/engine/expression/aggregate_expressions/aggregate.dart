import '../../../cql.dart';

/// The Aggregate operator performs custom aggregation by evaluating an expression for each element of the source.
/// If a path is specified, the aggregation is performed for the value of the property specified by the path for each element of the source.
/// If the list is null, the result is null.
class Aggregate extends AggregateExpression {
  final CqlExpression? initialValue;
  final CqlExpression iteration;

  Aggregate({
    required this.iteration,
    required super.source,
    required this.initialValue,
    super.signature,
    super.path,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Aggregate.fromJson(Map<String, dynamic> json) => Aggregate(
        iteration: CqlExpression.fromJson(json['iteration']!),
        source: CqlExpression.fromJson(json['source']!),
        initialValue: CqlExpression.fromJson(json['initialValue']),
        signature: json['signature'] == null
            ? null
            : (json['signature'] as List)
                .map((e) => TypeSpecifierExpression.fromJson(e))
                .toList(),
        path: json['path'],
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
      'iteration': iteration.toJson(),
      'source': source.toJson(),
      'path': path,
    };

    if (initialValue != null) {
      json['initialValue'] = initialValue!.toJson();
    }

    if (signature != null) {
      json['signature'] = signature!.map((s) => s.toJson()).toList();
    }

    if (annotation != null) {
      json['annotation'] = annotation!.map((a) => a.toJson()).toList();
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
  String get type => 'Aggregate';

  @override
  String toString() => 'Aggregate: $iteration';
}
