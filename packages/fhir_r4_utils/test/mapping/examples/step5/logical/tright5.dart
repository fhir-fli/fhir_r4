import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart'
    show Element, FhirBase, FhirExtension, FhirString;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';

/// [TRight5]
/// TRight definition
class TRight5 extends Element {
  const TRight5({
    super.id,
    super.extension_,
    this.a22,
    super.disallowExtensions,
    super.objectPath = 'TRight5',
  });

  factory TRight5.empty() => const TRight5();

  /// FromJson Factory Constructor
  factory TRight5.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TRight5';
    return TRight5(
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
      a22: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'a22',
        FhirString.fromJson,
        '$objectPath.a22',
      ),
    );
  }

  /// [a22]
  /// TRight definition
  final List<FhirString>? a22;

  @override
  TRight5 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirString>? a22,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return TRight5(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      a22: a22 ?? this.a22,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'resourceType': 'TRight'};
    if (id != null) json['id'] = id!.value;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (a22 != null) {
      json['a22'] = a22!.map((e) => e.value).toList();
    }
    return json;
  }

  @override
  List<String> listChildrenNames() => ['id', 'extension', 'a22'];

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
      case 'a22':
        if (a22 != null) fields.addAll(a22!);
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
    if (other is! TRight5) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        const DeepCollectionEquality().equals(extension_, other.extension_) &&
        const DeepCollectionEquality().equals(a22, other.a22);
  }

  @override
  TRight5 setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }
    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'a22':
        {
          if (child is List<FhirString>) {
            final newList = [...?a22, ...child];
            return copyWith(a22: newList);
          } else if (child is FhirString) {
            final newList = [...?a22, child];
            return copyWith(a22: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw ArgumentError('Field name not recognized');
    }
  }
}

/// Extension to convert [TRight5] to a Builder
extension BuilderTRight5 on TRight5 {
  /// Converts [TRight5] to a [TRight5Builder]
  TRight5Builder get toBuilder => TRight5Builder.fromJson(toJson());
}

/// [TRight5Builder]
/// TRight definition - builder version for mutability
class TRight5Builder extends ElementBuilder {
  /// Constructor for TRight5Builder
  TRight5Builder({
    super.id,
    super.extension_,
    this.a22,
    super.disallowExtensions,
    super.objectPath = 'TRight5Builder',
  });

  /// An empty constructor for partial usage
  factory TRight5Builder.empty() => TRight5Builder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TRight5Builder.fromJson(Map<String, dynamic> json) {
    final objectPath = json['resourceType'] as String? ?? 'TRight5';
    return TRight5Builder(
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
      a22: JsonParser.parsePrimitiveList<FhirStringBuilder>(
        json,
        'a22',
        FhirStringBuilder.fromJson,
        '$objectPath.a22',
      ),
    );
  }

  /// [a22]
  /// TRight definition
  List<FhirStringBuilder>? a22;

  @override
  String get fhirType => 'TRight5';

  /// converts a [TRight5Builder]
  /// to [TRight5]
  @override
  TRight5 build() => TRight5.fromJson(toJson());

  @override
  TRight5Builder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirStringBuilder>? a22,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return TRight5Builder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      a22: a22 ?? this.a22,
      objectPath: newObjectPath,
    );
  }

  @override
  List<String> listChildrenNames() => ['id', 'extension', 'a22'];

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
      case 'a22':
        if (a22 != null) {
          fields.addAll(a22!);
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
      case 'a22':
        {
          if (child is List<FhirStringBuilder>) {
            // Replace or create new list
            a22 = child;
            return;
          } else if (child is FhirStringBuilder) {
            // Add single element to existing list or create new list
            a22 = [...(a22 ?? []), child];
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
      case 'a22':
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
      case 'a22':
        {
          a22 = <FhirStringBuilder>[];
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
    bool a22 = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (a22) this.a22 = null;
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
    addField('a22', a22);
    return json;
  }

  @override
  bool equalsDeep(FhirBaseBuilder? other) {
    if (other is! TRight5Builder) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        listEquals<FhirBaseBuilder>(extension_, other.extension_) &&
        listEquals<FhirBaseBuilder>(a22, other.a22);
  }

  @override
  TRight5Builder clone() => copyWith();
}
