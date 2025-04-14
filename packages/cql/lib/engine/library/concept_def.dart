import '../../cql.dart';

class ConceptDefs {
  String? type;
  List<ConceptDef> def = <ConceptDef>[];

  ConceptDefs();

  factory ConceptDefs.fromJson(Map<String, dynamic> json) => ConceptDefs()
    ..type = json['type'] as String?
    ..def = (json['def'] as List<dynamic>)
        .map((e) => ConceptDef.fromJson(e as Map<String, dynamic>))
        .toList();

  Map<String, dynamic> toJson() => <String, dynamic>{
        if (type != null) 'type': type,
        'def': def.map((e) => e.toJson()).toList(),
      };

  dynamic execute() => def.map((e) => e.execute()).toList();
}

/// The ConceptDef type defines a concept identifier that can then be used to
/// reference single concepts anywhere within an expression.
class ConceptDef extends Element {
  /// The name of the concept used for reference.
  String name;

  /// An optional display string used to describe the concept.
  String? display;

  /// Specifies the access level; default is Public.
  AccessModifier accessLevel;

  /// A code that makes up the concept. All codes within a given concept must
  /// be synonyms.
  List<CodeRef> code;

  ConceptDef({
    required this.name,
    this.display,
    this.accessLevel = AccessModifier.public,
    required this.code,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ConceptDef.fromJson(Map<String, dynamic> json) => ConceptDef(
        name: json['name'] as String,
        display: json['display'] as String?,
        accessLevel: json['accessLevel'] == 'Private'
            ? AccessModifier.private
            : AccessModifier.public,
        code: (json['code'] as List<dynamic>)
            .map((e) => CodeRef.fromJson(e as Map<String, dynamic>))
            .toList(),
      )
        ..annotation = (json['annotation'] as List<dynamic>?)
            ?.map((e) => Annotation.fromJson(e as Map<String, dynamic>))
            .toList()
        ..resultTypeSpecifier = json['resultTypeSpecifier'] == null
            ? null
            : TypeSpecifierExpression.fromJson(
                json['resultTypeSpecifier'] as Map<String, dynamic>)
        ..resultTypeName = json['resultTypeName'] as String?
        ..localId = json['localId'] as String?
        ..locator = json['locator'] as String?;

  @override
  Map<String, dynamic> toJson() {
    final val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    val['name'] = name;
    writeNotNull('display', display);
    val['accessLevel'] = _$AccessModifierEnumMap[accessLevel]!;
    val['code'] = code.map((e) {
      final map = e.toJson();
      map.removeWhere((key, value) => key == 'type' && value == 'CodeRef');
      return map;
    }).toList();
    writeNotNull('annotation', annotation?.map((e) => e.toJson()).toList());
    writeNotNull('resultTypeSpecifier', resultTypeSpecifier?.toJson());
    writeNotNull('resultTypeName', resultTypeName);
    writeNotNull('localId', localId);
    writeNotNull('locator', locator);
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
