import 'package:fhir_r4/fhir_r4.dart' show FhirInteger;

import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// Skip<T>
///
/// The Skip operator returns the elements in a list, skipping the first N elements.
/// If the source list is null, the result is null.
///
/// Signature:
///   Skip(argument List<T>, number Integer) List<T>
///
/// Description:
///   The Skip operator returns the elements in the list starting at index N
///   through the end. If N is null, the result is the entire list.
///   If N is less than zero, the result is an empty list.
///
/// Examples:
///   define "Skip2":     Skip({1,2,3,4,5}, 2) // {3,4,5}
///   define "SkipNull":   Skip({1,3,5}, null)   // {1,3,5}
///   define "SkipNegative": Skip({1,3,5}, -1)  // {}
///   define "SkipNullList": Skip(null, 2)      // null
class Skip extends BinaryExpression {
  Skip({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Skip.fromJson(Map<String, dynamic> json) => Skip(
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
  String get type => 'Skip';

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
      throw ArgumentError('Skip operator requires 2 operands');
    }
    final src = await operand[0].execute(context);
    if (src == null) {
      return null;
    }
    final count = await operand[1].execute(context);
    if (count == null) {
      return src;
    }
    if (!(count is int || count is FhirInteger)) {
      throw CqlException(
        message: 'Skip operator requires a list and an integer as operands',
      );
    }
    if(count < 0) {
      return [];
    }
    // Delegate to central Slice implementation
    return Slice.slice(src, count, null);
  }
}
