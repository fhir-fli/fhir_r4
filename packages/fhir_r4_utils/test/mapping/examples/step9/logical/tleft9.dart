import 'package:fhir_r4/fhir_r4.dart';

/// [TLeft9]
/// TLeft definition
class TLeft9 extends Element {
  const TLeft9({
    super.id,
    super.extension_,
    this.i,
    this.m,
    super.disallowExtensions,
    super.objectPath = 'TLeft9',
  });

  /// FromJson Factory Constructor
  factory TLeft9.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TLeft9';
    return TLeft9(
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
      i: JsonParser.parsePrimitive<FhirString>(
        json,
        'i',
        FhirString.fromJson,
        '$objectPath.i',
      ),
      m: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'm',
        FhirInteger.fromJson,
        '$objectPath.m',
      ),
    );
  }

  /// [i]
  /// An optional string field
  final FhirString? i;

  /// [m]
  /// A required integer field
  final FhirInteger? m;

  @override
  TLeft9 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? i,
    FhirInteger? m,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return TLeft9(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      i: i ?? this.i,
      m: m ?? this.m,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'resourceType': 'TLeft'};
    if (id != null) json['id'] = id!.value;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (i != null) json['i'] = i!.value;
    if (m != null) json['m'] = m!.value;
    return json;
  }

  @override
  List<String> listChildrenNames() => ['id', 'extension', 'i', 'm'];

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
      case 'i':
        if (i != null) fields.add(i!);
      case 'm':
        if (m != null) fields.add(m!);
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
    if (other is! TLeft9) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        listEquals<FhirBase>(extension_, other.extension_) &&
        i == other.i &&
        m == other.m;
  }
}
