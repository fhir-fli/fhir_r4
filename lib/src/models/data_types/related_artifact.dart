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
    super.objectPath = 'RelatedArtifact',
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RelatedArtifact.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'RelatedArtifact';
    return RelatedArtifact(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.extension',
                  },
                ),
            ),
          )
          .toList(),
      type: JsonParser.parsePrimitive<RelatedArtifactType>(
        json,
        'type',
        RelatedArtifactType.fromJson,
        '$objectPath.type',
      )!,
      label: JsonParser.parsePrimitive<FhirString>(
        json,
        'label',
        FhirString.fromJson,
        '$objectPath.label',
      ),
      display: JsonParser.parsePrimitive<FhirString>(
        json,
        'display',
        FhirString.fromJson,
        '$objectPath.display',
      ),
      citation: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'citation',
        FhirMarkdown.fromJson,
        '$objectPath.citation',
      ),
      url: JsonParser.parsePrimitive<FhirUrl>(
        json,
        'url',
        FhirUrl.fromJson,
        '$objectPath.url',
      ),
      document: JsonParser.parseObject<Attachment>(
        json,
        'document',
        Attachment.fromJson,
        '$objectPath.document',
      ),
      resource: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'resource',
        FhirCanonical.fromJson,
        '$objectPath.resource',
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
    if (json is Map<String, dynamic>) {
      return RelatedArtifact.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('type', type);
    addField('label', label);
    addField('display', display);
    addField('citation', citation);
    addField('url', url);
    addField('document', document);
    addField('resource', resource);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'type',
      'label',
      'display',
      'citation',
      'url',
      'document',
      'resource',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'type':
        fields.add(type);
      case 'label':
        if (label != null) {
          fields.add(label!);
        }
      case 'display':
        if (display != null) {
          fields.add(display!);
        }
      case 'citation':
        if (citation != null) {
          fields.add(citation!);
        }
      case 'url':
        if (url != null) {
          fields.add(url!);
        }
      case 'document':
        if (document != null) {
          fields.add(document!);
        }
      case 'resource':
        if (resource != null) {
          fields.add(resource!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return RelatedArtifact(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      label: label?.copyWith(
            objectPath: '$newObjectPath.label',
          ) ??
          this.label,
      display: display?.copyWith(
            objectPath: '$newObjectPath.display',
          ) ??
          this.display,
      citation: citation?.copyWith(
            objectPath: '$newObjectPath.citation',
          ) ??
          this.citation,
      url: url?.copyWith(
            objectPath: '$newObjectPath.url',
          ) ??
          this.url,
      document: document?.copyWith(
            objectPath: '$newObjectPath.document',
          ) ??
          this.document,
      resource: resource?.copyWith(
            objectPath: '$newObjectPath.resource',
          ) ??
          this.resource,
    );
  }
}
