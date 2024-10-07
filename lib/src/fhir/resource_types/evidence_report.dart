import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [EvidenceReport] /// The EvidenceReport Resource is a specialized container for a collection of
/// resources and codable concepts, adapted to support compositions of
/// Evidence, EvidenceVariable, and Citation resources and related concepts.
class EvidenceReport extends DomainResource {
  EvidenceReport({
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
    this.url,
    this.urlElement,
    required this.status,
    this.statusElement,
    this.useContext,
    this.identifier,
    this.relatedIdentifier,
    this.citeAsReference,
    this.citeAsMarkdown,
    this.citeAsMarkdownElement,
    this.type,
    this.note,
    this.relatedArtifact,
    required this.subject,
    this.publisher,
    this.publisherElement,
    this.contact,
    this.author,
    this.editor,
    this.reviewer,
    this.endorser,
    this.relatesTo,
    this.section,
  }) : super(resourceType: R4ResourceType.EvidenceReport);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [url] /// An absolute URI that is used to identify this EvidenceReport when it is
  /// referenced in a specification, model, design or an instance; also called
  /// its canonical identifier. This SHOULD be globally unique and SHOULD be a
  /// literal address at which at which an authoritative instance of this summary
  /// is (or will be) published. This URL can be the target of a canonical
  /// reference. It SHALL remain the same when the summary is stored on different
  /// servers.
  final FhirUri? url;
  final Element? urlElement;

  /// [status] /// The status of this summary. Enables tracking the life-cycle of the content.
  final FhirCode status;
  final Element? statusElement;

  /// [useContext] /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories (gender,
  /// age, ...) or may be references to specific programs (insurance plans,
  /// studies, ...) and may be used to assist with indexing and searching for
  /// appropriate evidence report instances.
  final List<UsageContext>? useContext;

  /// [identifier] /// A formal identifier that is used to identify this EvidenceReport when it is
  /// represented in other formats, or referenced in a specification, model,
  /// design or an instance.
  final List<Identifier>? identifier;

  /// [relatedIdentifier] /// A formal identifier that is used to identify things closely related to this
  /// EvidenceReport.
  final List<Identifier>? relatedIdentifier;

  /// [citeAsReference] /// Citation Resource or display of suggested citation for this report.
  final Reference? citeAsReference;

  /// [citeAsMarkdown] /// Citation Resource or display of suggested citation for this report.
  final FhirMarkdown? citeAsMarkdown;
  final Element? citeAsMarkdownElement;

  /// [type] /// Specifies the kind of report, such as grouping of classifiers, search
  /// results, or human-compiled expression.
  final CodeableConcept? type;

  /// [note] /// Used for footnotes and annotations.
  final List<Annotation>? note;

  /// [relatedArtifact] /// Link, description or reference to artifact associated with the report.
  final List<RelatedArtifact>? relatedArtifact;

  /// [subject] /// Specifies the subject or focus of the report. Answers "What is this report
  /// about?".
  final EvidenceReportSubject subject;

  /// [publisher] /// The name of the organization or individual that published the evidence
  /// report.
  final FhirString? publisher;
  final Element? publisherElement;

  /// [contact] /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [author] /// An individiual, organization, or device primarily involved in the creation
  /// and maintenance of the content.
  final List<ContactDetail>? author;

  /// [editor] /// An individiual, organization, or device primarily responsible for internal
  /// coherence of the content.
  final List<ContactDetail>? editor;

  /// [reviewer] /// An individiual, organization, or device primarily responsible for review of
  /// some aspect of the content.
  final List<ContactDetail>? reviewer;

  /// [endorser] /// An individiual, organization, or device responsible for officially
  /// endorsing the content for use in some setting.
  final List<ContactDetail>? endorser;

  /// [relatesTo] /// Relationships that this composition has with other compositions or
  /// documents that already exist.
  final List<EvidenceReportRelatesTo>? relatesTo;

