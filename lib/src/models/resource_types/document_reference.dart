import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [DocumentReference]
/// A reference to a document of any kind for any purpose. Provides
/// metadata about the document so that the document can be discovered and
/// managed. The scope of a document is any seralized object with a
/// mime-type, so includes formal patient centric documents (CDA), cliical
/// notes, scanned paper, and non-patient specific documents like policy
/// text.
class DocumentReference extends DomainResource {
  /// Primary constructor for
  /// [DocumentReference]

  const DocumentReference({
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
    this.docStatus,
    this.type,
    this.category,
    this.subject,
    this.date,
    this.author,
    this.authenticator,
    this.custodian,
    this.relatesTo,
    this.description,
    this.securityLabel,
    required this.content,
    this.context,
  }) : super(
          objectPath: 'DocumentReference',
          resourceType: R4ResourceType.DocumentReference,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DocumentReference.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DocumentReference';
    return DocumentReference(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.contained'}),
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.extension'}),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.modifierExtension'}),
            ),
          )
          .toList(),
      masterIdentifier: JsonParser.parseObject<Identifier>(
        json,
        'masterIdentifier',
        Identifier.fromJson,
        '$objectPath.masterIdentifier',
      ),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.identifier'}),
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<DocumentReferenceStatus>(
        json,
        'status',
        DocumentReferenceStatus.fromJson,
        '$objectPath.status',
      )!,
      docStatus: JsonParser.parsePrimitive<CompositionStatus>(
        json,
        'docStatus',
        CompositionStatus.fromJson,
        '$objectPath.docStatus',
      ),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
      category: (json['category'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.category'}),
            ),
          )
          .toList(),
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
        '$objectPath.subject',
      ),
      date: JsonParser.parsePrimitive<FhirInstant>(
        json,
        'date',
        FhirInstant.fromJson,
        '$objectPath.date',
      ),
      author: (json['author'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.author'}),
            ),
          )
          .toList(),
      authenticator: JsonParser.parseObject<Reference>(
        json,
        'authenticator',
        Reference.fromJson,
        '$objectPath.authenticator',
      ),
      custodian: JsonParser.parseObject<Reference>(
        json,
        'custodian',
        Reference.fromJson,
        '$objectPath.custodian',
      ),
      relatesTo: (json['relatesTo'] as List<dynamic>?)
          ?.map<DocumentReferenceRelatesTo>(
            (v) => DocumentReferenceRelatesTo.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.relatesTo'}),
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
        '$objectPath.description',
      ),
      securityLabel: (json['securityLabel'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.securityLabel'}),
            ),
          )
          .toList(),
      content: (json['content'] as List<dynamic>)
          .map<DocumentReferenceContent>(
            (v) => DocumentReferenceContent.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.content'}),
            ),
          )
          .toList(),
      context: JsonParser.parseObject<DocumentReferenceContext>(
        json,
        'context',
        DocumentReferenceContext.fromJson,
        '$objectPath.context',
      ),
    );
  }

  /// Deserialize [DocumentReference]
  /// from a [String] or [YamlMap] object
  factory DocumentReference.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DocumentReference.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DocumentReference.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DocumentReference '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DocumentReference]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DocumentReference.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DocumentReference.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'DocumentReference';

  /// [masterIdentifier]
  /// Document identifier as assigned by the source of the document. This
  /// identifier is specific to this version of the document. This unique
  /// identifier may be used elsewhere to identify this version of the
  /// document.
  final Identifier? masterIdentifier;

  /// [identifier]
  /// Other identifiers associated with the document, including version
  /// independent identifiers.
  final List<Identifier>? identifier;

  /// [status]
  /// The status of this document reference.
  final DocumentReferenceStatus status;

  /// [docStatus]
  /// The status of the underlying document.
  final CompositionStatus? docStatus;

  /// [type]
  /// Specifies the particular kind of document referenced (e.g. History and
  /// Physical, Discharge Summary, Progress Note). This usually equates to
  /// the purpose of making the document referenced.
  final CodeableConcept? type;

  /// [category]
  /// A categorization for the type of document referenced - helps for
  /// indexing and searching. This may be implied by or derived from the code
  /// specified in the DocumentReference.type.
  final List<CodeableConcept>? category;

  /// [subject]
  /// Who or what the document is about. The document can be about a person,
  /// (patient or healthcare practitioner), a device (e.g. a machine) or even
  /// a group of subjects (such as a document about a herd of farm animals,
  /// or a set of patients that share a common exposure).
  final Reference? subject;

  /// [date]
  /// When the document reference was created.
  final FhirInstant? date;

  /// [author]
  /// Identifies who is responsible for adding the information to the
  /// document.
  final List<Reference>? author;

  /// [authenticator]
  /// Which person or organization authenticates that this document is valid.
  final Reference? authenticator;

  /// [custodian]
  /// Identifies the organization or group who is responsible for ongoing
  /// maintenance of and access to the document.
  final Reference? custodian;

  /// [relatesTo]
  /// Relationships that this document has with other document references
  /// that already exist.
  final List<DocumentReferenceRelatesTo>? relatesTo;

  /// [description]
  /// Human-readable description of the source document.
  final FhirString? description;

  /// [securityLabel]
  /// A set of Security-Tag codes specifying the level of privacy/security of
  /// the Document. Note that DocumentReference.meta.security contains the
  /// security labels of the "reference" to the document, while
  /// DocumentReference.securityLabel contains a snapshot of the security
  /// labels on the document the reference refers to.
  final List<CodeableConcept>? securityLabel;

  /// [content]
  /// The document and format referenced. There may be multiple content
  /// element repetitions, each with a different format.
  final List<DocumentReferenceContent> content;

  /// [context]
  /// The clinical context in which the document was prepared.
  final DocumentReferenceContext? context;
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
    addField('docStatus', docStatus);
    addField('type', type);
    addField('category', category);
    addField('subject', subject);
    addField('date', date);
    addField('author', author);
    addField('authenticator', authenticator);
    addField('custodian', custodian);
    addField('relatesTo', relatesTo);
    addField('description', description);
    addField('securityLabel', securityLabel);
    addField('content', content);
    addField('context', context);
    return json;
  }

  @override
  DocumentReference clone() => throw UnimplementedError();
  @override
  DocumentReference copyWith({
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
    CompositionStatus? docStatus,
    CodeableConcept? type,
    List<CodeableConcept>? category,
    Reference? subject,
    FhirInstant? date,
    List<Reference>? author,
    Reference? authenticator,
    Reference? custodian,
    List<DocumentReferenceRelatesTo>? relatesTo,
    FhirString? description,
    List<CodeableConcept>? securityLabel,
    List<DocumentReferenceContent>? content,
    DocumentReferenceContext? context,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return DocumentReference(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      meta: meta?.copyWith(
            objectPath: '$newObjectPath.meta',
          ) ??
          this.meta,
      implicitRules: implicitRules?.copyWith(
            objectPath: '$newObjectPath.implicitRules',
          ) ??
          this.implicitRules,
      language: language?.copyWith(
            objectPath: '$newObjectPath.language',
          ) ??
          this.language,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
      contained: contained ?? this.contained,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      masterIdentifier: masterIdentifier?.copyWith(
            objectPath: '$newObjectPath.masterIdentifier',
          ) ??
          this.masterIdentifier,
      identifier: identifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.identifier',
                ),
              )
              .toList() ??
          this.identifier,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      docStatus: docStatus?.copyWith(
            objectPath: '$newObjectPath.docStatus',
          ) ??
          this.docStatus,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      category: category
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.category',
                ),
              )
              .toList() ??
          this.category,
      subject: subject?.copyWith(
            objectPath: '$newObjectPath.subject',
          ) ??
          this.subject,
      date: date?.copyWith(
            objectPath: '$newObjectPath.date',
          ) ??
          this.date,
      author: author
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.author',
                ),
              )
              .toList() ??
          this.author,
      authenticator: authenticator?.copyWith(
            objectPath: '$newObjectPath.authenticator',
          ) ??
          this.authenticator,
      custodian: custodian?.copyWith(
            objectPath: '$newObjectPath.custodian',
          ) ??
          this.custodian,
      relatesTo: relatesTo
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.relatesTo',
                ),
              )
              .toList() ??
          this.relatesTo,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      securityLabel: securityLabel
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.securityLabel',
                ),
              )
              .toList() ??
          this.securityLabel,
      content: content
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.content',
                ),
              )
              .toList() ??
          this.content,
      context: context?.copyWith(
            objectPath: '$newObjectPath.context',
          ) ??
          this.context,
    );
  }
}

