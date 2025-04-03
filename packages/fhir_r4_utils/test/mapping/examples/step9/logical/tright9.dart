import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart'
    show Element, FhirBase, FhirExtension, FhirString;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';

/// [TRight9]
/// TRight definition
class TRight9 extends Element {
  const TRight9({
    super.id,
    super.extension_,
    this.j,
    this.k,
    super.disallowExtensions,
    super.objectPath = 'TRight9',
  });

  /// factory constructor for an empty object
  factory TRight9.empty() = TRight9;

  /// FromJson Factory Constructor
  factory TRight9.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TRight9';
    return TRight9(
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
      j: JsonParser.parsePrimitive<FhirString>(
        json,
        'j',
        FhirString.fromJson,
        '$objectPath.j',
      ),
      k: JsonParser.parsePrimitive<FhirString>(
        json,
        'k',
        FhirString.fromJson,
        '$objectPath.k',
      ),
    );
  }

  /// [j]
  /// An optional string field
  final FhirString? j;

  /// [k]
  /// An optional string field
  final FhirString? k;

  @override
  TRight9 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? j,
    FhirString? k,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return TRight9(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      j: j ?? this.j,
      k: k ?? this.k,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'resourceType': 'TRight'};
    if (id != null) json['id'] = id!.valueString;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (j != null) json['j'] = j!.valueString;
    if (k != null) json['k'] = k!.valueString;
    return json;
  }

  @override
  List<String> listChildrenNames() => ['id', 'extension', 'j', 'k'];

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
      case 'j':
        if (j != null) fields.add(j!);
      case 'k':
        if (k != null) fields.add(k!);
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
    if (other is! TRight9) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        const DeepCollectionEquality().equals(extension_, other.extension_) &&
        j == other.j &&
        k == other.k;
  }
}

/// Extension to convert [TRight9] to a Builder
extension BuilderTRight9 on TRight9 {
  /// Converts [TRight9] to a [TRight9Builder]
  TRight9Builder get toBuilder => TRight9Builder.fromJson(toJson());
}

/// [TRight9Builder]
/// TRight definition - builder version for mutability
class TRight9Builder extends ElementBuilder {
  /// Constructor for TRight9Builder
  TRight9Builder({
    super.id,
    super.extension_,
    this.j,
    this.k,
    super.disallowExtensions,
    super.objectPath = 'TRight9Builder',
  });

  /// An empty constructor for partial usage
  factory TRight9Builder.empty() => TRight9Builder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TRight9Builder.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TRight9';
    return TRight9Builder(
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
      j: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'j',
        FhirStringBuilder.fromJson,
        '$objectPath.j',
      ),
      k: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'k',
        FhirStringBuilder.fromJson,
        '$objectPath.k',
      ),
    );
  }

  /// [j]
  /// An optional string field
  FhirStringBuilder? j;

  /// [k]
  /// An optional string field
  FhirStringBuilder? k;

  @override
  String get fhirType => 'TRight9';

  /// converts a [TRight9Builder]
  /// to [TRight9]
  @override
  TRight9 build() => TRight9.fromJson(toJson());

  @override
  TRight9Builder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    FhirStringBuilder? j,
    FhirStringBuilder? k,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return TRight9Builder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      j: j ?? this.j,
      k: k ?? this.k,
      objectPath: newObjectPath,
    );
  }

  @override
  List<String> listChildrenNames() => ['id', 'extension', 'j', 'k'];

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
      case 'j':
        if (j != null) {
          fields.add(j!);
        }
      case 'k':
        if (k != null) {
          fields.add(k!);
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
      case 'j':
        {
          if (child is FhirStringBuilder) {
            j = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'k':
        {
          if (child is FhirStringBuilder) {
            k = child;
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
      case 'j':
        return ['FhirStringBuilder'];
      case 'k':
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
      case 'j':
        {
          j = FhirStringBuilder.empty();
          return;
        }
      case 'k':
        {
          k = FhirStringBuilder.empty();
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
    bool j = false,
    bool k = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (j) this.j = null;
    if (k) this.k = null;
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
    addField('j', j);
    addField('k', k);
    return json;
  }

  @override
  bool equalsDeep(FhirBaseBuilder? other) {
    if (other is! TRight9Builder) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        listEquals<FhirBaseBuilder>(extension_, other.extension_) &&
        j == other.j &&
        k == other.k;
  }

  @override
  TRight9Builder clone() => copyWith();
}
