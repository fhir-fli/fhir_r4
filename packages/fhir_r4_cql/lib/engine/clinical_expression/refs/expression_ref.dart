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
    writeNotNull('resultTypeName', resultTypeName);
    writeNotNull('resultTypeSpecifier', resultTypeSpecifier?.toJson());
    return val;
  }

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    return context[name];
  }

  @override
  List<String> getReturnTypes(CqlLibrary library) {
    final expression =
        library.statements?.def.indexWhere((element) => element.name == name);
    if (expression != null && expression != -1) {
      return library.statements?.def[expression].expression
              ?.getReturnTypes(library) ??
          [];
    }
    return [];
  }
}
