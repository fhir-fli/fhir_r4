import 'package:collection/collection.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Expression that references a previously defined NamedExpression.
class ExpressionRef extends Ref {
  /// Guard against infinite recursion in [getReturnTypes].
  static final Set<String> _resolvingTypes = {};
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
    // Cross-library resolution: if libraryName is set, resolve from included lib
    if (libraryName != null) {
      final cacheKey = '$libraryName.$name';
      if (context.containsKey(cacheKey)) {
        return context[cacheKey];
      }
      final library = context['library'];
      if (library is CqlLibrary) {
        final includedLib = await library.resolveIncludedLibrary(libraryName!);
        if (includedLib != null) {
          final def = includedLib.statements?.def
              .firstWhereOrNull((d) => d.name == name);
          if (def != null) {
            final savedLibrary = context['library'];
            context['library'] = includedLib;
            final result = await def.expression?.execute(context);
            context['library'] = savedLibrary;
            context[cacheKey] = result;
            return result;
          }
          // Check valueset definitions
          final vsDef = includedLib.valueSets?.def
              .firstWhereOrNull((d) => d.name == name);
          if (vsDef != null) {
            final result = CqlValueSet.fromValueSetDef(vsDef);
            context[cacheKey] = result;
            return result;
          }
          // Check code definitions
          try {
            final codeDef = includedLib.resolveCodeRef(name);
            if (codeDef != null) {
              context[cacheKey] = codeDef;
              return codeDef;
            }
          } catch (_) {}
        }
      }
      return null;
    }

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
    //    Use a recursion guard to avoid infinite loops when defines reference
    //    each other (e.g., Case items referencing other defines).
    if (_resolvingTypes.contains(name)) return [];
    _resolvingTypes.add(name);
    try {
      final defs = library.statements?.def;
      if (defs != null) {
        final idx = defs.indexWhere((d) => d.name == name);
        if (idx != -1) {
          return defs[idx].expression?.getReturnTypes(library) ?? [];
        }
      }
    } finally {
      _resolvingTypes.remove(name);
    }

    // 4) Last‐ditch fallback
    return [];
  }
}
