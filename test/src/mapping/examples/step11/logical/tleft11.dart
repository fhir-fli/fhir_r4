import 'package:fhir_r4/fhir_r4.dart';

/// [TLeft11]
/// TLeft definition
class TLeft11 extends Element {
  const TLeft11({
    super.id,
    super.extension_,
    this.e,
    this.f,
    super.disallowExtensions,
    super.objectPath = 'TLeft11',
  });

  factory TLeft11.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TLeft11';
    return TLeft11(
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
      e: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'e',
        FhirString.fromJson,
        '$objectPath.e',
      ),
      f: JsonParser.parsePrimitive<FhirString>(
        json,
        'f',
        FhirString.fromJson,
        '$objectPath.f',
      ),
    );
  }

  /// [e]
  /// A list of strings
  final List<FhirString>? e;

  /// [f]
  /// A single string field
  final FhirString? f;

  @override
  TLeft11 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirString>? e,
    FhirString? f,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return TLeft11(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      e: e ?? this.e,
      f: f ?? this.f,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) json['id'] = id!.value;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (e != null) {
      json['e'] = e!.map((e) => e.value).toList();
    }
    if (f != null) {
      json['f'] = f!.value;
    }
    return json;
  }
}
