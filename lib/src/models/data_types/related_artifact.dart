import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [RelatedArtifact]
/// Related artifacts such as additional documentation, justification, or
/// bibliographic references.
class RelatedArtifact extends DataType
    implements
        ValueXParametersParameter,
        DefaultValueXStructureMapSource,
        ValueXTaskInput,
        ValueXTaskOutput,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension {
  /// Primary constructor for
  /// [RelatedArtifact]

  const RelatedArtifact({
    super.id,
    super.extension_,
    required this.type,
    this.label,
    this.display,
    this.citation,
    this.url,
    this.document,
    this.resource,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RelatedArtifact.fromJson(
    Map<String, dynamic> json,
  ) {
    return RelatedArtifact(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      type: JsonParser.parsePrimitive<RelatedArtifactType>(
        json,
        'type',
        RelatedArtifactType.fromJson,
      )!,
      label: JsonParser.parsePrimitive<FhirString>(
        json,
        'label',
        FhirString.fromJson,
      ),
      display: JsonParser.parsePrimitive<FhirString>(
        json,
        'display',
        FhirString.fromJson,
      ),
      citation: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'citation',
        FhirMarkdown.fromJson,
      ),
      url: JsonParser.parsePrimitive<FhirUrl>(
        json,
        'url',
        FhirUrl.fromJson,
      ),
      document: JsonParser.parseObject<Attachment>(
        json,
        'document',
        Attachment.fromJson,
      ),
      resource: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'resource',
        FhirCanonical.fromJson,
      ),
    );
  }

  /// Deserialize [RelatedArtifact]
  /// from a [String] or [YamlMap] object
  factory RelatedArtifact.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return RelatedArtifact.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return RelatedArtifact.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'RelatedArtifact '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [RelatedArtifact]
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    addField('type', type);
    if (label != null) {
      addField('label', label);
    }

    if (display != null) {
      addField('display', display);
    }

    if (citation != null) {
      addField('citation', citation);
    }

    if (url != null) {
      addField('url', url);
    }

    if (document != null) {
      json['document'] = document!.toJson();
    }

    if (resource != null) {
      addField('resource', resource);
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
    );
  }
}
