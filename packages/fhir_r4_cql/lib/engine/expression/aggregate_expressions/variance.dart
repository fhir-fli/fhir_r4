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

    var mean = Avg.avg(sourceResult);

    // For FhirDecimal
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
      var variance = sumOfSquaredDiffs.valueNum! / sourceResult.length;
      return FhirDecimal(variance);
    }

    // For ValidatedQuantity
    else if (mean is ValidatedQuantity) {
      UcumDecimal? sumOfSquaredValues;
      for (final val in sourceResult as List<dynamic>) {
        ValidatedQuantity? diffValue = val - mean;
        if (diffValue != null) {
          UcumDecimal squaredDiffValue = diffValue.value * diffValue.value;
          if (sumOfSquaredValues == null) {
            sumOfSquaredValues = squaredDiffValue;
          } else {
            sumOfSquaredValues = sumOfSquaredValues.add(squaredDiffValue);
          }
        }
      }
      if (sumOfSquaredValues != null) {
        var varianceValue =
            sumOfSquaredValues / UcumDecimal.fromNum(sourceResult.length);
        return ValidatedQuantity(value: varianceValue, unit: mean.unit);
      }
    }

    throw ArgumentError(
        'Unsupported type for Variance: ${sourceResult.runtimeType}');
  }

  @override
  String toString() => 'Variance { source: $source }';
}
