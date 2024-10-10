import 'dart:convert';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(resourceType: R4ResourceType.Citation);

  @override
  String get fhirType => 'Citation';

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
  final PublicationStatus status;
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
    if (url?.value != null) {
      json['url'] = url!.toJson();
    }
    if (urlElement != null) {
      json['_url'] = urlElement!.toJson();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map<dynamic>((Identifier v) => v.toJson()).toList();
    }
    if (version?.value != null) {
      json['version'] = version!.toJson();
    }
    if (versionElement != null) {
      json['_version'] = versionElement!.toJson();
    }
    if (name?.value != null) {
      json['name'] = name!.toJson();
    }
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    if (title?.value != null) {
      json['title'] = title!.toJson();
    }
    if (titleElement != null) {
      json['_title'] = titleElement!.toJson();
    }
    json['status'] = status.toJson();
    if (experimental?.value != null) {
      json['experimental'] = experimental!.toJson();
    }
    if (experimentalElement != null) {
      json['_experimental'] = experimentalElement!.toJson();
    }
    if (date?.value != null) {
      json['date'] = date!.toJson();
    }
    if (dateElement != null) {
      json['_date'] = dateElement!.toJson();
    }
    if (publisher?.value != null) {
      json['publisher'] = publisher!.toJson();
    }
    if (publisherElement != null) {
      json['_publisher'] = publisherElement!.toJson();
    }
    if (contact != null && contact!.isNotEmpty) {
      json['contact'] =
          contact!.map<dynamic>((ContactDetail v) => v.toJson()).toList();
    }
    if (description?.value != null) {
      json['description'] = description!.toJson();
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (useContext != null && useContext!.isNotEmpty) {
      json['useContext'] =
          useContext!.map<dynamic>((UsageContext v) => v.toJson()).toList();
    }
    if (jurisdiction != null && jurisdiction!.isNotEmpty) {
      json['jurisdiction'] = jurisdiction!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (purpose?.value != null) {
      json['purpose'] = purpose!.toJson();
    }
    if (purposeElement != null) {
      json['_purpose'] = purposeElement!.toJson();
    }
    if (copyright?.value != null) {
      json['copyright'] = copyright!.toJson();
    }
    if (copyrightElement != null) {
      json['_copyright'] = copyrightElement!.toJson();
    }
    if (approvalDate?.value != null) {
      json['approvalDate'] = approvalDate!.toJson();
    }
    if (approvalDateElement != null) {
      json['_approvalDate'] = approvalDateElement!.toJson();
    }
    if (lastReviewDate?.value != null) {
      json['lastReviewDate'] = lastReviewDate!.toJson();
    }
    if (lastReviewDateElement != null) {
      json['_lastReviewDate'] = lastReviewDateElement!.toJson();
    }
    if (effectivePeriod != null) {
      json['effectivePeriod'] = effectivePeriod!.toJson();
    }
    if (author != null && author!.isNotEmpty) {
      json['author'] =
          author!.map<dynamic>((ContactDetail v) => v.toJson()).toList();
    }
    if (editor != null && editor!.isNotEmpty) {
      json['editor'] =
          editor!.map<dynamic>((ContactDetail v) => v.toJson()).toList();
    }
    if (reviewer != null && reviewer!.isNotEmpty) {
      json['reviewer'] =
          reviewer!.map<dynamic>((ContactDetail v) => v.toJson()).toList();
    }
    if (endorser != null && endorser!.isNotEmpty) {
      json['endorser'] =
          endorser!.map<dynamic>((ContactDetail v) => v.toJson()).toList();
    }
    if (summary != null && summary!.isNotEmpty) {
      json['summary'] =
          summary!.map<dynamic>((CitationSummary v) => v.toJson()).toList();
    }
    if (classification != null && classification!.isNotEmpty) {
      json['classification'] = classification!
          .map<dynamic>((CitationClassification v) => v.toJson())
          .toList();
    }
    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map<dynamic>((Annotation v) => v.toJson()).toList();
    }
    if (currentState != null && currentState!.isNotEmpty) {
      json['currentState'] = currentState!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (statusDate != null && statusDate!.isNotEmpty) {
      json['statusDate'] = statusDate!
          .map<dynamic>((CitationStatusDate v) => v.toJson())
          .toList();
    }
    if (relatesTo != null && relatesTo!.isNotEmpty) {
      json['relatesTo'] =
          relatesTo!.map<dynamic>((CitationRelatesTo v) => v.toJson()).toList();
    }
    if (citedArtifact != null) {
      json['citedArtifact'] = citedArtifact!.toJson();
    }
    return json;
  }

  factory Citation.fromJson(Map<String, dynamic> json) {
    return Citation(
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
      url: json['url'] != null ? FhirUri.fromJson(json['url']) : null,
      urlElement: json['_url'] != null
          ? Element.fromJson(json['_url'] as Map<String, dynamic>)
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                  (dynamic v) => Identifier.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      version:
          json['version'] != null ? FhirString.fromJson(json['version']) : null,
      versionElement: json['_version'] != null
          ? Element.fromJson(json['_version'] as Map<String, dynamic>)
          : null,
      name: json['name'] != null ? FhirString.fromJson(json['name']) : null,
      nameElement: json['_name'] != null
          ? Element.fromJson(json['_name'] as Map<String, dynamic>)
          : null,
      title: json['title'] != null ? FhirString.fromJson(json['title']) : null,
      titleElement: json['_title'] != null
          ? Element.fromJson(json['_title'] as Map<String, dynamic>)
          : null,
      status: PublicationStatus.fromJson(json['status']),
      statusElement: json['_status'] != null
          ? Element.fromJson(json['_status'] as Map<String, dynamic>)
          : null,
      experimental: json['experimental'] != null
          ? FhirBoolean.fromJson(json['experimental'])
          : null,
      experimentalElement: json['_experimental'] != null
          ? Element.fromJson(json['_experimental'] as Map<String, dynamic>)
          : null,
      date: json['date'] != null ? FhirDateTime.fromJson(json['date']) : null,
      dateElement: json['_date'] != null
          ? Element.fromJson(json['_date'] as Map<String, dynamic>)
          : null,
      publisher: json['publisher'] != null
          ? FhirString.fromJson(json['publisher'])
          : null,
      publisherElement: json['_publisher'] != null
          ? Element.fromJson(json['_publisher'] as Map<String, dynamic>)
          : null,
      contact: json['contact'] != null
          ? (json['contact'] as List<dynamic>)
              .map<ContactDetail>((dynamic v) =>
                  ContactDetail.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      description: json['description'] != null
          ? FhirMarkdown.fromJson(json['description'])
          : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(json['_description'] as Map<String, dynamic>)
          : null,
      useContext: json['useContext'] != null
          ? (json['useContext'] as List<dynamic>)
              .map<UsageContext>((dynamic v) =>
                  UsageContext.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      jurisdiction: json['jurisdiction'] != null
          ? (json['jurisdiction'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      purpose: json['purpose'] != null
          ? FhirMarkdown.fromJson(json['purpose'])
          : null,
      purposeElement: json['_purpose'] != null
          ? Element.fromJson(json['_purpose'] as Map<String, dynamic>)
          : null,
      copyright: json['copyright'] != null
          ? FhirMarkdown.fromJson(json['copyright'])
          : null,
      copyrightElement: json['_copyright'] != null
          ? Element.fromJson(json['_copyright'] as Map<String, dynamic>)
          : null,
      approvalDate: json['approvalDate'] != null
          ? FhirDate.fromJson(json['approvalDate'])
          : null,
      approvalDateElement: json['_approvalDate'] != null
          ? Element.fromJson(json['_approvalDate'] as Map<String, dynamic>)
          : null,
      lastReviewDate: json['lastReviewDate'] != null
          ? FhirDate.fromJson(json['lastReviewDate'])
          : null,
      lastReviewDateElement: json['_lastReviewDate'] != null
          ? Element.fromJson(json['_lastReviewDate'] as Map<String, dynamic>)
          : null,
      effectivePeriod: json['effectivePeriod'] != null
          ? Period.fromJson(json['effectivePeriod'] as Map<String, dynamic>)
          : null,
      author: json['author'] != null
          ? (json['author'] as List<dynamic>)
              .map<ContactDetail>((dynamic v) =>
                  ContactDetail.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      editor: json['editor'] != null
          ? (json['editor'] as List<dynamic>)
              .map<ContactDetail>((dynamic v) =>
                  ContactDetail.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      reviewer: json['reviewer'] != null
          ? (json['reviewer'] as List<dynamic>)
              .map<ContactDetail>((dynamic v) =>
                  ContactDetail.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      endorser: json['endorser'] != null
          ? (json['endorser'] as List<dynamic>)
              .map<ContactDetail>((dynamic v) =>
                  ContactDetail.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      summary: json['summary'] != null
          ? (json['summary'] as List<dynamic>)
              .map<CitationSummary>((dynamic v) =>
                  CitationSummary.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      classification: json['classification'] != null
          ? (json['classification'] as List<dynamic>)
              .map<CitationClassification>((dynamic v) =>
                  CitationClassification.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                  (dynamic v) => Annotation.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      currentState: json['currentState'] != null
          ? (json['currentState'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      statusDate: json['statusDate'] != null
          ? (json['statusDate'] as List<dynamic>)
              .map<CitationStatusDate>((dynamic v) =>
                  CitationStatusDate.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      relatesTo: json['relatesTo'] != null
          ? (json['relatesTo'] as List<dynamic>)
              .map<CitationRelatesTo>((dynamic v) =>
                  CitationRelatesTo.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      citedArtifact: json['citedArtifact'] != null
          ? CitationCitedArtifact.fromJson(
              json['citedArtifact'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  Citation clone() => throw UnimplementedError();
  @override
  Citation copyWith({
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
    FhirUri? url,
    Element? urlElement,
    List<Identifier>? identifier,
    FhirString? version,
    Element? versionElement,
    FhirString? name,
    Element? nameElement,
    FhirString? title,
    Element? titleElement,
    PublicationStatus? status,
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory Citation.fromYaml(dynamic yaml) => yaml is String
      ? Citation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Citation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Citation cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Citation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Citation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [CitationSummary] /// A human-readable display of the citation.
class CitationSummary extends BackboneElement {
  CitationSummary({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.style,
    required this.text,
    this.textElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'CitationSummary';

  /// [style] /// Format for display of the citation.
  final CodeableConcept? style;

  /// [text] /// The human-readable display of the citation.
  final FhirMarkdown text;
  final Element? textElement;
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
    if (style != null) {
      json['style'] = style!.toJson();
    }
    json['text'] = text.toJson();
    if (textElement != null) {
      json['_text'] = textElement!.toJson();
    }
    return json;
  }

  factory CitationSummary.fromJson(Map<String, dynamic> json) {
    return CitationSummary(
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
      style: json['style'] != null
          ? CodeableConcept.fromJson(json['style'] as Map<String, dynamic>)
          : null,
      text: FhirMarkdown.fromJson(json['text']),
      textElement: json['_text'] != null
          ? Element.fromJson(json['_text'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  CitationSummary clone() => throw UnimplementedError();
  @override
  CitationSummary copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? style,
    FhirMarkdown? text,
    Element? textElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CitationSummary(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      style: style ?? this.style,
      text: text ?? this.text,
      textElement: textElement ?? this.textElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CitationSummary.fromYaml(dynamic yaml) => yaml is String
      ? CitationSummary.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CitationSummary.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CitationSummary cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CitationSummary.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CitationSummary.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [CitationClassification] /// The assignment to an organizing scheme.
class CitationClassification extends BackboneElement {
  CitationClassification({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.classifier,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'CitationClassification';

  /// [type] /// The kind of classifier (e.g. publication type, keyword).
  final CodeableConcept? type;

  /// [classifier] /// The specific classification value.
  final List<CodeableConcept>? classifier;
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
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (classifier != null && classifier!.isNotEmpty) {
      json['classifier'] =
          classifier!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    return json;
  }

  factory CitationClassification.fromJson(Map<String, dynamic> json) {
    return CitationClassification(
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
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
      classifier: json['classifier'] != null
          ? (json['classifier'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  CitationClassification clone() => throw UnimplementedError();
  @override
  CitationClassification copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<CodeableConcept>? classifier,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CitationClassification(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      classifier: classifier ?? this.classifier,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CitationClassification.fromYaml(dynamic yaml) => yaml is String
      ? CitationClassification.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CitationClassification.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CitationClassification cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CitationClassification.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CitationClassification.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'CitationStatusDate';

  /// [activity] /// Classification of the status.
  final CodeableConcept activity;

  /// [actual] /// Either occurred or expected.
  final FhirBoolean? actual;
  final Element? actualElement;

  /// [period] /// When the status started and/or ended.
  final Period period;
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
    json['activity'] = activity.toJson();
    if (actual?.value != null) {
      json['actual'] = actual!.toJson();
    }
    if (actualElement != null) {
      json['_actual'] = actualElement!.toJson();
    }
    json['period'] = period.toJson();
    return json;
  }

  factory CitationStatusDate.fromJson(Map<String, dynamic> json) {
    return CitationStatusDate(
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
      activity:
          CodeableConcept.fromJson(json['activity'] as Map<String, dynamic>),
      actual:
          json['actual'] != null ? FhirBoolean.fromJson(json['actual']) : null,
      actualElement: json['_actual'] != null
          ? Element.fromJson(json['_actual'] as Map<String, dynamic>)
          : null,
      period: Period.fromJson(json['period'] as Map<String, dynamic>),
    );
  }
  @override
  CitationStatusDate clone() => throw UnimplementedError();
  @override
  CitationStatusDate copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? activity,
    FhirBoolean? actual,
    Element? actualElement,
    Period? period,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CitationStatusDate(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      activity: activity ?? this.activity,
      actual: actual ?? this.actual,
      actualElement: actualElement ?? this.actualElement,
      period: period ?? this.period,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CitationStatusDate.fromYaml(dynamic yaml) => yaml is String
      ? CitationStatusDate.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CitationStatusDate.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CitationStatusDate cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CitationStatusDate.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CitationStatusDate.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [CitationRelatesTo] /// Artifact related to the Citation Resource.
class CitationRelatesTo extends BackboneElement {
  CitationRelatesTo({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.relationshipType,
    this.targetClassifier,
    this.targetUri,
    this.targetUriElement,
    this.targetIdentifier,
    this.targetReference,
    this.targetAttachment,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'CitationRelatesTo';

  /// [relationshipType] /// How the Citation resource relates to the target artifact.
  final CodeableConcept relationshipType;

  /// [targetClassifier] /// The clasification of the related artifact.
  final List<CodeableConcept>? targetClassifier;

  /// [targetUri] /// The article or artifact that the Citation Resource is related to.
  final FhirUri? targetUri;
  final Element? targetUriElement;

  /// [targetIdentifier] /// The article or artifact that the Citation Resource is related to.
  final Identifier? targetIdentifier;

  /// [targetReference] /// The article or artifact that the Citation Resource is related to.
  final Reference? targetReference;

  /// [targetAttachment] /// The article or artifact that the Citation Resource is related to.
  final Attachment? targetAttachment;
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
    json['relationshipType'] = relationshipType.toJson();
    if (targetClassifier != null && targetClassifier!.isNotEmpty) {
      json['targetClassifier'] = targetClassifier!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (targetUri?.value != null) {
      json['targetUri'] = targetUri!.toJson();
    }
    if (targetUriElement != null) {
      json['_targetUri'] = targetUriElement!.toJson();
    }
    if (targetIdentifier != null) {
      json['targetIdentifier'] = targetIdentifier!.toJson();
    }
    if (targetReference != null) {
      json['targetReference'] = targetReference!.toJson();
    }
    if (targetAttachment != null) {
      json['targetAttachment'] = targetAttachment!.toJson();
    }
    return json;
  }

  factory CitationRelatesTo.fromJson(Map<String, dynamic> json) {
    return CitationRelatesTo(
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
      relationshipType: CodeableConcept.fromJson(
          json['relationshipType'] as Map<String, dynamic>),
      targetClassifier: json['targetClassifier'] != null
          ? (json['targetClassifier'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      targetUri: json['targetUri'] != null
          ? FhirUri.fromJson(json['targetUri'])
          : null,
      targetUriElement: json['_targetUri'] != null
          ? Element.fromJson(json['_targetUri'] as Map<String, dynamic>)
          : null,
      targetIdentifier: json['targetIdentifier'] != null
          ? Identifier.fromJson(
              json['targetIdentifier'] as Map<String, dynamic>)
          : null,
      targetReference: json['targetReference'] != null
          ? Reference.fromJson(json['targetReference'] as Map<String, dynamic>)
          : null,
      targetAttachment: json['targetAttachment'] != null
          ? Attachment.fromJson(
              json['targetAttachment'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  CitationRelatesTo clone() => throw UnimplementedError();
  @override
  CitationRelatesTo copyWith({
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CitationRelatesTo.fromYaml(dynamic yaml) => yaml is String
      ? CitationRelatesTo.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CitationRelatesTo.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CitationRelatesTo cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CitationRelatesTo.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CitationRelatesTo.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'CitationCitedArtifact';

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
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map<dynamic>((Identifier v) => v.toJson()).toList();
    }
    if (relatedIdentifier != null && relatedIdentifier!.isNotEmpty) {
      json['relatedIdentifier'] = relatedIdentifier!
          .map<dynamic>((Identifier v) => v.toJson())
          .toList();
    }
    if (dateAccessed?.value != null) {
      json['dateAccessed'] = dateAccessed!.toJson();
    }
    if (dateAccessedElement != null) {
      json['_dateAccessed'] = dateAccessedElement!.toJson();
    }
    if (version != null) {
      json['version'] = version!.toJson();
    }
    if (currentState != null && currentState!.isNotEmpty) {
      json['currentState'] = currentState!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (statusDate != null && statusDate!.isNotEmpty) {
      json['statusDate'] = statusDate!
          .map<dynamic>((CitationStatusDate v) => v.toJson())
          .toList();
    }
    if (title != null && title!.isNotEmpty) {
      json['title'] =
          title!.map<dynamic>((CitationTitle v) => v.toJson()).toList();
    }
    if (abstract_ != null && abstract_!.isNotEmpty) {
      json['abstract'] =
          abstract_!.map<dynamic>((CitationAbstract v) => v.toJson()).toList();
    }
    if (part_ != null) {
      json['part'] = part_!.toJson();
    }
    if (relatesTo != null && relatesTo!.isNotEmpty) {
      json['relatesTo'] =
          relatesTo!.map<dynamic>((CitationRelatesTo v) => v.toJson()).toList();
    }
    if (publicationForm != null && publicationForm!.isNotEmpty) {
      json['publicationForm'] = publicationForm!
          .map<dynamic>((CitationPublicationForm v) => v.toJson())
          .toList();
    }
    if (webLocation != null && webLocation!.isNotEmpty) {
      json['webLocation'] = webLocation!
          .map<dynamic>((CitationWebLocation v) => v.toJson())
          .toList();
    }
    if (classification != null && classification!.isNotEmpty) {
      json['classification'] = classification!
          .map<dynamic>((CitationClassification v) => v.toJson())
          .toList();
    }
    if (contributorship != null) {
      json['contributorship'] = contributorship!.toJson();
    }
    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map<dynamic>((Annotation v) => v.toJson()).toList();
    }
    return json;
  }

  factory CitationCitedArtifact.fromJson(Map<String, dynamic> json) {
    return CitationCitedArtifact(
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
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                  (dynamic v) => Identifier.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      relatedIdentifier: json['relatedIdentifier'] != null
          ? (json['relatedIdentifier'] as List<dynamic>)
              .map<Identifier>(
                  (dynamic v) => Identifier.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      dateAccessed: json['dateAccessed'] != null
          ? FhirDateTime.fromJson(json['dateAccessed'])
          : null,
      dateAccessedElement: json['_dateAccessed'] != null
          ? Element.fromJson(json['_dateAccessed'] as Map<String, dynamic>)
          : null,
      version: json['version'] != null
          ? CitationVersion.fromJson(json['version'] as Map<String, dynamic>)
          : null,
      currentState: json['currentState'] != null
          ? (json['currentState'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      statusDate: json['statusDate'] != null
          ? (json['statusDate'] as List<dynamic>)
              .map<CitationStatusDate>((dynamic v) =>
                  CitationStatusDate.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      title: json['title'] != null
          ? (json['title'] as List<dynamic>)
              .map<CitationTitle>((dynamic v) =>
                  CitationTitle.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      abstract_: json['abstract'] != null
          ? (json['abstract'] as List<dynamic>)
              .map<CitationAbstract>((dynamic v) =>
                  CitationAbstract.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      part_: json['part'] != null
          ? CitationPart.fromJson(json['part'] as Map<String, dynamic>)
          : null,
      relatesTo: json['relatesTo'] != null
          ? (json['relatesTo'] as List<dynamic>)
              .map<CitationRelatesTo>((dynamic v) =>
                  CitationRelatesTo.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      publicationForm: json['publicationForm'] != null
          ? (json['publicationForm'] as List<dynamic>)
              .map<CitationPublicationForm>((dynamic v) =>
                  CitationPublicationForm.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      webLocation: json['webLocation'] != null
          ? (json['webLocation'] as List<dynamic>)
              .map<CitationWebLocation>((dynamic v) =>
                  CitationWebLocation.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      classification: json['classification'] != null
          ? (json['classification'] as List<dynamic>)
              .map<CitationClassification>((dynamic v) =>
                  CitationClassification.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      contributorship: json['contributorship'] != null
          ? CitationContributorship.fromJson(
              json['contributorship'] as Map<String, dynamic>)
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                  (dynamic v) => Annotation.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  CitationCitedArtifact clone() => throw UnimplementedError();
  @override
  CitationCitedArtifact copyWith({
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CitationCitedArtifact.fromYaml(dynamic yaml) => yaml is String
      ? CitationCitedArtifact.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CitationCitedArtifact.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CitationCitedArtifact cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CitationCitedArtifact.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CitationCitedArtifact.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [CitationVersion] /// The defined version of the cited artifact.
class CitationVersion extends BackboneElement {
  CitationVersion({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.value,
    this.valueElement,
    this.baseCitation,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'CitationVersion';

  /// [value] /// The version number or other version identifier.
  final FhirString value;
  final Element? valueElement;

  /// [baseCitation] /// Citation for the main version of the cited artifact.
  final Reference? baseCitation;
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
    json['value'] = value.toJson();
    if (valueElement != null) {
      json['_value'] = valueElement!.toJson();
    }
    if (baseCitation != null) {
      json['baseCitation'] = baseCitation!.toJson();
    }
    return json;
  }

  factory CitationVersion.fromJson(Map<String, dynamic> json) {
    return CitationVersion(
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
      value: FhirString.fromJson(json['value']),
      valueElement: json['_value'] != null
          ? Element.fromJson(json['_value'] as Map<String, dynamic>)
          : null,
      baseCitation: json['baseCitation'] != null
          ? Reference.fromJson(json['baseCitation'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  CitationVersion clone() => throw UnimplementedError();
  @override
  CitationVersion copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? value,
    Element? valueElement,
    Reference? baseCitation,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CitationVersion(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      value: value ?? this.value,
      valueElement: valueElement ?? this.valueElement,
      baseCitation: baseCitation ?? this.baseCitation,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CitationVersion.fromYaml(dynamic yaml) => yaml is String
      ? CitationVersion.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CitationVersion.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CitationVersion cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CitationVersion.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CitationVersion.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'CitationStatusDate1';

  /// [activity] /// Classification of the status.
  final CodeableConcept activity;

  /// [actual] /// Either occurred or expected.
  final FhirBoolean? actual;
  final Element? actualElement;

  /// [period] /// When the status started and/or ended.
  final Period period;
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
    json['activity'] = activity.toJson();
    if (actual?.value != null) {
      json['actual'] = actual!.toJson();
    }
    if (actualElement != null) {
      json['_actual'] = actualElement!.toJson();
    }
    json['period'] = period.toJson();
    return json;
  }

  factory CitationStatusDate1.fromJson(Map<String, dynamic> json) {
    return CitationStatusDate1(
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
      activity:
          CodeableConcept.fromJson(json['activity'] as Map<String, dynamic>),
      actual:
          json['actual'] != null ? FhirBoolean.fromJson(json['actual']) : null,
      actualElement: json['_actual'] != null
          ? Element.fromJson(json['_actual'] as Map<String, dynamic>)
          : null,
      period: Period.fromJson(json['period'] as Map<String, dynamic>),
    );
  }
  @override
  CitationStatusDate1 clone() => throw UnimplementedError();
  @override
  CitationStatusDate1 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? activity,
    FhirBoolean? actual,
    Element? actualElement,
    Period? period,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CitationStatusDate1(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      activity: activity ?? this.activity,
      actual: actual ?? this.actual,
      actualElement: actualElement ?? this.actualElement,
      period: period ?? this.period,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CitationStatusDate1.fromYaml(dynamic yaml) => yaml is String
      ? CitationStatusDate1.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CitationStatusDate1.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CitationStatusDate1 cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CitationStatusDate1.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CitationStatusDate1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'CitationTitle';

  /// [type] /// Used to express the reason or specific aspect for the title.
  final List<CodeableConcept>? type;

  /// [language] /// Used to express the specific language.
  final CodeableConcept? language;

  /// [text] /// The title of the article or artifact.
  final FhirMarkdown text;
  final Element? textElement;
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
    if (type != null && type!.isNotEmpty) {
      json['type'] =
          type!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    json['text'] = text.toJson();
    if (textElement != null) {
      json['_text'] = textElement!.toJson();
    }
    return json;
  }

  factory CitationTitle.fromJson(Map<String, dynamic> json) {
    return CitationTitle(
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
      type: json['type'] != null
          ? (json['type'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      language: json['language'] != null
          ? CodeableConcept.fromJson(json['language'] as Map<String, dynamic>)
          : null,
      text: FhirMarkdown.fromJson(json['text']),
      textElement: json['_text'] != null
          ? Element.fromJson(json['_text'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  CitationTitle clone() => throw UnimplementedError();
  @override
  CitationTitle copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? type,
    CodeableConcept? language,
    FhirMarkdown? text,
    Element? textElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CitationTitle(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      language: language ?? this.language,
      text: text ?? this.text,
      textElement: textElement ?? this.textElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CitationTitle.fromYaml(dynamic yaml) => yaml is String
      ? CitationTitle.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CitationTitle.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CitationTitle cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CitationTitle.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CitationTitle.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'CitationAbstract';

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
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    json['text'] = text.toJson();
    if (textElement != null) {
      json['_text'] = textElement!.toJson();
    }
    if (copyright?.value != null) {
      json['copyright'] = copyright!.toJson();
    }
    if (copyrightElement != null) {
      json['_copyright'] = copyrightElement!.toJson();
    }
    return json;
  }

  factory CitationAbstract.fromJson(Map<String, dynamic> json) {
    return CitationAbstract(
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
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CodeableConcept.fromJson(json['language'] as Map<String, dynamic>)
          : null,
      text: FhirMarkdown.fromJson(json['text']),
      textElement: json['_text'] != null
          ? Element.fromJson(json['_text'] as Map<String, dynamic>)
          : null,
      copyright: json['copyright'] != null
          ? FhirMarkdown.fromJson(json['copyright'])
          : null,
      copyrightElement: json['_copyright'] != null
          ? Element.fromJson(json['_copyright'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  CitationAbstract clone() => throw UnimplementedError();
  @override
  CitationAbstract copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    CodeableConcept? language,
    FhirMarkdown? text,
    Element? textElement,
    FhirMarkdown? copyright,
    Element? copyrightElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CitationAbstract.fromYaml(dynamic yaml) => yaml is String
      ? CitationAbstract.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CitationAbstract.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CitationAbstract cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CitationAbstract.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CitationAbstract.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'CitationPart';

  /// [type] /// The kind of component.
  final CodeableConcept? type;

  /// [value] /// The specification of the component.
  final FhirString? value;
  final Element? valueElement;

  /// [baseCitation] /// The citation for the full article or artifact.
  final Reference? baseCitation;
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
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (value?.value != null) {
      json['value'] = value!.toJson();
    }
    if (valueElement != null) {
      json['_value'] = valueElement!.toJson();
    }
    if (baseCitation != null) {
      json['baseCitation'] = baseCitation!.toJson();
    }
    return json;
  }

  factory CitationPart.fromJson(Map<String, dynamic> json) {
    return CitationPart(
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
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
      value: json['value'] != null ? FhirString.fromJson(json['value']) : null,
      valueElement: json['_value'] != null
          ? Element.fromJson(json['_value'] as Map<String, dynamic>)
          : null,
      baseCitation: json['baseCitation'] != null
          ? Reference.fromJson(json['baseCitation'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  CitationPart clone() => throw UnimplementedError();
  @override
  CitationPart copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirString? value,
    Element? valueElement,
    Reference? baseCitation,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CitationPart(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      value: value ?? this.value,
      valueElement: valueElement ?? this.valueElement,
      baseCitation: baseCitation ?? this.baseCitation,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CitationPart.fromYaml(dynamic yaml) => yaml is String
      ? CitationPart.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CitationPart.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CitationPart cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CitationPart.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CitationPart.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [CitationRelatesTo1] /// The artifact related to the cited artifact.
class CitationRelatesTo1 extends BackboneElement {
  CitationRelatesTo1({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.relationshipType,
    this.targetClassifier,
    this.targetUri,
    this.targetUriElement,
    this.targetIdentifier,
    this.targetReference,
    this.targetAttachment,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'CitationRelatesTo1';

  /// [relationshipType] /// How the cited artifact relates to the target artifact.
  final CodeableConcept relationshipType;

  /// [targetClassifier] /// The clasification of the related artifact.
  final List<CodeableConcept>? targetClassifier;

  /// [targetUri] /// The article or artifact that the cited artifact is related to.
  final FhirUri? targetUri;
  final Element? targetUriElement;

  /// [targetIdentifier] /// The article or artifact that the cited artifact is related to.
  final Identifier? targetIdentifier;

  /// [targetReference] /// The article or artifact that the cited artifact is related to.
  final Reference? targetReference;

  /// [targetAttachment] /// The article or artifact that the cited artifact is related to.
  final Attachment? targetAttachment;
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
    json['relationshipType'] = relationshipType.toJson();
    if (targetClassifier != null && targetClassifier!.isNotEmpty) {
      json['targetClassifier'] = targetClassifier!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (targetUri?.value != null) {
      json['targetUri'] = targetUri!.toJson();
    }
    if (targetUriElement != null) {
      json['_targetUri'] = targetUriElement!.toJson();
    }
    if (targetIdentifier != null) {
      json['targetIdentifier'] = targetIdentifier!.toJson();
    }
    if (targetReference != null) {
      json['targetReference'] = targetReference!.toJson();
    }
    if (targetAttachment != null) {
      json['targetAttachment'] = targetAttachment!.toJson();
    }
    return json;
  }

  factory CitationRelatesTo1.fromJson(Map<String, dynamic> json) {
    return CitationRelatesTo1(
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
      relationshipType: CodeableConcept.fromJson(
          json['relationshipType'] as Map<String, dynamic>),
      targetClassifier: json['targetClassifier'] != null
          ? (json['targetClassifier'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      targetUri: json['targetUri'] != null
          ? FhirUri.fromJson(json['targetUri'])
          : null,
      targetUriElement: json['_targetUri'] != null
          ? Element.fromJson(json['_targetUri'] as Map<String, dynamic>)
          : null,
      targetIdentifier: json['targetIdentifier'] != null
          ? Identifier.fromJson(
              json['targetIdentifier'] as Map<String, dynamic>)
          : null,
      targetReference: json['targetReference'] != null
          ? Reference.fromJson(json['targetReference'] as Map<String, dynamic>)
          : null,
      targetAttachment: json['targetAttachment'] != null
          ? Attachment.fromJson(
              json['targetAttachment'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  CitationRelatesTo1 clone() => throw UnimplementedError();
  @override
  CitationRelatesTo1 copyWith({
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CitationRelatesTo1.fromYaml(dynamic yaml) => yaml is String
      ? CitationRelatesTo1.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CitationRelatesTo1.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CitationRelatesTo1 cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CitationRelatesTo1.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CitationRelatesTo1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'CitationPublicationForm';

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
    if (publishedIn != null) {
      json['publishedIn'] = publishedIn!.toJson();
    }
    if (periodicRelease != null) {
      json['periodicRelease'] = periodicRelease!.toJson();
    }
    if (articleDate?.value != null) {
      json['articleDate'] = articleDate!.toJson();
    }
    if (articleDateElement != null) {
      json['_articleDate'] = articleDateElement!.toJson();
    }
    if (lastRevisionDate?.value != null) {
      json['lastRevisionDate'] = lastRevisionDate!.toJson();
    }
    if (lastRevisionDateElement != null) {
      json['_lastRevisionDate'] = lastRevisionDateElement!.toJson();
    }
    if (language != null && language!.isNotEmpty) {
      json['language'] =
          language!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (accessionNumber?.value != null) {
      json['accessionNumber'] = accessionNumber!.toJson();
    }
    if (accessionNumberElement != null) {
      json['_accessionNumber'] = accessionNumberElement!.toJson();
    }
    if (pageString?.value != null) {
      json['pageString'] = pageString!.toJson();
    }
    if (pageStringElement != null) {
      json['_pageString'] = pageStringElement!.toJson();
    }
    if (firstPage?.value != null) {
      json['firstPage'] = firstPage!.toJson();
    }
    if (firstPageElement != null) {
      json['_firstPage'] = firstPageElement!.toJson();
    }
    if (lastPage?.value != null) {
      json['lastPage'] = lastPage!.toJson();
    }
    if (lastPageElement != null) {
      json['_lastPage'] = lastPageElement!.toJson();
    }
    if (pageCount?.value != null) {
      json['pageCount'] = pageCount!.toJson();
    }
    if (pageCountElement != null) {
      json['_pageCount'] = pageCountElement!.toJson();
    }
    if (copyright?.value != null) {
      json['copyright'] = copyright!.toJson();
    }
    if (copyrightElement != null) {
      json['_copyright'] = copyrightElement!.toJson();
    }
    return json;
  }

  factory CitationPublicationForm.fromJson(Map<String, dynamic> json) {
    return CitationPublicationForm(
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
      publishedIn: json['publishedIn'] != null
          ? CitationPublishedIn.fromJson(
              json['publishedIn'] as Map<String, dynamic>)
          : null,
      periodicRelease: json['periodicRelease'] != null
          ? CitationPeriodicRelease.fromJson(
              json['periodicRelease'] as Map<String, dynamic>)
          : null,
      articleDate: json['articleDate'] != null
          ? FhirDateTime.fromJson(json['articleDate'])
          : null,
      articleDateElement: json['_articleDate'] != null
          ? Element.fromJson(json['_articleDate'] as Map<String, dynamic>)
          : null,
      lastRevisionDate: json['lastRevisionDate'] != null
          ? FhirDateTime.fromJson(json['lastRevisionDate'])
          : null,
      lastRevisionDateElement: json['_lastRevisionDate'] != null
          ? Element.fromJson(json['_lastRevisionDate'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? (json['language'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      accessionNumber: json['accessionNumber'] != null
          ? FhirString.fromJson(json['accessionNumber'])
          : null,
      accessionNumberElement: json['_accessionNumber'] != null
          ? Element.fromJson(json['_accessionNumber'] as Map<String, dynamic>)
          : null,
      pageString: json['pageString'] != null
          ? FhirString.fromJson(json['pageString'])
          : null,
      pageStringElement: json['_pageString'] != null
          ? Element.fromJson(json['_pageString'] as Map<String, dynamic>)
          : null,
      firstPage: json['firstPage'] != null
          ? FhirString.fromJson(json['firstPage'])
          : null,
      firstPageElement: json['_firstPage'] != null
          ? Element.fromJson(json['_firstPage'] as Map<String, dynamic>)
          : null,
      lastPage: json['lastPage'] != null
          ? FhirString.fromJson(json['lastPage'])
          : null,
      lastPageElement: json['_lastPage'] != null
          ? Element.fromJson(json['_lastPage'] as Map<String, dynamic>)
          : null,
      pageCount: json['pageCount'] != null
          ? FhirString.fromJson(json['pageCount'])
          : null,
      pageCountElement: json['_pageCount'] != null
          ? Element.fromJson(json['_pageCount'] as Map<String, dynamic>)
          : null,
      copyright: json['copyright'] != null
          ? FhirMarkdown.fromJson(json['copyright'])
          : null,
      copyrightElement: json['_copyright'] != null
          ? Element.fromJson(json['_copyright'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  CitationPublicationForm clone() => throw UnimplementedError();
  @override
  CitationPublicationForm copyWith({
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CitationPublicationForm.fromYaml(dynamic yaml) => yaml is String
      ? CitationPublicationForm.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CitationPublicationForm.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CitationPublicationForm cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CitationPublicationForm.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CitationPublicationForm.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'CitationPublishedIn';

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
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map<dynamic>((Identifier v) => v.toJson()).toList();
    }
    if (title?.value != null) {
      json['title'] = title!.toJson();
    }
    if (titleElement != null) {
      json['_title'] = titleElement!.toJson();
    }
    if (publisher != null) {
      json['publisher'] = publisher!.toJson();
    }
    if (publisherLocation?.value != null) {
      json['publisherLocation'] = publisherLocation!.toJson();
    }
    if (publisherLocationElement != null) {
      json['_publisherLocation'] = publisherLocationElement!.toJson();
    }
    return json;
  }

  factory CitationPublishedIn.fromJson(Map<String, dynamic> json) {
    return CitationPublishedIn(
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
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                  (dynamic v) => Identifier.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      title: json['title'] != null ? FhirString.fromJson(json['title']) : null,
      titleElement: json['_title'] != null
          ? Element.fromJson(json['_title'] as Map<String, dynamic>)
          : null,
      publisher: json['publisher'] != null
          ? Reference.fromJson(json['publisher'] as Map<String, dynamic>)
          : null,
      publisherLocation: json['publisherLocation'] != null
          ? FhirString.fromJson(json['publisherLocation'])
          : null,
      publisherLocationElement: json['_publisherLocation'] != null
          ? Element.fromJson(json['_publisherLocation'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  CitationPublishedIn clone() => throw UnimplementedError();
  @override
  CitationPublishedIn copyWith({
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CitationPublishedIn.fromYaml(dynamic yaml) => yaml is String
      ? CitationPublishedIn.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CitationPublishedIn.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CitationPublishedIn cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CitationPublishedIn.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CitationPublishedIn.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'CitationPeriodicRelease';

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
    if (citedMedium != null) {
      json['citedMedium'] = citedMedium!.toJson();
    }
    if (volume?.value != null) {
      json['volume'] = volume!.toJson();
    }
    if (volumeElement != null) {
      json['_volume'] = volumeElement!.toJson();
    }
    if (issue?.value != null) {
      json['issue'] = issue!.toJson();
    }
    if (issueElement != null) {
      json['_issue'] = issueElement!.toJson();
    }
    if (dateOfPublication != null) {
      json['dateOfPublication'] = dateOfPublication!.toJson();
    }
    return json;
  }

  factory CitationPeriodicRelease.fromJson(Map<String, dynamic> json) {
    return CitationPeriodicRelease(
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
      citedMedium: json['citedMedium'] != null
          ? CodeableConcept.fromJson(
              json['citedMedium'] as Map<String, dynamic>)
          : null,
      volume:
          json['volume'] != null ? FhirString.fromJson(json['volume']) : null,
      volumeElement: json['_volume'] != null
          ? Element.fromJson(json['_volume'] as Map<String, dynamic>)
          : null,
      issue: json['issue'] != null ? FhirString.fromJson(json['issue']) : null,
      issueElement: json['_issue'] != null
          ? Element.fromJson(json['_issue'] as Map<String, dynamic>)
          : null,
      dateOfPublication: json['dateOfPublication'] != null
          ? CitationDateOfPublication.fromJson(
              json['dateOfPublication'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  CitationPeriodicRelease clone() => throw UnimplementedError();
  @override
  CitationPeriodicRelease copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? citedMedium,
    FhirString? volume,
    Element? volumeElement,
    FhirString? issue,
    Element? issueElement,
    CitationDateOfPublication? dateOfPublication,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CitationPeriodicRelease.fromYaml(dynamic yaml) => yaml is String
      ? CitationPeriodicRelease.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CitationPeriodicRelease.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CitationPeriodicRelease cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CitationPeriodicRelease.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CitationPeriodicRelease.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'CitationDateOfPublication';

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
    if (date?.value != null) {
      json['date'] = date!.toJson();
    }
    if (dateElement != null) {
      json['_date'] = dateElement!.toJson();
    }
    if (year?.value != null) {
      json['year'] = year!.toJson();
    }
    if (yearElement != null) {
      json['_year'] = yearElement!.toJson();
    }
    if (month?.value != null) {
      json['month'] = month!.toJson();
    }
    if (monthElement != null) {
      json['_month'] = monthElement!.toJson();
    }
    if (day?.value != null) {
      json['day'] = day!.toJson();
    }
    if (dayElement != null) {
      json['_day'] = dayElement!.toJson();
    }
    if (season?.value != null) {
      json['season'] = season!.toJson();
    }
    if (seasonElement != null) {
      json['_season'] = seasonElement!.toJson();
    }
    if (text?.value != null) {
      json['text'] = text!.toJson();
    }
    if (textElement != null) {
      json['_text'] = textElement!.toJson();
    }
    return json;
  }

  factory CitationDateOfPublication.fromJson(Map<String, dynamic> json) {
    return CitationDateOfPublication(
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
      date: json['date'] != null ? FhirDate.fromJson(json['date']) : null,
      dateElement: json['_date'] != null
          ? Element.fromJson(json['_date'] as Map<String, dynamic>)
          : null,
      year: json['year'] != null ? FhirString.fromJson(json['year']) : null,
      yearElement: json['_year'] != null
          ? Element.fromJson(json['_year'] as Map<String, dynamic>)
          : null,
      month: json['month'] != null ? FhirString.fromJson(json['month']) : null,
      monthElement: json['_month'] != null
          ? Element.fromJson(json['_month'] as Map<String, dynamic>)
          : null,
      day: json['day'] != null ? FhirString.fromJson(json['day']) : null,
      dayElement: json['_day'] != null
          ? Element.fromJson(json['_day'] as Map<String, dynamic>)
          : null,
      season:
          json['season'] != null ? FhirString.fromJson(json['season']) : null,
      seasonElement: json['_season'] != null
          ? Element.fromJson(json['_season'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null ? FhirString.fromJson(json['text']) : null,
      textElement: json['_text'] != null
          ? Element.fromJson(json['_text'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  CitationDateOfPublication clone() => throw UnimplementedError();
  @override
  CitationDateOfPublication copyWith({
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CitationDateOfPublication.fromYaml(dynamic yaml) => yaml is String
      ? CitationDateOfPublication.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CitationDateOfPublication.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CitationDateOfPublication cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CitationDateOfPublication.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CitationDateOfPublication.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [CitationWebLocation] /// Used for any URL for the article or artifact cited.
class CitationWebLocation extends BackboneElement {
  CitationWebLocation({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.url,
    this.urlElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'CitationWebLocation';

  /// [type] /// Code the reason for different URLs, e.g. abstract and full-text.
  final CodeableConcept? type;

  /// [url] /// The specific URL.
  final FhirUri? url;
  final Element? urlElement;
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
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (url?.value != null) {
      json['url'] = url!.toJson();
    }
    if (urlElement != null) {
      json['_url'] = urlElement!.toJson();
    }
    return json;
  }

  factory CitationWebLocation.fromJson(Map<String, dynamic> json) {
    return CitationWebLocation(
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
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
      url: json['url'] != null ? FhirUri.fromJson(json['url']) : null,
      urlElement: json['_url'] != null
          ? Element.fromJson(json['_url'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  CitationWebLocation clone() => throw UnimplementedError();
  @override
  CitationWebLocation copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirUri? url,
    Element? urlElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CitationWebLocation(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      url: url ?? this.url,
      urlElement: urlElement ?? this.urlElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CitationWebLocation.fromYaml(dynamic yaml) => yaml is String
      ? CitationWebLocation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CitationWebLocation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CitationWebLocation cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CitationWebLocation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CitationWebLocation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [CitationClassification1] /// The assignment to an organizing scheme.
class CitationClassification1 extends BackboneElement {
  CitationClassification1({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.classifier,
    this.whoClassified,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'CitationClassification1';

  /// [type] /// The kind of classifier (e.g. publication type, keyword).
  final CodeableConcept? type;

  /// [classifier] /// The specific classification value.
  final List<CodeableConcept>? classifier;

  /// [whoClassified] /// Provenance and copyright of classification.
  final CitationWhoClassified? whoClassified;
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
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (classifier != null && classifier!.isNotEmpty) {
      json['classifier'] =
          classifier!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (whoClassified != null) {
      json['whoClassified'] = whoClassified!.toJson();
    }
    return json;
  }

  factory CitationClassification1.fromJson(Map<String, dynamic> json) {
    return CitationClassification1(
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
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
      classifier: json['classifier'] != null
          ? (json['classifier'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      whoClassified: json['whoClassified'] != null
          ? CitationWhoClassified.fromJson(
              json['whoClassified'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  CitationClassification1 clone() => throw UnimplementedError();
  @override
  CitationClassification1 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<CodeableConcept>? classifier,
    CitationWhoClassified? whoClassified,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CitationClassification1(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      classifier: classifier ?? this.classifier,
      whoClassified: whoClassified ?? this.whoClassified,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CitationClassification1.fromYaml(dynamic yaml) => yaml is String
      ? CitationClassification1.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CitationClassification1.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CitationClassification1 cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CitationClassification1.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CitationClassification1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'CitationWhoClassified';

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
    if (person != null) {
      json['person'] = person!.toJson();
    }
    if (organization != null) {
      json['organization'] = organization!.toJson();
    }
    if (publisher != null) {
      json['publisher'] = publisher!.toJson();
    }
    if (classifierCopyright?.value != null) {
      json['classifierCopyright'] = classifierCopyright!.toJson();
    }
    if (classifierCopyrightElement != null) {
      json['_classifierCopyright'] = classifierCopyrightElement!.toJson();
    }
    if (freeToShare?.value != null) {
      json['freeToShare'] = freeToShare!.toJson();
    }
    if (freeToShareElement != null) {
      json['_freeToShare'] = freeToShareElement!.toJson();
    }
    return json;
  }

  factory CitationWhoClassified.fromJson(Map<String, dynamic> json) {
    return CitationWhoClassified(
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
      person: json['person'] != null
          ? Reference.fromJson(json['person'] as Map<String, dynamic>)
          : null,
      organization: json['organization'] != null
          ? Reference.fromJson(json['organization'] as Map<String, dynamic>)
          : null,
      publisher: json['publisher'] != null
          ? Reference.fromJson(json['publisher'] as Map<String, dynamic>)
          : null,
      classifierCopyright: json['classifierCopyright'] != null
          ? FhirString.fromJson(json['classifierCopyright'])
          : null,
      classifierCopyrightElement: json['_classifierCopyright'] != null
          ? Element.fromJson(
              json['_classifierCopyright'] as Map<String, dynamic>)
          : null,
      freeToShare: json['freeToShare'] != null
          ? FhirBoolean.fromJson(json['freeToShare'])
          : null,
      freeToShareElement: json['_freeToShare'] != null
          ? Element.fromJson(json['_freeToShare'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  CitationWhoClassified clone() => throw UnimplementedError();
  @override
  CitationWhoClassified copyWith({
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CitationWhoClassified.fromYaml(dynamic yaml) => yaml is String
      ? CitationWhoClassified.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CitationWhoClassified.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CitationWhoClassified cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CitationWhoClassified.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CitationWhoClassified.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'CitationContributorship';

  /// [complete] /// Indicates if the list includes all authors and/or contributors.
  final FhirBoolean? complete;
  final Element? completeElement;

  /// [entry] /// An individual entity named in the author list or contributor list.
  final List<CitationEntry>? entry;

  /// [summary] /// Used to record a display of the author/contributor list without separate
  /// coding for each list member.
  final List<CitationSummary>? summary;
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
    if (complete?.value != null) {
      json['complete'] = complete!.toJson();
    }
    if (completeElement != null) {
      json['_complete'] = completeElement!.toJson();
    }
    if (entry != null && entry!.isNotEmpty) {
      json['entry'] =
          entry!.map<dynamic>((CitationEntry v) => v.toJson()).toList();
    }
    if (summary != null && summary!.isNotEmpty) {
      json['summary'] =
          summary!.map<dynamic>((CitationSummary v) => v.toJson()).toList();
    }
    return json;
  }

  factory CitationContributorship.fromJson(Map<String, dynamic> json) {
    return CitationContributorship(
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
      complete: json['complete'] != null
          ? FhirBoolean.fromJson(json['complete'])
          : null,
      completeElement: json['_complete'] != null
          ? Element.fromJson(json['_complete'] as Map<String, dynamic>)
          : null,
      entry: json['entry'] != null
          ? (json['entry'] as List<dynamic>)
              .map<CitationEntry>((dynamic v) =>
                  CitationEntry.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      summary: json['summary'] != null
          ? (json['summary'] as List<dynamic>)
              .map<CitationSummary>((dynamic v) =>
                  CitationSummary.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  CitationContributorship clone() => throw UnimplementedError();
  @override
  CitationContributorship copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? complete,
    Element? completeElement,
    List<CitationEntry>? entry,
    List<CitationSummary>? summary,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CitationContributorship(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      complete: complete ?? this.complete,
      completeElement: completeElement ?? this.completeElement,
      entry: entry ?? this.entry,
      summary: summary ?? this.summary,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CitationContributorship.fromYaml(dynamic yaml) => yaml is String
      ? CitationContributorship.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CitationContributorship.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CitationContributorship cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CitationContributorship.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CitationContributorship.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'CitationEntry';

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
    if (name != null) {
      json['name'] = name!.toJson();
    }
    if (initials?.value != null) {
      json['initials'] = initials!.toJson();
    }
    if (initialsElement != null) {
      json['_initials'] = initialsElement!.toJson();
    }
    if (collectiveName?.value != null) {
      json['collectiveName'] = collectiveName!.toJson();
    }
    if (collectiveNameElement != null) {
      json['_collectiveName'] = collectiveNameElement!.toJson();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map<dynamic>((Identifier v) => v.toJson()).toList();
    }
    if (affiliationInfo != null && affiliationInfo!.isNotEmpty) {
      json['affiliationInfo'] = affiliationInfo!
          .map<dynamic>((CitationAffiliationInfo v) => v.toJson())
          .toList();
    }
    if (address != null && address!.isNotEmpty) {
      json['address'] =
          address!.map<dynamic>((Address v) => v.toJson()).toList();
    }
    if (telecom != null && telecom!.isNotEmpty) {
      json['telecom'] =
          telecom!.map<dynamic>((ContactPoint v) => v.toJson()).toList();
    }
    if (contributionType != null && contributionType!.isNotEmpty) {
      json['contributionType'] = contributionType!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (role != null) {
      json['role'] = role!.toJson();
    }
    if (contributionInstance != null && contributionInstance!.isNotEmpty) {
      json['contributionInstance'] = contributionInstance!
          .map<dynamic>((CitationContributionInstance v) => v.toJson())
          .toList();
    }
    if (correspondingContact?.value != null) {
      json['correspondingContact'] = correspondingContact!.toJson();
    }
    if (correspondingContactElement != null) {
      json['_correspondingContact'] = correspondingContactElement!.toJson();
    }
    if (listOrder?.value != null) {
      json['listOrder'] = listOrder!.toJson();
    }
    if (listOrderElement != null) {
      json['_listOrder'] = listOrderElement!.toJson();
    }
    return json;
  }

  factory CitationEntry.fromJson(Map<String, dynamic> json) {
    return CitationEntry(
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
      name: json['name'] != null
          ? HumanName.fromJson(json['name'] as Map<String, dynamic>)
          : null,
      initials: json['initials'] != null
          ? FhirString.fromJson(json['initials'])
          : null,
      initialsElement: json['_initials'] != null
          ? Element.fromJson(json['_initials'] as Map<String, dynamic>)
          : null,
      collectiveName: json['collectiveName'] != null
          ? FhirString.fromJson(json['collectiveName'])
          : null,
      collectiveNameElement: json['_collectiveName'] != null
          ? Element.fromJson(json['_collectiveName'] as Map<String, dynamic>)
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                  (dynamic v) => Identifier.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      affiliationInfo: json['affiliationInfo'] != null
          ? (json['affiliationInfo'] as List<dynamic>)
              .map<CitationAffiliationInfo>((dynamic v) =>
                  CitationAffiliationInfo.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      address: json['address'] != null
          ? (json['address'] as List<dynamic>)
              .map<Address>(
                  (dynamic v) => Address.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      telecom: json['telecom'] != null
          ? (json['telecom'] as List<dynamic>)
              .map<ContactPoint>((dynamic v) =>
                  ContactPoint.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      contributionType: json['contributionType'] != null
          ? (json['contributionType'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      role: json['role'] != null
          ? CodeableConcept.fromJson(json['role'] as Map<String, dynamic>)
          : null,
      contributionInstance: json['contributionInstance'] != null
          ? (json['contributionInstance'] as List<dynamic>)
              .map<CitationContributionInstance>((dynamic v) =>
                  CitationContributionInstance.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      correspondingContact: json['correspondingContact'] != null
          ? FhirBoolean.fromJson(json['correspondingContact'])
          : null,
      correspondingContactElement: json['_correspondingContact'] != null
          ? Element.fromJson(
              json['_correspondingContact'] as Map<String, dynamic>)
          : null,
      listOrder: json['listOrder'] != null
          ? FhirPositiveInt.fromJson(json['listOrder'])
          : null,
      listOrderElement: json['_listOrder'] != null
          ? Element.fromJson(json['_listOrder'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  CitationEntry clone() => throw UnimplementedError();
  @override
  CitationEntry copyWith({
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CitationEntry.fromYaml(dynamic yaml) => yaml is String
      ? CitationEntry.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CitationEntry.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CitationEntry cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CitationEntry.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CitationEntry.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'CitationAffiliationInfo';

  /// [affiliation] /// Display for the organization.
  final FhirString? affiliation;
  final Element? affiliationElement;

  /// [role] /// Role within the organization, such as professional title.
  final FhirString? role;
  final Element? roleElement;

  /// [identifier] /// Identifier for the organization.
  final List<Identifier>? identifier;
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
    if (affiliation?.value != null) {
      json['affiliation'] = affiliation!.toJson();
    }
    if (affiliationElement != null) {
      json['_affiliation'] = affiliationElement!.toJson();
    }
    if (role?.value != null) {
      json['role'] = role!.toJson();
    }
    if (roleElement != null) {
      json['_role'] = roleElement!.toJson();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map<dynamic>((Identifier v) => v.toJson()).toList();
    }
    return json;
  }

  factory CitationAffiliationInfo.fromJson(Map<String, dynamic> json) {
    return CitationAffiliationInfo(
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
      affiliation: json['affiliation'] != null
          ? FhirString.fromJson(json['affiliation'])
          : null,
      affiliationElement: json['_affiliation'] != null
          ? Element.fromJson(json['_affiliation'] as Map<String, dynamic>)
          : null,
      role: json['role'] != null ? FhirString.fromJson(json['role']) : null,
      roleElement: json['_role'] != null
          ? Element.fromJson(json['_role'] as Map<String, dynamic>)
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                  (dynamic v) => Identifier.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  CitationAffiliationInfo clone() => throw UnimplementedError();
  @override
  CitationAffiliationInfo copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? affiliation,
    Element? affiliationElement,
    FhirString? role,
    Element? roleElement,
    List<Identifier>? identifier,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CitationAffiliationInfo.fromYaml(dynamic yaml) => yaml is String
      ? CitationAffiliationInfo.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CitationAffiliationInfo.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CitationAffiliationInfo cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CitationAffiliationInfo.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CitationAffiliationInfo.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [CitationContributionInstance] /// Contributions with accounting for time or number.
class CitationContributionInstance extends BackboneElement {
  CitationContributionInstance({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.time,
    this.timeElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'CitationContributionInstance';

  /// [type] /// The specific contribution.
  final CodeableConcept type;

  /// [time] /// The time that the contribution was made.
  final FhirDateTime? time;
  final Element? timeElement;
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
    json['type'] = type.toJson();
    if (time?.value != null) {
      json['time'] = time!.toJson();
    }
    if (timeElement != null) {
      json['_time'] = timeElement!.toJson();
    }
    return json;
  }

  factory CitationContributionInstance.fromJson(Map<String, dynamic> json) {
    return CitationContributionInstance(
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
      type: CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      time: json['time'] != null ? FhirDateTime.fromJson(json['time']) : null,
      timeElement: json['_time'] != null
          ? Element.fromJson(json['_time'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  CitationContributionInstance clone() => throw UnimplementedError();
  @override
  CitationContributionInstance copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirDateTime? time,
    Element? timeElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CitationContributionInstance(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      time: time ?? this.time,
      timeElement: timeElement ?? this.timeElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CitationContributionInstance.fromYaml(dynamic yaml) => yaml is String
      ? CitationContributionInstance.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CitationContributionInstance.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CitationContributionInstance cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CitationContributionInstance.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CitationContributionInstance.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'CitationSummary1';

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
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (style != null) {
      json['style'] = style!.toJson();
    }
    if (source != null) {
      json['source'] = source!.toJson();
    }
    json['value'] = value.toJson();
    if (valueElement != null) {
      json['_value'] = valueElement!.toJson();
    }
    return json;
  }

  factory CitationSummary1.fromJson(Map<String, dynamic> json) {
    return CitationSummary1(
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
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
      style: json['style'] != null
          ? CodeableConcept.fromJson(json['style'] as Map<String, dynamic>)
          : null,
      source: json['source'] != null
          ? CodeableConcept.fromJson(json['source'] as Map<String, dynamic>)
          : null,
      value: FhirMarkdown.fromJson(json['value']),
      valueElement: json['_value'] != null
          ? Element.fromJson(json['_value'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  CitationSummary1 clone() => throw UnimplementedError();
  @override
  CitationSummary1 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    CodeableConcept? style,
    CodeableConcept? source,
    FhirMarkdown? value,
    Element? valueElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CitationSummary1.fromYaml(dynamic yaml) => yaml is String
      ? CitationSummary1.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CitationSummary1.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CitationSummary1 cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CitationSummary1.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CitationSummary1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
