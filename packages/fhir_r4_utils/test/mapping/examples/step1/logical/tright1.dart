import 'package:fhir_r4/fhir_r4.dart';

/// [TRight1]
/// TRight definition
class TRight1 extends Element {
  const TRight1({
    super.id,
    super.extension_,
    this.a,
    super.disallowExtensions,
    super.objectPath = 'TRight1',
  });

  factory TRight1.empty() => const TRight1();

  /// FromJson Factory Constructor
  factory TRight1.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TRight1';
    return TRight1(
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
      a: JsonParser.parsePrimitive<FhirString>(
        json,
        'a',
        FhirString.fromJson,
        '$objectPath.a',
      ),
    );
  }

  /// [a]
  /// TRight definition
  final FhirString? a;

  @override
  String get fhirType => 'TRight1';

  @override
  TRight1 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? a,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return TRight1(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      a: a ?? this.a,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) json['id'] = id!.value;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (a != null) {
      json['a'] = a!.value;
    }
    return json;
  }

  @override
  TRight1 setChildByName(String name, dynamic value) {
    switch (name) {
      case 'id':
        return copyWith(id: value as FhirString);
      case 'extension':
        return copyWith(extension_: value as List<FhirExtension>);
      case 'a':
        return copyWith(a: value as FhirString);
      default:
        throw StateError('Unknown name in TRight1: $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['List<FhirExtension>'];
      case 'a':
        return ['FhirString'];
      default:
        return [];
    }
  }
}
