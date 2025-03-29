import 'package:fhir_r4/fhir_r4.dart'
    show Element, FhirString, FhirExtension, FhirBase;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';

/// [TRight1]
/// TRight definition
class TRight1 extends Element {
  const TRight1({
    super.id,
    super.extension_,
    this.a,
    super.disallowExtensions,
    super.objectPath = 'TRight1',
  });

  factory TRight1.empty() => const TRight1();

  /// FromJson Factory Constructor
  factory TRight1.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TRight1';
    return TRight1(
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
      a: JsonParser.parsePrimitive<FhirString>(
        json,
        'a',
        FhirString.fromJson,
        '$objectPath.a',
      ),
    );
  }

  /// [a]
  /// TRight definition
  final FhirString? a;

  @override
  String get fhirType => 'TRight1';

  @override
  TRight1 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? a,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return TRight1(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      a: a ?? this.a,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) json['id'] = id!.value;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (a != null) {
      json['a'] = a!.value;
    }
    return json;
  }

  @override
  TRight1 setChildByName(String name, dynamic value) {
    switch (name) {
      case 'id':
        return copyWith(id: value as FhirString);
      case 'extension':
        return copyWith(extension_: value as List<FhirExtension>);
      case 'a':
        return copyWith(a: value as FhirString);
      default:
        throw StateError('Unknown name in TRight1: $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['List<FhirExtension>'];
      case 'a':
        return ['FhirString'];
      default:
        return [];
    }
  }
}

/// Extension to convert [TRight1] to a Builder
extension BuilderTRight1 on TRight1 {
  /// Converts [TRight1] to a [TRight1Builder]
  TRight1Builder get toBuilder => TRight1Builder.fromJson(toJson());
}

/// [TRight1Builder]
/// TRight definition - builder version for mutability
class TRight1Builder extends ElementBuilder {
  /// Constructor for TRight1Builder
  TRight1Builder({
    super.id,
    super.extension_,
    this.a,
    super.disallowExtensions,
    super.objectPath = 'TRight1Builder',
  });

  /// An empty constructor for partial usage
  factory TRight1Builder.empty() => TRight1Builder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TRight1Builder.fromJson(Map<String, dynamic> json) {
    final objectPath = json['resourceType'] as String? ?? 'TRight1';
    return TRight1Builder(
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
      a: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'a',
        FhirStringBuilder.fromJson,
        '$objectPath.a',
      ),
    );
  }

  /// [a]
  /// TRight definition
  FhirStringBuilder? a;

  @override
  String get fhirType => 'TRight1';

  /// Converts a TRight1Builder to [TRight1]
  @override
  TRight1 build() => TRight1.fromJson(toJson());

  @override
  TRight1Builder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    FhirStringBuilder? a,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return TRight1Builder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      a: a ?? this.a,
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
      case 'a':
        if (a != null) {
          fields.add(a!);
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
      case 'a':
        {
          if (child is FhirStringBuilder) {
            a = child;
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
      case 'a':
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
      case 'a':
        {
          a = FhirStringBuilder.empty();
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
    bool a = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (a) this.a = null;
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
    addField('a', a);
    return json;
  }

  @override
  TRight1Builder clone() => copyWith();
}
