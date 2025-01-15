import 'package:fhir_r4/fhir_r4.dart';

/// [TRight4]
/// TRight definition
class TRight4 extends Element {
  const TRight4({
    super.id,
    super.extension_,
    this.a21,
    super.disallowExtensions,
    super.objectPath = 'TRight4',
  });

  /// FromJson Factory Constructor
  factory TRight4.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TRight4';
    return TRight4(
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
      a21: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'a21',
        FhirInteger.fromJson,
        '$objectPath.a21',
      ),
    );
  }

  /// [a21]
  /// TRight definition
  final FhirInteger? a21;

  @override
  TRight4 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirInteger? a21,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return TRight4(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      a21: a21 ?? this.a21,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'resourceType': 'TRight'};
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
