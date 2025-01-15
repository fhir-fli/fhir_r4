import 'package:fhir_r4/fhir_r4.dart';

/// [TRight11]
/// TRight definition
class TRight11 extends Element {
  const TRight11({
    super.id,
    super.extension_,
    this.e,
    super.disallowExtensions,
    super.objectPath = 'TRight11',
  });

  factory TRight11.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TRight11';
    return TRight11(
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
      e: (json['e'] as List<dynamic>?)
          ?.map<TRight11e>(
            (v) => TRight11e.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.e',
              },
            ),
          )
          .toList(),
    );
  }

  /// [e]
  /// A list of TRight11e elements
  final List<TRight11e>? e;

  @override
  TRight11 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<TRight11e>? e,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return TRight11(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      e: e ?? this.e,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'resourceType': 'TRight'};
    if (id != null) json['id'] = id!.value;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (e != null) {
      json['e'] = e!.map((e) => e.toJson()).toList();
    }
    return json;
  }

  @override
  List<String> children() => ['id', 'extension', 'e'];

  @override
  List<FhirBase> listChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) fields.add(id!);
      case 'extension':
        if (extension_ != null) fields.addAll(extension_!);
      case 'e':
        if (e != null) fields.addAll(e!);
      default:
        if (checkValid) throw ArgumentError('Invalid name: $fieldName');
    }
    return fields;
  }

  @override
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) throw StateError('Too many values for $name found');
    return values.isNotEmpty ? values.first : null;
  }

  @override
  bool equalsDeep(FhirBase? other) {
    if (other is! TRight11) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        listEquals<FhirBase>(extension_, other.extension_) &&
        listEquals<FhirBase>(e, other.e);
  }
}

/// [TRight11e]
/// Inner BackboneElement for TRight.e
class TRight11e extends BackboneElement {
  const TRight11e({
    super.id,
    super.extension_,
    this.f,
    this.g,
    super.disallowExtensions,
    super.objectPath = 'TRight11e',
  });

  factory TRight11e.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TRight11e';
    return TRight11e(
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
      f: JsonParser.parsePrimitive<FhirString>(
        json,
        'f',
        FhirString.fromJson,
        '$objectPath.f',
      ),
      g: JsonParser.parsePrimitive<FhirCode>(
        json,
        'g',
        FhirCode.fromJson,
        '$objectPath.g',
      ),
    );
  }

  /// [f]
  /// A single string field
  final FhirString? f;

  /// [g]
  /// A single code field
  final FhirCode? g;

  @override
  TRight11e copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? f,
    FhirCode? g,
    List<FhirExtension>? modifierExtension,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return TRight11e(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      f: f ?? this.f,
      g: g ?? this.g,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) json['id'] = id!.value;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (f != null) json['f'] = f!.value;
    if (g != null) json['g'] = g!.value;
    return json;
  }

  @override
  List<String> children() => ['id', 'extension', 'f', 'g'];

  @override
  List<FhirBase> listChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) fields.add(id!);
      case 'extension':
        if (extension_ != null) fields.addAll(extension_!);
      case 'f':
        if (f != null) fields.add(f!);
      case 'g':
        if (g != null) fields.add(g!);
      default:
        if (checkValid) throw ArgumentError('Invalid name: $fieldName');
    }
    return fields;
  }

  @override
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) throw StateError('Too many values for $name found');
    return values.isNotEmpty ? values.first : null;
  }

  @override
  bool equalsDeep(FhirBase? other) {
    if (other is! TRight11e) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        listEquals<FhirBase>(extension_, other.extension_) &&
        f == other.f &&
        g == other.g;
  }
}
