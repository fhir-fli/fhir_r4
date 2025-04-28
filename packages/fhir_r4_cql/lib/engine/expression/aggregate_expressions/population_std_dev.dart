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
/// PopulationStdDev(argument List<Decimal>) Decimal
/// PopulationStdDev(argument List<Quantity>) Quantity
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
/// define "PopulationStdDevIsAlsoNull": PopulationStdDev(null as List<Decimal>)
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
  Future<dynamic> execute(Map<String, dynamic> context) async {
    final sourceResult = await source.execute(context);
    return populationStdDev(sourceResult);
  }

  static dynamic populationStdDev(dynamic sourceResult) {
    var popVarianceResult = PopulationVariance.populationVariance(sourceResult);
    if (popVarianceResult == null) {
      return null;
    }

    if (popVarianceResult is FhirDecimal) {
      double stdDevValue = math.sqrt(popVarianceResult.valueNum!);
      return FhirDecimal(stdDevValue);
    } else if (popVarianceResult is ValidatedQuantity) {
      final String varianceString = popVarianceResult.value.asUcumDecimal();
      final double? varianceDouble = double.tryParse(varianceString);
      if (varianceDouble != null) {
        UcumDecimal stdDevValue =
            UcumDecimal.fromNum(math.sqrt(varianceDouble));
        return ValidatedQuantity(
            value: stdDevValue, unit: popVarianceResult.unit);
      }
    }

    throw ArgumentError(
        'Unsupported type for Population Standard Deviation: ${popVarianceResult.runtimeType}');
  }

  @override
  String toString() => 'PopulationStdDev { source: $source }';
}
