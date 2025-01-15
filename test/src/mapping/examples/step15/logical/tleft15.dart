import 'package:fhir_r4/fhir_r4.dart';

/// [TLeft15]
/// TLeft definition
class TLeft15 extends Element {
  const TLeft15({
    super.id,
    super.extension_,
    this.a,
    this.b,
    this.test,
    super.disallowExtensions,
    super.objectPath = 'TLeft15',
  });

  factory TLeft15.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TLeft15';
    return TLeft15(
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
      a: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'a',
        FhirString.fromJson,
        '$objectPath.a',
      ),
      b: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'b',
        FhirString.fromJson,
        '$objectPath.b',
      ),
      test: JsonParser.parsePrimitive<FhirString>(
        json,
        'test',
        FhirString.fromJson,
        '$objectPath.test',
      ),
    );
  }

  /// [a]
  /// List of string elements
  final List<FhirString>? a;

  /// [b]
  /// List of string elements
  final List<FhirString>? b;

  /// [test]
  /// A single string element
  final FhirString? test;

  @override
  TLeft15 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirString>? a,
    List<FhirString>? b,
    FhirString? test,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return TLeft15(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      a: a ?? this.a,
      b: b ?? this.b,
      test: test ?? this.test,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) json['id'] = id!.value;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (a != null) json['a'] = a!.map((e) => e.value).toList();
    if (b != null) json['b'] = b!.map((e) => e.value).toList();
    if (test != null) json['test'] = test!.value;
    return json;
  }
}
