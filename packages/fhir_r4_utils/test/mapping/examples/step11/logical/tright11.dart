import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart'
    show
        BackboneElement,
        Element,
        FhirBase,
        FhirCode,
        FhirExtension,
        FhirString;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';

/// [TRight11]
/// TRight definition
class TRight11 extends Element {
  const TRight11({
    super.id,
    super.extension_,
    this.e,
    super.disallowExtensions,
    super.objectPath = 'TRight11',
  });

  /// Factory constructor for an empty TRight11
  factory TRight11.empty() => const TRight11();

  factory TRight11.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TRight11';
    return TRight11(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      e: (json['e'] as List<dynamic>?)
          ?.map<TRight11e>(
            (v) => TRight11e.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.e',
              },
            ),
          )
          .toList(),
    );
  }

  /// [e]
  /// A list of TRight11e elements
  final List<TRight11e>? e;

  @override
  TRight11 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<TRight11e>? e,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return TRight11(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      e: e ?? this.e,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'resourceType': 'TRight'};
    if (id != null) json['id'] = id!.valueString;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (e != null) {
      json['e'] = e!.map((e) => e.toJson()).toList();
    }
    return json;
  }

  @override
  List<String> listChildrenNames() => ['id', 'extension', 'e'];

  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) fields.add(id!);
      case 'extension':
        if (extension_ != null) fields.addAll(extension_!);
      case 'e':
        if (e != null) fields.addAll(e!);
      default:
        if (checkValid) throw ArgumentError('Invalid name: $fieldName');
    }
    return fields;
  }

  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) throw StateError('Too many values for $name found');
    return values.isNotEmpty ? values.first : null;
  }

  @override
  bool equalsDeep(FhirBase? other) {
    if (other is! TRight11) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        const DeepCollectionEquality().equals(extension_, other.extension_) &&
        const DeepCollectionEquality().equals(e, other.e);
  }
}

/// [TRight11e]
/// Inner BackboneElement for TRight.e
class TRight11e extends BackboneElement {
  const TRight11e({
    super.id,
    super.extension_,
    this.f,
    this.g,
    super.disallowExtensions,
    super.objectPath = 'TRight11e',
  });

  factory TRight11e.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TRight11e';
    return TRight11e(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      f: JsonParser.parsePrimitive<FhirString>(
        json,
        'f',
        FhirString.fromJson,
        '$objectPath.f',
      ),
      g: JsonParser.parsePrimitive<FhirCode>(
        json,
        'g',
        FhirCode.fromJson,
        '$objectPath.g',
      ),
    );
  }

  /// [f]
  /// A single string field
  final FhirString? f;

  /// [g]
  /// A single code field
  final FhirCode? g;

  @override
  TRight11e copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? f,
    FhirCode? g,
    List<FhirExtension>? modifierExtension,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return TRight11e(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      f: f ?? this.f,
      g: g ?? this.g,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) json['id'] = id!.valueString;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (f != null) json['f'] = f!.valueString;
    if (g != null) json['g'] = g!.valueString;
    return json;
  }

  @override
  List<String> listChildrenNames() => ['id', 'extension', 'f', 'g'];

  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) fields.add(id!);
      case 'extension':
        if (extension_ != null) fields.addAll(extension_!);
      case 'f':
        if (f != null) fields.add(f!);
      case 'g':
        if (g != null) fields.add(g!);
      default:
        if (checkValid) throw ArgumentError('Invalid name: $fieldName');
    }
    return fields;
  }

  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) throw StateError('Too many values for $name found');
    return values.isNotEmpty ? values.first : null;
  }

  @override
  bool equalsDeep(FhirBase? other) {
    if (other is! TRight11e) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        const DeepCollectionEquality().equals(extension_, other.extension_) &&
        f == other.f &&
        g == other.g;
  }

  @override
  TRight11e createProperty(String elementName) {
    throw UnimplementedError();
  }

  @override
  TRight11e clear({bool extension_ = false, bool id = false}) {
    throw UnimplementedError();
  }
}

/// Extension to convert [TRight11e] to a Builder
extension BuilderTRight11e on TRight11e {
  /// Converts [TRight11e] to a [TRight11eBuilder]
  TRight11eBuilder get toBuilder => TRight11eBuilder.fromJson(toJson());
}

