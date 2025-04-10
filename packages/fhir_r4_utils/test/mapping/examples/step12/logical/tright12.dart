import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart'
    show
        $BackboneElementCopyWith,
        BackboneElement,
        Element,
        FhirBase,
        FhirExtension,
        FhirString;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';

/// [TRight12]
/// TRight definition
class TRight12 extends Element {
  const TRight12({
    super.id,
    super.extension_,
    this.az1,
    super.disallowExtensions,
  });

  /// Factory constructor for an empty [TRight12]
  factory TRight12.empty() => const TRight12();

  factory TRight12.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TRight12';
    return TRight12(
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
      az1: (json['az1'] as List<dynamic>?)
          ?.map<TRight12az1>(
            (v) => TRight12az1.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.az1',
              },
            ),
          )
          .toList(),
    );
  }

  /// [az1]
  /// A list of TRight12az1 elements
  final List<TRight12az1>? az1;

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'resourceType': 'TRight'};
    if (id != null) json['id'] = id!.valueString;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (az1 != null) {
      json['az1'] = az1!.map((e) => e.toJson()).toList();
    }
    return json;
  }

  @override
  bool equalsDeep(FhirBase? other) {
    if (other is! TRight12) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        const DeepCollectionEquality().equals(extension_, other.extension_) &&
        const DeepCollectionEquality().equals(az1, other.az1);
  }
}

/// [TRight12az1]
/// Inner BackboneElement for TRight.az1
class TRight12az1 extends BackboneElement {
  const TRight12az1({
    super.id,
    super.extension_,
    this.az2,
    this.az3,
    super.disallowExtensions,
  });

  factory TRight12az1.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TRight12az1';
    return TRight12az1(
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
      az2: JsonParser.parsePrimitive<FhirString>(
        json,
        'az2',
        FhirString.fromJson,
        '$objectPath.az2',
      ),
      az3: JsonParser.parsePrimitive<FhirString>(
        json,
        'az3',
        FhirString.fromJson,
        '$objectPath.az3',
      ),
    );
  }

  /// [az2]
  /// A single string field
  final FhirString? az2;

  /// [az3]
  /// A single string field
  final FhirString? az3;

  @override
  TRight12az1 clone() => copyWith();

  @override
  $BackboneElementCopyWith<TRight12az1> get copyWith {
    throw UnimplementedError(
      'TLeft12az1.copyWith() is not implemented yet',
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) json['id'] = id!.valueString;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (az2 != null) json['az2'] = az2!.valueString;
    if (az3 != null) json['az3'] = az3!.valueString;
    return json;
  }

  @override
  bool equalsDeep(FhirBase? other) {
    if (other is! TRight12az1) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        const DeepCollectionEquality().equals(extension_, other.extension_) &&
        az2 == other.az2 &&
        az3 == other.az3;
  }
}

/// Extension to convert [TRight12] to a Builder
extension BuilderTRight12 on TRight12 {
  /// Converts [TRight12] to a [TRight12Builder]
  TRight12Builder get toBuilder => TRight12Builder.fromJson(toJson());
}

/// [TRight12Builder]
/// TRight definition - builder version for mutability
class TRight12Builder extends ElementBuilder {
  /// Constructor for TRight12Builder
  TRight12Builder({
    super.id,
    super.extension_,
    this.az1,
    super.disallowExtensions,
    super.objectPath = 'TRight12Builder',
  });

