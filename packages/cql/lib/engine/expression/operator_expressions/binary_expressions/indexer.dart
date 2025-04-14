import 'package:fhir_r4/fhir_r4.dart';

import '../../../../cql.dart';

/// Operator to return the indexth element in a string or list.
/// Indexes in strings and lists are defined to be 0-based.
/// If the index is less than 0 or greater than the length of the string or
/// list being indexed, the result is null.
/// If either argument is null, the result is null.
/// Signature:
///
/// [](argument String, index Integer) String
/// Description:
///
/// The indexer ([]) operator returns the character at the indexth position in
/// a string.
///
/// Indexes in strings are defined to be 0-based.
///
/// If either argument is null, the result is null.
///
/// If the index is greater than the length of the string being indexed, the
/// result is null.
///
/// The following examples illustrate the behavior of the indexer operator:
///
/// define "Indexer2": 'ABCDE'[2] // 'C'
/// define "IndexerIsNull": 'ABCDE'[14] // null
/// define "IndexerIsAlsoNull": 'ABCDE'[null] // null
class Indexer extends BinaryExpression {
  Indexer({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Indexer.fromJson(Map<String, dynamic> json) => Indexer(
        operand: List<CqlExpression>.from(
          json['operand'].map(
            (x) => CqlExpression.fromJson(x),
          ),
        ),
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
      'operand': operand.map((x) => x.toJson()).toList(),
    };
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
  String get type => 'Indexer';

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    final result = await operand[0].execute(context);
    final index = await operand[1].execute(context);
    if (result == null || index == null) {
      return null;
    }
    if (result is String && index is FhirInteger) {
      if (index < 0 || index >= result.length) {
        return null;
      }
      return result[index.valueInt!];
    }
    if (result is List && index is FhirInteger) {
      if (index < 0 || index >= result.length) {
        return null;
      }
      return result[index.valueInt!];
    }
    return null;
  }

  @override
  List<String> getReturnTypes(CqlLibrary library) {
    if (operand[0].getReturnTypes(library).contains('String') &&
        operand[1].getReturnTypes(library).contains('FhirInteger')) {
      return ['String'];
    } else if (operand[0].getReturnTypes(library).contains('List') &&
        operand[1].getReturnTypes(library).contains('FhirInteger')) {
      return ['dynamic'];
    }
    return [];
  }
}
