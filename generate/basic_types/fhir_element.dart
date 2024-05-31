import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:yaml/yaml.dart';

import '../r4.dart';

/// [FhirElement] Base definition for all elements in a resource.
@JsonSerializable()
class FhirElement implements Element {
  /// [FhirElement] Base definition for all elements in a resource.
  const FhirElement({
    this.id,
    this.extension_,
  });

  @override
  final String? id;

  @override
  final List<FhirExtension>? extension_;

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory FhirElement.fromYaml(dynamic yaml) => yaml is String
      ? FhirElement.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? FhirElement.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'FhirElement cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  @override
  String get fhirType => 'Element';

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory FhirElement.fromJson(Map<String, dynamic> json) {
    return FhirElement(
      id: json['id'] as String?,
      extension_: json['extension'] == null
          ? null
          : (json['extension'] as List<dynamic>)
              .map((dynamic e) =>
                  FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
    );
  }

  /// Acts like a constructor, returns a [Element], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory FhirElement.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return FhirElement.fromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        if (id != null) 'id': id,
        if (extension_ != null)
          'extension':
              extension_!.map((FhirExtension e) => e.toJson()).toList(),
      };

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
