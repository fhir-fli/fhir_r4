import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart'
    show Element, FhirBase, FhirExtension, FhirString;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';

/// [TLeft11]
/// TLeft definition
class TLeft11 extends Element {
  const TLeft11({
    super.id,
    super.extension_,
    this.e,
    this.f,
    super.disallowExtensions,
    super.objectPath = 'TLeft11',
  });

  factory TLeft11.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TLeft11';
    return TLeft11(
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
      e: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'e',
        FhirString.fromJson,
        '$objectPath.e',
      ),
      f: JsonParser.parsePrimitive<FhirString>(
        json,
        'f',
        FhirString.fromJson,
        '$objectPath.f',
      ),
    );
  }

  /// [e]
  /// A list of strings
  final List<FhirString>? e;

  /// [f]
  /// A single string field
  final FhirString? f;

  @override
  TLeft11 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirString>? e,
    FhirString? f,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return TLeft11(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      e: e ?? this.e,
      f: f ?? this.f,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'resourceType': 'TLeft'};
    if (id != null) json['id'] = id!.valueString;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (e != null) {
      json['e'] = e!.map((e) => e.valueString).toList();
    }
    if (f != null) {
      json['f'] = f!.valueString;
    }
    return json;
  }

  @override
  List<String> listChildrenNames() => ['id', 'extension', 'e', 'f'];

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
      case 'f':
        if (f != null) fields.add(f!);
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
    if (other is! TLeft11) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        const DeepCollectionEquality().equals(extension_, other.extension_) &&
        const DeepCollectionEquality().equals(e, other.e) &&
        f == other.f;
  }
}

/// Extension to convert [TLeft11] to a Builder
extension BuilderTLeft11 on TLeft11 {
  /// Converts [TLeft11] to a [TLeft11Builder]
  TLeft11Builder get toBuilder => TLeft11Builder.fromJson(toJson());
}

/// [TLeft11Builder]
/// TLeft definition - builder version for mutability
class TLeft11Builder extends ElementBuilder {
  /// Constructor for TLeft11Builder
  TLeft11Builder({
    super.id,
    super.extension_,
    this.e,
    this.f,
    super.disallowExtensions,
    super.objectPath = 'TLeft11Builder',
  });

  /// An empty constructor for partial usage
  factory TLeft11Builder.empty() => TLeft11Builder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TLeft11Builder.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TLeft11';
    return TLeft11Builder(
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
      e: JsonParser.parsePrimitiveList<FhirStringBuilder>(
        json,
        'e',
        FhirStringBuilder.fromJson,
        '$objectPath.e',
      ),
      f: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'f',
        FhirStringBuilder.fromJson,
        '$objectPath.f',
      ),
    );
  }

  /// [e]
  /// A list of strings
  List<FhirStringBuilder>? e;

  /// [f]
  /// A single string field
  FhirStringBuilder? f;

  @override
  String get fhirType => 'TLeft11';

  /// converts a [TLeft11Builder]
  /// to [TLeft11]
  @override
  TLeft11 build() => TLeft11.fromJson(toJson());

  @override
  TLeft11Builder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirStringBuilder>? e,
    FhirStringBuilder? f,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return TLeft11Builder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      e: e ?? this.e,
      f: f ?? this.f,
      objectPath: newObjectPath,
    );
  }

  @override
  List<String> listChildrenNames() => ['id', 'extension', 'e', 'f'];

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
      case 'f':
        if (f != null) {
          fields.add(f!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
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
      case 'e':
        {
          if (child is List<FhirStringBuilder>) {
            // Replace or create new list
            e = child;
            return;
          } else if (child is FhirStringBuilder) {
            // Add single element to existing list or create new list
            e = [...(e ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'f':
        {
          if (child is FhirStringBuilder) {
            f = child;
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
        return ['FhirStringBuilder'];
      case 'f':
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
      case 'e':
        {
          e = <FhirStringBuilder>[];
          return;
        }
      case 'f':
        {
          f = FhirStringBuilder.empty();
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
    bool f = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (e) this.e = null;
    if (f) this.f = null;
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
    addField('e', e);
    addField('f', f);
    return json;
  }

  @override
  bool equalsDeep(FhirBaseBuilder? other) {
    if (other is! TLeft11Builder) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        listEquals<FhirBaseBuilder>(extension_, other.extension_) &&
        listEquals<FhirBaseBuilder>(e, other.e) &&
        f == other.f;
  }

  @override
  TLeft11Builder clone() => copyWith();
}
