import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Tail
///
/// The Tail operator returns all but the first element of a list.
/// If the source list is null, the result is null.
///
/// Signature:
///   Tail(argument List<T>) List<T>
///
/// Description:
///   The Tail operator returns the elements in the list starting at index 1
///   through the end. If the list has fewer than 1 element, the result is
///   an empty list.
///
/// Examples:
///   define "TailNonEmpty": Tail({1,2,3,4}) // {2,3,4}
///   define "TailEmpty":    Tail({})          // {}
///   define "TailNull":     Tail(null)        // null
class Tail extends UnaryExpression {
  Tail({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Tail.fromJson(Map<String, dynamic> json) => Tail(
        operand: CqlExpression.fromJson(json['operand']!),
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
  String get type => 'Tail';

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'type': type,
      'operand': operand.toJson(),
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
  List<String> getReturnTypes(CqlLibrary library) {
    final returnType = operand.getReturnTypes(library).toSet();
    if (returnType.length == 1) {
      return ['List<${returnType.first}>'];
    }
    return ['List'];
  }

  @override
  Future<List<dynamic>?> execute(Map<String, dynamic> context) async {
    final src = await operand.execute(context);
    if (src == null) {
      return null;
    }
    if (src is! List) {
      throw CqlException(
        message:
            'Tail operator requires a list as operand, but got ${src.runtimeType}',
      );
    }
    if (src.isEmpty) {
      return [];
    }
    // Delegate to central Slice implementation: skip first element
    return Slice.slice(src, 1, null);
  }
}
