import 'package:fhir_r4/fhir_r4.dart';

/// [TLeft9]
/// TLeft definition
class TLeft9 extends Element {
  const TLeft9({
    super.id,
    super.extension_,
    this.i,
    this.m,
    super.disallowExtensions,
    super.objectPath = 'TLeft9',
  });

  /// FromJson Factory Constructor
  factory TLeft9.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TLeft9';
    return TLeft9(
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
      i: JsonParser.parsePrimitive<FhirString>(
        json,
        'i',
        FhirString.fromJson,
        '$objectPath.i',
      ),
      m: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'm',
        FhirInteger.fromJson,
        '$objectPath.m',
      ),
    );
  }

  /// [i]
  /// An optional string field
  final FhirString? i;

  /// [m]
  /// A required integer field
  final FhirInteger? m;

  @override
  TLeft9 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? i,
    FhirInteger? m,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return TLeft9(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      i: i ?? this.i,
      m: m ?? this.m,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) json['id'] = id!.value;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (i != null) json['i'] = i!.value;
    if (m != null) json['m'] = m!.value;
    return json;
  }
}
