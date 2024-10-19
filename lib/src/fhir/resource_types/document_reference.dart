// ignore_for_file: overridden_fields

import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

/// [DocumentReference]
/// A reference to a document of any kind for any purpose. Provides
/// metadata about the document so that the document can be discovered and
/// managed. The scope of a document is any seralized object with a
/// mime-type, so includes formal patient centric documents (CDA), cliical
/// notes, scanned paper, and non-patient specific documents like policy
/// text.
@Entity()
class DocumentReference extends DomainResource {
  /// Primary constructor for
  /// [DocumentReference]

  DocumentReference({
    this.dbId = 0,
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.DocumentReference,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DocumentReference.fromJson(
    Map<String, dynamic> json,
  ) {
    return DocumentReference(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules:
          (json['implicitRules'] != null || json['_implicitRules'] != null)
              ? FhirUri.fromJson({
                  'value': json['implicitRules'],
                  '_value': json['_implicitRules'],
                })
              : null,
      language: (json['language'] != null || json['_language'] != null)
          ? CommonLanguages.fromJson({
              'value': json['language'],
              '_value': json['_language'],
            })
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
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
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      masterIdentifier: json['masterIdentifier'] != null
          ? Identifier.fromJson(
              json['masterIdentifier'] as Map<String, dynamic>,
            )
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      status: DocumentReferenceStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      docStatus: (json['docStatus'] != null || json['_docStatus'] != null)
          ? CompositionStatus.fromJson({
              'value': json['docStatus'],
              '_value': json['_docStatus'],
            })
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      category: json['category'] != null
          ? (json['category'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      subject: json['subject'] != null
          ? Reference.fromJson(
              json['subject'] as Map<String, dynamic>,
            )
          : null,
      date: (json['date'] != null || json['_date'] != null)
          ? FhirInstant.fromJson({
              'value': json['date'],
              '_value': json['_date'],
            })
          : null,
      author: json['author'] != null
          ? (json['author'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      authenticator: json['authenticator'] != null
          ? Reference.fromJson(
              json['authenticator'] as Map<String, dynamic>,
            )
          : null,
      custodian: json['custodian'] != null
          ? Reference.fromJson(
              json['custodian'] as Map<String, dynamic>,
            )
          : null,
      relatesTo: json['relatesTo'] != null
          ? (json['relatesTo'] as List<dynamic>)
              .map<DocumentReferenceRelatesTo>(
                (v) => DocumentReferenceRelatesTo.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      description: (json['description'] != null || json['_description'] != null)
          ? FhirString.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      securityLabel: json['securityLabel'] != null
          ? (json['securityLabel'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      content: ensureNonNullList(
        (json['content'] as List<dynamic>)
            .map<DocumentReferenceContent>(
              (v) => DocumentReferenceContent.fromJson(
                v as Map<String, dynamic>,
              ),
            )
            .toList(),
      ),
      context: json['context'] != null
          ? DocumentReferenceContext.fromJson(
              json['context'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [DocumentReference]
  /// from a [String] or [YamlMap] object
  factory DocumentReference.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? DocumentReference.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? DocumentReference.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'DocumentReference '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [DocumentReference]
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

  /// Auto-incrementing ID for ObjectBox.
  @Id(assignable: true)
  @override
  int dbId;

  @override
  String get fhirType => 'DocumentReference';

  /// [id]
  /// The logical id of the resource, as used in the URL for the resource.
  /// Once assigned, this value never changes.
  @override
  FhirString? id;

  /// [meta]
  /// The metadata about the resource. This is content that is maintained by
  /// the infrastructure. Changes to the content might not always be
  /// associated with version changes to the resource.
  @override
  FhirMeta? meta;

  /// [implicitRules]
  /// A reference to a set of rules that were followed when the resource was
  /// constructed, and which must be understood when processing the content.
  /// Often, this is a reference to an implementation guide that defines the
  /// special rules along with other profiles etc.
  @override
  FhirUri? implicitRules;

  /// [language]
  /// The base language in which the resource is written.
  @override
  CommonLanguages? language;

  /// [text]
  /// A human-readable narrative that contains a summary of the resource and
  /// can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to
  /// just read the narrative. Resource definitions may define what content
  /// should be represented in the narrative to ensure clinical safety.
  @override
  Narrative? text;

  /// [contained]
  /// These resources do not have an independent existence apart from the
  /// resource that contains them - they cannot be identified independently,
  /// and nor can they have their own independent transaction scope.
  @override
  List<Resource>? contained;

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  @override
  List<FhirExtension>? extension_;

  /// [modifierExtension]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource and that modifies the understanding of
  /// the element that contains it and/or the understanding of the containing
  /// element's descendants. Usually modifier elements provide negation or
  /// qualification. To make the use of extensions safe and manageable, there
  /// is a strict set of governance applied to the definition and use of
  /// extensions. Though any implementer is allowed to define an extension,
  /// there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  /// required to check for modifier extensions.
  ///
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  /// modifierExtension itself).
  @override
  List<FhirExtension>? modifierExtension;

  /// [masterIdentifier]
  /// Document identifier as assigned by the source of the document. This
  /// identifier is specific to this version of the document. This unique
  /// identifier may be used elsewhere to identify this version of the
  /// document.
  Identifier? masterIdentifier;

  /// [identifier]
  /// Other identifiers associated with the document, including version
  /// independent identifiers.
  List<Identifier>? identifier;

  /// [status]
  /// The status of this document reference.
  DocumentReferenceStatus status;

  /// [docStatus]
  /// The status of the underlying document.
  CompositionStatus? docStatus;

  /// [type]
  /// Specifies the particular kind of document referenced (e.g. History and
  /// Physical, Discharge Summary, Progress Note). This usually equates to
  /// the purpose of making the document referenced.
  CodeableConcept? type;

  /// [category]
  /// A categorization for the type of document referenced - helps for
  /// indexing and searching. This may be implied by or derived from the code
  /// specified in the DocumentReference.type.
  List<CodeableConcept>? category;

  /// [subject]
  /// Who or what the document is about. The document can be about a person,
  /// (patient or healthcare practitioner), a device (e.g. a machine) or even
  /// a group of subjects (such as a document about a herd of farm animals,
  /// or a set of patients that share a common exposure).
  Reference? subject;

  /// [date]
  /// When the document reference was created.
  FhirInstant? date;

  /// [author]
  /// Identifies who is responsible for adding the information to the
  /// document.
  List<Reference>? author;

  /// [authenticator]
  /// Which person or organization authenticates that this document is valid.
  Reference? authenticator;

  /// [custodian]
  /// Identifies the organization or group who is responsible for ongoing
  /// maintenance of and access to the document.
  Reference? custodian;

  /// [relatesTo]
  /// Relationships that this document has with other document references
  /// that already exist.
  List<DocumentReferenceRelatesTo>? relatesTo;

  /// [description]
  /// Human-readable description of the source document.
  FhirString? description;

  /// [securityLabel]
  /// A set of Security-Tag codes specifying the level of privacy/security of
  /// the Document. Note that DocumentReference.meta.security contains the
  /// security labels of the "reference" to the document, while
  /// DocumentReference.securityLabel contains a snapshot of the security
  /// labels on the document the reference refers to.
  List<CodeableConcept>? securityLabel;

  /// [content]
  /// The document and format referenced. There may be multiple content
  /// element repetitions, each with a different format.
  List<DocumentReferenceContent> content;

  /// [context]
  /// The clinical context in which the document was prepared.
  DocumentReferenceContext? context;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    if (implicitRules != null) {
      final fieldJson1 = implicitRules!.toJson();
      json['implicitRules'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_implicitRules'] = fieldJson1['_value'];
      }
    }

    if (language != null) {
      final fieldJson2 = language!.toJson();
      json['language'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_language'] = fieldJson2['_value'];
      }
    }

    if (text != null) {
      json['text'] = text!.toJson();
    }

    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((e) => e.toJson()).toList();
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (masterIdentifier != null) {
      json['masterIdentifier'] = masterIdentifier!.toJson();
    }

    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    final fieldJson9 = status.toJson();
    json['status'] = fieldJson9['value'];
    if (fieldJson9['_value'] != null) {
      json['_status'] = fieldJson9['_value'];
    }

    if (docStatus != null) {
      final fieldJson10 = docStatus!.toJson();
      json['docStatus'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_docStatus'] = fieldJson10['_value'];
      }
    }

    if (type != null) {
      json['type'] = type!.toJson();
    }

    if (category != null && category!.isNotEmpty) {
      json['category'] = category!.map((e) => e.toJson()).toList();
    }

    if (subject != null) {
      json['subject'] = subject!.toJson();
    }

    if (date != null) {
      final fieldJson14 = date!.toJson();
      json['date'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_date'] = fieldJson14['_value'];
      }
    }

    if (author != null && author!.isNotEmpty) {
      json['author'] = author!.map((e) => e.toJson()).toList();
    }

    if (authenticator != null) {
      json['authenticator'] = authenticator!.toJson();
    }

    if (custodian != null) {
      json['custodian'] = custodian!.toJson();
    }

    if (relatesTo != null && relatesTo!.isNotEmpty) {
      json['relatesTo'] = relatesTo!.map((e) => e.toJson()).toList();
    }

    if (description != null) {
      final fieldJson19 = description!.toJson();
      json['description'] = fieldJson19['value'];
      if (fieldJson19['_value'] != null) {
        json['_description'] = fieldJson19['_value'];
      }
    }

    if (securityLabel != null && securityLabel!.isNotEmpty) {
      json['securityLabel'] = securityLabel!.map((e) => e.toJson()).toList();
    }

    json['content'] = content.map((e) => e.toJson()).toList();

    if (context != null) {
      json['context'] = context!.toJson();
    }

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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return DocumentReference(
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
      docStatus: docStatus ?? this.docStatus,
      type: type ?? this.type,
      category: category ?? this.category,
      subject: subject ?? this.subject,
      date: date ?? this.date,
      author: author ?? this.author,
      authenticator: authenticator ?? this.authenticator,
      custodian: custodian ?? this.custodian,
      relatesTo: relatesTo ?? this.relatesTo,
      description: description ?? this.description,
      securityLabel: securityLabel ?? this.securityLabel,
      content: content ?? this.content,
      context: context ?? this.context,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [DocumentReferenceRelatesTo]
/// Relationships that this document has with other document references
/// that already exist.
@Entity()
class DocumentReferenceRelatesTo extends BackboneElement {
  /// Primary constructor for
  /// [DocumentReferenceRelatesTo]

  DocumentReferenceRelatesTo({
    this.dbId = 0,
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.code,
    required this.target,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DocumentReferenceRelatesTo.fromJson(
    Map<String, dynamic> json,
  ) {
    return DocumentReferenceRelatesTo(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      code: DocumentRelationshipType.fromJson({
        'value': json['code'],
        '_value': json['_code'],
      }),
      target: Reference.fromJson(
        json['target'] as Map<String, dynamic>,
      ),
    );
  }

  /// Deserialize [DocumentReferenceRelatesTo]
  /// from a [String] or [YamlMap] object
  factory DocumentReferenceRelatesTo.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? DocumentReferenceRelatesTo.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? DocumentReferenceRelatesTo.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'DocumentReferenceRelatesTo '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [DocumentReferenceRelatesTo]
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

  /// Auto-incrementing ID for ObjectBox.
  @Id(assignable: true)
  @override
  int dbId;

  @override
  String get fhirType => 'DocumentReferenceRelatesTo';

  /// [id]
  /// Unique id for the element within a resource (for internal references).
  /// This may be any string value that does not contain spaces.
  @override
  FhirString? id;

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  @override
  List<FhirExtension>? extension_;

  /// [modifierExtension]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element and that modifies the understanding of
  /// the element in which it is contained and/or the understanding of the
  /// containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension. Applications processing a resource are
  /// required to check for modifier extensions.
  ///
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  /// modifierExtension itself).
  @override
  List<FhirExtension>? modifierExtension;

  /// [code]
  /// The type of relationship that this document has with anther document.
  DocumentRelationshipType code;

  /// [target]
  /// The target document of this relationship.
  Reference target;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    final fieldJson2 = code.toJson();
    json['code'] = fieldJson2['value'];
    if (fieldJson2['_value'] != null) {
      json['_code'] = fieldJson2['_value'];
    }

    json['target'] = target.toJson();

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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return DocumentReferenceRelatesTo(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      target: target ?? this.target,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [DocumentReferenceContent]
/// The document and format referenced. There may be multiple content
/// element repetitions, each with a different format.
@Entity()
class DocumentReferenceContent extends BackboneElement {
  /// Primary constructor for
  /// [DocumentReferenceContent]

  DocumentReferenceContent({
    this.dbId = 0,
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.attachment,
    this.format,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DocumentReferenceContent.fromJson(
    Map<String, dynamic> json,
  ) {
    return DocumentReferenceContent(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      attachment: Attachment.fromJson(
        json['attachment'] as Map<String, dynamic>,
      ),
      format: json['format'] != null
          ? Coding.fromJson(
              json['format'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [DocumentReferenceContent]
  /// from a [String] or [YamlMap] object
  factory DocumentReferenceContent.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? DocumentReferenceContent.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? DocumentReferenceContent.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'DocumentReferenceContent '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [DocumentReferenceContent]
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

  /// Auto-incrementing ID for ObjectBox.
  @Id(assignable: true)
  @override
  int dbId;

  @override
  String get fhirType => 'DocumentReferenceContent';

  /// [id]
  /// Unique id for the element within a resource (for internal references).
  /// This may be any string value that does not contain spaces.
  @override
  FhirString? id;

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  @override
  List<FhirExtension>? extension_;

  /// [modifierExtension]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element and that modifies the understanding of
  /// the element in which it is contained and/or the understanding of the
  /// containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension. Applications processing a resource are
  /// required to check for modifier extensions.
  ///
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  /// modifierExtension itself).
  @override
  List<FhirExtension>? modifierExtension;

  /// [attachment]
  /// The document or URL of the document along with critical metadata to
  /// prove content has integrity.
  Attachment attachment;

  /// [format]
  /// An identifier of the document encoding, structure, and template that
  /// the document conforms to beyond the base format indicated in the
  /// mimeType.
  Coding? format;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['attachment'] = attachment.toJson();

    if (format != null) {
      json['format'] = format!.toJson();
    }

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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return DocumentReferenceContent(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      attachment: attachment ?? this.attachment,
      format: format ?? this.format,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [DocumentReferenceContext]
/// The clinical context in which the document was prepared.
@Entity()
class DocumentReferenceContext extends BackboneElement {
  /// Primary constructor for
  /// [DocumentReferenceContext]

  DocumentReferenceContext({
    this.dbId = 0,
    this.id,
    this.extension_,
    this.modifierExtension,
    this.encounter,
    this.event,
    this.period,
    this.facilityType,
    this.practiceSetting,
    this.sourcePatientInfo,
    this.related,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DocumentReferenceContext.fromJson(
    Map<String, dynamic> json,
  ) {
    return DocumentReferenceContext(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      encounter: json['encounter'] != null
          ? (json['encounter'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      event: json['event'] != null
          ? (json['event'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      period: json['period'] != null
          ? Period.fromJson(
              json['period'] as Map<String, dynamic>,
            )
          : null,
      facilityType: json['facilityType'] != null
          ? CodeableConcept.fromJson(
              json['facilityType'] as Map<String, dynamic>,
            )
          : null,
      practiceSetting: json['practiceSetting'] != null
          ? CodeableConcept.fromJson(
              json['practiceSetting'] as Map<String, dynamic>,
            )
          : null,
      sourcePatientInfo: json['sourcePatientInfo'] != null
          ? Reference.fromJson(
              json['sourcePatientInfo'] as Map<String, dynamic>,
            )
          : null,
      related: json['related'] != null
          ? (json['related'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [DocumentReferenceContext]
  /// from a [String] or [YamlMap] object
  factory DocumentReferenceContext.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? DocumentReferenceContext.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? DocumentReferenceContext.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'DocumentReferenceContext '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [DocumentReferenceContext]
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

  /// Auto-incrementing ID for ObjectBox.
  @Id(assignable: true)
  @override
  int dbId;

  @override
  String get fhirType => 'DocumentReferenceContext';

  /// [id]
  /// Unique id for the element within a resource (for internal references).
  /// This may be any string value that does not contain spaces.
  @override
  FhirString? id;

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  @override
  List<FhirExtension>? extension_;

  /// [modifierExtension]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element and that modifies the understanding of
  /// the element in which it is contained and/or the understanding of the
  /// containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension. Applications processing a resource are
  /// required to check for modifier extensions.
  ///
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  /// modifierExtension itself).
  @override
  List<FhirExtension>? modifierExtension;

  /// [encounter]
  /// Describes the clinical encounter or type of care that the document
  /// content is associated with.
  List<Reference>? encounter;

  /// [event]
  /// This list of codes represents the main clinical acts, such as a
  /// colonoscopy or an appendectomy, being documented. In some cases, the
  /// event is inherent in the type Code, such as a "History and Physical
  /// Report" in which the procedure being documented is necessarily a
  /// "History and Physical" act.
  List<CodeableConcept>? event;

  /// [period]
  /// The time period over which the service that is described by the
  /// document was provided.
  Period? period;

  /// [facilityType]
  /// The kind of facility where the patient was seen.
  CodeableConcept? facilityType;

  /// [practiceSetting]
  /// This property may convey specifics about the practice setting where the
  /// content was created, often reflecting the clinical specialty.
  CodeableConcept? practiceSetting;

  /// [sourcePatientInfo]
  /// The Patient Information as known when the document was published. May
  /// be a reference to a version specific, or contained.
  Reference? sourcePatientInfo;

  /// [related]
  /// Related identifiers or resources associated with the DocumentReference.
  List<Reference>? related;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (encounter != null && encounter!.isNotEmpty) {
      json['encounter'] = encounter!.map((e) => e.toJson()).toList();
    }

    if (event != null && event!.isNotEmpty) {
      json['event'] = event!.map((e) => e.toJson()).toList();
    }

    if (period != null) {
      json['period'] = period!.toJson();
    }

    if (facilityType != null) {
      json['facilityType'] = facilityType!.toJson();
    }

    if (practiceSetting != null) {
      json['practiceSetting'] = practiceSetting!.toJson();
    }

    if (sourcePatientInfo != null) {
      json['sourcePatientInfo'] = sourcePatientInfo!.toJson();
    }

    if (related != null && related!.isNotEmpty) {
      json['related'] = related!.map((e) => e.toJson()).toList();
    }

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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return DocumentReferenceContext(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      encounter: encounter ?? this.encounter,
      event: event ?? this.event,
      period: period ?? this.period,
      facilityType: facilityType ?? this.facilityType,
      practiceSetting: practiceSetting ?? this.practiceSetting,
      sourcePatientInfo: sourcePatientInfo ?? this.sourcePatientInfo,
      related: related ?? this.related,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
