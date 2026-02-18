import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Expression allowing the value of a parameter to be referenced within an expression.
class ParameterRef extends Ref {
  ParameterRef({
    required super.name,
    super.libraryName,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ParameterRef.fromJson(Map<String, dynamic> json) {
    final name = json['name'];
    if (name == null) {
      throw ArgumentError("JSON name cannot be null");
    }

    return ParameterRef(
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
  String get type => 'ParameterRef';

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> val = super.toJson();
    return val;
  }

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    // Check if the parameter value was provided in the execution context
    if (context.containsKey(name)) {
      return context[name];
    }

    // If not provided, look up the default from the library's parameter definitions
    final library = context['library'];
    if (library is CqlLibrary && library.parameters != null) {
      for (final paramDef in library.parameters!.def) {
        if (paramDef.name == name) {
          if (paramDef.defaultExpression != null) {
            return await paramDef.defaultExpression!.execute(context);
          }
          return null;
        }
      }
    }

    return null;
  }
}
