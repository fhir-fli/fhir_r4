import 'package:fhir_r4/fhir_r4.dart';

/// [TRight2]
/// TRight definition
class TRight2 extends Element {
  const TRight2({
    super.id,
    super.extension_,
    this.a2,
    super.disallowExtensions,
    super.objectPath = 'TRight2',
  });

  factory TRight2.empty() => const TRight2();

  /// FromJson Factory Constructor
  factory TRight2.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TRight2';
    return TRight2(
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
  TRight2 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? a2,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return TRight2(
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

  @override
  TRight2 setChildByName(String name, dynamic value) {
    switch (name) {
      case 'id':
        return copyWith(id: value as FhirString);
      case 'extension':
        return copyWith(extension_: value as List<FhirExtension>);
      case 'a2':
        return copyWith(a2: value as FhirString);
      default:
        return this;
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
      case 'a2':
        return ['FhirString'];
      default:
        return [];
    }
  }
}
