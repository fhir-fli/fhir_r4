import 'package:fhir_r4/fhir_r4.dart';

/// [TRight13]
/// TRight definition
class TRight13 extends Element {
  const TRight13({
    super.id,
    super.extension_,
    this.ptr,
    this.f2,
    super.disallowExtensions,
    super.objectPath = 'TRight13',
  });

  factory TRight13.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TRight13';
    return TRight13(
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
      ptr: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'ptr',
        FhirString.fromJson,
        '$objectPath.ptr',
      ),
      f2: (json['f2'] as List<dynamic>?)
          ?.map<Basic>(
            (v) => Basic.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.f2',
              },
            ),
          )
          .toList(),
    );
  }

  /// [ptr]
  /// A list of string elements
  final List<FhirString>? ptr;

  /// [f2]
  /// A list of Basic elements
  final List<Basic>? f2;

  @override
  TRight13 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirString>? ptr,
    List<Basic>? f2,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return TRight13(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      ptr: ptr ?? this.ptr,
      f2: f2 ?? this.f2,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'resourceType': 'TRight'};
    if (id != null) json['id'] = id!.value;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (ptr != null) json['ptr'] = ptr!.map((e) => e.value).toList();
    if (f2 != null) json['f2'] = f2!.map((e) => e.toJson()).toList();
    return json;
  }
}
