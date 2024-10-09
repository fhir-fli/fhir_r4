import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'document_reference.g.dart';

/// [DocumentReference] /// A reference to a document of any kind for any purpose. Provides metadata
/// about the document so that the document can be discovered and managed. The
/// scope of a document is any seralized object with a mime-type, so includes
/// formal patient centric documents (CDA), cliical notes, scanned paper, and
/// non-patient specific documents like policy text.
@JsonSerializable()
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
    // ignore: avoid_unused_constructor_parameters
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.DocumentReference);
  @override
  String get fhirType => 'DocumentReference';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [masterIdentifier] /// Document identifier as assigned by the source of the document. This
  /// identifier is specific to this version of the document. This unique
  /// identifier may be used elsewhere to identify this version of the document.
  @JsonKey(name: 'masterIdentifier')
  final Identifier? masterIdentifier;

  /// [identifier] /// Other identifiers associated with the document, including version
  /// independent identifiers.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [status] /// The status of this document reference.
  @JsonKey(name: 'status')
  final DocumentReferenceStatus status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [docStatus] /// The status of the underlying document.
  @JsonKey(name: 'docStatus')
  final CompositionStatus? docStatus;
  @JsonKey(name: '_docStatus')
  final Element? docStatusElement;

  /// [type] /// Specifies the particular kind of document referenced (e.g. History and
  /// Physical, Discharge Summary, Progress Note). This usually equates to the
  /// purpose of making the document referenced.
  @JsonKey(name: 'type')
  final CodeableConcept? type;

  /// [category] /// A categorization for the type of document referenced - helps for indexing
  /// and searching. This may be implied by or derived from the code specified in
  /// the DocumentReference.type.
  @JsonKey(name: 'category')
  final List<CodeableConcept>? category;

  /// [subject] /// Who or what the document is about. The document can be about a person,
  /// (patient or healthcare practitioner), a device (e.g. a machine) or even a
  /// group of subjects (such as a document about a herd of farm animals, or a
  /// set of patients that share a common exposure).
  @JsonKey(name: 'subject')
  final Reference? subject;

  /// [date] /// When the document reference was created.
  @JsonKey(name: 'date')
  final FhirInstant? date;
  @JsonKey(name: '_date')
  final Element? dateElement;

  /// [author] /// Identifies who is responsible for adding the information to the document.
  @JsonKey(name: 'author')
  final List<Reference>? author;

  /// [authenticator] /// Which person or organization authenticates that this document is valid.
  @JsonKey(name: 'authenticator')
  final Reference? authenticator;

  /// [custodian] /// Identifies the organization or group who is responsible for ongoing
  /// maintenance of and access to the document.
  @JsonKey(name: 'custodian')
  final Reference? custodian;

  /// [relatesTo] /// Relationships that this document has with other document references that
  /// already exist.
  @JsonKey(name: 'relatesTo')
  final List<DocumentReferenceRelatesTo>? relatesTo;

  /// [description] /// Human-readable description of the source document.
  @JsonKey(name: 'description')
  final FhirString? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [securityLabel] /// A set of Security-Tag codes specifying the level of privacy/security of the
  /// Document. Note that DocumentReference.meta.security contains the security
  /// labels of the "reference" to the document, while
  /// DocumentReference.securityLabel contains a snapshot of the security labels
  /// on the document the reference refers to.
  @JsonKey(name: 'securityLabel')
  final List<CodeableConcept>? securityLabel;

  /// [content] /// The document and format referenced. There may be multiple content element
  /// repetitions, each with a different format.
  @JsonKey(name: 'content')
  final List<DocumentReferenceContent> content;

  /// [context] /// The clinical context in which the document was prepared.
  @JsonKey(name: 'context')
  final DocumentReferenceContext? context;
  factory DocumentReference.fromJson(Map<String, dynamic> json) =>
      _$DocumentReferenceFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DocumentReferenceToJson(this);

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
@JsonSerializable()
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
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// The type of relationship that this document has with anther document.
  @JsonKey(name: 'code')
  final DocumentRelationshipType code;
  @JsonKey(name: '_code')
  final Element? codeElement;

  /// [target] /// The target document of this relationship.
  @JsonKey(name: 'target')
  final Reference target;
  factory DocumentReferenceRelatesTo.fromJson(Map<String, dynamic> json) =>
      _$DocumentReferenceRelatesToFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DocumentReferenceRelatesToToJson(this);

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
@JsonSerializable()
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
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [attachment] /// The document or URL of the document along with critical metadata to prove
  /// content has integrity.
  @JsonKey(name: 'attachment')
  final Attachment attachment;

  /// [format] /// An identifier of the document encoding, structure, and template that the
  /// document conforms to beyond the base format indicated in the mimeType.
  @JsonKey(name: 'format')
  final Coding? format;
  factory DocumentReferenceContent.fromJson(Map<String, dynamic> json) =>
      _$DocumentReferenceContentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DocumentReferenceContentToJson(this);

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
@JsonSerializable()
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
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [encounter] /// Describes the clinical encounter or type of care that the document content
  /// is associated with.
  @JsonKey(name: 'encounter')
  final List<Reference>? encounter;

  /// [event] /// This list of codes represents the main clinical acts, such as a colonoscopy
  /// or an appendectomy, being documented. In some cases, the event is inherent
  /// in the type Code, such as a "History and Physical Report" in which the
  /// procedure being documented is necessarily a "History and Physical" act.
  @JsonKey(name: 'event')
  final List<CodeableConcept>? event;

  /// [period] /// The time period over which the service that is described by the document
  /// was provided.
  @JsonKey(name: 'period')
  final Period? period;

  /// [facilityType] /// The kind of facility where the patient was seen.
  @JsonKey(name: 'facilityType')
  final CodeableConcept? facilityType;

  /// [practiceSetting] /// This property may convey specifics about the practice setting where the
  /// content was created, often reflecting the clinical specialty.
  @JsonKey(name: 'practiceSetting')
  final CodeableConcept? practiceSetting;

  /// [sourcePatientInfo] /// The Patient Information as known when the document was published. May be a
  /// reference to a version specific, or contained.
  @JsonKey(name: 'sourcePatientInfo')
  final Reference? sourcePatientInfo;

  /// [related] /// Related identifiers or resources associated with the DocumentReference.
  @JsonKey(name: 'related')
  final List<Reference>? related;
  factory DocumentReferenceContext.fromJson(Map<String, dynamic> json) =>
      _$DocumentReferenceContextFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DocumentReferenceContextToJson(this);

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
