import 'package:fhir_r4/fhir_r4.dart';

/// [TLeft7]
/// TLeft definition
class TLeft7 extends Element {
  const TLeft7({
    super.id,
    super.extension_,
    this.aa,
    super.disallowExtensions,
    super.objectPath = 'TLeft7',
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
  TLeft7 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<TLeft7Aa>? aa,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return TLeft7(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      aa: aa ?? this.aa,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'resourceType': 'TLeft'};
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
    if (other is! TLeft7) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        listEquals<FhirBase>(extension_, other.extension_) &&
        listEquals<FhirBase>(aa, other.aa);
  }
}

/// Nested Backbone Element
class TLeft7Aa extends BackboneElement {
  const TLeft7Aa({
    super.id,
    super.extension_,
    this.ab,
    super.objectPath = 'TLeft7Aa',
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
  TLeft7Aa copyWith({
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
    return TLeft7Aa(
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) throw StateError('Too many values for $name found');
    return values.isNotEmpty ? values.first : null;
  }

  @override
  bool equalsDeep(FhirBase? other) {
    if (other is! TLeft7Aa) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        listEquals<FhirBase>(extension_, other.extension_) &&
        ab == other.ab;
  }

  @override
  BackboneElement createProperty(String name) {
    switch (name) {
      case 'ab':
        return TLeft7Aa(ab: FhirString(''));
      default:
        return this;
    }
  }

  @override
  TLeft7Aa clear({bool extension_ = false, bool id = false}) {
    throw UnimplementedError();
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
}
