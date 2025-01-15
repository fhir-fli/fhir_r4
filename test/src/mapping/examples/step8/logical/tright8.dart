import 'package:fhir_r4/fhir_r4.dart';

/// [TRight8]
/// TRight definition
class TRight8 extends Element {
  const TRight8({
    super.id,
    super.extension_,
    this.d,
    super.disallowExtensions,
    super.objectPath = 'TRight8',
  });

  /// FromJson Factory Constructor
  factory TRight8.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TRight8';
    return TRight8(
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
      d: JsonParser.parsePrimitive<FhirCode>(
        json,
        'd',
        FhirCode.fromJson,
        '$objectPath.d',
      ),
    );
  }

  /// [d]
  /// A code field
  final FhirCode? d;

  @override
  TRight8 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirCode? d,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return TRight8(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      d: d ?? this.d,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'resourceType': 'TRight'};
    if (id != null) json['id'] = id!.value;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (d != null) {
      json['d'] = d!.value;
    }
    return json;
  }
}
