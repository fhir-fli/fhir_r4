import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Citation] /// The Citation Resource enables reference to any knowledge artifact for
/// purposes of identification and attribution. The Citation Resource supports
/// existing reference structures and developing publication practices such as
/// versioning, expressing complex contributorship roles, and referencing
/// computable resources.
class Citation extends DomainResource {
  Citation({
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
    this.identifier,
    this.version,
    this.versionElement,
    this.name,
    this.nameElement,
    this.title,
    this.titleElement,
    required this.status,
    this.statusElement,
    this.experimental,
    this.experimentalElement,
    this.date,
    this.dateElement,
    this.publisher,
    this.publisherElement,
    this.contact,
    this.description,
    this.descriptionElement,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.purposeElement,
    this.copyright,
    this.copyrightElement,
    this.approvalDate,
    this.approvalDateElement,
    this.lastReviewDate,
    this.lastReviewDateElement,
    this.effectivePeriod,
    this.author,
    this.editor,
    this.reviewer,
    this.endorser,
    this.summary,
    this.classification,
    this.note,
    this.currentState,
    this.statusDate,
    this.relatesTo,
    this.citedArtifact,
  }) : super(resourceType: R4ResourceType.Citation);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [url] /// An absolute URI that is used to identify this citation when it is
  /// referenced in a specification, model, design or an instance; also called
  /// its canonical identifier. This SHOULD be globally unique and SHOULD be a
  /// literal address at which at which an authoritative instance of this summary
  /// is (or will be) published. This URL can be the target of a canonical
  /// reference. It SHALL remain the same when the summary is stored on different
  /// servers.
  final FhirUri? url;
  final Element? urlElement;

  /// [identifier] /// A formal identifier that is used to identify this citation when it is
  /// represented in other formats, or referenced in a specification, model,
  /// design or an instance.
  final List<Identifier>? identifier;

  /// [version] /// The identifier that is used to identify this version of the citation when
  /// it is referenced in a specification, model, design or instance. This is an
  /// arbitrary value managed by the citation author and is not expected to be
  /// globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a
  /// managed version is not available. There is also no expectation that
  /// versions can be placed in a lexicographical sequence.
  final FhirString? version;
  final Element? versionElement;

  /// [name] /// A natural language name identifying the citation. This name should be
  /// usable as an identifier for the module by machine processing applications
  /// such as code generation.
  final FhirString? name;
  final Element? nameElement;

  /// [title] /// A short, descriptive, user-friendly title for the citation.
  final FhirString? title;
  final Element? titleElement;

  /// [status] /// The status of this summary. Enables tracking the life-cycle of the content.
  final FhirCode status;
  final Element? statusElement;

  /// [experimental] /// A Boolean value to indicate that this citation is authored for testing
  /// purposes (or education/evaluation/marketing) and is not intended to be used
  /// for genuine usage.
  final FhirBoolean? experimental;
  final Element? experimentalElement;

  /// [date] /// The date (and optionally time) when the citation was published. The date
  /// must change when the business version changes and it must change if the
  /// status code changes. In addition, it should change when the substantive
  /// content of the citation changes.
  final FhirDateTime? date;
  final Element? dateElement;

  /// [publisher] /// The name of the organization or individual that published the citation.
  final FhirString? publisher;
  final Element? publisherElement;

  /// [contact] /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [description] /// A free text natural language description of the citation from a consumer's
  /// perspective.
  final FhirMarkdown? description;
  final Element? descriptionElement;

  /// [useContext] /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories (gender,
  /// age, ...) or may be references to specific programs (insurance plans,
  /// studies, ...) and may be used to assist with indexing and searching for
  /// appropriate citation instances.
  final List<UsageContext>? useContext;

  /// [jurisdiction] /// A legal or geographic region in which the citation is intended to be used.
  final List<CodeableConcept>? jurisdiction;

  /// [purpose] /// Explanation of why this citation is needed and why it has been designed as
  /// it has.
  final FhirMarkdown? purpose;
  final Element? purposeElement;

  /// [copyright] /// Use and/or publishing restrictions for the Citation, not for the cited
  /// artifact.
  final FhirMarkdown? copyright;
  final Element? copyrightElement;

  /// [approvalDate] /// The date on which the resource content was approved by the publisher.
  /// Approval happens once when the content is officially approved for usage.
  final FhirDate? approvalDate;
  final Element? approvalDateElement;

  /// [lastReviewDate] /// The date on which the resource content was last reviewed. Review happens
  /// periodically after approval but does not change the original approval date.
  final FhirDate? lastReviewDate;
  final Element? lastReviewDateElement;

  /// [effectivePeriod] /// The period during which the citation content was or is planned to be in
  /// active use.
  final Period? effectivePeriod;

  /// [author] /// Who authored the Citation.
  final List<ContactDetail>? author;

  /// [editor] /// Who edited the Citation.
  final List<ContactDetail>? editor;

  /// [reviewer] /// Who reviewed the Citation.
  final List<ContactDetail>? reviewer;

  /// [endorser] /// Who endorsed the Citation.
  final List<ContactDetail>? endorser;

  /// [summary] /// A human-readable display of the citation.
  final List<CitationSummary>? summary;

  /// [classification] /// The assignment to an organizing scheme.
  final List<CitationClassification>? classification;

