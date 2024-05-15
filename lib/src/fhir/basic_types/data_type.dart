import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [DataType] Base definition for the few data types that are allowed to
/// carry modifier extensions.
@JsonSerializable()
abstract mixin class DataType implements Element {
  /// [DataType] Base definition for the few data types that are allowed to
  /// carry modifier extensions.

  /// [id] Unique id for the element within a resource (for internal
  ///  references).
  /// This may be any string value that does not contain spaces.;
  @override
  String? get id;

  /// Produces a Yaml formatted String version of the object
  @override
  String toYaml() => json2yaml(toJson());

  /// Factory constructor that accepts a [String] in YAML format as an argument
  DataType fromYaml(dynamic yaml) => yaml is String
      ? DataType.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DataType.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DataType cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  static DataType fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('DataType.fromJson');
  }

  /// Acts like a constructor, returns a [DataType], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
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
  Map<String, dynamic> toJson() => <String, dynamic>{'id': id};

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());
}
