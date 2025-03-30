import 'package:fhir_r4/fhir_r4.dart'
    show Element, FhirBase, FhirExtension, FhirString;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';

/// [TLeft2]
/// TLeft definition
class TLeft2 extends Element {
  const TLeft2({
    super.id,
    super.extension_,
    this.a1,
    super.disallowExtensions,
    super.objectPath = 'TLeft2',
  });

  /// FromJson Factory Constructor
  factory TLeft2.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TLeft2';
    return TLeft2(
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
      a1: JsonParser.parsePrimitive<FhirString>(
        json,
        'a1',
        FhirString.fromJson,
        '$objectPath.a1',
      ),
    );
  }

  /// [a1]
  /// TLeft definition
  final FhirString? a1;

  @override
  TLeft2 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? a1,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return TLeft2(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      a1: a1 ?? this.a1,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) json['id'] = id!.value;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (a1 != null) {
      json['a1'] = a1!.value;
    }
    return json;
  }

  @override
  List<FhirBase> getChildrenByName(String name, [bool ordered = true]) {
    switch (name) {
      case 'id':
        return [id!];
      case 'extension':
        return extension_!;
      case 'a1':
        return a1 == null ? [] : [a1!];
      default:
        return [];
    }
  }
}

/// Extension to convert [TLeft2] to a Builder
extension BuilderTLeft2 on TLeft2 {
  /// Converts [TLeft2] to a [TLeft2Builder]
  TLeft2Builder get toBuilder => TLeft2Builder.fromJson(toJson());
}

/// [TLeft2Builder]
/// TLeft definition - builder version for mutability
class TLeft2Builder extends ElementBuilder {
  /// Constructor for TLeft2Builder
  TLeft2Builder({
    super.id,
    super.extension_,
    this.a1,
    super.disallowExtensions,
    super.objectPath = 'TLeft2Builder',
  });

  /// An empty constructor for partial usage
  factory TLeft2Builder.empty() => TLeft2Builder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TLeft2Builder.fromJson(Map<String, dynamic> json) {
    final objectPath = json['resourceType'] as String? ?? 'TLeft2';
    return TLeft2Builder(
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
      a1: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'a1',
        FhirStringBuilder.fromJson,
        '$objectPath.a1',
      ),
    );
  }

  /// [a1]
  /// TLeft definition
  FhirStringBuilder? a1;

  @override
  String get fhirType => 'TLeft2';

  /// converts a [TLeft2Builder]
  /// to [TLeft2]
  @override
  TLeft2 build() => TLeft2.fromJson(toJson());

  @override
  TLeft2Builder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    FhirStringBuilder? a1,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return TLeft2Builder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      a1: a1 ?? this.a1,
      objectPath: newObjectPath,
    );
  }

  @override
  List<FhirBaseBuilder> getChildrenByName(
    String name, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (name) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'a1':
        if (a1 != null) {
          fields.add(a1!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $name');
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
      case 'a1':
        {
          if (child is FhirStringBuilder) {
            a1 = child;
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
      case 'a1':
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
      case 'a1':
        {
          a1 = FhirStringBuilder.empty();
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
    bool a1 = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (a1) this.a1 = null;
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
    addField('a1', a1);
    return json;
  }

  @override
  TLeft2Builder clone() => copyWith();
}
