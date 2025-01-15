import 'package:fhir_r4/fhir_r4.dart';

/// [TRight8]
/// TRight definition
class TRight8 extends Element {
  const TRight8({
    super.id,
    super.extension_,
    this.d,
    super.disallowExtensions,
    super.objectPath = 'TRight8',
  });

  /// FromJson Factory Constructor
  factory TRight8.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TRight8';
    return TRight8(
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
      d: JsonParser.parsePrimitive<FhirCode>(
        json,
        'd',
        FhirCode.fromJson,
        '$objectPath.d',
      ),
    );
  }

  /// [d]
  /// A code field
  final FhirCode? d;

  @override
  TRight8 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirCode? d,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return TRight8(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      d: d ?? this.d,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'resourceType': 'TRight'};
    if (id != null) json['id'] = id!.value;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (d != null) {
      json['d'] = d!.value;
    }
    return json;
  }

  @override
  List<String> children() => ['id', 'extension', 'd'];

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
      case 'd':
        if (d != null) fields.add(d!);
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
    if (other is! TRight8) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        listEquals<FhirBase>(extension_, other.extension_) &&
        d == other.d;
  }
}
