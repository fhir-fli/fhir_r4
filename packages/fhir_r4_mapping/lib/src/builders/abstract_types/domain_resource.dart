import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart' show R4ResourceType;
import 'package:fhir_r4_mapping/fhir_r4_mapping.dart';
import 'package:yaml/yaml.dart';

/// [DomainResourceBuilder] Base definition for all FHIR elements.
abstract class DomainResourceBuilder extends ResourceBuilder {
  /// Main constructor for [DomainResourceBuilder]
  DomainResourceBuilder({
    required super.resourceType,
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.objectPath = 'DomainResource',
  });

  /// Creates an empty [DomainResourceBuilder] object
  factory DomainResourceBuilder.empty() => throw UnimplementedError();

  /// Factory constructor for [DomainResourceBuilder] that takes in a
  /// [Map<String, dynamic>] and returns a [DomainResourceBuilder]
  factory DomainResourceBuilder.fromJson(Map<String, dynamic> json) =>
      ResourceBuilder.fromJson(json) as DomainResourceBuilder;

  @override
  String get fhirType => 'DomainResource';

  /// A human-readable summary of the resource conveying the essential clinical
  /// and business information for the resource.",
  NarrativeBuilder? text;

  /// These resources do not have an independent existence apart from the
  /// resource that contains them - they cannot be identified independently,
  /// and nor can they have their own independent transaction scope
  List<ResourceBuilder>? contained;

  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe and
  /// manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.",
  List<FhirExtensionBuilder>? extension_;

  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource and that modifies the understanding of
  /// the element that contains it and/or the understanding of the containing
  /// element\u0027s descendants. Usually modifier elements provide negation or
  /// qualification. To make the use of extensions safe and manageable, there
  /// is a strict set of governance applied to the definition and use of
  /// extensions. Though any implementer is allowed to define an extension,
  /// there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  /// required to check for modifier extensions.\n\nModifier extensions SHALL
  /// NOT change the meaning of any elements on Resource or DomainResource
  /// (including cannot change the meaning of modifierExtension itself).",
  List<FhirExtensionBuilder>? modifierExtension;

  /// Returns a [Map<String, dynamic>] of the [DomainResourceBuilder]
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
    writeNotNull('text', text?.toJson());
    writeNotNull(
      'contained',
      contained?.map((ResourceBuilder e) => e.toJson()).toList(),
    );
    writeNotNull(
      'extension',
      extension_?.map((FhirExtensionBuilder e) => e.toJson()).toList(),
    );
    writeNotNull(
      'modifierExtension',
      modifierExtension?.map((FhirExtensionBuilder e) => e.toJson()).toList(),
    );
    return val;
  }

  /// Factory constructor for [DomainResourceBuilder]
  /// that takes in a [YamlMap] and returns a [DomainResourceBuilder]
  static DomainResourceBuilder fromYaml(dynamic yaml) => yaml is String
      ? ResourceBuilder.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
        ) as DomainResourceBuilder
      : yaml is YamlMap
          ? ResourceBuilder.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
            ) as DomainResourceBuilder
          : throw ArgumentError(
              'DomainResource cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [DomainResourceBuilder] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  static DomainResourceBuilder fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ResourceBuilder.fromJson(json) as DomainResourceBuilder;
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Returns a [R4ResourceType] from a [String]
  static R4ResourceType? resourceTypeFromString(String type) =>
      R4ResourceType.fromString(type);

  /// Returns a [String] from a [R4ResourceType]
  static String resourceTypeToString(R4ResourceType type) => type.toString();

  @override
  DomainResourceBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
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
