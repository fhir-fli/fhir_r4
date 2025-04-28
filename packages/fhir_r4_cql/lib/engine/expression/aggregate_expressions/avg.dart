import 'package:fhir_r4/fhir_r4.dart';
import 'package:ucum/ucum.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// The Avg operator returns the average of the non-null elements in source.
/// If a path is specified, elements with no value for the property specified
/// by the path are ignored.
/// If the source contains no non-null elements, null is returned.
/// If the source is null, the result is null.
/// Signature:
///
/// Avg(argument List<Decimal>) Decimal
/// Avg(argument List<Quantity>) Quantity
/// Description:
///
/// The Avg operator returns the average of the non-null elements in the source.
///
/// If the source contains no non-null elements, null is returned.
///
/// If the source is null, the result is null.
///
/// The following examples illustrate the behavior of the Avg operator:
///
/// define "DecimalAvg": Avg({ 5.5, 4.7, 4.8 }) // 5.0
/// define "QuantityAvg": Avg({ 5.5 'cm', 4.7 'cm', 4.8 'cm' }) // 5.0 'cm'
/// define "AvgIsNull": Avg(null as List<Decimal>)
class Avg extends AggregateExpression {
  Avg({
    required super.source,
    super.signature,
    super.path,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Avg.fromJson(Map<String, dynamic> json) => Avg(
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
      json['signature'] = signature!.map((s) => s.toJson()).toList();
    }

    if (path != null) {
      json['path'] = path;
    }

    if (annotation != null) {
      json['annotation'] = annotation!.map((a) => a.toJson()).toList();
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
  String get type => 'Avg';

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    final sourceResult = await source.execute(context);
    return avg(sourceResult);
  }

  static dynamic avg(dynamic sourceResult) {
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
      if (sourceResult.every((element) => element is FhirNumber)) {
        sourceResult =
            sourceResult.map((e) => FhirDecimal(e.valueNum!)).toList();
        final sum = sourceResult.fold(FhirDecimal(0),
            (FhirDecimal previousValue, dynamic element) {
          return FhirDecimal(
              previousValue.valueNum! + (element as FhirDecimal).valueNum!);
        });
        return sum.valueNum == null
            ? null
            : FhirDecimal(sum.valueNum! / sourceResult.length);
      } else if (sourceResult
          .every((element) => element is ValidatedQuantity)) {
        ValidatedQuantity? sum;
        for (final quantity in sourceResult) {
          if (sum == null) {
            sum = quantity;
            continue;
          } else {
            sum = sum + quantity;
          }
        }
        return sum == null
            ? null
            : ValidatedQuantity(
                value: (sum.value / UcumDecimal.fromNum(sourceResult.length)),
                unit: sum.unit);
      }
    }
    throw ArgumentError(
        'Invalid source type for Avg: ${sourceResult.runtimeType}');
  }

  @override
  List<String> getReturnTypes(CqlLibrary library) {
    if (source is ListExpression) {
      final elementTypes = source.getReturnTypes(library).toSet();

      if (elementTypes.isEmpty) {
        throw ArgumentError('Source must have at least one valid type.');
      }

      elementTypes
        ..remove('FhirInteger')
        ..remove('FhirDecimal')
        ..remove('FhirNumber')
        ..remove('num')
        ..remove('int')
        ..remove('double')
        ..remove('FhirInteger64')
        ..remove('BigInt')
        ..remove('Null')
        ..remove('null');

      if (elementTypes.isEmpty) {
        return ['FhirDecimal'];
      }

      if (elementTypes.length == 1 &&
          elementTypes.contains('ValidatedQuantity')) {
        return ['ValidatedQuantity'];
      }

      throw ArgumentError('Invalid source type for Avg: $elementTypes');
    }
    return ['Unknown'];
  }

  @override
  String toString() => 'Avg { source: $source }';
}
