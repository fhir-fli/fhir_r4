// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:json_annotation/json_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../fhir_r4.dart';

/// [BackboneType] Base definition for the few data types that are allowed to
/// carry modifier extensions.
@JsonSerializable()
abstract mixin class BackboneType implements Element {
  /// [BackboneType] Base definition for the few data types that are allowed to
  /// carry modifier extensions.

  /// [id] Unique id for the element within a resource (for internal
  ///  references).
  /// This may be any string value that does not contain spaces.;
  @override
  String? get id;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of
  ///  extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension. Applications processing a resource are
  /// required to check for modifier extensions. Modifier extensions SHALL NOT
  /// change the meaning of any elements on Resource or DomainResource
  /// (including cannot change the meaning of modifierExtension itself).
  List<FhirExtension>? get modifierExtension;

  /// Produces a Yaml formatted String version of the object
  @override
  String toYaml() => json2yaml(toJson());

  /// Factory constructor that accepts a [String] in YAML format as an argument
  BackboneType fromYaml(dynamic yaml) => yaml is String
      ? BackboneType.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? BackboneType.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'BackboneType cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  static BackboneType fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('BackboneType.fromJson');
  }

  /// Acts like a constructor, returns a [BackboneType], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
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
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'extension': extension_,
        '_modifierExtension': modifierExtension,
      };

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());
}
