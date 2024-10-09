import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [Evidence] /// The Evidence Resource provides a machine-interpretable expression of an
/// evidence concept including the evidence variables (eg population,
/// exposures/interventions, comparators, outcomes, measured variables,
/// confounding variables), the statistics, and the certainty of this evidence.
@JsonSerializable()
class Evidence extends DomainResource {
  Evidence({
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
    this.title,
    this.titleElement,
    this.citeAsReference,
    this.citeAsMarkdown,
    this.citeAsMarkdownElement,
    required this.status,
    this.statusElement,
    this.date,
    this.dateElement,
    this.useContext,
    this.approvalDate,
    this.approvalDateElement,
    this.lastReviewDate,
    this.lastReviewDateElement,
    this.publisher,
    this.publisherElement,
    this.contact,
    this.author,
    this.editor,
    this.reviewer,
    this.endorser,
    this.relatedArtifact,
    this.description,
    this.descriptionElement,
    this.assertion,
    this.assertionElement,
    this.note,
    required this.variableDefinition,
    this.synthesisType,
    this.studyType,
    this.statistic,
    this.certainty,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(resourceType: R4ResourceType.Evidence);
  @override
  String get fhirType => 'Evidence';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [url] /// An absolute URI that is used to identify this evidence when it is
  /// referenced in a specification, model, design or an instance; also called
  /// its canonical identifier. This SHOULD be globally unique and SHOULD be a
  /// literal address at which at which an authoritative instance of this summary
  /// is (or will be) published. This URL can be the target of a canonical
  /// reference. It SHALL remain the same when the summary is stored on different
  /// servers.
  @JsonKey(name: 'url')
  final FhirUri? url;
  @JsonKey(name: '_url')
  final Element? urlElement;

  /// [identifier] /// A formal identifier that is used to identify this summary when it is
  /// represented in other formats, or referenced in a specification, model,
  /// design or an instance.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [version] /// The identifier that is used to identify this version of the summary when it
  /// is referenced in a specification, model, design or instance. This is an
  /// arbitrary value managed by the summary author and is not expected to be
  /// globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a
  /// managed version is not available. There is also no expectation that
  /// versions can be placed in a lexicographical sequence.
  @JsonKey(name: 'version')
  final FhirString? version;
  @JsonKey(name: '_version')
  final Element? versionElement;

  /// [title] /// A short, descriptive, user-friendly title for the summary.
  @JsonKey(name: 'title')
  final FhirString? title;
  @JsonKey(name: '_title')
  final Element? titleElement;

  /// [citeAsReference] /// Citation Resource or display of suggested citation for this evidence.
  @JsonKey(name: 'citeAsReference')
  final Reference? citeAsReference;

  /// [citeAsMarkdown] /// Citation Resource or display of suggested citation for this evidence.
  @JsonKey(name: 'citeAsMarkdown')
  final FhirMarkdown? citeAsMarkdown;
  @JsonKey(name: '_citeAsMarkdown')
  final Element? citeAsMarkdownElement;

  /// [status] /// The status of this summary. Enables tracking the life-cycle of the content.
  @JsonKey(name: 'status')
  final PublicationStatus status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [date] /// The date (and optionally time) when the summary was published. The date
  /// must change when the business version changes and it must change if the
  /// status code changes. In addition, it should change when the substantive
  /// content of the summary changes.
  @JsonKey(name: 'date')
  final FhirDateTime? date;
  @JsonKey(name: '_date')
  final Element? dateElement;

  /// [useContext] /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories (gender,
  /// age, ...) or may be references to specific programs (insurance plans,
  /// studies, ...) and may be used to assist with indexing and searching for
  /// appropriate evidence instances.
  @JsonKey(name: 'useContext')
  final List<UsageContext>? useContext;

  /// [approvalDate] /// The date on which the resource content was approved by the publisher.
  /// Approval happens once when the content is officially approved for usage.
  @JsonKey(name: 'approvalDate')
  final FhirDate? approvalDate;
  @JsonKey(name: '_approvalDate')
  final Element? approvalDateElement;

  /// [lastReviewDate] /// The date on which the resource content was last reviewed. Review happens
  /// periodically after approval but does not change the original approval date.
  @JsonKey(name: 'lastReviewDate')
  final FhirDate? lastReviewDate;
  @JsonKey(name: '_lastReviewDate')
  final Element? lastReviewDateElement;

  /// [publisher] /// The name of the organization or individual that published the evidence.
  @JsonKey(name: 'publisher')
  final FhirString? publisher;
  @JsonKey(name: '_publisher')
  final Element? publisherElement;

  /// [contact] /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  @JsonKey(name: 'contact')
  final List<ContactDetail>? contact;

  /// [author] /// An individiual, organization, or device primarily involved in the creation
  /// and maintenance of the content.
  @JsonKey(name: 'author')
  final List<ContactDetail>? author;

  /// [editor] /// An individiual, organization, or device primarily responsible for internal
  /// coherence of the content.
  @JsonKey(name: 'editor')
  final List<ContactDetail>? editor;

  /// [reviewer] /// An individiual, organization, or device primarily responsible for review of
  /// some aspect of the content.
  @JsonKey(name: 'reviewer')
  final List<ContactDetail>? reviewer;

  /// [endorser] /// An individiual, organization, or device responsible for officially
  /// endorsing the content for use in some setting.
  @JsonKey(name: 'endorser')
  final List<ContactDetail>? endorser;

  /// [relatedArtifact] /// Link or citation to artifact associated with the summary.
  @JsonKey(name: 'relatedArtifact')
  final List<RelatedArtifact>? relatedArtifact;

  /// [description] /// A free text natural language description of the evidence from a consumer's
  /// perspective.
  @JsonKey(name: 'description')
  final FhirMarkdown? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [assertion] /// Declarative description of the Evidence.
  @JsonKey(name: 'assertion')
  final FhirMarkdown? assertion;
  @JsonKey(name: '_assertion')
  final Element? assertionElement;

  /// [note] /// Footnotes and/or explanatory notes.
  @JsonKey(name: 'note')
  final List<Annotation>? note;

  /// [variableDefinition] /// Evidence variable such as population, exposure, or outcome.
  @JsonKey(name: 'variableDefinition')
  final List<EvidenceVariableDefinition> variableDefinition;

  /// [synthesisType] /// The method to combine studies.
  @JsonKey(name: 'synthesisType')
  final CodeableConcept? synthesisType;

  /// [studyType] /// The type of study that produced this evidence.
  @JsonKey(name: 'studyType')
  final CodeableConcept? studyType;

  /// [statistic] /// Values and parameters for a single statistic.
  @JsonKey(name: 'statistic')
  final List<EvidenceStatistic>? statistic;

  /// [certainty] /// Assessment of certainty, confidence in the estimates, or quality of the
  /// evidence.
  @JsonKey(name: 'certainty')
  final List<EvidenceCertainty>? certainty;
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
      json['implicitRules'] = implicitRules!.value;
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
      json['url'] = url!.value;
    }
    if (urlElement != null) {
      json['_url'] = urlElement!.toJson();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map<dynamic>((Identifier v) => v.toJson()).toList();
    }
    if (version?.value != null) {
      json['version'] = version!.value;
    }
    if (versionElement != null) {
      json['_version'] = versionElement!.toJson();
    }
    if (title?.value != null) {
      json['title'] = title!.value;
    }
    if (titleElement != null) {
      json['_title'] = titleElement!.toJson();
    }
    if (citeAsReference != null) {
      json['citeAsReference'] = citeAsReference!.toJson();
    }
    if (citeAsMarkdown?.value != null) {
      json['citeAsMarkdown'] = citeAsMarkdown!.value;
    }
    if (citeAsMarkdownElement != null) {
      json['_citeAsMarkdown'] = citeAsMarkdownElement!.toJson();
    }
    json['status'] = status.toJson();
    if (date?.value != null) {
      json['date'] = date!.value;
    }
    if (dateElement != null) {
      json['_date'] = dateElement!.toJson();
    }
    if (useContext != null && useContext!.isNotEmpty) {
      json['useContext'] =
          useContext!.map<dynamic>((UsageContext v) => v.toJson()).toList();
    }
    if (approvalDate?.value != null) {
      json['approvalDate'] = approvalDate!.value;
    }
    if (approvalDateElement != null) {
      json['_approvalDate'] = approvalDateElement!.toJson();
    }
    if (lastReviewDate?.value != null) {
      json['lastReviewDate'] = lastReviewDate!.value;
    }
    if (lastReviewDateElement != null) {
      json['_lastReviewDate'] = lastReviewDateElement!.toJson();
    }
    if (publisher?.value != null) {
      json['publisher'] = publisher!.value;
    }
    if (publisherElement != null) {
      json['_publisher'] = publisherElement!.toJson();
    }
    if (contact != null && contact!.isNotEmpty) {
      json['contact'] =
          contact!.map<dynamic>((ContactDetail v) => v.toJson()).toList();
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
    if (relatedArtifact != null && relatedArtifact!.isNotEmpty) {
      json['relatedArtifact'] = relatedArtifact!
          .map<dynamic>((RelatedArtifact v) => v.toJson())
          .toList();
    }
    if (description?.value != null) {
      json['description'] = description!.value;
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (assertion?.value != null) {
      json['assertion'] = assertion!.value;
    }
    if (assertionElement != null) {
      json['_assertion'] = assertionElement!.toJson();
    }
    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map<dynamic>((Annotation v) => v.toJson()).toList();
    }
    json['variableDefinition'] = variableDefinition
        .map<dynamic>((EvidenceVariableDefinition v) => v.toJson())
        .toList();
    if (synthesisType != null) {
      json['synthesisType'] = synthesisType!.toJson();
    }
    if (studyType != null) {
      json['studyType'] = studyType!.toJson();
    }
    if (statistic != null && statistic!.isNotEmpty) {
      json['statistic'] =
          statistic!.map<dynamic>((EvidenceStatistic v) => v.toJson()).toList();
    }
    if (certainty != null && certainty!.isNotEmpty) {
      json['certainty'] =
          certainty!.map<dynamic>((EvidenceCertainty v) => v.toJson()).toList();
    }
    return json;
  }

  factory Evidence.fromJson(Map<String, dynamic> json) {
    return Evidence(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules:
          json['implicitRules'] != null ? FhirUri(json['implicitRules']) : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'] as Map<String, dynamic>)
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
      url: json['url'] != null ? FhirUri(json['url']) : null,
      urlElement: json['_url'] != null
          ? Element.fromJson(json['_url'] as Map<String, dynamic>)
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                  (dynamic v) => Identifier.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      version: json['version'] != null ? FhirString(json['version']) : null,
      versionElement: json['_version'] != null
          ? Element.fromJson(json['_version'] as Map<String, dynamic>)
          : null,
      title: json['title'] != null ? FhirString(json['title']) : null,
      titleElement: json['_title'] != null
          ? Element.fromJson(json['_title'] as Map<String, dynamic>)
          : null,
      citeAsReference: json['citeAsReference'] != null
          ? Reference.fromJson(json['citeAsReference'] as Map<String, dynamic>)
          : null,
      citeAsMarkdown: json['citeAsMarkdown'] != null
          ? FhirMarkdown(json['citeAsMarkdown'])
          : null,
      citeAsMarkdownElement: json['_citeAsMarkdown'] != null
          ? Element.fromJson(json['_citeAsMarkdown'] as Map<String, dynamic>)
          : null,
      status:
          PublicationStatus.fromJson(json['status'] as Map<String, dynamic>),
      date: json['date'] != null ? FhirDateTime(json['date']) : null,
      dateElement: json['_date'] != null
          ? Element.fromJson(json['_date'] as Map<String, dynamic>)
          : null,
      useContext: json['useContext'] != null
          ? (json['useContext'] as List<dynamic>)
              .map<UsageContext>((dynamic v) =>
                  UsageContext.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      approvalDate:
          json['approvalDate'] != null ? FhirDate(json['approvalDate']) : null,
      approvalDateElement: json['_approvalDate'] != null
          ? Element.fromJson(json['_approvalDate'] as Map<String, dynamic>)
          : null,
      lastReviewDate: json['lastReviewDate'] != null
          ? FhirDate(json['lastReviewDate'])
          : null,
      lastReviewDateElement: json['_lastReviewDate'] != null
          ? Element.fromJson(json['_lastReviewDate'] as Map<String, dynamic>)
          : null,
      publisher:
          json['publisher'] != null ? FhirString(json['publisher']) : null,
      publisherElement: json['_publisher'] != null
          ? Element.fromJson(json['_publisher'] as Map<String, dynamic>)
          : null,
      contact: json['contact'] != null
          ? (json['contact'] as List<dynamic>)
              .map<ContactDetail>((dynamic v) =>
                  ContactDetail.fromJson(v as Map<String, dynamic>))
              .toList()
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
      relatedArtifact: json['relatedArtifact'] != null
          ? (json['relatedArtifact'] as List<dynamic>)
              .map<RelatedArtifact>((dynamic v) =>
                  RelatedArtifact.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      description: json['description'] != null
          ? FhirMarkdown(json['description'])
          : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(json['_description'] as Map<String, dynamic>)
          : null,
      assertion:
          json['assertion'] != null ? FhirMarkdown(json['assertion']) : null,
      assertionElement: json['_assertion'] != null
          ? Element.fromJson(json['_assertion'] as Map<String, dynamic>)
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                  (dynamic v) => Annotation.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      variableDefinition: (json['variableDefinition'] as List<dynamic>)
          .map<EvidenceVariableDefinition>((dynamic v) =>
              EvidenceVariableDefinition.fromJson(v as Map<String, dynamic>))
          .toList(),
      synthesisType: json['synthesisType'] != null
          ? CodeableConcept.fromJson(
              json['synthesisType'] as Map<String, dynamic>)
          : null,
      studyType: json['studyType'] != null
          ? CodeableConcept.fromJson(json['studyType'] as Map<String, dynamic>)
          : null,
      statistic: json['statistic'] != null
          ? (json['statistic'] as List<dynamic>)
              .map<EvidenceStatistic>((dynamic v) =>
                  EvidenceStatistic.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      certainty: json['certainty'] != null
          ? (json['certainty'] as List<dynamic>)
              .map<EvidenceCertainty>((dynamic v) =>
                  EvidenceCertainty.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  Evidence clone() => throw UnimplementedError();
  @override
  Evidence copyWith({
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
    FhirString? title,
    Element? titleElement,
    Reference? citeAsReference,
    FhirMarkdown? citeAsMarkdown,
    Element? citeAsMarkdownElement,
    PublicationStatus? status,
    Element? statusElement,
    FhirDateTime? date,
    Element? dateElement,
    List<UsageContext>? useContext,
    FhirDate? approvalDate,
    Element? approvalDateElement,
    FhirDate? lastReviewDate,
    Element? lastReviewDateElement,
    FhirString? publisher,
    Element? publisherElement,
    List<ContactDetail>? contact,
    List<ContactDetail>? author,
    List<ContactDetail>? editor,
    List<ContactDetail>? reviewer,
    List<ContactDetail>? endorser,
    List<RelatedArtifact>? relatedArtifact,
    FhirMarkdown? description,
    Element? descriptionElement,
    FhirMarkdown? assertion,
    Element? assertionElement,
    List<Annotation>? note,
    List<EvidenceVariableDefinition>? variableDefinition,
    CodeableConcept? synthesisType,
    CodeableConcept? studyType,
    List<EvidenceStatistic>? statistic,
    List<EvidenceCertainty>? certainty,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Evidence(
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
      title: title ?? this.title,
      titleElement: titleElement ?? this.titleElement,
      citeAsReference: citeAsReference ?? this.citeAsReference,
      citeAsMarkdown: citeAsMarkdown ?? this.citeAsMarkdown,
      citeAsMarkdownElement:
          citeAsMarkdownElement ?? this.citeAsMarkdownElement,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      date: date ?? this.date,
      dateElement: dateElement ?? this.dateElement,
      useContext: useContext ?? this.useContext,
      approvalDate: approvalDate ?? this.approvalDate,
      approvalDateElement: approvalDateElement ?? this.approvalDateElement,
      lastReviewDate: lastReviewDate ?? this.lastReviewDate,
      lastReviewDateElement:
          lastReviewDateElement ?? this.lastReviewDateElement,
      publisher: publisher ?? this.publisher,
      publisherElement: publisherElement ?? this.publisherElement,
      contact: contact ?? this.contact,
      author: author ?? this.author,
      editor: editor ?? this.editor,
      reviewer: reviewer ?? this.reviewer,
      endorser: endorser ?? this.endorser,
      relatedArtifact: relatedArtifact ?? this.relatedArtifact,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      assertion: assertion ?? this.assertion,
      assertionElement: assertionElement ?? this.assertionElement,
      note: note ?? this.note,
      variableDefinition: variableDefinition ?? this.variableDefinition,
      synthesisType: synthesisType ?? this.synthesisType,
      studyType: studyType ?? this.studyType,
      statistic: statistic ?? this.statistic,
      certainty: certainty ?? this.certainty,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory Evidence.fromYaml(dynamic yaml) => yaml is String
      ? Evidence.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Evidence.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Evidence cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Evidence.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Evidence.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [EvidenceVariableDefinition] /// Evidence variable such as population, exposure, or outcome.
@JsonSerializable()
class EvidenceVariableDefinition extends BackboneElement {
  EvidenceVariableDefinition({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.descriptionElement,
    this.note,
    required this.variableRole,
    this.observed,
    this.intended,
    this.directnessMatch,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'EvidenceVariableDefinition';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [description] /// A text description or summary of the variable.
  @JsonKey(name: 'description')
  final FhirMarkdown? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [note] /// Footnotes and/or explanatory notes.
  @JsonKey(name: 'note')
  final List<Annotation>? note;

  /// [variableRole] /// population | subpopulation | exposure | referenceExposure |
  /// measuredVariable | confounder.
  @JsonKey(name: 'variableRole')
  final CodeableConcept variableRole;

  /// [observed] /// Definition of the actual variable related to the statistic(s).
  @JsonKey(name: 'observed')
  final Reference? observed;

  /// [intended] /// Definition of the intended variable related to the Evidence.
  @JsonKey(name: 'intended')
  final Reference? intended;

  /// [directnessMatch] /// Indication of quality of match between intended variable to actual
  /// variable.
  @JsonKey(name: 'directnessMatch')
  final CodeableConcept? directnessMatch;
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
    if (description?.value != null) {
      json['description'] = description!.value;
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map<dynamic>((Annotation v) => v.toJson()).toList();
    }
    json['variableRole'] = variableRole.toJson();
    if (observed != null) {
      json['observed'] = observed!.toJson();
    }
    if (intended != null) {
      json['intended'] = intended!.toJson();
    }
    if (directnessMatch != null) {
      json['directnessMatch'] = directnessMatch!.toJson();
    }
    return json;
  }

  factory EvidenceVariableDefinition.fromJson(Map<String, dynamic> json) {
    return EvidenceVariableDefinition(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
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
      description: json['description'] != null
          ? FhirMarkdown(json['description'])
          : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(json['_description'] as Map<String, dynamic>)
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                  (dynamic v) => Annotation.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      variableRole: CodeableConcept.fromJson(
          json['variableRole'] as Map<String, dynamic>),
      observed: json['observed'] != null
          ? Reference.fromJson(json['observed'] as Map<String, dynamic>)
          : null,
      intended: json['intended'] != null
          ? Reference.fromJson(json['intended'] as Map<String, dynamic>)
          : null,
      directnessMatch: json['directnessMatch'] != null
          ? CodeableConcept.fromJson(
              json['directnessMatch'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  EvidenceVariableDefinition clone() => throw UnimplementedError();
  @override
  EvidenceVariableDefinition copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirMarkdown? description,
    Element? descriptionElement,
    List<Annotation>? note,
    CodeableConcept? variableRole,
    Reference? observed,
    Reference? intended,
    CodeableConcept? directnessMatch,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return EvidenceVariableDefinition(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      note: note ?? this.note,
      variableRole: variableRole ?? this.variableRole,
      observed: observed ?? this.observed,
      intended: intended ?? this.intended,
      directnessMatch: directnessMatch ?? this.directnessMatch,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory EvidenceVariableDefinition.fromYaml(dynamic yaml) => yaml is String
      ? EvidenceVariableDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? EvidenceVariableDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'EvidenceVariableDefinition cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory EvidenceVariableDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EvidenceVariableDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [EvidenceStatistic] /// Values and parameters for a single statistic.
@JsonSerializable()
class EvidenceStatistic extends BackboneElement {
  EvidenceStatistic({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.descriptionElement,
    this.note,
    this.statisticType,
    this.category,
    this.quantity,
    this.numberOfEvents,
    this.numberOfEventsElement,
    this.numberAffected,
    this.numberAffectedElement,
    this.sampleSize,
    this.attributeEstimate,
    this.modelCharacteristic,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'EvidenceStatistic';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [description] /// A description of the content value of the statistic.
  @JsonKey(name: 'description')
  final FhirString? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [note] /// Footnotes and/or explanatory notes.
  @JsonKey(name: 'note')
  final List<Annotation>? note;

  /// [statisticType] /// Type of statistic, eg relative risk.
  @JsonKey(name: 'statisticType')
  final CodeableConcept? statisticType;

  /// [category] /// When the measured variable is handled categorically, the category element
  /// is used to define which category the statistic is reporting.
  @JsonKey(name: 'category')
  final CodeableConcept? category;

  /// [quantity] /// Statistic value.
  @JsonKey(name: 'quantity')
  final Quantity? quantity;

  /// [numberOfEvents] /// The number of events associated with the statistic, where the unit of
  /// analysis is different from numberAffected, sampleSize.knownDataCount and
  /// sampleSize.numberOfParticipants.
  @JsonKey(name: 'numberOfEvents')
  final FhirUnsignedInt? numberOfEvents;
  @JsonKey(name: '_numberOfEvents')
  final Element? numberOfEventsElement;

  /// [numberAffected] /// The number of participants affected where the unit of analysis is the same
  /// as sampleSize.knownDataCount and sampleSize.numberOfParticipants.
  @JsonKey(name: 'numberAffected')
  final FhirUnsignedInt? numberAffected;
  @JsonKey(name: '_numberAffected')
  final Element? numberAffectedElement;

  /// [sampleSize] /// Number of samples in the statistic.
  @JsonKey(name: 'sampleSize')
  final EvidenceSampleSize? sampleSize;

  /// [attributeEstimate] /// A statistical attribute of the statistic such as a measure of
  /// heterogeneity.
  @JsonKey(name: 'attributeEstimate')
  final List<EvidenceAttributeEstimate>? attributeEstimate;

  /// [modelCharacteristic] /// A component of the method to generate the statistic.
  @JsonKey(name: 'modelCharacteristic')
  final List<EvidenceModelCharacteristic>? modelCharacteristic;
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
    if (description?.value != null) {
      json['description'] = description!.value;
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map<dynamic>((Annotation v) => v.toJson()).toList();
    }
    if (statisticType != null) {
      json['statisticType'] = statisticType!.toJson();
    }
    if (category != null) {
      json['category'] = category!.toJson();
    }
    if (quantity != null) {
      json['quantity'] = quantity!.toJson();
    }
    if (numberOfEvents?.value != null) {
      json['numberOfEvents'] = numberOfEvents!.value;
    }
    if (numberOfEventsElement != null) {
      json['_numberOfEvents'] = numberOfEventsElement!.toJson();
    }
    if (numberAffected?.value != null) {
      json['numberAffected'] = numberAffected!.value;
    }
    if (numberAffectedElement != null) {
      json['_numberAffected'] = numberAffectedElement!.toJson();
    }
    if (sampleSize != null) {
      json['sampleSize'] = sampleSize!.toJson();
    }
    if (attributeEstimate != null && attributeEstimate!.isNotEmpty) {
      json['attributeEstimate'] = attributeEstimate!
          .map<dynamic>((EvidenceAttributeEstimate v) => v.toJson())
          .toList();
    }
    if (modelCharacteristic != null && modelCharacteristic!.isNotEmpty) {
      json['modelCharacteristic'] = modelCharacteristic!
          .map<dynamic>((EvidenceModelCharacteristic v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory EvidenceStatistic.fromJson(Map<String, dynamic> json) {
    return EvidenceStatistic(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
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
      description:
          json['description'] != null ? FhirString(json['description']) : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(json['_description'] as Map<String, dynamic>)
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                  (dynamic v) => Annotation.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      statisticType: json['statisticType'] != null
          ? CodeableConcept.fromJson(
              json['statisticType'] as Map<String, dynamic>)
          : null,
      category: json['category'] != null
          ? CodeableConcept.fromJson(json['category'] as Map<String, dynamic>)
          : null,
      quantity: json['quantity'] != null
          ? Quantity.fromJson(json['quantity'] as Map<String, dynamic>)
          : null,
      numberOfEvents: json['numberOfEvents'] != null
          ? FhirUnsignedInt(json['numberOfEvents'])
          : null,
      numberOfEventsElement: json['_numberOfEvents'] != null
          ? Element.fromJson(json['_numberOfEvents'] as Map<String, dynamic>)
          : null,
      numberAffected: json['numberAffected'] != null
          ? FhirUnsignedInt(json['numberAffected'])
          : null,
      numberAffectedElement: json['_numberAffected'] != null
          ? Element.fromJson(json['_numberAffected'] as Map<String, dynamic>)
          : null,
      sampleSize: json['sampleSize'] != null
          ? EvidenceSampleSize.fromJson(
              json['sampleSize'] as Map<String, dynamic>)
          : null,
      attributeEstimate: json['attributeEstimate'] != null
          ? (json['attributeEstimate'] as List<dynamic>)
              .map<EvidenceAttributeEstimate>((dynamic v) =>
                  EvidenceAttributeEstimate.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modelCharacteristic: json['modelCharacteristic'] != null
          ? (json['modelCharacteristic'] as List<dynamic>)
              .map<EvidenceModelCharacteristic>((dynamic v) =>
                  EvidenceModelCharacteristic.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  EvidenceStatistic clone() => throw UnimplementedError();
  @override
  EvidenceStatistic copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    Element? descriptionElement,
    List<Annotation>? note,
    CodeableConcept? statisticType,
    CodeableConcept? category,
    Quantity? quantity,
    FhirUnsignedInt? numberOfEvents,
    Element? numberOfEventsElement,
    FhirUnsignedInt? numberAffected,
    Element? numberAffectedElement,
    EvidenceSampleSize? sampleSize,
    List<EvidenceAttributeEstimate>? attributeEstimate,
    List<EvidenceModelCharacteristic>? modelCharacteristic,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return EvidenceStatistic(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      note: note ?? this.note,
      statisticType: statisticType ?? this.statisticType,
      category: category ?? this.category,
      quantity: quantity ?? this.quantity,
      numberOfEvents: numberOfEvents ?? this.numberOfEvents,
      numberOfEventsElement:
          numberOfEventsElement ?? this.numberOfEventsElement,
      numberAffected: numberAffected ?? this.numberAffected,
      numberAffectedElement:
          numberAffectedElement ?? this.numberAffectedElement,
      sampleSize: sampleSize ?? this.sampleSize,
      attributeEstimate: attributeEstimate ?? this.attributeEstimate,
      modelCharacteristic: modelCharacteristic ?? this.modelCharacteristic,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory EvidenceStatistic.fromYaml(dynamic yaml) => yaml is String
      ? EvidenceStatistic.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? EvidenceStatistic.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'EvidenceStatistic cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory EvidenceStatistic.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EvidenceStatistic.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [EvidenceSampleSize] /// Number of samples in the statistic.
@JsonSerializable()
class EvidenceSampleSize extends BackboneElement {
  EvidenceSampleSize({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.descriptionElement,
    this.note,
    this.numberOfStudies,
    this.numberOfStudiesElement,
    this.numberOfParticipants,
    this.numberOfParticipantsElement,
    this.knownDataCount,
    this.knownDataCountElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'EvidenceSampleSize';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [description] /// Human-readable summary of population sample size.
  @JsonKey(name: 'description')
  final FhirString? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [note] /// Footnote or explanatory note about the sample size.
  @JsonKey(name: 'note')
  final List<Annotation>? note;

  /// [numberOfStudies] /// Number of participants in the population.
  @JsonKey(name: 'numberOfStudies')
  final FhirUnsignedInt? numberOfStudies;
  @JsonKey(name: '_numberOfStudies')
  final Element? numberOfStudiesElement;

  /// [numberOfParticipants] /// A human-readable string to clarify or explain concepts about the sample
  /// size.
  @JsonKey(name: 'numberOfParticipants')
  final FhirUnsignedInt? numberOfParticipants;
  @JsonKey(name: '_numberOfParticipants')
  final Element? numberOfParticipantsElement;

  /// [knownDataCount] /// Number of participants with known results for measured variables.
  @JsonKey(name: 'knownDataCount')
  final FhirUnsignedInt? knownDataCount;
  @JsonKey(name: '_knownDataCount')
  final Element? knownDataCountElement;
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
    if (description?.value != null) {
      json['description'] = description!.value;
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map<dynamic>((Annotation v) => v.toJson()).toList();
    }
    if (numberOfStudies?.value != null) {
      json['numberOfStudies'] = numberOfStudies!.value;
    }
    if (numberOfStudiesElement != null) {
      json['_numberOfStudies'] = numberOfStudiesElement!.toJson();
    }
    if (numberOfParticipants?.value != null) {
      json['numberOfParticipants'] = numberOfParticipants!.value;
    }
    if (numberOfParticipantsElement != null) {
      json['_numberOfParticipants'] = numberOfParticipantsElement!.toJson();
    }
    if (knownDataCount?.value != null) {
      json['knownDataCount'] = knownDataCount!.value;
    }
    if (knownDataCountElement != null) {
      json['_knownDataCount'] = knownDataCountElement!.toJson();
    }
    return json;
  }

  factory EvidenceSampleSize.fromJson(Map<String, dynamic> json) {
    return EvidenceSampleSize(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
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
      description:
          json['description'] != null ? FhirString(json['description']) : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(json['_description'] as Map<String, dynamic>)
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                  (dynamic v) => Annotation.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      numberOfStudies: json['numberOfStudies'] != null
          ? FhirUnsignedInt(json['numberOfStudies'])
          : null,
      numberOfStudiesElement: json['_numberOfStudies'] != null
          ? Element.fromJson(json['_numberOfStudies'] as Map<String, dynamic>)
          : null,
      numberOfParticipants: json['numberOfParticipants'] != null
          ? FhirUnsignedInt(json['numberOfParticipants'])
          : null,
      numberOfParticipantsElement: json['_numberOfParticipants'] != null
          ? Element.fromJson(
              json['_numberOfParticipants'] as Map<String, dynamic>)
          : null,
      knownDataCount: json['knownDataCount'] != null
          ? FhirUnsignedInt(json['knownDataCount'])
          : null,
      knownDataCountElement: json['_knownDataCount'] != null
          ? Element.fromJson(json['_knownDataCount'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  EvidenceSampleSize clone() => throw UnimplementedError();
  @override
  EvidenceSampleSize copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    Element? descriptionElement,
    List<Annotation>? note,
    FhirUnsignedInt? numberOfStudies,
    Element? numberOfStudiesElement,
    FhirUnsignedInt? numberOfParticipants,
    Element? numberOfParticipantsElement,
    FhirUnsignedInt? knownDataCount,
    Element? knownDataCountElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return EvidenceSampleSize(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      note: note ?? this.note,
      numberOfStudies: numberOfStudies ?? this.numberOfStudies,
      numberOfStudiesElement:
          numberOfStudiesElement ?? this.numberOfStudiesElement,
      numberOfParticipants: numberOfParticipants ?? this.numberOfParticipants,
      numberOfParticipantsElement:
          numberOfParticipantsElement ?? this.numberOfParticipantsElement,
      knownDataCount: knownDataCount ?? this.knownDataCount,
      knownDataCountElement:
          knownDataCountElement ?? this.knownDataCountElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory EvidenceSampleSize.fromYaml(dynamic yaml) => yaml is String
      ? EvidenceSampleSize.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? EvidenceSampleSize.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'EvidenceSampleSize cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory EvidenceSampleSize.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EvidenceSampleSize.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [EvidenceAttributeEstimate] /// A statistical attribute of the statistic such as a measure of
/// heterogeneity.
@JsonSerializable()
class EvidenceAttributeEstimate extends BackboneElement {
  EvidenceAttributeEstimate({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.descriptionElement,
    this.note,
    this.type,
    this.quantity,
    this.level,
    this.levelElement,
    this.range,
    this.attributeEstimate,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'EvidenceAttributeEstimate';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [description] /// Human-readable summary of the estimate.
  @JsonKey(name: 'description')
  final FhirString? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [note] /// Footnote or explanatory note about the estimate.
  @JsonKey(name: 'note')
  final List<Annotation>? note;

  /// [type] /// The type of attribute estimate, eg confidence interval or p value.
  @JsonKey(name: 'type')
  final CodeableConcept? type;

  /// [quantity] /// The singular quantity of the attribute estimate, for attribute estimates
  /// represented as single values; also used to report unit of measure.
  @JsonKey(name: 'quantity')
  final Quantity? quantity;

  /// [level] /// Use 95 for a 95% confidence interval.
  @JsonKey(name: 'level')
  final FhirDecimal? level;
  @JsonKey(name: '_level')
  final Element? levelElement;

  /// [range] /// Lower bound of confidence interval.
  @JsonKey(name: 'range')
  final Range? range;

  /// [attributeEstimate] /// A nested attribute estimate; which is the attribute estimate of an
  /// attribute estimate.
  @JsonKey(name: 'attributeEstimate')
  final List<EvidenceAttributeEstimate>? attributeEstimate;
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
    if (description?.value != null) {
      json['description'] = description!.value;
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map<dynamic>((Annotation v) => v.toJson()).toList();
    }
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (quantity != null) {
      json['quantity'] = quantity!.toJson();
    }
    if (level?.value != null) {
      json['level'] = level!.value;
    }
    if (levelElement != null) {
      json['_level'] = levelElement!.toJson();
    }
    if (range != null) {
      json['range'] = range!.toJson();
    }
    if (attributeEstimate != null && attributeEstimate!.isNotEmpty) {
      json['attributeEstimate'] = attributeEstimate!
          .map<dynamic>((EvidenceAttributeEstimate v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory EvidenceAttributeEstimate.fromJson(Map<String, dynamic> json) {
    return EvidenceAttributeEstimate(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
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
      description:
          json['description'] != null ? FhirString(json['description']) : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(json['_description'] as Map<String, dynamic>)
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                  (dynamic v) => Annotation.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
      quantity: json['quantity'] != null
          ? Quantity.fromJson(json['quantity'] as Map<String, dynamic>)
          : null,
      level: json['level'] != null ? FhirDecimal(json['level']) : null,
      levelElement: json['_level'] != null
          ? Element.fromJson(json['_level'] as Map<String, dynamic>)
          : null,
      range: json['range'] != null
          ? Range.fromJson(json['range'] as Map<String, dynamic>)
          : null,
      attributeEstimate: json['attributeEstimate'] != null
          ? (json['attributeEstimate'] as List<dynamic>)
              .map<EvidenceAttributeEstimate>((dynamic v) =>
                  EvidenceAttributeEstimate.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  EvidenceAttributeEstimate clone() => throw UnimplementedError();
  @override
  EvidenceAttributeEstimate copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    Element? descriptionElement,
    List<Annotation>? note,
    CodeableConcept? type,
    Quantity? quantity,
    FhirDecimal? level,
    Element? levelElement,
    Range? range,
    List<EvidenceAttributeEstimate>? attributeEstimate,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return EvidenceAttributeEstimate(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      note: note ?? this.note,
      type: type ?? this.type,
      quantity: quantity ?? this.quantity,
      level: level ?? this.level,
      levelElement: levelElement ?? this.levelElement,
      range: range ?? this.range,
      attributeEstimate: attributeEstimate ?? this.attributeEstimate,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory EvidenceAttributeEstimate.fromYaml(dynamic yaml) => yaml is String
      ? EvidenceAttributeEstimate.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? EvidenceAttributeEstimate.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'EvidenceAttributeEstimate cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory EvidenceAttributeEstimate.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EvidenceAttributeEstimate.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [EvidenceModelCharacteristic] /// A component of the method to generate the statistic.
@JsonSerializable()
class EvidenceModelCharacteristic extends BackboneElement {
  EvidenceModelCharacteristic({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.value,
    this.variable,
    this.attributeEstimate,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'EvidenceModelCharacteristic';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// Description of a component of the method to generate the statistic.
  @JsonKey(name: 'code')
  final CodeableConcept code;

  /// [value] /// Further specification of the quantified value of the component of the
  /// method to generate the statistic.
  @JsonKey(name: 'value')
  final Quantity? value;

  /// [variable] /// A variable adjusted for in the adjusted analysis.
  @JsonKey(name: 'variable')
  final List<EvidenceVariable>? variable;

  /// [attributeEstimate] /// An attribute of the statistic used as a model characteristic.
  @JsonKey(name: 'attributeEstimate')
  final List<EvidenceAttributeEstimate>? attributeEstimate;
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
    if (value != null) {
      json['value'] = value!.toJson();
    }
    if (variable != null && variable!.isNotEmpty) {
      json['variable'] =
          variable!.map<dynamic>((EvidenceVariable v) => v.toJson()).toList();
    }
    if (attributeEstimate != null && attributeEstimate!.isNotEmpty) {
      json['attributeEstimate'] = attributeEstimate!
          .map<dynamic>((EvidenceAttributeEstimate v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory EvidenceModelCharacteristic.fromJson(Map<String, dynamic> json) {
    return EvidenceModelCharacteristic(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
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
      code: CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
      value: json['value'] != null
          ? Quantity.fromJson(json['value'] as Map<String, dynamic>)
          : null,
      variable: json['variable'] != null
          ? (json['variable'] as List<dynamic>)
              .map<EvidenceVariable>((dynamic v) =>
                  EvidenceVariable.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      attributeEstimate: json['attributeEstimate'] != null
          ? (json['attributeEstimate'] as List<dynamic>)
              .map<EvidenceAttributeEstimate>((dynamic v) =>
                  EvidenceAttributeEstimate.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  EvidenceModelCharacteristic clone() => throw UnimplementedError();
  @override
  EvidenceModelCharacteristic copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    Quantity? value,
    List<EvidenceVariable>? variable,
    List<EvidenceAttributeEstimate>? attributeEstimate,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return EvidenceModelCharacteristic(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      value: value ?? this.value,
      variable: variable ?? this.variable,
      attributeEstimate: attributeEstimate ?? this.attributeEstimate,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory EvidenceModelCharacteristic.fromYaml(dynamic yaml) => yaml is String
      ? EvidenceModelCharacteristic.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? EvidenceModelCharacteristic.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'EvidenceModelCharacteristic cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory EvidenceModelCharacteristic.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EvidenceModelCharacteristic.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [Evidencevariable] /// A variable adjusted for in the adjusted analysis.
@JsonSerializable()
class Evidencevariable extends BackboneElement {
  Evidencevariable({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.variableDefinition,
    this.handling,
    this.handlingElement,
    this.valueCategory,
    this.valueQuantity,
    this.valueRange,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'Evidencevariable';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [variableDefinition] /// Description of the variable.
  @JsonKey(name: 'variableDefinition')
  final Reference variableDefinition;

  /// [handling] /// How the variable is classified for use in adjusted analysis.
  @JsonKey(name: 'handling')
  final EvidenceVariableHandling? handling;
  @JsonKey(name: '_handling')
  final Element? handlingElement;

  /// [valueCategory] /// Description for grouping of ordinal or polychotomous variables.
  @JsonKey(name: 'valueCategory')
  final List<CodeableConcept>? valueCategory;

  /// [valueQuantity] /// Discrete value for grouping of ordinal or polychotomous variables.
  @JsonKey(name: 'valueQuantity')
  final List<Quantity>? valueQuantity;

  /// [valueRange] /// Range of values for grouping of ordinal or polychotomous variables.
  @JsonKey(name: 'valueRange')
  final List<Range>? valueRange;
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
    json['variableDefinition'] = variableDefinition.toJson();
    if (handling != null) {
      json['handling'] = handling!.toJson();
    }
    if (valueCategory != null && valueCategory!.isNotEmpty) {
      json['valueCategory'] = valueCategory!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (valueQuantity != null && valueQuantity!.isNotEmpty) {
      json['valueQuantity'] =
          valueQuantity!.map<dynamic>((Quantity v) => v.toJson()).toList();
    }
    if (valueRange != null && valueRange!.isNotEmpty) {
      json['valueRange'] =
          valueRange!.map<dynamic>((Range v) => v.toJson()).toList();
    }
    return json;
  }

  factory Evidencevariable.fromJson(Map<String, dynamic> json) {
    return Evidencevariable(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
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
      variableDefinition: Reference.fromJson(
          json['variableDefinition'] as Map<String, dynamic>),
      handling: json['handling'] != null
          ? EvidenceVariableHandling.fromJson(
              json['handling'] as Map<String, dynamic>)
          : null,
      valueCategory: json['valueCategory'] != null
          ? (json['valueCategory'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      valueQuantity: json['valueQuantity'] != null
          ? (json['valueQuantity'] as List<dynamic>)
              .map<Quantity>(
                  (dynamic v) => Quantity.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      valueRange: json['valueRange'] != null
          ? (json['valueRange'] as List<dynamic>)
              .map<Range>(
                  (dynamic v) => Range.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  Evidencevariable clone() => throw UnimplementedError();
  @override
  Evidencevariable copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? variableDefinition,
    EvidenceVariableHandling? handling,
    Element? handlingElement,
    List<CodeableConcept>? valueCategory,
    List<Quantity>? valueQuantity,
    List<Range>? valueRange,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Evidencevariable(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      variableDefinition: variableDefinition ?? this.variableDefinition,
      handling: handling ?? this.handling,
      handlingElement: handlingElement ?? this.handlingElement,
      valueCategory: valueCategory ?? this.valueCategory,
      valueQuantity: valueQuantity ?? this.valueQuantity,
      valueRange: valueRange ?? this.valueRange,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory Evidencevariable.fromYaml(dynamic yaml) => yaml is String
      ? Evidencevariable.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Evidencevariable.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Evidencevariable cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Evidencevariable.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Evidencevariable.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [EvidenceCertainty] /// Assessment of certainty, confidence in the estimates, or quality of the
/// evidence.
@JsonSerializable()
class EvidenceCertainty extends BackboneElement {
  EvidenceCertainty({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.descriptionElement,
    this.note,
    this.type,
    this.rating,
    this.rater,
    this.raterElement,
    this.subcomponent,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'EvidenceCertainty';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [description] /// Textual description of certainty.
  @JsonKey(name: 'description')
  final FhirString? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [note] /// Footnotes and/or explanatory notes.
  @JsonKey(name: 'note')
  final List<Annotation>? note;

  /// [type] /// Aspect of certainty being rated.
  @JsonKey(name: 'type')
  final CodeableConcept? type;

  /// [rating] /// Assessment or judgement of the aspect.
  @JsonKey(name: 'rating')
  final CodeableConcept? rating;

  /// [rater] /// Individual or group who did the rating.
  @JsonKey(name: 'rater')
  final FhirString? rater;
  @JsonKey(name: '_rater')
  final Element? raterElement;

  /// [subcomponent] /// A domain or subdomain of certainty.
  @JsonKey(name: 'subcomponent')
  final List<EvidenceCertainty>? subcomponent;
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
    if (description?.value != null) {
      json['description'] = description!.value;
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map<dynamic>((Annotation v) => v.toJson()).toList();
    }
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (rating != null) {
      json['rating'] = rating!.toJson();
    }
    if (rater?.value != null) {
      json['rater'] = rater!.value;
    }
    if (raterElement != null) {
      json['_rater'] = raterElement!.toJson();
    }
    if (subcomponent != null && subcomponent!.isNotEmpty) {
      json['subcomponent'] = subcomponent!
          .map<dynamic>((EvidenceCertainty v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory EvidenceCertainty.fromJson(Map<String, dynamic> json) {
    return EvidenceCertainty(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
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
      description:
          json['description'] != null ? FhirString(json['description']) : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(json['_description'] as Map<String, dynamic>)
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                  (dynamic v) => Annotation.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
      rating: json['rating'] != null
          ? CodeableConcept.fromJson(json['rating'] as Map<String, dynamic>)
          : null,
      rater: json['rater'] != null ? FhirString(json['rater']) : null,
      raterElement: json['_rater'] != null
          ? Element.fromJson(json['_rater'] as Map<String, dynamic>)
          : null,
      subcomponent: json['subcomponent'] != null
          ? (json['subcomponent'] as List<dynamic>)
              .map<EvidenceCertainty>((dynamic v) =>
                  EvidenceCertainty.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  EvidenceCertainty clone() => throw UnimplementedError();
  @override
  EvidenceCertainty copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    Element? descriptionElement,
    List<Annotation>? note,
    CodeableConcept? type,
    CodeableConcept? rating,
    FhirString? rater,
    Element? raterElement,
    List<EvidenceCertainty>? subcomponent,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return EvidenceCertainty(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      note: note ?? this.note,
      type: type ?? this.type,
      rating: rating ?? this.rating,
      rater: rater ?? this.rater,
      raterElement: raterElement ?? this.raterElement,
      subcomponent: subcomponent ?? this.subcomponent,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory EvidenceCertainty.fromYaml(dynamic yaml) => yaml is String
      ? EvidenceCertainty.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? EvidenceCertainty.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'EvidenceCertainty cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory EvidenceCertainty.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EvidenceCertainty.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
