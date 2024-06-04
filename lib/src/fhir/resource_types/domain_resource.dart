//ignore_for_file: always_specify_types

// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../fhir_r4.dart';

/// [DomainResource] Base definition for all FHIR elements.
@JsonSerializable()
abstract class DomainResource extends Resource {
  Narrative? get text;
  List<Resource>? get contained;
  List<FhirExtension>? get extension_;
  List<FhirExtension>? get modifierExtension;

  /// Returns a [Map<String, dynamic>] of the [DomainResource]
  @override
  Map<String, dynamic> toJson() {
    final val = <String, dynamic>{};

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
    writeNotNull('contained', contained?.map((e) => e.toJson()).toList());
    writeNotNull('extension', extension_?.map((e) => e.toJson()).toList());
    writeNotNull('modifierExtension',
        modifierExtension?.map((e) => e.toJson()).toList());
    return val;
  }

  static DomainResource fromYaml(dynamic yaml) => yaml is String
      ? Resource.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
          as DomainResource
      : yaml is YamlMap
          ? Resource.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
              as DomainResource
          : throw ArgumentError(
              'DomainResource cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  static DomainResource fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Resource.fromJson(json) as DomainResource;
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  static R4ResourceType? resourceTypeFromString(String type) =>
      R4ResourceType.fromString(type);

  static String resourceTypeToString(R4ResourceType type) => type.toString();
}
