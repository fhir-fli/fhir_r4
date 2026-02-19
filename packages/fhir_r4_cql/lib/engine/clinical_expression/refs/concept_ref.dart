import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// The ConceptRef expression allows a previously defined concept to be
/// referenced within an expression.
class ConceptRef extends Ref {
  ConceptRef({
    required super.name,
    super.libraryName,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ConceptRef.fromJson(Map<String, dynamic> json) {
    final name = json['name'];
    if (name == null) {
      throw ArgumentError("JSON name cannot be null");
    }

    return ConceptRef(
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
  String get type => 'ConceptRef';

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> val = super.toJson();
    return val;
  }

  @override
  List<String> getReturnTypes(CqlLibrary library) {
    if (resultTypeName != null) {
      return [resultTypeName!];
    }
    if (resultTypeSpecifier != null) {
      // unwrap the specifier into a list of type names
      return resultTypeSpecifier!.getReturnTypes(library);
    }
    return ['CodeableConcept'];
  }

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    final library = context['library'];
    if (library is! CqlLibrary) return null;
    final conceptDefs = library.concepts?.def;
    if (conceptDefs == null) return null;
    for (final conceptDef in conceptDefs) {
      if (conceptDef.name == name) {
        // Resolve each CodeRef in the ConceptDef
        final codes = <CqlCode>[];
        for (final codeRef in conceptDef.code) {
          final resolved = await codeRef.execute(context);
          if (resolved is CqlCode) {
            codes.add(resolved);
          }
        }
        return CqlConcept(
          codes: codes,
          display: conceptDef.display,
        );
      }
    }
    return null;
  }
}
