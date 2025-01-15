import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart';

/// [TRight3]
/// TRight definition
class TRight3 extends Element {
  const TRight3({
    super.id,
    super.extension_,
    this.a2,
    super.disallowExtensions,
    super.objectPath = 'TRight3',
  });

  /// Factory constructor to create an instance of [TRight3] from JSON
  factory TRight3.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TRight3';
    return TRight3(
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
      a2: JsonParser.parsePrimitive<FhirString>(
        json,
        'a2',
        FhirString.fromJson,
        '$objectPath.a2',
      ),
    );
  }

  /// [a2]
  /// Represents the a2 field in TRight definition
  final FhirString? a2;

  @override
  TRight3 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? a2,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return TRight3(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      a2: a2 ?? this.a2,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'resourceType': 'TRight3'};
    if (id != null) json['id'] = id!.value;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (a2 != null) {
      json['a2'] = a2!.value;
    }
    return json;
  }

  @override
  List<String> children() {
    return ['id', 'extension', 'a2'];
  }

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
      case 'a2':
        if (a2 != null) fields.add(a2!);
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
    if (o is! TRight3) return false;
    if (identical(this, o)) return true;
    return id == o.id &&
        const DeepCollectionEquality().equals(extension_, o.extension_) &&
        a2 == o.a2;
  }
}
