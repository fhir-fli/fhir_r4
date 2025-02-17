import 'package:fhir_r4/fhir_r4.dart';

/// [TLeft11]
/// TLeft definition
class TLeft11 extends Element {
  const TLeft11({
    super.id,
    super.extension_,
    this.e,
    this.f,
    super.disallowExtensions,
    super.objectPath = 'TLeft11',
  });

  factory TLeft11.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TLeft11';
    return TLeft11(
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
      e: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'e',
        FhirString.fromJson,
        '$objectPath.e',
      ),
      f: JsonParser.parsePrimitive<FhirString>(
        json,
        'f',
        FhirString.fromJson,
        '$objectPath.f',
      ),
    );
  }

  /// [e]
  /// A list of strings
  final List<FhirString>? e;

  /// [f]
  /// A single string field
  final FhirString? f;

  @override
  TLeft11 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirString>? e,
    FhirString? f,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return TLeft11(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      e: e ?? this.e,
      f: f ?? this.f,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'resourceType': 'TLeft'};
    if (id != null) json['id'] = id!.value;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (e != null) {
      json['e'] = e!.map((e) => e.value).toList();
    }
    if (f != null) {
      json['f'] = f!.value;
    }
    return json;
  }

  @override
  List<String> listChildrenNames() => ['id', 'extension', 'e', 'f'];

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
      case 'e':
        if (e != null) fields.addAll(e!);
      case 'f':
        if (f != null) fields.add(f!);
      default:
        if (checkValid) throw ArgumentError('Invalid name: $fieldName');
    }
    return fields;
  }

  @override
  FhirBase? getChildValueByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) throw StateError('Too many values for $name found');
    return values.isNotEmpty ? values.first : null;
  }

  @override
  bool equalsDeep(FhirBase? other) {
    if (other is! TLeft11) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        listEquals<FhirBase>(extension_, other.extension_) &&
        listEquals<FhirBase>(e, other.e) &&
        f == other.f;
  }
}
