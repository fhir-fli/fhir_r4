import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [EvidenceVariable] /// The EvidenceVariable resource describes an element that knowledge
/// (Evidence) is about.
class EvidenceVariable extends DomainResource {
  EvidenceVariable({
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
    this.shortTitle,
    this.shortTitleElement,
    this.subtitle,
    this.subtitleElement,
    required this.status,
    this.statusElement,
    this.date,
    this.dateElement,
    this.description,
    this.descriptionElement,
    this.note,
    this.useContext,
    this.publisher,
    this.publisherElement,
    this.contact,
    this.author,
    this.editor,
    this.reviewer,
    this.endorser,
    this.relatedArtifact,
    this.actual,
    this.actualElement,
    this.characteristicCombination,
    this.characteristicCombinationElement,
    this.characteristic,
    this.handling,
    this.handlingElement,
    this.category,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(resourceType: R4ResourceType.EvidenceVariable);

  @override
  String get fhirType => 'EvidenceVariable';

  @Id()
  int dbId = 0;

  /// [url] /// An absolute URI that is used to identify this evidence variable when it is
  /// referenced in a specification, model, design or an instance; also called
  /// its canonical identifier. This SHOULD be globally unique and SHOULD be a
  /// literal address at which at which an authoritative instance of this
  /// evidence variable is (or will be) published. This URL can be the target of
  /// a canonical reference. It SHALL remain the same when the evidence variable
  /// is stored on different servers.
  final FhirUri? url;
  final Element? urlElement;

  /// [identifier] /// A formal identifier that is used to identify this evidence variable when it
  /// is represented in other formats, or referenced in a specification, model,
  /// design or an instance.
  final List<Identifier>? identifier;

  /// [version] /// The identifier that is used to identify this version of the evidence
  /// variable when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the evidence variable
  /// author and is not expected to be globally unique. For example, it might be
  /// a timestamp (e.g. yyyymmdd) if a managed version is not available. There is
  /// also no expectation that versions can be placed in a lexicographical
  /// sequence. To provide a version consistent with the Decision Support Service
  /// specification, use the format Major.Minor.Revision (e.g. 1.0.0). For more
  /// information on versioning knowledge assets, refer to the Decision Support
  /// Service specification. Note that a version is required for non-experimental
  /// active artifacts.
  final FhirString? version;
  final Element? versionElement;

  /// [name] /// A natural language name identifying the evidence variable. This name should
  /// be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString? name;
  final Element? nameElement;

  /// [title] /// A short, descriptive, user-friendly title for the evidence variable.
  final FhirString? title;
  final Element? titleElement;

  /// [shortTitle] /// The short title provides an alternate title for use in informal descriptive
  /// contexts where the full, formal title is not necessary.
  final FhirString? shortTitle;
  final Element? shortTitleElement;

  /// [subtitle] /// An explanatory or alternate title for the EvidenceVariable giving
  /// additional information about its content.
  final FhirString? subtitle;
  final Element? subtitleElement;

  /// [status] /// The status of this evidence variable. Enables tracking the life-cycle of
  /// the content.
  final PublicationStatus status;
  final Element? statusElement;

  /// [date] /// The date (and optionally time) when the evidence variable was published.
  /// The date must change when the business version changes and it must change
  /// if the status code changes. In addition, it should change when the
  /// substantive content of the evidence variable changes.
  final FhirDateTime? date;
  final Element? dateElement;

  /// [description] /// A free text natural language description of the evidence variable from a
  /// consumer's perspective.
  final FhirMarkdown? description;
  final Element? descriptionElement;

  /// [note] /// A human-readable string to clarify or explain concepts about the resource.
  final List<Annotation>? note;

  /// [useContext] /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories (gender,
  /// age, ...) or may be references to specific programs (insurance plans,
  /// studies, ...) and may be used to assist with indexing and searching for
  /// appropriate evidence variable instances.
  final List<UsageContext>? useContext;

  /// [publisher] /// The name of the organization or individual that published the evidence
  /// variable.
  final FhirString? publisher;
  final Element? publisherElement;

  /// [contact] /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [author] /// An individiual or organization primarily involved in the creation and
  /// maintenance of the content.
  final List<ContactDetail>? author;

  /// [editor] /// An individual or organization primarily responsible for internal coherence
  /// of the content.
  final List<ContactDetail>? editor;

  /// [reviewer] /// An individual or organization primarily responsible for review of some
  /// aspect of the content.
  final List<ContactDetail>? reviewer;

  /// [endorser] /// An individual or organization responsible for officially endorsing the
  /// content for use in some setting.
  final List<ContactDetail>? endorser;

  /// [relatedArtifact] /// Related artifacts such as additional documentation, justification, or
  /// bibliographic references.
  final List<RelatedArtifact>? relatedArtifact;

  /// [actual] /// True if the actual variable measured, false if a conceptual representation
  /// of the intended variable.
  final FhirBoolean? actual;
  final Element? actualElement;

  /// [characteristicCombination] /// Used to specify if two or more characteristics are combined with OR or AND.
  final CharacteristicCombination? characteristicCombination;
  final Element? characteristicCombinationElement;

  /// [characteristic] /// A characteristic that defines the members of the evidence element. Multiple
  /// characteristics are applied with "and" semantics.
  final List<EvidenceVariableCharacteristic>? characteristic;

  /// [handling] /// Used for an outcome to classify.
  final EvidenceVariableHandling? handling;
  final Element? handlingElement;

  /// [category] /// A grouping (or set of values) described along with other groupings to
  /// specify the set of groupings allowed for the variable.
  final List<EvidenceVariableCategory>? category;
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
    if (name?.value != null) {
      json['name'] = name!.value;
    }
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    if (title?.value != null) {
      json['title'] = title!.value;
    }
    if (titleElement != null) {
      json['_title'] = titleElement!.toJson();
    }
    if (shortTitle?.value != null) {
      json['shortTitle'] = shortTitle!.value;
    }
    if (shortTitleElement != null) {
      json['_shortTitle'] = shortTitleElement!.toJson();
    }
    if (subtitle?.value != null) {
      json['subtitle'] = subtitle!.value;
    }
    if (subtitleElement != null) {
      json['_subtitle'] = subtitleElement!.toJson();
    }
    json['status'] = status.toJson();
    if (date?.value != null) {
      json['date'] = date!.value;
    }
    if (dateElement != null) {
      json['_date'] = dateElement!.toJson();
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
    if (useContext != null && useContext!.isNotEmpty) {
      json['useContext'] =
          useContext!.map<dynamic>((UsageContext v) => v.toJson()).toList();
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
    if (actual?.value != null) {
      json['actual'] = actual!.value;
    }
    if (actualElement != null) {
      json['_actual'] = actualElement!.toJson();
    }
    if (characteristicCombination != null) {
      json['characteristicCombination'] = characteristicCombination!.toJson();
    }
    if (characteristic != null && characteristic!.isNotEmpty) {
      json['characteristic'] = characteristic!
          .map<dynamic>((EvidenceVariableCharacteristic v) => v.toJson())
          .toList();
    }
    if (handling != null) {
      json['handling'] = handling!.toJson();
    }
    if (category != null && category!.isNotEmpty) {
      json['category'] = category!
          .map<dynamic>((EvidenceVariableCategory v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory EvidenceVariable.fromJson(Map<String, dynamic> json) {
    return EvidenceVariable(
      id: json['id'] != null ? FhirString(json['id']) : null,
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
      name: json['name'] != null ? FhirString(json['name']) : null,
      nameElement: json['_name'] != null
          ? Element.fromJson(json['_name'] as Map<String, dynamic>)
          : null,
      title: json['title'] != null ? FhirString(json['title']) : null,
      titleElement: json['_title'] != null
          ? Element.fromJson(json['_title'] as Map<String, dynamic>)
          : null,
      shortTitle:
          json['shortTitle'] != null ? FhirString(json['shortTitle']) : null,
      shortTitleElement: json['_shortTitle'] != null
          ? Element.fromJson(json['_shortTitle'] as Map<String, dynamic>)
          : null,
      subtitle: json['subtitle'] != null ? FhirString(json['subtitle']) : null,
      subtitleElement: json['_subtitle'] != null
          ? Element.fromJson(json['_subtitle'] as Map<String, dynamic>)
          : null,
      status:
          PublicationStatus.fromJson(json['status'] as Map<String, dynamic>),
      date: json['date'] != null ? FhirDateTime(json['date']) : null,
      dateElement: json['_date'] != null
          ? Element.fromJson(json['_date'] as Map<String, dynamic>)
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
      useContext: json['useContext'] != null
          ? (json['useContext'] as List<dynamic>)
              .map<UsageContext>((dynamic v) =>
                  UsageContext.fromJson(v as Map<String, dynamic>))
              .toList()
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
      actual: json['actual'] != null ? FhirBoolean(json['actual']) : null,
      actualElement: json['_actual'] != null
          ? Element.fromJson(json['_actual'] as Map<String, dynamic>)
          : null,
      characteristicCombination: json['characteristicCombination'] != null
          ? CharacteristicCombination.fromJson(
              json['characteristicCombination'] as Map<String, dynamic>)
          : null,
      characteristic: json['characteristic'] != null
          ? (json['characteristic'] as List<dynamic>)
              .map<EvidenceVariableCharacteristic>((dynamic v) =>
                  EvidenceVariableCharacteristic.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      handling: json['handling'] != null
          ? EvidenceVariableHandling.fromJson(
              json['handling'] as Map<String, dynamic>)
          : null,
      category: json['category'] != null
          ? (json['category'] as List<dynamic>)
              .map<EvidenceVariableCategory>((dynamic v) =>
                  EvidenceVariableCategory.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  EvidenceVariable clone() => throw UnimplementedError();
  @override
  EvidenceVariable copyWith({
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
    FhirString? shortTitle,
    Element? shortTitleElement,
    FhirString? subtitle,
    Element? subtitleElement,
    PublicationStatus? status,
    Element? statusElement,
    FhirDateTime? date,
    Element? dateElement,
    FhirMarkdown? description,
    Element? descriptionElement,
    List<Annotation>? note,
    List<UsageContext>? useContext,
    FhirString? publisher,
    Element? publisherElement,
    List<ContactDetail>? contact,
    List<ContactDetail>? author,
    List<ContactDetail>? editor,
    List<ContactDetail>? reviewer,
    List<ContactDetail>? endorser,
    List<RelatedArtifact>? relatedArtifact,
    FhirBoolean? actual,
    Element? actualElement,
    CharacteristicCombination? characteristicCombination,
    Element? characteristicCombinationElement,
    List<EvidenceVariableCharacteristic>? characteristic,
    EvidenceVariableHandling? handling,
    Element? handlingElement,
    List<EvidenceVariableCategory>? category,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return EvidenceVariable(
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
      shortTitle: shortTitle ?? this.shortTitle,
      shortTitleElement: shortTitleElement ?? this.shortTitleElement,
      subtitle: subtitle ?? this.subtitle,
      subtitleElement: subtitleElement ?? this.subtitleElement,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      date: date ?? this.date,
      dateElement: dateElement ?? this.dateElement,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      note: note ?? this.note,
      useContext: useContext ?? this.useContext,
      publisher: publisher ?? this.publisher,
      publisherElement: publisherElement ?? this.publisherElement,
      contact: contact ?? this.contact,
      author: author ?? this.author,
      editor: editor ?? this.editor,
      reviewer: reviewer ?? this.reviewer,
      endorser: endorser ?? this.endorser,
      relatedArtifact: relatedArtifact ?? this.relatedArtifact,
      actual: actual ?? this.actual,
      actualElement: actualElement ?? this.actualElement,
      characteristicCombination:
          characteristicCombination ?? this.characteristicCombination,
      characteristicCombinationElement: characteristicCombinationElement ??
          this.characteristicCombinationElement,
      characteristic: characteristic ?? this.characteristic,
      handling: handling ?? this.handling,
      handlingElement: handlingElement ?? this.handlingElement,
      category: category ?? this.category,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory EvidenceVariable.fromYaml(dynamic yaml) => yaml is String
      ? EvidenceVariable.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? EvidenceVariable.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'EvidenceVariable cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory EvidenceVariable.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EvidenceVariable.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [EvidenceVariableCharacteristic] /// A characteristic that defines the members of the evidence element. Multiple
/// characteristics are applied with "and" semantics.
class EvidenceVariableCharacteristic extends BackboneElement {
  EvidenceVariableCharacteristic({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.descriptionElement,
    this.definitionReference,
    this.definitionCanonical,
    this.definitionCanonicalElement,
    this.definitionCodeableConcept,
    this.definitionExpression,
    this.method,
    this.device,
    this.exclude,
    this.excludeElement,
    this.timeFromStart,
    this.groupMeasure,
    this.groupMeasureElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'EvidenceVariableCharacteristic';

  @Id()
  int dbId = 0;

  /// [description] /// A short, natural language description of the characteristic that could be
  /// used to communicate the criteria to an end-user.
  final FhirString? description;
  final Element? descriptionElement;

  /// [definitionReference] /// Define members of the evidence element using Codes (such as condition,
  /// medication, or observation), Expressions ( using an expression language
  /// such as FHIRPath or CQL) or DataRequirements (such as Diabetes diagnosis
  /// onset in the last year).
  final Reference? definitionReference;

  /// [definitionCanonical] /// Define members of the evidence element using Codes (such as condition,
  /// medication, or observation), Expressions ( using an expression language
  /// such as FHIRPath or CQL) or DataRequirements (such as Diabetes diagnosis
  /// onset in the last year).
  final FhirCanonical? definitionCanonical;
  final Element? definitionCanonicalElement;

  /// [definitionCodeableConcept] /// Define members of the evidence element using Codes (such as condition,
  /// medication, or observation), Expressions ( using an expression language
  /// such as FHIRPath or CQL) or DataRequirements (such as Diabetes diagnosis
  /// onset in the last year).
  final CodeableConcept? definitionCodeableConcept;

  /// [definitionExpression] /// Define members of the evidence element using Codes (such as condition,
  /// medication, or observation), Expressions ( using an expression language
  /// such as FHIRPath or CQL) or DataRequirements (such as Diabetes diagnosis
  /// onset in the last year).
  final FhirExpression? definitionExpression;

  /// [method] /// Method used for describing characteristic.
  final CodeableConcept? method;

  /// [device] /// Device used for determining characteristic.
  final Reference? device;

  /// [exclude] /// When true, members with this characteristic are excluded from the element.
  final FhirBoolean? exclude;
  final Element? excludeElement;

  /// [timeFromStart] /// Indicates duration, period, or point of observation from the participant's
  /// study entry.
  final EvidenceVariableTimeFromStart? timeFromStart;

  /// [groupMeasure] /// Indicates how elements are aggregated within the study effective period.
  final GroupMeasure? groupMeasure;
  final Element? groupMeasureElement;
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
    if (definitionReference != null) {
      json['definitionReference'] = definitionReference!.toJson();
    }
    if (definitionCanonical?.value != null) {
      json['definitionCanonical'] = definitionCanonical!.value;
    }
    if (definitionCanonicalElement != null) {
      json['_definitionCanonical'] = definitionCanonicalElement!.toJson();
    }
    if (definitionCodeableConcept != null) {
      json['definitionCodeableConcept'] = definitionCodeableConcept!.toJson();
    }
    if (definitionExpression != null) {
      json['definitionExpression'] = definitionExpression!.toJson();
    }
    if (method != null) {
      json['method'] = method!.toJson();
    }
    if (device != null) {
      json['device'] = device!.toJson();
    }
    if (exclude?.value != null) {
      json['exclude'] = exclude!.value;
    }
    if (excludeElement != null) {
      json['_exclude'] = excludeElement!.toJson();
    }
    if (timeFromStart != null) {
      json['timeFromStart'] = timeFromStart!.toJson();
    }
    if (groupMeasure != null) {
      json['groupMeasure'] = groupMeasure!.toJson();
    }
    return json;
  }

  factory EvidenceVariableCharacteristic.fromJson(Map<String, dynamic> json) {
    return EvidenceVariableCharacteristic(
      id: json['id'] != null ? FhirString(json['id']) : null,
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
      definitionReference: json['definitionReference'] != null
          ? Reference.fromJson(
              json['definitionReference'] as Map<String, dynamic>)
          : null,
      definitionCanonical: json['definitionCanonical'] != null
          ? FhirCanonical(json['definitionCanonical'])
          : null,
      definitionCanonicalElement: json['_definitionCanonical'] != null
          ? Element.fromJson(
              json['_definitionCanonical'] as Map<String, dynamic>)
          : null,
      definitionCodeableConcept: json['definitionCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['definitionCodeableConcept'] as Map<String, dynamic>)
          : null,
      definitionExpression: json['definitionExpression'] != null
          ? FhirExpression.fromJson(
              json['definitionExpression'] as Map<String, dynamic>)
          : null,
      method: json['method'] != null
          ? CodeableConcept.fromJson(json['method'] as Map<String, dynamic>)
          : null,
      device: json['device'] != null
          ? Reference.fromJson(json['device'] as Map<String, dynamic>)
          : null,
      exclude: json['exclude'] != null ? FhirBoolean(json['exclude']) : null,
      excludeElement: json['_exclude'] != null
          ? Element.fromJson(json['_exclude'] as Map<String, dynamic>)
          : null,
      timeFromStart: json['timeFromStart'] != null
          ? EvidenceVariableTimeFromStart.fromJson(
              json['timeFromStart'] as Map<String, dynamic>)
          : null,
      groupMeasure: json['groupMeasure'] != null
          ? GroupMeasure.fromJson(json['groupMeasure'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  EvidenceVariableCharacteristic clone() => throw UnimplementedError();
  @override
  EvidenceVariableCharacteristic copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    Element? descriptionElement,
    Reference? definitionReference,
    FhirCanonical? definitionCanonical,
    Element? definitionCanonicalElement,
    CodeableConcept? definitionCodeableConcept,
    FhirExpression? definitionExpression,
    CodeableConcept? method,
    Reference? device,
    FhirBoolean? exclude,
    Element? excludeElement,
    EvidenceVariableTimeFromStart? timeFromStart,
    GroupMeasure? groupMeasure,
    Element? groupMeasureElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return EvidenceVariableCharacteristic(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      definitionReference: definitionReference ?? this.definitionReference,
      definitionCanonical: definitionCanonical ?? this.definitionCanonical,
      definitionCanonicalElement:
          definitionCanonicalElement ?? this.definitionCanonicalElement,
      definitionCodeableConcept:
          definitionCodeableConcept ?? this.definitionCodeableConcept,
      definitionExpression: definitionExpression ?? this.definitionExpression,
      method: method ?? this.method,
      device: device ?? this.device,
      exclude: exclude ?? this.exclude,
      excludeElement: excludeElement ?? this.excludeElement,
      timeFromStart: timeFromStart ?? this.timeFromStart,
      groupMeasure: groupMeasure ?? this.groupMeasure,
      groupMeasureElement: groupMeasureElement ?? this.groupMeasureElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory EvidenceVariableCharacteristic.fromYaml(dynamic yaml) => yaml
          is String
      ? EvidenceVariableCharacteristic.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? EvidenceVariableCharacteristic.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'EvidenceVariableCharacteristic cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory EvidenceVariableCharacteristic.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EvidenceVariableCharacteristic.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [EvidenceVariableTimeFromStart] /// Indicates duration, period, or point of observation from the participant's
/// study entry.
class EvidenceVariableTimeFromStart extends BackboneElement {
  EvidenceVariableTimeFromStart({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.descriptionElement,
    this.quantity,
    this.range,
    this.note,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'EvidenceVariableTimeFromStart';

  @Id()
  int dbId = 0;

  /// [description] /// A short, natural language description.
  final FhirString? description;
  final Element? descriptionElement;

  /// [quantity] /// Used to express the observation at a defined amount of time after the study
  /// start.
  final Quantity? quantity;

  /// [range] /// Used to express the observation within a period after the study start.
  final Range? range;

  /// [note] /// A human-readable string to clarify or explain concepts about the resource.
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
    if (description?.value != null) {
      json['description'] = description!.value;
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (quantity != null) {
      json['quantity'] = quantity!.toJson();
    }
    if (range != null) {
      json['range'] = range!.toJson();
    }
    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map<dynamic>((Annotation v) => v.toJson()).toList();
    }
    return json;
  }

  factory EvidenceVariableTimeFromStart.fromJson(Map<String, dynamic> json) {
    return EvidenceVariableTimeFromStart(
      id: json['id'] != null ? FhirString(json['id']) : null,
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
      quantity: json['quantity'] != null
          ? Quantity.fromJson(json['quantity'] as Map<String, dynamic>)
          : null,
      range: json['range'] != null
          ? Range.fromJson(json['range'] as Map<String, dynamic>)
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
  EvidenceVariableTimeFromStart clone() => throw UnimplementedError();
  @override
  EvidenceVariableTimeFromStart copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    Element? descriptionElement,
    Quantity? quantity,
    Range? range,
    List<Annotation>? note,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return EvidenceVariableTimeFromStart(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      quantity: quantity ?? this.quantity,
      range: range ?? this.range,
      note: note ?? this.note,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory EvidenceVariableTimeFromStart.fromYaml(dynamic yaml) => yaml is String
      ? EvidenceVariableTimeFromStart.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? EvidenceVariableTimeFromStart.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'EvidenceVariableTimeFromStart cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory EvidenceVariableTimeFromStart.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EvidenceVariableTimeFromStart.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [EvidenceVariableCategory] /// A grouping (or set of values) described along with other groupings to
/// specify the set of groupings allowed for the variable.
class EvidenceVariableCategory extends BackboneElement {
  EvidenceVariableCategory({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
    this.nameElement,
    this.valueCodeableConcept,
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
  String get fhirType => 'EvidenceVariableCategory';

  @Id()
  int dbId = 0;

  /// [name] /// A human-readable title or representation of the grouping.
  final FhirString? name;
  final Element? nameElement;

  /// [valueCodeableConcept] /// Value or set of values that define the grouping.
  final CodeableConcept? valueCodeableConcept;

  /// [valueQuantity] /// Value or set of values that define the grouping.
  final Quantity? valueQuantity;

  /// [valueRange] /// Value or set of values that define the grouping.
  final Range? valueRange;
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
    if (name?.value != null) {
      json['name'] = name!.value;
    }
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    if (valueCodeableConcept != null) {
      json['valueCodeableConcept'] = valueCodeableConcept!.toJson();
    }
    if (valueQuantity != null) {
      json['valueQuantity'] = valueQuantity!.toJson();
    }
    if (valueRange != null) {
      json['valueRange'] = valueRange!.toJson();
    }
    return json;
  }

  factory EvidenceVariableCategory.fromJson(Map<String, dynamic> json) {
    return EvidenceVariableCategory(
      id: json['id'] != null ? FhirString(json['id']) : null,
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
      name: json['name'] != null ? FhirString(json['name']) : null,
      nameElement: json['_name'] != null
          ? Element.fromJson(json['_name'] as Map<String, dynamic>)
          : null,
      valueCodeableConcept: json['valueCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['valueCodeableConcept'] as Map<String, dynamic>)
          : null,
      valueQuantity: json['valueQuantity'] != null
          ? Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>)
          : null,
      valueRange: json['valueRange'] != null
          ? Range.fromJson(json['valueRange'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  EvidenceVariableCategory clone() => throw UnimplementedError();
  @override
  EvidenceVariableCategory copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    Element? nameElement,
    CodeableConcept? valueCodeableConcept,
    Quantity? valueQuantity,
    Range? valueRange,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return EvidenceVariableCategory(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      valueCodeableConcept: valueCodeableConcept ?? this.valueCodeableConcept,
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

  factory EvidenceVariableCategory.fromYaml(dynamic yaml) => yaml is String
      ? EvidenceVariableCategory.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? EvidenceVariableCategory.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'EvidenceVariableCategory cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory EvidenceVariableCategory.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EvidenceVariableCategory.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
