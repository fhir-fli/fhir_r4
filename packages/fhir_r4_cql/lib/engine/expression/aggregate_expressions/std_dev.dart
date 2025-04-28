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
  Future<dynamic> execute(Map<String, dynamic> context) async {
    final sourceResult = await source.execute(context);
    return stddev(sourceResult);
  }

  static dynamic stddev(dynamic sourceResult) {
    var varianceResult = Variance.variance(sourceResult);
    if (varianceResult == null) {
      return null;
    }

    /// For FhirDecimal
    if (varianceResult is FhirDecimal) {
      double stdDevValue = math.sqrt(varianceResult.valueNum!);
      return FhirDecimal(stdDevValue);
    }

    /// For ValidatedQuantity
    else if (varianceResult is ValidatedQuantity) {
      /// Assuming UcumDecimal supports a sqrt method or using math.sqrt if
      /// UcumDecimal is a wrapper around a primitive type.
      final String varianceString = varianceResult.value.asUcumDecimal();
      final double? varianceDouble = double.tryParse(varianceString);
      if (varianceDouble != null) {
        UcumDecimal stdDevValue =
            UcumDecimal.fromNum(math.sqrt(varianceDouble));
        return ValidatedQuantity(value: stdDevValue, unit: varianceResult.unit);
      }
    }

    throw ArgumentError(
        'Unsupported type for Standard Deviation: ${varianceResult.runtimeType}');
  }

  @override
  String toString() => 'StdDev { source: $source }';
}
