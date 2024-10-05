import 'dart:convert';

import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [Resource] Base definition for all FHIR elements.
abstract class Resource extends FhirBase {
  Resource({
    required this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.implicitRulesElement,
    this.language,
    this.languageElement,
  }) : super(fhirType: resourceType.toString());

  R4ResourceType resourceType;
  FhirString? id;
  FhirMeta? meta;
  FhirUri? implicitRules;
  Element? implicitRulesElement;
  FhirCode? language;
  Element? languageElement;

  /// Acts like a constructor, returns a [Resource], accepts a
  /// [Map<String, Object?>] as an argument
  factory Resource.fromJson(Map<String, Object?> json) =>
      resourceFromJson(json);

  /// Acts like a constructor, returns a [Resource], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  static T fromJsonString<T extends Resource>(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return resourceFromJson(json) as T;
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Returns a Resource, accepts a [String] in YAML format as an argument
  static T fromYaml<T extends Resource>(dynamic yaml) => yaml is String
      ? Resource.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>) as T
      : yaml is YamlMap
          ? Resource.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>) as T
          : throw ArgumentError(
              'Resource cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Returns a [Map<String, Object?>] of the [Resource]
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
    return val;
  }

  /// Produces a Yaml formatted String version of the object
  @override
  String toYaml() => json2yaml(toJson());

  /// produce a string of the [resourceType]
  String get resourceTypeString => fhirType;

  /// Convenience method to return a [Reference] referring to that [Resource]
  Reference get thisReference =>
      Reference(reference: FhirString(path), type: FhirUri(resourceTypeString));

  /// Local Reference for this Resource, form is "ResourceType/Id"
  String get path => '$fhirType/$id';

  /// returns the same resource with a new ID if there is no current ID
  Resource newIdIfNoId() => throw UnimplementedError();
  // id == null ? _newId(this) : this;

  /// returns the same resource with a new ID (even if there is already an ID
  /// present)
  Resource newId() => throw UnimplementedError();
  // _newId(this);

  /// Updates the [meta] field of this Resource, updates the meta.lastUpdated
  /// field, adds 1 to the version number
  Resource updateVersion({FhirMeta? oldMeta, bool versionIdAsTime = false}) =>
      throw UnimplementedError();
  // _updateMeta(this, meta: oldMeta, versionIdAsTime: versionIdAsTime);

  static R4ResourceType? resourceTypeFromString(String type) =>
      R4ResourceType.fromString(type);

  static String resourceTypeToString(R4ResourceType type) => type.toString();

  @override
  String toJsonString() => jsonEncode(toJson());
}
