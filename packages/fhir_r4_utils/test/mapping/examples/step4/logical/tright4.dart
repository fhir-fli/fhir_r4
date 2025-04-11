import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart'
    show Element, FhirBase, FhirExtension, FhirInteger, FhirString;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';

/// [TRight4]
/// TRight definition
class TRight4 extends Element {
  const TRight4({
    super.id,
    super.extension_,
    this.a21,
    super.disallowExtensions,
  });

  factory TRight4.empty() => const TRight4();

  /// Factory constructor to create an instance of [TRight4] from JSON
  factory TRight4.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TRight4';
    return TRight4(
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
      a21: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'a21',
        FhirInteger.fromJson,
        '$objectPath.a21',
      ),
    );
  }

  /// [a21]
  /// TRight definition
  final FhirInteger? a21;

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'resourceType': 'TRight'};
    if (id != null) json['id'] = id!.valueString;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (a21 != null) {
      json['a21'] = a21!.valueInt;
    }
    return json;
  }

  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! TRight4) return false;
    return id == o.id &&
        const DeepCollectionEquality().equals(extension_, o.extension_) &&
        a21 == o.a21;
  }
}

/// Extension to convert [TRight4] to a Builder
extension BuilderTRight4 on TRight4 {
  /// Converts [TRight4] to a [TRight4Builder]
  TRight4Builder get toBuilder => TRight4Builder.fromJson(toJson());
}

/// [TRight4Builder]
/// TRight definition - builder version for mutability
class TRight4Builder extends ElementBuilder {
  /// Constructor for TRight4Builder
  TRight4Builder({
    super.id,
    super.extension_,
    this.a21,
    super.disallowExtensions,
    super.objectPath = 'TRight4Builder',
  });

  /// An empty constructor for partial usage
  factory TRight4Builder.empty() => TRight4Builder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TRight4Builder.fromJson(Map<String, dynamic> json) {
    final objectPath = json['resourceType'] as String? ?? 'TRight4';
    return TRight4Builder(
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
      a21: JsonParser.parsePrimitive<FhirIntegerBuilder>(
        json,
        'a21',
        FhirIntegerBuilder.fromJson,
        '$objectPath.a21',
      ),
    );
  }

  /// [a21]
  /// TRight definition
  FhirIntegerBuilder? a21;

  @override
  String get fhirType => 'TRight4';

  /// converts a [TRight4Builder]
  /// to [TRight4]
  @override
  TRight4 build() => TRight4.fromJson(toJson());

  @override
  TRight4Builder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    FhirIntegerBuilder? a21,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return TRight4Builder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      a21: a21 ?? this.a21,
      objectPath: newObjectPath,
    );
  }

  @override
  List<String> listChildrenNames() {
    return ['id', 'extension', 'a21'];
  }

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
      case 'a21':
        if (a21 != null) {
          fields.add(a21!);
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
      case 'a21':
        {
          if (child is FhirIntegerBuilder) {
            a21 = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types, first parse to num then use that value
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirIntegerBuilder.tryParse(numValue);
                if (converted != null) {
                  a21 = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
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
      case 'a21':
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
      case 'a21':
        {
          a21 = FhirIntegerBuilder.empty();
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
    addField('a21', a21);
    return json;
  }

  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! TRight4Builder) {
      return false;
    }
    return id == o.id &&
        const DeepCollectionEquality().equals(extension_, o.extension_) &&
        a21 == o.a21;
  }

  @override
  TRight4Builder clone() => copyWith();
}
