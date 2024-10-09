import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'meta.g.dart';

/// [FhirMeta] /// The metadata about a resource. This is content in the resource that is
/// maintained by the infrastructure. Changes to the content might not always
/// be associated with version changes to the resource.
@JsonSerializable()
class FhirMeta extends DataType {
  FhirMeta({
    super.id,
    super.extension_,
    this.versionId,
    this.versionIdElement,
    this.lastUpdated,
    this.lastUpdatedElement,
    this.source,
    this.sourceElement,
    this.profile,
    this.profileElement,
    this.security,
    this.tag,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'FhirMeta';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [versionId] /// The version specific identifier, as it appears in the version portion of
  /// the URL. This value changes when the resource is created, updated, or
  /// deleted.
  @JsonKey(name: 'versionId')
  final FhirId? versionId;
  @JsonKey(name: '_versionId')
  final Element? versionIdElement;

  /// [lastUpdated] /// When the resource last changed - e.g. when the version changed.
  @JsonKey(name: 'lastUpdated')
  final FhirInstant? lastUpdated;
  @JsonKey(name: '_lastUpdated')
  final Element? lastUpdatedElement;

  /// [source] /// A uri that identifies the source system of the resource. This provides a
  /// minimal amount of [Provenance](provenance.html#) information that can be
  /// used to track or differentiate the source of information in the resource.
  /// The source may identify another FHIR server, document, message, database,
  /// etc.
  @JsonKey(name: 'source')
  final FhirUri? source;
  @JsonKey(name: '_source')
  final Element? sourceElement;

  /// [profile] /// A list of profiles (references to
  /// [StructureDefinition](structuredefinition.html#) resources) that this
  /// resource claims to conform to. The URL is a reference to
  /// [StructureDefinition.url](structuredefinition-definitions.html#StructureDefinition.url).
  @JsonKey(name: 'profile')
  final List<FhirCanonical>? profile;
  @JsonKey(name: '_profile')
  final List<Element>? profileElement;

  /// [security] /// Security labels applied to this resource. These tags connect specific
  /// resources to the overall security policy and infrastructure.
  @JsonKey(name: 'security')
  final List<Coding>? security;

  /// [tag] /// Tags applied to this resource. Tags are intended to be used to identify and
  /// relate resources to process and workflow, and applications are not required
  /// to consider the tags when interpreting the meaning of a resource.
  @JsonKey(name: 'tag')
  final List<Coding>? tag;
  factory FhirMeta.fromJson(Map<String, dynamic> json) =>
      _$FhirMetaFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$FhirMetaToJson(this);

  @override
  FhirMeta clone() => throw UnimplementedError();
  @override
  FhirMeta copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirId? versionId,
    Element? versionIdElement,
    FhirInstant? lastUpdated,
    Element? lastUpdatedElement,
    FhirUri? source,
    Element? sourceElement,
    List<FhirCanonical>? profile,
    List<Element>? profileElement,
    List<Coding>? security,
    List<Coding>? tag,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return FhirMeta(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      versionId: versionId ?? this.versionId,
      versionIdElement: versionIdElement ?? this.versionIdElement,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      lastUpdatedElement: lastUpdatedElement ?? this.lastUpdatedElement,
      source: source ?? this.source,
      sourceElement: sourceElement ?? this.sourceElement,
      profile: profile ?? this.profile,
      profileElement: profileElement ?? this.profileElement,
      security: security ?? this.security,
      tag: tag ?? this.tag,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory FhirMeta.fromYaml(dynamic yaml) => yaml is String
      ? FhirMeta.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? FhirMeta.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'FhirMeta cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory FhirMeta.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return FhirMeta.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
