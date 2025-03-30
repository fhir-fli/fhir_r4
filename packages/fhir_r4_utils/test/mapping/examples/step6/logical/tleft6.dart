import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart'
    show Element, FhirBase, FhirExtension, FhirString;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';

/// [TLeft6]
/// TLeft definition
class TLeft6 extends Element {
  const TLeft6({
    super.id,
    super.extension_,
    this.a23,
    super.disallowExtensions,
    super.objectPath = 'TLeft6',
  });

  /// FromJson Factory Constructor
  factory TLeft6.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TLeft6';
    return TLeft6(
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
      a23: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'a23',
        FhirString.fromJson,
        '$objectPath.a23',
      ),
    );
  }

  /// [a23]
  /// TLeft definition
  final List<FhirString>? a23;

  @override
  TLeft6 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirString>? a23,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return TLeft6(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      a23: a23 ?? this.a23,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'resourceType': 'TLeft'};
    if (id != null) json['id'] = id!.value;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (a23 != null) {
      json['a23'] = a23!.map((e) => e.value).toList();
    }
    return json;
  }

  @override
  List<String> listChildrenNames() => ['id', 'extension', 'a23'];

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
      case 'a23':
        if (a23 != null) fields.addAll(a23!);
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
    if (o is! TLeft6) return false;
    return id == o.id &&
        const DeepCollectionEquality().equals(extension_, o.extension_) &&
        const DeepCollectionEquality().equals(a23, o.a23);
  }
}

/// Extension to convert [TLeft6] to a Builder
extension BuilderTLeft6 on TLeft6 {
  /// Converts [TLeft6] to a [TLeft6Builder]
  TLeft6Builder get toBuilder => TLeft6Builder.fromJson(toJson());
}

/// [TLeft6Builder]
/// TLeft definition - builder version for mutability
class TLeft6Builder extends ElementBuilder {
  /// Constructor for TLeft6Builder
  TLeft6Builder({
    super.id,
    super.extension_,
    this.a23,
    super.disallowExtensions,
    super.objectPath = 'TLeft6Builder',
  });

  /// An empty constructor for partial usage
  factory TLeft6Builder.empty() => TLeft6Builder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TLeft6Builder.fromJson(Map<String, dynamic> json) {
    final objectPath = json['resourceType'] as String? ?? 'TLeft6';
    return TLeft6Builder(
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
      a23: JsonParser.parsePrimitiveList<FhirStringBuilder>(
        json,
        'a23',
        FhirStringBuilder.fromJson,
        '$objectPath.a23',
      ),
    );
  }

  /// [a23]
  /// TLeft definition
  List<FhirStringBuilder>? a23;

  @override
  String get fhirType => 'TLeft6';

  /// converts a [TLeft6Builder]
  /// to [TLeft6]
  @override
  TLeft6 build() => TLeft6.fromJson(toJson());

  @override
  TLeft6Builder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirStringBuilder>? a23,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return TLeft6Builder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      a23: a23 ?? this.a23,
      objectPath: newObjectPath,
    );
  }

  @override
  List<String> listChildrenNames() => ['id', 'extension', 'a23'];

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
      case 'a23':
        if (a23 != null) {
          fields.addAll(a23!);
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
      case 'a23':
        {
          if (child is List<FhirStringBuilder>) {
            // Replace or create new list
            a23 = child;
            return;
          } else if (child is FhirStringBuilder) {
            // Add single element to existing list or create new list
            a23 = [...(a23 ?? []), child];
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
      case 'a23':
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
      case 'a23':
        {
          a23 = <FhirStringBuilder>[];
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
    bool a23 = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (a23) this.a23 = null;
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
    addField('a23', a23);
    return json;
  }

  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! TLeft6Builder) return false;
    return id == o.id &&
        const DeepCollectionEquality().equals(extension_, o.extension_) &&
        const DeepCollectionEquality().equals(a23, o.a23);
  }

  @override
  TLeft6Builder clone() => copyWith();
}
