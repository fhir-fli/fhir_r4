import 'dart:convert';

import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [PrimitiveElement] Base definition for all elements in a resource.
class PrimitiveElement implements Element {
  /// [PrimitiveElement] Base definition for all elements in a resource.
  const PrimitiveElement({
    this.id,
    this.extension_,
  });

  @override
  final String? id;

  @override
  final List<FhirExtension>? extension_;

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory PrimitiveElement.fromYaml(dynamic yaml) => yaml is String
      ? PrimitiveElement.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? PrimitiveElement.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'PrimitiveElement cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  @override
  String get fhirType => 'Element';

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory PrimitiveElement.fromJson(Map<String, dynamic> json) {
    return PrimitiveElement(
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
  factory PrimitiveElement.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return PrimitiveElement.fromJson(json);
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
