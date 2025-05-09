import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// The ValueSetRef expression allows a previously defined named value set to be
/// referenced within an expression. Conceptually, referencing a value set
/// returns the expansion set for the value set as a list of codes.
class ValueSetRef extends Ref {
  bool? preserve;

  ValueSetRef({
    required super.name,
    super.libraryName,
    this.preserve = true,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ValueSetRef.fromJson(Map<String, dynamic> json) {
    final name = json['name'];
    if (name == null) {
      throw ArgumentError("JSON name cannot be null");
    }

    return ValueSetRef(
      name: name,
      libraryName: json['libraryName'],
      preserve: json['preserve'],
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
    final Map<String, dynamic> json = {
      'name': name,
      if (libraryName != null) 'libraryName': libraryName,
      if (preserve != null) 'preserve': preserve,
      if (annotation != null)
        'annotation': annotation!.map((x) => x.toJson()).toList(),
      if (localId != null) 'localId': localId,
      if (locator != null) 'locator': locator,
      if (resultTypeName != null) 'resultTypeName': resultTypeName,
      if (resultTypeSpecifier != null)
        'resultTypeSpecifier': resultTypeSpecifier!.toJson(),
      'type': type,
    };

    return json;
  }

  @override
  String get type => 'ValueSetRef';

  @override
  List<String> getReturnTypes(CqlLibrary library) {
    if (resultTypeName != null) {
      return [resultTypeName!];
    }
    if (resultTypeSpecifier != null) {
      // unwrap the specifier into a list of type names
      return resultTypeSpecifier!.getReturnTypes(library);
    }
    return ['ValueSet'];
  }


  @override
  Future<CqlValueSet?> execute(Map<String, dynamic> context) async {
    // Retrieve the CqlLibrary from the context
    var library = context['library'];
    if (library == null || library is! CqlLibrary) {
      throw ArgumentError('CqlLibrary not found in context');
    }

    final CqlValueSet? valueSet = library.resolveValueSetRef(name);

    return valueSet;
  }
}
