import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [DomainResource] Base definition for all FHIR elements.
@JsonSerializable()
abstract class DomainResource extends Resource {
  const DomainResource({
    required super.resourceType,
    required super.fhirType,
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @JsonKey(name: 'text')
  final Narrative? text;
  @JsonKey(name: 'contained')
  final List<Resource>? contained;
  @JsonKey(name: 'extension')
  final List<FhirExtension>? extension_;
  @JsonKey(name: 'modifierExtension')
  final List<FhirExtension>? modifierExtension;

  /// Returns a [Map<String, Object?>] of the [DomainResource]
  @override
  Map<String, Object?> toJson() {
    final Map<String, Object?> val = <String, Object?>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('resourceType', resourceType);
    writeNotNull('id', id);
    writeNotNull('meta', meta?.toJson());
    writeNotNull('implicitRules', implicitRules?.toJson());
    writeNotNull('_implicitRules', implicitRulesElement?.toJson());
    writeNotNull('language', language?.toJson());
    writeNotNull('_language', languageElement?.toJson());
    writeNotNull('text', text?.toJson());
    writeNotNull(
        'contained', contained?.map((Resource e) => e.toJson()).toList());
    writeNotNull(
        'extension', extension_?.map((FhirExtension e) => e.toJson()).toList());
    writeNotNull('modifierExtension',
        modifierExtension?.map((FhirExtension e) => e.toJson()).toList());
    return val;
  }

  factory DomainResource.fromJson(Map<String, Object?> json) =>
      Resource.fromJson(json) as DomainResource;

  static DomainResource fromYaml(dynamic yaml) => yaml is String
      ? Resource.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
          as DomainResource
      : yaml is YamlMap
          ? Resource.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
              as DomainResource
          : throw ArgumentError(
              'DomainResource cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  static DomainResource fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Resource.fromJson(json) as DomainResource;
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  static R4ResourceType? resourceTypeFromString(String type) =>
      R4ResourceType.fromString(type);

  static String resourceTypeToString(R4ResourceType type) => type.toString();

  @override
  @override
  DomainResource copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    CommonLanguages? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  });
}
