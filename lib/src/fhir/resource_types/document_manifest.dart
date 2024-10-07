import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [DocumentManifest] /// A collection of documents compiled for a purpose together with metadata
/// that applies to the collection.
class DocumentManifest extends DomainResource {
  DocumentManifest({
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
    this.type,
    this.subject,
    this.created,
    this.createdElement,
    this.author,
    this.recipient,
    this.source,
    this.sourceElement,
    this.description,
    this.descriptionElement,
    required this.content,
    this.related,
  }) : super(resourceType: R4ResourceType.DocumentManifest);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [masterIdentifier] /// A single identifier that uniquely identifies this manifest. Principally
  /// used to refer to the manifest in non-FHIR contexts.
  final Identifier? masterIdentifier;

  /// [identifier] /// Other identifiers associated with the document manifest, including version
  /// independent identifiers.
  final List<Identifier>? identifier;

  /// [status] /// The status of this document manifest.
  final FhirCode status;
  final Element? statusElement;

  /// [type] /// The code specifying the type of clinical activity that resulted in placing
  /// the associated content into the DocumentManifest.
  final CodeableConcept? type;

  /// [subject] /// Who or what the set of documents is about. The documents can be about a
  /// person, (patient or healthcare practitioner), a device (i.e. machine) or
  /// even a group of subjects (such as a document about a herd of farm animals,
  /// or a set of patients that share a common exposure). If the documents cross
  /// more than one subject, then more than one subject is allowed here (unusual
  /// use case).
  final Reference? subject;

  /// [created] /// When the document manifest was created for submission to the server (not
  /// necessarily the same thing as the actual resource last modified time, since
  /// it may be modified, replicated, etc.).
  final FhirDateTime? created;
  final Element? createdElement;

  /// [author] /// Identifies who is the author of the manifest. Manifest author is not
  /// necessarly the author of the references included.
  final List<Reference>? author;

  /// [recipient] /// A patient, practitioner, or organization for which this set of documents is
  /// intended.
  final List<Reference>? recipient;

  /// [source] /// Identifies the source system, application, or software that produced the
  /// document manifest.
  final FhirUri? source;
  final Element? sourceElement;

  /// [description] /// Human-readable description of the source document. This is sometimes known
  /// as the "title".
  final FhirString? description;
  final Element? descriptionElement;

  /// [content] /// The list of Resources that consist of the parts of this manifest.
  final List<Reference> content;

  /// [related] /// Related identifiers or resources associated with the DocumentManifest.
  final List<DocumentManifestRelated>? related;
  @override
  DocumentManifest clone() => throw UnimplementedError();
  DocumentManifest copy({
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
    CodeableConcept? type,
    Reference? subject,
    FhirDateTime? created,
    Element? createdElement,
    List<Reference>? author,
    List<Reference>? recipient,
    FhirUri? source,
    Element? sourceElement,
    FhirString? description,
    Element? descriptionElement,
    List<Reference>? content,
    List<DocumentManifestRelated>? related,
  }) {
    return DocumentManifest(
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
      type: type ?? this.type,
      subject: subject ?? this.subject,
      created: created ?? this.created,
      createdElement: createdElement ?? this.createdElement,
      author: author ?? this.author,
      recipient: recipient ?? this.recipient,
      source: source ?? this.source,
      sourceElement: sourceElement ?? this.sourceElement,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      content: content ?? this.content,
      related: related ?? this.related,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [DocumentManifestRelated] /// Related identifiers or resources associated with the DocumentManifest.
class DocumentManifestRelated extends BackboneElement {
  DocumentManifestRelated({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.ref,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Related identifier to this DocumentManifest. For example, Order numbers,
  /// accession numbers, XDW workflow numbers.
  final Identifier? identifier;

  /// [ref] /// Related Resource to this DocumentManifest. For example, Order,
  /// ServiceRequest, Procedure, EligibilityRequest, etc.
  final Reference? ref;
  @override
  DocumentManifestRelated clone() => throw UnimplementedError();
  DocumentManifestRelated copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? identifier,
    Reference? ref,
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
