import 'dart:convert';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [DocumentReference] /// A reference to a document of any kind for any purpose. Provides metadata
/// about the document so that the document can be discovered and managed. The
/// scope of a document is any seralized object with a mime-type, so includes
/// formal patient centric documents (CDA), cliical notes, scanned paper, and
/// non-patient specific documents like policy text.
class DocumentReference extends DomainResource {
  DocumentReference({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.masterIdentifier,
    this.identifier,
    required this.status,
    this.statusElement,
    this.docStatus,
    this.docStatusElement,
    this.type,
    this.category,
    this.subject,
    this.date,
    this.dateElement,
    this.author,
    this.authenticator,
    this.custodian,
    this.relatesTo,
    this.description,
    this.descriptionElement,
    this.securityLabel,
    required this.content,
    this.context,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(resourceType: R4ResourceType.DocumentReference);

  @override
  String get fhirType => 'DocumentReference';

  /// [masterIdentifier] /// Document identifier as assigned by the source of the document. This
  /// identifier is specific to this version of the document. This unique
  /// identifier may be used elsewhere to identify this version of the document.
  final Identifier? masterIdentifier;

  /// [identifier] /// Other identifiers associated with the document, including version
  /// independent identifiers.
  final List<Identifier>? identifier;

  /// [status] /// The status of this document reference.
  final DocumentReferenceStatus status;
  final Element? statusElement;

  /// [docStatus] /// The status of the underlying document.
  final CompositionStatus? docStatus;
  final Element? docStatusElement;

  /// [type] /// Specifies the particular kind of document referenced (e.g. History and
  /// Physical, Discharge Summary, Progress Note). This usually equates to the
  /// purpose of making the document referenced.
  final CodeableConcept? type;

  /// [category] /// A categorization for the type of document referenced - helps for indexing
  /// and searching. This may be implied by or derived from the code specified in
  /// the DocumentReference.type.
  final List<CodeableConcept>? category;

  /// [subject] /// Who or what the document is about. The document can be about a person,
  /// (patient or healthcare practitioner), a device (e.g. a machine) or even a
  /// group of subjects (such as a document about a herd of farm animals, or a
  /// set of patients that share a common exposure).
  final Reference? subject;

  /// [date] /// When the document reference was created.
  final FhirInstant? date;
  final Element? dateElement;

  /// [author] /// Identifies who is responsible for adding the information to the document.
  final List<Reference>? author;

  /// [authenticator] /// Which person or organization authenticates that this document is valid.
  final Reference? authenticator;

  /// [custodian] /// Identifies the organization or group who is responsible for ongoing
  /// maintenance of and access to the document.
  final Reference? custodian;

  /// [relatesTo] /// Relationships that this document has with other document references that
  /// already exist.
  final List<DocumentReferenceRelatesTo>? relatesTo;

  /// [description] /// Human-readable description of the source document.
  final FhirString? description;
  final Element? descriptionElement;

  /// [securityLabel] /// A set of Security-Tag codes specifying the level of privacy/security of the
  /// Document. Note that DocumentReference.meta.security contains the security
  /// labels of the "reference" to the document, while
  /// DocumentReference.securityLabel contains a snapshot of the security labels
  /// on the document the reference refers to.
  final List<CodeableConcept>? securityLabel;

  /// [content] /// The document and format referenced. There may be multiple content element
  /// repetitions, each with a different format.
  final List<DocumentReferenceContent> content;

  /// [context] /// The clinical context in which the document was prepared.
  final DocumentReferenceContext? context;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.toJson();
    }
    if (implicitRulesElement != null) {
      json['_implicitRules'] = implicitRulesElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] =
          contained!.map<dynamic>((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (masterIdentifier != null) {
      json['masterIdentifier'] = masterIdentifier!.toJson();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map<dynamic>((Identifier v) => v.toJson()).toList();
    }
    json['status'] = status.toJson();
    if (docStatus != null) {
      json['docStatus'] = docStatus!.toJson();
    }
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (category != null && category!.isNotEmpty) {
      json['category'] =
          category!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (subject != null) {
      json['subject'] = subject!.toJson();
    }
    if (date?.value != null) {
      json['date'] = date!.toJson();
    }
    if (dateElement != null) {
      json['_date'] = dateElement!.toJson();
    }
    if (author != null && author!.isNotEmpty) {
      json['author'] =
          author!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (authenticator != null) {
      json['authenticator'] = authenticator!.toJson();
    }
    if (custodian != null) {
      json['custodian'] = custodian!.toJson();
    }
    if (relatesTo != null && relatesTo!.isNotEmpty) {
      json['relatesTo'] = relatesTo!
          .map<dynamic>((DocumentReferenceRelatesTo v) => v.toJson())
          .toList();
    }
    if (description?.value != null) {
      json['description'] = description!.toJson();
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (securityLabel != null && securityLabel!.isNotEmpty) {
      json['securityLabel'] = securityLabel!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    json['content'] = content
        .map<dynamic>((DocumentReferenceContent v) => v.toJson())
        .toList();
    if (context != null) {
      json['context'] = context!.toJson();
    }
    return json;
  }

  factory DocumentReference.fromJson(Map<String, dynamic> json) {
    return DocumentReference(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson(json['implicitRules'])
          : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'])
          : null,
      languageElement: json['_language'] != null
          ? Element.fromJson(json['_language'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                  (dynamic v) => Resource.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      masterIdentifier: json['masterIdentifier'] != null
          ? Identifier.fromJson(
              json['masterIdentifier'] as Map<String, dynamic>)
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                  (dynamic v) => Identifier.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      status: DocumentReferenceStatus.fromJson(json['status']),
      statusElement: json['_status'] != null
          ? Element.fromJson(json['_status'] as Map<String, dynamic>)
          : null,
      docStatus: json['docStatus'] != null
          ? CompositionStatus.fromJson(json['docStatus'])
          : null,
      docStatusElement: json['_docStatus'] != null
          ? Element.fromJson(json['_docStatus'] as Map<String, dynamic>)
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
      category: json['category'] != null
          ? (json['category'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      subject: json['subject'] != null
          ? Reference.fromJson(json['subject'] as Map<String, dynamic>)
          : null,
      date: json['date'] != null ? FhirInstant.fromJson(json['date']) : null,
      dateElement: json['_date'] != null
          ? Element.fromJson(json['_date'] as Map<String, dynamic>)
          : null,
      author: json['author'] != null
          ? (json['author'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      authenticator: json['authenticator'] != null
          ? Reference.fromJson(json['authenticator'] as Map<String, dynamic>)
          : null,
      custodian: json['custodian'] != null
          ? Reference.fromJson(json['custodian'] as Map<String, dynamic>)
          : null,
      relatesTo: json['relatesTo'] != null
          ? (json['relatesTo'] as List<dynamic>)
              .map<DocumentReferenceRelatesTo>((dynamic v) =>
                  DocumentReferenceRelatesTo.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      description: json['description'] != null
          ? FhirString.fromJson(json['description'])
          : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(json['_description'] as Map<String, dynamic>)
          : null,
      securityLabel: json['securityLabel'] != null
          ? (json['securityLabel'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      content: (json['content'] as List<dynamic>)
          .map<DocumentReferenceContent>((dynamic v) =>
              DocumentReferenceContent.fromJson(v as Map<String, dynamic>))
          .toList(),
      context: json['context'] != null
          ? DocumentReferenceContext.fromJson(
              json['context'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  DocumentReference clone() => throw UnimplementedError();
  @override
  DocumentReference copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    CommonLanguages? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? masterIdentifier,
    List<Identifier>? identifier,
    DocumentReferenceStatus? status,
    Element? statusElement,
    CompositionStatus? docStatus,
    Element? docStatusElement,
    CodeableConcept? type,
    List<CodeableConcept>? category,
    Reference? subject,
    FhirInstant? date,
    Element? dateElement,
    List<Reference>? author,
    Reference? authenticator,
    Reference? custodian,
    List<DocumentReferenceRelatesTo>? relatesTo,
    FhirString? description,
    Element? descriptionElement,
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
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      masterIdentifier: masterIdentifier ?? this.masterIdentifier,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      docStatus: docStatus ?? this.docStatus,
      docStatusElement: docStatusElement ?? this.docStatusElement,
      type: type ?? this.type,
      category: category ?? this.category,
      subject: subject ?? this.subject,
      date: date ?? this.date,
      dateElement: dateElement ?? this.dateElement,
      author: author ?? this.author,
      authenticator: authenticator ?? this.authenticator,
      custodian: custodian ?? this.custodian,
      relatesTo: relatesTo ?? this.relatesTo,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
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

  factory DocumentReference.fromYaml(dynamic yaml) => yaml is String
      ? DocumentReference.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? DocumentReference.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'DocumentReference cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory DocumentReference.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DocumentReference.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [DocumentReferenceRelatesTo] /// Relationships that this document has with other document references that
/// already exist.
class DocumentReferenceRelatesTo extends BackboneElement {
  DocumentReferenceRelatesTo({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.codeElement,
    required this.target,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'DocumentReferenceRelatesTo';

  /// [code] /// The type of relationship that this document has with anther document.
  final DocumentRelationshipType code;
  final Element? codeElement;

  /// [target] /// The target document of this relationship.
  final Reference target;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['code'] = code.toJson();
    json['target'] = target.toJson();
    return json;
  }

  factory DocumentReferenceRelatesTo.fromJson(Map<String, dynamic> json) {
    return DocumentReferenceRelatesTo(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      code: DocumentRelationshipType.fromJson(json['code']),
      codeElement: json['_code'] != null
          ? Element.fromJson(json['_code'] as Map<String, dynamic>)
          : null,
      target: Reference.fromJson(json['target'] as Map<String, dynamic>),
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
    Element? codeElement,
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
      codeElement: codeElement ?? this.codeElement,
      target: target ?? this.target,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory DocumentReferenceRelatesTo.fromYaml(dynamic yaml) => yaml is String
      ? DocumentReferenceRelatesTo.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? DocumentReferenceRelatesTo.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'DocumentReferenceRelatesTo cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory DocumentReferenceRelatesTo.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DocumentReferenceRelatesTo.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [DocumentReferenceContent] /// The document and format referenced. There may be multiple content element
/// repetitions, each with a different format.
class DocumentReferenceContent extends BackboneElement {
  DocumentReferenceContent({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.attachment,
    this.format,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'DocumentReferenceContent';

  /// [attachment] /// The document or URL of the document along with critical metadata to prove
  /// content has integrity.
  final Attachment attachment;

  /// [format] /// An identifier of the document encoding, structure, and template that the
  /// document conforms to beyond the base format indicated in the mimeType.
  final Coding? format;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['attachment'] = attachment.toJson();
    if (format != null) {
      json['format'] = format!.toJson();
    }
    return json;
  }

  factory DocumentReferenceContent.fromJson(Map<String, dynamic> json) {
    return DocumentReferenceContent(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      attachment:
          Attachment.fromJson(json['attachment'] as Map<String, dynamic>),
      format: json['format'] != null
          ? Coding.fromJson(json['format'] as Map<String, dynamic>)
          : null,
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

  factory DocumentReferenceContent.fromYaml(dynamic yaml) => yaml is String
      ? DocumentReferenceContent.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? DocumentReferenceContent.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'DocumentReferenceContent cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory DocumentReferenceContent.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DocumentReferenceContent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [DocumentReferenceContext] /// The clinical context in which the document was prepared.
class DocumentReferenceContext extends BackboneElement {
  DocumentReferenceContext({
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'DocumentReferenceContext';

  /// [encounter] /// Describes the clinical encounter or type of care that the document content
  /// is associated with.
  final List<Reference>? encounter;

  /// [event] /// This list of codes represents the main clinical acts, such as a colonoscopy
  /// or an appendectomy, being documented. In some cases, the event is inherent
  /// in the type Code, such as a "History and Physical Report" in which the
  /// procedure being documented is necessarily a "History and Physical" act.
  final List<CodeableConcept>? event;

  /// [period] /// The time period over which the service that is described by the document
  /// was provided.
  final Period? period;

  /// [facilityType] /// The kind of facility where the patient was seen.
  final CodeableConcept? facilityType;

  /// [practiceSetting] /// This property may convey specifics about the practice setting where the
  /// content was created, often reflecting the clinical specialty.
  final CodeableConcept? practiceSetting;

  /// [sourcePatientInfo] /// The Patient Information as known when the document was published. May be a
  /// reference to a version specific, or contained.
  final Reference? sourcePatientInfo;

  /// [related] /// Related identifiers or resources associated with the DocumentReference.
  final List<Reference>? related;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (encounter != null && encounter!.isNotEmpty) {
      json['encounter'] =
          encounter!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (event != null && event!.isNotEmpty) {
      json['event'] =
          event!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
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
      json['related'] =
          related!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    return json;
  }

  factory DocumentReferenceContext.fromJson(Map<String, dynamic> json) {
    return DocumentReferenceContext(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      encounter: json['encounter'] != null
          ? (json['encounter'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      event: json['event'] != null
          ? (json['event'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      period: json['period'] != null
          ? Period.fromJson(json['period'] as Map<String, dynamic>)
          : null,
      facilityType: json['facilityType'] != null
          ? CodeableConcept.fromJson(
              json['facilityType'] as Map<String, dynamic>)
          : null,
      practiceSetting: json['practiceSetting'] != null
          ? CodeableConcept.fromJson(
              json['practiceSetting'] as Map<String, dynamic>)
          : null,
      sourcePatientInfo: json['sourcePatientInfo'] != null
          ? Reference.fromJson(
              json['sourcePatientInfo'] as Map<String, dynamic>)
          : null,
      related: json['related'] != null
          ? (json['related'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
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

  factory DocumentReferenceContext.fromYaml(dynamic yaml) => yaml is String
      ? DocumentReferenceContext.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? DocumentReferenceContext.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'DocumentReferenceContext cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory DocumentReferenceContext.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DocumentReferenceContext.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
