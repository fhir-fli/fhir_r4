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
          objectPath: 'DocumentManifest',
          resourceType: R4ResourceType.DocumentManifest,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory DocumentManifest.empty() => DocumentManifest(
        status: DocumentReferenceStatus.values.first,
        content: <Reference>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DocumentManifest.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DocumentManifest';
    return DocumentManifest(
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
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
        '$objectPath.subject',
      ),
      created: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'created',
        FhirDateTime.fromJson,
        '$objectPath.created',
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
      recipient: (json['recipient'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.recipient',
              },
            ),
          )
          .toList(),
      source: JsonParser.parsePrimitive<FhirUri>(
        json,
        'source',
        FhirUri.fromJson,
        '$objectPath.source',
      ),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
        '$objectPath.description',
      ),
      content: (json['content'] as List<dynamic>)
          .map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.content',
              },
            ),
          )
          .toList(),
      related: (json['related'] as List<dynamic>?)
          ?.map<DocumentManifestRelated>(
            (v) => DocumentManifestRelated.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.related',
              },
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
    if (json is Map<String, dynamic>) {
      return DocumentManifest.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
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
      'type',
      'subject',
      'created',
      'author',
      'recipient',
      'source',
      'description',
      'content',
      'related',
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
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'subject':
        if (subject != null) {
          fields.add(subject!);
        }
      case 'created':
        if (created != null) {
          fields.add(created!);
        }
      case 'author':
        if (author != null) {
          fields.addAll(author!);
        }
      case 'recipient':
        if (recipient != null) {
          fields.addAll(recipient!);
        }
      case 'source':
        if (source != null) {
          fields.add(source!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'content':
        fields.addAll(content);
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return DocumentManifest(
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
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      subject: subject?.copyWith(
            objectPath: '$newObjectPath.subject',
          ) ??
          this.subject,
      created: created?.copyWith(
            objectPath: '$newObjectPath.created',
          ) ??
          this.created,
      author: author
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.author',
                ),
              )
              .toList() ??
          this.author,
      recipient: recipient
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.recipient',
                ),
              )
              .toList() ??
          this.recipient,
      source: source?.copyWith(
            objectPath: '$newObjectPath.source',
          ) ??
          this.source,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      content: content
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.content',
                ),
              )
              .toList() ??
          this.content,
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
    if (o is! DocumentManifest) {
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
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!equalsDeepWithNull(subject, o.subject)) {
      return false;
    }
    if (!equalsDeepWithNull(created, o.created)) {
      return false;
    }
    if (!listEquals<Reference>(
      author,
      o.author,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      recipient,
      o.recipient,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(source, o.source)) {
      return false;
    }
    if (!equalsDeepWithNull(description, o.description)) {
      return false;
    }
    if (!listEquals<Reference>(
      content,
      o.content,
    )) {
      return false;
    }
    if (!listEquals<DocumentManifestRelated>(
      related,
      o.related,
    )) {
      return false;
    }
    return true;
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
  }) : super(
          objectPath: 'DocumentManifest.related',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory DocumentManifestRelated.empty() => DocumentManifestRelated();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DocumentManifestRelated.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DocumentManifest.related';
    return DocumentManifestRelated(
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
      identifier: JsonParser.parseObject<Identifier>(
        json,
        'identifier',
        Identifier.fromJson,
        '$objectPath.identifier',
      ),
      ref: JsonParser.parseObject<Reference>(
        json,
        'ref',
        Reference.fromJson,
        '$objectPath.ref',
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
    if (json is Map<String, dynamic>) {
      return DocumentManifestRelated.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'identifier',
      'ref',
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
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.add(identifier!);
        }
      case 'ref':
        if (ref != null) {
          fields.add(ref!);
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
  DocumentManifestRelated clone() => throw UnimplementedError();
  @override
  DocumentManifestRelated copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? identifier,
    Reference? ref,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return DocumentManifestRelated(
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
      identifier: identifier?.copyWith(
            objectPath: '$newObjectPath.identifier',
          ) ??
          this.identifier,
      ref: ref?.copyWith(
            objectPath: '$newObjectPath.ref',
          ) ??
          this.ref,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DocumentManifestRelated) {
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
    if (!equalsDeepWithNull(identifier, o.identifier)) {
      return false;
    }
    if (!equalsDeepWithNull(ref, o.ref)) {
      return false;
    }
    return true;
  }
}
