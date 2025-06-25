import 'package:fhir_r4/fhir_r4.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// The AnyTrue operator returns true if any non-null element in source is true.
/// If a path is specified, elements with no value for the property specified
/// by the path are ignored.
/// If the source contains no non-null elements, false is returned.
/// If the source is null, the result is false.
class AnyTrue extends AggregateExpression {
  AnyTrue({
    required super.source,
    super.signature,
    super.path,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory AnyTrue.fromJson(Map<String, dynamic> json) => AnyTrue(
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
  String get type => 'AnyTrue';

  @override
  Future<FhirBoolean> execute(Map<String, dynamic> context) async {
    final sourceResult = await source.execute(context);
    return anyTrue(sourceResult);
  }

  FhirBoolean anyTrue(dynamic sourceResult) {
    if (sourceResult == null) {
      return FhirBoolean(false);
    } else if (sourceResult is List) {
      for (final element in sourceResult) {
        if ((element is FhirBoolean && (element.valueBoolean ?? true)) ||
            (element is bool && element == true)) {
          return FhirBoolean(true);
        }
      }
      return FhirBoolean(false);
    }
    throw ArgumentError('AllTrue operator failed to execute');
  }

  @override
  String toString() => 'AnyTrue: $source';
}
