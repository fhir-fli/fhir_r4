import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'citation.g.dart';

/// [Citation] /// The Citation Resource enables reference to any knowledge artifact for
/// purposes of identification and attribution. The Citation Resource supports
/// existing reference structures and developing publication practices such as
/// versioning, expressing complex contributorship roles, and referencing
/// computable resources.
@JsonSerializable()
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
  }) : super(resourceType: R4ResourceType.Citation, fhirType: 'Citation');
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
  @JsonKey(name: 'url')
  final FhirUri? url;
  @JsonKey(name: '_url')
  final Element? urlElement;

  /// [identifier] /// A formal identifier that is used to identify this citation when it is
  /// represented in other formats, or referenced in a specification, model,
  /// design or an instance.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [version] /// The identifier that is used to identify this version of the citation when
  /// it is referenced in a specification, model, design or instance. This is an
  /// arbitrary value managed by the citation author and is not expected to be
  /// globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a
  /// managed version is not available. There is also no expectation that
  /// versions can be placed in a lexicographical sequence.
  @JsonKey(name: 'version')
  final FhirString? version;
  @JsonKey(name: '_version')
  final Element? versionElement;

  /// [name] /// A natural language name identifying the citation. This name should be
  /// usable as an identifier for the module by machine processing applications
  /// such as code generation.
  @JsonKey(name: 'name')
  final FhirString? name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [title] /// A short, descriptive, user-friendly title for the citation.
  @JsonKey(name: 'title')
  final FhirString? title;
  @JsonKey(name: '_title')
  final Element? titleElement;

  /// [status] /// The status of this summary. Enables tracking the life-cycle of the content.
  @JsonKey(name: 'status')
  final FhirCode status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [experimental] /// A Boolean value to indicate that this citation is authored for testing
  /// purposes (or education/evaluation/marketing) and is not intended to be used
  /// for genuine usage.
  @JsonKey(name: 'experimental')
  final FhirBoolean? experimental;
  @JsonKey(name: '_experimental')
  final Element? experimentalElement;

  /// [date] /// The date (and optionally time) when the citation was published. The date
  /// must change when the business version changes and it must change if the
  /// status code changes. In addition, it should change when the substantive
  /// content of the citation changes.
  @JsonKey(name: 'date')
  final FhirDateTime? date;
  @JsonKey(name: '_date')
  final Element? dateElement;

  /// [publisher] /// The name of the organization or individual that published the citation.
  @JsonKey(name: 'publisher')
  final FhirString? publisher;
  @JsonKey(name: '_publisher')
  final Element? publisherElement;

  /// [contact] /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  @JsonKey(name: 'contact')
  final List<ContactDetail>? contact;

  /// [description] /// A free text natural language description of the citation from a consumer's
  /// perspective.
  @JsonKey(name: 'description')
  final FhirMarkdown? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [useContext] /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories (gender,
  /// age, ...) or may be references to specific programs (insurance plans,
  /// studies, ...) and may be used to assist with indexing and searching for
  /// appropriate citation instances.
  @JsonKey(name: 'useContext')
  final List<UsageContext>? useContext;

  /// [jurisdiction] /// A legal or geographic region in which the citation is intended to be used.
  @JsonKey(name: 'jurisdiction')
  final List<CodeableConcept>? jurisdiction;

  /// [purpose] /// Explanation of why this citation is needed and why it has been designed as
  /// it has.
  @JsonKey(name: 'purpose')
  final FhirMarkdown? purpose;
  @JsonKey(name: '_purpose')
  final Element? purposeElement;

  /// [copyright] /// Use and/or publishing restrictions for the Citation, not for the cited
  /// artifact.
  @JsonKey(name: 'copyright')
  final FhirMarkdown? copyright;
  @JsonKey(name: '_copyright')
  final Element? copyrightElement;

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

  /// [effectivePeriod] /// The period during which the citation content was or is planned to be in
  /// active use.
  @JsonKey(name: 'effectivePeriod')
  final Period? effectivePeriod;

  /// [author] /// Who authored the Citation.
  @JsonKey(name: 'author')
  final List<ContactDetail>? author;

  /// [editor] /// Who edited the Citation.
  @JsonKey(name: 'editor')
  final List<ContactDetail>? editor;

  /// [reviewer] /// Who reviewed the Citation.
  @JsonKey(name: 'reviewer')
  final List<ContactDetail>? reviewer;

  /// [endorser] /// Who endorsed the Citation.
  @JsonKey(name: 'endorser')
  final List<ContactDetail>? endorser;

  /// [summary] /// A human-readable display of the citation.
  @JsonKey(name: 'summary')
  final List<CitationSummary>? summary;

  /// [classification] /// The assignment to an organizing scheme.
  @JsonKey(name: 'classification')
  final List<CitationClassification>? classification;

  /// [note] /// Used for general notes and annotations not coded elsewhere.
  @JsonKey(name: 'note')
  final List<Annotation>? note;

  /// [currentState] /// The status of the citation.
  @JsonKey(name: 'currentState')
  final List<CodeableConcept>? currentState;

  /// [statusDate] /// An effective date or period for a status of the citation.
  @JsonKey(name: 'statusDate')
  final List<CitationStatusDate>? statusDate;

  /// [relatesTo] /// Artifact related to the Citation Resource.
  @JsonKey(name: 'relatesTo')
  final List<CitationRelatesTo>? relatesTo;

  /// [citedArtifact] /// The article or artifact being described.
  @JsonKey(name: 'citedArtifact')
  final CitationCitedArtifact? citedArtifact;
  factory Citation.fromJson(Map<String, dynamic> json) =>
      _$CitationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CitationToJson(this);

  @override
  Citation clone() => throw UnimplementedError();
  @override
  Citation copyWith({
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
@JsonSerializable()
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
  }) : super(fhirType: 'CitationSummary');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [style] /// Format for display of the citation.
  @JsonKey(name: 'style')
  final CodeableConcept? style;

  /// [text] /// The human-readable display of the citation.
  @JsonKey(name: 'text')
  final FhirMarkdown text;
  @JsonKey(name: '_text')
  final Element? textElement;
  factory CitationSummary.fromJson(Map<String, dynamic> json) =>
      _$CitationSummaryFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CitationSummaryToJson(this);

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
@JsonSerializable()
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
  }) : super(fhirType: 'CitationClassification');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// The kind of classifier (e.g. publication type, keyword).
  @JsonKey(name: 'type')
  final CodeableConcept? type;

  /// [classifier] /// The specific classification value.
  @JsonKey(name: 'classifier')
  final List<CodeableConcept>? classifier;
  factory CitationClassification.fromJson(Map<String, dynamic> json) =>
      _$CitationClassificationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CitationClassificationToJson(this);

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
@JsonSerializable()
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
  }) : super(fhirType: 'CitationStatusDate');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [activity] /// Classification of the status.
  @JsonKey(name: 'activity')
  final CodeableConcept activity;

  /// [actual] /// Either occurred or expected.
  @JsonKey(name: 'actual')
  final FhirBoolean? actual;
  @JsonKey(name: '_actual')
  final Element? actualElement;

  /// [period] /// When the status started and/or ended.
  @JsonKey(name: 'period')
  final Period period;
  factory CitationStatusDate.fromJson(Map<String, dynamic> json) =>
      _$CitationStatusDateFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CitationStatusDateToJson(this);

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
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'CitationRelatesTo');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [relationshipType] /// How the Citation resource relates to the target artifact.
  @JsonKey(name: 'relationshipType')
  final CodeableConcept relationshipType;

  /// [targetClassifier] /// The clasification of the related artifact.
  @JsonKey(name: 'targetClassifier')
  final List<CodeableConcept>? targetClassifier;

  /// [targetUri] /// The article or artifact that the Citation Resource is related to.
  @JsonKey(name: 'targetUri')
  final FhirUri targetUri;
  @JsonKey(name: '_targetUri')
  final Element? targetUriElement;

  /// [targetIdentifier] /// The article or artifact that the Citation Resource is related to.
  @JsonKey(name: 'targetIdentifier')
  final Identifier targetIdentifier;

  /// [targetReference] /// The article or artifact that the Citation Resource is related to.
  @JsonKey(name: 'targetReference')
  final Reference targetReference;

  /// [targetAttachment] /// The article or artifact that the Citation Resource is related to.
  @JsonKey(name: 'targetAttachment')
  final Attachment targetAttachment;
  factory CitationRelatesTo.fromJson(Map<String, dynamic> json) =>
      _$CitationRelatesToFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CitationRelatesToToJson(this);

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
@JsonSerializable()
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
  }) : super(fhirType: 'CitationCitedArtifact');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// A formal identifier that is used to identify this citation when it is
  /// represented in other formats, or referenced in a specification, model,
  /// design or an instance.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [relatedIdentifier] /// A formal identifier that is used to identify things closely related to this
  /// citation.
  @JsonKey(name: 'relatedIdentifier')
  final List<Identifier>? relatedIdentifier;

  /// [dateAccessed] /// When the cited artifact was accessed.
  @JsonKey(name: 'dateAccessed')
  final FhirDateTime? dateAccessed;
  @JsonKey(name: '_dateAccessed')
  final Element? dateAccessedElement;

  /// [version] /// The defined version of the cited artifact.
  @JsonKey(name: 'version')
  final CitationVersion? version;

  /// [currentState] /// The status of the cited artifact.
  @JsonKey(name: 'currentState')
  final List<CodeableConcept>? currentState;

  /// [statusDate] /// An effective date or period for a status of the cited artifact.
  @JsonKey(name: 'statusDate')
  final List<CitationStatusDate>? statusDate;

  /// [title] /// The title details of the article or artifact.
  @JsonKey(name: 'title')
  final List<CitationTitle>? title;

  /// [abstract_] /// Summary of the article or artifact.
  @JsonKey(name: 'abstract')
  final List<CitationAbstract>? abstract_;

  /// [part_] /// The component of the article or artifact.
  @JsonKey(name: 'part')
  final CitationPart? part_;

  /// [relatesTo] /// The artifact related to the cited artifact.
  @JsonKey(name: 'relatesTo')
  final List<CitationRelatesTo>? relatesTo;

  /// [publicationForm] /// If multiple, used to represent alternative forms of the article that are
  /// not separate citations.
  @JsonKey(name: 'publicationForm')
  final List<CitationPublicationForm>? publicationForm;

  /// [webLocation] /// Used for any URL for the article or artifact cited.
  @JsonKey(name: 'webLocation')
  final List<CitationWebLocation>? webLocation;

  /// [classification] /// The assignment to an organizing scheme.
  @JsonKey(name: 'classification')
  final List<CitationClassification>? classification;

  /// [contributorship] /// This element is used to list authors and other contributors, their contact
  /// information, specific contributions, and summary statements.
  @JsonKey(name: 'contributorship')
  final CitationContributorship? contributorship;

  /// [note] /// Any additional information or content for the article or artifact.
  @JsonKey(name: 'note')
  final List<Annotation>? note;
  factory CitationCitedArtifact.fromJson(Map<String, dynamic> json) =>
      _$CitationCitedArtifactFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CitationCitedArtifactToJson(this);

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
@JsonSerializable()
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
  }) : super(fhirType: 'CitationVersion');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [value] /// The version number or other version identifier.
  @JsonKey(name: 'value')
  final FhirString value;
  @JsonKey(name: '_value')
  final Element? valueElement;

  /// [baseCitation] /// Citation for the main version of the cited artifact.
  @JsonKey(name: 'baseCitation')
  final Reference? baseCitation;
  factory CitationVersion.fromJson(Map<String, dynamic> json) =>
      _$CitationVersionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CitationVersionToJson(this);

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
@JsonSerializable()
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
  }) : super(fhirType: 'CitationStatusDate1');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [activity] /// Classification of the status.
  @JsonKey(name: 'activity')
  final CodeableConcept activity;

  /// [actual] /// Either occurred or expected.
  @JsonKey(name: 'actual')
  final FhirBoolean? actual;
  @JsonKey(name: '_actual')
  final Element? actualElement;

  /// [period] /// When the status started and/or ended.
  @JsonKey(name: 'period')
  final Period period;
  factory CitationStatusDate1.fromJson(Map<String, dynamic> json) =>
      _$CitationStatusDate1FromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CitationStatusDate1ToJson(this);

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
@JsonSerializable()
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
  }) : super(fhirType: 'CitationTitle');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Used to express the reason or specific aspect for the title.
  @JsonKey(name: 'type')
  final List<CodeableConcept>? type;

  /// [language] /// Used to express the specific language.
  @JsonKey(name: 'language')
  final CodeableConcept? language;

  /// [text] /// The title of the article or artifact.
  @JsonKey(name: 'text')
  final FhirMarkdown text;
  @JsonKey(name: '_text')
  final Element? textElement;
  factory CitationTitle.fromJson(Map<String, dynamic> json) =>
      _$CitationTitleFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CitationTitleToJson(this);

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
@JsonSerializable()
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
  }) : super(fhirType: 'CitationAbstract');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Used to express the reason or specific aspect for the abstract.
  @JsonKey(name: 'type')
  final CodeableConcept? type;

  /// [language] /// Used to express the specific language.
  @JsonKey(name: 'language')
  final CodeableConcept? language;

  /// [text] /// Abstract content.
  @JsonKey(name: 'text')
  final FhirMarkdown text;
  @JsonKey(name: '_text')
  final Element? textElement;

  /// [copyright] /// Copyright notice for the abstract.
  @JsonKey(name: 'copyright')
  final FhirMarkdown? copyright;
  @JsonKey(name: '_copyright')
  final Element? copyrightElement;
  factory CitationAbstract.fromJson(Map<String, dynamic> json) =>
      _$CitationAbstractFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CitationAbstractToJson(this);

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
@JsonSerializable()
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
  }) : super(fhirType: 'CitationPart');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// The kind of component.
  @JsonKey(name: 'type')
  final CodeableConcept? type;

  /// [value] /// The specification of the component.
  @JsonKey(name: 'value')
  final FhirString? value;
  @JsonKey(name: '_value')
  final Element? valueElement;

  /// [baseCitation] /// The citation for the full article or artifact.
  @JsonKey(name: 'baseCitation')
  final Reference? baseCitation;
  factory CitationPart.fromJson(Map<String, dynamic> json) =>
      _$CitationPartFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CitationPartToJson(this);

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
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'CitationRelatesTo1');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [relationshipType] /// How the cited artifact relates to the target artifact.
  @JsonKey(name: 'relationshipType')
  final CodeableConcept relationshipType;

  /// [targetClassifier] /// The clasification of the related artifact.
  @JsonKey(name: 'targetClassifier')
  final List<CodeableConcept>? targetClassifier;

  /// [targetUri] /// The article or artifact that the cited artifact is related to.
  @JsonKey(name: 'targetUri')
  final FhirUri targetUri;
  @JsonKey(name: '_targetUri')
  final Element? targetUriElement;

  /// [targetIdentifier] /// The article or artifact that the cited artifact is related to.
  @JsonKey(name: 'targetIdentifier')
  final Identifier targetIdentifier;

  /// [targetReference] /// The article or artifact that the cited artifact is related to.
  @JsonKey(name: 'targetReference')
  final Reference targetReference;

  /// [targetAttachment] /// The article or artifact that the cited artifact is related to.
  @JsonKey(name: 'targetAttachment')
  final Attachment targetAttachment;
  factory CitationRelatesTo1.fromJson(Map<String, dynamic> json) =>
      _$CitationRelatesTo1FromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CitationRelatesTo1ToJson(this);

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
@JsonSerializable()
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
  }) : super(fhirType: 'CitationPublicationForm');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [publishedIn] /// The collection the cited article or artifact is published in.
  @JsonKey(name: 'publishedIn')
  final CitationPublishedIn? publishedIn;

  /// [periodicRelease] /// The specific issue in which the cited article resides.
  @JsonKey(name: 'periodicRelease')
  final CitationPeriodicRelease? periodicRelease;

  /// [articleDate] /// The date the article was added to the database, or the date the article was
  /// released (which may differ from the journal issue publication date).
  @JsonKey(name: 'articleDate')
  final FhirDateTime? articleDate;
  @JsonKey(name: '_articleDate')
  final Element? articleDateElement;

  /// [lastRevisionDate] /// The date the article was last revised or updated in the database.
  @JsonKey(name: 'lastRevisionDate')
  final FhirDateTime? lastRevisionDate;
  @JsonKey(name: '_lastRevisionDate')
  final Element? lastRevisionDateElement;

  /// [language] /// Language in which this form of the article is published.
  @JsonKey(name: 'language')
  final List<CodeableConcept>? language;

  /// [accessionNumber] /// Entry number or identifier for inclusion in a database.
  @JsonKey(name: 'accessionNumber')
  final FhirString? accessionNumber;
  @JsonKey(name: '_accessionNumber')
  final Element? accessionNumberElement;

  /// [pageString] /// Used for full display of pagination.
  @JsonKey(name: 'pageString')
  final FhirString? pageString;
  @JsonKey(name: '_pageString')
  final Element? pageStringElement;

  /// [firstPage] /// Used for isolated representation of first page.
  @JsonKey(name: 'firstPage')
  final FhirString? firstPage;
  @JsonKey(name: '_firstPage')
  final Element? firstPageElement;

  /// [lastPage] /// Used for isolated representation of last page.
  @JsonKey(name: 'lastPage')
  final FhirString? lastPage;
  @JsonKey(name: '_lastPage')
  final Element? lastPageElement;

  /// [pageCount] /// Actual or approximate number of pages or screens.
  @JsonKey(name: 'pageCount')
  final FhirString? pageCount;
  @JsonKey(name: '_pageCount')
  final Element? pageCountElement;

  /// [copyright] /// Copyright notice for the full article or artifact.
  @JsonKey(name: 'copyright')
  final FhirMarkdown? copyright;
  @JsonKey(name: '_copyright')
  final Element? copyrightElement;
  factory CitationPublicationForm.fromJson(Map<String, dynamic> json) =>
      _$CitationPublicationFormFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CitationPublicationFormToJson(this);

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
@JsonSerializable()
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
  }) : super(fhirType: 'CitationPublishedIn');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Kind of container (e.g. Periodical, database, or book).
  @JsonKey(name: 'type')
  final CodeableConcept? type;

  /// [identifier] /// Journal identifiers include ISSN, ISO Abbreviation and NLMuniqueID; Book
  /// identifiers include ISBN.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [title] /// Name of the database or title of the book or journal.
  @JsonKey(name: 'title')
  final FhirString? title;
  @JsonKey(name: '_title')
  final Element? titleElement;

  /// [publisher] /// Name of the publisher.
  @JsonKey(name: 'publisher')
  final Reference? publisher;

  /// [publisherLocation] /// Geographic location of the publisher.
  @JsonKey(name: 'publisherLocation')
  final FhirString? publisherLocation;
  @JsonKey(name: '_publisherLocation')
  final Element? publisherLocationElement;
  factory CitationPublishedIn.fromJson(Map<String, dynamic> json) =>
      _$CitationPublishedInFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CitationPublishedInToJson(this);

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
@JsonSerializable()
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
  }) : super(fhirType: 'CitationPeriodicRelease');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [citedMedium] /// Describes the form of the medium cited. Common codes are "Internet" or
  /// "Print".
  @JsonKey(name: 'citedMedium')
  final CodeableConcept? citedMedium;

  /// [volume] /// Volume number of journal in which the article is published.
  @JsonKey(name: 'volume')
  final FhirString? volume;
  @JsonKey(name: '_volume')
  final Element? volumeElement;

  /// [issue] /// Issue, part or supplement of journal in which the article is published.
  @JsonKey(name: 'issue')
  final FhirString? issue;
  @JsonKey(name: '_issue')
  final Element? issueElement;

  /// [dateOfPublication] /// Defining the date on which the issue of the journal was published.
  @JsonKey(name: 'dateOfPublication')
  final CitationDateOfPublication? dateOfPublication;
  factory CitationPeriodicRelease.fromJson(Map<String, dynamic> json) =>
      _$CitationPeriodicReleaseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CitationPeriodicReleaseToJson(this);

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
@JsonSerializable()
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
  }) : super(fhirType: 'CitationDateOfPublication');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [date] /// Date on which the issue of the journal was published.
  @JsonKey(name: 'date')
  final FhirDate? date;
  @JsonKey(name: '_date')
  final Element? dateElement;

  /// [year] /// Year on which the issue of the journal was published.
  @JsonKey(name: 'year')
  final FhirString? year;
  @JsonKey(name: '_year')
  final Element? yearElement;

  /// [month] /// Month on which the issue of the journal was published.
  @JsonKey(name: 'month')
  final FhirString? month;
  @JsonKey(name: '_month')
  final Element? monthElement;

  /// [day] /// Day on which the issue of the journal was published.
  @JsonKey(name: 'day')
  final FhirString? day;
  @JsonKey(name: '_day')
  final Element? dayElement;

  /// [season] /// Spring, Summer, Fall/Autumn, Winter.
  @JsonKey(name: 'season')
  final FhirString? season;
  @JsonKey(name: '_season')
  final Element? seasonElement;

  /// [text] /// Text representation of the date of which the issue of the journal was
  /// published.
  @JsonKey(name: 'text')
  final FhirString? text;
  @JsonKey(name: '_text')
  final Element? textElement;
  factory CitationDateOfPublication.fromJson(Map<String, dynamic> json) =>
      _$CitationDateOfPublicationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CitationDateOfPublicationToJson(this);

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
@JsonSerializable()
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
  }) : super(fhirType: 'CitationWebLocation');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Code the reason for different URLs, e.g. abstract and full-text.
  @JsonKey(name: 'type')
  final CodeableConcept? type;

  /// [url] /// The specific URL.
  @JsonKey(name: 'url')
  final FhirUri? url;
  @JsonKey(name: '_url')
  final Element? urlElement;
  factory CitationWebLocation.fromJson(Map<String, dynamic> json) =>
      _$CitationWebLocationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CitationWebLocationToJson(this);

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
@JsonSerializable()
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
  }) : super(fhirType: 'CitationClassification1');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// The kind of classifier (e.g. publication type, keyword).
  @JsonKey(name: 'type')
  final CodeableConcept? type;

  /// [classifier] /// The specific classification value.
  @JsonKey(name: 'classifier')
  final List<CodeableConcept>? classifier;

  /// [whoClassified] /// Provenance and copyright of classification.
  @JsonKey(name: 'whoClassified')
  final CitationWhoClassified? whoClassified;
  factory CitationClassification1.fromJson(Map<String, dynamic> json) =>
      _$CitationClassification1FromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CitationClassification1ToJson(this);

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
@JsonSerializable()
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
  }) : super(fhirType: 'CitationWhoClassified');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [person] /// Person who created the classification.
  @JsonKey(name: 'person')
  final Reference? person;

  /// [organization] /// Organization who created the classification.
  @JsonKey(name: 'organization')
  final Reference? organization;

  /// [publisher] /// The publisher of the classification, not the publisher of the article or
  /// artifact being cited.
  @JsonKey(name: 'publisher')
  final Reference? publisher;

  /// [classifierCopyright] /// Rights management statement for the classification.
  @JsonKey(name: 'classifierCopyright')
  final FhirString? classifierCopyright;
  @JsonKey(name: '_classifierCopyright')
  final Element? classifierCopyrightElement;

  /// [freeToShare] /// Acceptable to re-use the classification.
  @JsonKey(name: 'freeToShare')
  final FhirBoolean? freeToShare;
  @JsonKey(name: '_freeToShare')
  final Element? freeToShareElement;
  factory CitationWhoClassified.fromJson(Map<String, dynamic> json) =>
      _$CitationWhoClassifiedFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CitationWhoClassifiedToJson(this);

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
@JsonSerializable()
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
  }) : super(fhirType: 'CitationContributorship');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [complete] /// Indicates if the list includes all authors and/or contributors.
  @JsonKey(name: 'complete')
  final FhirBoolean? complete;
  @JsonKey(name: '_complete')
  final Element? completeElement;

  /// [entry] /// An individual entity named in the author list or contributor list.
  @JsonKey(name: 'entry')
  final List<CitationEntry>? entry;

  /// [summary] /// Used to record a display of the author/contributor list without separate
  /// coding for each list member.
  @JsonKey(name: 'summary')
  final List<CitationSummary>? summary;
  factory CitationContributorship.fromJson(Map<String, dynamic> json) =>
      _$CitationContributorshipFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CitationContributorshipToJson(this);

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
@JsonSerializable()
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
  }) : super(fhirType: 'CitationEntry');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [name] /// A name associated with the individual.
  @JsonKey(name: 'name')
  final HumanName? name;

  /// [initials] /// Initials for forename.
  @JsonKey(name: 'initials')
  final FhirString? initials;
  @JsonKey(name: '_initials')
  final Element? initialsElement;

  /// [collectiveName] /// Used for collective or corporate name as an author.
  @JsonKey(name: 'collectiveName')
  final FhirString? collectiveName;
  @JsonKey(name: '_collectiveName')
  final Element? collectiveNameElement;

  /// [identifier] /// Unique person identifier.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [affiliationInfo] /// Organization affiliated with the entity.
  @JsonKey(name: 'affiliationInfo')
  final List<CitationAffiliationInfo>? affiliationInfo;

  /// [address] /// Physical mailing address for the author or contributor.
  @JsonKey(name: 'address')
  final List<Address>? address;

  /// [telecom] /// Email or telephone contact methods for the author or contributor.
  @JsonKey(name: 'telecom')
  final List<ContactPoint>? telecom;

  /// [contributionType] /// This element identifies the specific nature of an individual’s contribution
  /// with respect to the cited work.
  @JsonKey(name: 'contributionType')
  final List<CodeableConcept>? contributionType;

  /// [role] /// The role of the contributor (e.g. author, editor, reviewer).
  @JsonKey(name: 'role')
  final CodeableConcept? role;

  /// [contributionInstance] /// Contributions with accounting for time or number.
  @JsonKey(name: 'contributionInstance')
  final List<CitationContributionInstance>? contributionInstance;

  /// [correspondingContact] /// Indication of which contributor is the corresponding contributor for the
  /// role.
  @JsonKey(name: 'correspondingContact')
  final FhirBoolean? correspondingContact;
  @JsonKey(name: '_correspondingContact')
  final Element? correspondingContactElement;

  /// [listOrder] /// Used to code order of authors.
  @JsonKey(name: 'listOrder')
  final FhirPositiveInt? listOrder;
  @JsonKey(name: '_listOrder')
  final Element? listOrderElement;
  factory CitationEntry.fromJson(Map<String, dynamic> json) =>
      _$CitationEntryFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CitationEntryToJson(this);

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
@JsonSerializable()
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
  }) : super(fhirType: 'CitationAffiliationInfo');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [affiliation] /// Display for the organization.
  @JsonKey(name: 'affiliation')
  final FhirString? affiliation;
  @JsonKey(name: '_affiliation')
  final Element? affiliationElement;

  /// [role] /// Role within the organization, such as professional title.
  @JsonKey(name: 'role')
  final FhirString? role;
  @JsonKey(name: '_role')
  final Element? roleElement;

  /// [identifier] /// Identifier for the organization.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;
  factory CitationAffiliationInfo.fromJson(Map<String, dynamic> json) =>
      _$CitationAffiliationInfoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CitationAffiliationInfoToJson(this);

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
@JsonSerializable()
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
  }) : super(fhirType: 'CitationContributionInstance');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// The specific contribution.
  @JsonKey(name: 'type')
  final CodeableConcept type;

  /// [time] /// The time that the contribution was made.
  @JsonKey(name: 'time')
  final FhirDateTime? time;
  @JsonKey(name: '_time')
  final Element? timeElement;
  factory CitationContributionInstance.fromJson(Map<String, dynamic> json) =>
      _$CitationContributionInstanceFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CitationContributionInstanceToJson(this);

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
@JsonSerializable()
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
  }) : super(fhirType: 'CitationSummary1');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Used most commonly to express an author list or a contributorship
  /// statement.
  @JsonKey(name: 'type')
  final CodeableConcept? type;

  /// [style] /// The format for the display string.
  @JsonKey(name: 'style')
  final CodeableConcept? style;

  /// [source] /// Used to code the producer or rule for creating the display string.
  @JsonKey(name: 'source')
  final CodeableConcept? source;

  /// [value] /// The display string for the author list, contributor list, or
  /// contributorship statement.
  @JsonKey(name: 'value')
  final FhirMarkdown value;
  @JsonKey(name: '_value')
  final Element? valueElement;
  factory CitationSummary1.fromJson(Map<String, dynamic> json) =>
      _$CitationSummary1FromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CitationSummary1ToJson(this);

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
