import 'package:fhir_r4/fhir_r4.dart';

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

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    // Direct lookup in context
    if (context.containsKey(name)) {
      return context[name];
    }

    // Lazy evaluation: if the name matches a library expression definition,
    // evaluate it now (handles forward references).
    final library = context['library'];
    if (library is CqlLibrary && library.statements != null) {
      for (final def in library.statements!.def) {
        if (def.name == name) {
          final result = await def.expression?.execute(context);
          context[name] = result;
          return result;
        }
      }
    }

    // In sort/return clauses, identifiers implicitly resolve against source elements.
    // The context has aliased entries like {'O': <observation>}.
    // Try each aliased value that's a Map and see if it has the property.
    for (final entry in context.entries) {
      final val = entry.value;
      if (val is Map<String, dynamic> && val.containsKey('resourceType')) {
        if (val.containsKey(name)) {
          return val[name];
        }
      } else if (val is Resource) {
        final json = val.toJson();
        if (json.containsKey(name)) {
          return json[name];
        }
      }
    }

    return null;
  }
}
