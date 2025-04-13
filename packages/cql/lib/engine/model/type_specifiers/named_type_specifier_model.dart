import '../../../cql.dart';

/// Represents a named type specifier, extending [TypeSpecifier].
///
/// The [NamedTypeSpecifier] type represents a named type, inheriting from TypeSpecifier,
/// defining modelName, namespace, and name attributes.
class NamedTypeSpecifierModel extends TypeSpecifierModel {
  /// Deprecated model name attribute.
  @Deprecated('Use namespace instead')
  String? modelName;

  /// Namespace of the type.
  QName? namespace;

  String name;

  NamedTypeSpecifierModel({
    this.namespace,
    required this.name,
  });

  NamedTypeSpecifierModel.fromJson(Map<String, dynamic> map)
      : modelName = map['modelName'],
        namespace =
            map['namespace'] != null ? QName.fromJson(map['namespace']) : null,
        name = map['name'],
        super(type: 'NamedTypeSpecifier');

  @override
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{
      'type': 'NamedTypeSpecifier',
      'name': name,
    };
    if (namespace != null) {
      map['namespace'] = namespace!.toJson();
    }
    if (modelName != null) {
      map['modelName'] = modelName;
    }
    return map;
  }
}
