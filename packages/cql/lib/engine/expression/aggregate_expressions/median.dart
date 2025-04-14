import 'package:fhir_r4/fhir_r4.dart';
import 'package:ucum/ucum.dart';

import '../../../cql.dart';

/// The Median operator returns the median of the elements in source.
/// If a path is specified, elements with no value for the property specified
/// by the path are ignored.
/// If the source contains no non-null elements, null is returned.
/// If the source is null, the result is null.
/// Signature:
///
/// Median(argument List<Decimal>) Decimal
/// Median(argument List<Quantity>) Quantity
/// Description:
///
/// The Median operator returns the median of the elements in source.
///
/// If the source contains no non-null elements, null is returned.
///
/// If the source is null, the result is null.
///
/// The following examples illustrate the behavior of the Median operator:
///
/// define "DecimalMedian": Median({ 2.0, 4.0, 8.0, 6.0 }) // 5.0
/// define "QuantityMedian": Median({ 1.0 'mg', 2.0 'mg', 3.0 'mg' }) // 2.0 'mg'
/// define "MedianIsNull": Median({ null as Quantity, null as Quantity, null as Quantity })
/// define "MedianIsAlsoNull": Median(null as List<Decimal>)
class Median extends AggregateExpression {
  Median({
    required super.source,
    super.signature,
    super.path,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Median.fromJson(Map<String, dynamic> json) => Median(
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
  String get type => 'Median';

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    final sourceResult = await source.execute(context);
    return median(sourceResult);
  }

  static dynamic median(dynamic sourceResult) {
    if (sourceResult == null) {
      return null;
    }
    if (sourceResult is List) {
      if (sourceResult.isEmpty) {
        return null;
      }
      sourceResult.removeWhere((element) => element == null);
      if (sourceResult.isEmpty) {
        return null;
      }

      // Handle FhirNumber or FhirDecimal
      if (sourceResult.every((element) => element is FhirNumber)) {
        var decimals = sourceResult.map((e) => FhirDecimal(e.valueNum!)).toList();
        decimals.sort((a, b) => a.valueNum!.compareTo(
            b.valueNum!)); // Ensure FhirDecimal has a comparable implementation

        int middleIndex = decimals.length ~/ 2;
        if (decimals.length % 2 == 1) {
          return decimals[
              middleIndex]; // return the middle element for odd length
        } else {
          // Average the two middle elements for even length
          return FhirDecimal((decimals[middleIndex - 1].valueNum! +
                  decimals[middleIndex].valueNum!) /
              2);
        }
      }
      // Handle ValidatedQuantity
      else if (sourceResult.every((element) => element is ValidatedQuantity)) {
        sourceResult.sort((a, b) => a.compareTo(
            b)); // Ensure ValidatedQuantity can be compared based on value

        int middleIndex = sourceResult.length ~/ 2;
        if (sourceResult.length % 2 == 1) {
          return sourceResult[
              middleIndex]; // return the middle element for odd length
        } else {
          // Calculate the average of the two middle quantities
          var sum = sourceResult[middleIndex - 1] + sourceResult[middleIndex];
          return ValidatedQuantity(
              value: sum.value / UcumDecimal.fromNum(2), unit: sum.unit);
        }
      }
    }
    throw ArgumentError(
        'Invalid source type for Median: ${sourceResult.runtimeType}');
  }

  @override
  String toString() => 'Median: $source';
}
