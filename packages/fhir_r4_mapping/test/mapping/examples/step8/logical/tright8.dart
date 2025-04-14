import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart'
    show Element, FhirBase, FhirCode, FhirExtension, FhirString;
import 'package:fhir_r4_mapping/fhir_r4_mapping.dart';

/// [TRight8]
/// TRight definition
class TRight8 extends Element {
  const TRight8({
    super.id,
    super.extension_,
    this.d,
    super.disallowExtensions,
  });

  /// An empty constructor for partial usage
  factory TRight8.empty() => const TRight8();

  /// FromJson Factory Constructor
  factory TRight8.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TRight8';
    return TRight8(
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
      d: JsonParser.parsePrimitive<FhirCode>(
        json,
        'd',
        FhirCode.fromJson,
        '$objectPath.d',
      ),
    );
  }

  /// [d]
  /// A code field
  final FhirCode? d;

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'resourceType': 'TRight'};
    if (id != null) json['id'] = id!.valueString;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (d != null) {
      json['d'] = d!.valueString;
    }
    return json;
  }

  @override
  bool equalsDeep(FhirBase? other) {
    if (other is! TRight8) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        const DeepCollectionEquality().equals(extension_, other.extension_) &&
        d == other.d;
  }
}

/// Extension to convert [TRight8] to a Builder
extension BuilderTRight8 on TRight8 {
  /// Converts [TRight8] to a [TRight8Builder]
  TRight8Builder get toBuilder => TRight8Builder.fromJson(toJson());
}

/// [TRight8Builder]
/// TRight definition - builder version for mutability
class TRight8Builder extends ElementBuilder {
  /// Constructor for TRight8Builder
  TRight8Builder({
    super.id,
    super.extension_,
    this.d,
    super.disallowExtensions,
    super.objectPath = 'TRight8Builder',
  });

  /// An empty constructor for partial usage
  factory TRight8Builder.empty() => TRight8Builder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TRight8Builder.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TRight8';
    return TRight8Builder(
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
      d: JsonParser.parsePrimitive<FhirCodeBuilder>(
        json,
        'd',
        FhirCodeBuilder.fromJson,
        '$objectPath.d',
      ),
    );
  }

  /// [d]
  /// A code field
  FhirCodeBuilder? d;

  @override
  String get fhirType => 'TRight8';

  /// converts a [TRight8Builder]
  /// to [TRight8]
  @override
  TRight8 build() => TRight8.fromJson(toJson());

  @override
  TRight8Builder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    FhirCodeBuilder? d,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return TRight8Builder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      d: d ?? this.d,
      objectPath: newObjectPath,
    );
  }

  @override
  List<String> listChildrenNames() => ['id', 'extension', 'd'];

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
      case 'd':
        if (d != null) {
          fields.add(d!);
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
      case 'd':
        {
          if (child is FhirCodeBuilder) {
            d = child;
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
      case 'd':
        return ['FhirCodeBuilder'];
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
      case 'd':
        {
          d = FhirCodeBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
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
    addField('d', d);
    return json;
  }

  @override
  bool equalsDeep(FhirBaseBuilder? other) {
    if (other is! TRight8Builder) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        listEquals<FhirBaseBuilder>(extension_, other.extension_) &&
        d == other.d;
  }

  @override
  TRight8Builder clone() => copyWith();
}
