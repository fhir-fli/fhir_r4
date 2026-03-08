import 'dart:math' as math;

import 'package:fhir_r4/fhir_r4.dart';
import 'package:ucum/ucum.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// The PopulationStdDev operator returns the statistical standard deviation of
/// the elements in source.
/// If a path is specified, elements with no value for the property specified
/// by the path are ignored.
/// If the source contains no non-null elements, null is returned.
/// If the source is null, the result is null.
/// Signature:
///
/// PopulationStdDev(argument `List<Decimal>`) Decimal
/// PopulationStdDev(argument `List<Quantity>`) Quantity
/// Description:
///
/// The PopulationStdDev operator returns the statistical standard deviation of
/// the elements in source.
///
/// If the source contains no non-null elements, null is returned.
///
/// If the source is null, the result is null.
///
/// The following examples illustrate the behavior of the PopulationStdDev
/// operator:
///
/// define "DecimalPopulationStdDev": PopulationStdDev({ 1.0, 2.0, 3.0, 4.0, 5.0 }) // 1.4142135623730951
/// define "QuantityPopulationStdDev": PopulationStdDev({ 1.0 'mg', 2.0 'mg', 3.0 'mg', 4.0 'mg', 5.0 'mg' }) // 1.4142135623730951 'mg'
/// define "PopulationStdDevIsNull": PopulationStdDev({ null as Quantity, null as Quantity, null as Quantity })
/// define "PopulationStdDevIsAlsoNull": PopulationStdDev(null as `List<Decimal>`)
class PopulationStdDev extends AggregateExpression {
  PopulationStdDev({
    required super.source,
    super.signature,
    super.path,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory PopulationStdDev.fromJson(Map<String, dynamic> json) =>
      PopulationStdDev(
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
  String get type => 'PopulationStdDev';

  @override
  List<String> getReturnTypes(CqlLibrary library) {
    final returnTypes = source.getReturnTypes(library);
    if (returnTypes.isEmpty) {
      return [];
    } else if (returnTypes.contains('Quantity')) {
      return ['Quantity'];
    } else {
      return ['Decimal'];
    }
  }

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    final sourceResult = await source.execute(context);
    return populationStdDev(sourceResult);
  }

  static dynamic populationStdDev(dynamic sourceResult) {
    if (sourceResult == null || sourceResult is! List || sourceResult.isEmpty) {
      return null;
    }
    final filtered = List.from(sourceResult)..removeWhere((e) => e == null);
    if (filtered.isEmpty) return null;

    final mean = Avg.avg(List.from(filtered));
    if (mean == null) return null;

    /// For FhirDecimal — use PopulationVariance, then sqrt
    if (mean is FhirDecimal) {
      var popVarianceResult =
          PopulationVariance.populationVariance(sourceResult);
      if (popVarianceResult == null) return null;
      if (popVarianceResult is FhirDecimal) {
        double stdDevValue = math.sqrt(popVarianceResult.valueNum!);
        return FhirDecimal(stdDevValue.toStringAsFixed(8));
      }
    }

    /// For ValidatedQuantity — compute numeric population variance in the
    /// mean's unit, then sqrt, keeping the original unit.
    else if (mean is ValidatedQuantity) {
      final svc = UcumService();
      final meanUnit = mean.unit;
      double sumOfSquaredDiffs = 0.0;
      for (final val in filtered) {
        if (val is! ValidatedQuantity) continue;
        final converted = val.unit == meanUnit
            ? val
            : ValidatedQuantity(
                value: svc.convert(val.value, val.unit, meanUnit),
                unit: meanUnit);
        final diff = converted - mean;
        if (diff != null) {
          final d = double.tryParse(diff.value.asUcumDecimal()) ?? 0.0;
          sumOfSquaredDiffs += d * d;
        }
      }
      final variance = sumOfSquaredDiffs / filtered.length; // N not N-1
      // Truncate to 8 decimal places to match CQF reference precision
      final truncated = math.sqrt(variance).toStringAsFixed(8);
      final stdDevValue = UcumDecimal.fromString(truncated);
      return ValidatedQuantity(value: stdDevValue, unit: mean.unit);
    }

    throw ArgumentError(
        'Unsupported type for Population Standard Deviation: ${sourceResult.runtimeType}');
  }

  @override
  String toString() => 'PopulationStdDev { source: $source }';
}
