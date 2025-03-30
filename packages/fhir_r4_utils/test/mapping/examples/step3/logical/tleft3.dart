import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart'
    show Element, FhirString, FhirExtension, FhirBase;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';

/// [TLeft3]
/// TLeft definition
class TLeft3 extends Element {
  const TLeft3({
    super.id,
    super.extension_,
    this.a2,
    super.disallowExtensions,
    super.objectPath = 'TLeft3',
  });

  /// Factory constructor to create an instance of [TLeft3] from JSON
  factory TLeft3.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TLeft3';
    return TLeft3(
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
      a2: JsonParser.parsePrimitive<FhirString>(
        json,
        'a2',
        FhirString.fromJson,
        '$objectPath.a2',
      ),
    );
  }

  /// [a2]
  /// Represents the a2 field in TLeft definition
  final FhirString? a2;

  @override
  TLeft3 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? a2,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return TLeft3(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      a2: a2 ?? this.a2,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'resourceType': 'TLeft'};
    if (id != null) json['id'] = id!.value;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (a2 != null) {
      json['a2'] = a2!.value;
    }
    return json;
  }

  @override
  List<String> listChildrenNames() {
    return ['id', 'extension', 'a2'];
  }

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
      case 'a2':
        if (a2 != null) fields.add(a2!);
      default:
        if (checkValid) throw ArgumentError('Invalid field name: $fieldName');
    }
    return fields;
  }

  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Multiple values found for $name');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! TLeft3) return false;
    if (identical(this, o)) return true;
    return id == o.id &&
        const DeepCollectionEquality().equals(extension_, o.extension_) &&
        a2 == o.a2;
  }
}

/// Extension to convert [TLeft3] to a Builder
extension BuilderTLeft3 on TLeft3 {
  /// Converts [TLeft3] to a [TLeft3Builder]
  TLeft3Builder get toBuilder => TLeft3Builder.fromJson(toJson());
}

/// [TLeft3Builder]
/// TLeft definition - builder version for mutability
class TLeft3Builder extends ElementBuilder {
  /// Constructor for TLeft3Builder
  TLeft3Builder({
    super.id,
    super.extension_,
    this.a2,
    super.disallowExtensions,
    super.objectPath = 'TLeft3Builder',
  });

  /// An empty constructor for partial usage
  factory TLeft3Builder.empty() => TLeft3Builder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TLeft3Builder.fromJson(Map<String, dynamic> json) {
    final objectPath = json['resourceType'] as String? ?? 'TLeft3';
    return TLeft3Builder(
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
      a2: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'a2',
        FhirStringBuilder.fromJson,
        '$objectPath.a2',
      ),
    );
  }

  /// [a2]
  /// Represents the a2 field in TLeft definition
  FhirStringBuilder? a2;

  @override
  String get fhirType => 'TLeft3';

  /// Converts a TLeft3Builder to [TLeft3]
  @override
  TLeft3 build() => TLeft3.fromJson(toJson());

  @override
  TLeft3Builder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    FhirStringBuilder? a2,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return TLeft3Builder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      a2: a2 ?? this.a2,
      objectPath: newObjectPath,
    );
  }

  @override
  List<String> listChildrenNames() {
    return ['id', 'extension', 'a2'];
  }

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
      case 'a2':
        if (a2 != null) {
          fields.add(a2!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid field name: $fieldName');
        }
    }
    return fields;
  }

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
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'a2':
        {
          if (child is FhirStringBuilder) {
            a2 = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  @override
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Multiple values found for $name');
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
      case 'a2':
        return ['FhirStringBuilder'];
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
      case 'a2':
        {
          a2 = FhirStringBuilder.empty();
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
    bool a2 = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (a2) this.a2 = null;
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'resourceType': 'TLeft'};
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
    addField('a2', a2);
    return json;
  }

  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! TLeft3Builder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    return id == o.id &&
        const DeepCollectionEquality().equals(extension_, o.extension_) &&
        a2 == o.a2;
  }

  @override
  TLeft3Builder clone() => copyWith();
}