  /// An empty constructor for partial usage
  factory TRight12Builder.empty() => TRight12Builder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TRight12Builder.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TRight12';
    return TRight12Builder(
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
      az1: (json['az1'] as List<dynamic>?)
          ?.map<TRight12az1Builder>(
            (v) => TRight12az1Builder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.az1',
              },
            ),
          )
          .toList(),
    );
  }

  /// [az1]
  /// A list of TRight12az1Builder elements
  List<TRight12az1Builder>? az1;

  @override
  String get fhirType => 'TRight12';

  /// converts a [TRight12Builder]
  /// to [TRight12]
  @override
  TRight12 build() => TRight12.fromJson(toJson());

  @override
  TRight12Builder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<TRight12az1Builder>? az1,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return TRight12Builder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      az1: az1 ?? this.az1,
      objectPath: newObjectPath,
    );
  }

  @override
  List<String> listChildrenNames() => ['id', 'extension', 'az1'];

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
      case 'az1':
        if (az1 != null) {
          fields.addAll(az1!);
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
      case 'az1':
        {
          if (child is List<TRight12az1Builder>) {
            // Replace or create new list
            az1 = child;
            return;
          } else if (child is TRight12az1Builder) {
            // Add single element to existing list or create new list
            az1 = [...(az1 ?? []), child];
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
      case 'az1':
        return ['TRight12az1Builder'];
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
      case 'az1':
        {
          az1 = <TRight12az1Builder>[];
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
    addField('az1', az1);
    return json;
  }

  @override
  bool equalsDeep(FhirBaseBuilder? other) {
    if (other is! TRight12Builder) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        listEquals<FhirBaseBuilder>(extension_, other.extension_) &&
        listEquals<FhirBaseBuilder>(az1, other.az1);
  }

  @override
  TRight12Builder clone() => copyWith();
}

/// Extension to convert [TRight12az1] to a Builder
extension BuilderTRight12az1 on TRight12az1 {
  /// Converts [TRight12az1] to a [TRight12az1Builder]
  TRight12az1Builder get toBuilder => TRight12az1Builder.fromJson(toJson());
}

/// [TRight12az1Builder]
/// Inner BackboneElement for TRight.az1 - builder version for mutability
class TRight12az1Builder extends BackboneElementBuilder {
  /// Constructor for TRight12az1Builder
  TRight12az1Builder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.az2,
    this.az3,
    super.disallowExtensions,
    super.objectPath = 'TRight12az1Builder',
  });

  /// An empty constructor for partial usage
  factory TRight12az1Builder.empty() => TRight12az1Builder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TRight12az1Builder.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TRight12az1';
    return TRight12az1Builder(
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
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      az2: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'az2',
        FhirStringBuilder.fromJson,
        '$objectPath.az2',
      ),
      az3: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'az3',
        FhirStringBuilder.fromJson,
        '$objectPath.az3',
      ),
    );
  }

  /// [az2]
  /// A single string field
  FhirStringBuilder? az2;

  /// [az3]
  /// A single string field
  FhirStringBuilder? az3;

  @override
  String get fhirType => 'TRight12az1';

  /// converts a [TRight12az1Builder]
  /// to [TRight12az1]
  @override
  TRight12az1 build() => TRight12az1.fromJson(toJson());

  @override
  TRight12az1Builder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? az2,
    FhirStringBuilder? az3,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return TRight12az1Builder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      az2: az2 ?? this.az2,
      az3: az3 ?? this.az3,
      objectPath: newObjectPath,
    );
  }

  @override
  List<String> listChildrenNames() =>
      ['id', 'extension', 'modifierExtension', 'az2', 'az3'];

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
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'az2':
        if (az2 != null) {
          fields.add(az2!);
        }
      case 'az3':
        if (az3 != null) {
          fields.add(az3!);
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
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'az2':
        {
          if (child is FhirStringBuilder) {
            az2 = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                az2 = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'az3':
        {
          if (child is FhirStringBuilder) {
            az3 = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                az3 = converted;
                return;
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
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'az2':
        return ['FhirStringBuilder'];
      case 'az3':
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
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'az2':
        {
          az2 = FhirStringBuilder.empty();
          return;
        }
      case 'az3':
        {
          az3 = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
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
    addField('modifierExtension', modifierExtension);
    addField('az2', az2);
    addField('az3', az3);
    return json;
  }

  @override
  bool equalsDeep(FhirBaseBuilder? other) {
    if (other is! TRight12az1Builder) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        listEquals<FhirBaseBuilder>(extension_, other.extension_) &&
        listEquals<FhirBaseBuilder>(
          modifierExtension,
          other.modifierExtension,
        ) &&
        az2 == other.az2 &&
        az3 == other.az3;
  }

  @override
  TRight12az1Builder clone() => copyWith();
}