/// [DocumentReferenceRelatesTo]
/// Relationships that this document has with other document references
/// that already exist.
class DocumentReferenceRelatesTo extends BackboneElement {
  /// Primary constructor for
  /// [DocumentReferenceRelatesTo]

  const DocumentReferenceRelatesTo({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    required this.target,
    super.disallowExtensions,
  }) : super(
          objectPath: 'DocumentReference.relatesTo',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DocumentReferenceRelatesTo.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DocumentReference.relatesTo';
    return DocumentReferenceRelatesTo(
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
                ..addAll({'objectPath': '$objectPath.extension'}),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.modifierExtension'}),
            ),
          )
          .toList(),
      code: JsonParser.parsePrimitive<DocumentRelationshipType>(
        json,
        'code',
        DocumentRelationshipType.fromJson,
        '$objectPath.code',
      )!,
      target: JsonParser.parseObject<Reference>(
        json,
        'target',
        Reference.fromJson,
        '$objectPath.target',
      )!,
    );
  }

  /// Deserialize [DocumentReferenceRelatesTo]
  /// from a [String] or [YamlMap] object
  factory DocumentReferenceRelatesTo.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DocumentReferenceRelatesTo.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DocumentReferenceRelatesTo.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DocumentReferenceRelatesTo '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DocumentReferenceRelatesTo]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DocumentReferenceRelatesTo.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DocumentReferenceRelatesTo.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'DocumentReferenceRelatesTo';

  /// [code]
  /// The type of relationship that this document has with anther document.
  final DocumentRelationshipType code;

  /// [target]
  /// The target document of this relationship.
  final Reference target;
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
    addField('code', code);
    addField('target', target);
    return json;
  }

  @override
  DocumentReferenceRelatesTo clone() => throw UnimplementedError();
  @override
  DocumentReferenceRelatesTo copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    DocumentRelationshipType? code,
    Reference? target,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return DocumentReferenceRelatesTo(
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
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
      target: target?.copyWith(
            objectPath: '$newObjectPath.target',
          ) ??
          this.target,
    );
  }
}

