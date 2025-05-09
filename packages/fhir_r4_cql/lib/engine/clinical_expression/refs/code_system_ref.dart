import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// The CodeSystemRef expression allows a previously defined named code system to
/// be referenced within an expression. Conceptually, referencing a code system
/// returns the set of codes in the code system. Note that this operation should
/// almost never be performed in practice. Code system references are allowed in
/// order to allow for testing of code membership in a particular code system.
class CodeSystemRef extends Ref {
  CodeSystemRef({
    required super.name,
    super.libraryName,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory CodeSystemRef.fromJson(Map<String, dynamic> json) {
    final name = json['name'];
    if (name == null) {
      throw ArgumentError("JSON name cannot be null");
    }

    return CodeSystemRef(
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
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> val = super.toJson();
    return val;
  }

  @override
  String get type => 'CodeSystemRef';

    @override
  List<String> getReturnTypes(CqlLibrary library) {
    if (resultTypeName != null) {
      return [resultTypeName!];
    }
    if (resultTypeSpecifier != null) {
      // unwrap the specifier into a list of type names
      return resultTypeSpecifier!.getReturnTypes(library);
    }
    return ['CodeSystem'];
  }

}
