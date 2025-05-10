import 'package:fhir_r4/fhir_r4.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// The IndexOf operator returns the 0-based index of the given element in the
/// given source list.
/// The operator uses equality semantics as defined in the Equal operator to
/// determine the index.
/// If the list is empty or no element is found, the result is -1.
/// If either argument is null, the result is null.
/// Signature:
///
/// IndexOf(argument List<T>, element T) Integer
/// Description:
///
/// The IndexOf operator returns the 0-based index of the given element in the
/// given source list using equality semantics.
///
/// If the list is empty, or no element is found, the result is -1.
///
/// If either argument is null, the result is null.
///
/// The following examples illustrate the behavior of the IndexOf operator:
///
/// define "IndexOfFound": IndexOf({ 1, 3, 5, 7 }, 5) // 2
/// define "IndexOfNotFound": IndexOf({ 1, 3, 5, 7 }, 4) // -1
/// define "IndexOfIsNull": IndexOf(null, 4)
class IndexOf extends OperatorExpression {
  final CqlExpression element;
  final CqlExpression source;

  IndexOf({
    required this.source,
    required this.element,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory IndexOf.fromJson(Map<String, dynamic> json) => IndexOf(
        source: CqlExpression.fromJson(json['source']!),
        element: CqlExpression.fromJson(json['element']!),
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
    final data = <String, dynamic>{
      'type': type,
      'source': source.toJson(),
      'element': element.toJson(),
    };

    if (annotation != null) {
      data['annotation'] = annotation!.map((e) => e.toJson()).toList();
    }

    if (localId != null) {
      data['localId'] = localId;
    }

    if (locator != null) {
      data['locator'] = locator;
    }

    if (resultTypeName != null) {
      data['resultTypeName'] = resultTypeName;
    }

    if (resultTypeSpecifier != null) {
      data['resultTypeSpecifier'] = resultTypeSpecifier!.toJson();
    }

    return data;
  }

  @override
  String get type => 'IndexOf';

  @override
  List<String> getReturnTypes(CqlLibrary library) => ['Integer'];

  @override
  Future<FhirInteger?> execute(Map<String, dynamic> context) async {
    final left = await source.execute(context);
    final right = await element.execute(context);
    return indexOf(left, right);
  }

  static FhirInteger? indexOf(dynamic left, dynamic right) {
    if (left == null || right == null) {
      return null;
    }

    if (left is List) {
      return FhirInteger(left.indexOf(right));
    }

    return null;
  }
}