/// [DocumentReferenceContent]
/// The document and format referenced. There may be multiple content
/// element repetitions, each with a different format.
class DocumentReferenceContent extends BackboneElement {
  /// Primary constructor for
  /// [DocumentReferenceContent]

  const DocumentReferenceContent({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.attachment,
    this.format,
    super.disallowExtensions,
  }) : super(
          objectPath: 'DocumentReference.content',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DocumentReferenceContent.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DocumentReference.content';
    return DocumentReferenceContent(
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
                ..addAll({'objectPath': '$objectPath.extension'}),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.modifierExtension'}),
            ),
          )
          .toList(),
      attachment: JsonParser.parseObject<Attachment>(
        json,
        'attachment',
        Attachment.fromJson,
        '$objectPath.attachment',
      )!,
      format: JsonParser.parseObject<Coding>(
        json,
        'format',
        Coding.fromJson,
        '$objectPath.format',
      ),
    );
  }

  /// Deserialize [DocumentReferenceContent]
  /// from a [String] or [YamlMap] object
  factory DocumentReferenceContent.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DocumentReferenceContent.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DocumentReferenceContent.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DocumentReferenceContent '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DocumentReferenceContent]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DocumentReferenceContent.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DocumentReferenceContent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'DocumentReferenceContent';

  /// [attachment]
  /// The document or URL of the document along with critical metadata to
  /// prove content has integrity.
  final Attachment attachment;

  /// [format]
  /// An identifier of the document encoding, structure, and template that
  /// the document conforms to beyond the base format indicated in the
  /// mimeType.
  final Coding? format;
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
    addField('attachment', attachment);
    addField('format', format);
    return json;
  }

  @override
  DocumentReferenceContent clone() => throw UnimplementedError();
  @override
  DocumentReferenceContent copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Attachment? attachment,
    Coding? format,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return DocumentReferenceContent(
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
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      attachment: attachment?.copyWith(
            objectPath: '$newObjectPath.attachment',
          ) ??
          this.attachment,
      format: format?.copyWith(
            objectPath: '$newObjectPath.format',
          ) ??
          this.format,
    );
  }
}

/// [DocumentReferenceContext]
/// The clinical context in which the document was prepared.
class DocumentReferenceContext extends BackboneElement {
  /// Primary constructor for
  /// [DocumentReferenceContext]

