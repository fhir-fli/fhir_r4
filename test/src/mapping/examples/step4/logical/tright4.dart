import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart';

/// [TRight4]
/// TRight definition
class TRight4 extends Element {
  const TRight4({
    super.id,
    super.extension_,
    this.a21,
    super.disallowExtensions,
    super.objectPath = 'TRight4',
  });

  /// Factory constructor to create an instance of [TRight4] from JSON
  factory TRight4.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TRight4';
    return TRight4(
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
      a21: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'a21',
        FhirInteger.fromJson,
        '$objectPath.a21',
      ),
    );
  }

  /// [a21]
  /// TRight definition
  final FhirInteger? a21;

  @override
  TRight4 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirInteger? a21,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return TRight4(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      a21: a21 ?? this.a21,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'resourceType': 'TRight'};
    if (id != null) json['id'] = id!.value;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (a21 != null) {
      json['a21'] = a21!.value;
    }
    return json;
  }

  @override
  List<String> children() {
    return ['id', 'extension', 'a21'];
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
      case 'a21':
        if (a21 != null) fields.add(a21!);
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
    if (o is! TRight4) return false;
    return id == o.id &&
        const DeepCollectionEquality().equals(extension_, o.extension_) &&
        a21 == o.a21;
  }
}
