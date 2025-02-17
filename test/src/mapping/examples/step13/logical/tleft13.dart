import 'package:fhir_r4/fhir_r4.dart';

/// [TLeft13]
/// TLeft definition
class TLeft13 extends Element {
  const TLeft13({
    super.id,
    super.extension_,
    this.f1,
    super.disallowExtensions,
    super.objectPath = 'TLeft13',
  });

  factory TLeft13.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TLeft13';
    return TLeft13(
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
      f1: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'f1',
        FhirString.fromJson,
        '$objectPath.f1',
      ),
    );
  }

  /// [f1]
  /// A list of string elements
  final List<FhirString>? f1;

  @override
  TLeft13 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirString>? f1,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return TLeft13(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      f1: f1 ?? this.f1,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'resourceType': 'TLeft'};
    if (id != null) json['id'] = id!.value;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (f1 != null) json['f1'] = f1!.map((e) => e.value).toList();
    return json;
  }

  @override
  List<String> listChildrenNames() => ['id', 'extension', 'f1'];

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
      case 'f1':
        if (f1 != null) fields.addAll(f1!);
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
    if (other is! TLeft13) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        listEquals<FhirBase>(extension_, other.extension_) &&
        listEquals<FhirBase>(f1, other.f1);
  }
}
