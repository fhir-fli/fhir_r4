import 'package:fhir_r4/fhir_r4.dart';

/// [TLeft5]
/// TLeft definition
class TLeft5 extends Element {
  const TLeft5({
    super.id,
    super.extension_,
    this.a22,
    super.disallowExtensions,
    super.objectPath = 'TLeft5',
  });

  /// FromJson Factory Constructor
  factory TLeft5.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TLeft5';
    return TLeft5(
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
      a22: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'a22',
        FhirString.fromJson,
        '$objectPath.a22',
      ),
    );
  }

  /// [a22]
  /// TLeft definition
  final List<FhirString>? a22;

  @override
  TLeft5 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirString>? a22,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return TLeft5(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      a22: a22 ?? this.a22,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) json['id'] = id!.value;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (a22 != null) {
      json['a22'] = a22!.map((e) => e.value).toList();
    }
    return json;
  }

  @override
  List<String> children() => ['id', 'extension', 'a22'];

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
      case 'a22':
        if (a22 != null) fields.addAll(a22!);
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
    if (other is! TLeft5) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        listEquals<FhirBase>(extension_, other.extension_) &&
        listEquals<FhirBase>(a22, other.a22);
  }
}
