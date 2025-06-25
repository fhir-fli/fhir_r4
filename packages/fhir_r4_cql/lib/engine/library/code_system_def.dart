import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class CodeSystemDefs {
  String? type;
  List<CodeSystemDef> def = [];

  CodeSystemDefs();

  factory CodeSystemDefs.fromJson(Map<String, dynamic> json) => CodeSystemDefs()
    ..type = json['type'] as String?
    ..def = (json['def'] as List<dynamic>)
        .map((e) => CodeSystemDef.fromJson(e as Map<String, dynamic>))
        .toList();

  Map<String, dynamic> toJson() => <String, dynamic>{
        if (type != null) 'type': type,
        'def': def.map((e) => e.toJson()).toList(),
      };

  dynamic execute() => def.map((e) => e.execute()).toList();
}

/// The CodeSystemDef type defines a code system identifier that can then be
/// used to identify code systems involved in value set definitions.
class CodeSystemDef extends Element {
  String? type;

  /// The name of the code system used for reference.
  String? name;

  /// The unique identifier of the code system.
  String? id;

  /// The version of the code system to be used. If no version is specified, the
  /// most current published version of the code system is assumed.
  String? version;

  /// Specifies the access level; default is Public.
  AccessModifier accessLevel;

  CodeSystemDef({
    this.type,
    this.name,
    this.id,
    this.version,
    this.accessLevel = AccessModifier.public,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory CodeSystemDef.fromJson(Map<String, dynamic> json) => CodeSystemDef(
      type: json['type'] as String?,
      name: json['name'] as String?,
      id: json['id'] as String?,
      version: json['version'] as String?,
      accessLevel: json['accessLevel'] == 'Private'
          ? AccessModifier.private
          : AccessModifier.public)
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

    writeNotNull('type', type);
    writeNotNull('resultTypeSpecifier', resultTypeSpecifier?.toJson());
    writeNotNull('localId', localId);
    writeNotNull('locator', locator);
    writeNotNull('name', name);
    writeNotNull('id', id);
    writeNotNull('version', version);
    val['accessLevel'] = _$AccessModifierEnumMap[accessLevel]!;
    writeNotNull('annotation', annotation?.map((e) => e.toJson()).toList());
    writeNotNull('resultTypeName', resultTypeName);
    return val;
  }

  static const _$AccessModifierEnumMap = {
    AccessModifier.public: 'Public',
    AccessModifier.private: 'Private',
  };

  dynamic execute() {
    throw UnimplementedError();
  }
}
