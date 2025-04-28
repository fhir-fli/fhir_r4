import 'package:fhir_r4_cql/fhir_r4_cql.dart';


class ContextDefs {
  String? type;
  List<ContextDef> def = <ContextDef>[];

  ContextDefs();

  factory ContextDefs.fromJson(Map<String, dynamic> json) => ContextDefs()
    ..type = json['type'] as String?
    ..def = (json['def'] as List<dynamic>)
        .map((e) => ContextDef.fromJson(e as Map<String, dynamic>))
        .toList();

  Map<String, dynamic> toJson() => <String, dynamic>{
        if (type != null) 'type': type,
        'def': def.map((e) => e.toJson()).toList(),
      };

  dynamic execute() => def.map((e) => e.execute()).toList();
}

class ContextDef extends Element {
  final String name;

  ContextDef({
    required this.name,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ContextDef.fromJson(Map<String, dynamic> json) => ContextDef(
        name: json['name'] as String,
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

    writeNotNull('annotation', annotation?.map((e) => e.toJson()).toList());
    writeNotNull('localId', localId);
    writeNotNull('locator', locator);
    writeNotNull('resultTypeName', resultTypeName);
    writeNotNull('resultTypeSpecifier', resultTypeSpecifier?.toJson());
    val['name'] = name;
    return val;
  }

  dynamic execute() {
    throw UnimplementedError();
  }
}
