import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [DocumentManifest]
/// A collection of documents compiled for a purpose together with metadata
/// that applies to the collection.
class DocumentManifest extends DomainResource {
  /// Primary constructor for
  /// [DocumentManifest]

  const DocumentManifest({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.masterIdentifier,
    this.identifier,
    required this.status,
    this.type,
    this.subject,
    this.created,
    this.author,
    this.recipient,
    this.source,
    this.description,
    required this.content,
    this.related,
  }) : super(
          resourceType: R4ResourceType.DocumentManifest,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DocumentManifest.fromJson(
    Map<String, dynamic> json,
  ) {
    return DocumentManifest(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      masterIdentifier: JsonParser.parseObject<Identifier>(
        json,
        'masterIdentifier',
        Identifier.fromJson,
      ),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<DocumentReferenceStatus>(
        json,
        'status',
        DocumentReferenceStatus.fromJson,
      )!,
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
      ),
      created: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'created',
        FhirDateTime.fromJson,
      ),
      author: (json['author'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      recipient: (json['recipient'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      source: JsonParser.parsePrimitive<FhirUri>(
        json,
        'source',
        FhirUri.fromJson,
      ),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
      ),
      content: (json['content'] as List<dynamic>)
          .map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      related: (json['related'] as List<dynamic>?)
          ?.map<DocumentManifestRelated>(
            (v) => DocumentManifestRelated.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [DocumentManifest]
  /// from a [String] or [YamlMap] object
  factory DocumentManifest.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DocumentManifest.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DocumentManifest.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DocumentManifest '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DocumentManifest]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DocumentManifest.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DocumentManifest.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'DocumentManifest';

  /// [masterIdentifier]
  /// A single identifier that uniquely identifies this manifest. Principally
  /// used to refer to the manifest in non-FHIR contexts.
  final Identifier? masterIdentifier;

  /// [identifier]
  /// Other identifiers associated with the document manifest, including
  /// version independent identifiers.
  final List<Identifier>? identifier;

  /// [status]
  /// The status of this document manifest.
  final DocumentReferenceStatus status;

  /// [type]
  /// The code specifying the type of clinical activity that resulted in
  /// placing the associated content into the DocumentManifest.
  final CodeableConcept? type;

  /// [subject]
  /// Who or what the set of documents is about. The documents can be about a
  /// person, (patient or healthcare practitioner), a device (i.e. machine)
  /// or even a group of subjects (such as a document about a herd of farm
  /// animals, or a set of patients that share a common exposure). If the
  /// documents cross more than one subject, then more than one subject is
  /// allowed here (unusual use case).
  final Reference? subject;

  /// [created]
  /// When the document manifest was created for submission to the server
  /// (not necessarily the same thing as the actual resource last modified
  /// time, since it may be modified, replicated, etc.).
  final FhirDateTime? created;

  /// [author]
  /// Identifies who is the author of the manifest. Manifest author is not
  /// necessarly the author of the references included.
  final List<Reference>? author;

  /// [recipient]
  /// A patient, practitioner, or organization for which this set of
  /// documents is intended.
  final List<Reference>? recipient;

  /// [source]
  /// Identifies the source system, application, or software that produced
  /// the document manifest.
  final FhirUri? source;

  /// [description]
  /// Human-readable description of the source document. This is sometimes
  /// known as the "title".
  final FhirString? description;

  /// [content]
  /// The list of Resources that consist of the parts of this manifest.
  final List<Reference> content;

  /// [related]
  /// Related identifiers or resources associated with the DocumentManifest.
  final List<DocumentManifestRelated>? related;
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

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    addField('meta', meta);
    addField('implicitRules', implicitRules);
    addField('language', language);
    addField('text', text);
    addField('contained', contained);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('masterIdentifier', masterIdentifier);
    addField('identifier', identifier);
    addField('status', status);
    addField('type', type);
    addField('subject', subject);
    addField('created', created);
    addField('author', author);
    addField('recipient', recipient);
    addField('source', source);
    addField('description', description);
    addField('content', content);
    addField('related', related);
    return json;
  }

  @override
  DocumentManifest clone() => throw UnimplementedError();
  @override
  DocumentManifest copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? masterIdentifier,
    List<Identifier>? identifier,
    DocumentReferenceStatus? status,
    CodeableConcept? type,
    Reference? subject,
    FhirDateTime? created,
    List<Reference>? author,
    List<Reference>? recipient,
    FhirUri? source,
    FhirString? description,
    List<Reference>? content,
    List<DocumentManifestRelated>? related,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return DocumentManifest(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      masterIdentifier: masterIdentifier ?? this.masterIdentifier,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      type: type ?? this.type,
      subject: subject ?? this.subject,
      created: created ?? this.created,
      author: author ?? this.author,
      recipient: recipient ?? this.recipient,
      source: source ?? this.source,
      description: description ?? this.description,
      content: content ?? this.content,
      related: related ?? this.related,
    );
  }
}

/// [DocumentManifestRelated]
/// Related identifiers or resources associated with the DocumentManifest.
class DocumentManifestRelated extends BackboneElement {
  /// Primary constructor for
  /// [DocumentManifestRelated]

  const DocumentManifestRelated({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.ref,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DocumentManifestRelated.fromJson(
    Map<String, dynamic> json,
  ) {
    return DocumentManifestRelated(
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
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      identifier: JsonParser.parseObject<Identifier>(
        json,
        'identifier',
        Identifier.fromJson,
      ),
      ref: JsonParser.parseObject<Reference>(
        json,
        'ref',
        Reference.fromJson,
      ),
    );
  }

  /// Deserialize [DocumentManifestRelated]
  /// from a [String] or [YamlMap] object
  factory DocumentManifestRelated.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DocumentManifestRelated.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DocumentManifestRelated.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DocumentManifestRelated '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DocumentManifestRelated]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DocumentManifestRelated.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DocumentManifestRelated.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'DocumentManifestRelated';

  /// [identifier]
  /// Related identifier to this DocumentManifest. For example, Order
  /// numbers, accession numbers, XDW workflow numbers.
  final Identifier? identifier;

  /// [ref]
  /// Related Resource to this DocumentManifest. For example, Order,
  /// ServiceRequest, Procedure, EligibilityRequest, etc.
  final Reference? ref;
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
    addField('modifierExtension', modifierExtension);
    addField('identifier', identifier);
    addField('ref', ref);
    return json;
  }

  @override
  DocumentManifestRelated clone() => throw UnimplementedError();
  @override
  DocumentManifestRelated copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? identifier,
    Reference? ref,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return DocumentManifestRelated(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      ref: ref ?? this.ref,
    );
  }
}
