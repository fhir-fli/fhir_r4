import 'package:fhir_r4/fhir_r4.dart';

import 'tleft_inner10.dart';

/// [TLeft10]
/// TLeft definition
class TLeft10 extends Element {
  const TLeft10({
    super.id,
    super.extension_,
    this.aa,
    super.disallowExtensions,
    super.objectPath = 'TLeft10',
  });

  factory TLeft10.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TLeft10';
    return TLeft10(
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
      aa: (json['aa'] as List<dynamic>?)
          ?.map<TLeftInner10>(
            (v) => TLeftInner10.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.aa',
              },
            ),
          )
          .toList(),
    );
  }

  /// [aa]
  /// A list of TLeftInner10 elements
  final List<TLeftInner10>? aa;

  @override
  TLeft10 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<TLeftInner10>? aa,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return TLeft10(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      aa: aa ?? this.aa,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) json['id'] = id!.value;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (aa != null) {
      json['aa'] = aa!.map((e) => e.toJson()).toList();
    }
    return json;
  }
}
