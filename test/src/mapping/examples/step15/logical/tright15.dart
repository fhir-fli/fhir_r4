import 'package:fhir_r4/fhir_r4.dart';

/// [TRight15]
/// TRight definition
class TRight15 extends Element {
  const TRight15({
    super.id,
    super.extension_,
    this.c,
    super.disallowExtensions,
    super.objectPath = 'TRight15',
  });

  factory TRight15.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TRight15';
    return TRight15(
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
      c: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'c',
        FhirString.fromJson,
        '$objectPath.c',
      ),
    );
  }

  /// [c]
  /// List of string elements
  final List<FhirString>? c;

  @override
  TRight15 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirString>? c,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return TRight15(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      c: c ?? this.c,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'resourceType': 'TRight'};
    if (id != null) json['id'] = id!.value;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (c != null) json['c'] = c!.map((e) => e.value).toList();
    return json;
  }
}
