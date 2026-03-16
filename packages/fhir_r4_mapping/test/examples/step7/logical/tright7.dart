import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart'
    show
        $BackboneElementCopyWith,
        BackboneElement,
        Element,
        FhirBase,
        FhirExtension,
        FhirString;
import 'package:fhir_r4_mapping/fhir_r4_mapping.dart';

/// [TRight7]
/// TRight definition
class TRight7 extends Element {
  const TRight7({
    super.id,
    super.extension_,
    this.aa,
    super.disallowExtensions,
  });

  factory TRight7.empty() => const TRight7();

  factory TRight7.fromJson(Map<String, dynamic> json) {
    return TRight7(
      id: json['id'] != null ? FhirString(json['id'] as String) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List)
              .map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList()
          : null,
      aa: json['aa'] != null
          ? (json['aa'] as List)
              .map((e) => TRight7Aa.fromJson(e as Map<String, dynamic>))
              .toList()
          : null,
    );
  }

  /// [aa]
  /// Nested BackboneElement
  final List<TRight7Aa>? aa;

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'resourceType': 'TRight'};
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
    if (other is! TRight7) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        const DeepCollectionEquality().equals(extension_, other.extension_) &&
        const DeepCollectionEquality().equals(aa, other.aa);
  }
}

/// Nested Backbone Element
class TRight7Aa extends BackboneElement {
  const TRight7Aa({
    super.id,
    super.extension_,
    this.ab,
  });

  factory TRight7Aa.empty() => const TRight7Aa();

  factory TRight7Aa.fromJson(Map<String, dynamic> json) {
    return TRight7Aa(
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
  TRight7Aa clone() => copyWith();

  @override
  $BackboneElementCopyWith<TRight7Aa> get copyWith {
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
    if (other is! TRight7Aa) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        const DeepCollectionEquality().equals(extension_, other.extension_) &&
        ab == other.ab;
  }
}

/// Extension to convert [TRight7] to a Builder
extension BuilderTRight7 on TRight7 {
  /// Converts [TRight7] to a [TRight7Builder]
  TRight7Builder get toBuilder => TRight7Builder.fromJson(toJson());
}

/// Extension to convert [TRight7Aa] to a Builder
extension BuilderTRight7Aa on TRight7Aa {
  /// Converts [TRight7Aa] to a [TRight7AaBuilder]
  TRight7AaBuilder get toBuilder => TRight7AaBuilder.fromJson(toJson());
}

/// [TRight7Builder]
/// TRight definition - builder version for mutability
class TRight7Builder extends ElementBuilder {
  /// Constructor for TRight7Builder
  TRight7Builder({
    super.id,
    super.extension_,
    this.aa,
    super.disallowExtensions,
    super.objectPath = 'TRight7Builder',
  });

  /// An empty constructor for partial usage
  factory TRight7Builder.empty() => TRight7Builder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TRight7Builder.fromJson(Map<String, dynamic> json) {
    return TRight7Builder(
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
              .map((e) => TRight7AaBuilder.fromJson(e as Map<String, dynamic>))
              .toList()
          : null,
    );
  }

  /// [aa]
  /// Nested BackboneElement
  List<TRight7AaBuilder>? aa;

  @override
  String get fhirType => 'TRight7';

  /// converts a [TRight7Builder]
  /// to [TRight7]
  @override
  TRight7 build() => TRight7.fromJson(toJson());

  @override
  TRight7Builder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<TRight7AaBuilder>? aa,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return TRight7Builder(
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
          if (child is List<TRight7AaBuilder>) {
            // Replace or create new list
            aa = child;
            return;
          } else if (child is TRight7AaBuilder) {
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
        return ['TRight7AaBuilder'];
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
          aa = <TRight7AaBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'resourceType': 'TRight'};
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
    if (other is! TRight7Builder) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        listEquals<FhirBaseBuilder>(extension_, other.extension_) &&
        listEquals<FhirBaseBuilder>(aa, other.aa);
  }

  @override
  TRight7Builder clone() => copyWith();
}

/// [TRight7AaBuilder]
/// Nested Backbone Element - builder version for mutability
class TRight7AaBuilder extends BackboneElementBuilder {
  /// Constructor for TRight7AaBuilder
  TRight7AaBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.ab,
    super.objectPath = 'TRight7AaBuilder',
  });

  /// An empty constructor for partial usage
  factory TRight7AaBuilder.empty() => TRight7AaBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TRight7AaBuilder.fromJson(Map<String, dynamic> json) {
    return TRight7AaBuilder(
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
  String get fhirType => 'TRight7Aa';

  /// converts a [TRight7AaBuilder]
  /// to [TRight7Aa]
  @override
  TRight7Aa build() => TRight7Aa.fromJson(toJson());

  @override
  TRight7AaBuilder copyWith({
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
    return TRight7AaBuilder(
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
    if (other is! TRight7AaBuilder) return false;
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
  TRight7AaBuilder clone() => copyWith();
}
