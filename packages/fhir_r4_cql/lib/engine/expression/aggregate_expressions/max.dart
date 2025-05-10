import 'package:fhir_r4/fhir_r4.dart';
import 'package:ucum/ucum.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// The Max operator returns the maximum element in the source.
/// Comparison semantics are defined by the comparison operators for the type
/// of the values being aggregated.
/// If a path is specified, elements with no value for the property specified
/// by the path are ignored.
/// If the source contains no non-null elements, null is returned.
/// If the source is null, the result is null.
/// Signature:
///
/// maximum<T>() T
/// Description:
///
/// The maximum operator returns the maximum representable value for the given type.
///
/// The maximum operator is defined for the Integer, Long, Decimal, Quantity,
/// Date, DateTime, and Time types.
///
/// For Integer, maximum returns the maximum signed 32-bit integer, 231 - 1.
///
/// For Long, maximum returns the maximum signed 64-bit long, 263 - 1.
///
/// For Decimal, maximum returns the maximum representable decimal value,
/// (1028 – 1) / 108 (99999999999999999999.99999999).
///
/// For Quantity, maximum returns the maximum representable quantity, i.e. the
/// maximum representable decimal value with a default unit (1).
///
/// For Date, maximum returns the maximum representable date value, Date(9999, 12, 31).
///
/// For DateTime, maximum returns the maximum representable datetime value,
/// DateTime(9999, 12, 31, 23, 59, 59, 999).
///
/// For Time, maximum returns the maximum representable time value, Time(23, 59, 59, 999).
///
/// For any other type, attempting to invoke maximum results in an error.
///
/// Note that implementations may choose to represent the maximum DateTime
/// value using a constant offset such as UTC.
///
/// Note that if implementations support larger and/or more precise values than
/// the minimum required precision and scale for Decimal, DateTime, and Time
/// values, they will return the maximum representable decimal for the
/// implementation.
///
/// The following examples illustrate the behavior of the maximum operator:
///
/// define "IntegerMaximum": maximum Integer // 2147483647
/// define "LongMaximum": maximum Long // 9223372036854775807
/// define "DateTimeMaximum": maximum DateTime // @9999-12-31T23:59:59.999
/// define "ErrorMaximum": maximum Quantity
class Max extends AggregateExpression {
  Max({
    required super.source,
    super.signature,
    super.path,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Max.fromJson(Map<String, dynamic> json) => Max(
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
  String get type => 'Max';

  @override
  List<String> getReturnTypes(CqlLibrary library) {
    final returnTypes = source.getReturnTypes(library);
    if (returnTypes.isEmpty) {
      return [];
    }
    return [returnTypes.first];
  }

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    final sourceResult = await source.execute(context);
    return max(sourceResult);
  }

  static dynamic max(dynamic sourceResult) {
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
          return value > element ? value : element;
        }
        if (value is FhirInteger) {
          return (Greater.greater(value, element)?.valueBoolean ?? true)
              ? value
              : element;
        }
        if (value is double) {
          return value > element ? value : element;
        }
        if (value is FhirDecimal) {
          return (Greater.greater(value, element)?.valueBoolean ?? true)
              ? value
              : element;
        }
        if (value is BigInt) {
          return value > element ? value : element;
        }
        if (value is FhirInteger64) {
          return (Greater.greater(value, element)?.valueBoolean ?? true)
              ? value
              : element;
        }
        if (value is DateTime) {
          return value.isBefore(element) ? value : element;
        }
        if (value is FhirDateTime) {
          return (Greater.greater(value, element)?.valueBoolean ?? true)
              ? value
              : element;
        }
        if (value is FhirDate) {
          return (Greater.greater(value, element)?.valueBoolean ?? true)
              ? value
              : element;
        }
        if (value is FhirTime) {
          return (Greater.greater(value, element)?.valueBoolean ?? true)
              ? value
              : element;
        }
        if (value is String) {
          return value.compareTo(element) > 0 ? value : element;
        }
        if (value is ValidatedQuantity) {
          return (Greater.greater(value, element)?.valueBoolean ?? true)
              ? value
              : element;
        }
        throw ArgumentError('Invalid type for Min: ${value.runtimeType}');
      });
    }
  }

  @override
  String toString() => 'Max { source: $source }';
}
