import 'package:fhir_r4_cql/fhir_r4_cql.dart';


class UsingDefs {
  String? type;
  List<UsingDef> def = [];

  UsingDefs();

  factory UsingDefs.fromJson(Map<String, dynamic> json) => UsingDefs()
    ..type = json['type'] as String?
    ..def = (json['def'] as List<dynamic>)
        .map((e) => UsingDef.fromJson(e as Map<String, dynamic>))
        .toList();

  Map<String, dynamic> toJson() => <String, dynamic>{
        if (type != null) 'type': type,
        'def': def.map((e) => e.toJson()).toList(),
      };

  dynamic execute() => def.map((e) => e.execute()).toList();
}

/// Defines a data model that is available within the artifact.
class UsingDef extends Element {
  String? type;

  /// A unique name within this artifact for the library reference.
  ///
  /// This name is used within this artifact to reference components of this library.
  String? localIdentifier;

  /// The URI of the model that is being referenced.
  ///
  /// This URL must also be defined as a namespace in the root element of the document to allow for elements of the model to be referenced within the artifact.
  String? uri;

  /// Optionally defines the required version number of the referenced library.
  String? version;

  UsingDef({
    this.type,
    this.localIdentifier,
    this.uri,
    this.version,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory UsingDef.fromJson(Map<String, dynamic> json) => UsingDef(
        type: json['type'] as String?,
        localIdentifier: json['localIdentifier'] as String?,
        uri: json['uri'] as String?,
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
    writeNotNull('localId', localId);
    writeNotNull('locator', locator);
    writeNotNull('localIdentifier', localIdentifier);
    writeNotNull('uri', uri);
    writeNotNull('version', version);
    writeNotNull('annotation', annotation?.map((e) => e.toJson()).toList());
    writeNotNull('resultTypeName', resultTypeName);
    writeNotNull('resultTypeSpecifier', resultTypeSpecifier?.toJson());
    return val;
  }

  dynamic execute() {
    throw UnimplementedError();
  }
}
