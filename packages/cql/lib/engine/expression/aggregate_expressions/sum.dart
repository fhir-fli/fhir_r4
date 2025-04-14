import 'package:fhir_r4/fhir_r4.dart';
import 'package:ucum/ucum.dart';

import '../../../cql.dart';

/// The Sum operator returns the sum of non-null elements in the source.
/// If a path is specified, elements with no value for the property specified
/// by the path are ignored.
/// If the source contains no non-null elements, null is returned.
/// If the list is null, the result is null.
/// Signature:
///
/// Sum(argument List<Integer>) Integer
/// Sum(argument List<Long>) Long
/// Sum(argument List<Decimal>) Decimal
/// Sum(argument List<Quantity>) Quantity
/// The Long type is a new feature being introduced in CQL 1.5, and has
/// trial-use status.
///
/// Description:
///
/// The Sum operator returns the sum of non-null elements in the source.
///
/// If the source contains no non-null elements, null is returned.
///
/// If the list is null, the result is null.
///
/// The following examples illustrate the behavior of the Sum operator:
///
/// define "DecimalSum": Sum({ 1.0, 2.0, 3.0, 4.0, 5.0 }) // 15.0
/// define "QuantitySum": Sum({ 1.0 'mg', 2.0 'mg', 3.0 'mg', 4.0 'mg', 5.0 'mg' }) // 15.0 'mg'
/// define "SumIsNull": Sum({ null as Quantity, null as Quantity, null as Quantity })
/// define "SumIsAlsoNull": Sum(null as List<Decimal>)
class Sum extends AggregateExpression {
  Sum({
    required super.source,
    super.signature,
    super.path,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Sum.fromJson(Map<String, dynamic> json) => Sum(
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
  String get type => 'Sum';

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    final sourceResult = await source.execute(context);
    return sum(sourceResult);
  }

  static dynamic sum(dynamic sourceResult) {
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
        return sourceResult.cast<int>().reduce((a, b) => a + b);
      } else if (sourceResult.every((e) => e is double)) {
        return sourceResult.cast<double>().reduce((a, b) => a + b);
      } else if (sourceResult.every((e) => e is BigInt)) {
        return sourceResult.cast<BigInt>().reduce((a, b) => a + b);
      } else if (sourceResult.every((e) => e is FhirInteger)) {
        return sourceResult.cast<FhirInteger>().reduce((a, b) => Add.add(a, b));
      } else if (sourceResult.every((e) => e is FhirDecimal)) {
        return sourceResult.cast<FhirDecimal>().reduce((a, b) => Add.add(a, b));
      } else if (sourceResult.every((e) => e is FhirInteger64)) {
        return sourceResult
            .cast<FhirInteger64>()
            .reduce((a, b) => Add.add(a, b));
      } else if (sourceResult.every((e) => e is ValidatedQuantity)) {
        return sourceResult
            .cast<ValidatedQuantity>()
            .reduce((a, b) => Add.add(a, b));
      } else {
        throw ArgumentError('Sum operator can only be applied to a List of '
            'int, double, Decimal, or Quantity, but found ${sourceResult.first.runtimeType}');
      }
    } else {
      throw ArgumentError('Sum operator can only be applied to a List, '
          'but found ${sourceResult.runtimeType}');
    }
  }

  @override
  String toString() => 'Sum { source: $source }';
}
