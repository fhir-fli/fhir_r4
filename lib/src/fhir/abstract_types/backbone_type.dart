import 'dart:convert';

import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [BackboneType] Base definition for the few data types that are allowed to
/// carry modifier extensions.
abstract class BackboneType extends DataType {
  List<FhirExtension>? get modifierExtension;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'extension': extension_,
        'modifierExtension': modifierExtension,
      };

  @override
  String toYaml() => json2yaml(toJson());

  static BackboneType fromYaml(dynamic yaml) => yaml is String
      ? BackboneType.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? BackboneType.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'BackboneType cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  static BackboneType fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('BackboneType.fromJson');
  }

  static BackboneType fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return BackboneType.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());
}
