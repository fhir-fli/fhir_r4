import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show yamlMapToJson, yamlToJson, StringExtensionForFHIR, RelatedArtifact;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [RelatedArtifactBuilder]
/// Related artifacts such as additional documentation, justification, or
/// bibliographic references.
class RelatedArtifactBuilder extends DataTypeBuilder
    implements
        ValueXParametersParameterBuilder,
        DefaultValueXStructureMapSourceBuilder,
        ValueXTaskInputBuilder,
        ValueXTaskOutputBuilder,
        DefaultValueXElementDefinitionBuilder,
        FixedXElementDefinitionBuilder,
        PatternXElementDefinitionBuilder,
        ValueXElementDefinitionExampleBuilder,
        ValueXExtensionBuilder {
  /// Primary constructor for
  /// [RelatedArtifactBuilder]

  RelatedArtifactBuilder({
    super.id,
    super.extension_,
    this.type,
    this.label,
    this.display,
    this.citation,
    this.url,
    this.document,
    this.resource,
    super.disallowExtensions,
    super.objectPath = 'RelatedArtifactBuilder',
  });

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory RelatedArtifactBuilder.empty() => RelatedArtifactBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RelatedArtifactBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'RelatedArtifact';
    return RelatedArtifactBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      type: JsonParser.parsePrimitive<RelatedArtifactTypeBuilder>(
        json,
        'type',
        RelatedArtifactTypeBuilder.fromJson,
        '$objectPath.type',
      ),
      label: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'label',
        FhirStringBuilder.fromJson,
        '$objectPath.label',
      ),
      display: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'display',
        FhirStringBuilder.fromJson,
        '$objectPath.display',
      ),
      citation: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'citation',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.citation',
      ),
      url: JsonParser.parsePrimitive<FhirUrlBuilder>(
        json,
        'url',
        FhirUrlBuilder.fromJson,
        '$objectPath.url',
      ),
      document: JsonParser.parseObject<AttachmentBuilder>(
        json,
        'document',
        AttachmentBuilder.fromJson,
        '$objectPath.document',
      ),
      resource: JsonParser.parsePrimitive<FhirCanonicalBuilder>(
        json,
        'resource',
        FhirCanonicalBuilder.fromJson,
        '$objectPath.resource',
      ),
    );
  }

  /// Deserialize [RelatedArtifactBuilder]
  /// from a [String] or [YamlMap] object
  factory RelatedArtifactBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return RelatedArtifactBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return RelatedArtifactBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'RelatedArtifactBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [RelatedArtifactBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RelatedArtifactBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return RelatedArtifactBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'RelatedArtifact';

  /// [type]
  /// The type of relationship to the related artifact.
  RelatedArtifactTypeBuilder? type;

  /// [label]
  /// A short label that can be used to reference the citation from elsewhere
  /// in the containing artifact, such as a footnote index.
  FhirStringBuilder? label;

  /// [display]
  /// A brief description of the document or knowledge resource being
  /// referenced, suitable for display to a consumer.
  FhirStringBuilder? display;

  /// [citation]
  /// A bibliographic citation for the related artifact. This text SHOULD be
  /// formatted according to an accepted citation format.
  FhirMarkdownBuilder? citation;

  /// [url]
  /// A url for the artifact that can be followed to access the actual
  /// content.
  FhirUrlBuilder? url;

  /// [document]
  /// The document being referenced, represented as an attachment. This is
  /// exclusive with the resource element.
  AttachmentBuilder? document;

  /// [resource]
  /// The related resource, such as a library, value set, profile, or other
  /// knowledge resource.
  FhirCanonicalBuilder? resource;

  /// Converts a RelatedArtifactBuilder to [RelatedArtifact]
  RelatedArtifact build() => RelatedArtifact.fromJson(toJson());

  /// Converts a [RelatedArtifactBuilder] to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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
  List<String> listChildrenNames() {
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (type != null) {
          fields.add(type!);
        }
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is RelatedArtifactTypeBuilder) {
            type = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'label':
        {
          if (child is FhirStringBuilder) {
            label = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'display':
        {
          if (child is FhirStringBuilder) {
            display = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'citation':
        {
          if (child is FhirMarkdownBuilder) {
            citation = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'url':
        {
          if (child is FhirUrlBuilder) {
            url = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'document':
        {
          if (child is AttachmentBuilder) {
            document = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'resource':
        {
          if (child is FhirCanonicalBuilder) {
            resource = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'type':
        return ['FhirCodeEnumBuilder'];
      case 'label':
        return ['FhirStringBuilder'];
      case 'display':
        return ['FhirStringBuilder'];
      case 'citation':
        return ['FhirMarkdownBuilder'];
      case 'url':
        return ['FhirUrlBuilder'];
      case 'document':
        return ['AttachmentBuilder'];
      case 'resource':
        return ['FhirCanonicalBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [RelatedArtifactBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'type':
        {
          type = RelatedArtifactTypeBuilder.empty();
          return;
        }
      case 'label':
        {
          label = FhirStringBuilder.empty();
          return;
        }
      case 'display':
        {
          display = FhirStringBuilder.empty();
          return;
        }
      case 'citation':
        {
          citation = FhirMarkdownBuilder.empty();
          return;
        }
      case 'url':
        {
          url = FhirUrlBuilder.empty();
          return;
        }
      case 'document':
        {
          document = AttachmentBuilder.empty();
          return;
        }
      case 'resource':
        {
          resource = FhirCanonicalBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool type = false,
    bool label = false,
    bool display = false,
    bool citation = false,
    bool url = false,
    bool document = false,
    bool resource = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (type) this.type = null;
    if (label) this.label = null;
    if (display) this.display = null;
    if (citation) this.citation = null;
    if (url) this.url = null;
    if (document) this.document = null;
    if (resource) this.resource = null;
  }

  @override
  RelatedArtifactBuilder clone() => throw UnimplementedError();
  @override
  RelatedArtifactBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    RelatedArtifactTypeBuilder? type,
    FhirStringBuilder? label,
    FhirStringBuilder? display,
    FhirMarkdownBuilder? citation,
    FhirUrlBuilder? url,
    AttachmentBuilder? document,
    FhirCanonicalBuilder? resource,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    final newResult = RelatedArtifactBuilder(
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

    newResult.objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! RelatedArtifactBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      label,
      o.label,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      display,
      o.display,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      citation,
      o.citation,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      url,
      o.url,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      document,
      o.document,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      resource,
      o.resource,
    )) {
      return false;
    }
    return true;
  }
}
