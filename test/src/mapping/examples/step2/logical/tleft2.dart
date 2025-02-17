import 'package:fhir_r4/fhir_r4.dart';

/// [TLeft2]
/// TLeft definition
class TLeft2 extends Element {
  const TLeft2({
    super.id,
    super.extension_,
    this.a1,
    super.disallowExtensions,
    super.objectPath = 'TLeft2',
  });

  /// FromJson Factory Constructor
  factory TLeft2.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TLeft2';
    return TLeft2(
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
      a1: JsonParser.parsePrimitive<FhirString>(
        json,
        'a1',
        FhirString.fromJson,
        '$objectPath.a1',
      ),
    );
  }

  /// [a1]
  /// TLeft definition
  final FhirString? a1;

  @override
  TLeft2 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? a1,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return TLeft2(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      a1: a1 ?? this.a1,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) json['id'] = id!.value;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (a1 != null) {
      json['a1'] = a1!.value;
    }
    return json;
  }
}
