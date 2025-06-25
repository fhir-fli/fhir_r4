import 'dart:convert';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class ValueSetDefs {
  String? type;
  List<ValueSetDef> def = [];

  ValueSetDefs();

  factory ValueSetDefs.fromJson(Map<String, dynamic> json) => ValueSetDefs()
    ..type = json['type'] as String?
    ..def = (json['def'] as List<dynamic>)
        .map((e) => ValueSetDef.fromJson(e as Map<String, dynamic>))
        .toList();

  Map<String, dynamic> toJson() => <String, dynamic>{
        if (type != null) 'type': type,
        'def': def.map((e) => e.toJson()).toList(),
      };

  dynamic execute() => def.map((e) => e.execute()).toList();
}

/// The ValueSetDef type defines a value set identifier that can be referenced
/// by name anywhere within an expression.
///
/// The id specifies the globally unique identifier for the value set. This
/// may be an HL7 OID, a FHIR URL, or a CTS2 value set URL.
///
/// If version is specified, it will be used to resolve the version of the
/// value set definition to be used. Otherwise, the most current published
/// version of the value set is assumed.
///
/// If codeSystems are specified, they will be used to resolve the code
/// systems used within the value set definition to construct the expansion set.
///
/// Note that the recommended approach to statically binding to an expansion
/// set is to use a value set definition that specifies the version of each
/// code system used. The codeSystemVersions attribute is provided only to
/// ensure static binding can be achieved when the value set definition does
/// not specify code system versions as part of the definition header.
class ValueSetDef extends Element {
  /// The name of the value set.
  String? name;

  /// The unique identifier of the value set to be retrieved.
  String? id;

  /// Specifies the access level; default is Public.
  AccessModifier accessLevel;

  /// The version of the value set to be retrieved. If no version is provided, the most current published version of the value set is assumed.
  String? version;

  /// The code system that should be used to construct the expansion set. Note
  /// that the recommended approach to statically binding to an expansion set
  /// is to use a value set definition that specifies the version of each code
  /// system used. The codeSystem elements are provided only to ensure static
  /// binding can be achieved when the value set definition does not specify
  /// code system versions as part of the definition header.
  List<CodeSystemRef>? codeSystem;

  ValueSetDef({
    this.name,
    this.id,
    this.accessLevel = AccessModifier.public,
    this.version,
    this.codeSystem,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ValueSetDef.fromJson(Map<String, dynamic> json) => ValueSetDef(
        name: json['name'] as String?,
        id: json['id'] as String?,
        accessLevel: json['accessLevel'] == 'Private'
            ? AccessModifier.private
            : AccessModifier.public,
        version: json['version'] as String?,
        codeSystem: (json['codeSystem'] as List<dynamic>?)
            ?.map((e) => CodeSystemRef.fromJson(e as Map<String, dynamic>))
            .toList(),
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
        if (key == 'codeSystem') {
          (value as List<Map<String, dynamic>>)
              .map((e) => e.removeWhere(
                  (key, value) => key == 'type' && value == 'CodeSystemRef'))
              .toList();
        }
        val[key] = value;
      }
    }

    writeNotNull('name', name);
    writeNotNull('id', id);
    writeNotNull('version', version);
    val['accessLevel'] = _$AccessModifierEnumMap[accessLevel]!;
    writeNotNull('codeSystem', codeSystem?.map((e) => e.toJson()).toList());
    writeNotNull('annotation', annotation?.map((e) => e.toJson()).toList());
    writeNotNull('localId', localId);
    writeNotNull('locator', locator);
    writeNotNull('resultTypeName', resultTypeName);
    writeNotNull('resultTypeSpecifier', resultTypeSpecifier?.toJson());
    return val;
  }

  static const _$AccessModifierEnumMap = {
    AccessModifier.public: 'Public',
    AccessModifier.private: 'Private',
  };

  dynamic execute() {
    throw UnimplementedError();
  }

  @override
  String toString() => jsonEncode(toJson());
}
