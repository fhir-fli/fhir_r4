// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:json_annotation/json_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../fhir_r4.dart';

/// [Element] Base definition for all elements in a resource.
@JsonSerializable()
abstract mixin class Element {
  /// [Element] Base definition for all elements in a resource.

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of
  ///  extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  ///  the
  ///  definition of the extension.
  dynamic get id;

  List<FhirExtension>? get extension_;

  /// Produces a Yaml formatted String version of the object
  String toYaml() => json2yaml(toJson());

  /// Factory constructor that accepts a [String] in YAML format as an argument
  static Element fromYaml(dynamic yaml) => yaml is String
      ? Element.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Element.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Element cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  String get fhirType => 'Element';

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  static Element fromJson(Map<String, dynamic> json) {
    return FhirBaseElement.fromJson(json);
  }

  /// Acts like a constructor, returns a [Element], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  static Element fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Element.fromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'extension': extension_,
      };

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  String toJsonString() => jsonEncode(toJson());
}
