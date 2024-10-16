import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [FhirMeta]
/// The metadata about a resource. This is content in the resource that is
/// maintained by the infrastructure. Changes to the content might not
/// always be associated with version changes to the resource.
class FhirMeta extends DataType {
  /// Primary constructor for [FhirMeta]

  FhirMeta({
    super.id,
    this.extension_,
    this.versionId,
    this.lastUpdated,
    this.source,
    this.profile,
    this.security,
    this.tag,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory FhirMeta.fromJson(Map<String, dynamic> json) {
    return FhirMeta(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      versionId: json['versionId'] != null
          ? FhirId.fromJson({
              'value': json['versionId'],
              '_value': json['_versionId'],
            })
          : null,
      lastUpdated: json['lastUpdated'] != null
          ? FhirInstant.fromJson({
              'value': json['lastUpdated'],
              '_value': json['_lastUpdated'],
            })
          : null,
      source: json['source'] != null
          ? FhirUri.fromJson({
              'value': json['source'],
              '_value': json['_source'],
            })
          : null,
      profile: parsePrimitiveList<FhirCanonical>(
          json['profile'] as List<dynamic>?, json['_profile'] as List<dynamic>?,
          fromJson: FhirCanonical.fromJson),
      security: json['security'] != null
          ? (json['security'] as List<dynamic>)
              .map<Coding>(
                (v) => Coding.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      tag: json['tag'] != null
          ? (json['tag'] as List<dynamic>)
              .map<Coding>(
                (v) => Coding.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [FhirMeta] from a [String]
  /// or [YamlMap] object
  factory FhirMeta.fromYaml(dynamic yaml) => yaml is String
      ? FhirMeta.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? FhirMeta.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('FhirMeta cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [FhirMeta]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory FhirMeta.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return FhirMeta.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'FhirMeta';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [versionId]
  /// The version specific identifier, as it appears in the version portion
  /// of the URL. This value changes when the resource is created, updated,
  /// or deleted.
  final FhirId? versionId;

  /// [lastUpdated]
  /// When the resource last changed - e.g. when the version changed.
  final FhirInstant? lastUpdated;

  /// [source]
  /// A uri that identifies the source system of the resource. This provides
  /// a minimal amount of [Provenance](provenance.html#) information that can
  /// be used to track or differentiate the source of information in the
  /// resource. The source may identify another FHIR server, document,
  /// message, database, etc.
  final FhirUri? source;

  /// [profile]
  /// A list of profiles (references to
  /// [StructureDefinition](structuredefinition.html#) resources) that this
  /// resource claims to conform to. The URL is a reference to
  /// [StructureDefinition.url](structuredefinition-definitions.html#StructureDefinition.url).
  final List<FhirCanonical>? profile;

  /// [security]
  /// Security labels applied to this resource. These tags connect specific
  /// resources to the overall security policy and infrastructure.
  final List<Coding>? security;

  /// [tag]
  /// Tags applied to this resource. Tags are intended to be used to identify
  /// and relate resources to process and workflow, and applications are not
  /// required to consider the tags when interpreting the meaning of a
  /// resource.
  final List<Coding>? tag;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (versionId != null) {
      final fieldJson1 = versionId!.toJson();
      json['versionId'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_versionId'] = fieldJson1['_value'];
      }
    }

    if (lastUpdated != null) {
      final fieldJson2 = lastUpdated!.toJson();
      json['lastUpdated'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_lastUpdated'] = fieldJson2['_value'];
      }
    }

    if (source != null) {
      final fieldJson3 = source!.toJson();
      json['source'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_source'] = fieldJson3['_value'];
      }
    }

    if (profile != null && profile!.isNotEmpty) {
      final fieldJson4 = profile!.map((e) => e.toJson()).toList();
      json['profile'] = fieldJson4.map((e) => e['value']).toList();
      if (fieldJson4.any((e) => e['_value'] != null)) {
        json['_profile'] = fieldJson4.map((e) => e['_value']).toList();
      }
    }

    if (security != null && security!.isNotEmpty) {
      json['security'] = security!.map((e) => e.toJson()).toList();
    }

    if (tag != null && tag!.isNotEmpty) {
      json['tag'] = tag!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  FhirMeta clone() => throw UnimplementedError();
  @override
  FhirMeta copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirId? versionId,
    FhirInstant? lastUpdated,
    FhirUri? source,
    List<FhirCanonical>? profile,
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
      lastUpdated: lastUpdated ?? this.lastUpdated,
      source: source ?? this.source,
      profile: profile ?? this.profile,
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
}
