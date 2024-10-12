import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ConceptMap]
/// A statement of relationships from one set of concepts to one or more
/// other concepts - either concepts in code systems, or data element/data
/// element concepts, or classes in class models.
class ConceptMap extends DomainResource {
  /// Primary constructor for [ConceptMap]

  ConceptMap({
    super.id,
    super.meta,
    super.implicitRules,

    /// Extensions for [implicitRules]
    super.implicitRulesElement,
    super.language,

    /// Extensions for [language]
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.url,

    /// Extensions for [url]
    this.urlElement,
    this.identifier,
    this.version,

    /// Extensions for [version]
    this.versionElement,
    this.name,

    /// Extensions for [name]
    this.nameElement,
    this.title,

    /// Extensions for [title]
    this.titleElement,
    required this.status,

    /// Extensions for [status]
    this.statusElement,
    this.experimental,

    /// Extensions for [experimental]
    this.experimentalElement,
    this.date,

    /// Extensions for [date]
    this.dateElement,
    this.publisher,

    /// Extensions for [publisher]
    this.publisherElement,
    this.contact,
    this.description,

    /// Extensions for [description]
    this.descriptionElement,
    this.useContext,
    this.jurisdiction,
    this.purpose,

    /// Extensions for [purpose]
    this.purposeElement,
    this.copyright,

    /// Extensions for [copyright]
    this.copyrightElement,
    this.sourceUri,

    /// Extensions for [sourceUri]
    this.sourceUriElement,
    this.sourceCanonical,

    /// Extensions for [sourceCanonical]
    this.sourceCanonicalElement,
    this.targetUri,

    /// Extensions for [targetUri]
    this.targetUriElement,
    this.targetCanonical,

    /// Extensions for [targetCanonical]
    this.targetCanonicalElement,
    this.group,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.ConceptMap,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConceptMap.fromJson(Map<String, dynamic> json) {
    return ConceptMap(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson(json['implicitRules'])
          : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(
              json['_implicitRules'] as Map<String, dynamic>,
            )
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'])
          : null,
      languageElement: json['_language'] != null
          ? Element.fromJson(
              json['_language'] as Map<String, dynamic>,
            )
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (dynamic v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      url: json['url'] != null ? FhirUri.fromJson(json['url']) : null,
      urlElement: json['_url'] != null
          ? Element.fromJson(
              json['_url'] as Map<String, dynamic>,
            )
          : null,
      identifier: json['identifier'] != null
          ? Identifier.fromJson(
              json['identifier'] as Map<String, dynamic>,
            )
          : null,
      version:
          json['version'] != null ? FhirString.fromJson(json['version']) : null,
      versionElement: json['_version'] != null
          ? Element.fromJson(
              json['_version'] as Map<String, dynamic>,
            )
          : null,
      name: json['name'] != null ? FhirString.fromJson(json['name']) : null,
      nameElement: json['_name'] != null
          ? Element.fromJson(
              json['_name'] as Map<String, dynamic>,
            )
          : null,
      title: json['title'] != null ? FhirString.fromJson(json['title']) : null,
      titleElement: json['_title'] != null
          ? Element.fromJson(
              json['_title'] as Map<String, dynamic>,
            )
          : null,
      status: PublicationStatus.fromJson(json['status']),
      statusElement: json['_status'] != null
          ? Element.fromJson(
              json['_status'] as Map<String, dynamic>,
            )
          : null,
      experimental: json['experimental'] != null
          ? FhirBoolean.fromJson(json['experimental'])
          : null,
      experimentalElement: json['_experimental'] != null
          ? Element.fromJson(
              json['_experimental'] as Map<String, dynamic>,
            )
          : null,
      date: json['date'] != null ? FhirDateTime.fromJson(json['date']) : null,
      dateElement: json['_date'] != null
          ? Element.fromJson(
              json['_date'] as Map<String, dynamic>,
            )
          : null,
      publisher: json['publisher'] != null
          ? FhirString.fromJson(json['publisher'])
          : null,
      publisherElement: json['_publisher'] != null
          ? Element.fromJson(
              json['_publisher'] as Map<String, dynamic>,
            )
          : null,
      contact: json['contact'] != null
          ? (json['contact'] as List<dynamic>)
              .map<ContactDetail>(
                (dynamic v) => ContactDetail.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      description: json['description'] != null
          ? FhirMarkdown.fromJson(json['description'])
          : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(
              json['_description'] as Map<String, dynamic>,
            )
          : null,
      useContext: json['useContext'] != null
          ? (json['useContext'] as List<dynamic>)
              .map<UsageContext>(
                (dynamic v) => UsageContext.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      jurisdiction: json['jurisdiction'] != null
          ? (json['jurisdiction'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      purpose: json['purpose'] != null
          ? FhirMarkdown.fromJson(json['purpose'])
          : null,
      purposeElement: json['_purpose'] != null
          ? Element.fromJson(
              json['_purpose'] as Map<String, dynamic>,
            )
          : null,
      copyright: json['copyright'] != null
          ? FhirMarkdown.fromJson(json['copyright'])
          : null,
      copyrightElement: json['_copyright'] != null
          ? Element.fromJson(
              json['_copyright'] as Map<String, dynamic>,
            )
          : null,
      sourceUri: json['sourceUri'] != null
          ? FhirUri.fromJson(json['sourceUri'])
          : null,
      sourceUriElement: json['_sourceUri'] != null
          ? Element.fromJson(
              json['_sourceUri'] as Map<String, dynamic>,
            )
          : null,
      sourceCanonical: json['sourceCanonical'] != null
          ? FhirCanonical.fromJson(json['sourceCanonical'])
          : null,
      sourceCanonicalElement: json['_sourceCanonical'] != null
          ? Element.fromJson(
              json['_sourceCanonical'] as Map<String, dynamic>,
            )
          : null,
      targetUri: json['targetUri'] != null
          ? FhirUri.fromJson(json['targetUri'])
          : null,
      targetUriElement: json['_targetUri'] != null
          ? Element.fromJson(
              json['_targetUri'] as Map<String, dynamic>,
            )
          : null,
      targetCanonical: json['targetCanonical'] != null
          ? FhirCanonical.fromJson(json['targetCanonical'])
          : null,
      targetCanonicalElement: json['_targetCanonical'] != null
          ? Element.fromJson(
              json['_targetCanonical'] as Map<String, dynamic>,
            )
          : null,
      group: json['group'] != null
          ? (json['group'] as List<dynamic>)
              .map<ConceptMapGroup>(
                (dynamic v) => ConceptMapGroup.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ConceptMap] from a [String] or [YamlMap] object
  factory ConceptMap.fromYaml(dynamic yaml) => yaml is String
      ? ConceptMap.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ConceptMap.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('ConceptMap cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ConceptMap] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConceptMap.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ConceptMap.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ConceptMap';

  /// [url]
  /// An absolute URI that is used to identify this concept map when it is
  /// referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and
  /// SHOULD be a literal address at which at which an authoritative instance
  /// of this concept map is (or will be) published. This URL can be the
  /// target of a canonical reference. It SHALL remain the same when the
  /// concept map is stored on different servers.
  final FhirUri? url;

  /// Extensions for [url]
  final Element? urlElement;

  /// [identifier]
  /// A formal identifier that is used to identify this concept map when it
  /// is represented in other formats, or referenced in a specification,
  /// model, design or an instance.
  final Identifier? identifier;

  /// [version]
  /// The identifier that is used to identify this version of the concept map
  /// when it is referenced in a specification, model, design or instance.
  /// This is an arbitrary value managed by the concept map author and is not
  /// expected to be globally unique. For example, it might be a timestamp
  /// (e.g. yyyymmdd) if a managed version is not available. There is also no
  /// expectation that versions can be placed in a lexicographical sequence.
  final FhirString? version;

  /// Extensions for [version]
  final Element? versionElement;

  /// [name]
  /// A natural language name identifying the concept map. This name should
  /// be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString? name;

  /// Extensions for [name]
  final Element? nameElement;

  /// [title]
  /// A short, descriptive, user-friendly title for the concept map.
  final FhirString? title;

  /// Extensions for [title]
  final Element? titleElement;

  /// [status]
  /// The status of this concept map. Enables tracking the life-cycle of the
  /// content.
  final PublicationStatus status;

  /// Extensions for [status]
  final Element? statusElement;

  /// [experimental]
  /// A Boolean value to indicate that this concept map is authored for
  /// testing purposes (or education/evaluation/marketing) and is not
  /// intended to be used for genuine usage.
  final FhirBoolean? experimental;

  /// Extensions for [experimental]
  final Element? experimentalElement;

  /// [date]
  /// The date (and optionally time) when the concept map was published. The
  /// date must change when the business version changes and it must change
  /// if the status code changes. In addition, it should change when the
  /// substantive content of the concept map changes.
  final FhirDateTime? date;

  /// Extensions for [date]
  final Element? dateElement;

  /// [publisher]
  /// The name of the organization or individual that published the concept
  /// map.
  final FhirString? publisher;

  /// Extensions for [publisher]
  final Element? publisherElement;

  /// [contact]
  /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [description]
  /// A free text natural language description of the concept map from a
  /// consumer's perspective.
  final FhirMarkdown? description;

  /// Extensions for [description]
  final Element? descriptionElement;

  /// [useContext]
  /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories
  /// (gender, age, ...) or may be references to specific programs (insurance
  /// plans, studies, ...) and may be used to assist with indexing and
  /// searching for appropriate concept map instances.
  final List<UsageContext>? useContext;

  /// [jurisdiction]
  /// A legal or geographic region in which the concept map is intended to be
  /// used.
  final List<CodeableConcept>? jurisdiction;

  /// [purpose]
  /// Explanation of why this concept map is needed and why it has been
  /// designed as it has.
  final FhirMarkdown? purpose;

  /// Extensions for [purpose]
  final Element? purposeElement;

  /// [copyright]
  /// A copyright statement relating to the concept map and/or its contents.
  /// Copyright statements are generally legal restrictions on the use and
  /// publishing of the concept map.
  final FhirMarkdown? copyright;

  /// Extensions for [copyright]
  final Element? copyrightElement;

  /// [sourceUri]
  /// Identifier for the source value set that contains the concepts that are
  /// being mapped and provides context for the mappings.
  final FhirUri? sourceUri;

  /// Extensions for [sourceUri]
  final Element? sourceUriElement;

  /// [sourceCanonical]
  /// Identifier for the source value set that contains the concepts that are
  /// being mapped and provides context for the mappings.
  final FhirCanonical? sourceCanonical;

  /// Extensions for [sourceCanonical]
  final Element? sourceCanonicalElement;

  /// [targetUri]
  /// The target value set provides context for the mappings. Note that the
  /// mapping is made between concepts, not between value sets, but the value
  /// set provides important context about how the concept mapping choices
  /// are made.
  final FhirUri? targetUri;

  /// Extensions for [targetUri]
  final Element? targetUriElement;

  /// [targetCanonical]
  /// The target value set provides context for the mappings. Note that the
  /// mapping is made between concepts, not between value sets, but the value
  /// set provides important context about how the concept mapping choices
  /// are made.
  final FhirCanonical? targetCanonical;

  /// Extensions for [targetCanonical]
  final Element? targetCanonicalElement;

  /// [group]
  /// A group of mappings that all have the same source and target system.
  final List<ConceptMapGroup>? group;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
      json['contained'] = contained!.map((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (url?.value != null) {
      json['url'] = url!.toJson();
    }
    if (urlElement != null) {
      json['_url'] = urlElement!.toJson();
    }
    if (identifier != null) {
      json['identifier'] = identifier!.toJson();
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
      json['contact'] = contact!.map((ContactDetail v) => v.toJson()).toList();
    }
    if (description?.value != null) {
      json['description'] = description!.toJson();
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (useContext != null && useContext!.isNotEmpty) {
      json['useContext'] =
          useContext!.map((UsageContext v) => v.toJson()).toList();
    }
    if (jurisdiction != null && jurisdiction!.isNotEmpty) {
      json['jurisdiction'] =
          jurisdiction!.map((CodeableConcept v) => v.toJson()).toList();
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
    if (sourceUri?.value != null) {
      json['sourceUri'] = sourceUri!.toJson();
    }
    if (sourceUriElement != null) {
      json['_sourceUri'] = sourceUriElement!.toJson();
    }
    if (sourceCanonical?.value != null) {
      json['sourceCanonical'] = sourceCanonical!.toJson();
    }
    if (sourceCanonicalElement != null) {
      json['_sourceCanonical'] = sourceCanonicalElement!.toJson();
    }
    if (targetUri?.value != null) {
      json['targetUri'] = targetUri!.toJson();
    }
    if (targetUriElement != null) {
      json['_targetUri'] = targetUriElement!.toJson();
    }
    if (targetCanonical?.value != null) {
      json['targetCanonical'] = targetCanonical!.toJson();
    }
    if (targetCanonicalElement != null) {
      json['_targetCanonical'] = targetCanonicalElement!.toJson();
    }
    if (group != null && group!.isNotEmpty) {
      json['group'] = group!.map((ConceptMapGroup v) => v.toJson()).toList();
    }
    return json;
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
}

/// [ConceptMapGroup]
/// A group of mappings that all have the same source and target system.
class ConceptMapGroup extends BackboneElement {
  /// Primary constructor for [ConceptMapGroup]

  ConceptMapGroup({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.source,

    /// Extensions for [source]
    this.sourceElement,
    this.sourceVersion,

    /// Extensions for [sourceVersion]
    this.sourceVersionElement,
    this.target,

    /// Extensions for [target]
    this.targetElement,
    this.targetVersion,

    /// Extensions for [targetVersion]
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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConceptMapGroup.fromJson(Map<String, dynamic> json) {
    return ConceptMapGroup(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      source: json['source'] != null ? FhirUri.fromJson(json['source']) : null,
      sourceElement: json['_source'] != null
          ? Element.fromJson(
              json['_source'] as Map<String, dynamic>,
            )
          : null,
      sourceVersion: json['sourceVersion'] != null
          ? FhirString.fromJson(json['sourceVersion'])
          : null,
      sourceVersionElement: json['_sourceVersion'] != null
          ? Element.fromJson(
              json['_sourceVersion'] as Map<String, dynamic>,
            )
          : null,
      target: json['target'] != null ? FhirUri.fromJson(json['target']) : null,
      targetElement: json['_target'] != null
          ? Element.fromJson(
              json['_target'] as Map<String, dynamic>,
            )
          : null,
      targetVersion: json['targetVersion'] != null
          ? FhirString.fromJson(json['targetVersion'])
          : null,
      targetVersionElement: json['_targetVersion'] != null
          ? Element.fromJson(
              json['_targetVersion'] as Map<String, dynamic>,
            )
          : null,
      element: (json['element'] as List<dynamic>)
          .map<ConceptMapElement>((dynamic v) =>
              ConceptMapElement.fromJson(v as Map<String, dynamic>))
          .toList(),
      unmapped: json['unmapped'] != null
          ? ConceptMapUnmapped.fromJson(
              json['unmapped'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [ConceptMapGroup] from a [String] or [YamlMap] object
  factory ConceptMapGroup.fromYaml(dynamic yaml) => yaml is String
      ? ConceptMapGroup.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ConceptMapGroup.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ConceptMapGroup cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ConceptMapGroup] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConceptMapGroup.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ConceptMapGroup.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ConceptMapGroup';

  /// [source]
  /// An absolute URI that identifies the source system where the concepts to
  /// be mapped are defined.
  final FhirUri? source;

  /// Extensions for [source]
  final Element? sourceElement;

  /// [sourceVersion]
  /// The specific version of the code system, as determined by the code
  /// system authority.
  final FhirString? sourceVersion;

  /// Extensions for [sourceVersion]
  final Element? sourceVersionElement;

  /// [target]
  /// An absolute URI that identifies the target system that the concepts
  /// will be mapped to.
  final FhirUri? target;

  /// Extensions for [target]
  final Element? targetElement;

  /// [targetVersion]
  /// The specific version of the code system, as determined by the code
  /// system authority.
  final FhirString? targetVersion;

  /// Extensions for [targetVersion]
  final Element? targetVersionElement;

  /// [element]
  /// Mappings for an individual concept in the source to one or more
  /// concepts in the target.
  final List<ConceptMapElement> element;

  /// [unmapped]
  /// What to do when there is no mapping for the source concept. "Unmapped"
  /// does not include codes that are unmatched, and the unmapped element is
  /// ignored in a code is specified to have equivalence = unmatched.
  final ConceptMapUnmapped? unmapped;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (source?.value != null) {
      json['source'] = source!.toJson();
    }
    if (sourceElement != null) {
      json['_source'] = sourceElement!.toJson();
    }
    if (sourceVersion?.value != null) {
      json['sourceVersion'] = sourceVersion!.toJson();
    }
    if (sourceVersionElement != null) {
      json['_sourceVersion'] = sourceVersionElement!.toJson();
    }
    if (target?.value != null) {
      json['target'] = target!.toJson();
    }
    if (targetElement != null) {
      json['_target'] = targetElement!.toJson();
    }
    if (targetVersion?.value != null) {
      json['targetVersion'] = targetVersion!.toJson();
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
}

/// [ConceptMapElement]
/// Mappings for an individual concept in the source to one or more
/// concepts in the target.
class ConceptMapElement extends BackboneElement {
  /// Primary constructor for [ConceptMapElement]

  ConceptMapElement({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,

    /// Extensions for [code]
    this.codeElement,
    this.display,

    /// Extensions for [display]
    this.displayElement,
    this.target,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConceptMapElement.fromJson(Map<String, dynamic> json) {
    return ConceptMapElement(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      code: json['code'] != null ? FhirCode.fromJson(json['code']) : null,
      codeElement: json['_code'] != null
          ? Element.fromJson(
              json['_code'] as Map<String, dynamic>,
            )
          : null,
      display:
          json['display'] != null ? FhirString.fromJson(json['display']) : null,
      displayElement: json['_display'] != null
          ? Element.fromJson(
              json['_display'] as Map<String, dynamic>,
            )
          : null,
      target: json['target'] != null
          ? (json['target'] as List<dynamic>)
              .map<ConceptMapTarget>(
                (dynamic v) => ConceptMapTarget.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ConceptMapElement] from a [String] or [YamlMap] object
  factory ConceptMapElement.fromYaml(dynamic yaml) => yaml is String
      ? ConceptMapElement.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ConceptMapElement.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ConceptMapElement cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ConceptMapElement] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConceptMapElement.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ConceptMapElement.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ConceptMapElement';

  /// [code]
  /// Identity (code or path) or the element/item being mapped.
  final FhirCode? code;

  /// Extensions for [code]
  final Element? codeElement;

  /// [display]
  /// The display for the code. The display is only provided to help editors
  /// when editing the concept map.
  final FhirString? display;

  /// Extensions for [display]
  final Element? displayElement;

  /// [target]
  /// A concept from the target value set that this concept maps to.
  final List<ConceptMapTarget>? target;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (code?.value != null) {
      json['code'] = code!.toJson();
    }
    if (codeElement != null) {
      json['_code'] = codeElement!.toJson();
    }
    if (display?.value != null) {
      json['display'] = display!.toJson();
    }
    if (displayElement != null) {
      json['_display'] = displayElement!.toJson();
    }
    if (target != null && target!.isNotEmpty) {
      json['target'] = target!.map((ConceptMapTarget v) => v.toJson()).toList();
    }
    return json;
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
}

/// [ConceptMapTarget]
/// A concept from the target value set that this concept maps to.
class ConceptMapTarget extends BackboneElement {
  /// Primary constructor for [ConceptMapTarget]

  ConceptMapTarget({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,

    /// Extensions for [code]
    this.codeElement,
    this.display,

    /// Extensions for [display]
    this.displayElement,
    required this.equivalence,

    /// Extensions for [equivalence]
    this.equivalenceElement,
    this.comment,

    /// Extensions for [comment]
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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConceptMapTarget.fromJson(Map<String, dynamic> json) {
    return ConceptMapTarget(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      code: json['code'] != null ? FhirCode.fromJson(json['code']) : null,
      codeElement: json['_code'] != null
          ? Element.fromJson(
              json['_code'] as Map<String, dynamic>,
            )
          : null,
      display:
          json['display'] != null ? FhirString.fromJson(json['display']) : null,
      displayElement: json['_display'] != null
          ? Element.fromJson(
              json['_display'] as Map<String, dynamic>,
            )
          : null,
      equivalence: ConceptMapEquivalence.fromJson(json['equivalence']),
      equivalenceElement: json['_equivalence'] != null
          ? Element.fromJson(
              json['_equivalence'] as Map<String, dynamic>,
            )
          : null,
      comment:
          json['comment'] != null ? FhirString.fromJson(json['comment']) : null,
      commentElement: json['_comment'] != null
          ? Element.fromJson(
              json['_comment'] as Map<String, dynamic>,
            )
          : null,
      dependsOn: json['dependsOn'] != null
          ? (json['dependsOn'] as List<dynamic>)
              .map<ConceptMapDependsOn>(
                (dynamic v) => ConceptMapDependsOn.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      product: json['product'] != null
          ? (json['product'] as List<dynamic>)
              .map<ConceptMapDependsOn>(
                (dynamic v) => ConceptMapDependsOn.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ConceptMapTarget] from a [String] or [YamlMap] object
  factory ConceptMapTarget.fromYaml(dynamic yaml) => yaml is String
      ? ConceptMapTarget.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ConceptMapTarget.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ConceptMapTarget cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ConceptMapTarget] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConceptMapTarget.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ConceptMapTarget.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ConceptMapTarget';

  /// [code]
  /// Identity (code or path) or the element/item that the map refers to.
  final FhirCode? code;

  /// Extensions for [code]
  final Element? codeElement;

  /// [display]
  /// The display for the code. The display is only provided to help editors
  /// when editing the concept map.
  final FhirString? display;

  /// Extensions for [display]
  final Element? displayElement;

  /// [equivalence]
  /// The equivalence between the source and target concepts (counting for
  /// the dependencies and products). The equivalence is read from target to
  /// source (e.g. the target is 'wider' than the source).
  final ConceptMapEquivalence equivalence;

  /// Extensions for [equivalence]
  final Element? equivalenceElement;

  /// [comment]
  /// A description of status/issues in mapping that conveys additional
  /// information not represented in the structured data.
  final FhirString? comment;

  /// Extensions for [comment]
  final Element? commentElement;

  /// [dependsOn]
  /// A set of additional dependencies for this mapping to hold. This mapping
  /// is only applicable if the specified element can be resolved, and it has
  /// the specified value.
  final List<ConceptMapDependsOn>? dependsOn;

  /// [product]
  /// A set of additional outcomes from this mapping to other elements. To
  /// properly execute this mapping, the specified element must be mapped to
  /// some data element or source that is in context. The mapping may still
  /// be useful without a place for the additional data elements, but the
  /// equivalence cannot be relied on.
  final List<ConceptMapDependsOn>? product;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (code?.value != null) {
      json['code'] = code!.toJson();
    }
    if (codeElement != null) {
      json['_code'] = codeElement!.toJson();
    }
    if (display?.value != null) {
      json['display'] = display!.toJson();
    }
    if (displayElement != null) {
      json['_display'] = displayElement!.toJson();
    }
    json['equivalence'] = equivalence.toJson();
    if (comment?.value != null) {
      json['comment'] = comment!.toJson();
    }
    if (commentElement != null) {
      json['_comment'] = commentElement!.toJson();
    }
    if (dependsOn != null && dependsOn!.isNotEmpty) {
      json['dependsOn'] =
          dependsOn!.map((ConceptMapDependsOn v) => v.toJson()).toList();
    }
    if (product != null && product!.isNotEmpty) {
      json['product'] =
          product!.map((ConceptMapDependsOn v) => v.toJson()).toList();
    }
    return json;
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
}

/// [ConceptMapDependsOn]
/// A set of additional dependencies for this mapping to hold. This mapping
/// is only applicable if the specified element can be resolved, and it has
/// the specified value.
class ConceptMapDependsOn extends BackboneElement {
  /// Primary constructor for [ConceptMapDependsOn]

  ConceptMapDependsOn({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.property,

    /// Extensions for [property]
    this.propertyElement,
    this.system,

    /// Extensions for [system]
    this.systemElement,
    required this.value,

    /// Extensions for [value]
    this.valueElement,
    this.display,

    /// Extensions for [display]
    this.displayElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConceptMapDependsOn.fromJson(Map<String, dynamic> json) {
    return ConceptMapDependsOn(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      property: FhirUri.fromJson(json['property']),
      propertyElement: json['_property'] != null
          ? Element.fromJson(
              json['_property'] as Map<String, dynamic>,
            )
          : null,
      system: json['system'] != null
          ? FhirCanonical.fromJson(json['system'])
          : null,
      systemElement: json['_system'] != null
          ? Element.fromJson(
              json['_system'] as Map<String, dynamic>,
            )
          : null,
      value: FhirString.fromJson(json['value']),
      valueElement: json['_value'] != null
          ? Element.fromJson(
              json['_value'] as Map<String, dynamic>,
            )
          : null,
      display:
          json['display'] != null ? FhirString.fromJson(json['display']) : null,
      displayElement: json['_display'] != null
          ? Element.fromJson(
              json['_display'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [ConceptMapDependsOn] from a [String] or [YamlMap] object
  factory ConceptMapDependsOn.fromYaml(dynamic yaml) => yaml is String
      ? ConceptMapDependsOn.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ConceptMapDependsOn.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ConceptMapDependsOn cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ConceptMapDependsOn] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConceptMapDependsOn.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ConceptMapDependsOn.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ConceptMapDependsOn';

  /// [property]
  /// A reference to an element that holds a coded value that corresponds to
  /// a code system property. The idea is that the information model carries
  /// an element somewhere that is labeled to correspond with a code system
  /// property.
  final FhirUri property;

  /// Extensions for [property]
  final Element? propertyElement;

  /// [system]
  /// An absolute URI that identifies the code system of the dependency code
  /// (if the source/dependency is a value set that crosses code systems).
  final FhirCanonical? system;

  /// Extensions for [system]
  final Element? systemElement;

  /// [value]
  /// Identity (code or path) or the element/item/ValueSet/text that the map
  /// depends on / refers to.
  final FhirString value;

  /// Extensions for [value]
  final Element? valueElement;

  /// [display]
  /// The display for the code. The display is only provided to help editors
  /// when editing the concept map.
  final FhirString? display;

  /// Extensions for [display]
  final Element? displayElement;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['property'] = property.toJson();
    if (propertyElement != null) {
      json['_property'] = propertyElement!.toJson();
    }
    if (system?.value != null) {
      json['system'] = system!.toJson();
    }
    if (systemElement != null) {
      json['_system'] = systemElement!.toJson();
    }
    json['value'] = value.toJson();
    if (valueElement != null) {
      json['_value'] = valueElement!.toJson();
    }
    if (display?.value != null) {
      json['display'] = display!.toJson();
    }
    if (displayElement != null) {
      json['_display'] = displayElement!.toJson();
    }
    return json;
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
}

/// [ConceptMapUnmapped]
/// What to do when there is no mapping for the source concept. "Unmapped"
/// does not include codes that are unmatched, and the unmapped element is
/// ignored in a code is specified to have equivalence = unmatched.
class ConceptMapUnmapped extends BackboneElement {
  /// Primary constructor for [ConceptMapUnmapped]

  ConceptMapUnmapped({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.mode,

    /// Extensions for [mode]
    this.modeElement,
    this.code,

    /// Extensions for [code]
    this.codeElement,
    this.display,

    /// Extensions for [display]
    this.displayElement,
    this.url,

    /// Extensions for [url]
    this.urlElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConceptMapUnmapped.fromJson(Map<String, dynamic> json) {
    return ConceptMapUnmapped(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      mode: ConceptMapGroupUnmappedMode.fromJson(json['mode']),
      modeElement: json['_mode'] != null
          ? Element.fromJson(
              json['_mode'] as Map<String, dynamic>,
            )
          : null,
      code: json['code'] != null ? FhirCode.fromJson(json['code']) : null,
      codeElement: json['_code'] != null
          ? Element.fromJson(
              json['_code'] as Map<String, dynamic>,
            )
          : null,
      display:
          json['display'] != null ? FhirString.fromJson(json['display']) : null,
      displayElement: json['_display'] != null
          ? Element.fromJson(
              json['_display'] as Map<String, dynamic>,
            )
          : null,
      url: json['url'] != null ? FhirCanonical.fromJson(json['url']) : null,
      urlElement: json['_url'] != null
          ? Element.fromJson(
              json['_url'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [ConceptMapUnmapped] from a [String] or [YamlMap] object
  factory ConceptMapUnmapped.fromYaml(dynamic yaml) => yaml is String
      ? ConceptMapUnmapped.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ConceptMapUnmapped.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ConceptMapUnmapped cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ConceptMapUnmapped] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConceptMapUnmapped.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ConceptMapUnmapped.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ConceptMapUnmapped';

  /// [mode]
  /// Defines which action to take if there is no match for the source
  /// concept in the target system designated for the group. One of 3 actions
  /// are possible: use the unmapped code (this is useful when doing a
  /// mapping between versions, and only a few codes have changed), use a
  /// fixed code (a default code), or alternatively, a reference to a
  /// different concept map can be provided (by canonical URL).
  final ConceptMapGroupUnmappedMode mode;

  /// Extensions for [mode]
  final Element? modeElement;

  /// [code]
  /// The fixed code to use when the mode = 'fixed' - all unmapped codes are
  /// mapped to a single fixed code.
  final FhirCode? code;

  /// Extensions for [code]
  final Element? codeElement;

  /// [display]
  /// The display for the code. The display is only provided to help editors
  /// when editing the concept map.
  final FhirString? display;

  /// Extensions for [display]
  final Element? displayElement;

  /// [url]
  /// The canonical reference to an additional ConceptMap resource instance
  /// to use for mapping if this ConceptMap resource contains no matching
  /// mapping for the source concept.
  final FhirCanonical? url;

  /// Extensions for [url]
  final Element? urlElement;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['mode'] = mode.toJson();
    if (code?.value != null) {
      json['code'] = code!.toJson();
    }
    if (codeElement != null) {
      json['_code'] = codeElement!.toJson();
    }
    if (display?.value != null) {
      json['display'] = display!.toJson();
    }
    if (displayElement != null) {
      json['_display'] = displayElement!.toJson();
    }
    if (url?.value != null) {
      json['url'] = url!.toJson();
    }
    if (urlElement != null) {
      json['_url'] = urlElement!.toJson();
    }
    return json;
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
}
