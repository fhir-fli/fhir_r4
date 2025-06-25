import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Represents an element within a case operator, specifying conditions and their corresponding actions.
class CaseItem extends Element {
  /// Action to perform if the condition is met.
  final CqlExpression then;

  /// Condition to evaluate.
  final CqlExpression when_;

  CaseItem({
    required this.when_,
    required this.then,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory CaseItem.fromJson(Map<String, dynamic> json) => CaseItem(
        when_: CqlExpression.fromJson(json['when']!),
        then: CqlExpression.fromJson(json['then']!),
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
      'when': when_.toJson(),
      'then': then.toJson(),
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

  String get type => 'CaseItem';
}
