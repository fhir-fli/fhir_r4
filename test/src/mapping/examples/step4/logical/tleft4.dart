import 'package:fhir_r4/fhir_r4.dart';

/// [TLeft4]
/// TLeft definition
class TLeft4 extends Element {
  const TLeft4({
    super.id,
    super.extension_,
    this.a21,
    super.disallowExtensions,
    super.objectPath = 'TLeft4',
  });

  /// FromJson Factory Constructor
  factory TLeft4.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TLeft4';
    return TLeft4(
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
      a21: JsonParser.parsePrimitive<FhirString>(
        json,
        'a21',
        FhirString.fromJson,
        '$objectPath.a21',
      ),
    );
  }

  /// [a21]
  /// TLeft definition
  final FhirString? a21;

  @override
  TLeft4 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? a21,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return TLeft4(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      a21: a21 ?? this.a21,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) json['id'] = id!.value;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (a21 != null) {
      json['a21'] = a21!.value;
    }
    return json;
  }
}
