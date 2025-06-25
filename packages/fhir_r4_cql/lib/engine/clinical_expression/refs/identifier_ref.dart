import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Expression that references an unresolved or resolved identifier.
class IdentifierRef extends Ref {
  IdentifierRef({
    required super.name,
    super.libraryName,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory IdentifierRef.fromJson(Map<String, dynamic> json) {
    final name = json['name'];
    if (name == null) {
      throw ArgumentError("JSON name cannot be null");
    }

    return IdentifierRef(
      name: name,
      libraryName: json['libraryName'],
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
  String get type => 'IdentifierRef';

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> val = super.toJson();
    return val;
  }
}
