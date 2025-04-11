import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart'
    show Element, FhirBase, FhirExtension, FhirInteger, FhirString;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';

/// [TLeft9]
/// TLeft definition
class TLeft9 extends Element {
  const TLeft9({
    super.id,
    super.extension_,
    this.i,
    this.m,
    super.disallowExtensions,
  });

  /// FromJson Factory Constructor
  factory TLeft9.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TLeft9';
    return TLeft9(
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
      i: JsonParser.parsePrimitive<FhirString>(
        json,
        'i',
        FhirString.fromJson,
        '$objectPath.i',
      ),
      m: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'm',
        FhirInteger.fromJson,
        '$objectPath.m',
      ),
    );
  }

  /// [i]
  /// An optional string field
  final FhirString? i;

  /// [m]
  /// A required integer field
  final FhirInteger? m;

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'resourceType': 'TLeft'};
    if (id != null) json['id'] = id!.valueString;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (i != null) json['i'] = i!.valueString;
    if (m != null) json['m'] = m!.valueInt;
    return json;
  }

  @override
  bool equalsDeep(FhirBase? other) {
    if (other is! TLeft9) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        const DeepCollectionEquality().equals(extension_, other.extension_) &&
        i == other.i &&
        m == other.m;
  }
}

/// Extension to convert [TLeft9] to a Builder
extension BuilderTLeft9 on TLeft9 {
  /// Converts [TLeft9] to a [TLeft9Builder]
  TLeft9Builder get toBuilder => TLeft9Builder.fromJson(toJson());
}

/// [TLeft9Builder]
/// TLeft definition - builder version for mutability
class TLeft9Builder extends ElementBuilder {
  /// Constructor for TLeft9Builder
  TLeft9Builder({
    super.id,
    super.extension_,
    this.i,
    this.m,
    super.disallowExtensions,
    super.objectPath = 'TLeft9Builder',
  });

  /// An empty constructor for partial usage
  factory TLeft9Builder.empty() => TLeft9Builder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TLeft9Builder.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TLeft9';
    return TLeft9Builder(
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
      i: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'i',
        FhirStringBuilder.fromJson,
        '$objectPath.i',
      ),
      m: JsonParser.parsePrimitive<FhirIntegerBuilder>(
        json,
        'm',
        FhirIntegerBuilder.fromJson,
        '$objectPath.m',
      ),
    );
  }

  /// [i]
  /// An optional string field
  FhirStringBuilder? i;

  /// [m]
  /// A required integer field
  FhirIntegerBuilder? m;

  @override
  String get fhirType => 'TLeft9';

  /// converts a [TLeft9Builder]
  /// to [TLeft9]
  @override
  TLeft9 build() => TLeft9.fromJson(toJson());

  @override
  TLeft9Builder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    FhirStringBuilder? i,
    FhirIntegerBuilder? m,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return TLeft9Builder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      i: i ?? this.i,
      m: m ?? this.m,
      objectPath: newObjectPath,
    );
  }

  @override
  List<String> listChildrenNames() => ['id', 'extension', 'i', 'm'];

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
      case 'i':
        if (i != null) {
          fields.add(i!);
        }
      case 'm':
        if (m != null) {
          fields.add(m!);
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
      case 'i':
        {
          if (child is FhirStringBuilder) {
            i = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'm':
        {
          if (child is FhirIntegerBuilder) {
            m = child;
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
      case 'i':
        return ['FhirStringBuilder'];
      case 'm':
        return ['FhirIntegerBuilder'];
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
      case 'i':
        {
          i = FhirStringBuilder.empty();
          return;
        }
      case 'm':
        {
          m = FhirIntegerBuilder.empty();
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
    addField('i', i);
    addField('m', m);
    return json;
  }

  @override
  bool equalsDeep(FhirBaseBuilder? other) {
    if (other is! TLeft9Builder) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        listEquals<FhirBaseBuilder>(extension_, other.extension_) &&
        i == other.i &&
        m == other.m;
  }

  @override
  TLeft9Builder clone() => copyWith();
}
