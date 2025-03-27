import 'package:fhir_r4/fhir_r4.dart';

/// [TRight7]
/// TRight definition
class TRight7 extends Element {
  const TRight7({
    super.id,
    super.extension_,
    this.aa,
    super.disallowExtensions,
    super.objectPath = 'TRight7',
  });

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
  TRight7 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<TRight7Aa>? aa,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return TRight7(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      aa: aa ?? this.aa,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'resourceType': 'TRight'};
    if (id != null) json['id'] = id!.value;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (aa != null) {
      json['aa'] = aa!.map((e) => e.toJson()).toList();
    }
    return json;
  }

  @override
  List<String> listChildrenNames() => ['id', 'extension', 'aa'];

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
      case 'aa':
        if (aa != null) fields.addAll(aa!);
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
    if (other is! TRight7) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        listEquals<FhirBase>(extension_, other.extension_) &&
        listEquals<FhirBase>(aa, other.aa);
  }
}

/// Nested Backbone Element
class TRight7Aa extends BackboneElement {
  const TRight7Aa({
    super.id,
    super.extension_,
    this.ab,
    super.objectPath = 'TRight7Aa',
  });

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
  TRight7Aa copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
    FhirString? ab,
  }) {
    return TRight7Aa(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      ab: ab ?? this.ab,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) json['id'] = id!.value;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (ab != null) json['ab'] = ab!.value;
    return json;
  }

  @override
  List<String> listChildrenNames() => ['id', 'extension', 'ab'];

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
      case 'ab':
        if (ab != null) fields.add(ab!);
      default:
        if (checkValid) throw ArgumentError('Invalid name: $fieldName');
    }
    return fields;
  }

  @override
  List<FhirBase> getListChildByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    switch (fieldName) {
      case 'extension':
        return extension_ ?? <FhirExtension>[];
      default:
        return <FhirBase>[];
    }
  }

  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) throw StateError('Too many values for $name found');
    return values.isNotEmpty ? values.first : null;
  }

  @override
  bool equalsDeep(FhirBase? other) {
    if (other is! TRight7Aa) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        listEquals<FhirBase>(extension_, other.extension_) &&
        ab == other.ab;
  }

  @override
  BackboneElement createProperty(String name) {
    switch (name) {
      case 'ab':
        return TRight7Aa(ab: FhirString.empty());
      default:
        throw ArgumentError('Unknown property $name');
    }
  }

  @override
  TRight7Aa clear({bool extension_ = false, bool id = false}) {
    throw UnimplementedError();
  }
}