  /// [note] /// Used for general notes and annotations not coded elsewhere.
  final List<Annotation>? note;

  /// [currentState] /// The status of the citation.
  final List<CodeableConcept>? currentState;

  /// [statusDate] /// An effective date or period for a status of the citation.
  final List<CitationStatusDate>? statusDate;

  /// [relatesTo] /// Artifact related to the Citation Resource.
  final List<CitationRelatesTo>? relatesTo;

  /// [citedArtifact] /// The article or artifact being described.
  final CitationCitedArtifact? citedArtifact;
  @override
  Citation clone() => throw UnimplementedError();
  Citation copy({
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
    List<Identifier>? identifier,
    FhirString? version,
    Element? versionElement,
    FhirString? name,
    Element? nameElement,
    FhirString? title,
    Element? titleElement,
    FhirCode? status,
    Element? statusElement,
    FhirBoolean? experimental,
    Element? experimentalElement,
    FhirDateTime? date,
    Element? dateElement,
    FhirString? publisher,
    Element? publisherElement,
    List<ContactDetail>? contact,
    FhirMarkdown? description,
    Element? descriptionElement,
    List<UsageContext>? useContext,
    List<CodeableConcept>? jurisdiction,
    FhirMarkdown? purpose,
    Element? purposeElement,
    FhirMarkdown? copyright,
    Element? copyrightElement,
    FhirDate? approvalDate,
    Element? approvalDateElement,
    FhirDate? lastReviewDate,
    Element? lastReviewDateElement,
    Period? effectivePeriod,
    List<ContactDetail>? author,
    List<ContactDetail>? editor,
    List<ContactDetail>? reviewer,
    List<ContactDetail>? endorser,
    List<CitationSummary>? summary,
    List<CitationClassification>? classification,
    List<Annotation>? note,
    List<CodeableConcept>? currentState,
    List<CitationStatusDate>? statusDate,
    List<CitationRelatesTo>? relatesTo,
    CitationCitedArtifact? citedArtifact,
  }) {
    return Citation(
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
      identifier: identifier ?? this.identifier,
      version: version ?? this.version,
      versionElement: versionElement ?? this.versionElement,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      title: title ?? this.title,
      titleElement: titleElement ?? this.titleElement,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      experimental: experimental ?? this.experimental,
      experimentalElement: experimentalElement ?? this.experimentalElement,
      date: date ?? this.date,
      dateElement: dateElement ?? this.dateElement,
      publisher: publisher ?? this.publisher,
      publisherElement: publisherElement ?? this.publisherElement,
      contact: contact ?? this.contact,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      useContext: useContext ?? this.useContext,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      purpose: purpose ?? this.purpose,
      purposeElement: purposeElement ?? this.purposeElement,
      copyright: copyright ?? this.copyright,
      copyrightElement: copyrightElement ?? this.copyrightElement,
      approvalDate: approvalDate ?? this.approvalDate,
      approvalDateElement: approvalDateElement ?? this.approvalDateElement,
      lastReviewDate: lastReviewDate ?? this.lastReviewDate,
      lastReviewDateElement:
          lastReviewDateElement ?? this.lastReviewDateElement,
      effectivePeriod: effectivePeriod ?? this.effectivePeriod,
      author: author ?? this.author,
      editor: editor ?? this.editor,
      reviewer: reviewer ?? this.reviewer,
      endorser: endorser ?? this.endorser,
      summary: summary ?? this.summary,
      classification: classification ?? this.classification,
      note: note ?? this.note,
      currentState: currentState ?? this.currentState,
      statusDate: statusDate ?? this.statusDate,
      relatesTo: relatesTo ?? this.relatesTo,
      citedArtifact: citedArtifact ?? this.citedArtifact,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CitationSummary] /// A human-readable display of the citation.
class CitationSummary extends BackboneElement {
  CitationSummary({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.style,
    required this.text,
    this.textElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [style] /// Format for display of the citation.
  final CodeableConcept? style;

  /// [text] /// The human-readable display of the citation.
  final FhirMarkdown text;
  final Element? textElement;
  @override
  CitationSummary clone() => throw UnimplementedError();
  CitationSummary copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? style,
    FhirMarkdown? text,
    Element? textElement,
  }) {
    return CitationSummary(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      style: style ?? this.style,
      text: text ?? this.text,
      textElement: textElement ?? this.textElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CitationClassification] /// The assignment to an organizing scheme.
class CitationClassification extends BackboneElement {
  CitationClassification({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.classifier,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// The kind of classifier (e.g. publication type, keyword).
  final CodeableConcept? type;

  /// [classifier] /// The specific classification value.
  final List<CodeableConcept>? classifier;
  @override
  CitationClassification clone() => throw UnimplementedError();
  CitationClassification copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<CodeableConcept>? classifier,
  }) {
    return CitationClassification(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      classifier: classifier ?? this.classifier,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CitationStatusDate] /// An effective date or period for a status of the citation.
class CitationStatusDate extends BackboneElement {
  CitationStatusDate({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.activity,
    this.actual,
    this.actualElement,
    required this.period,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [activity] /// Classification of the status.
  final CodeableConcept activity;

  /// [actual] /// Either occurred or expected.
  final FhirBoolean? actual;
  final Element? actualElement;

  /// [period] /// When the status started and/or ended.
  final Period period;
  @override
  CitationStatusDate clone() => throw UnimplementedError();
  CitationStatusDate copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? activity,
    FhirBoolean? actual,
    Element? actualElement,
    Period? period,
  }) {
    return CitationStatusDate(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      activity: activity ?? this.activity,
      actual: actual ?? this.actual,
      actualElement: actualElement ?? this.actualElement,
      period: period ?? this.period,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CitationRelatesTo] /// Artifact related to the Citation Resource.
class CitationRelatesTo extends BackboneElement {
  CitationRelatesTo({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.relationshipType,
    this.targetClassifier,
    required this.targetUri,
    this.targetUriElement,
    required this.targetIdentifier,
    required this.targetReference,
    required this.targetAttachment,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [relationshipType] /// How the Citation resource relates to the target artifact.
  final CodeableConcept relationshipType;

  /// [targetClassifier] /// The clasification of the related artifact.
  final List<CodeableConcept>? targetClassifier;

  /// [targetUri] /// The article or artifact that the Citation Resource is related to.
  final FhirUri targetUri;
  final Element? targetUriElement;

  /// [targetIdentifier] /// The article or artifact that the Citation Resource is related to.
  final Identifier targetIdentifier;

  /// [targetReference] /// The article or artifact that the Citation Resource is related to.
  final Reference targetReference;

  /// [targetAttachment] /// The article or artifact that the Citation Resource is related to.
  final Attachment targetAttachment;
  @override
  CitationRelatesTo clone() => throw UnimplementedError();
  CitationRelatesTo copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? relationshipType,
    List<CodeableConcept>? targetClassifier,
    FhirUri? targetUri,
    Element? targetUriElement,
    Identifier? targetIdentifier,
    Reference? targetReference,
    Attachment? targetAttachment,
  }) {
    return CitationRelatesTo(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      relationshipType: relationshipType ?? this.relationshipType,
      targetClassifier: targetClassifier ?? this.targetClassifier,
      targetUri: targetUri ?? this.targetUri,
      targetUriElement: targetUriElement ?? this.targetUriElement,
      targetIdentifier: targetIdentifier ?? this.targetIdentifier,
      targetReference: targetReference ?? this.targetReference,
      targetAttachment: targetAttachment ?? this.targetAttachment,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CitationCitedArtifact] /// The article or artifact being described.
class CitationCitedArtifact extends BackboneElement {
  CitationCitedArtifact({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.relatedIdentifier,
    this.dateAccessed,
    this.dateAccessedElement,
    this.version,
    this.currentState,
    this.statusDate,
    this.title,
    this.abstract_,
    this.part_,
    this.relatesTo,
    this.publicationForm,
    this.webLocation,
    this.classification,
    this.contributorship,
    this.note,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// A formal identifier that is used to identify this citation when it is
  /// represented in other formats, or referenced in a specification, model,
  /// design or an instance.
  final List<Identifier>? identifier;

  /// [relatedIdentifier] /// A formal identifier that is used to identify things closely related to this
  /// citation.
  final List<Identifier>? relatedIdentifier;

  /// [dateAccessed] /// When the cited artifact was accessed.
  final FhirDateTime? dateAccessed;
  final Element? dateAccessedElement;

  /// [version] /// The defined version of the cited artifact.
  final CitationVersion? version;

  /// [currentState] /// The status of the cited artifact.
  final List<CodeableConcept>? currentState;

  /// [statusDate] /// An effective date or period for a status of the cited artifact.
  final List<CitationStatusDate>? statusDate;

  /// [title] /// The title details of the article or artifact.
  final List<CitationTitle>? title;

  /// [abstract_] /// Summary of the article or artifact.
  final List<CitationAbstract>? abstract_;

  /// [part_] /// The component of the article or artifact.
  final CitationPart? part_;

  /// [relatesTo] /// The artifact related to the cited artifact.
  final List<CitationRelatesTo>? relatesTo;

  /// [publicationForm] /// If multiple, used to represent alternative forms of the article that are
  /// not separate citations.
  final List<CitationPublicationForm>? publicationForm;

  /// [webLocation] /// Used for any URL for the article or artifact cited.
  final List<CitationWebLocation>? webLocation;

  /// [classification] /// The assignment to an organizing scheme.
  final List<CitationClassification>? classification;

  /// [contributorship] /// This element is used to list authors and other contributors, their contact
  /// information, specific contributions, and summary statements.
  final CitationContributorship? contributorship;

  /// [note] /// Any additional information or content for the article or artifact.
  final List<Annotation>? note;
  @override
  CitationCitedArtifact clone() => throw UnimplementedError();
  CitationCitedArtifact copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<Identifier>? relatedIdentifier,
    FhirDateTime? dateAccessed,
    Element? dateAccessedElement,
    CitationVersion? version,
    List<CodeableConcept>? currentState,
    List<CitationStatusDate>? statusDate,
    List<CitationTitle>? title,
    List<CitationAbstract>? abstract_,
    CitationPart? part_,
    List<CitationRelatesTo>? relatesTo,
    List<CitationPublicationForm>? publicationForm,
    List<CitationWebLocation>? webLocation,
    List<CitationClassification>? classification,
    CitationContributorship? contributorship,
    List<Annotation>? note,
  }) {
    return CitationCitedArtifact(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      relatedIdentifier: relatedIdentifier ?? this.relatedIdentifier,
      dateAccessed: dateAccessed ?? this.dateAccessed,
      dateAccessedElement: dateAccessedElement ?? this.dateAccessedElement,
      version: version ?? this.version,
      currentState: currentState ?? this.currentState,
      statusDate: statusDate ?? this.statusDate,
      title: title ?? this.title,
      abstract_: abstract_ ?? this.abstract_,
      part_: part_ ?? this.part_,
      relatesTo: relatesTo ?? this.relatesTo,
      publicationForm: publicationForm ?? this.publicationForm,
      webLocation: webLocation ?? this.webLocation,
      classification: classification ?? this.classification,
      contributorship: contributorship ?? this.contributorship,
      note: note ?? this.note,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CitationVersion] /// The defined version of the cited artifact.
class CitationVersion extends BackboneElement {
  CitationVersion({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.value,
    this.valueElement,
    this.baseCitation,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [value] /// The version number or other version identifier.
  final FhirString value;
  final Element? valueElement;

  /// [baseCitation] /// Citation for the main version of the cited artifact.
  final Reference? baseCitation;
  @override
  CitationVersion clone() => throw UnimplementedError();
  CitationVersion copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? value,
    Element? valueElement,
    Reference? baseCitation,
  }) {
    return CitationVersion(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      value: value ?? this.value,
      valueElement: valueElement ?? this.valueElement,
      baseCitation: baseCitation ?? this.baseCitation,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CitationStatusDate1] /// An effective date or period for a status of the cited artifact.
class CitationStatusDate1 extends BackboneElement {
  CitationStatusDate1({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.activity,
    this.actual,
    this.actualElement,
    required this.period,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [activity] /// Classification of the status.
  final CodeableConcept activity;

  /// [actual] /// Either occurred or expected.
  final FhirBoolean? actual;
  final Element? actualElement;

  /// [period] /// When the status started and/or ended.
  final Period period;
  @override
  CitationStatusDate1 clone() => throw UnimplementedError();
  CitationStatusDate1 copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? activity,
    FhirBoolean? actual,
    Element? actualElement,
    Period? period,
  }) {
    return CitationStatusDate1(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      activity: activity ?? this.activity,
      actual: actual ?? this.actual,
      actualElement: actualElement ?? this.actualElement,
      period: period ?? this.period,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CitationTitle] /// The title details of the article or artifact.
class CitationTitle extends BackboneElement {
  CitationTitle({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.language,
    required this.text,
    this.textElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Used to express the reason or specific aspect for the title.
  final List<CodeableConcept>? type;

  /// [language] /// Used to express the specific language.
  final CodeableConcept? language;

  /// [text] /// The title of the article or artifact.
  final FhirMarkdown text;
  final Element? textElement;
  @override
  CitationTitle clone() => throw UnimplementedError();
  CitationTitle copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? type,
    CodeableConcept? language,
    FhirMarkdown? text,
    Element? textElement,
  }) {
    return CitationTitle(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      language: language ?? this.language,
      text: text ?? this.text,
      textElement: textElement ?? this.textElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CitationAbstract] /// Summary of the article or artifact.
class CitationAbstract extends BackboneElement {
  CitationAbstract({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.language,
    required this.text,
    this.textElement,
    this.copyright,
    this.copyrightElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Used to express the reason or specific aspect for the abstract.
  final CodeableConcept? type;

  /// [language] /// Used to express the specific language.
  final CodeableConcept? language;

  /// [text] /// Abstract content.
  final FhirMarkdown text;
  final Element? textElement;

  /// [copyright] /// Copyright notice for the abstract.
  final FhirMarkdown? copyright;
  final Element? copyrightElement;
  @override
  CitationAbstract clone() => throw UnimplementedError();
  CitationAbstract copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    CodeableConcept? language,
    FhirMarkdown? text,
    Element? textElement,
    FhirMarkdown? copyright,
    Element? copyrightElement,
  }) {
    return CitationAbstract(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      language: language ?? this.language,
      text: text ?? this.text,
      textElement: textElement ?? this.textElement,
      copyright: copyright ?? this.copyright,
      copyrightElement: copyrightElement ?? this.copyrightElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CitationPart] /// The component of the article or artifact.
class CitationPart extends BackboneElement {
  CitationPart({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.value,
    this.valueElement,
    this.baseCitation,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// The kind of component.
  final CodeableConcept? type;

  /// [value] /// The specification of the component.
  final FhirString? value;
  final Element? valueElement;

  /// [baseCitation] /// The citation for the full article or artifact.
  final Reference? baseCitation;
  @override
  CitationPart clone() => throw UnimplementedError();
  CitationPart copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirString? value,
    Element? valueElement,
    Reference? baseCitation,
  }) {
    return CitationPart(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      value: value ?? this.value,
      valueElement: valueElement ?? this.valueElement,
      baseCitation: baseCitation ?? this.baseCitation,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CitationRelatesTo1] /// The artifact related to the cited artifact.
class CitationRelatesTo1 extends BackboneElement {
  CitationRelatesTo1({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.relationshipType,
    this.targetClassifier,
    required this.targetUri,
    this.targetUriElement,
    required this.targetIdentifier,
    required this.targetReference,
    required this.targetAttachment,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [relationshipType] /// How the cited artifact relates to the target artifact.
  final CodeableConcept relationshipType;

  /// [targetClassifier] /// The clasification of the related artifact.
  final List<CodeableConcept>? targetClassifier;

  /// [targetUri] /// The article or artifact that the cited artifact is related to.
  final FhirUri targetUri;
  final Element? targetUriElement;

  /// [targetIdentifier] /// The article or artifact that the cited artifact is related to.
  final Identifier targetIdentifier;

  /// [targetReference] /// The article or artifact that the cited artifact is related to.
  final Reference targetReference;

  /// [targetAttachment] /// The article or artifact that the cited artifact is related to.
  final Attachment targetAttachment;
  @override
  CitationRelatesTo1 clone() => throw UnimplementedError();
  CitationRelatesTo1 copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? relationshipType,
    List<CodeableConcept>? targetClassifier,
    FhirUri? targetUri,
    Element? targetUriElement,
    Identifier? targetIdentifier,
    Reference? targetReference,
    Attachment? targetAttachment,
  }) {
    return CitationRelatesTo1(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      relationshipType: relationshipType ?? this.relationshipType,
      targetClassifier: targetClassifier ?? this.targetClassifier,
      targetUri: targetUri ?? this.targetUri,
      targetUriElement: targetUriElement ?? this.targetUriElement,
      targetIdentifier: targetIdentifier ?? this.targetIdentifier,
      targetReference: targetReference ?? this.targetReference,
      targetAttachment: targetAttachment ?? this.targetAttachment,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CitationPublicationForm] /// If multiple, used to represent alternative forms of the article that are
/// not separate citations.
class CitationPublicationForm extends BackboneElement {
  CitationPublicationForm({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.publishedIn,
    this.periodicRelease,
    this.articleDate,
    this.articleDateElement,
    this.lastRevisionDate,
    this.lastRevisionDateElement,
    this.language,
    this.accessionNumber,
    this.accessionNumberElement,
    this.pageString,
    this.pageStringElement,
    this.firstPage,
    this.firstPageElement,
    this.lastPage,
    this.lastPageElement,
    this.pageCount,
    this.pageCountElement,
    this.copyright,
    this.copyrightElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [publishedIn] /// The collection the cited article or artifact is published in.
  final CitationPublishedIn? publishedIn;

  /// [periodicRelease] /// The specific issue in which the cited article resides.
  final CitationPeriodicRelease? periodicRelease;

  /// [articleDate] /// The date the article was added to the database, or the date the article was
  /// released (which may differ from the journal issue publication date).
  final FhirDateTime? articleDate;
  final Element? articleDateElement;

  /// [lastRevisionDate] /// The date the article was last revised or updated in the database.
  final FhirDateTime? lastRevisionDate;
  final Element? lastRevisionDateElement;

  /// [language] /// Language in which this form of the article is published.
  final List<CodeableConcept>? language;

  /// [accessionNumber] /// Entry number or identifier for inclusion in a database.
  final FhirString? accessionNumber;
  final Element? accessionNumberElement;

  /// [pageString] /// Used for full display of pagination.
  final FhirString? pageString;
  final Element? pageStringElement;

  /// [firstPage] /// Used for isolated representation of first page.
  final FhirString? firstPage;
  final Element? firstPageElement;

  /// [lastPage] /// Used for isolated representation of last page.
  final FhirString? lastPage;
  final Element? lastPageElement;

  /// [pageCount] /// Actual or approximate number of pages or screens.
  final FhirString? pageCount;
  final Element? pageCountElement;

  /// [copyright] /// Copyright notice for the full article or artifact.
  final FhirMarkdown? copyright;
  final Element? copyrightElement;
  @override
  CitationPublicationForm clone() => throw UnimplementedError();
  CitationPublicationForm copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CitationPublishedIn? publishedIn,
    CitationPeriodicRelease? periodicRelease,
    FhirDateTime? articleDate,
    Element? articleDateElement,
    FhirDateTime? lastRevisionDate,
    Element? lastRevisionDateElement,
    List<CodeableConcept>? language,
    FhirString? accessionNumber,
    Element? accessionNumberElement,
    FhirString? pageString,
    Element? pageStringElement,
    FhirString? firstPage,
    Element? firstPageElement,
    FhirString? lastPage,
    Element? lastPageElement,
    FhirString? pageCount,
    Element? pageCountElement,
    FhirMarkdown? copyright,
    Element? copyrightElement,
  }) {
    return CitationPublicationForm(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      publishedIn: publishedIn ?? this.publishedIn,
      periodicRelease: periodicRelease ?? this.periodicRelease,
      articleDate: articleDate ?? this.articleDate,
      articleDateElement: articleDateElement ?? this.articleDateElement,
      lastRevisionDate: lastRevisionDate ?? this.lastRevisionDate,
      lastRevisionDateElement:
          lastRevisionDateElement ?? this.lastRevisionDateElement,
      language: language ?? this.language,
      accessionNumber: accessionNumber ?? this.accessionNumber,
      accessionNumberElement:
          accessionNumberElement ?? this.accessionNumberElement,
      pageString: pageString ?? this.pageString,
      pageStringElement: pageStringElement ?? this.pageStringElement,
      firstPage: firstPage ?? this.firstPage,
      firstPageElement: firstPageElement ?? this.firstPageElement,
      lastPage: lastPage ?? this.lastPage,
      lastPageElement: lastPageElement ?? this.lastPageElement,
      pageCount: pageCount ?? this.pageCount,
      pageCountElement: pageCountElement ?? this.pageCountElement,
      copyright: copyright ?? this.copyright,
      copyrightElement: copyrightElement ?? this.copyrightElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CitationPublishedIn] /// The collection the cited article or artifact is published in.
class CitationPublishedIn extends BackboneElement {
  CitationPublishedIn({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.identifier,
    this.title,
    this.titleElement,
    this.publisher,
    this.publisherLocation,
    this.publisherLocationElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Kind of container (e.g. Periodical, database, or book).
  final CodeableConcept? type;

  /// [identifier] /// Journal identifiers include ISSN, ISO Abbreviation and NLMuniqueID; Book
  /// identifiers include ISBN.
  final List<Identifier>? identifier;

  /// [title] /// Name of the database or title of the book or journal.
  final FhirString? title;
  final Element? titleElement;

  /// [publisher] /// Name of the publisher.
  final Reference? publisher;

  /// [publisherLocation] /// Geographic location of the publisher.
  final FhirString? publisherLocation;
  final Element? publisherLocationElement;
  @override
  CitationPublishedIn clone() => throw UnimplementedError();
  CitationPublishedIn copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<Identifier>? identifier,
    FhirString? title,
    Element? titleElement,
    Reference? publisher,
    FhirString? publisherLocation,
    Element? publisherLocationElement,
  }) {
    return CitationPublishedIn(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      identifier: identifier ?? this.identifier,
      title: title ?? this.title,
      titleElement: titleElement ?? this.titleElement,
      publisher: publisher ?? this.publisher,
      publisherLocation: publisherLocation ?? this.publisherLocation,
      publisherLocationElement:
          publisherLocationElement ?? this.publisherLocationElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CitationPeriodicRelease] /// The specific issue in which the cited article resides.
class CitationPeriodicRelease extends BackboneElement {
  CitationPeriodicRelease({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.citedMedium,
    this.volume,
    this.volumeElement,
    this.issue,
    this.issueElement,
    this.dateOfPublication,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [citedMedium] /// Describes the form of the medium cited. Common codes are "Internet" or
  /// "Print".
  final CodeableConcept? citedMedium;

  /// [volume] /// Volume number of journal in which the article is published.
  final FhirString? volume;
  final Element? volumeElement;

  /// [issue] /// Issue, part or supplement of journal in which the article is published.
  final FhirString? issue;
  final Element? issueElement;

  /// [dateOfPublication] /// Defining the date on which the issue of the journal was published.
  final CitationDateOfPublication? dateOfPublication;
  @override
  CitationPeriodicRelease clone() => throw UnimplementedError();
  CitationPeriodicRelease copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? citedMedium,
    FhirString? volume,
    Element? volumeElement,
    FhirString? issue,
    Element? issueElement,
    CitationDateOfPublication? dateOfPublication,
  }) {
    return CitationPeriodicRelease(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      citedMedium: citedMedium ?? this.citedMedium,
      volume: volume ?? this.volume,
      volumeElement: volumeElement ?? this.volumeElement,
      issue: issue ?? this.issue,
      issueElement: issueElement ?? this.issueElement,
      dateOfPublication: dateOfPublication ?? this.dateOfPublication,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CitationDateOfPublication] /// Defining the date on which the issue of the journal was published.
class CitationDateOfPublication extends BackboneElement {
  CitationDateOfPublication({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.date,
    this.dateElement,
    this.year,
    this.yearElement,
    this.month,
    this.monthElement,
    this.day,
    this.dayElement,
    this.season,
    this.seasonElement,
    this.text,
    this.textElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [date] /// Date on which the issue of the journal was published.
  final FhirDate? date;
  final Element? dateElement;

  /// [year] /// Year on which the issue of the journal was published.
  final FhirString? year;
  final Element? yearElement;

  /// [month] /// Month on which the issue of the journal was published.
  final FhirString? month;
  final Element? monthElement;

  /// [day] /// Day on which the issue of the journal was published.
  final FhirString? day;
  final Element? dayElement;

  /// [season] /// Spring, Summer, Fall/Autumn, Winter.
  final FhirString? season;
  final Element? seasonElement;

  /// [text] /// Text representation of the date of which the issue of the journal was
  /// published.
  final FhirString? text;
  final Element? textElement;
  @override
  CitationDateOfPublication clone() => throw UnimplementedError();
  CitationDateOfPublication copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirDate? date,
    Element? dateElement,
    FhirString? year,
    Element? yearElement,
    FhirString? month,
    Element? monthElement,
    FhirString? day,
    Element? dayElement,
    FhirString? season,
    Element? seasonElement,
    FhirString? text,
    Element? textElement,
  }) {
    return CitationDateOfPublication(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      date: date ?? this.date,
      dateElement: dateElement ?? this.dateElement,
      year: year ?? this.year,
      yearElement: yearElement ?? this.yearElement,
      month: month ?? this.month,
      monthElement: monthElement ?? this.monthElement,
      day: day ?? this.day,
      dayElement: dayElement ?? this.dayElement,
      season: season ?? this.season,
      seasonElement: seasonElement ?? this.seasonElement,
      text: text ?? this.text,
      textElement: textElement ?? this.textElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CitationWebLocation] /// Used for any URL for the article or artifact cited.
class CitationWebLocation extends BackboneElement {
  CitationWebLocation({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.url,
    this.urlElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Code the reason for different URLs, e.g. abstract and full-text.
  final CodeableConcept? type;

  /// [url] /// The specific URL.
  final FhirUri? url;
  final Element? urlElement;
  @override
  CitationWebLocation clone() => throw UnimplementedError();
  CitationWebLocation copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirUri? url,
    Element? urlElement,
  }) {
    return CitationWebLocation(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      url: url ?? this.url,
      urlElement: urlElement ?? this.urlElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CitationClassification1] /// The assignment to an organizing scheme.
class CitationClassification1 extends BackboneElement {
  CitationClassification1({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.classifier,
    this.whoClassified,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// The kind of classifier (e.g. publication type, keyword).
  final CodeableConcept? type;

  /// [classifier] /// The specific classification value.
  final List<CodeableConcept>? classifier;

  /// [whoClassified] /// Provenance and copyright of classification.
  final CitationWhoClassified? whoClassified;
  @override
  CitationClassification1 clone() => throw UnimplementedError();
  CitationClassification1 copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<CodeableConcept>? classifier,
    CitationWhoClassified? whoClassified,
  }) {
    return CitationClassification1(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      classifier: classifier ?? this.classifier,
      whoClassified: whoClassified ?? this.whoClassified,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CitationWhoClassified] /// Provenance and copyright of classification.
class CitationWhoClassified extends BackboneElement {
  CitationWhoClassified({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.person,
    this.organization,
    this.publisher,
    this.classifierCopyright,
    this.classifierCopyrightElement,
    this.freeToShare,
    this.freeToShareElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [person] /// Person who created the classification.
  final Reference? person;

  /// [organization] /// Organization who created the classification.
  final Reference? organization;

  /// [publisher] /// The publisher of the classification, not the publisher of the article or
  /// artifact being cited.
  final Reference? publisher;

  /// [classifierCopyright] /// Rights management statement for the classification.
  final FhirString? classifierCopyright;
  final Element? classifierCopyrightElement;

  /// [freeToShare] /// Acceptable to re-use the classification.
  final FhirBoolean? freeToShare;
  final Element? freeToShareElement;
  @override
  CitationWhoClassified clone() => throw UnimplementedError();
  CitationWhoClassified copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? person,
    Reference? organization,
    Reference? publisher,
    FhirString? classifierCopyright,
    Element? classifierCopyrightElement,
    FhirBoolean? freeToShare,
    Element? freeToShareElement,
  }) {
    return CitationWhoClassified(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      person: person ?? this.person,
      organization: organization ?? this.organization,
      publisher: publisher ?? this.publisher,
      classifierCopyright: classifierCopyright ?? this.classifierCopyright,
      classifierCopyrightElement:
          classifierCopyrightElement ?? this.classifierCopyrightElement,
      freeToShare: freeToShare ?? this.freeToShare,
      freeToShareElement: freeToShareElement ?? this.freeToShareElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CitationContributorship] /// This element is used to list authors and other contributors, their contact
/// information, specific contributions, and summary statements.
class CitationContributorship extends BackboneElement {
  CitationContributorship({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.complete,
    this.completeElement,
    this.entry,
    this.summary,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [complete] /// Indicates if the list includes all authors and/or contributors.
  final FhirBoolean? complete;
  final Element? completeElement;

  /// [entry] /// An individual entity named in the author list or contributor list.
  final List<CitationEntry>? entry;

  /// [summary] /// Used to record a display of the author/contributor list without separate
  /// coding for each list member.
  final List<CitationSummary>? summary;
  @override
  CitationContributorship clone() => throw UnimplementedError();
  CitationContributorship copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? complete,
    Element? completeElement,
    List<CitationEntry>? entry,
    List<CitationSummary>? summary,
  }) {
    return CitationContributorship(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      complete: complete ?? this.complete,
      completeElement: completeElement ?? this.completeElement,
      entry: entry ?? this.entry,
      summary: summary ?? this.summary,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CitationEntry] /// An individual entity named in the author list or contributor list.
class CitationEntry extends BackboneElement {
  CitationEntry({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
    this.initials,
    this.initialsElement,
    this.collectiveName,
    this.collectiveNameElement,
    this.identifier,
    this.affiliationInfo,
    this.address,
    this.telecom,
    this.contributionType,
    this.role,
    this.contributionInstance,
    this.correspondingContact,
    this.correspondingContactElement,
    this.listOrder,
    this.listOrderElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [name] /// A name associated with the individual.
  final HumanName? name;

  /// [initials] /// Initials for forename.
  final FhirString? initials;
  final Element? initialsElement;

  /// [collectiveName] /// Used for collective or corporate name as an author.
  final FhirString? collectiveName;
  final Element? collectiveNameElement;

  /// [identifier] /// Unique person identifier.
  final List<Identifier>? identifier;

  /// [affiliationInfo] /// Organization affiliated with the entity.
  final List<CitationAffiliationInfo>? affiliationInfo;

  /// [address] /// Physical mailing address for the author or contributor.
  final List<Address>? address;

  /// [telecom] /// Email or telephone contact methods for the author or contributor.
  final List<ContactPoint>? telecom;

  /// [contributionType] /// This element identifies the specific nature of an individual’s contribution
  /// with respect to the cited work.
  final List<CodeableConcept>? contributionType;

  /// [role] /// The role of the contributor (e.g. author, editor, reviewer).
  final CodeableConcept? role;

  /// [contributionInstance] /// Contributions with accounting for time or number.
  final List<CitationContributionInstance>? contributionInstance;

  /// [correspondingContact] /// Indication of which contributor is the corresponding contributor for the
  /// role.
  final FhirBoolean? correspondingContact;
  final Element? correspondingContactElement;

  /// [listOrder] /// Used to code order of authors.
  final FhirPositiveInt? listOrder;
  final Element? listOrderElement;
  @override
  CitationEntry clone() => throw UnimplementedError();
  CitationEntry copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    HumanName? name,
    FhirString? initials,
    Element? initialsElement,
    FhirString? collectiveName,
    Element? collectiveNameElement,
    List<Identifier>? identifier,
    List<CitationAffiliationInfo>? affiliationInfo,
    List<Address>? address,
    List<ContactPoint>? telecom,
    List<CodeableConcept>? contributionType,
    CodeableConcept? role,
    List<CitationContributionInstance>? contributionInstance,
    FhirBoolean? correspondingContact,
    Element? correspondingContactElement,
    FhirPositiveInt? listOrder,
    Element? listOrderElement,
  }) {
    return CitationEntry(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      initials: initials ?? this.initials,
      initialsElement: initialsElement ?? this.initialsElement,
      collectiveName: collectiveName ?? this.collectiveName,
      collectiveNameElement:
          collectiveNameElement ?? this.collectiveNameElement,
      identifier: identifier ?? this.identifier,
      affiliationInfo: affiliationInfo ?? this.affiliationInfo,
      address: address ?? this.address,
      telecom: telecom ?? this.telecom,
      contributionType: contributionType ?? this.contributionType,
      role: role ?? this.role,
      contributionInstance: contributionInstance ?? this.contributionInstance,
      correspondingContact: correspondingContact ?? this.correspondingContact,
      correspondingContactElement:
          correspondingContactElement ?? this.correspondingContactElement,
      listOrder: listOrder ?? this.listOrder,
      listOrderElement: listOrderElement ?? this.listOrderElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CitationAffiliationInfo] /// Organization affiliated with the entity.
class CitationAffiliationInfo extends BackboneElement {
  CitationAffiliationInfo({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.affiliation,
    this.affiliationElement,
    this.role,
    this.roleElement,
    this.identifier,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [affiliation] /// Display for the organization.
  final FhirString? affiliation;
  final Element? affiliationElement;

  /// [role] /// Role within the organization, such as professional title.
  final FhirString? role;
  final Element? roleElement;

  /// [identifier] /// Identifier for the organization.
  final List<Identifier>? identifier;
  @override
  CitationAffiliationInfo clone() => throw UnimplementedError();
  CitationAffiliationInfo copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? affiliation,
    Element? affiliationElement,
    FhirString? role,
    Element? roleElement,
    List<Identifier>? identifier,
  }) {
    return CitationAffiliationInfo(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      affiliation: affiliation ?? this.affiliation,
      affiliationElement: affiliationElement ?? this.affiliationElement,
      role: role ?? this.role,
      roleElement: roleElement ?? this.roleElement,
      identifier: identifier ?? this.identifier,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CitationContributionInstance] /// Contributions with accounting for time or number.
class CitationContributionInstance extends BackboneElement {
  CitationContributionInstance({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.time,
    this.timeElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// The specific contribution.
  final CodeableConcept type;

  /// [time] /// The time that the contribution was made.
  final FhirDateTime? time;
  final Element? timeElement;
  @override
  CitationContributionInstance clone() => throw UnimplementedError();
  CitationContributionInstance copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirDateTime? time,
    Element? timeElement,
  }) {
    return CitationContributionInstance(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      time: time ?? this.time,
      timeElement: timeElement ?? this.timeElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CitationSummary1] /// Used to record a display of the author/contributor list without separate
/// coding for each list member.
class CitationSummary1 extends BackboneElement {
  CitationSummary1({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.style,
    this.source,
    required this.value,
    this.valueElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Used most commonly to express an author list or a contributorship
  /// statement.
  final CodeableConcept? type;

  /// [style] /// The format for the display string.
  final CodeableConcept? style;

  /// [source] /// Used to code the producer or rule for creating the display string.
  final CodeableConcept? source;

  /// [value] /// The display string for the author list, contributor list, or
  /// contributorship statement.
  final FhirMarkdown value;
  final Element? valueElement;
  @override
  CitationSummary1 clone() => throw UnimplementedError();
  CitationSummary1 copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    CodeableConcept? style,
    CodeableConcept? source,
    FhirMarkdown? value,
    Element? valueElement,
  }) {
    return CitationSummary1(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      style: style ?? this.style,
      source: source ?? this.source,
      value: value ?? this.value,
      valueElement: valueElement ?? this.valueElement,
    );
  }
}
