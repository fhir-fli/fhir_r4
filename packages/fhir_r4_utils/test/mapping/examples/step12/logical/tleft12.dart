import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart'
    show BackboneElement, Element, FhirBase, FhirExtension, FhirString;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';

/// [TLeft12]
/// TLeft definition
class TLeft12 extends Element {
  const TLeft12({
    super.id,
    super.extension_,
    this.az1,
    super.disallowExtensions,
    super.objectPath = 'TLeft12',
  });

  factory TLeft12.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TLeft12';
    return TLeft12(
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
      az1: JsonParser.parseObject<TLeft12az1>(
        json,
        'az1',
        TLeft12az1.fromJson,
        '$objectPath.az1',
      ),
    );
  }

  /// [az1]
  /// A single BackboneElement field
  final TLeft12az1? az1;

  @override
  TLeft12 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    TLeft12az1? az1,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return TLeft12(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      az1: az1 ?? this.az1,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'resourceType': 'TLeft'};
    if (id != null) json['id'] = id!.value;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (az1 != null) json['az1'] = az1!.toJson();
    return json;
  }

  @override
  List<String> listChildrenNames() => ['id', 'extension', 'az1'];

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
      case 'az1':
        if (az1 != null) fields.add(az1!);
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
    if (other is! TLeft12) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        const DeepCollectionEquality().equals(extension_, other.extension_) &&
        az1 == other.az1;
  }
}

/// [TLeft12az1]
/// Inner BackboneElement for TLeft.az1
class TLeft12az1 extends BackboneElement {
  const TLeft12az1({
    super.id,
    super.extension_,
    this.az2,
    this.az3,
    super.disallowExtensions,
    super.objectPath = 'TLeft12az1',
  });

  factory TLeft12az1.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TLeft12az1';
    return TLeft12az1(
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
      az3: JsonParser.parsePrimitiveList<FhirString>(
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
  /// A list of strings
  final List<FhirString>? az3;

  @override
  TLeft12az1 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? az2,
    List<FhirString>? az3,
    List<FhirExtension>? modifierExtension,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return TLeft12az1(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      az2: az2 ?? this.az2,
      az3: az3 ?? this.az3,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) json['id'] = id!.value;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (az2 != null) json['az2'] = az2!.value;
    if (az3 != null) json['az3'] = az3!.map((e) => e.value).toList();
    return json;
  }

  @override
  List<String> listChildrenNames() => ['id', 'extension', 'az2', 'az3'];

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
      case 'az2':
        if (az2 != null) fields.add(az2!);
      case 'az3':
        if (az3 != null) fields.addAll(az3!);
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
    if (other is! TLeft12az1) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        const DeepCollectionEquality().equals(extension_, other.extension_) &&
        az2 == other.az2 &&
        const DeepCollectionEquality().equals(az3, other.az3);
  }

  @override
  TLeft12az1 createProperty(String elementName) {
    throw UnimplementedError();
  }

  @override
  TLeft12az1 clear({bool extension_ = false, bool id = false}) {
    throw UnimplementedError();
  }
}

/// Extension to convert [TLeft12az1] to a Builder
extension BuilderTLeft12az1 on TLeft12az1 {
  /// Converts [TLeft12az1] to a [TLeft12az1Builder]
  TLeft12az1Builder get toBuilder => TLeft12az1Builder.fromJson(toJson());
}

/// [TLeft12az1Builder]
/// Inner BackboneElement for TLeft.az1 - builder version for mutability
class TLeft12az1Builder extends BackboneElementBuilder {
  /// Constructor for TLeft12az1Builder
  TLeft12az1Builder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.az2,
    this.az3,
    super.disallowExtensions,
    super.objectPath = 'TLeft12az1Builder',
  });

  /// An empty constructor for partial usage
  factory TLeft12az1Builder.empty() => TLeft12az1Builder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TLeft12az1Builder.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TLeft12az1';
    return TLeft12az1Builder(
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
      az3: JsonParser.parsePrimitiveList<FhirStringBuilder>(
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
  /// A list of strings
  List<FhirStringBuilder>? az3;

  @override
  String get fhirType => 'TLeft12az1';

  /// converts a [TLeft12az1Builder]
  /// to [TLeft12az1]
  @override
  TLeft12az1 build() => TLeft12az1.fromJson(toJson());

  @override
  TLeft12az1Builder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? az2,
    List<FhirStringBuilder>? az3,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return TLeft12az1Builder(
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
          fields.addAll(az3!);
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
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'az2':
        {
          if (child is FhirStringBuilder) {
            az2 = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'az3':
        {
          if (child is List<FhirStringBuilder>) {
            // Replace or create new list
            az3 = child;
            return;
          } else if (child is FhirStringBuilder) {
            // Add single element to existing list or create new list
            az3 = [...(az3 ?? []), child];
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
          az3 = <FhirStringBuilder>[];
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
    bool modifierExtension = false,
    bool az2 = false,
    bool az3 = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (az2) this.az2 = null;
    if (az3) this.az3 = null;
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
    if (other is! TLeft12az1Builder) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        listEquals<FhirBaseBuilder>(extension_, other.extension_) &&
        listEquals<FhirBaseBuilder>(
          modifierExtension,
          other.modifierExtension,
        ) &&
        az2 == other.az2 &&
        listEquals<FhirBaseBuilder>(az3, other.az3);
  }

  @override
  TLeft12az1Builder clone() => copyWith();
}

/// Extension to convert [TLeft12] to a Builder
extension BuilderTLeft12 on TLeft12 {
  /// Converts [TLeft12] to a [TLeft12Builder]
  TLeft12Builder get toBuilder => TLeft12Builder.fromJson(toJson());
}

/// [TLeft12Builder]
/// TLeft definition - builder version for mutability
class TLeft12Builder extends ElementBuilder {
  /// Constructor for TLeft12Builder
  TLeft12Builder({
    super.id,
    super.extension_,
    this.az1,
    super.disallowExtensions,
    super.objectPath = 'TLeft12Builder',
  });

  /// An empty constructor for partial usage
  factory TLeft12Builder.empty() => TLeft12Builder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TLeft12Builder.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TLeft12';
    return TLeft12Builder(
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
      az1: json['az1'] != null
          ? TLeft12az1Builder.fromJson(json['az1'] as Map<String, dynamic>)
          : null,
    );
  }

  /// [az1]
  /// A single BackboneElement field
  TLeft12az1Builder? az1;

  @override
  String get fhirType => 'TLeft12';

  /// converts a [TLeft12Builder]
  /// to [TLeft12]
  @override
  TLeft12 build() => TLeft12.fromJson(toJson());

  @override
  TLeft12Builder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    TLeft12az1Builder? az1,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return TLeft12Builder(
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
          fields.add(az1!);
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
      case 'az1':
        {
          if (child is TLeft12az1Builder) {
            az1 = child;
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
      case 'az1':
        return ['TLeft12az1Builder'];
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
          az1 = TLeft12az1Builder.empty();
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
    bool az1 = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (az1) this.az1 = null;
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
    addField('az1', az1);
    return json;
  }

  @override
  bool equalsDeep(FhirBaseBuilder? other) {
    if (other is! TLeft12Builder) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        listEquals<FhirBaseBuilder>(extension_, other.extension_) &&
        az1 == other.az1;
  }

  @override
  TLeft12Builder clone() => copyWith();
}
