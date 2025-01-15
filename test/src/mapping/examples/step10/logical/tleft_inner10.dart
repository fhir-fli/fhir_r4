import 'package:fhir_r4/fhir_r4.dart';

/// [TLeftInner10]
/// TLeftInner definition
class TLeftInner10 extends Element {
  const TLeftInner10({
    super.id,
    super.extension_,
    this.ab,
    super.disallowExtensions,
    super.objectPath = 'TLeftInner10',
  });

  factory TLeftInner10.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TLeftInner10';
    return TLeftInner10(
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
      ab: JsonParser.parsePrimitive<FhirString>(
        json,
        'ab',
        FhirString.fromJson,
        '$objectPath.ab',
      ),
    );
  }

  /// [ab]
  /// A string field
  final FhirString? ab;

  @override
  TLeftInner10 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? ab,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return TLeftInner10(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      ab: ab ?? this.ab,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) json['id'] = id!.value;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (ab != null) {
      json['ab'] = ab!.value;
    }
    return json;
  }
}
