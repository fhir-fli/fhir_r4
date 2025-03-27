import 'package:fhir_r4/fhir_r4.dart';

/// [TRightInner10]
/// TRightInner definition
class TRightInner10 extends Element {
  const TRightInner10({
    super.id,
    super.extension_,
    this.ab,
    super.disallowExtensions,
    super.objectPath = 'TRightInner10',
  });

  factory TRightInner10.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TRightInner10';
    return TRightInner10(
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
      ab: JsonParser.parsePrimitive<FhirString>(
        json,
        'ab',
        FhirString.fromJson,
        '$objectPath.ab',
      ),
    );
  }

  /// [ab]
  /// A string field
  final FhirString? ab;

  @override
  TRightInner10 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? ab,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return TRightInner10(
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
    if (ab != null) {
      json['ab'] = ab!.value;
    }
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
    if (other is! TRightInner10) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        listEquals<FhirBase>(extension_, other.extension_) &&
        ab == other.ab;
  }
}
