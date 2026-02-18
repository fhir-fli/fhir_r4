import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Expression that references a previously defined NamedExpression.
class ExpressionRef extends Ref {
  ExpressionRef({
    required super.name,
    super.libraryName,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ExpressionRef.fromJson(Map<String, dynamic> json) {
    final name = json['name'];
    if (name == null) {
      throw ArgumentError("JSON name cannot be null");
    }

    return ExpressionRef(
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
  String get type => 'ExpressionRef';

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> val = {};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('name', name);
    writeNotNull('type', type);
    writeNotNull('libraryName', libraryName);
    writeNotNull('annotation', annotation?.map((e) => e.toJson()).toList());
    writeNotNull('localId', localId);
    writeNotNull('locator', locator);
    // writeNotNull('resultTypeName', resultTypeName);
    writeNotNull('resultTypeSpecifier', resultTypeSpecifier?.toJson());
    return val;
  }

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    if (context.containsKey(name)) {
      return context[name];
    }
    // Lazy evaluation: if the expression hasn't been evaluated yet,
    // find it in the library and evaluate it now.
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
    return null;
  }

  @override
  List<String> getReturnTypes(CqlLibrary library) {
    // 1) If we explicitly set a declared resultTypeName, use it.
    if (resultTypeName != null) {
      return [resultTypeName!];
    }

    // 2) If there’s a resultTypeSpecifier (e.g. for choice types), unwrap it.
    if (resultTypeSpecifier != null) {
      return resultTypeSpecifier!.getReturnTypes(library);
    }

    // 3) Otherwise, look up the named define and delegate to its expression.
    final defs = library.statements?.def;
    if (defs != null) {
      final idx = defs.indexWhere((d) => d.name == name);
      if (idx != -1) {
        return defs[idx].expression?.getReturnTypes(library) ?? [];
      }
    }

    // 4) Last‐ditch fallback
    return [];
  }
}
