import 'package:fhir_r4/fhir_r4.dart';
import 'package:ucum/ucum.dart';

import '../../../cql.dart';

/// The Min operator returns the minimum element in the source.
/// Comparison semantics are defined by the comparison operators for the type
/// of the values being aggregated.
/// If a path is specified, elements with no value for the property specified
/// by the path are ignored.
/// If the source contains no non-null elements, null is returned.
/// If the source is null, the result is null.
/// Signature:
///
/// Min(argument List<Integer>) Integer
/// Min(argument List<Long>) Long
/// Min(argument List<Decimal>) Decimal
/// Min(argument List<Quantity>) Quantity
/// Min(argument List<Date>) Date
/// Min(argument List<DateTime>) DateTime
/// Min(argument List<Time>) Time
/// Min(argument List<String>) String
/// Description:
///
/// The Min operator returns the minimum element in the source. Comparison
/// semantics are defined by the Comparison Operators for the type of value
/// being aggregated.
///
/// If the source contains no non-null elements, null is returned.
///
/// If the source is null, the result is null.
///
/// The following examples illustrate the behavior of the Min operator:
///
/// define "IntegerMin": Min({ 2, 4, 8, 6 }) // 2
/// define "LongMin": Min({ 2L, 4L, 8L, 6L }) // 2L
/// define "DateMin": Min({ @2012-12-31, @2013-01-01, @2012-01-01 }) // @2012-01-01
/// define "MinIsNull": Min({ null as Quantity, null as Quantity, null as Quantity })
/// define "MinIsAlsoNull": Min(null as List<Decimal>)
class Min extends AggregateExpression {
  Min({
    required super.source,
    super.signature,
    super.path,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Min.fromJson(Map<String, dynamic> json) => Min(
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
  String get type => 'Min';

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    final sourceResult = await source.execute(context);
    return min(sourceResult);
  }

  static dynamic min(dynamic sourceResult) {
    if (sourceResult == null) {
      return null;
    }
    if (sourceResult is List) {
      if (sourceResult.isEmpty) {
        return null;
      }
      if (sourceResult.every((element) => element == null)) {
        return null;
      }
      return sourceResult.reduce((value, element) {
        if (value == null) {
          return element;
        }
        if (element == null) {
          return value;
        }
        if (value is int) {
          return value < element ? value : element;
        }
        if (value is FhirInteger) {
          return (Less.less(value, element)?.valueBoolean ?? true)
              ? value
              : element;
        }
        if (value is double) {
          return value < element ? value : element;
        }
        if (value is FhirDecimal) {
          return (Less.less(value, element)?.valueBoolean ?? true)
              ? value
              : element;
        }
        if (value is BigInt) {
          return value < element ? value : element;
        }
        if (value is FhirInteger64) {
          return (Less.less(value, element)?.valueBoolean ?? true)
              ? value
              : element;
        }
        if (value is DateTime) {
          return value.isBefore(element) ? value : element;
        }
        if (value is FhirDateTime) {
          return (Less.less(value, element)?.valueBoolean ?? true)
              ? value
              : element;
        }
        if (value is FhirDate) {
          return (Less.less(value, element)?.valueBoolean ?? true)
              ? value
              : element;
        }
        if (value is FhirTime) {
          return (Less.less(value, element)?.valueBoolean ?? true)
              ? value
              : element;
        }
        if (value is String) {
          return value.compareTo(element) < 0 ? value : element;
        }
        if (value is ValidatedQuantity) {
          return (Less.less(value, element)?.valueBoolean ?? true)
              ? value
              : element;
        }
        throw ArgumentError('Invalid type for Min: ${value.runtimeType}');
      });
    }
  }

  @override
  String toString() => 'Min: $source';
}
