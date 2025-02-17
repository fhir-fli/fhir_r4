import 'package:fhir_r4/fhir_r4.dart';

import 'tright_inner10.dart';

/// [TRight10]
/// TRight definition
class TRight10 extends Element {
  const TRight10({
    super.id,
    super.extension_,
    this.aa,
    super.disallowExtensions,
    super.objectPath = 'TRight10',
  });

  factory TRight10.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TRight10';
    return TRight10(
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
      aa: (json['aa'] as List<dynamic>?)
          ?.map<TRightInner10>(
            (v) => TRightInner10.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.aa',
              },
            ),
          )
          .toList(),
    );
  }

  /// [aa]
  /// A list of TRightInner10 elements
  final List<TRightInner10>? aa;

  @override
  TRight10 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<TRightInner10>? aa,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return TRight10(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      aa: aa ?? this.aa,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'resourceType': 'TRight'};
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
  FhirBase? getChildValueByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) throw StateError('Too many values for $name found');
    return values.isNotEmpty ? values.first : null;
  }

  @override
  bool equalsDeep(FhirBase? other) {
    if (other is! TRight10) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        listEquals<FhirBase>(extension_, other.extension_) &&
        listEquals<FhirBase>(aa, other.aa);
  }
}
