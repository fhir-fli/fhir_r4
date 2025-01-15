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
    final json = <String, dynamic>{};
    if (id != null) json['id'] = id!.value;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (f1 != null) json['f1'] = f1!.map((e) => e.value).toList();
    return json;
  }
}
