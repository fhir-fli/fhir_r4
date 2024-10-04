import 'dart:convert';

import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// Base class for all reusable types defined as part of the FHIR specification.
abstract class DataType extends Element {
  /// Constructor for DataType
  DataType({
    super.id,
    super.extension_ = const <FhirExtension>[],
    super.fhirType = 'DataType',
  });

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'id': id};

  @override
  String toYaml() => json2yaml(toJson());

  static DataType fromYaml(dynamic yaml) => yaml is String
      ? DataType.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DataType.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DataType cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  static DataType fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('DataType.fromJson');
  }

  static DataType fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DataType.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());
}
