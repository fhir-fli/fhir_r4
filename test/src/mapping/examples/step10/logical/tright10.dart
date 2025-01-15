import 'package:fhir_r4/fhir_r4.dart';

import 'tright_inner10.dart';

/// [TRight10]
/// TRight definition
class TRight10 extends Element {
  const TRight10({
    super.id,
    super.extension_,
    this.aa,
    super.disallowExtensions,
    super.objectPath = 'TRight10',
  });

  factory TRight10.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TRight10';
    return TRight10(
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
          ?.map<TRightInner10>(
            (v) => TRightInner10.fromJson(
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
  /// A list of TRightInner10 elements
  final List<TRightInner10>? aa;

  @override
  TRight10 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<TRightInner10>? aa,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return TRight10(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      aa: aa ?? this.aa,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'resourceType': 'TRight'};
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
