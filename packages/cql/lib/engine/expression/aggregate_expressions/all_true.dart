import 'package:fhir_r4/fhir_r4.dart';

import '../../../cql.dart';

/// The AllTrue operator returns true if all the non-null elements in source
/// are true.
/// If a path is specified, elements with no value for the property specified
/// by the path are ignored.
/// If the source contains no non-null elements, true is returned.
/// If the source is null, the result is true.
/// Signature:
///
/// AllTrue(argument List<Boolean>) Boolean
/// Description:
///
/// The AllTrue operator returns true if all the non-null elements in the source
/// are true.
///
/// If the source contains no non-null elements, true is returned.
///
/// If the source is null, the result is true.
///
/// The following examples illustrate the behavior of the AllTrue operator:
///
/// define "AllTrueIsTrue": AllTrue({ true, null, true })
/// define "AllTrueIsAlsoTrue": AllTrue({ null, null, null })
/// define "AllTrueIsTrueWhenNull": AllTrue(null)
/// define "AllTrueIsFalse": AllTrue({ true, false, null })
class AllTrue extends AggregateExpression {
  AllTrue({
    required super.source,
    super.signature,
    super.path,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory AllTrue.fromJson(Map<String, dynamic> json) => AllTrue(
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
  String get type => 'AllTrue';

  @override
  List<String> getReturnTypes(CqlLibrary library) => const ['FhirBoolean'];

  @override
  FhirBoolean execute(Map<String, dynamic> context) {
    final sourceResult = source.execute(context);
    return allTrue(sourceResult);
  }

  FhirBoolean allTrue(dynamic sourceResult) {
    if (sourceResult == null) {
      return FhirBoolean(true);
    } else if (sourceResult is List) {
      for (final element in sourceResult) {
        if (element != null &&
            ((element is FhirBoolean && !(element.value ?? true)) ||
                (element is bool && !element))) {
          return FhirBoolean(false);
        }
      }
      return FhirBoolean(true);
    }
    throw ArgumentError('AllTrue operator failed to execute');
  }

  @override
  String toString() => 'AllTrue: $source';
}
