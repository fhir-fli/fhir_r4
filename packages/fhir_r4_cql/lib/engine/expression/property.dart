import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_path/fhir_r4_path.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';
import 'package:ucum/fhir/validated_quantity.dart' show ValidatedQuantity;

/// The Property operator returns the value of the property on source specified
/// by the path attribute.
/// If the result of evaluating source is null, the result is null.
/// The path attribute may include qualifiers (.) and indexers ([x]). Indexers
/// must be literal integer values.
/// If the path attribute contains qualifiers or indexers, each qualifier or
/// indexer is traversed to obtain the actual value.
/// If the object of the property access at any point in traversing the path is
/// null, the result is null.
/// If a scope is specified, the name is used to resolve the scope in which the
/// path will be resolved.
/// Property expressions can also be used to access the individual points and
/// closed indicators for interval types using the property names low, high,
/// lowClosed, and highClosed.
class Property extends CqlExpression {
  final String path;
  final String? scope;
  final CqlExpression? source;

  Property({
    required this.path,
    this.source,
    this.scope,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Property.fromJson(Map<String, dynamic> json) {
    return Property(
      path: json['path'],
      source: json['source'] != null
          ? CqlExpression.fromJson(json['source'])
          : null,
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
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> val = {};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('path', path);
    writeNotNull('type', type);
    writeNotNull('scope', scope);
    writeNotNull('source', source?.toJson());
    writeNotNull('annotation', annotation?.map((e) => e.toJson()).toList());
    writeNotNull('localId', localId);
    writeNotNull('locator', locator);
    writeNotNull('resultTypeName', resultTypeName);
    writeNotNull('resultTypeSpecifier', resultTypeSpecifier?.toJson());
    return val;
  }

  @override
  String toString() => toJson().toString();

  @override
  String get type => 'Property';

  @override
  List<String> getReturnTypes(CqlLibrary library) {
    if (source != null) {
      final sourceReturnTypes = source!.getReturnTypes(library);
      final returnTypes = <String>[];
      for (final type in sourceReturnTypes) {
        final endType = fhir.resolveSimplePath('$type.$path');
        if (endType != null) {
          final resolvedType = QName.fhirToElmTypes(endType.type);
          returnTypes
              .add(endType.isList ? 'List<$resolvedType>' : resolvedType);
        }
      }
      return returnTypes;
    }
    return [];
  }

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    final sourceResult = await source?.execute(context);
    try {
      final context = sourceResult is fhir.FhirBase
          ? sourceResult
          : sourceResult is Map<String, dynamic>
              ? fhir.Resource.fromJson(sourceResult)
              : sourceResult is List &&
                      sourceResult.length == 1 &&
                      sourceResult.first is Map<String, dynamic>
                  ? fhir.Resource.fromJson(sourceResult.first)
                  : sourceResult is ValidatedQuantity
                      ? fhir.Quantity(
                          value: fhir.FhirDecimal.tryParse(
                              sourceResult.value.asUcumDecimal()),
                          unit: fhir.FhirString(sourceResult.unit),
                        )
                      : null;
      final result = await walkFhirPath(context: context, pathExpression: path);
      if (result.length == 1) {
        return result.first;
      } else {
        return result;
      }
    } catch (e) {
      print('Error executing Property: $e');
      return null;
    }
  }
}
