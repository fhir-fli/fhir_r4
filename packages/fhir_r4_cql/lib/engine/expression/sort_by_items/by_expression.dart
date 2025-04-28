import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// The ByExpression element specifies that the sort should be performed using the given expression and direction.
/// This approach is used to specify the sort order as a calculated expression.
class ByExpression extends SortByItem {
  final CqlExpression expression;

  ByExpression({
    required super.direction,
    required this.expression,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ByExpression.fromJson(Map<String, dynamic> json) => ByExpression(
        direction: SortDirectionExtension.fromJson(json['direction']),
        expression: CqlExpression.fromJson(json['expression']),
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
      'direction': direction.toJson(),
      'expression': expression.toJson(),
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
  String get type => 'ByExpression';
}
