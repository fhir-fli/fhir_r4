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

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory DocumentReference.empty() => DocumentReference(
        status: DocumentReferenceStatus.values.first,
        content: <DocumentReferenceContent>[],
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
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
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
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
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
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.category',
              },
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
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.author',
              },
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
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.relatesTo',
              },
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
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.securityLabel',
              },
            ),
          )
          .toList(),
      content: (json['content'] as List<dynamic>)
          .map<DocumentReferenceContent>(
            (v) => DocumentReferenceContent.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.content',
              },
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
    if (json is Map<String, dynamic>) {
      return DocumentReference.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'meta',
      'implicitRules',
      'language',
      'text',
      'contained',
      'extension',
      'modifierExtension',
      'masterIdentifier',
      'identifier',
      'status',
      'docStatus',
      'type',
      'category',
      'subject',
      'date',
      'author',
      'authenticator',
      'custodian',
      'relatesTo',
      'description',
      'securityLabel',
      'content',
      'context',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'meta':
        if (meta != null) {
          fields.add(meta!);
        }
      case 'implicitRules':
        if (implicitRules != null) {
          fields.add(implicitRules!);
        }
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'contained':
        if (contained != null) {
          fields.addAll(contained!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'masterIdentifier':
        if (masterIdentifier != null) {
          fields.add(masterIdentifier!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'status':
        fields.add(status);
      case 'docStatus':
        if (docStatus != null) {
          fields.add(docStatus!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'category':
        if (category != null) {
          fields.addAll(category!);
        }
      case 'subject':
        if (subject != null) {
          fields.add(subject!);
        }
      case 'date':
        if (date != null) {
          fields.add(date!);
        }
      case 'author':
        if (author != null) {
          fields.addAll(author!);
        }
      case 'authenticator':
        if (authenticator != null) {
          fields.add(authenticator!);
        }
      case 'custodian':
        if (custodian != null) {
          fields.add(custodian!);
        }
      case 'relatesTo':
        if (relatesTo != null) {
          fields.addAll(relatesTo!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'securityLabel':
        if (securityLabel != null) {
          fields.addAll(securityLabel!);
        }
      case 'content':
        fields.addAll(content);
      case 'context':
        if (context != null) {
          fields.add(context!);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'meta':
        {
          if (child is FhirMeta) {
            return copyWith(meta: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUri) {
            return copyWith(implicitRules: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'language':
        {
          if (child is CommonLanguages) {
            return copyWith(language: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'text':
        {
          if (child is Narrative) {
            return copyWith(text: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'contained':
        {
          if (child is List<Resource>) {
            return copyWith(contained: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'masterIdentifier':
        {
          if (child is Identifier) {
            return copyWith(masterIdentifier: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'identifier':
        {
          if (child is List<Identifier>) {
            return copyWith(identifier: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'status':
        {
          if (child is DocumentReferenceStatus) {
            return copyWith(status: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'docStatus':
        {
          if (child is CompositionStatus) {
            return copyWith(docStatus: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'category':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(category: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'subject':
        {
          if (child is Reference) {
            return copyWith(subject: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'date':
        {
          if (child is FhirInstant) {
            return copyWith(date: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'author':
        {
          if (child is List<Reference>) {
            return copyWith(author: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'authenticator':
        {
          if (child is Reference) {
            return copyWith(authenticator: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'custodian':
        {
          if (child is Reference) {
            return copyWith(custodian: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'relatesTo':
        {
          if (child is List<DocumentReferenceRelatesTo>) {
            return copyWith(relatesTo: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'description':
        {
          if (child is FhirString) {
            return copyWith(description: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'securityLabel':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(securityLabel: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'content':
        {
          if (child is List<DocumentReferenceContent>) {
            return copyWith(content: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'context':
        {
          if (child is DocumentReferenceContext) {
            return copyWith(context: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'meta':
        return ['FhirMeta'];
      case 'implicitRules':
        return ['FhirUri'];
      case 'language':
        return ['FhirCode'];
      case 'text':
        return ['Narrative'];
      case 'contained':
        return ['Resource'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'masterIdentifier':
        return ['Identifier'];
      case 'identifier':
        return ['Identifier'];
      case 'status':
        return ['FhirCode'];
      case 'docStatus':
        return ['FhirCode'];
      case 'type':
        return ['CodeableConcept'];
      case 'category':
        return ['CodeableConcept'];
      case 'subject':
        return ['Reference'];
      case 'date':
        return ['FhirInstant'];
      case 'author':
        return ['Reference'];
      case 'authenticator':
        return ['Reference'];
      case 'custodian':
        return ['Reference'];
      case 'relatesTo':
        return ['DocumentReferenceRelatesTo'];
      case 'description':
        return ['FhirString'];
      case 'securityLabel':
        return ['CodeableConcept'];
      case 'content':
        return ['DocumentReferenceContent'];
      case 'context':
        return ['DocumentReferenceContext'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DocumentReference]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  DocumentReference createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'meta':
        {
          return copyWith(meta: FhirMeta.empty());
        }
      case 'implicitRules':
        {
          return copyWith(implicitRules: FhirUri.empty());
        }
      case 'language':
        {
          return copyWith(language: CommonLanguages.empty());
        }
      case 'text':
        {
          return copyWith(text: Narrative.empty());
        }
      case 'contained':
        {
          return copyWith(contained: <Resource>[]);
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'masterIdentifier':
        {
          return copyWith(masterIdentifier: Identifier.empty());
        }
      case 'identifier':
        {
          return copyWith(identifier: <Identifier>[]);
        }
      case 'status':
        {
          return copyWith(status: DocumentReferenceStatus.empty());
        }
      case 'docStatus':
        {
          return copyWith(docStatus: CompositionStatus.empty());
        }
      case 'type':
        {
          return copyWith(type: CodeableConcept.empty());
        }
      case 'category':
        {
          return copyWith(category: <CodeableConcept>[]);
        }
      case 'subject':
        {
          return copyWith(subject: Reference.empty());
        }
      case 'date':
        {
          return copyWith(date: FhirInstant.empty());
        }
      case 'author':
        {
          return copyWith(author: <Reference>[]);
        }
      case 'authenticator':
        {
          return copyWith(authenticator: Reference.empty());
        }
      case 'custodian':
        {
          return copyWith(custodian: Reference.empty());
        }
      case 'relatesTo':
        {
          return copyWith(relatesTo: <DocumentReferenceRelatesTo>[]);
        }
      case 'description':
        {
          return copyWith(description: FhirString.empty());
        }
      case 'securityLabel':
        {
          return copyWith(securityLabel: <CodeableConcept>[]);
        }
      case 'content':
        {
          return copyWith(content: <DocumentReferenceContent>[]);
        }
      case 'context':
        {
          return copyWith(context: DocumentReferenceContext.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  DocumentReference clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool masterIdentifier = false,
    bool identifier = false,
    bool docStatus = false,
    bool type = false,
    bool category = false,
    bool subject = false,
    bool date = false,
    bool author = false,
    bool authenticator = false,
    bool custodian = false,
    bool relatesTo = false,
    bool description = false,
    bool securityLabel = false,
    bool context = false,
  }) {
    return DocumentReference(
      id: id ? null : this.id,
      meta: meta ? null : this.meta,
      implicitRules: implicitRules ? null : this.implicitRules,
      language: language ? null : this.language,
      text: text ? null : this.text,
      contained: contained ? null : this.contained,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      masterIdentifier: masterIdentifier ? null : this.masterIdentifier,
      identifier: identifier ? null : this.identifier,
      status: status,
      docStatus: docStatus ? null : this.docStatus,
      type: type ? null : this.type,
      category: category ? null : this.category,
      subject: subject ? null : this.subject,
      date: date ? null : this.date,
      author: author ? null : this.author,
      authenticator: authenticator ? null : this.authenticator,
      custodian: custodian ? null : this.custodian,
      relatesTo: relatesTo ? null : this.relatesTo,
      description: description ? null : this.description,
      securityLabel: securityLabel ? null : this.securityLabel,
      content: content,
      context: context ? null : this.context,
    );
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
    Map<String, dynamic>? userData,
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

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DocumentReference) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!equalsDeepWithNull(meta, o.meta)) {
      return false;
    }
    if (!equalsDeepWithNull(implicitRules, o.implicitRules)) {
      return false;
    }
    if (!equalsDeepWithNull(language, o.language)) {
      return false;
    }
    if (!equalsDeepWithNull(text, o.text)) {
      return false;
    }
    if (!listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(masterIdentifier, o.masterIdentifier)) {
      return false;
    }
    if (!listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(status, o.status)) {
      return false;
    }
    if (!equalsDeepWithNull(docStatus, o.docStatus)) {
      return false;
    }
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      category,
      o.category,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(subject, o.subject)) {
      return false;
    }
    if (!equalsDeepWithNull(date, o.date)) {
      return false;
    }
    if (!listEquals<Reference>(
      author,
      o.author,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(authenticator, o.authenticator)) {
      return false;
    }
    if (!equalsDeepWithNull(custodian, o.custodian)) {
      return false;
    }
    if (!listEquals<DocumentReferenceRelatesTo>(
      relatesTo,
      o.relatesTo,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(description, o.description)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      securityLabel,
      o.securityLabel,
    )) {
      return false;
    }
    if (!listEquals<DocumentReferenceContent>(
      content,
      o.content,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(context, o.context)) {
      return false;
    }
    return true;
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

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory DocumentReferenceRelatesTo.empty() => DocumentReferenceRelatesTo(
        code: DocumentRelationshipType.values.first,
        target: Reference.empty(),
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
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
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
    if (json is Map<String, dynamic>) {
      return DocumentReferenceRelatesTo.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'code',
      'target',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
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
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'code':
        fields.add(code);
      case 'target':
        fields.add(target);
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'code':
        {
          if (child is DocumentRelationshipType) {
            return copyWith(code: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'target':
        {
          if (child is Reference) {
            return copyWith(target: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'code':
        return ['FhirCode'];
      case 'target':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DocumentReferenceRelatesTo]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  DocumentReferenceRelatesTo createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'code':
        {
          return copyWith(code: DocumentRelationshipType.empty());
        }
      case 'target':
        {
          return copyWith(target: Reference.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  DocumentReferenceRelatesTo clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
  }) {
    return DocumentReferenceRelatesTo(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      code: code,
      target: target,
    );
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
    Map<String, dynamic>? userData,
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

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DocumentReferenceRelatesTo) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(code, o.code)) {
      return false;
    }
    if (!equalsDeepWithNull(target, o.target)) {
      return false;
    }
    return true;
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

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory DocumentReferenceContent.empty() => DocumentReferenceContent(
        attachment: Attachment.empty(),
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
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
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
    if (json is Map<String, dynamic>) {
      return DocumentReferenceContent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'attachment',
      'format',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
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
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'attachment':
        fields.add(attachment);
      case 'format':
        if (format != null) {
          fields.add(format!);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'attachment':
        {
          if (child is Attachment) {
            return copyWith(attachment: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'format':
        {
          if (child is Coding) {
            return copyWith(format: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'attachment':
        return ['Attachment'];
      case 'format':
        return ['Coding'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DocumentReferenceContent]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  DocumentReferenceContent createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'attachment':
        {
          return copyWith(attachment: Attachment.empty());
        }
      case 'format':
        {
          return copyWith(format: Coding.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  DocumentReferenceContent clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool format = false,
  }) {
    return DocumentReferenceContent(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      attachment: attachment,
      format: format ? null : this.format,
    );
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
    Map<String, dynamic>? userData,
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

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DocumentReferenceContent) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(attachment, o.attachment)) {
      return false;
    }
    if (!equalsDeepWithNull(format, o.format)) {
      return false;
    }
    return true;
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

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory DocumentReferenceContext.empty() => const DocumentReferenceContext();

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
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      encounter: (json['encounter'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.encounter',
              },
            ),
          )
          .toList(),
      event: (json['event'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.event',
              },
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
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.related',
              },
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
    if (json is Map<String, dynamic>) {
      return DocumentReferenceContext.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'encounter',
      'event',
      'period',
      'facilityType',
      'practiceSetting',
      'sourcePatientInfo',
      'related',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
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
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'encounter':
        if (encounter != null) {
          fields.addAll(encounter!);
        }
      case 'event':
        if (event != null) {
          fields.addAll(event!);
        }
      case 'period':
        if (period != null) {
          fields.add(period!);
        }
      case 'facilityType':
        if (facilityType != null) {
          fields.add(facilityType!);
        }
      case 'practiceSetting':
        if (practiceSetting != null) {
          fields.add(practiceSetting!);
        }
      case 'sourcePatientInfo':
        if (sourcePatientInfo != null) {
          fields.add(sourcePatientInfo!);
        }
      case 'related':
        if (related != null) {
          fields.addAll(related!);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'encounter':
        {
          if (child is List<Reference>) {
            return copyWith(encounter: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'event':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(event: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'period':
        {
          if (child is Period) {
            return copyWith(period: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'facilityType':
        {
          if (child is CodeableConcept) {
            return copyWith(facilityType: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'practiceSetting':
        {
          if (child is CodeableConcept) {
            return copyWith(practiceSetting: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'sourcePatientInfo':
        {
          if (child is Reference) {
            return copyWith(sourcePatientInfo: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'related':
        {
          if (child is List<Reference>) {
            return copyWith(related: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'encounter':
        return ['Reference'];
      case 'event':
        return ['CodeableConcept'];
      case 'period':
        return ['Period'];
      case 'facilityType':
        return ['CodeableConcept'];
      case 'practiceSetting':
        return ['CodeableConcept'];
      case 'sourcePatientInfo':
        return ['Reference'];
      case 'related':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DocumentReferenceContext]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  DocumentReferenceContext createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'encounter':
        {
          return copyWith(encounter: <Reference>[]);
        }
      case 'event':
        {
          return copyWith(event: <CodeableConcept>[]);
        }
      case 'period':
        {
          return copyWith(period: Period.empty());
        }
      case 'facilityType':
        {
          return copyWith(facilityType: CodeableConcept.empty());
        }
      case 'practiceSetting':
        {
          return copyWith(practiceSetting: CodeableConcept.empty());
        }
      case 'sourcePatientInfo':
        {
          return copyWith(sourcePatientInfo: Reference.empty());
        }
      case 'related':
        {
          return copyWith(related: <Reference>[]);
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  DocumentReferenceContext clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool encounter = false,
    bool event = false,
    bool period = false,
    bool facilityType = false,
    bool practiceSetting = false,
    bool sourcePatientInfo = false,
    bool related = false,
  }) {
    return DocumentReferenceContext(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      encounter: encounter ? null : this.encounter,
      event: event ? null : this.event,
      period: period ? null : this.period,
      facilityType: facilityType ? null : this.facilityType,
      practiceSetting: practiceSetting ? null : this.practiceSetting,
      sourcePatientInfo: sourcePatientInfo ? null : this.sourcePatientInfo,
      related: related ? null : this.related,
    );
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
    Map<String, dynamic>? userData,
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

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DocumentReferenceContext) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      encounter,
      o.encounter,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      event,
      o.event,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(period, o.period)) {
      return false;
    }
    if (!equalsDeepWithNull(facilityType, o.facilityType)) {
      return false;
    }
    if (!equalsDeepWithNull(practiceSetting, o.practiceSetting)) {
      return false;
    }
    if (!equalsDeepWithNull(sourcePatientInfo, o.sourcePatientInfo)) {
      return false;
    }
    if (!listEquals<Reference>(
      related,
      o.related,
    )) {
      return false;
    }
    return true;
  }
}
