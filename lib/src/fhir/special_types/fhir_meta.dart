// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../fhir_r4.dart';

part 'fhir_meta.freezed.dart';
part 'fhir_meta.g.dart';

/// [FhirMeta] The metadata about a resource. This is content in the resource
@freezed
class FhirMeta with _$FhirMeta implements DataType {
  /// [FhirMeta] The metadata about a resource. This is content in the resource
  const FhirMeta._();

  /// [FhirMeta] The metadata about a resource. This is content in the resource
  /// that is maintained by the infrastructure. Changes to the content might not
  ///  always be associated with version changes to the resource.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [versionId] The version specific identifier, as it appears in the version
  /// portion of the URL. This value changes when the resource is created,
  ///  updated, or deleted.
  ///
  /// [versionIdElement] Extensions for versionId
  ///
  /// [lastUpdated] When the resource last changed - e.g. when the version
  ///  changed.
  ///
  /// [lastUpdatedElement] Extensions for lastUpdated
  ///
  /// [source] A uri that identifies the source system of the resource. This
  /// provides a minimal amount of [[[Provenance]]] information that can be used
  /// to track or differentiate the source of information in the resource. The
  /// source may identify another FHIR server, document, message, database,
  ///  etc.
  ///
  /// [sourceElement] Extensions for source
  ///
  /// [profile] A list of profiles (references to [[[StructureDefinition]]]
  /// resources) that this resource claims to conform to. The URL is a reference
  ///  to [[[StructureDefinition.url]]].
  ///
  /// [security] Security labels applied to this resource. These tags connect
  ///  specific resources to the overall security policy and infrastructure.
  ///
  /// [tag] Tags applied to this resource. Tags are intended to be used to
  /// identify and relate resources to process and workflow, and applications
  /// are not required to consider the tags when interpreting the meaning of a
  ///  resource.
  const factory FhirMeta({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [versionId] The version specific identifier, as it appears in the version
    /// portion of the URL. This value changes when the resource is created,
    ///  updated, or deleted.
    FhirId? versionId,

    /// [versionIdElement] Extensions for versionId
    @JsonKey(name: '_versionId') Element? versionIdElement,

    /// [lastUpdated] When the resource last changed - e.g. when the version
    ///  changed.
    FhirInstant? lastUpdated,

    /// [lastUpdatedElement] Extensions for lastUpdated
    @JsonKey(name: '_lastUpdated') Element? lastUpdatedElement,

    /// [source] A uri that identifies the source system of the resource. This
    /// provides a minimal amount of [[[Provenance]]] information that can be used
    /// to track or differentiate the source of information in the resource. The
    /// source may identify another FHIR server, document, message, database,
    ///  etc.
    FhirUri? source,

    /// [sourceElement] Extensions for source
    @JsonKey(name: '_source') Element? sourceElement,

    /// [profile] A list of profiles (references to [[[StructureDefinition]]]
    /// resources) that this resource claims to conform to. The URL is a reference
    ///  to [[[StructureDefinition.url]]].
    List<FhirCanonical>? profile,

    /// [security] Security labels applied to this resource. These tags connect
    ///  specific resources to the overall security policy and infrastructure.
    List<Coding>? security,

    /// [tag] Tags applied to this resource. Tags are intended to be used to
    /// identify and relate resources to process and workflow, and applications
    /// are not required to consider the tags when interpreting the meaning of a
    ///  resource.
    List<Coding>? tag,
  }) = _FhirMeta;

  @override
  String get fhirType => 'FhirMeta';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory FhirMeta.fromYaml(dynamic yaml) => yaml is String
      ? FhirMeta.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? FhirMeta.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Meta cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory FhirMeta.fromJson(Map<String, dynamic> json) =>
      _$FhirMetaFromJson(json);

  /// Acts like a constructor, returns a [Meta], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory FhirMeta.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$FhirMetaFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
