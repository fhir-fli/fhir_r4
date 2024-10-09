import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [ConceptMap] /// A statement of relationships from one set of concepts to one or more other
/// concepts - either concepts in code systems, or data element/data element
/// concepts, or classes in class models.
class ConceptMap extends DomainResource {
  ConceptMap({
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
    this.sourceUri,
    this.sourceUriElement,
    this.sourceCanonical,
    this.sourceCanonicalElement,
    this.targetUri,
    this.targetUriElement,
    this.targetCanonical,
    this.targetCanonicalElement,
    this.group,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(resourceType: R4ResourceType.ConceptMap);

  @override
  String get fhirType => 'ConceptMap';

  @Id()
  int dbId = 0;

  /// [url] /// An absolute URI that is used to identify this concept map when it is
  /// referenced in a specification, model, design or an instance; also called
  /// its canonical identifier. This SHOULD be globally unique and SHOULD be a
  /// literal address at which at which an authoritative instance of this concept
  /// map is (or will be) published. This URL can be the target of a canonical
  /// reference. It SHALL remain the same when the concept map is stored on
  /// different servers.
  final FhirUri? url;
  final Element? urlElement;

  /// [identifier] /// A formal identifier that is used to identify this concept map when it is
  /// represented in other formats, or referenced in a specification, model,
  /// design or an instance.
  final Identifier? identifier;

  /// [version] /// The identifier that is used to identify this version of the concept map
  /// when it is referenced in a specification, model, design or instance. This
  /// is an arbitrary value managed by the concept map author and is not expected
  /// to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd)
  /// if a managed version is not available. There is also no expectation that
  /// versions can be placed in a lexicographical sequence.
  final FhirString? version;
  final Element? versionElement;

  /// [name] /// A natural language name identifying the concept map. This name should be
  /// usable as an identifier for the module by machine processing applications
  /// such as code generation.
  final FhirString? name;
  final Element? nameElement;

  /// [title] /// A short, descriptive, user-friendly title for the concept map.
  final FhirString? title;
  final Element? titleElement;

  /// [status] /// The status of this concept map. Enables tracking the life-cycle of the
  /// content.
  final PublicationStatus status;
  final Element? statusElement;

  /// [experimental] /// A Boolean value to indicate that this concept map is authored for testing
  /// purposes (or education/evaluation/marketing) and is not intended to be used
  /// for genuine usage.
  final FhirBoolean? experimental;
  final Element? experimentalElement;

  /// [date] /// The date (and optionally time) when the concept map was published. The date
  /// must change when the business version changes and it must change if the
  /// status code changes. In addition, it should change when the substantive
  /// content of the concept map changes.
  final FhirDateTime? date;
  final Element? dateElement;

  /// [publisher] /// The name of the organization or individual that published the concept map.
  final FhirString? publisher;
  final Element? publisherElement;

  /// [contact] /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [description] /// A free text natural language description of the concept map from a
  /// consumer's perspective.
  final FhirMarkdown? description;
  final Element? descriptionElement;

  /// [useContext] /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories (gender,
  /// age, ...) or may be references to specific programs (insurance plans,
  /// studies, ...) and may be used to assist with indexing and searching for
  /// appropriate concept map instances.
  final List<UsageContext>? useContext;

  /// [jurisdiction] /// A legal or geographic region in which the concept map is intended to be
  /// used.
  final List<CodeableConcept>? jurisdiction;

  /// [purpose] /// Explanation of why this concept map is needed and why it has been designed
  /// as it has.
  final FhirMarkdown? purpose;
  final Element? purposeElement;

  /// [copyright] /// A copyright statement relating to the concept map and/or its contents.
  /// Copyright statements are generally legal restrictions on the use and
  /// publishing of the concept map.
  final FhirMarkdown? copyright;
  final Element? copyrightElement;

  /// [sourceUri] /// Identifier for the source value set that contains the concepts that are
  /// being mapped and provides context for the mappings.
  final FhirUri? sourceUri;
  final Element? sourceUriElement;

  /// [sourceCanonical] /// Identifier for the source value set that contains the concepts that are
  /// being mapped and provides context for the mappings.
  final FhirCanonical? sourceCanonical;
  final Element? sourceCanonicalElement;

  /// [targetUri] /// The target value set provides context for the mappings. Note that the
  /// mapping is made between concepts, not between value sets, but the value set
  /// provides important context about how the concept mapping choices are made.
  final FhirUri? targetUri;
  final Element? targetUriElement;

  /// [targetCanonical] /// The target value set provides context for the mappings. Note that the
  /// mapping is made between concepts, not between value sets, but the value set
  /// provides important context about how the concept mapping choices are made.
  final FhirCanonical? targetCanonical;
  final Element? targetCanonicalElement;

  /// [group] /// A group of mappings that all have the same source and target system.
  final List<ConceptMapGroup>? group;
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
    if (identifier != null) {
      json['identifier'] = identifier!.toJson();
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
    json['status'] = status.toJson();
    if (experimental?.value != null) {
      json['experimental'] = experimental!.value;
    }
    if (experimentalElement != null) {
      json['_experimental'] = experimentalElement!.toJson();
    }
    if (date?.value != null) {
      json['date'] = date!.value;
    }
    if (dateElement != null) {
      json['_date'] = dateElement!.toJson();
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
    if (description?.value != null) {
      json['description'] = description!.value;
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
      json['purpose'] = purpose!.value;
    }
    if (purposeElement != null) {
      json['_purpose'] = purposeElement!.toJson();
    }
    if (copyright?.value != null) {
      json['copyright'] = copyright!.value;
    }
    if (copyrightElement != null) {
      json['_copyright'] = copyrightElement!.toJson();
    }
    if (sourceUri?.value != null) {
      json['sourceUri'] = sourceUri!.value;
    }
    if (sourceUriElement != null) {
      json['_sourceUri'] = sourceUriElement!.toJson();
    }
    if (sourceCanonical?.value != null) {
      json['sourceCanonical'] = sourceCanonical!.value;
    }
    if (sourceCanonicalElement != null) {
      json['_sourceCanonical'] = sourceCanonicalElement!.toJson();
    }
    if (targetUri?.value != null) {
      json['targetUri'] = targetUri!.value;
    }
    if (targetUriElement != null) {
      json['_targetUri'] = targetUriElement!.toJson();
    }
    if (targetCanonical?.value != null) {
      json['targetCanonical'] = targetCanonical!.value;
    }
    if (targetCanonicalElement != null) {
      json['_targetCanonical'] = targetCanonicalElement!.toJson();
    }
    if (group != null && group!.isNotEmpty) {
      json['group'] =
          group!.map<dynamic>((ConceptMapGroup v) => v.toJson()).toList();
    }
    return json;
  }

  factory ConceptMap.fromJson(Map<String, dynamic> json) {
    return ConceptMap(
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
          ? Identifier.fromJson(json['identifier'] as Map<String, dynamic>)
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
      status:
          PublicationStatus.fromJson(json['status'] as Map<String, dynamic>),
      experimental: json['experimental'] != null
          ? FhirBoolean(json['experimental'])
          : null,
      experimentalElement: json['_experimental'] != null
          ? Element.fromJson(json['_experimental'] as Map<String, dynamic>)
          : null,
      date: json['date'] != null ? FhirDateTime(json['date']) : null,
      dateElement: json['_date'] != null
          ? Element.fromJson(json['_date'] as Map<String, dynamic>)
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
      description: json['description'] != null
          ? FhirMarkdown(json['description'])
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
      purpose: json['purpose'] != null ? FhirMarkdown(json['purpose']) : null,
      purposeElement: json['_purpose'] != null
          ? Element.fromJson(json['_purpose'] as Map<String, dynamic>)
          : null,
      copyright:
          json['copyright'] != null ? FhirMarkdown(json['copyright']) : null,
      copyrightElement: json['_copyright'] != null
          ? Element.fromJson(json['_copyright'] as Map<String, dynamic>)
          : null,
      sourceUri: json['sourceUri'] != null ? FhirUri(json['sourceUri']) : null,
      sourceUriElement: json['_sourceUri'] != null
          ? Element.fromJson(json['_sourceUri'] as Map<String, dynamic>)
          : null,
      sourceCanonical: json['sourceCanonical'] != null
          ? FhirCanonical(json['sourceCanonical'])
          : null,
      sourceCanonicalElement: json['_sourceCanonical'] != null
          ? Element.fromJson(json['_sourceCanonical'] as Map<String, dynamic>)
          : null,
      targetUri: json['targetUri'] != null ? FhirUri(json['targetUri']) : null,
      targetUriElement: json['_targetUri'] != null
          ? Element.fromJson(json['_targetUri'] as Map<String, dynamic>)
          : null,
      targetCanonical: json['targetCanonical'] != null
          ? FhirCanonical(json['targetCanonical'])
          : null,
      targetCanonicalElement: json['_targetCanonical'] != null
          ? Element.fromJson(json['_targetCanonical'] as Map<String, dynamic>)
          : null,
      group: json['group'] != null
          ? (json['group'] as List<dynamic>)
              .map<ConceptMapGroup>((dynamic v) =>
                  ConceptMapGroup.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  ConceptMap clone() => throw UnimplementedError();
  @override
  ConceptMap copyWith({
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
    Identifier? identifier,
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
    FhirUri? sourceUri,
    Element? sourceUriElement,
    FhirCanonical? sourceCanonical,
    Element? sourceCanonicalElement,
    FhirUri? targetUri,
    Element? targetUriElement,
    FhirCanonical? targetCanonical,
    Element? targetCanonicalElement,
    List<ConceptMapGroup>? group,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ConceptMap(
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
      sourceUri: sourceUri ?? this.sourceUri,
      sourceUriElement: sourceUriElement ?? this.sourceUriElement,
      sourceCanonical: sourceCanonical ?? this.sourceCanonical,
      sourceCanonicalElement:
          sourceCanonicalElement ?? this.sourceCanonicalElement,
      targetUri: targetUri ?? this.targetUri,
      targetUriElement: targetUriElement ?? this.targetUriElement,
      targetCanonical: targetCanonical ?? this.targetCanonical,
      targetCanonicalElement:
          targetCanonicalElement ?? this.targetCanonicalElement,
      group: group ?? this.group,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ConceptMap.fromYaml(dynamic yaml) => yaml is String
      ? ConceptMap.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ConceptMap.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ConceptMap cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ConceptMap.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ConceptMap.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ConceptMapGroup] /// A group of mappings that all have the same source and target system.
class ConceptMapGroup extends BackboneElement {
  ConceptMapGroup({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.source,
    this.sourceElement,
    this.sourceVersion,
    this.sourceVersionElement,
    this.target,
    this.targetElement,
    this.targetVersion,
    this.targetVersionElement,
    required this.element,
    this.unmapped,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ConceptMapGroup';

  @Id()
  int dbId = 0;

  /// [source] /// An absolute URI that identifies the source system where the concepts to be
  /// mapped are defined.
  final FhirUri? source;
  final Element? sourceElement;

  /// [sourceVersion] /// The specific version of the code system, as determined by the code system
  /// authority.
  final FhirString? sourceVersion;
  final Element? sourceVersionElement;

  /// [target] /// An absolute URI that identifies the target system that the concepts will be
  /// mapped to.
  final FhirUri? target;
  final Element? targetElement;

  /// [targetVersion] /// The specific version of the code system, as determined by the code system
  /// authority.
  final FhirString? targetVersion;
  final Element? targetVersionElement;

  /// [element] /// Mappings for an individual concept in the source to one or more concepts in
  /// the target.
  final List<ConceptMapElement> element;

  /// [unmapped] /// What to do when there is no mapping for the source concept. "Unmapped" does
  /// not include codes that are unmatched, and the unmapped element is ignored
  /// in a code is specified to have equivalence = unmatched.
  final ConceptMapUnmapped? unmapped;
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
    if (source?.value != null) {
      json['source'] = source!.value;
    }
    if (sourceElement != null) {
      json['_source'] = sourceElement!.toJson();
    }
    if (sourceVersion?.value != null) {
      json['sourceVersion'] = sourceVersion!.value;
    }
    if (sourceVersionElement != null) {
      json['_sourceVersion'] = sourceVersionElement!.toJson();
    }
    if (target?.value != null) {
      json['target'] = target!.value;
    }
    if (targetElement != null) {
      json['_target'] = targetElement!.toJson();
    }
    if (targetVersion?.value != null) {
      json['targetVersion'] = targetVersion!.value;
    }
    if (targetVersionElement != null) {
      json['_targetVersion'] = targetVersionElement!.toJson();
    }
    json['element'] =
        element.map<dynamic>((ConceptMapElement v) => v.toJson()).toList();
    if (unmapped != null) {
      json['unmapped'] = unmapped!.toJson();
    }
    return json;
  }

  factory ConceptMapGroup.fromJson(Map<String, dynamic> json) {
    return ConceptMapGroup(
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
      source: json['source'] != null ? FhirUri(json['source']) : null,
      sourceElement: json['_source'] != null
          ? Element.fromJson(json['_source'] as Map<String, dynamic>)
          : null,
      sourceVersion: json['sourceVersion'] != null
          ? FhirString(json['sourceVersion'])
          : null,
      sourceVersionElement: json['_sourceVersion'] != null
          ? Element.fromJson(json['_sourceVersion'] as Map<String, dynamic>)
          : null,
      target: json['target'] != null ? FhirUri(json['target']) : null,
      targetElement: json['_target'] != null
          ? Element.fromJson(json['_target'] as Map<String, dynamic>)
          : null,
      targetVersion: json['targetVersion'] != null
          ? FhirString(json['targetVersion'])
          : null,
      targetVersionElement: json['_targetVersion'] != null
          ? Element.fromJson(json['_targetVersion'] as Map<String, dynamic>)
          : null,
      element: (json['element'] as List<dynamic>)
          .map<ConceptMapElement>((dynamic v) =>
              ConceptMapElement.fromJson(v as Map<String, dynamic>))
          .toList(),
      unmapped: json['unmapped'] != null
          ? ConceptMapUnmapped.fromJson(
              json['unmapped'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  ConceptMapGroup clone() => throw UnimplementedError();
  @override
  ConceptMapGroup copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? source,
    Element? sourceElement,
    FhirString? sourceVersion,
    Element? sourceVersionElement,
    FhirUri? target,
    Element? targetElement,
    FhirString? targetVersion,
    Element? targetVersionElement,
    List<ConceptMapElement>? element,
    ConceptMapUnmapped? unmapped,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ConceptMapGroup(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      source: source ?? this.source,
      sourceElement: sourceElement ?? this.sourceElement,
      sourceVersion: sourceVersion ?? this.sourceVersion,
      sourceVersionElement: sourceVersionElement ?? this.sourceVersionElement,
      target: target ?? this.target,
      targetElement: targetElement ?? this.targetElement,
      targetVersion: targetVersion ?? this.targetVersion,
      targetVersionElement: targetVersionElement ?? this.targetVersionElement,
      element: element ?? this.element,
      unmapped: unmapped ?? this.unmapped,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ConceptMapGroup.fromYaml(dynamic yaml) => yaml is String
      ? ConceptMapGroup.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ConceptMapGroup.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ConceptMapGroup cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ConceptMapGroup.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ConceptMapGroup.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ConceptMapElement] /// Mappings for an individual concept in the source to one or more concepts in
/// the target.
class ConceptMapElement extends BackboneElement {
  ConceptMapElement({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.codeElement,
    this.display,
    this.displayElement,
    this.target,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ConceptMapElement';

  @Id()
  int dbId = 0;

  /// [code] /// Identity (code or path) or the element/item being mapped.
  final FhirCode? code;
  final Element? codeElement;

  /// [display] /// The display for the code. The display is only provided to help editors when
  /// editing the concept map.
  final FhirString? display;
  final Element? displayElement;

  /// [target] /// A concept from the target value set that this concept maps to.
  final List<ConceptMapTarget>? target;
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
    if (code?.value != null) {
      json['code'] = code!.value;
    }
    if (codeElement != null) {
      json['_code'] = codeElement!.toJson();
    }
    if (display?.value != null) {
      json['display'] = display!.value;
    }
    if (displayElement != null) {
      json['_display'] = displayElement!.toJson();
    }
    if (target != null && target!.isNotEmpty) {
      json['target'] =
          target!.map<dynamic>((ConceptMapTarget v) => v.toJson()).toList();
    }
    return json;
  }

  factory ConceptMapElement.fromJson(Map<String, dynamic> json) {
    return ConceptMapElement(
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
      code: json['code'] != null ? FhirCode(json['code']) : null,
      codeElement: json['_code'] != null
          ? Element.fromJson(json['_code'] as Map<String, dynamic>)
          : null,
      display: json['display'] != null ? FhirString(json['display']) : null,
      displayElement: json['_display'] != null
          ? Element.fromJson(json['_display'] as Map<String, dynamic>)
          : null,
      target: json['target'] != null
          ? (json['target'] as List<dynamic>)
              .map<ConceptMapTarget>((dynamic v) =>
                  ConceptMapTarget.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  ConceptMapElement clone() => throw UnimplementedError();
  @override
  ConceptMapElement copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    Element? codeElement,
    FhirString? display,
    Element? displayElement,
    List<ConceptMapTarget>? target,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ConceptMapElement(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      codeElement: codeElement ?? this.codeElement,
      display: display ?? this.display,
      displayElement: displayElement ?? this.displayElement,
      target: target ?? this.target,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ConceptMapElement.fromYaml(dynamic yaml) => yaml is String
      ? ConceptMapElement.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ConceptMapElement.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ConceptMapElement cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ConceptMapElement.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ConceptMapElement.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ConceptMapTarget] /// A concept from the target value set that this concept maps to.
class ConceptMapTarget extends BackboneElement {
  ConceptMapTarget({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.codeElement,
    this.display,
    this.displayElement,
    required this.equivalence,
    this.equivalenceElement,
    this.comment,
    this.commentElement,
    this.dependsOn,
    this.product,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ConceptMapTarget';

  @Id()
  int dbId = 0;

  /// [code] /// Identity (code or path) or the element/item that the map refers to.
  final FhirCode? code;
  final Element? codeElement;

  /// [display] /// The display for the code. The display is only provided to help editors when
  /// editing the concept map.
  final FhirString? display;
  final Element? displayElement;

  /// [equivalence] /// The equivalence between the source and target concepts (counting for the
  /// dependencies and products). The equivalence is read from target to source
  /// (e.g. the target is 'wider' than the source).
  final ConceptMapEquivalence equivalence;
  final Element? equivalenceElement;

  /// [comment] /// A description of status/issues in mapping that conveys additional
  /// information not represented in the structured data.
  final FhirString? comment;
  final Element? commentElement;

  /// [dependsOn] /// A set of additional dependencies for this mapping to hold. This mapping is
  /// only applicable if the specified element can be resolved, and it has the
  /// specified value.
  final List<ConceptMapDependsOn>? dependsOn;

  /// [product] /// A set of additional outcomes from this mapping to other elements. To
  /// properly execute this mapping, the specified element must be mapped to some
  /// data element or source that is in context. The mapping may still be useful
  /// without a place for the additional data elements, but the equivalence
  /// cannot be relied on.
  final List<ConceptMapDependsOn>? product;
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
    if (code?.value != null) {
      json['code'] = code!.value;
    }
    if (codeElement != null) {
      json['_code'] = codeElement!.toJson();
    }
    if (display?.value != null) {
      json['display'] = display!.value;
    }
    if (displayElement != null) {
      json['_display'] = displayElement!.toJson();
    }
    json['equivalence'] = equivalence.toJson();
    if (comment?.value != null) {
      json['comment'] = comment!.value;
    }
    if (commentElement != null) {
      json['_comment'] = commentElement!.toJson();
    }
    if (dependsOn != null && dependsOn!.isNotEmpty) {
      json['dependsOn'] = dependsOn!
          .map<dynamic>((ConceptMapDependsOn v) => v.toJson())
          .toList();
    }
    if (product != null && product!.isNotEmpty) {
      json['product'] =
          product!.map<dynamic>((ConceptMapDependsOn v) => v.toJson()).toList();
    }
    return json;
  }

  factory ConceptMapTarget.fromJson(Map<String, dynamic> json) {
    return ConceptMapTarget(
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
      code: json['code'] != null ? FhirCode(json['code']) : null,
      codeElement: json['_code'] != null
          ? Element.fromJson(json['_code'] as Map<String, dynamic>)
          : null,
      display: json['display'] != null ? FhirString(json['display']) : null,
      displayElement: json['_display'] != null
          ? Element.fromJson(json['_display'] as Map<String, dynamic>)
          : null,
      equivalence: ConceptMapEquivalence.fromJson(
          json['equivalence'] as Map<String, dynamic>),
      comment: json['comment'] != null ? FhirString(json['comment']) : null,
      commentElement: json['_comment'] != null
          ? Element.fromJson(json['_comment'] as Map<String, dynamic>)
          : null,
      dependsOn: json['dependsOn'] != null
          ? (json['dependsOn'] as List<dynamic>)
              .map<ConceptMapDependsOn>((dynamic v) =>
                  ConceptMapDependsOn.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      product: json['product'] != null
          ? (json['product'] as List<dynamic>)
              .map<ConceptMapDependsOn>((dynamic v) =>
                  ConceptMapDependsOn.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  ConceptMapTarget clone() => throw UnimplementedError();
  @override
  ConceptMapTarget copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    Element? codeElement,
    FhirString? display,
    Element? displayElement,
    ConceptMapEquivalence? equivalence,
    Element? equivalenceElement,
    FhirString? comment,
    Element? commentElement,
    List<ConceptMapDependsOn>? dependsOn,
    List<ConceptMapDependsOn>? product,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ConceptMapTarget(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      codeElement: codeElement ?? this.codeElement,
      display: display ?? this.display,
      displayElement: displayElement ?? this.displayElement,
      equivalence: equivalence ?? this.equivalence,
      equivalenceElement: equivalenceElement ?? this.equivalenceElement,
      comment: comment ?? this.comment,
      commentElement: commentElement ?? this.commentElement,
      dependsOn: dependsOn ?? this.dependsOn,
      product: product ?? this.product,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ConceptMapTarget.fromYaml(dynamic yaml) => yaml is String
      ? ConceptMapTarget.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ConceptMapTarget.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ConceptMapTarget cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ConceptMapTarget.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ConceptMapTarget.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ConceptMapDependsOn] /// A set of additional dependencies for this mapping to hold. This mapping is
/// only applicable if the specified element can be resolved, and it has the
/// specified value.
class ConceptMapDependsOn extends BackboneElement {
  ConceptMapDependsOn({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.property,
    this.propertyElement,
    this.system,
    this.systemElement,
    required this.value,
    this.valueElement,
    this.display,
    this.displayElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ConceptMapDependsOn';

  @Id()
  int dbId = 0;

  /// [property] /// A reference to an element that holds a coded value that corresponds to a
  /// code system property. The idea is that the information model carries an
  /// element somewhere that is labeled to correspond with a code system
  /// property.
  final FhirUri property;
  final Element? propertyElement;

  /// [system] /// An absolute URI that identifies the code system of the dependency code (if
  /// the source/dependency is a value set that crosses code systems).
  final FhirCanonical? system;
  final Element? systemElement;

  /// [value] /// Identity (code or path) or the element/item/ValueSet/text that the map
  /// depends on / refers to.
  final FhirString value;
  final Element? valueElement;

  /// [display] /// The display for the code. The display is only provided to help editors when
  /// editing the concept map.
  final FhirString? display;
  final Element? displayElement;
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
    json['property'] = property.value;
    if (propertyElement != null) {
      json['_property'] = propertyElement!.toJson();
    }
    if (system?.value != null) {
      json['system'] = system!.value;
    }
    if (systemElement != null) {
      json['_system'] = systemElement!.toJson();
    }
    json['value'] = value.value;
    if (valueElement != null) {
      json['_value'] = valueElement!.toJson();
    }
    if (display?.value != null) {
      json['display'] = display!.value;
    }
    if (displayElement != null) {
      json['_display'] = displayElement!.toJson();
    }
    return json;
  }

  factory ConceptMapDependsOn.fromJson(Map<String, dynamic> json) {
    return ConceptMapDependsOn(
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
      property: FhirUri(json['property']),
      propertyElement: json['_property'] != null
          ? Element.fromJson(json['_property'] as Map<String, dynamic>)
          : null,
      system: json['system'] != null ? FhirCanonical(json['system']) : null,
      systemElement: json['_system'] != null
          ? Element.fromJson(json['_system'] as Map<String, dynamic>)
          : null,
      value: FhirString(json['value']),
      valueElement: json['_value'] != null
          ? Element.fromJson(json['_value'] as Map<String, dynamic>)
          : null,
      display: json['display'] != null ? FhirString(json['display']) : null,
      displayElement: json['_display'] != null
          ? Element.fromJson(json['_display'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  ConceptMapDependsOn clone() => throw UnimplementedError();
  @override
  ConceptMapDependsOn copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? property,
    Element? propertyElement,
    FhirCanonical? system,
    Element? systemElement,
    FhirString? value,
    Element? valueElement,
    FhirString? display,
    Element? displayElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ConceptMapDependsOn(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      property: property ?? this.property,
      propertyElement: propertyElement ?? this.propertyElement,
      system: system ?? this.system,
      systemElement: systemElement ?? this.systemElement,
      value: value ?? this.value,
      valueElement: valueElement ?? this.valueElement,
      display: display ?? this.display,
      displayElement: displayElement ?? this.displayElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ConceptMapDependsOn.fromYaml(dynamic yaml) => yaml is String
      ? ConceptMapDependsOn.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ConceptMapDependsOn.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ConceptMapDependsOn cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ConceptMapDependsOn.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ConceptMapDependsOn.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ConceptMapUnmapped] /// What to do when there is no mapping for the source concept. "Unmapped" does
/// not include codes that are unmatched, and the unmapped element is ignored
/// in a code is specified to have equivalence = unmatched.
class ConceptMapUnmapped extends BackboneElement {
  ConceptMapUnmapped({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.mode,
    this.modeElement,
    this.code,
    this.codeElement,
    this.display,
    this.displayElement,
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
  String get fhirType => 'ConceptMapUnmapped';

  @Id()
  int dbId = 0;

  /// [mode] /// Defines which action to take if there is no match for the source concept in
  /// the target system designated for the group. One of 3 actions are possible:
  /// use the unmapped code (this is useful when doing a mapping between
  /// versions, and only a few codes have changed), use a fixed code (a default
  /// code), or alternatively, a reference to a different concept map can be
  /// provided (by canonical URL).
  final ConceptMapGroupUnmappedMode mode;
  final Element? modeElement;

  /// [code] /// The fixed code to use when the mode = 'fixed' - all unmapped codes are
  /// mapped to a single fixed code.
  final FhirCode? code;
  final Element? codeElement;

  /// [display] /// The display for the code. The display is only provided to help editors when
  /// editing the concept map.
  final FhirString? display;
  final Element? displayElement;

  /// [url] /// The canonical reference to an additional ConceptMap resource instance to
  /// use for mapping if this ConceptMap resource contains no matching mapping
  /// for the source concept.
  final FhirCanonical? url;
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
    json['mode'] = mode.toJson();
    if (code?.value != null) {
      json['code'] = code!.value;
    }
    if (codeElement != null) {
      json['_code'] = codeElement!.toJson();
    }
    if (display?.value != null) {
      json['display'] = display!.value;
    }
    if (displayElement != null) {
      json['_display'] = displayElement!.toJson();
    }
    if (url?.value != null) {
      json['url'] = url!.value;
    }
    if (urlElement != null) {
      json['_url'] = urlElement!.toJson();
    }
    return json;
  }

  factory ConceptMapUnmapped.fromJson(Map<String, dynamic> json) {
    return ConceptMapUnmapped(
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
      mode: ConceptMapGroupUnmappedMode.fromJson(
          json['mode'] as Map<String, dynamic>),
      code: json['code'] != null ? FhirCode(json['code']) : null,
      codeElement: json['_code'] != null
          ? Element.fromJson(json['_code'] as Map<String, dynamic>)
          : null,
      display: json['display'] != null ? FhirString(json['display']) : null,
      displayElement: json['_display'] != null
          ? Element.fromJson(json['_display'] as Map<String, dynamic>)
          : null,
      url: json['url'] != null ? FhirCanonical(json['url']) : null,
      urlElement: json['_url'] != null
          ? Element.fromJson(json['_url'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  ConceptMapUnmapped clone() => throw UnimplementedError();
  @override
  ConceptMapUnmapped copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ConceptMapGroupUnmappedMode? mode,
    Element? modeElement,
    FhirCode? code,
    Element? codeElement,
    FhirString? display,
    Element? displayElement,
    FhirCanonical? url,
    Element? urlElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ConceptMapUnmapped(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      mode: mode ?? this.mode,
      modeElement: modeElement ?? this.modeElement,
      code: code ?? this.code,
      codeElement: codeElement ?? this.codeElement,
      display: display ?? this.display,
      displayElement: displayElement ?? this.displayElement,
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

  factory ConceptMapUnmapped.fromYaml(dynamic yaml) => yaml is String
      ? ConceptMapUnmapped.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ConceptMapUnmapped.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ConceptMapUnmapped cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ConceptMapUnmapped.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ConceptMapUnmapped.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
