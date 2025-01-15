import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart';

/// [TLeft6]
/// TLeft definition
class TLeft6 extends Element {
  const TLeft6({
    super.id,
    super.extension_,
    this.a23,
    super.disallowExtensions,
    super.objectPath = 'TLeft6',
  });

  /// FromJson Factory Constructor
  factory TLeft6.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TLeft6';
    return TLeft6(
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
      a23: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'a23',
        FhirString.fromJson,
        '$objectPath.a23',
      ),
    );
  }

  /// [a23]
  /// TLeft definition
  final List<FhirString>? a23;

  @override
  TLeft6 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirString>? a23,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return TLeft6(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      a23: a23 ?? this.a23,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) json['id'] = id!.value;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (a23 != null) {
      json['a23'] = a23!.map((e) => e.value).toList();
    }
    return json;
  }

  @override
  List<String> children() => ['id', 'extension', 'a23'];

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
      case 'a23':
        if (a23 != null) fields.addAll(a23!);
      default:
        if (checkValid) throw ArgumentError('Invalid field name: $fieldName');
    }
    return fields;
  }

  @override
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Multiple values found for $name');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! TLeft6) return false;
    return id == o.id &&
        const DeepCollectionEquality().equals(extension_, o.extension_) &&
        const DeepCollectionEquality().equals(a23, o.a23);
  }
}
