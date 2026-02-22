import 'package:fhir_r4/fhir_r4.dart';
import 'package:ucum/ucum.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// The Product operator returns the geometric product of non-null elements in the source.
/// If a path is specified, elements with no value for the property specified by the path are ignored.
/// If the source contains no non-null elements, null is returned.
/// If the list is null, the result is null.
class Product extends AggregateExpression {
  Product({
    required super.source,
    super.signature,
    super.path,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
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
      json['signature'] = signature!.map((e) => e.toJson()).toList();
    }

    if (path != null) {
      json['path'] = path;
    }

    if (annotation != null) {
      json['annotation'] = annotation!.map((e) => e.toJson()).toList();
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
  String get type => 'Product';

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    final sourceResult = await source.execute(context);
    return product(sourceResult);
  }

  static dynamic product(dynamic sourceResult) {
    if (sourceResult == null) {
      return null;
    } else if (sourceResult is List) {
      if (sourceResult.isEmpty) {
        return null;
      }
      sourceResult.removeWhere((e) => e == null);
      if (sourceResult.isEmpty) {
        return null;
      }
      if (sourceResult.every((e) => e is int)) {
        return sourceResult.cast<int>().reduce((a, b) => a * b);
      } else if (sourceResult.every((e) => e is double)) {
        return sourceResult.cast<double>().reduce((a, b) => a * b);
      } else if (sourceResult.every((e) => e is BigInt)) {
        return sourceResult.cast<BigInt>().reduce((a, b) => a * b);
      } else if (sourceResult.every((e) => e is FhirInteger)) {
        return sourceResult.cast<FhirInteger>().reduce((a, b) =>
            FhirInteger((a.valueInt ?? 0) * (b.valueInt ?? 0)));
      } else if (sourceResult.every((e) => e is FhirInteger64)) {
        return sourceResult.cast<FhirInteger64>().reduce((a, b) =>
            FhirInteger64((a.valueBigInt ?? BigInt.zero) * (b.valueBigInt ?? BigInt.zero)));
      } else if (sourceResult.every((e) => e is FhirDecimal)) {
        return sourceResult.cast<FhirDecimal>().reduce((a, b) =>
            FhirDecimal((a.valueNum ?? 0) * (b.valueNum ?? 0)));
      } else if (sourceResult.every((e) => e is ValidatedQuantity)) {
        return sourceResult
            .cast<ValidatedQuantity>()
            .reduce((a, b) => a * b);
      } else {
        throw ArgumentError(
            'Product operator: unsupported element type '
            '${sourceResult.first.runtimeType}');
      }
    } else {
      throw ArgumentError('Product operator requires a List, '
          'but found ${sourceResult.runtimeType}');
    }
  }

  @override
  String toString() => 'Product { source: $source }';
}