  const DocumentReferenceContext({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.encounter,
    this.event,
    this.period,
    this.facilityType,
    this.practiceSetting,
    this.sourcePatientInfo,
    this.related,
    super.disallowExtensions,
  }) : super(
          objectPath: 'DocumentReference.context',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DocumentReferenceContext.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DocumentReference.context';
    return DocumentReferenceContext(
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
                ..addAll({'objectPath': '$objectPath.extension'}),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.modifierExtension'}),
            ),
          )
          .toList(),
      encounter: (json['encounter'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.encounter'}),
            ),
          )
          .toList(),
      event: (json['event'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.event'}),
            ),
          )
          .toList(),
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
        '$objectPath.period',
      ),
      facilityType: JsonParser.parseObject<CodeableConcept>(
        json,
        'facilityType',
        CodeableConcept.fromJson,
        '$objectPath.facilityType',
      ),
      practiceSetting: JsonParser.parseObject<CodeableConcept>(
        json,
        'practiceSetting',
        CodeableConcept.fromJson,
        '$objectPath.practiceSetting',
      ),
      sourcePatientInfo: JsonParser.parseObject<Reference>(
        json,
        'sourcePatientInfo',
        Reference.fromJson,
        '$objectPath.sourcePatientInfo',
      ),
      related: (json['related'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.related'}),
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [DocumentReferenceContext]
  /// from a [String] or [YamlMap] object
  factory DocumentReferenceContext.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DocumentReferenceContext.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DocumentReferenceContext.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DocumentReferenceContext '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DocumentReferenceContext]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DocumentReferenceContext.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DocumentReferenceContext.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'DocumentReferenceContext';

  /// [encounter]
  /// Describes the clinical encounter or type of care that the document
  /// content is associated with.
  final List<Reference>? encounter;

  /// [event]
  /// This list of codes represents the main clinical acts, such as a
  /// colonoscopy or an appendectomy, being documented. In some cases, the
  /// event is inherent in the type Code, such as a "History and Physical
  /// Report" in which the procedure being documented is necessarily a
  /// "History and Physical" act.
  final List<CodeableConcept>? event;

  /// [period]
  /// The time period over which the service that is described by the
  /// document was provided.
  final Period? period;

  /// [facilityType]
  /// The kind of facility where the patient was seen.
  final CodeableConcept? facilityType;

  /// [practiceSetting]
  /// This property may convey specifics about the practice setting where the
  /// content was created, often reflecting the clinical specialty.
  final CodeableConcept? practiceSetting;

  /// [sourcePatientInfo]
  /// The Patient Information as known when the document was published. May
  /// be a reference to a version specific, or contained.
  final Reference? sourcePatientInfo;

  /// [related]
  /// Related identifiers or resources associated with the DocumentReference.
  final List<Reference>? related;
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
    addField('encounter', encounter);
    addField('event', event);
    addField('period', period);
    addField('facilityType', facilityType);
    addField('practiceSetting', practiceSetting);
    addField('sourcePatientInfo', sourcePatientInfo);
    addField('related', related);
    return json;
  }

  @override
  DocumentReferenceContext clone() => throw UnimplementedError();
  @override
  DocumentReferenceContext copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Reference>? encounter,
    List<CodeableConcept>? event,
    Period? period,
    CodeableConcept? facilityType,
    CodeableConcept? practiceSetting,
    Reference? sourcePatientInfo,
    List<Reference>? related,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return DocumentReferenceContext(
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
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      encounter: encounter
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.encounter',
                ),
              )
              .toList() ??
          this.encounter,
      event: event
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.event',
                ),
              )
              .toList() ??
          this.event,
      period: period?.copyWith(
            objectPath: '$newObjectPath.period',
          ) ??
          this.period,
      facilityType: facilityType?.copyWith(
            objectPath: '$newObjectPath.facilityType',
          ) ??
          this.facilityType,
      practiceSetting: practiceSetting?.copyWith(
            objectPath: '$newObjectPath.practiceSetting',
          ) ??
          this.practiceSetting,
      sourcePatientInfo: sourcePatientInfo?.copyWith(
            objectPath: '$newObjectPath.sourcePatientInfo',
          ) ??
          this.sourcePatientInfo,
      related: related
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.related',
                ),
              )
              .toList() ??
          this.related,
    );
  }
}
