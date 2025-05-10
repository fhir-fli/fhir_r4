import 'package:fhir_r4/fhir_r4.dart';
import 'package:ucum/ucum.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// The PopulationVariance operator returns the statistical population variance of the elements in source.
/// If a path is specified, elements with no value for the property specified by the path are ignored.
/// If the source contains no non-null elements, null is returned.
/// If the source is null, the result is null.
class PopulationVariance extends AggregateExpression {
  PopulationVariance({
    required super.source,
    super.signature,
    super.path,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory PopulationVariance.fromJson(Map<String, dynamic> json) =>
      PopulationVariance(
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
  String get type => 'PopulationVariance';

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
    return populationVariance(sourceResult);
  }

  static dynamic populationVariance(dynamic sourceResult) {
    if (sourceResult == null || sourceResult is! List || sourceResult.isEmpty) {
      return null;
    }
    sourceResult.removeWhere((element) => element == null);
    if (sourceResult.isEmpty) {
      return null;
    }

    var mean = Avg.avg(sourceResult);

    if (mean is FhirDecimal) {
      FhirDecimal sumOfSquaredDiffs = FhirDecimal(0.0);
      for (final val in sourceResult) {
        var diff = FhirDecimal((val as FhirNumber).valueNum! - mean.valueNum!);
        var squaredDiff = FhirDecimal(diff.valueNum! * diff.valueNum!);
        sumOfSquaredDiffs =
            FhirDecimal(sumOfSquaredDiffs.valueNum! + squaredDiff.valueNum!);
      }
      var variance =
          sumOfSquaredDiffs.valueNum! / sourceResult.length; // N instead of N-1
      return FhirDecimal(variance.toStringAsFixed(8));
    } else if (mean is ValidatedQuantity) {
      UcumDecimal? sumOfSquaredValues;
      for (final val in sourceResult) {
        ValidatedQuantity? diffValue = val - mean;
        if (diffValue != null) {
          UcumDecimal squaredDiffValue = diffValue.value * diffValue.value;
          sumOfSquaredValues = sumOfSquaredValues == null
              ? squaredDiffValue
              : sumOfSquaredValues.add(squaredDiffValue);
        }
      }
      if (sumOfSquaredValues != null) {
        var varianceValue = sumOfSquaredValues /
            UcumDecimal.fromNum(sourceResult.length); // N instead of N-1
        return ValidatedQuantity(value: varianceValue, unit: mean.unit);
      }
    }

    throw ArgumentError(
        'Unsupported type for Population Variance: ${sourceResult.runtimeType}');
  }

  @override
  String toString() => 'PopulationVariance { source: $source }';
}
