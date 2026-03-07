import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Times operator performs the cartesian product of two lists of tuples.
/// The return type of a Times operator is a tuple with all the components from the tuple types of both arguments.
/// If either argument is null, the result is null.
class Times extends BinaryExpression {
  Times({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Times.fromJson(Map<String, dynamic> json) => Times(
        operand: List<CqlExpression>.from(
          json['operand'].map(
            (x) => CqlExpression.fromJson(x),
          ),
        ),
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
    final data = <String, dynamic>{};
    data['type'] = type;
    data['operand'] = operand.map((e) => e.toJson()).toList();
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
  String get type => 'Times';

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    final left = await operand[0].execute(context);
    final right = await operand[1].execute(context);
    if (left == null || right == null) return null;
    final leftList = left is List ? left : [left];
    final rightList = right is List ? right : [right];
    final results = <Map<String, dynamic>>[];
    for (final l in leftList) {
      for (final r in rightList) {
        final merged = <String, dynamic>{};
        if (l is Map<String, dynamic>) {
          merged.addAll(l);
        }
        if (r is Map<String, dynamic>) {
          merged.addAll(r);
        }
        results.add(merged);
      }
    }
    return results;
  }
}
