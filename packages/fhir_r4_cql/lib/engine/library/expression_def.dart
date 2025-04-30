import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class ExpressionDefs {
  String? type;
  List<ExpressionDef> def = <ExpressionDef>[];

  ExpressionDefs();

  factory ExpressionDefs.fromJson(Map<String, dynamic> json) {
    return ExpressionDefs()
      ..type = json['type'] as String?
      ..def = json['def'] != null
          ? (json['def'] as List).map((i) => ExpressionDef.fromJson(i)).toList()
          : <ExpressionDef>[];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (type != null) {
      data['type'] = type;
    }
    if (def.isNotEmpty) {
      data['def'] = def.map((v) => v.toJson()).toList();
    }
    return data;
  }

  Future<Map<String, dynamic>> execute(Map<String, dynamic> context) async {
    int i = 0;
    for (final e in def) {
      try {
        context.addAll(await e.execute(context));
      } catch (e) {
        context['Exception$i'] = e.toString();
        i++;
      }
    }
    return context;
  }
}

/// Expression definition with an associated name that can be referenced by any
/// expression in the artifact.
class ExpressionDef extends Element {
  String? type;

  /// Access level, defaults to Public.
  AccessModifier? accessLevel;

  /// Execution context.
  String? context;

  /// Expression associated with the definition.
  CqlExpression? expression;

  /// Name of the expression.
  String name;

  ExpressionDef({
    this.type,
    this.expression,
    required this.name,
    this.context,
    this.accessLevel,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ExpressionDef.context({
    String? type,
    String? locator,
    required String name,
    String? context,
    required CqlExpression expression,
  }) =>
      ExpressionDef(
        type: type,
        locator: locator,
        name: name,
        context: context,
        expression: expression,
      );

  factory ExpressionDef.fromJson(Map<String, dynamic> json) {
    if (json['type'] == 'FunctionDef') {
      return FunctionDef.fromJson(json);
    } else {
      return ExpressionDef(
        type: json['type'] as String?,
        locator: json['locator'] as String?,
        name: json['name'] as String,
        context: json['context'] as String?,
        accessLevel: json['accessLevel'] == 'Private'
            ? AccessModifier.private
            : json['accessLevel'] == 'Public'
                ? AccessModifier.public
                : null,
        expression: json['expression'] != null
            ? CqlExpression.fromJson(json['expression'])
            : null,
        annotation: json['annotation'] != null
            ? (json['annotation'] as List)
                .map((e) => CqlToElmBase.fromJson(e))
                .toList()
            : null,
        localId: json['localId'] as String?,
        resultTypeName: json['resultTypeName'] as String?,
        resultTypeSpecifier: json['resultTypeSpecifier'] != null
            ? TypeSpecifierExpression.fromJson(json['resultTypeSpecifier'])
            : null,
      );
    }
  }

  factory ExpressionDef.private({
    String? type,
    String? locator,
    required String name,
    String? context,
    required CqlExpression expression,
  }) =>
      ExpressionDef(
        type: type,
        locator: locator,
        name: name,
        context: context,
        accessLevel: AccessModifier.private,
        expression: expression,
      );

  factory ExpressionDef.public({
    String? type,
    String? locator,
    required String name,
    String? context,
    required CqlExpression expression,
  }) =>
      ExpressionDef(
        type: type,
        locator: locator,
        name: name,
        context: context,
        accessLevel: AccessModifier.public,
        expression: expression,
      );

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    if (context != null) {
      data['context'] = context;
    }
    if (resultTypeName != null) {
      data['resultTypeName'] = resultTypeName;
    }
    if (accessLevel != null) {
      data['accessLevel'] = _$AccessModifierEnumMap[accessLevel];
    }
    if (type != null) {
      data['type'] = type;
    }
    if (expression != null) {
      data['expression'] = expression!.toJson();
    }

    if (annotation != null) {
      data['annotation'] = annotation!.map((e) => e.toJson()).toList();
    }
    if (resultTypeSpecifier != null) {
      data['resultTypeSpecifier'] = resultTypeSpecifier!.toJson();
    }
    if (localId != null) {
      data['localId'] = localId;
    }
    if (locator != null) {
      data['locator'] = locator;
    }
    return data;
  }

  static const _$AccessModifierEnumMap = {
    AccessModifier.public: 'Public',
    AccessModifier.private: 'Private',
  };

  Future<dynamic> execute(Map<String, dynamic> context) async {
    print('Executing expression: $name');
    return {name: await expression?.execute(context)};
  }

  List<String> getReturnTypes(CqlLibrary library) =>
      expression?.getReturnTypes(library) ?? [];
}
