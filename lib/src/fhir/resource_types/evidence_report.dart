import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'evidence_report.g.dart';

/// [EvidenceReport] /// The EvidenceReport Resource is a specialized container for a collection of
/// resources and codable concepts, adapted to support compositions of
/// Evidence, EvidenceVariable, and Citation resources and related concepts.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    // ignore: avoid_unused_constructor_parameters
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.EvidenceReport);
  @override
  String get fhirType => 'EvidenceReport';
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
  @JsonKey(name: 'url')
  final FhirUri? url;
  @JsonKey(name: '_url')
  final Element? urlElement;

  /// [status] /// The status of this summary. Enables tracking the life-cycle of the content.
  @JsonKey(name: 'status')
  final PublicationStatus status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [useContext] /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories (gender,
  /// age, ...) or may be references to specific programs (insurance plans,
  /// studies, ...) and may be used to assist with indexing and searching for
  /// appropriate evidence report instances.
  @JsonKey(name: 'useContext')
  final List<UsageContext>? useContext;

  /// [identifier] /// A formal identifier that is used to identify this EvidenceReport when it is
  /// represented in other formats, or referenced in a specification, model,
  /// design or an instance.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [relatedIdentifier] /// A formal identifier that is used to identify things closely related to this
  /// EvidenceReport.
  @JsonKey(name: 'relatedIdentifier')
  final List<Identifier>? relatedIdentifier;

  /// [citeAsReference] /// Citation Resource or display of suggested citation for this report.
  @JsonKey(name: 'citeAsReference')
  final Reference? citeAsReference;

  /// [citeAsMarkdown] /// Citation Resource or display of suggested citation for this report.
  @JsonKey(name: 'citeAsMarkdown')
  final FhirMarkdown? citeAsMarkdown;
  @JsonKey(name: '_citeAsMarkdown')
  final Element? citeAsMarkdownElement;

  /// [type] /// Specifies the kind of report, such as grouping of classifiers, search
  /// results, or human-compiled expression.
  @JsonKey(name: 'type')
  final CodeableConcept? type;

  /// [note] /// Used for footnotes and annotations.
  @JsonKey(name: 'note')
  final List<Annotation>? note;

  /// [relatedArtifact] /// Link, description or reference to artifact associated with the report.
  @JsonKey(name: 'relatedArtifact')
  final List<RelatedArtifact>? relatedArtifact;

  /// [subject] /// Specifies the subject or focus of the report. Answers "What is this report
  /// about?".
  @JsonKey(name: 'subject')
  final EvidenceReportSubject subject;

  /// [publisher] /// The name of the organization or individual that published the evidence
  /// report.
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

  /// [relatesTo] /// Relationships that this composition has with other compositions or
  /// documents that already exist.
  @JsonKey(name: 'relatesTo')
  final List<EvidenceReportRelatesTo>? relatesTo;

  /// [section] /// The root of the sections that make up the composition.
  @JsonKey(name: 'section')
  final List<EvidenceReportSection>? section;
  factory EvidenceReport.fromJson(Map<String, dynamic> json) =>
      _$EvidenceReportFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$EvidenceReportToJson(this);

  @override
  EvidenceReport clone() => throw UnimplementedError();
  @override
  EvidenceReport copyWith({
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
    PublicationStatus? status,
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory EvidenceReport.fromYaml(dynamic yaml) => yaml is String
      ? EvidenceReport.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? EvidenceReport.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'EvidenceReport cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory EvidenceReport.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EvidenceReport.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [EvidenceReportSubject] /// Specifies the subject or focus of the report. Answers "What is this report
/// about?".
@JsonSerializable()
class EvidenceReportSubject extends BackboneElement {
  EvidenceReportSubject({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.characteristic,
    this.note,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'EvidenceReportSubject';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [characteristic] /// Characteristic.
  @JsonKey(name: 'characteristic')
  final List<EvidenceReportCharacteristic>? characteristic;

  /// [note] /// Used for general notes and annotations not coded elsewhere.
  @JsonKey(name: 'note')
  final List<Annotation>? note;
  factory EvidenceReportSubject.fromJson(Map<String, dynamic> json) =>
      _$EvidenceReportSubjectFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$EvidenceReportSubjectToJson(this);

  @override
  EvidenceReportSubject clone() => throw UnimplementedError();
  @override
  EvidenceReportSubject copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<EvidenceReportCharacteristic>? characteristic,
    List<Annotation>? note,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return EvidenceReportSubject(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      characteristic: characteristic ?? this.characteristic,
      note: note ?? this.note,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory EvidenceReportSubject.fromYaml(dynamic yaml) => yaml is String
      ? EvidenceReportSubject.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? EvidenceReportSubject.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'EvidenceReportSubject cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory EvidenceReportSubject.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EvidenceReportSubject.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [EvidenceReportCharacteristic] /// Characteristic.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'EvidenceReportCharacteristic';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// Characteristic code.
  @JsonKey(name: 'code')
  final CodeableConcept code;

  /// [valueReference] /// Characteristic value.
  @JsonKey(name: 'valueReference')
  final Reference valueReference;

  /// [valueCodeableConcept] /// Characteristic value.
  @JsonKey(name: 'valueCodeableConcept')
  final CodeableConcept valueCodeableConcept;

  /// [valueBoolean] /// Characteristic value.
  @JsonKey(name: 'valueBoolean')
  final FhirBoolean valueBoolean;
  @JsonKey(name: '_valueBoolean')
  final Element? valueBooleanElement;

  /// [valueQuantity] /// Characteristic value.
  @JsonKey(name: 'valueQuantity')
  final Quantity valueQuantity;

  /// [valueRange] /// Characteristic value.
  @JsonKey(name: 'valueRange')
  final Range valueRange;

  /// [exclude] /// Is used to express not the characteristic.
  @JsonKey(name: 'exclude')
  final FhirBoolean? exclude;
  @JsonKey(name: '_exclude')
  final Element? excludeElement;

  /// [period] /// Timeframe for the characteristic.
  @JsonKey(name: 'period')
  final Period? period;
  factory EvidenceReportCharacteristic.fromJson(Map<String, dynamic> json) =>
      _$EvidenceReportCharacteristicFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$EvidenceReportCharacteristicToJson(this);

  @override
  EvidenceReportCharacteristic clone() => throw UnimplementedError();
  @override
  EvidenceReportCharacteristic copyWith({
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory EvidenceReportCharacteristic.fromYaml(dynamic yaml) => yaml is String
      ? EvidenceReportCharacteristic.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? EvidenceReportCharacteristic.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'EvidenceReportCharacteristic cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory EvidenceReportCharacteristic.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EvidenceReportCharacteristic.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [EvidenceReportRelatesTo] /// Relationships that this composition has with other compositions or
/// documents that already exist.
@JsonSerializable()
class EvidenceReportRelatesTo extends BackboneElement {
  EvidenceReportRelatesTo({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.codeElement,
    required this.targetIdentifier,
    required this.targetReference,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'EvidenceReportRelatesTo';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// The type of relationship that this composition has with anther composition
  /// or document.
  @JsonKey(name: 'code')
  final ReportRelationshipType code;
  @JsonKey(name: '_code')
  final Element? codeElement;

  /// [targetIdentifier] /// The target composition/document of this relationship.
  @JsonKey(name: 'targetIdentifier')
  final Identifier targetIdentifier;

  /// [targetReference] /// The target composition/document of this relationship.
  @JsonKey(name: 'targetReference')
  final Reference targetReference;
  factory EvidenceReportRelatesTo.fromJson(Map<String, dynamic> json) =>
      _$EvidenceReportRelatesToFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$EvidenceReportRelatesToToJson(this);

  @override
  EvidenceReportRelatesTo clone() => throw UnimplementedError();
  @override
  EvidenceReportRelatesTo copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ReportRelationshipType? code,
    Element? codeElement,
    Identifier? targetIdentifier,
    Reference? targetReference,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return EvidenceReportRelatesTo(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      codeElement: codeElement ?? this.codeElement,
      targetIdentifier: targetIdentifier ?? this.targetIdentifier,
      targetReference: targetReference ?? this.targetReference,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory EvidenceReportRelatesTo.fromYaml(dynamic yaml) => yaml is String
      ? EvidenceReportRelatesTo.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? EvidenceReportRelatesTo.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'EvidenceReportRelatesTo cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory EvidenceReportRelatesTo.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EvidenceReportRelatesTo.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [EvidenceReportSection] /// The root of the sections that make up the composition.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'EvidenceReportSection';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [title] /// The label for this particular section. This will be part of the rendered
  /// content for the document, and is often used to build a table of contents.
  @JsonKey(name: 'title')
  final FhirString? title;
  @JsonKey(name: '_title')
  final Element? titleElement;

  /// [focus] /// A code identifying the kind of content contained within the section. This
  /// should be consistent with the section title.
  @JsonKey(name: 'focus')
  final CodeableConcept? focus;

  /// [focusReference] /// A definitional Resource identifying the kind of content contained within
  /// the section. This should be consistent with the section title.
  @JsonKey(name: 'focusReference')
  final Reference? focusReference;

  /// [author] /// Identifies who is responsible for the information in this section, not
  /// necessarily who typed it in.
  @JsonKey(name: 'author')
  final List<Reference>? author;

  /// [text] /// A human-readable narrative that contains the attested content of the
  /// section, used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is peferred to
  /// contain sufficient detail to make it acceptable for a human to just read
  /// the narrative.
  @JsonKey(name: 'text')
  final Narrative? text;

  /// [mode] /// How the entry list was prepared - whether it is a working list that is
  /// suitable for being maintained on an ongoing basis, or if it represents a
  /// snapshot of a list of items from another source, or whether it is a
  /// prepared list where items may be marked as added, modified or deleted.
  @JsonKey(name: 'mode')
  final ListMode? mode;
  @JsonKey(name: '_mode')
  final Element? modeElement;

  /// [orderedBy] /// Specifies the order applied to the items in the section entries.
  @JsonKey(name: 'orderedBy')
  final CodeableConcept? orderedBy;

  /// [entryClassifier] /// Specifies any type of classification of the evidence report.
  @JsonKey(name: 'entryClassifier')
  final List<CodeableConcept>? entryClassifier;

  /// [entryReference] /// A reference to the actual resource from which the narrative in the section
  /// is derived.
  @JsonKey(name: 'entryReference')
  final List<Reference>? entryReference;

  /// [entryQuantity] /// Quantity as content.
  @JsonKey(name: 'entryQuantity')
  final List<Quantity>? entryQuantity;

  /// [emptyReason] /// If the section is empty, why the list is empty. An empty section typically
  /// has some text explaining the empty reason.
  @JsonKey(name: 'emptyReason')
  final CodeableConcept? emptyReason;

  /// [section] /// A nested sub-section within this section.
  @JsonKey(name: 'section')
  final List<EvidenceReportSection>? section;
  factory EvidenceReportSection.fromJson(Map<String, dynamic> json) =>
      _$EvidenceReportSectionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$EvidenceReportSectionToJson(this);

  @override
  EvidenceReportSection clone() => throw UnimplementedError();
  @override
  EvidenceReportSection copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? title,
    Element? titleElement,
    CodeableConcept? focus,
    Reference? focusReference,
    List<Reference>? author,
    Narrative? text,
    ListMode? mode,
    Element? modeElement,
    CodeableConcept? orderedBy,
    List<CodeableConcept>? entryClassifier,
    List<Reference>? entryReference,
    List<Quantity>? entryQuantity,
    CodeableConcept? emptyReason,
    List<EvidenceReportSection>? section,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory EvidenceReportSection.fromYaml(dynamic yaml) => yaml is String
      ? EvidenceReportSection.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? EvidenceReportSection.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'EvidenceReportSection cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory EvidenceReportSection.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EvidenceReportSection.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
