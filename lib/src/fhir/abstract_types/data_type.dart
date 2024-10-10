import 'dart:convert';

import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// Base class for all reusable types defined as part of the FHIR specification.
abstract class DataType extends Element {
  /// Constructor for DataType
  DataType({
    super.id,
    super.extension_,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'DataType';

  @override
  Map<String, Object?> toJson() {
    final Map<String, Object?> json = <String, Object?>{};
    if (id?.value != null) {
      json['id'] = id?.value;
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension e) => e.toJson()).toList();
    }
    return json;
  }

  static DataType fromYaml(dynamic yaml) => yaml is String
      ? DataType.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? DataType.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'DataType cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory DataType.fromJson(Map<String, Object?> json) {
    throw UnimplementedError('DataType.fromJson $json');
  }

  @override
  DataType copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  });
}
