import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

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
  }) : super(resourceType: R4ResourceType.DocumentReference);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [masterIdentifier] /// Document identifier as assigned by the source of the document. This
  /// identifier is specific to this version of the document. This unique
  /// identifier may be used elsewhere to identify this version of the document.
  final Identifier? masterIdentifier;

  /// [identifier] /// Other identifiers associated with the document, including version
  /// independent identifiers.
  final List<Identifier>? identifier;

  /// [status] /// The status of this document reference.
  final FhirCode status;
  final Element? statusElement;

  /// [docStatus] /// The status of the underlying document.
  final FhirCode? docStatus;
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
  DocumentReference clone() => throw UnimplementedError();
  DocumentReference copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? masterIdentifier,
    List<Identifier>? identifier,
    FhirCode? status,
    Element? statusElement,
    FhirCode? docStatus,
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

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
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// The type of relationship that this document has with anther document.
  final FhirCode code;
  final Element? codeElement;

  /// [target] /// The target document of this relationship.
  final Reference target;
  @override
  DocumentReferenceRelatesTo clone() => throw UnimplementedError();
  DocumentReferenceRelatesTo copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    Element? codeElement,
    Reference? target,
  }) {
    return DocumentReferenceRelatesTo(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      codeElement: codeElement ?? this.codeElement,
      target: target ?? this.target,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [DocumentReferenceContent] /// The document and format referenced. There may be multiple content element
/// repetitions, each with a different format.
class DocumentReferenceContent extends BackboneElement {
  DocumentReferenceContent({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.attachment,
    this.format,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [attachment] /// The document or URL of the document along with critical metadata to prove
  /// content has integrity.
  final Attachment attachment;

  /// [format] /// An identifier of the document encoding, structure, and template that the
  /// document conforms to beyond the base format indicated in the mimeType.
  final Coding? format;
  @override
  DocumentReferenceContent clone() => throw UnimplementedError();
  DocumentReferenceContent copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Attachment? attachment,
    Coding? format,
  }) {
    return DocumentReferenceContent(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      attachment: attachment ?? this.attachment,
      format: format ?? this.format,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

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
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

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
  DocumentReferenceContext clone() => throw UnimplementedError();
  DocumentReferenceContext copy({
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
    );
  }
}
