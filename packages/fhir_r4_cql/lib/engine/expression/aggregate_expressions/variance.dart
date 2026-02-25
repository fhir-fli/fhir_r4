import 'package:fhir_r4/fhir_r4.dart';
import 'package:ucum/ucum.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// The Variance operator returns the statistical variance of the elements in
/// source.
/// If a path is specified, elements with no value for the property specified
/// by the path are ignored.
/// If the source contains no non-null elements, null is returned.
/// If the source is null, the result is null.
/// Signature:
///
/// Variance(argument List<Decimal>) Decimal
/// Variance(argument List<Quantity>) Quantity
/// Description:
///
/// The Variance operator returns the statistical variance of the elements in source.
///
/// If the source contains no non-null elements, null is returned.
///
/// If the source is null, the result is null.
///
/// The following examples illustrate the behavior of the Variance operator:
///
/// define "DecimalVariance": Variance({ 1.0, 2.0, 3.0, 4.0, 5.0 }) // 2.5
/// define "QuantityVariance": Variance({ 1.0 'mg', 2.0 'mg', 3.0 'mg', 4.0 'mg', 5.0 'mg' }) // 2.5 'mg'
/// define "VarianceIsNull": Variance({ null as Quantity, null as Quantity, null as Quantity })
/// define "VarianceIsAlsoNull": Variance(null as List<Decimal>)
class Variance extends AggregateExpression {
  Variance({
    required super.source,
    super.signature,
    super.path,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Variance.fromJson(Map<String, dynamic> json) => Variance(
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
  String get type => 'Variance';

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
    return variance(sourceResult);
  }

  static dynamic variance(dynamic sourceResult) {
    if (sourceResult == null || sourceResult.isEmpty) {
      return null;
    }
    sourceResult.removeWhere((element) => element == null);
    if (sourceResult.isEmpty) {
      return null;
    }

    // Sample variance requires at least 2 values (denominator is N-1)
    if (sourceResult.length < 2) {
      return null;
    }

    var mean = Avg.avg(sourceResult);

    // For FhirDecimal — sample variance uses (N-1) denominator
    if (mean is FhirDecimal) {
      FhirDecimal sumOfSquaredDiffs = FhirDecimal(0.0);
      for (final val in sourceResult as List<dynamic>) {
        if (val is FhirNumber) {
          var diff = FhirDecimal(val.valueNum! - mean.valueNum!);
          var squaredDiff = FhirDecimal(diff.valueNum! * diff.valueNum!);
          sumOfSquaredDiffs =
              FhirDecimal(sumOfSquaredDiffs.valueNum! + squaredDiff.valueNum!);
        }
      }
      var variance =
          sumOfSquaredDiffs.valueNum! / (sourceResult.length - 1);
      return FhirDecimal(variance);
    }

    // For ValidatedQuantity — sample variance uses (N-1) denominator.
    // Converts all values to the mean's unit first, then uses UCUM quantity
    // multiplication for squaring (which canonicalizes units, e.g., ml² → m⁶).
    else if (mean is ValidatedQuantity) {
      final svc = UcumService();
      final meanUnit = mean.unit;
      ValidatedQuantity? sumOfSquaredValues;
      for (final val in sourceResult as List<dynamic>) {
        if (val is! ValidatedQuantity) continue;
        // Convert to mean's unit to avoid cross-unit subtraction bugs
        final converted = val.unit == meanUnit
            ? val
            : ValidatedQuantity(
                value: svc.convert(val.value, val.unit, meanUnit),
                unit: meanUnit);
        ValidatedQuantity? diffValue = converted - mean;
        if (diffValue != null) {
          ValidatedQuantity squaredDiff = diffValue * diffValue;
          sumOfSquaredValues = sumOfSquaredValues == null
              ? squaredDiff
              : sumOfSquaredValues + squaredDiff;
        }
      }
      if (sumOfSquaredValues != null) {
        final sum = UcumDecimal.fromString(
            sumOfSquaredValues.value.asUcumDecimal());
        var varianceValue =
            sum / UcumDecimal.fromNum(sourceResult.length - 1);
        // Truncate to 8 decimal places to match CQF reference precision
        final truncated = double.tryParse(varianceValue.asUcumDecimal());
        if (truncated != null) {
          varianceValue = UcumDecimal.fromString(
              truncated.toStringAsFixed(8));
        }
        return ValidatedQuantity(
            value: varianceValue, unit: sumOfSquaredValues.unit);
      }
    }

    throw ArgumentError(
        'Unsupported type for Variance: ${sourceResult.runtimeType}');
  }

  @override
  String toString() => 'Variance { source: $source }';
}
