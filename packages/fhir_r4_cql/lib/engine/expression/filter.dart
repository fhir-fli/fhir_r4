import 'package:fhir_r4/fhir_r4.dart' show FhirBoolean;
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Filter operator returns a list with only those elements in the source list for which the condition element evaluates to true.
/// If the source argument is null, the result is null.
class Filter extends CqlExpression {
  final CqlExpression condition;
  final String scope;
  final CqlExpression source;

  Filter({
    required this.source,
    required this.condition,
    required this.scope,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Filter.fromJson(Map<String, dynamic> json) => Filter(
        source: json['source']!,
        condition: json['condition']!,
        scope: json['scope']!,
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
      'source': source.toJson(),
      'condition': condition.toJson(),
      'scope': scope,
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
  String get type => 'Filter';

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    final sourceResult = await source.execute(context);
    if (sourceResult == null) return null;
    final items = sourceResult is List ? sourceResult : [sourceResult];
    final results = [];
    for (final item in items) {
      context[scope] = item;
      final condResult = await condition.execute(context);
      bool keep = false;
      if (condResult == true) {
        keep = true;
      } else if (condResult is FhirBoolean && condResult.valueBoolean == true) {
        keep = true;
      }
      if (keep) {
        results.add(item);
      }
    }
    context.remove(scope);
    return results;
  }
}
