import '../../cql.dart';

class IncludeDefs {
  String? type;
  List<IncludeDef> def = [];

  IncludeDefs();

  factory IncludeDefs.fromJson(Map<String, dynamic> json) => IncludeDefs()
    ..type = json['type'] as String?
    ..def = (json['def'] as List<dynamic>)
        .map((e) => IncludeDef.fromJson(e as Map<String, dynamic>))
        .toList();

  Map<String, dynamic> toJson() => <String, dynamic>{
        if (type != null) 'type': type,
        'def': def.map((e) => e.toJson()).toList(),
      };

  dynamic execute() => def.map((e) => e.execute()).toList();
}

/// Includes a library for use within the artifact.
class IncludeDef extends Element {
  String? type;

  /// A unique name within this artifact for the library reference.
  ///
  /// This name is used within this artifact to reference components of this library.
  String? localIdentifier;

  /// Defines the type of the library. If this attribute is omitted, the library
  /// is assumed to be an ELM library artifact.
  String? mediaType;

  /// Defines the path to the library.
  String? path;

  /// Optionally defines the required version number of the referenced library.
  String? version;

  IncludeDef({
    this.type,
    this.localIdentifier,
    this.mediaType,
    this.path,
    this.version,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory IncludeDef.fromJson(Map<String, dynamic> json) => IncludeDef(
        type: json['type'] as String?,
        localIdentifier: json['localIdentifier'] as String?,
        mediaType: json['mediaType'] as String?,
        path: json['path'] as String?,
        version: json['version'] as String?,
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

    writeNotNull('type', type);
    writeNotNull('annotation', annotation?.map((e) => e.toJson()).toList());
    writeNotNull('localId', localId);
    writeNotNull('locator', locator);
    writeNotNull('resultTypeName', resultTypeName);
    writeNotNull('resultTypeSpecifier', resultTypeSpecifier?.toJson());
    writeNotNull('localIdentifier', localIdentifier);
    writeNotNull('mediaType', mediaType);
    writeNotNull('path', path);
    writeNotNull('version', version);
    return val;
  }

  dynamic execute() {
    throw UnimplementedError();
  }
}
