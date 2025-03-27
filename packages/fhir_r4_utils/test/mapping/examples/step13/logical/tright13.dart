import 'package:fhir_r4/fhir_r4.dart';

/// [TRight13]
/// TRight definition
class TRight13 extends Element {
  const TRight13({
    super.id,
    super.extension_,
    this.ptr,
    this.f2,
    super.disallowExtensions,
    super.objectPath = 'TRight13',
  });

  factory TRight13.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TRight13';
    return TRight13(
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
      ptr: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'ptr',
        FhirString.fromJson,
        '$objectPath.ptr',
      ),
      f2: (json['f2'] as List<dynamic>?)
          ?.map<Basic>(
            (v) => Basic.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.f2',
              },
            ),
          )
          .toList(),
    );
  }

  /// [ptr]
  /// A list of string elements
  final List<FhirString>? ptr;

  /// [f2]
  /// A list of Basic elements
  final List<Basic>? f2;

  @override
  TRight13 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirString>? ptr,
    List<Basic>? f2,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return TRight13(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      ptr: ptr ?? this.ptr,
      f2: f2 ?? this.f2,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'resourceType': 'TRight'};
    if (id != null) json['id'] = id!.value;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (ptr != null) json['ptr'] = ptr!.map((e) => e.value).toList();
    if (f2 != null) json['f2'] = f2!.map((e) => e.toJson()).toList();
    return json;
  }

  @override
  List<String> listChildrenNames() => ['id', 'extension', 'ptr', 'f2'];

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
      case 'ptr':
        if (ptr != null) fields.addAll(ptr!);
      case 'f2':
        if (f2 != null) fields.addAll(f2!);
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
    if (other is! TRight13) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        listEquals<FhirBase>(extension_, other.extension_) &&
        listEquals<FhirBase>(ptr, other.ptr) &&
        listEquals<FhirBase>(f2, other.f2);
  }
}
