import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart'
    show Basic, Element, FhirBase, FhirExtension, FhirString;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';

/// [TRight13]
/// TRight definition
class TRight13 extends Element {
  const TRight13({
    super.id,
    super.extension_,
    this.ptr,
    this.f2,
    super.disallowExtensions,
    super.objectPath = 'TRight13',
  });

  /// An empty constructor for partial usage
  factory TRight13.empty() => const TRight13();

  factory TRight13.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TRight13';
    return TRight13(
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
      ptr: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'ptr',
        FhirString.fromJson,
        '$objectPath.ptr',
      ),
      f2: (json['f2'] as List<dynamic>?)
          ?.map<Basic>(
            (v) => Basic.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.f2',
              },
            ),
          )
          .toList(),
    );
  }

  /// [ptr]
  /// A list of string elements
  final List<FhirString>? ptr;

  /// [f2]
  /// A list of Basic elements
  final List<Basic>? f2;

  @override
  TRight13 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirString>? ptr,
    List<Basic>? f2,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return TRight13(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      ptr: ptr ?? this.ptr,
      f2: f2 ?? this.f2,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'resourceType': 'TRight'};
    if (id != null) json['id'] = id!.valueString;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (ptr != null) json['ptr'] = ptr!.map((e) => e.valueString).toList();
    if (f2 != null) json['f2'] = f2!.map((e) => e.toJson()).toList();
    return json;
  }

  @override
  List<String> listChildrenNames() => ['id', 'extension', 'ptr', 'f2'];

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
      case 'ptr':
        if (ptr != null) fields.addAll(ptr!);
      case 'f2':
        if (f2 != null) fields.addAll(f2!);
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
    if (other is! TRight13) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        const DeepCollectionEquality().equals(extension_, other.extension_) &&
        const DeepCollectionEquality().equals(ptr, other.ptr) &&
        const DeepCollectionEquality().equals(f2, other.f2);
  }
}

/// Extension to convert [TRight13] to a Builder
extension BuilderTRight13 on TRight13 {
  /// Converts [TRight13] to a [TRight13Builder]
  TRight13Builder get toBuilder => TRight13Builder.fromJson(toJson());
}

/// [TRight13Builder]
/// TRight definition - builder version for mutability
class TRight13Builder extends ElementBuilder {
  /// Constructor for TRight13Builder
  TRight13Builder({
    super.id,
    super.extension_,
    this.ptr,
    this.f2,
    super.disallowExtensions,
    super.objectPath = 'TRight13Builder',
  });

  /// An empty constructor for partial usage
  factory TRight13Builder.empty() => TRight13Builder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TRight13Builder.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TRight13';
    return TRight13Builder(
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
      ptr: JsonParser.parsePrimitiveList<FhirStringBuilder>(
        json,
        'ptr',
        FhirStringBuilder.fromJson,
        '$objectPath.ptr',
      ),
      f2: (json['f2'] as List<dynamic>?)
          ?.map<BasicBuilder>(
            (v) => BasicBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.f2',
              },
            ),
          )
          .toList(),
    );
  }

  /// [ptr]
  /// A list of string elements
  List<FhirStringBuilder>? ptr;

  /// [f2]
  /// A list of Basic elements
  List<BasicBuilder>? f2;

  @override
  String get fhirType => 'TRight13';

  /// converts a [TRight13Builder]
  /// to [TRight13]
  @override
  TRight13 build() => TRight13.fromJson(toJson());

  @override
  TRight13Builder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirStringBuilder>? ptr,
    List<BasicBuilder>? f2,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return TRight13Builder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      ptr: ptr ?? this.ptr,
      f2: f2 ?? this.f2,
      objectPath: newObjectPath,
    );
  }

  @override
  List<String> listChildrenNames() => ['id', 'extension', 'ptr', 'f2'];

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
      case 'ptr':
        if (ptr != null) {
          fields.addAll(ptr!);
        }
      case 'f2':
        if (f2 != null) {
          fields.addAll(f2!);
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
      case 'ptr':
        {
          if (child is List<FhirStringBuilder>) {
            // Replace or create new list
            ptr = child;
            return;
          } else if (child is FhirStringBuilder) {
            // Add single element to existing list or create new list
            ptr = [...(ptr ?? []), child];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirStringBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirStringBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              ptr = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                ptr = [...(ptr ?? []), converted];
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'f2':
        {
          if (child is List<BasicBuilder>) {
            // Replace or create new list
            f2 = child;
            return;
          } else if (child is BasicBuilder) {
            // Add single element to existing list or create new list
            f2 = [...(f2 ?? []), child];
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
      case 'ptr':
        return ['FhirStringBuilder'];
      case 'f2':
        return ['BasicBuilder'];
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
      case 'ptr':
        {
          ptr = <FhirStringBuilder>[];
          return;
        }
      case 'f2':
        {
          f2 = <BasicBuilder>[];
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
    bool ptr = false,
    bool f2 = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (ptr) this.ptr = null;
    if (f2) this.f2 = null;
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
    addField('ptr', ptr);
    addField('f2', f2);
    return json;
  }

  @override
  bool equalsDeep(FhirBaseBuilder? other) {
    if (other is! TRight13Builder) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        listEquals<FhirBaseBuilder>(extension_, other.extension_) &&
        listEquals<FhirBaseBuilder>(ptr, other.ptr) &&
        listEquals<FhirBaseBuilder>(f2, other.f2);
  }

  @override
  TRight13Builder clone() => copyWith();
}
