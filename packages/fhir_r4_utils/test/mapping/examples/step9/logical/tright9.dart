import 'package:fhir_r4/fhir_r4.dart';

/// [TRight9]
/// TRight definition
class TRight9 extends Element {
  const TRight9({
    super.id,
    super.extension_,
    this.j,
    this.k,
    super.disallowExtensions,
    super.objectPath = 'TRight9',
  });

  /// factory constructor for an empty object
  factory TRight9.empty() = TRight9;

  /// FromJson Factory Constructor
  factory TRight9.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TRight9';
    return TRight9(
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
      j: JsonParser.parsePrimitive<FhirString>(
        json,
        'j',
        FhirString.fromJson,
        '$objectPath.j',
      ),
      k: JsonParser.parsePrimitive<FhirString>(
        json,
        'k',
        FhirString.fromJson,
        '$objectPath.k',
      ),
    );
  }

  /// [j]
  /// An optional string field
  final FhirString? j;

  /// [k]
  /// An optional string field
  final FhirString? k;

  @override
  TRight9 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? j,
    FhirString? k,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return TRight9(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      j: j ?? this.j,
      k: k ?? this.k,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'resourceType': 'TRight'};
    if (id != null) json['id'] = id!.value;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (j != null) json['j'] = j!.value;
    if (k != null) json['k'] = k!.value;
    return json;
  }

  @override
  List<String> listChildrenNames() => ['id', 'extension', 'j', 'k'];

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
      case 'j':
        if (j != null) fields.add(j!);
      case 'k':
        if (k != null) fields.add(k!);
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
    if (other is! TRight9) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        listEquals<FhirBase>(extension_, other.extension_) &&
        j == other.j &&
        k == other.k;
  }
}
