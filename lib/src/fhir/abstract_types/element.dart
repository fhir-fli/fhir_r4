import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [Element] Base definition for all FHIR elements.
@JsonSerializable()
abstract class Element extends FhirBase {
  String? get id;
  List<FhirExtension>? get extension_;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'extension': extension_,
      };

  @override
  String toYaml() => json2yaml(toJson());

  static Element fromYaml(dynamic yaml) => yaml is String
      ? Element.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Element.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Element cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  static Element fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('Element.fromJson');
  }

  static Element fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Element.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  String toJsonString() => jsonEncode(toJson());
}