  /// [section] /// The root of the sections that make up the composition.
  final List<EvidenceReportSection>? section;
  @override
  EvidenceReport clone() => throw UnimplementedError();
  EvidenceReport copy({
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
    FhirUri? url,
    Element? urlElement,
    FhirCode? status,
    Element? statusElement,
    List<UsageContext>? useContext,
    List<Identifier>? identifier,
    List<Identifier>? relatedIdentifier,
    Reference? citeAsReference,
    FhirMarkdown? citeAsMarkdown,
    Element? citeAsMarkdownElement,
    CodeableConcept? type,
    List<Annotation>? note,
    List<RelatedArtifact>? relatedArtifact,
    EvidenceReportSubject? subject,
    FhirString? publisher,
    Element? publisherElement,
    List<ContactDetail>? contact,
    List<ContactDetail>? author,
    List<ContactDetail>? editor,
    List<ContactDetail>? reviewer,
    List<ContactDetail>? endorser,
    List<EvidenceReportRelatesTo>? relatesTo,
    List<EvidenceReportSection>? section,
  }) {
    return EvidenceReport(
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
      url: url ?? this.url,
      urlElement: urlElement ?? this.urlElement,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      useContext: useContext ?? this.useContext,
      identifier: identifier ?? this.identifier,
      relatedIdentifier: relatedIdentifier ?? this.relatedIdentifier,
      citeAsReference: citeAsReference ?? this.citeAsReference,
      citeAsMarkdown: citeAsMarkdown ?? this.citeAsMarkdown,
      citeAsMarkdownElement:
          citeAsMarkdownElement ?? this.citeAsMarkdownElement,
      type: type ?? this.type,
      note: note ?? this.note,
      relatedArtifact: relatedArtifact ?? this.relatedArtifact,
      subject: subject ?? this.subject,
      publisher: publisher ?? this.publisher,
      publisherElement: publisherElement ?? this.publisherElement,
      contact: contact ?? this.contact,
      author: author ?? this.author,
      editor: editor ?? this.editor,
      reviewer: reviewer ?? this.reviewer,
      endorser: endorser ?? this.endorser,
      relatesTo: relatesTo ?? this.relatesTo,
      section: section ?? this.section,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [EvidenceReportSubject] /// Specifies the subject or focus of the report. Answers "What is this report
/// about?".
class EvidenceReportSubject extends BackboneElement {
  EvidenceReportSubject({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.characteristic,
    this.note,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [characteristic] /// Characteristic.
  final List<EvidenceReportCharacteristic>? characteristic;

  /// [note] /// Used for general notes and annotations not coded elsewhere.
  final List<Annotation>? note;
  @override
  EvidenceReportSubject clone() => throw UnimplementedError();
  EvidenceReportSubject copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<EvidenceReportCharacteristic>? characteristic,
    List<Annotation>? note,
  }) {
    return EvidenceReportSubject(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      characteristic: characteristic ?? this.characteristic,
      note: note ?? this.note,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [EvidenceReportCharacteristic] /// Characteristic.
class EvidenceReportCharacteristic extends BackboneElement {
  EvidenceReportCharacteristic({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    required this.valueReference,
    required this.valueCodeableConcept,
    required this.valueBoolean,
    this.valueBooleanElement,
    required this.valueQuantity,
    required this.valueRange,
    this.exclude,
    this.excludeElement,
    this.period,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// Characteristic code.
  final CodeableConcept code;

  /// [valueReference] /// Characteristic value.
  final Reference valueReference;

  /// [valueCodeableConcept] /// Characteristic value.
  final CodeableConcept valueCodeableConcept;

  /// [valueBoolean] /// Characteristic value.
  final FhirBoolean valueBoolean;
  final Element? valueBooleanElement;

  /// [valueQuantity] /// Characteristic value.
  final Quantity valueQuantity;

  /// [valueRange] /// Characteristic value.
  final Range valueRange;

  /// [exclude] /// Is used to express not the characteristic.
  final FhirBoolean? exclude;
  final Element? excludeElement;

  /// [period] /// Timeframe for the characteristic.
  final Period? period;
  @override
  EvidenceReportCharacteristic clone() => throw UnimplementedError();
  EvidenceReportCharacteristic copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    Reference? valueReference,
    CodeableConcept? valueCodeableConcept,
    FhirBoolean? valueBoolean,
    Element? valueBooleanElement,
    Quantity? valueQuantity,
    Range? valueRange,
    FhirBoolean? exclude,
    Element? excludeElement,
    Period? period,
  }) {
    return EvidenceReportCharacteristic(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      valueReference: valueReference ?? this.valueReference,
      valueCodeableConcept: valueCodeableConcept ?? this.valueCodeableConcept,
      valueBoolean: valueBoolean ?? this.valueBoolean,
      valueBooleanElement: valueBooleanElement ?? this.valueBooleanElement,
      valueQuantity: valueQuantity ?? this.valueQuantity,
      valueRange: valueRange ?? this.valueRange,
      exclude: exclude ?? this.exclude,
      excludeElement: excludeElement ?? this.excludeElement,
      period: period ?? this.period,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [EvidenceReportRelatesTo] /// Relationships that this composition has with other compositions or
/// documents that already exist.
class EvidenceReportRelatesTo extends BackboneElement {
  EvidenceReportRelatesTo({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.codeElement,
    required this.targetIdentifier,
    required this.targetReference,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// The type of relationship that this composition has with anther composition
  /// or document.
  final FhirCode code;
  final Element? codeElement;

  /// [targetIdentifier] /// The target composition/document of this relationship.
  final Identifier targetIdentifier;

  /// [targetReference] /// The target composition/document of this relationship.
  final Reference targetReference;
  @override
  EvidenceReportRelatesTo clone() => throw UnimplementedError();
  EvidenceReportRelatesTo copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    Element? codeElement,
    Identifier? targetIdentifier,
    Reference? targetReference,
  }) {
    return EvidenceReportRelatesTo(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      codeElement: codeElement ?? this.codeElement,
      targetIdentifier: targetIdentifier ?? this.targetIdentifier,
      targetReference: targetReference ?? this.targetReference,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [EvidenceReportSection] /// The root of the sections that make up the composition.
class EvidenceReportSection extends BackboneElement {
  EvidenceReportSection({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.title,
    this.titleElement,
    this.focus,
    this.focusReference,
    this.author,
    this.text,
    this.mode,
    this.modeElement,
    this.orderedBy,
    this.entryClassifier,
    this.entryReference,
    this.entryQuantity,
    this.emptyReason,
    this.section,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [title] /// The label for this particular section. This will be part of the rendered
  /// content for the document, and is often used to build a table of contents.
  final FhirString? title;
  final Element? titleElement;

  /// [focus] /// A code identifying the kind of content contained within the section. This
  /// should be consistent with the section title.
  final CodeableConcept? focus;

  /// [focusReference] /// A definitional Resource identifying the kind of content contained within
  /// the section. This should be consistent with the section title.
  final Reference? focusReference;

  /// [author] /// Identifies who is responsible for the information in this section, not
  /// necessarily who typed it in.
  final List<Reference>? author;

  /// [text] /// A human-readable narrative that contains the attested content of the
  /// section, used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is peferred to
  /// contain sufficient detail to make it acceptable for a human to just read
  /// the narrative.
  final Narrative? text;

  /// [mode] /// How the entry list was prepared - whether it is a working list that is
  /// suitable for being maintained on an ongoing basis, or if it represents a
  /// snapshot of a list of items from another source, or whether it is a
  /// prepared list where items may be marked as added, modified or deleted.
  final FhirCode? mode;
  final Element? modeElement;

  /// [orderedBy] /// Specifies the order applied to the items in the section entries.
  final CodeableConcept? orderedBy;

  /// [entryClassifier] /// Specifies any type of classification of the evidence report.
  final List<CodeableConcept>? entryClassifier;

  /// [entryReference] /// A reference to the actual resource from which the narrative in the section
  /// is derived.
  final List<Reference>? entryReference;

  /// [entryQuantity] /// Quantity as content.
  final List<Quantity>? entryQuantity;

  /// [emptyReason] /// If the section is empty, why the list is empty. An empty section typically
  /// has some text explaining the empty reason.
  final CodeableConcept? emptyReason;

  /// [section] /// A nested sub-section within this section.
  final List<EvidenceReportSection>? section;
  @override
  EvidenceReportSection clone() => throw UnimplementedError();
  EvidenceReportSection copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? title,
    Element? titleElement,
    CodeableConcept? focus,
    Reference? focusReference,
    List<Reference>? author,
    Narrative? text,
    FhirCode? mode,
    Element? modeElement,
    CodeableConcept? orderedBy,
    List<CodeableConcept>? entryClassifier,
    List<Reference>? entryReference,
    List<Quantity>? entryQuantity,
    CodeableConcept? emptyReason,
    List<EvidenceReportSection>? section,
  }) {
    return EvidenceReportSection(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      title: title ?? this.title,
      titleElement: titleElement ?? this.titleElement,
      focus: focus ?? this.focus,
      focusReference: focusReference ?? this.focusReference,
      author: author ?? this.author,
      text: text ?? this.text,
      mode: mode ?? this.mode,
      modeElement: modeElement ?? this.modeElement,
      orderedBy: orderedBy ?? this.orderedBy,
      entryClassifier: entryClassifier ?? this.entryClassifier,
      entryReference: entryReference ?? this.entryReference,
      entryQuantity: entryQuantity ?? this.entryQuantity,
      emptyReason: emptyReason ?? this.emptyReason,
      section: section ?? this.section,
    );
  }
}
