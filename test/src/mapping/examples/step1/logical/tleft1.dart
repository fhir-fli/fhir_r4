import 'package:fhir_r4/fhir_r4.dart';

/// [TLeft1]
/// TLeft definition
class TLeft1 extends Element {
  const TLeft1({
    super.id,
    super.extension_,
    this.a,
    super.disallowExtensions,
    super.objectPath = 'TLeft1',
  });

  /// FromJson Factory Constructor
  factory TLeft1.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TLeft1';
    return TLeft1(
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
      a: JsonParser.parsePrimitive<FhirString>(
        json,
        'a',
        FhirString.fromJson,
        '$objectPath.a',
      ),
    );
  }

  /// [a]
  /// TLeft definition
  final FhirString? a;

  @override
  String get fhirType => 'TLeft1';

  @override
  TLeft1 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? a,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return TLeft1(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      a: a ?? this.a,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) json['id'] = id!.value;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (a != null) {
      json['a'] = a!.value;
    }
    return json;
  }
}
