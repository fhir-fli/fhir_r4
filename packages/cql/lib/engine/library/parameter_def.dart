import '../../cql.dart';

class ParameterDefs {
  String? type;
  List<ParameterDef> def = <ParameterDef>[];

  ParameterDefs();

  factory ParameterDefs.fromJson(Map<String, dynamic> json) => ParameterDefs()
    ..type = json['type'] as String?
    ..def = (json['def'] as List<dynamic>)
        .map((e) => ParameterDef.fromJson(e as Map<String, dynamic>))
        .toList();

  Map<String, dynamic> toJson() => <String, dynamic>{
        if (type != null) 'type': type,
        'def': def.map((e) => e.toJson()).toList(),
      };

  dynamic execute() => def.map((e) => e.execute()).toList();
}

/// Definition of a parameter that can be referenced by name within an expression.
class ParameterDef extends Element {
  /// Name of the parameter.
  String name;

  /// Access level, defaults to Public.
  AccessModifier accessLevel;

  /// Default value expression for the parameter.
  CqlExpression? defaultExpression;

  /// Qualified name of the parameter type, optional.
  QName? parameterType;

  /// Type specifier for the parameter.
  TypeSpecifierExpression? parameterTypeSpecifier;

  ParameterDef({
    required this.name,
    this.accessLevel = AccessModifier.public,
    this.parameterType,
    this.defaultExpression,
    this.parameterTypeSpecifier,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ParameterDef.fromJson(Map<String, dynamic> json) => ParameterDef(
        name: json['name'] as String,
        accessLevel: json['accessLevel'] is String &&
                (json['accessLevel'] as String).toLowerCase() == 'private'
            ? AccessModifier.private
            : AccessModifier.public,
        defaultExpression: json['default'] == null
            ? null
            : CqlExpression.fromJson(json['default'] as Map<String, dynamic>),
        parameterTypeSpecifier: json['parameterTypeSpecifier'] == null
            ? null
            : TypeSpecifierExpression.fromJson(
                json['parameterTypeSpecifier'] as Map<String, dynamic>),
        parameterType: json['parameterType'] == null
            ? null
            : QName.fromJson(json['parameterType'] as String),
      )
        ..annotation = (json['annotation'] as List<dynamic>?)
            ?.map((e) => CqlToElmBase.fromJson(e as Map<String, dynamic>))
            .toList()
        ..localId = json['localId'] as String?
        ..locator = json['locator'] as String?
        ..resultTypeName = json['resultTypeName'] as String?
        ..resultTypeSpecifier = json['resultTypeSpecifier'] == null
            ? null
            : TypeSpecifierExpression.fromJson(
                json['resultTypeSpecifier'] as Map<String, dynamic>);

  @override
  Map<String, dynamic> toJson() {
    final val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    val['name'] = name;
    val['accessLevel'] = _$AccessModifierEnumMap[accessLevel]!;
    writeNotNull('annotation', annotation?.map((e) => e.toJson()).toList());
    writeNotNull('localId', localId);
    writeNotNull('locator', locator);
    writeNotNull('resultTypeName', resultTypeName);
    writeNotNull('resultTypeSpecifier', resultTypeSpecifier?.toJson());

    writeNotNull('default', defaultExpression?.toJson());
    writeNotNull('parameterType', parameterType?.toJson());
    writeNotNull('parameterTypeSpecifier', parameterTypeSpecifier?.toJson());
    return val;
  }

  static const _$AccessModifierEnumMap = {
    AccessModifier.public: 'Public',
    AccessModifier.private: 'Private',
  };

  @override
  String toString() => toJson().toString();

  dynamic execute() {
    throw UnimplementedError();
  }
}
