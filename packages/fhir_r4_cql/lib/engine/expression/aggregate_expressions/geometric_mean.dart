import 'dart:math' as math;

import 'package:fhir_r4/fhir_r4.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// The GeometricMean operator returns the geometric mean of the non-null elements in source.
/// If a path is specified, elements with no value for the property specified by the path are ignored.
/// If the source contains no non-null elements, null is returned.
/// If the source is null, the result is null.
class GeometricMean extends AggregateExpression {
  GeometricMean({
    required super.source,
    super.signature,
    super.path,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory GeometricMean.fromJson(Map<String, dynamic> json) => GeometricMean(
        source: CqlExpression.fromJson(json['source']!),
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
      'source': source.toJson(),
    };

    if (signature != null) {
      json['signature'] = List<dynamic>.from(signature!.map((x) => x.toJson()));
    }

    if (path != null) {
      json['path'] = path;
    }

    if (annotation != null) {
      json['annotation'] =
          List<dynamic>.from(annotation!.map((x) => x.toJson()));
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
  String get type => 'GeometricMean';

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    final sourceResult = await source.execute(context);
    if (sourceResult == null) return null;
    if (sourceResult is! List) {
      throw ArgumentError('GeometricMean operator requires a List');
    }
    if (sourceResult.isEmpty) return null;
    final nonNull = sourceResult.where((e) => e != null).toList();
    if (nonNull.isEmpty) return null;

    // Convert all to double, compute product, take nth root
    final values = nonNull.map((e) {
      if (e is FhirDecimal) return e.valueNum?.toDouble() ?? 0.0;
      if (e is FhirInteger) return (e.valueInt ?? 0).toDouble();
      if (e is int) return e.toDouble();
      if (e is double) return e;
      if (e is num) return e.toDouble();
      throw ArgumentError('GeometricMean: unsupported type ${e.runtimeType}');
    }).toList();

    final product = values.reduce((a, b) => a * b);
    final result = math.pow(product, 1.0 / values.length);
    // CQL Decimal: at most 8 digits of scale
    return FhirDecimal(double.parse(result.toStringAsFixed(8)));
  }

  @override
  String toString() => 'GeometricMean: $source';
}
