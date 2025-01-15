import 'package:fhir_r4/fhir_r4.dart';

/// [TRight3]
/// TRight definition
class TRight3 extends Element {
  const TRight3({
    super.id,
    super.extension_,
    this.a2,
    super.disallowExtensions,
    super.objectPath = 'TRight3',
  });

  /// FromJson Factory Constructor
  factory TRight3.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TRight3';
    return TRight3(
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
      a2: JsonParser.parsePrimitive<FhirString>(
        json,
        'a2',
        FhirString.fromJson,
        '$objectPath.a2',
      ),
    );
  }

  /// [a2]
  /// TRight definition
  final FhirString? a2;

  @override
  TRight3 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? a2,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return TRight3(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      a2: a2 ?? this.a2,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'resourceType': 'TRight'};
    if (id != null) json['id'] = id!.value;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (a2 != null) {
      json['a2'] = a2!.value;
    }
    return json;
  }
}
