import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart'
    show Element, FhirBase, FhirExtension, FhirString;
import 'package:fhir_r4_mapping/fhir_r4_mapping.dart';

import 'tleft_inner10.dart';

/// [TLeft10]
/// TLeft definition
class TLeft10 extends Element {
  const TLeft10({
    super.id,
    super.extension_,
    this.aa,
    super.disallowExtensions,
  });

  factory TLeft10.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TLeft10';
    return TLeft10(
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
      aa: (json['aa'] as List<dynamic>?)
          ?.map<TLeftInner10>(
            (v) => TLeftInner10.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.aa',
              },
            ),
          )
          .toList(),
    );
  }

  /// [aa]
  /// A list of TLeftInner10 elements
  final List<TLeftInner10>? aa;

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'resourceType': 'TLeft'};
    if (id != null) json['id'] = id!.valueString;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (aa != null) {
      json['aa'] = aa!.map((e) => e.toJson()).toList();
    }
    return json;
  }

  @override
  bool equalsDeep(FhirBase? other) {
    if (other is! TLeft10) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        const DeepCollectionEquality().equals(extension_, other.extension_) &&
        const DeepCollectionEquality().equals(aa, other.aa);
  }
}

/// Extension to convert [TLeft10] to a Builder
extension BuilderTLeft10 on TLeft10 {
  /// Converts [TLeft10] to a [TLeft10Builder]
  TLeft10Builder get toBuilder => TLeft10Builder.fromJson(toJson());
}

/// [TLeft10Builder]
/// TLeft definition - builder version for mutability
class TLeft10Builder extends ElementBuilder {
  /// Constructor for TLeft10Builder
  TLeft10Builder({
    super.id,
    super.extension_,
    this.aa,
    super.disallowExtensions,
    super.objectPath = 'TLeft10Builder',
  });

  /// An empty constructor for partial usage
  factory TLeft10Builder.empty() => TLeft10Builder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TLeft10Builder.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TLeft10';
    return TLeft10Builder(
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
      aa: (json['aa'] as List<dynamic>?)
          ?.map<TLeftInner10Builder>(
            (v) => TLeftInner10Builder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.aa',
              },
            ),
          )
          .toList(),
    );
  }

  /// [aa]
  /// A list of TLeftInner10Builder elements
  List<TLeftInner10Builder>? aa;

  @override
  String get fhirType => 'TLeft10';

  /// converts a [TLeft10Builder]
  /// to [TLeft10]
  @override
  TLeft10 build() => TLeft10.fromJson(toJson());

  @override
  TLeft10Builder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<TLeftInner10Builder>? aa,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return TLeft10Builder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      aa: aa ?? this.aa,
      objectPath: newObjectPath,
    );
  }

  @override
  List<String> listChildrenNames() => ['id', 'extension', 'aa'];

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
      case 'aa':
        if (aa != null) {
          fields.addAll(aa!);
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
      case 'aa':
        {
          if (child is List<TLeftInner10Builder>) {
            // Replace or create new list
            aa = child;
            return;
          } else if (child is TLeftInner10Builder) {
            // Add single element to existing list or create new list
            aa = [...(aa ?? []), child];
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
      case 'aa':
        return ['TLeftInner10Builder'];
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
      case 'aa':
        {
          aa = <TLeftInner10Builder>[];
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
    addField('aa', aa);
    return json;
  }

  @override
  bool equalsDeep(FhirBaseBuilder? other) {
    if (other is! TLeft10Builder) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        listEquals<FhirBaseBuilder>(extension_, other.extension_) &&
        listEquals<FhirBaseBuilder>(aa, other.aa);
  }

  @override
  TLeft10Builder clone() => copyWith();
}
