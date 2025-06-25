import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Represents a tuple type specifier.
///
/// The [TupleTypeSpecifier] type defines the possible elements of a tuple.
class TupleTypeSpecifier extends TypeSpecifierExpression {
  /// Elements within TupleTypeSpecifier.
  List<TupleElementDefinition>? element;

  TupleTypeSpecifier({
    this.element,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory TupleTypeSpecifier.fromJson(Map<String, dynamic> json) {
    return TupleTypeSpecifier(
      element: json['element'] != null
          ? (json['element'] as List)
              .map((i) => TupleElementDefinition.fromJson(i))
              .toList()
          : null,
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
  }

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'type': type,
    };

    if (element != null) {
      data['element'] = element!.map((e) => e.toJson()).toList();
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
  String toString() => toJson().toString();

  @override
  String get type => 'TupleTypeSpecifier';
}
