import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// The Repeat expression performs successive ForEach until no new elements are returned.
/// It uses equality comparison semantics as defined in the Equal operator.
/// If the source argument is null, the result is null.
/// If the element argument evaluates to null for some item in the source list, the resulting list will contain a null for that element.
class Repeat extends CqlExpression {
  final CqlExpression element;
  final String scope;
  final CqlExpression source;

  Repeat({
    required this.source,
    required this.element,
    required this.scope,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Repeat.fromJson(Map<String, dynamic> json) => Repeat(
        source: CqlExpression.fromJson(json['source']),
        element: CqlExpression.fromJson(json['element']),
        scope: json['scope'],
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
      'source': source.toJson(),
      'element': element.toJson(),
      'scope': scope,
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
  String get type => 'Repeat';

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    final sourceResult = await source.execute(context);
    if (sourceResult == null) return null;
    var current = sourceResult is List ? List<dynamic>.from(sourceResult) : [sourceResult];
    final allResults = <dynamic>{};

    // Keep iterating until no new elements are produced
    while (current.isNotEmpty) {
      final newElements = <dynamic>[];
      for (final item in current) {
        context[scope] = item;
        final result = await element.execute(context);
        if (result is List) {
          for (final r in result) {
            if (r != null && allResults.add(r)) {
              newElements.add(r);
            }
          }
        } else if (result != null && allResults.add(result)) {
          newElements.add(result);
        }
      }
      current = newElements;
    }
    context.remove(scope);
    return allResults.toList();
  }
}
