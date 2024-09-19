import 'dart:convert';

import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [BackboneElement] Base definition for the few data types that are allowed to
/// carry modifier extensions.
abstract class BackboneElement extends DataType {
  List<FhirExtension>? get modifierExtension;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'extension': extension_,
        'modifierExtension': modifierExtension,
      };

  @override
  String toYaml() => json2yaml(toJson());

  static BackboneElement fromYaml(dynamic yaml) => yaml is String
      ? BackboneElement.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? BackboneElement.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'BackboneElement cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  static BackboneElement fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('BackboneElement.fromJson');
  }

  static BackboneElement fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return BackboneElement.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());
}
