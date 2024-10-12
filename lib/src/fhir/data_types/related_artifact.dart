import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [RelatedArtifact]
/// Related artifacts such as additional documentation, justification, or
/// bibliographic references.
class RelatedArtifact extends DataType {
  /// Primary constructor for [RelatedArtifact]

  RelatedArtifact({
    super.id,
    super.extension_,
    required this.type,

    /// Extensions for [type]
    this.typeElement,
    this.label,

    /// Extensions for [label]
    this.labelElement,
    this.display,

    /// Extensions for [display]
    this.displayElement,
    this.citation,

    /// Extensions for [citation]
    this.citationElement,
    this.url,

    /// Extensions for [url]
    this.urlElement,
    this.document,
    this.resource,

    /// Extensions for [resource]
    this.resourceElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RelatedArtifact.fromJson(Map<String, dynamic> json) {
    return RelatedArtifact(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      type: RelatedArtifactType.fromJson(json['type']),
      typeElement: json['_type'] != null
          ? Element.fromJson(
              json['_type'] as Map<String, dynamic>,
            )
          : null,
      label: json['label'] != null ? FhirString.fromJson(json['label']) : null,
      labelElement: json['_label'] != null
          ? Element.fromJson(
              json['_label'] as Map<String, dynamic>,
            )
          : null,
      display:
          json['display'] != null ? FhirString.fromJson(json['display']) : null,
      displayElement: json['_display'] != null
          ? Element.fromJson(
              json['_display'] as Map<String, dynamic>,
            )
          : null,
      citation: json['citation'] != null
          ? FhirMarkdown.fromJson(json['citation'])
          : null,
      citationElement: json['_citation'] != null
          ? Element.fromJson(
              json['_citation'] as Map<String, dynamic>,
            )
          : null,
      url: json['url'] != null ? FhirUrl.fromJson(json['url']) : null,
      urlElement: json['_url'] != null
          ? Element.fromJson(
              json['_url'] as Map<String, dynamic>,
            )
          : null,
      document: json['document'] != null
          ? Attachment.fromJson(
              json['document'] as Map<String, dynamic>,
            )
          : null,
      resource: json['resource'] != null
          ? FhirCanonical.fromJson(json['resource'])
          : null,
      resourceElement: json['_resource'] != null
          ? Element.fromJson(
              json['_resource'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [RelatedArtifact] from a [String] or [YamlMap] object
  factory RelatedArtifact.fromYaml(dynamic yaml) => yaml is String
      ? RelatedArtifact.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? RelatedArtifact.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'RelatedArtifact cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [RelatedArtifact] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RelatedArtifact.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return RelatedArtifact.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'RelatedArtifact';

  /// [type]
  /// The type of relationship to the related artifact.
  final RelatedArtifactType type;

  /// Extensions for [type]
  final Element? typeElement;

  /// [label]
  /// A short label that can be used to reference the citation from elsewhere
  /// in the containing artifact, such as a footnote index.
  final FhirString? label;

  /// Extensions for [label]
  final Element? labelElement;

  /// [display]
  /// A brief description of the document or knowledge resource being
  /// referenced, suitable for display to a consumer.
  final FhirString? display;

  /// Extensions for [display]
  final Element? displayElement;

  /// [citation]
  /// A bibliographic citation for the related artifact. This text SHOULD be
  /// formatted according to an accepted citation format.
  final FhirMarkdown? citation;

  /// Extensions for [citation]
  final Element? citationElement;

  /// [url]
  /// A url for the artifact that can be followed to access the actual
  /// content.
  final FhirUrl? url;

  /// Extensions for [url]
  final Element? urlElement;

  /// [document]
  /// The document being referenced, represented as an attachment. This is
  /// exclusive with the resource element.
  final Attachment? document;

  /// [resource]
  /// The related resource, such as a library, value set, profile, or other
  /// knowledge resource.
  final FhirCanonical? resource;

  /// Extensions for [resource]
  final Element? resourceElement;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['type'] = type.toJson();
    if (label?.value != null) {
      json['label'] = label!.toJson();
    }
    if (labelElement != null) {
      json['_label'] = labelElement!.toJson();
    }
    if (display?.value != null) {
      json['display'] = display!.toJson();
    }
    if (displayElement != null) {
      json['_display'] = displayElement!.toJson();
    }
    if (citation?.value != null) {
      json['citation'] = citation!.toJson();
    }
    if (citationElement != null) {
      json['_citation'] = citationElement!.toJson();
    }
    if (url?.value != null) {
      json['url'] = url!.toJson();
    }
    if (urlElement != null) {
      json['_url'] = urlElement!.toJson();
    }
    if (document != null) {
      json['document'] = document!.toJson();
    }
    if (resource?.value != null) {
      json['resource'] = resource!.toJson();
    }
    if (resourceElement != null) {
      json['_resource'] = resourceElement!.toJson();
    }
    return json;
  }

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
}
