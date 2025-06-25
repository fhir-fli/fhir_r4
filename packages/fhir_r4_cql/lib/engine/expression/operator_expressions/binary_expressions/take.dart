import 'package:fhir_r4/fhir_r4.dart' show FhirInteger;

import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Take<T>
///
/// The Take operator returns the first N elements of a list.
/// If the source list is null, the result is null.
///
/// Signature:
///   Take(argument List<T>, number Integer) List<T>
///
/// Description:
///   The Take operator returns the elements in the list from index 0 up to,
///   but not including, index N. If N is null, zero, or negative, the result
///   is an empty list. If the list has fewer than N elements, the result
///   contains all elements.
///
/// Examples:
///   define "Take2":        Take({1,2,3,4}, 2) // {1,2}
///   define "TakeTooMany":  Take({1,2}, 3)     // {1,2}
///   define "TakeEmpty":    Take({1,2,3,4}, null) // {}
///   define "TakeNullList": Take(null, 2)       // null
class Take extends BinaryExpression {
  Take({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Take.fromJson(Map<String, dynamic> json) => Take(
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
  String get type => 'Take';

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'type': type,
      'operand': operand.map((e) => e.toJson()).toList(),
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
  List<String> getReturnTypes(CqlLibrary library) => const ['List'];

  @override
  Future<List<dynamic>?> execute(Map<String, dynamic> context) async {
    if (operand.length != 2) {
      throw ArgumentError('Take operator requires 2 operands');
    }
    final src = await operand[0].execute(context);
    if (src == null) {
      return null;
    }
    final count = await operand[1].execute(context);
    if (count == null) {
      return [];
    }
    if (!(count is int || count is FhirInteger)) {
      throw CqlException(
        message: 'Take operator requires the second operand to be an Integer '
            'but it found ${count.runtimeType}',
      );
    }
    if (count < 0) {
      return [];
    }
    // Delegate to central Slice implementation
    return Slice.slice(src, 0, count);
  }
}
