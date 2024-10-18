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
    this.label,
    this.display,
    this.citation,
    this.url,
    this.document,
    this.resource,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RelatedArtifact.fromJson(
    Map<String, dynamic> json,
  ) {
    return RelatedArtifact(
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
      type: RelatedArtifactType.fromJson({
        'value': json['type'],
        '_value': json['_type'],
      }),
      label: json['label'] != null
          ? FhirString.fromJson({
              'value': json['label'],
              '_value': json['_label'],
            })
          : null,
      display: json['display'] != null
          ? FhirString.fromJson({
              'value': json['display'],
              '_value': json['_display'],
            })
          : null,
      citation: json['citation'] != null
          ? FhirMarkdown.fromJson({
              'value': json['citation'],
              '_value': json['_citation'],
            })
          : null,
      url: json['url'] != null
          ? FhirUrl.fromJson({
              'value': json['url'],
              '_value': json['_url'],
            })
          : null,
      document: json['document'] != null
          ? Attachment.fromJson(
              json['document'] as Map<String, dynamic>,
            )
          : null,
      resource: json['resource'] != null
          ? FhirCanonical.fromJson({
              'value': json['resource'],
              '_value': json['_resource'],
            })
          : null,
    );
  }

  /// Deserialize [RelatedArtifact] from a [String]
  /// or [YamlMap] object
  factory RelatedArtifact.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? RelatedArtifact.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? RelatedArtifact.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'RelatedArtifact cannot be constructed from '
                  'input provided, it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [RelatedArtifact]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RelatedArtifact.fromJsonString(
    String source,
  ) {
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

  /// [label]
  /// A short label that can be used to reference the citation from elsewhere
  /// in the containing artifact, such as a footnote index.
  final FhirString? label;

  /// [display]
  /// A brief description of the document or knowledge resource being
  /// referenced, suitable for display to a consumer.
  final FhirString? display;

  /// [citation]
  /// A bibliographic citation for the related artifact. This text SHOULD be
  /// formatted according to an accepted citation format.
  final FhirMarkdown? citation;

  /// [url]
  /// A url for the artifact that can be followed to access the actual
  /// content.
  final FhirUrl? url;

  /// [document]
  /// The document being referenced, represented as an attachment. This is
  /// exclusive with the resource element.
  final Attachment? document;

  /// [resource]
  /// The related resource, such as a library, value set, profile, or other
  /// knowledge resource.
  final FhirCanonical? resource;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    json['type'] = type.toJson();

    if (label != null) {
      final fieldJson2 = label!.toJson();
      json['label'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_label'] = fieldJson2['_value'];
      }
    }

    if (display != null) {
      final fieldJson3 = display!.toJson();
      json['display'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_display'] = fieldJson3['_value'];
      }
    }

    if (citation != null) {
      final fieldJson4 = citation!.toJson();
      json['citation'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_citation'] = fieldJson4['_value'];
      }
    }

    if (url != null) {
      final fieldJson5 = url!.toJson();
      json['url'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_url'] = fieldJson5['_value'];
      }
    }

    if (document != null) {
      json['document'] = document!.toJson();
    }

    if (resource != null) {
      final fieldJson7 = resource!.toJson();
      json['resource'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_resource'] = fieldJson7['_value'];
      }
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
    FhirString? label,
    FhirString? display,
    FhirMarkdown? citation,
    FhirUrl? url,
    Attachment? document,
    FhirCanonical? resource,
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
      label: label ?? this.label,
      display: display ?? this.display,
      citation: citation ?? this.citation,
      url: url ?? this.url,
      document: document ?? this.document,
      resource: resource ?? this.resource,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