/// [TRight11eBuilder]
/// Inner BackboneElement for TRight.e - builder version for mutability
class TRight11eBuilder extends BackboneElementBuilder {
  /// Constructor for TRight11eBuilder
  TRight11eBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.f,
    this.g,
    super.disallowExtensions,
    super.objectPath = 'TRight11eBuilder',
  });

  /// An empty constructor for partial usage
  factory TRight11eBuilder.empty() => TRight11eBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TRight11eBuilder.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TRight11e';
    return TRight11eBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      f: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'f',
        FhirStringBuilder.fromJson,
        '$objectPath.f',
      ),
      g: JsonParser.parsePrimitive<FhirCodeBuilder>(
        json,
        'g',
        FhirCodeBuilder.fromJson,
        '$objectPath.g',
      ),
    );
  }

  /// [f]
  /// A single string field
  FhirStringBuilder? f;

  /// [g]
  /// A single code field
  FhirCodeBuilder? g;

  @override
  String get fhirType => 'TRight11e';

  /// converts a [TRight11eBuilder]
  /// to [TRight11e]
  @override
  TRight11e build() => TRight11e.fromJson(toJson());

  @override
  TRight11eBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? f,
    FhirCodeBuilder? g,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return TRight11eBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      f: f ?? this.f,
      g: g ?? this.g,
      objectPath: newObjectPath,
    );
  }

  @override
  List<String> listChildrenNames() =>
      ['id', 'extension', 'modifierExtension', 'f', 'g'];

  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'f':
        if (f != null) {
          fields.add(f!);
        }
      case 'g':
        if (g != null) {
          fields.add(g!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

// For TRight11eBuilder
  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'f':
        {
          if (child is FhirStringBuilder) {
            f = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                f = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'g':
        {
          if (child is FhirCodeBuilder) {
            g = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirCodeBuilder.tryParse(stringValue);
              if (converted != null) {
                g = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'f':
        return ['FhirStringBuilder'];
      case 'g':
        return ['FhirCodeBuilder'];
      default:
        return <String>[];
    }
  }

  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'f':
        {
          f = FhirStringBuilder.empty();
          return;
        }
      case 'g':
        {
          g = FhirCodeBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool f = false,
    bool g = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (f) this.f = null;
    if (g) this.g = null;
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('f', f);
    addField('g', g);
    return json;
  }

  @override
  bool equalsDeep(FhirBaseBuilder? other) {
    if (other is! TRight11eBuilder) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        listEquals<FhirBaseBuilder>(extension_, other.extension_) &&
        listEquals<FhirBaseBuilder>(
          modifierExtension,
          other.modifierExtension,
        ) &&
        f == other.f &&
        g == other.g;
  }

  @override
  TRight11eBuilder clone() => copyWith();
}

/// Extension to convert [TRight11] to a Builder
extension BuilderTRight11 on TRight11 {
  /// Converts [TRight11] to a [TRight11Builder]
  TRight11Builder get toBuilder => TRight11Builder.fromJson(toJson());
}

/// [TRight11Builder]
/// TRight definition - builder version for mutability
class TRight11Builder extends ElementBuilder {
  /// Constructor for TRight11Builder
  TRight11Builder({
    super.id,
    super.extension_,
    this.e,
    super.disallowExtensions,
    super.objectPath = 'TRight11Builder',
  });

  /// An empty constructor for partial usage
  factory TRight11Builder.empty() => TRight11Builder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TRight11Builder.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TRight11';
    return TRight11Builder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      e: (json['e'] as List<dynamic>?)
          ?.map<TRight11eBuilder>(
            (v) => TRight11eBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.e',
              },
            ),
          )
          .toList(),
    );
  }

  /// [e]
  /// A list of TRight11e elements
  List<TRight11eBuilder>? e;

  @override
  String get fhirType => 'TRight11';

  /// converts a [TRight11Builder]
  /// to [TRight11]
  @override
  TRight11 build() => TRight11.fromJson(toJson());

  @override
  TRight11Builder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<TRight11eBuilder>? e,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return TRight11Builder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      e: e ?? this.e,
      objectPath: newObjectPath,
    );
  }

  @override
  List<String> listChildrenNames() => ['id', 'extension', 'e'];

  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'e':
        if (e != null) {
          fields.addAll(e!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

// For TRight11Builder
  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'e':
        {
          if (child is List<TRight11eBuilder>) {
            // Replace or create new list
            e = child;
            return;
          } else if (child is TRight11eBuilder) {
            // Add single element to existing list or create new list
            e = [...(e ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'e':
        return ['TRight11eBuilder'];
      default:
        return <String>[];
    }
  }

  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'e':
        {
          e = <TRight11eBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool e = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (e) this.e = null;
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'resourceType': 'TRight'};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('e', e);
    return json;
  }

  @override
  bool equalsDeep(FhirBaseBuilder? other) {
    if (other is! TRight11Builder) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        listEquals<FhirBaseBuilder>(extension_, other.extension_) &&
        listEquals<FhirBaseBuilder>(e, other.e);
  }

  @override
  TRight11Builder clone() => copyWith();
}
