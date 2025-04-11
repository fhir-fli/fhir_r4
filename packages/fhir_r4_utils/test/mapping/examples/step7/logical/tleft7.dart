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

/// [TLeft7]
/// TLeft definition
class TLeft7 extends Element {
  const TLeft7({
    super.id,
    super.extension_,
    this.aa,
    super.disallowExtensions,
  });
  factory TLeft7.fromJson(Map<String, dynamic> json) {
    return TLeft7(
      id: json['id'] != null ? FhirString(json['id'] as String) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List)
              .map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList()
          : null,
      aa: json['aa'] != null
          ? (json['aa'] as List)
              .map((e) => TLeft7Aa.fromJson(e as Map<String, dynamic>))
              .toList()
          : null,
    );
  }

  /// [aa]
  /// Nested BackboneElement
  final List<TLeft7Aa>? aa;

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
    if (other is! TLeft7) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        const DeepCollectionEquality().equals(extension_, other.extension_) &&
        const DeepCollectionEquality().equals(aa, other.aa);
  }
}

/// Nested Backbone Element
class TLeft7Aa extends BackboneElement {
  const TLeft7Aa({
    super.id,
    super.extension_,
    this.ab,
  });
  factory TLeft7Aa.fromJson(Map<String, dynamic> json) {
    return TLeft7Aa(
      id: json['id'] != null ? FhirString(json['id'] as String) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List)
              .map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList()
          : null,
      ab: json['ab'] != null ? FhirString(json['ab'] as String) : null,
    );
  }

  /// [ab]
  /// String field within the BackboneElement
  final FhirString? ab;

  @override
  TLeft7Aa clone() => copyWith();

  @override
  $BackboneElementCopyWith<TLeft7Aa> get copyWith {
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
    if (ab != null) json['ab'] = ab!.valueString;
    return json;
  }

  @override
  bool equalsDeep(FhirBase? other) {
    if (other is! TLeft7Aa) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        const DeepCollectionEquality().equals(extension_, other.extension_) &&
        ab == other.ab;
  }
}

/// Extension to convert [TLeft7] to a Builder
extension BuilderTLeft7 on TLeft7 {
  /// Converts [TLeft7] to a [TLeft7Builder]
  TLeft7Builder get toBuilder => TLeft7Builder.fromJson(toJson());
}

/// Extension to convert [TLeft7Aa] to a Builder
extension BuilderTLeft7Aa on TLeft7Aa {
  /// Converts [TLeft7Aa] to a [TLeft7AaBuilder]
  TLeft7AaBuilder get toBuilder => TLeft7AaBuilder.fromJson(toJson());
}

/// [TLeft7Builder]
/// TLeft definition - builder version for mutability
class TLeft7Builder extends ElementBuilder {
  /// Constructor for TLeft7Builder
  TLeft7Builder({
    super.id,
    super.extension_,
    this.aa,
    super.disallowExtensions,
    super.objectPath = 'TLeft7Builder',
  });

  /// An empty constructor for partial usage
  factory TLeft7Builder.empty() => TLeft7Builder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TLeft7Builder.fromJson(Map<String, dynamic> json) {
    return TLeft7Builder(
      id: json['id'] != null ? FhirStringBuilder(json['id'] as String) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List)
              .map(
                (e) => FhirExtensionBuilder.fromJson(e as Map<String, dynamic>),
              )
              .toList()
          : null,
      aa: json['aa'] != null
          ? (json['aa'] as List)
              .map((e) => TLeft7AaBuilder.fromJson(e as Map<String, dynamic>))
              .toList()
          : null,
    );
  }

  /// [aa]
  /// Nested BackboneElement
  List<TLeft7AaBuilder>? aa;

  @override
  String get fhirType => 'TLeft7';

  /// converts a [TLeft7Builder]
  /// to [TLeft7]
  @override
  TLeft7 build() => TLeft7.fromJson(toJson());

  @override
  TLeft7Builder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<TLeft7AaBuilder>? aa,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return TLeft7Builder(
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
          if (child is List<TLeft7AaBuilder>) {
            // Replace or create new list
            aa = child;
            return;
          } else if (child is TLeft7AaBuilder) {
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
        return ['TLeft7AaBuilder'];
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
          aa = <TLeft7AaBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }


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
  bool equalsDeep(FhirBaseBuilder? other) {
    if (other is! TLeft7Builder) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        listEquals<FhirBaseBuilder>(extension_, other.extension_) &&
        listEquals<FhirBaseBuilder>(aa, other.aa);
  }

  @override
  TLeft7Builder clone() => copyWith();
}

/// [TLeft7AaBuilder]
/// Nested Backbone Element - builder version for mutability
class TLeft7AaBuilder extends BackboneElementBuilder {
  /// Constructor for TLeft7AaBuilder
  TLeft7AaBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.ab,
    super.objectPath = 'TLeft7AaBuilder',
  });

  /// An empty constructor for partial usage
  factory TLeft7AaBuilder.empty() => TLeft7AaBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TLeft7AaBuilder.fromJson(Map<String, dynamic> json) {
    return TLeft7AaBuilder(
      id: json['id'] != null ? FhirStringBuilder(json['id'] as String) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List)
              .map(
                (e) => FhirExtensionBuilder.fromJson(e as Map<String, dynamic>),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List)
              .map(
                (e) => FhirExtensionBuilder.fromJson(e as Map<String, dynamic>),
              )
              .toList()
          : null,
      ab: json['ab'] != null ? FhirStringBuilder(json['ab'] as String) : null,
    );
  }

  /// [ab]
  /// String field within the BackboneElement
  FhirStringBuilder? ab;

  @override
  String get fhirType => 'TLeft7Aa';

  /// converts a [TLeft7AaBuilder]
  /// to [TLeft7Aa]
  @override
  TLeft7Aa build() => TLeft7Aa.fromJson(toJson());

  @override
  TLeft7AaBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? ab,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return TLeft7AaBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      ab: ab ?? this.ab,
      objectPath: newObjectPath,
    );
  }

  @override
  List<String> listChildrenNames() =>
      ['id', 'extension', 'modifierExtension', 'ab'];

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
      case 'ab':
        if (ab != null) {
          fields.add(ab!);
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
      case 'ab':
        {
          if (child is FhirStringBuilder) {
            ab = child;
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
      case 'ab':
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
      case 'ab':
        {
          ab = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }


  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) json['id'] = id!.valueString;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (modifierExtension != null) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }
    if (ab != null) json['ab'] = ab!.valueString;
    return json;
  }

  @override
  bool equalsDeep(FhirBaseBuilder? other) {
    if (other is! TLeft7AaBuilder) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        listEquals<FhirBaseBuilder>(extension_, other.extension_) &&
        listEquals<FhirBaseBuilder>(
          modifierExtension,
          other.modifierExtension,
        ) &&
        ab == other.ab;
  }

  @override
  TLeft7AaBuilder clone() => copyWith();
}
