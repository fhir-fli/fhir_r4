import 'package:fhir_r4/fhir_r4.dart';

/// [TLeft12]
/// TLeft definition
class TLeft12 extends Element {
  const TLeft12({
    super.id,
    super.extension_,
    this.az1,
    super.disallowExtensions,
    super.objectPath = 'TLeft12',
  });

  factory TLeft12.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TLeft12';
    return TLeft12(
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
      az1: JsonParser.parseObject<TLeft12az1>(
        json,
        'az1',
        TLeft12az1.fromJson,
        '$objectPath.az1',
      ),
    );
  }

  /// [az1]
  /// A single BackboneElement field
  final TLeft12az1? az1;

  @override
  TLeft12 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    TLeft12az1? az1,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return TLeft12(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      az1: az1 ?? this.az1,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) json['id'] = id!.value;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (az1 != null) json['az1'] = az1!.toJson();
    return json;
  }
}

/// [TLeft12az1]
/// Inner BackboneElement for TLeft.az1
class TLeft12az1 extends BackboneElement {
  const TLeft12az1({
    super.id,
    super.extension_,
    this.az2,
    this.az3,
    super.disallowExtensions,
    super.objectPath = 'TLeft12az1',
  });

  factory TLeft12az1.fromJson(Map<String, dynamic> json) {
    const objectPath = 'TLeft12az1';
    return TLeft12az1(
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
      az2: JsonParser.parsePrimitive<FhirString>(
        json,
        'az2',
        FhirString.fromJson,
        '$objectPath.az2',
      ),
      az3: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'az3',
        FhirString.fromJson,
        '$objectPath.az3',
      ),
    );
  }

  /// [az2]
  /// A single string field
  final FhirString? az2;

  /// [az3]
  /// A list of strings
  final List<FhirString>? az3;

  @override
  TLeft12az1 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? az2,
    List<FhirString>? az3,
    List<FhirExtension>? modifierExtension,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return TLeft12az1(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      az2: az2 ?? this.az2,
      az3: az3 ?? this.az3,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) json['id'] = id!.value;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (az2 != null) json['az2'] = az2!.value;
    if (az3 != null) json['az3'] = az3!.map((e) => e.value).toList();
    return json;
  }
}
