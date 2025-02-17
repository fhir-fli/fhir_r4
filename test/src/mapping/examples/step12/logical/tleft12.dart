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
    final json = <String, dynamic>{'resourceType': 'TLeft'};
    if (id != null) json['id'] = id!.value;
    if (extension_ != null) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }
    if (az1 != null) json['az1'] = az1!.toJson();
    return json;
  }

  @override
  List<String> listChildrenNames() => ['id', 'extension', 'az1'];

  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) fields.add(id!);
      case 'extension':
        if (extension_ != null) fields.addAll(extension_!);
      case 'az1':
        if (az1 != null) fields.add(az1!);
      default:
        if (checkValid) throw ArgumentError('Invalid name: $fieldName');
    }
    return fields;
  }

  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) throw StateError('Too many values for $name found');
    return values.isNotEmpty ? values.first : null;
  }

  @override
  bool equalsDeep(FhirBase? other) {
    if (other is! TLeft12) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        listEquals<FhirBase>(extension_, other.extension_) &&
        az1 == other.az1;
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

  @override
  List<String> listChildrenNames() => ['id', 'extension', 'az2', 'az3'];

  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) fields.add(id!);
      case 'extension':
        if (extension_ != null) fields.addAll(extension_!);
      case 'az2':
        if (az2 != null) fields.add(az2!);
      case 'az3':
        if (az3 != null) fields.addAll(az3!);
      default:
        if (checkValid) throw ArgumentError('Invalid name: $fieldName');
    }
    return fields;
  }

  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) throw StateError('Too many values for $name found');
    return values.isNotEmpty ? values.first : null;
  }

  @override
  bool equalsDeep(FhirBase? other) {
    if (other is! TLeft12az1) return false;
    if (identical(this, other)) return true;
    return id == other.id &&
        listEquals<FhirBase>(extension_, other.extension_) &&
        az2 == other.az2 &&
        listEquals<FhirBase>(az3, other.az3);
  }
}
