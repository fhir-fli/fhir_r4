import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'related_artifact.g.dart';

/// [RelatedArtifact] /// Related artifacts such as additional documentation, justification, or
/// bibliographic references.
@JsonSerializable()
class RelatedArtifact extends DataType {
  RelatedArtifact({
    super.id,
    super.extension_,
    required this.type,
    this.typeElement,
    this.label,
    this.labelElement,
    this.display,
    this.displayElement,
    this.citation,
    this.citationElement,
    this.url,
    this.urlElement,
    this.document,
    this.resource,
    this.resourceElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'RelatedArtifact');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// The type of relationship to the related artifact.
  @JsonKey(name: 'type')
  final RelatedArtifactType type;
  @JsonKey(name: '_type')
  final Element? typeElement;

  /// [label] /// A short label that can be used to reference the citation from elsewhere in
  /// the containing artifact, such as a footnote index.
  @JsonKey(name: 'label')
  final FhirString? label;
  @JsonKey(name: '_label')
  final Element? labelElement;

  /// [display] /// A brief description of the document or knowledge resource being referenced,
  /// suitable for display to a consumer.
  @JsonKey(name: 'display')
  final FhirString? display;
  @JsonKey(name: '_display')
  final Element? displayElement;

  /// [citation] /// A bibliographic citation for the related artifact. This text SHOULD be
  /// formatted according to an accepted citation format.
  @JsonKey(name: 'citation')
  final FhirMarkdown? citation;
  @JsonKey(name: '_citation')
  final Element? citationElement;

  /// [url] /// A url for the artifact that can be followed to access the actual content.
  @JsonKey(name: 'url')
  final FhirUrl? url;
  @JsonKey(name: '_url')
  final Element? urlElement;

  /// [document] /// The document being referenced, represented as an attachment. This is
  /// exclusive with the resource element.
  @JsonKey(name: 'document')
  final Attachment? document;

  /// [resource] /// The related resource, such as a library, value set, profile, or other
  /// knowledge resource.
  @JsonKey(name: 'resource')
  final FhirCanonical? resource;
  @JsonKey(name: '_resource')
  final Element? resourceElement;
  factory RelatedArtifact.fromJson(Map<String, dynamic> json) =>
      _$RelatedArtifactFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RelatedArtifactToJson(this);

  @override
  RelatedArtifact clone() => throw UnimplementedError();
  @override
  RelatedArtifact copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    RelatedArtifactType? type,
    Element? typeElement,
    FhirString? label,
    Element? labelElement,
    FhirString? display,
    Element? displayElement,
    FhirMarkdown? citation,
    Element? citationElement,
    FhirUrl? url,
    Element? urlElement,
    Attachment? document,
    FhirCanonical? resource,
    Element? resourceElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return RelatedArtifact(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      label: label ?? this.label,
      labelElement: labelElement ?? this.labelElement,
      display: display ?? this.display,
      displayElement: displayElement ?? this.displayElement,
      citation: citation ?? this.citation,
      citationElement: citationElement ?? this.citationElement,
      url: url ?? this.url,
      urlElement: urlElement ?? this.urlElement,
      document: document ?? this.document,
      resource: resource ?? this.resource,
      resourceElement: resourceElement ?? this.resourceElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory RelatedArtifact.fromYaml(dynamic yaml) => yaml is String
      ? RelatedArtifact.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? RelatedArtifact.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'RelatedArtifact cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory RelatedArtifact.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return RelatedArtifact.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
