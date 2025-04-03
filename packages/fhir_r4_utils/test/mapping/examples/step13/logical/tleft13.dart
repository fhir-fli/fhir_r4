import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart'
    show Element, FhirBase, FhirExtension, FhirString;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';

/// [TLeft13]
/// TLeft definition
class TLeft13 extends Element {
  const TLeft13({
    super.id,
    super.extension_,
    this.f1,
    super.disallowExtensions,
    super.objectPath = 'TLeft13',
  });

  factory TLeft13.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TLeft13';
    return TLeft13(
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
      f1: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'f1',
        FhirString.fromJson,
        '$objectPath.f1',
      ),
    );
  }

  /// [f1]
  /// A list of string elements
  final List<FhirString>? f1;

  @override
  TLeft13 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirString>? f1,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return TLeft13(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      f1: f1 ?? this.f1,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'resourceType': 'TLeft'};
    if (id != null) json['id'] = id!.valueString;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (f1 != null) json['f1'] = f1!.map((e) => e.valueString).toList();
    return json;
  }

  @override
  List<String> listChildrenNames() => ['id', 'extension', 'f1'];

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
      case 'f1':
        if (f1 != null) fields.addAll(f1!);
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
    if (other is! TLeft13) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        const DeepCollectionEquality().equals(extension_, other.extension_) &&
        const DeepCollectionEquality().equals(f1, other.f1);
  }
}

/// Extension to convert [TLeft13] to a Builder
extension BuilderTLeft13 on TLeft13 {
  /// Converts [TLeft13] to a [TLeft13Builder]
  TLeft13Builder get toBuilder => TLeft13Builder.fromJson(toJson());
}

/// [TLeft13Builder]
/// TLeft definition - builder version for mutability
class TLeft13Builder extends ElementBuilder {
  /// Constructor for TLeft13Builder
  TLeft13Builder({
    super.id,
    super.extension_,
    this.f1,
    super.disallowExtensions,
    super.objectPath = 'TLeft13Builder',
  });

  /// An empty constructor for partial usage
  factory TLeft13Builder.empty() => TLeft13Builder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TLeft13Builder.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TLeft13';
    return TLeft13Builder(
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
      f1: JsonParser.parsePrimitiveList<FhirStringBuilder>(
        json,
        'f1',
        FhirStringBuilder.fromJson,
        '$objectPath.f1',
      ),
    );
  }

  /// [f1]
  /// A list of string elements
  List<FhirStringBuilder>? f1;

  @override
  String get fhirType => 'TLeft13';

  /// converts a [TLeft13Builder]
  /// to [TLeft13]
  @override
  TLeft13 build() => TLeft13.fromJson(toJson());

  @override
  TLeft13Builder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirStringBuilder>? f1,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return TLeft13Builder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      f1: f1 ?? this.f1,
      objectPath: newObjectPath,
    );
  }

  @override
  List<String> listChildrenNames() => ['id', 'extension', 'f1'];

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
      case 'f1':
        if (f1 != null) {
          fields.addAll(f1!);
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
      case 'f1':
        {
          if (child is List<FhirStringBuilder>) {
            // Replace or create new list
            f1 = child;
            return;
          } else if (child is FhirStringBuilder) {
            // Add single element to existing list or create new list
            f1 = [...(f1 ?? []), child];
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
      case 'f1':
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
      case 'f1':
        {
          f1 = <FhirStringBuilder>[];
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
    bool f1 = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (f1) this.f1 = null;
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
    addField('f1', f1);
    return json;
  }

  @override
  bool equalsDeep(FhirBaseBuilder? other) {
    if (other is! TLeft13Builder) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        listEquals<FhirBaseBuilder>(extension_, other.extension_) &&
        listEquals<FhirBaseBuilder>(f1, other.f1);
  }

  @override
  TLeft13Builder clone() => copyWith();
}
