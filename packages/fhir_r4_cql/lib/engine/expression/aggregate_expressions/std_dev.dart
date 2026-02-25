import 'dart:math' as math;

import 'package:fhir_r4/fhir_r4.dart';
import 'package:ucum/ucum.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// The StdDev operator returns the statistical standard deviation of the
/// elements in source.
/// If a path is specified, elements with no value for the property specified
/// by the path are ignored.
/// If the source contains no non-null elements, null is returned.
/// If the list is null, the result is null.
/// Signature:
///
/// StdDev(argument List<Decimal>) Decimal
/// StdDev(argument List<Quantity>) Quantity
/// Description:
///
/// The StdDev operator returns the statistical standard deviation of the
/// elements in source.
///
/// If the source contains no non-null elements, null is returned.
///
/// If the list is null, the result is null.
///
/// The following examples illustrate the behavior of the StdDev operator:
///
/// define "DecimalStdDev": StdDev({ 1.0, 2.0, 3.0, 4.0, 5.0 }) // 1.58113883
/// define "QuantityStdDev": StdDev({ 1.0 'mg', 2.0 'mg', 3.0 'mg', 4.0 'mg', 5.0 'mg' }) // 1.58113883 'mg'
/// define "StdDevIsNull": StdDev({ null as Quantity, null as Quantity, null as Quantity })
/// define "StdDevIsAlsoNull": StdDev(null as List<Decimal>)
class StdDev extends AggregateExpression {
  StdDev({
    required super.source,
    super.signature,
    super.path,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory StdDev.fromJson(Map<String, dynamic> json) => StdDev(
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
  String get type => 'StdDev';

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
    final result = stddev(sourceResult);

    return result;
  }

  static dynamic stddev(dynamic sourceResult) {
    if (sourceResult == null || sourceResult is! List || sourceResult.isEmpty) {
      return null;
    }
    final filtered = List.from(sourceResult)
      ..removeWhere((e) => e == null);
    if (filtered.length < 2) return null;

    final mean = Avg.avg(List.from(filtered));
    if (mean == null) return null;

    /// For FhirDecimal — use Variance, then sqrt
    if (mean is FhirDecimal) {
      var varianceResult = Variance.variance(sourceResult);
      if (varianceResult == null) return null;
      if (varianceResult is FhirDecimal) {
        double stdDevValue = math.sqrt(varianceResult.valueNum!);
        return FhirDecimal(stdDevValue.toStringAsFixed(8));
      }
    }

    /// For ValidatedQuantity — compute numeric variance in the mean's unit,
    /// then sqrt, keeping the original unit. This avoids UCUM unit
    /// canonicalization that Variance uses (which changes units, e.g., ml² → m⁶
    /// and scales values to near-zero).
    else if (mean is ValidatedQuantity) {
      final svc = UcumService();
      final meanUnit = mean.unit;
      double sumOfSquaredDiffs = 0.0;
      for (final val in filtered) {
        if (val is! ValidatedQuantity) continue;
        // Convert to mean's unit to avoid cross-unit subtraction bugs
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
      final variance = sumOfSquaredDiffs / (filtered.length - 1);
      // Truncate to 8 decimal places to match CQF reference precision
      final truncated = math.sqrt(variance).toStringAsFixed(8);
      final stdDevValue = UcumDecimal.fromString(truncated);
      return ValidatedQuantity(value: stdDevValue, unit: mean.unit);
    }

    throw ArgumentError(
        'Unsupported type for Standard Deviation: ${sourceResult.runtimeType}');
  }

  @override
  String toString() => 'StdDev { source: $source }';
}
