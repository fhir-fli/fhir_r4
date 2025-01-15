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
}
