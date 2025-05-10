import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// First operator returns the first element in a list.
/// If the order by attribute is specified, the list is sorted by that
/// ordering prior to returning the first element.
/// If the argument is null, the result is null.
/// Signature:
///
/// First(argument List<T>) T
/// Description:
///
/// The First operator returns the first element in a list. The operator is
/// equivalent to invoking the indexer with an index of 0.
///
/// If the argument is null, the result is null.
///
/// The following examples illustrate the behavior of the First operator:
///
/// define "First1": First({ 1, 2, 5 }) // 1
/// define "FirstIsNull": First(null)
class First extends OperatorExpression {
  final String? orderBy;
  final CqlExpression source;

  First({
    required this.source,
    this.orderBy,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory First.fromJson(Map<String, dynamic> json) => First(
        source: CqlExpression.fromJson(json['source']!),
        orderBy: json['orderBy'],
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
    };

    if (orderBy != null) {
      data['orderBy'] = orderBy;
    }

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
  String get type => 'First';

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
    final list = await source.execute(context);
    if (list == null) {
      return null;
    } else if (list is List) {
      if (list.isEmpty) {
        return null;
      }
      return list[0];
    } else {
      throw ArgumentError('First operator can only be applied to a list');
    }
  }
}
