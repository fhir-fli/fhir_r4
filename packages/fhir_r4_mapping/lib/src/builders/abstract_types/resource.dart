import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart' show R4ResourceType;
import 'package:fhir_r4_mapping/fhir_r4_mapping.dart';
import 'package:yaml/yaml.dart';

/// [ResourceBuilder] Base definition for all FHIR elements.
abstract class ResourceBuilder extends FhirBaseBuilder {
  /// Main constructor for [ResourceBuilder]
  ResourceBuilder({
    required this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.objectPath = 'Resource',
  });

  /// Creates an empty [ResourceBuilder] object
  factory ResourceBuilder.empty() => throw UnimplementedError();

  /// Acts like a constructor, returns a [ResourceBuilder], accepts a
  /// [Map<String, dynamic>] as an argument
  factory ResourceBuilder.fromJson(Map<String, dynamic> json) =>
      resourceFromJson(json);

  @override
  String get fhirType => 'Resource';

  /// The type of resource
  R4ResourceType resourceType;

  /// The logical id of the resource, as used in the URL for the resource.
  FhirStringBuilder? id;

  /// The metadata about the resource. This is content that is maintained by the
  /// infrastructure. Changes to the content might not always be associated with
  /// version changes to the resource.
  FhirMetaBuilder? meta;

  /// A reference to a set of rules that were followed when the resource was
  /// constructed, and which must be understood when processing the content.
  /// Often, this is a reference to an implementation guide that defines the
  /// special rules along with other profiles etc.
  FhirUriBuilder? implicitRules;

  /// The base language in which the resource is written.
  /// This should be the language of the text value in the content element
  /// when a text value is present.
  CommonLanguagesBuilder? language;

  /// Acts like a constructor, returns a [ResourceBuilder], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  static T fromJsonString<T extends ResourceBuilder>(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return resourceFromJson(json) as T;
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Returns a Resource, accepts a [String] in YAML format as an argument
  static T fromYaml<T extends ResourceBuilder>(dynamic yaml) => yaml is String
      ? ResourceBuilder.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
        ) as T
      : yaml is YamlMap
          ? ResourceBuilder.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
            ) as T
          : throw ArgumentError(
              'Resource cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Returns a [Map<String, dynamic>] of the [ResourceBuilder]
  @override
  Map<String, dynamic> toJson() {
    final val = <String, Object?>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('resourceType', resourceType);
    writeNotNull('id', id);
    writeNotNull('meta', meta?.toJson());
    writeNotNull('implicitRules', implicitRules?.toJson());
    writeNotNull('language', language?.toJson());
    return val;
  }

  /// produce a string of the [resourceType]
  String get resourceTypeString => fhirType;

  /// Convenience method to return a [ReferenceBuilder] referring to that
  /// [ResourceBuilder]
  ReferenceBuilder get thisReference => ReferenceBuilder(
        reference: FhirStringBuilder(path),
        type: FhirUriBuilder(resourceTypeString),
      );

  /// Local Reference for this Resource, form is "ResourceType/Id"
  String get path => '$fhirType/$id';

  /// returns the same resource with a new ID if there is no current ID
  ResourceBuilder newIdIfNoId() => id == null ? newId() : this;

  /// returns the same resource with a new ID (even if there is already an ID
  /// present)
  ResourceBuilder newId() => resourceWithNewId(this);

  /// Updates the [meta] field of this Resource, updates the meta.lastUpdated
  /// field, adds 1 to the version number
  ResourceBuilder updateVersion({
    FhirMetaBuilder? oldMeta,
    bool versionIdAsTime = false,
  }) =>
      updateMeta(this, meta: oldMeta, versionIdAsTime: versionIdAsTime);

  /// Returns a [R4ResourceType] from a [String]
  static R4ResourceType? resourceTypeFromString(String type) =>
      R4ResourceType.fromString(type);

  /// Returns a [String] from a [R4ResourceType]
  static String resourceTypeToString(R4ResourceType type) => type.toString();

  @override
  ResourceBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  });

  /// Retrieves the type of the object by element name.
  @override
  List<String> typeByElementName(String elementName) {
    return <String>[];
  }

  /// Creates an empty property in the object
  @override
  void createProperty(String propertyName);
}
