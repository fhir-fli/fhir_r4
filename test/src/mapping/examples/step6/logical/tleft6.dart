import 'package:fhir_r4/fhir_r4.dart';

/// [TLeft6]
/// TLeft definition
class TLeft6 extends Element {
  const TLeft6({
    super.id,
    super.extension_,
    this.a23,
    super.disallowExtensions,
    super.objectPath = 'TLeft6',
  });

  /// FromJson Factory Constructor
  factory TLeft6.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TLeft6';
    return TLeft6(
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
      a23: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'a23',
        FhirString.fromJson,
        '$objectPath.a23',
      ),
    );
  }

  /// [a23]
  /// TLeft definition
  final List<FhirString>? a23;

  @override
  TLeft6 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirString>? a23,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return TLeft6(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      a23: a23 ?? this.a23,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) json['id'] = id!.value;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (a23 != null) {
      json['a23'] = a23!.map((e) => e.value).toList();
    }
    return json;
  }
}
