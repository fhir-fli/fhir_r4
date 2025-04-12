import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart'
    show Element, FhirBase, FhirExtension, FhirString;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';

/// [TLeft15]
/// TLeft definition
class TLeft15 extends Element {
  const TLeft15({
    super.id,
    super.extension_,
    this.a,
    this.b,
    this.test,
    super.disallowExtensions,
  });

  factory TLeft15.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TLeft15';
    return TLeft15(
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
      a: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'a',
        FhirString.fromJson,
        '$objectPath.a',
      ),
      b: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'b',
        FhirString.fromJson,
        '$objectPath.b',
      ),
      test: JsonParser.parsePrimitive<FhirString>(
        json,
        'test',
        FhirString.fromJson,
        '$objectPath.test',
      ),
    );
  }

  /// [a]
  /// List of string elements
  final List<FhirString>? a;

  /// [b]
  /// List of string elements
  final List<FhirString>? b;

  /// [test]
  /// A single string element
  final FhirString? test;

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'resourceType': 'TLeft'};
    if (id != null) json['id'] = id!.valueString;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (a != null) json['a'] = a!.map((e) => e.valueString).toList();
    if (b != null) json['b'] = b!.map((e) => e.valueString).toList();
    if (test != null) json['test'] = test!.valueString;
    return json;
  }

  @override
  List<String> listChildrenNames() => ['id', 'extension', 'a', 'b', 'test'];

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
      case 'a':
        if (a != null) fields.addAll(a!);
      case 'b':
        if (b != null) fields.addAll(b!);
      case 'test':
        if (test != null) fields.add(test!);
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
    if (other is! TLeft15) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        const DeepCollectionEquality().equals(extension_, other.extension_) &&
        const DeepCollectionEquality().equals(a, other.a) &&
        const DeepCollectionEquality().equals(b, other.b) &&
        test == other.test;
  }
}

/// Extension to convert [TLeft15] to a Builder
extension BuilderTLeft15 on TLeft15 {
  /// Converts [TLeft15] to a [TLeft15Builder]
  TLeft15Builder get toBuilder => TLeft15Builder.fromJson(toJson());
}

/// [TLeft15Builder]
/// TLeft definition - builder version for mutability
class TLeft15Builder extends ElementBuilder {
  /// Constructor for TLeft15Builder
  TLeft15Builder({
    super.id,
    super.extension_,
    this.a,
    this.b,
    this.test,
    super.disallowExtensions,
    super.objectPath = 'TLeft15Builder',
  });

  /// An empty constructor for partial usage
  factory TLeft15Builder.empty() => TLeft15Builder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TLeft15Builder.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TLeft15';
    return TLeft15Builder(
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
      a: JsonParser.parsePrimitiveList<FhirStringBuilder>(
        json,
        'a',
        FhirStringBuilder.fromJson,
        '$objectPath.a',
      ),
      b: JsonParser.parsePrimitiveList<FhirStringBuilder>(
        json,
        'b',
        FhirStringBuilder.fromJson,
        '$objectPath.b',
      ),
      test: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'test',
        FhirStringBuilder.fromJson,
        '$objectPath.test',
      ),
    );
  }

  /// [a]
  /// List of string elements
  List<FhirStringBuilder>? a;

  /// [b]
  /// List of string elements
  List<FhirStringBuilder>? b;

  /// [test]
  /// A single string element
  FhirStringBuilder? test;

  @override
  String get fhirType => 'TLeft15';

  /// converts a [TLeft15Builder]
  /// to [TLeft15]
  @override
  TLeft15 build() => TLeft15.fromJson(toJson());

  @override
  TLeft15Builder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirStringBuilder>? a,
    List<FhirStringBuilder>? b,
    FhirStringBuilder? test,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return TLeft15Builder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      a: a ?? this.a,
      b: b ?? this.b,
      test: test ?? this.test,
      objectPath: newObjectPath,
    );
  }

  @override
  List<String> listChildrenNames() => ['id', 'extension', 'a', 'b', 'test'];

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
      case 'a':
        if (a != null) {
          fields.addAll(a!);
        }
      case 'b':
        if (b != null) {
          fields.addAll(b!);
        }
      case 'test':
        if (test != null) {
          fields.add(test!);
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
      case 'a':
        {
          if (child is List<FhirStringBuilder>) {
            // Replace or create new list
            a = child;
            return;
          } else if (child is FhirStringBuilder) {
            // Add single element to existing list or create new list
            a = [...(a ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'b':
        {
          if (child is List<FhirStringBuilder>) {
            // Replace or create new list
            b = child;
            return;
          } else if (child is FhirStringBuilder) {
            // Add single element to existing list or create new list
            b = [...(b ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'test':
        {
          if (child is FhirStringBuilder) {
            test = child;
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
      case 'b':
        return ['FhirStringBuilder'];
      case 'test':
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
          a = <FhirStringBuilder>[];
          return;
        }
      case 'b':
        {
          b = <FhirStringBuilder>[];
          return;
        }
      case 'test':
        {
          test = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
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
    addField('a', a);
    addField('b', b);
    addField('test', test);
    return json;
  }

  @override
  bool equalsDeep(FhirBaseBuilder? other) {
    if (other is! TLeft15Builder) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        listEquals<FhirBaseBuilder>(extension_, other.extension_) &&
        listEquals<FhirBaseBuilder>(a, other.a) &&
        listEquals<FhirBaseBuilder>(b, other.b) &&
        test == other.test;
  }

  @override
  TLeft15Builder clone() => copyWith();
}
