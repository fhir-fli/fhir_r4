import 'package:fhir_r4/fhir_r4.dart';

/// [TRight5]
/// TRight definition
class TRight5 extends Element {
  const TRight5({
    super.id,
    super.extension_,
    this.a22,
    super.disallowExtensions,
    super.objectPath = 'TRight5',
  });

  /// FromJson Factory Constructor
  factory TRight5.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TRight5';
    return TRight5(
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
      a22: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'a22',
        FhirString.fromJson,
        '$objectPath.a22',
      ),
    );
  }

  /// [a22]
  /// TRight definition
  final List<FhirString>? a22;

  @override
  TRight5 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirString>? a22,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return TRight5(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      a22: a22 ?? this.a22,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'resourceType': 'TRight'};
    if (id != null) json['id'] = id!.value;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (a22 != null) {
      json['a22'] = a22!.map((e) => e.value).toList();
    }
    return json;
  }
}
