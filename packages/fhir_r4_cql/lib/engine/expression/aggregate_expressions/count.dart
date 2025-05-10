import 'package:fhir_r4/fhir_r4.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// The Count operator returns the number of non-null elements in the source.
/// If a path is specified, the count returns the number of elements that have
/// a value for the property specified by the path.
/// If the list is empty, the result is 0.
/// If the list is null, the result is 0.
/// Signature:
///
/// Count(argument List<T>) Integer
/// Description:
///
/// The Count operator returns the number of non-null elements in the source.
/// If the list contains no non-null elements, the result is 0. If the list is
/// null, the result is 0.
///
/// The following examples illustrate the behavior of the Count operator:
///
/// define "Count5": Count({ 1, 2, 3, 4, 5 }) // 5
/// define "Count0": Count({ null, null, null }) // 0
/// define "CountNull0": Count(null as List<Decimal>) // 0
class Count extends AggregateExpression {
  Count({
    required super.source,
    super.signature,
    super.path,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Count.fromJson(Map<String, dynamic> json) => Count(
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
  String get type => 'Count';

  @override
  List<String> getReturnTypes(CqlLibrary library) => ['Integer'];

  @override
  Future<FhirInteger> execute(Map<String, dynamic> context) async {
    final sourceResult = await source.execute(context);
    return count(sourceResult);
  }

  static FhirInteger count(dynamic sourceResult) {
    if (sourceResult == null) {
      return FhirInteger(0);
    } else if (sourceResult is List) {
      return FhirInteger(sourceResult.where((e) => e != null).length);
    } else {
      throw ArgumentError('Count operator can only be applied to a List, '
          'but found ${sourceResult.runtimeType}');
    }
  }

  @override
  String toString() => 'Count: $source';
}
