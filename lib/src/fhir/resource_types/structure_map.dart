import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [StructureMap] /// A Map of relationships between 2 structures that can be used to transform
/// data.
class StructureMap extends DomainResource {
  StructureMap({
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
    required this.url,
    this.urlElement,
    this.identifier,
    this.version,
    this.versionElement,
    required this.name,
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
    this.structure,
    this.import_,
    this.importElement,
    required this.group,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(resourceType: R4ResourceType.StructureMap);

  @override
  String get fhirType => 'StructureMap';

  @Id()
  int dbId = 0;

  /// [url] /// An absolute URI that is used to identify this structure map when it is
  /// referenced in a specification, model, design or an instance; also called
  /// its canonical identifier. This SHOULD be globally unique and SHOULD be a
  /// literal address at which at which an authoritative instance of this
  /// structure map is (or will be) published. This URL can be the target of a
  /// canonical reference. It SHALL remain the same when the structure map is
  /// stored on different servers.
  final FhirUri url;
  final Element? urlElement;

  /// [identifier] /// A formal identifier that is used to identify this structure map when it is
  /// represented in other formats, or referenced in a specification, model,
  /// design or an instance.
  final List<Identifier>? identifier;

  /// [version] /// The identifier that is used to identify this version of the structure map
  /// when it is referenced in a specification, model, design or instance. This
  /// is an arbitrary value managed by the structure map author and is not
  /// expected to be globally unique. For example, it might be a timestamp (e.g.
  /// yyyymmdd) if a managed version is not available. There is also no
  /// expectation that versions can be placed in a lexicographical sequence.
  final FhirString? version;
  final Element? versionElement;

  /// [name] /// A natural language name identifying the structure map. This name should be
  /// usable as an identifier for the module by machine processing applications
  /// such as code generation.
  final FhirString name;
  final Element? nameElement;

  /// [title] /// A short, descriptive, user-friendly title for the structure map.
  final FhirString? title;
  final Element? titleElement;

  /// [status] /// The status of this structure map. Enables tracking the life-cycle of the
  /// content.
  final PublicationStatus status;
  final Element? statusElement;

  /// [experimental] /// A Boolean value to indicate that this structure map is authored for testing
  /// purposes (or education/evaluation/marketing) and is not intended to be used
  /// for genuine usage.
  final FhirBoolean? experimental;
  final Element? experimentalElement;

  /// [date] /// The date (and optionally time) when the structure map was published. The
  /// date must change when the business version changes and it must change if
  /// the status code changes. In addition, it should change when the substantive
  /// content of the structure map changes.
  final FhirDateTime? date;
  final Element? dateElement;

  /// [publisher] /// The name of the organization or individual that published the structure
  /// map.
  final FhirString? publisher;
  final Element? publisherElement;

  /// [contact] /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [description] /// A free text natural language description of the structure map from a
  /// consumer's perspective.
  final FhirMarkdown? description;
  final Element? descriptionElement;

  /// [useContext] /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories (gender,
  /// age, ...) or may be references to specific programs (insurance plans,
  /// studies, ...) and may be used to assist with indexing and searching for
  /// appropriate structure map instances.
  final List<UsageContext>? useContext;

  /// [jurisdiction] /// A legal or geographic region in which the structure map is intended to be
  /// used.
  final List<CodeableConcept>? jurisdiction;

  /// [purpose] /// Explanation of why this structure map is needed and why it has been
  /// designed as it has.
  final FhirMarkdown? purpose;
  final Element? purposeElement;

  /// [copyright] /// A copyright statement relating to the structure map and/or its contents.
  /// Copyright statements are generally legal restrictions on the use and
  /// publishing of the structure map.
  final FhirMarkdown? copyright;
  final Element? copyrightElement;

  /// [structure] /// A structure definition used by this map. The structure definition may
  /// describe instances that are converted, or the instances that are produced.
  final List<StructureMapStructure>? structure;

  /// [import_] /// Other maps used by this map (canonical URLs).
  final List<FhirCanonical>? import_;
  final List<Element>? importElement;

  /// [group] /// Organizes the mapping into manageable chunks for human review/ease of
  /// maintenance.
  final List<StructureMapGroup> group;
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
    json['url'] = url.value;
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
    json['name'] = name.value;
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
    if (structure != null && structure!.isNotEmpty) {
      json['structure'] = structure!
          .map<dynamic>((StructureMapStructure v) => v.toJson())
          .toList();
    }
    if (import_ != null && import_!.isNotEmpty) {
      json['import'] = import_!.map((FhirCanonical v) => v.value).toList();
    }
    if (importElement != null && importElement!.isNotEmpty) {
      json['_import'] = importElement!.map((Element v) => v.toJson()).toList();
    }
    json['group'] =
        group.map<dynamic>((StructureMapGroup v) => v.toJson()).toList();
    return json;
  }

  factory StructureMap.fromJson(Map<String, dynamic> json) {
    return StructureMap(
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
      url: FhirUri(json['url']),
      urlElement: Element.fromJson(json['_url'] as Map<String, dynamic>),
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
      name: FhirString(json['name']),
      nameElement: Element.fromJson(json['_name'] as Map<String, dynamic>),
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
      structure: json['structure'] != null
          ? (json['structure'] as List<dynamic>)
              .map<StructureMapStructure>((dynamic v) =>
                  StructureMapStructure.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      import_: json['import'] != null
          ? (json['import'] as List<dynamic>)
              .map<FhirCanonical>(
                  (dynamic v) => FhirCanonical.fromJson(v as dynamic))
              .toList()
          : null,
      importElement: json['_import'] != null
          ? (json['_import'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      group: (json['group'] as List<dynamic>)
          .map<StructureMapGroup>((dynamic v) =>
              StructureMapGroup.fromJson(v as Map<String, dynamic>))
          .toList(),
    );
  }
  @override
  StructureMap clone() => throw UnimplementedError();
  @override
  StructureMap copyWith({
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
    List<StructureMapStructure>? structure,
    List<FhirCanonical>? import_,
    List<Element>? importElement,
    List<StructureMapGroup>? group,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return StructureMap(
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
      structure: structure ?? this.structure,
      import_: import_ ?? this.import_,
      importElement: importElement ?? this.importElement,
      group: group ?? this.group,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory StructureMap.fromYaml(dynamic yaml) => yaml is String
      ? StructureMap.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? StructureMap.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'StructureMap cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory StructureMap.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return StructureMap.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [StructureMapStructure] /// A structure definition used by this map. The structure definition may
/// describe instances that are converted, or the instances that are produced.
class StructureMapStructure extends BackboneElement {
  StructureMapStructure({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.url,
    this.urlElement,
    required this.mode,
    this.modeElement,
    this.alias,
    this.aliasElement,
    this.documentation,
    this.documentationElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'StructureMapStructure';

  @Id()
  int dbId = 0;

  /// [url] /// The canonical reference to the structure.
  final FhirCanonical url;
  final Element? urlElement;

  /// [mode] /// How the referenced structure is used in this mapping.
  final StructureMapModelMode mode;
  final Element? modeElement;

  /// [alias] /// The name used for this type in the map.
  final FhirString? alias;
  final Element? aliasElement;

  /// [documentation] /// Documentation that describes how the structure is used in the mapping.
  final FhirString? documentation;
  final Element? documentationElement;
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
    json['url'] = url.value;
    if (urlElement != null) {
      json['_url'] = urlElement!.toJson();
    }
    json['mode'] = mode.toJson();
    if (alias?.value != null) {
      json['alias'] = alias!.value;
    }
    if (aliasElement != null) {
      json['_alias'] = aliasElement!.toJson();
    }
    if (documentation?.value != null) {
      json['documentation'] = documentation!.value;
    }
    if (documentationElement != null) {
      json['_documentation'] = documentationElement!.toJson();
    }
    return json;
  }

  factory StructureMapStructure.fromJson(Map<String, dynamic> json) {
    return StructureMapStructure(
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
      url: FhirCanonical(json['url']),
      urlElement: Element.fromJson(json['_url'] as Map<String, dynamic>),
      mode:
          StructureMapModelMode.fromJson(json['mode'] as Map<String, dynamic>),
      alias: json['alias'] != null ? FhirString(json['alias']) : null,
      aliasElement: json['_alias'] != null
          ? Element.fromJson(json['_alias'] as Map<String, dynamic>)
          : null,
      documentation: json['documentation'] != null
          ? FhirString(json['documentation'])
          : null,
      documentationElement: json['_documentation'] != null
          ? Element.fromJson(json['_documentation'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  StructureMapStructure clone() => throw UnimplementedError();
  @override
  StructureMapStructure copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCanonical? url,
    Element? urlElement,
    StructureMapModelMode? mode,
    Element? modeElement,
    FhirString? alias,
    Element? aliasElement,
    FhirString? documentation,
    Element? documentationElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return StructureMapStructure(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      url: url ?? this.url,
      urlElement: urlElement ?? this.urlElement,
      mode: mode ?? this.mode,
      modeElement: modeElement ?? this.modeElement,
      alias: alias ?? this.alias,
      aliasElement: aliasElement ?? this.aliasElement,
      documentation: documentation ?? this.documentation,
      documentationElement: documentationElement ?? this.documentationElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory StructureMapStructure.fromYaml(dynamic yaml) => yaml is String
      ? StructureMapStructure.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? StructureMapStructure.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'StructureMapStructure cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory StructureMapStructure.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return StructureMapStructure.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [StructureMapGroup] /// Organizes the mapping into manageable chunks for human review/ease of
/// maintenance.
class StructureMapGroup extends BackboneElement {
  StructureMapGroup({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.nameElement,
    this.extends_,
    this.extendsElement,
    required this.typeMode,
    this.typeModeElement,
    this.documentation,
    this.documentationElement,
    required this.input,
    required this.rule,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'StructureMapGroup';

  @Id()
  int dbId = 0;

  /// [name] /// A unique name for the group for the convenience of human readers.
  final FhirId name;
  final Element? nameElement;

  /// [extends_] /// Another group that this group adds rules to.
  final FhirId? extends_;
  final Element? extendsElement;

  /// [typeMode] /// If this is the default rule set to apply for the source type or this
  /// combination of types.
  final StructureMapGroupTypeMode typeMode;
  final Element? typeModeElement;

  /// [documentation] /// Additional supporting documentation that explains the purpose of the group
  /// and the types of mappings within it.
  final FhirString? documentation;
  final Element? documentationElement;

  /// [input] /// A name assigned to an instance of data. The instance must be provided when
  /// the mapping is invoked.
  final List<StructureMapInput> input;

  /// [rule] /// Transform Rule from source to target.
  final List<StructureMapRule> rule;
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
    json['name'] = name.value;
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    if (extends_?.value != null) {
      json['extends'] = extends_!.value;
    }
    if (extendsElement != null) {
      json['_extends'] = extendsElement!.toJson();
    }
    json['typeMode'] = typeMode.toJson();
    if (documentation?.value != null) {
      json['documentation'] = documentation!.value;
    }
    if (documentationElement != null) {
      json['_documentation'] = documentationElement!.toJson();
    }
    json['input'] =
        input.map<dynamic>((StructureMapInput v) => v.toJson()).toList();
    json['rule'] =
        rule.map<dynamic>((StructureMapRule v) => v.toJson()).toList();
    return json;
  }

  factory StructureMapGroup.fromJson(Map<String, dynamic> json) {
    return StructureMapGroup(
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
      name: FhirId(json['name']),
      nameElement: Element.fromJson(json['_name'] as Map<String, dynamic>),
      extends_: json['extends'] != null ? FhirId(json['extends']) : null,
      extendsElement: json['_extends'] != null
          ? Element.fromJson(json['_extends'] as Map<String, dynamic>)
          : null,
      typeMode: StructureMapGroupTypeMode.fromJson(
          json['typeMode'] as Map<String, dynamic>),
      documentation: json['documentation'] != null
          ? FhirString(json['documentation'])
          : null,
      documentationElement: json['_documentation'] != null
          ? Element.fromJson(json['_documentation'] as Map<String, dynamic>)
          : null,
      input: (json['input'] as List<dynamic>)
          .map<StructureMapInput>((dynamic v) =>
              StructureMapInput.fromJson(v as Map<String, dynamic>))
          .toList(),
      rule: (json['rule'] as List<dynamic>)
          .map<StructureMapRule>((dynamic v) =>
              StructureMapRule.fromJson(v as Map<String, dynamic>))
          .toList(),
    );
  }
  @override
  StructureMapGroup clone() => throw UnimplementedError();
  @override
  StructureMapGroup copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? name,
    Element? nameElement,
    FhirId? extends_,
    Element? extendsElement,
    StructureMapGroupTypeMode? typeMode,
    Element? typeModeElement,
    FhirString? documentation,
    Element? documentationElement,
    List<StructureMapInput>? input,
    List<StructureMapRule>? rule,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return StructureMapGroup(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      extends_: extends_ ?? this.extends_,
      extendsElement: extendsElement ?? this.extendsElement,
      typeMode: typeMode ?? this.typeMode,
      typeModeElement: typeModeElement ?? this.typeModeElement,
      documentation: documentation ?? this.documentation,
      documentationElement: documentationElement ?? this.documentationElement,
      input: input ?? this.input,
      rule: rule ?? this.rule,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory StructureMapGroup.fromYaml(dynamic yaml) => yaml is String
      ? StructureMapGroup.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? StructureMapGroup.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'StructureMapGroup cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory StructureMapGroup.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return StructureMapGroup.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [StructureMapInput] /// A name assigned to an instance of data. The instance must be provided when
/// the mapping is invoked.
class StructureMapInput extends BackboneElement {
  StructureMapInput({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.nameElement,
    this.type,
    this.typeElement,
    required this.mode,
    this.modeElement,
    this.documentation,
    this.documentationElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'StructureMapInput';

  @Id()
  int dbId = 0;

  /// [name] /// Name for this instance of data.
  final FhirId name;
  final Element? nameElement;

  /// [type] /// Type for this instance of data.
  final FhirString? type;
  final Element? typeElement;

  /// [mode] /// Mode for this instance of data.
  final StructureMapInputMode mode;
  final Element? modeElement;

  /// [documentation] /// Documentation for this instance of data.
  final FhirString? documentation;
  final Element? documentationElement;
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
    json['name'] = name.value;
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    if (type?.value != null) {
      json['type'] = type!.value;
    }
    if (typeElement != null) {
      json['_type'] = typeElement!.toJson();
    }
    json['mode'] = mode.toJson();
    if (documentation?.value != null) {
      json['documentation'] = documentation!.value;
    }
    if (documentationElement != null) {
      json['_documentation'] = documentationElement!.toJson();
    }
    return json;
  }

  factory StructureMapInput.fromJson(Map<String, dynamic> json) {
    return StructureMapInput(
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
      name: FhirId(json['name']),
      nameElement: Element.fromJson(json['_name'] as Map<String, dynamic>),
      type: json['type'] != null ? FhirString(json['type']) : null,
      typeElement: json['_type'] != null
          ? Element.fromJson(json['_type'] as Map<String, dynamic>)
          : null,
      mode:
          StructureMapInputMode.fromJson(json['mode'] as Map<String, dynamic>),
      documentation: json['documentation'] != null
          ? FhirString(json['documentation'])
          : null,
      documentationElement: json['_documentation'] != null
          ? Element.fromJson(json['_documentation'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  StructureMapInput clone() => throw UnimplementedError();
  @override
  StructureMapInput copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? name,
    Element? nameElement,
    FhirString? type,
    Element? typeElement,
    StructureMapInputMode? mode,
    Element? modeElement,
    FhirString? documentation,
    Element? documentationElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return StructureMapInput(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      mode: mode ?? this.mode,
      modeElement: modeElement ?? this.modeElement,
      documentation: documentation ?? this.documentation,
      documentationElement: documentationElement ?? this.documentationElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory StructureMapInput.fromYaml(dynamic yaml) => yaml is String
      ? StructureMapInput.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? StructureMapInput.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'StructureMapInput cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory StructureMapInput.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return StructureMapInput.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [StructureMapRule] /// Transform Rule from source to target.
class StructureMapRule extends BackboneElement {
  StructureMapRule({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.nameElement,
    required this.source,
    this.target,
    this.rule,
    this.dependent,
    this.documentation,
    this.documentationElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'StructureMapRule';

  @Id()
  int dbId = 0;

  /// [name] /// Name of the rule for internal references.
  final FhirId name;
  final Element? nameElement;

  /// [source] /// Source inputs to the mapping.
  final List<StructureMapSource> source;

  /// [target] /// Content to create because of this mapping rule.
  final List<StructureMapTarget>? target;

  /// [rule] /// Rules contained in this rule.
  final List<StructureMapRule>? rule;

  /// [dependent] /// Which other rules to apply in the context of this rule.
  final List<StructureMapDependent>? dependent;

  /// [documentation] /// Documentation for this instance of data.
  final FhirString? documentation;
  final Element? documentationElement;
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
    json['name'] = name.value;
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    json['source'] =
        source.map<dynamic>((StructureMapSource v) => v.toJson()).toList();
    if (target != null && target!.isNotEmpty) {
      json['target'] =
          target!.map<dynamic>((StructureMapTarget v) => v.toJson()).toList();
    }
    if (rule != null && rule!.isNotEmpty) {
      json['rule'] =
          rule!.map<dynamic>((StructureMapRule v) => v.toJson()).toList();
    }
    if (dependent != null && dependent!.isNotEmpty) {
      json['dependent'] = dependent!
          .map<dynamic>((StructureMapDependent v) => v.toJson())
          .toList();
    }
    if (documentation?.value != null) {
      json['documentation'] = documentation!.value;
    }
    if (documentationElement != null) {
      json['_documentation'] = documentationElement!.toJson();
    }
    return json;
  }

  factory StructureMapRule.fromJson(Map<String, dynamic> json) {
    return StructureMapRule(
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
      name: FhirId(json['name']),
      nameElement: Element.fromJson(json['_name'] as Map<String, dynamic>),
      source: (json['source'] as List<dynamic>)
          .map<StructureMapSource>((dynamic v) =>
              StructureMapSource.fromJson(v as Map<String, dynamic>))
          .toList(),
      target: json['target'] != null
          ? (json['target'] as List<dynamic>)
              .map<StructureMapTarget>((dynamic v) =>
                  StructureMapTarget.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      rule: json['rule'] != null
          ? (json['rule'] as List<dynamic>)
              .map<StructureMapRule>((dynamic v) =>
                  StructureMapRule.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      dependent: json['dependent'] != null
          ? (json['dependent'] as List<dynamic>)
              .map<StructureMapDependent>((dynamic v) =>
                  StructureMapDependent.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      documentation: json['documentation'] != null
          ? FhirString(json['documentation'])
          : null,
      documentationElement: json['_documentation'] != null
          ? Element.fromJson(json['_documentation'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  StructureMapRule clone() => throw UnimplementedError();
  @override
  StructureMapRule copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? name,
    Element? nameElement,
    List<StructureMapSource>? source,
    List<StructureMapTarget>? target,
    List<StructureMapRule>? rule,
    List<StructureMapDependent>? dependent,
    FhirString? documentation,
    Element? documentationElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return StructureMapRule(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      source: source ?? this.source,
      target: target ?? this.target,
      rule: rule ?? this.rule,
      dependent: dependent ?? this.dependent,
      documentation: documentation ?? this.documentation,
      documentationElement: documentationElement ?? this.documentationElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory StructureMapRule.fromYaml(dynamic yaml) => yaml is String
      ? StructureMapRule.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? StructureMapRule.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'StructureMapRule cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory StructureMapRule.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return StructureMapRule.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [StructureMapSource] /// Source inputs to the mapping.
class StructureMapSource extends BackboneElement {
  StructureMapSource({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.context,
    this.contextElement,
    this.min,
    this.minElement,
    this.max,
    this.maxElement,
    this.type,
    this.typeElement,
    this.defaultValueBase64Binary,
    this.defaultValueBase64BinaryElement,
    this.defaultValueBoolean,
    this.defaultValueBooleanElement,
    this.defaultValueCanonical,
    this.defaultValueCanonicalElement,
    this.defaultValueCode,
    this.defaultValueCodeElement,
    this.defaultValueDate,
    this.defaultValueDateElement,
    this.defaultValueDateTime,
    this.defaultValueDateTimeElement,
    this.defaultValueDecimal,
    this.defaultValueDecimalElement,
    this.defaultValueId,
    this.defaultValueIdElement,
    this.defaultValueInstant,
    this.defaultValueInstantElement,
    this.defaultValueInteger,
    this.defaultValueIntegerElement,
    this.defaultValueMarkdown,
    this.defaultValueMarkdownElement,
    this.defaultValueOid,
    this.defaultValueOidElement,
    this.defaultValuePositiveInt,
    this.defaultValuePositiveIntElement,
    this.defaultValueString,
    this.defaultValueStringElement,
    this.defaultValueTime,
    this.defaultValueTimeElement,
    this.defaultValueUnsignedInt,
    this.defaultValueUnsignedIntElement,
    this.defaultValueUri,
    this.defaultValueUriElement,
    this.defaultValueUrl,
    this.defaultValueUrlElement,
    this.defaultValueUuid,
    this.defaultValueUuidElement,
    this.defaultValueAddress,
    this.defaultValueAge,
    this.defaultValueAnnotation,
    this.defaultValueAttachment,
    this.defaultValueCodeableConcept,
    this.defaultValueCoding,
    this.defaultValueContactPoint,
    this.defaultValueCount,
    this.defaultValueDistance,
    this.defaultValueDuration,
    this.defaultValueHumanName,
    this.defaultValueIdentifier,
    this.defaultValueMoney,
    this.defaultValuePeriod,
    this.defaultValueQuantity,
    this.defaultValueRange,
    this.defaultValueRatio,
    this.defaultValueReference,
    this.defaultValueSampledData,
    this.defaultValueSignature,
    this.defaultValueTiming,
    this.defaultValueContactDetail,
    this.defaultValueContributor,
    this.defaultValueDataRequirement,
    this.defaultValueExpression,
    this.defaultValueParameterDefinition,
    this.defaultValueRelatedArtifact,
    this.defaultValueTriggerDefinition,
    this.defaultValueUsageContext,
    this.defaultValueDosage,
    this.defaultValueMeta,
    this.element,
    this.elementElement,
    this.listMode,
    this.listModeElement,
    this.variable,
    this.variableElement,
    this.condition,
    this.conditionElement,
    this.check,
    this.checkElement,
    this.logMessage,
    this.logMessageElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'StructureMapSource';

  @Id()
  int dbId = 0;

  /// [context] /// Type or variable this rule applies to.
  final FhirId context;
  final Element? contextElement;

  /// [min] /// Specified minimum cardinality for the element. This is optional; if
  /// present, it acts an implicit check on the input content.
  final FhirInteger? min;
  final Element? minElement;

  /// [max] /// Specified maximum cardinality for the element - a number or a "*". This is
  /// optional; if present, it acts an implicit check on the input content (*
  /// just serves as documentation; it's the default value).
  final FhirString? max;
  final Element? maxElement;

  /// [type] /// Specified type for the element. This works as a condition on the mapping -
  /// use for polymorphic elements.
  final FhirString? type;
  final Element? typeElement;

  /// [defaultValueBase64Binary] /// A value to use if there is no existing value in the source object.
  final FhirBase64Binary? defaultValueBase64Binary;
  final Element? defaultValueBase64BinaryElement;

  /// [defaultValueBoolean] /// A value to use if there is no existing value in the source object.
  final FhirBoolean? defaultValueBoolean;
  final Element? defaultValueBooleanElement;

  /// [defaultValueCanonical] /// A value to use if there is no existing value in the source object.
  final FhirCanonical? defaultValueCanonical;
  final Element? defaultValueCanonicalElement;

  /// [defaultValueCode] /// A value to use if there is no existing value in the source object.
  final FhirCode? defaultValueCode;
  final Element? defaultValueCodeElement;

  /// [defaultValueDate] /// A value to use if there is no existing value in the source object.
  final FhirDate? defaultValueDate;
  final Element? defaultValueDateElement;

  /// [defaultValueDateTime] /// A value to use if there is no existing value in the source object.
  final FhirDateTime? defaultValueDateTime;
  final Element? defaultValueDateTimeElement;

  /// [defaultValueDecimal] /// A value to use if there is no existing value in the source object.
  final FhirDecimal? defaultValueDecimal;
  final Element? defaultValueDecimalElement;

  /// [defaultValueId] /// A value to use if there is no existing value in the source object.
  final FhirId? defaultValueId;
  final Element? defaultValueIdElement;

  /// [defaultValueInstant] /// A value to use if there is no existing value in the source object.
  final FhirInstant? defaultValueInstant;
  final Element? defaultValueInstantElement;

  /// [defaultValueInteger] /// A value to use if there is no existing value in the source object.
  final FhirInteger? defaultValueInteger;
  final Element? defaultValueIntegerElement;

  /// [defaultValueMarkdown] /// A value to use if there is no existing value in the source object.
  final FhirMarkdown? defaultValueMarkdown;
  final Element? defaultValueMarkdownElement;

  /// [defaultValueOid] /// A value to use if there is no existing value in the source object.
  final FhirOid? defaultValueOid;
  final Element? defaultValueOidElement;

  /// [defaultValuePositiveInt] /// A value to use if there is no existing value in the source object.
  final FhirPositiveInt? defaultValuePositiveInt;
  final Element? defaultValuePositiveIntElement;

  /// [defaultValueString] /// A value to use if there is no existing value in the source object.
  final FhirString? defaultValueString;
  final Element? defaultValueStringElement;

  /// [defaultValueTime] /// A value to use if there is no existing value in the source object.
  final FhirTime? defaultValueTime;
  final Element? defaultValueTimeElement;

  /// [defaultValueUnsignedInt] /// A value to use if there is no existing value in the source object.
  final FhirUnsignedInt? defaultValueUnsignedInt;
  final Element? defaultValueUnsignedIntElement;

  /// [defaultValueUri] /// A value to use if there is no existing value in the source object.
  final FhirUri? defaultValueUri;
  final Element? defaultValueUriElement;

  /// [defaultValueUrl] /// A value to use if there is no existing value in the source object.
  final FhirUrl? defaultValueUrl;
  final Element? defaultValueUrlElement;

  /// [defaultValueUuid] /// A value to use if there is no existing value in the source object.
  final FhirUuid? defaultValueUuid;
  final Element? defaultValueUuidElement;

  /// [defaultValueAddress] /// A value to use if there is no existing value in the source object.
  final Address? defaultValueAddress;

  /// [defaultValueAge] /// A value to use if there is no existing value in the source object.
  final Age? defaultValueAge;

  /// [defaultValueAnnotation] /// A value to use if there is no existing value in the source object.
  final Annotation? defaultValueAnnotation;

  /// [defaultValueAttachment] /// A value to use if there is no existing value in the source object.
  final Attachment? defaultValueAttachment;

  /// [defaultValueCodeableConcept] /// A value to use if there is no existing value in the source object.
  final CodeableConcept? defaultValueCodeableConcept;

  /// [defaultValueCoding] /// A value to use if there is no existing value in the source object.
  final Coding? defaultValueCoding;

  /// [defaultValueContactPoint] /// A value to use if there is no existing value in the source object.
  final ContactPoint? defaultValueContactPoint;

  /// [defaultValueCount] /// A value to use if there is no existing value in the source object.
  final Count? defaultValueCount;

  /// [defaultValueDistance] /// A value to use if there is no existing value in the source object.
  final Distance? defaultValueDistance;

  /// [defaultValueDuration] /// A value to use if there is no existing value in the source object.
  final FhirDuration? defaultValueDuration;

  /// [defaultValueHumanName] /// A value to use if there is no existing value in the source object.
  final HumanName? defaultValueHumanName;

  /// [defaultValueIdentifier] /// A value to use if there is no existing value in the source object.
  final Identifier? defaultValueIdentifier;

  /// [defaultValueMoney] /// A value to use if there is no existing value in the source object.
  final Money? defaultValueMoney;

  /// [defaultValuePeriod] /// A value to use if there is no existing value in the source object.
  final Period? defaultValuePeriod;

  /// [defaultValueQuantity] /// A value to use if there is no existing value in the source object.
  final Quantity? defaultValueQuantity;

  /// [defaultValueRange] /// A value to use if there is no existing value in the source object.
  final Range? defaultValueRange;

  /// [defaultValueRatio] /// A value to use if there is no existing value in the source object.
  final Ratio? defaultValueRatio;

  /// [defaultValueReference] /// A value to use if there is no existing value in the source object.
  final Reference? defaultValueReference;

  /// [defaultValueSampledData] /// A value to use if there is no existing value in the source object.
  final SampledData? defaultValueSampledData;

  /// [defaultValueSignature] /// A value to use if there is no existing value in the source object.
  final Signature? defaultValueSignature;

  /// [defaultValueTiming] /// A value to use if there is no existing value in the source object.
  final Timing? defaultValueTiming;

  /// [defaultValueContactDetail] /// A value to use if there is no existing value in the source object.
  final ContactDetail? defaultValueContactDetail;

  /// [defaultValueContributor] /// A value to use if there is no existing value in the source object.
  final Contributor? defaultValueContributor;

  /// [defaultValueDataRequirement] /// A value to use if there is no existing value in the source object.
  final DataRequirement? defaultValueDataRequirement;

  /// [defaultValueExpression] /// A value to use if there is no existing value in the source object.
  final FhirExpression? defaultValueExpression;

  /// [defaultValueParameterDefinition] /// A value to use if there is no existing value in the source object.
  final ParameterDefinition? defaultValueParameterDefinition;

  /// [defaultValueRelatedArtifact] /// A value to use if there is no existing value in the source object.
  final RelatedArtifact? defaultValueRelatedArtifact;

  /// [defaultValueTriggerDefinition] /// A value to use if there is no existing value in the source object.
  final TriggerDefinition? defaultValueTriggerDefinition;

  /// [defaultValueUsageContext] /// A value to use if there is no existing value in the source object.
  final UsageContext? defaultValueUsageContext;

  /// [defaultValueDosage] /// A value to use if there is no existing value in the source object.
  final Dosage? defaultValueDosage;

  /// [defaultValueMeta] /// A value to use if there is no existing value in the source object.
  final FhirMeta? defaultValueMeta;

  /// [element] /// Optional field for this source.
  final FhirString? element;
  final Element? elementElement;

  /// [listMode] /// How to handle the list mode for this element.
  final StructureMapSourceListMode? listMode;
  final Element? listModeElement;

  /// [variable] /// Named context for field, if a field is specified.
  final FhirId? variable;
  final Element? variableElement;

  /// [condition] /// FHIRPath expression - must be true or the rule does not apply.
  final FhirString? condition;
  final Element? conditionElement;

  /// [check] /// FHIRPath expression - must be true or the mapping engine throws an error
  /// instead of completing.
  final FhirString? check;
  final Element? checkElement;

  /// [logMessage] /// A FHIRPath expression which specifies a message to put in the transform log
  /// when content matching the source rule is found.
  final FhirString? logMessage;
  final Element? logMessageElement;
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
    json['context'] = context.value;
    if (contextElement != null) {
      json['_context'] = contextElement!.toJson();
    }
    if (min?.value != null) {
      json['min'] = min!.value;
    }
    if (minElement != null) {
      json['_min'] = minElement!.toJson();
    }
    if (max?.value != null) {
      json['max'] = max!.value;
    }
    if (maxElement != null) {
      json['_max'] = maxElement!.toJson();
    }
    if (type?.value != null) {
      json['type'] = type!.value;
    }
    if (typeElement != null) {
      json['_type'] = typeElement!.toJson();
    }
    if (defaultValueBase64Binary?.value != null) {
      json['defaultValueBase64Binary'] = defaultValueBase64Binary!.value;
    }
    if (defaultValueBase64BinaryElement != null) {
      json['_defaultValueBase64Binary'] =
          defaultValueBase64BinaryElement!.toJson();
    }
    if (defaultValueBoolean?.value != null) {
      json['defaultValueBoolean'] = defaultValueBoolean!.value;
    }
    if (defaultValueBooleanElement != null) {
      json['_defaultValueBoolean'] = defaultValueBooleanElement!.toJson();
    }
    if (defaultValueCanonical?.value != null) {
      json['defaultValueCanonical'] = defaultValueCanonical!.value;
    }
    if (defaultValueCanonicalElement != null) {
      json['_defaultValueCanonical'] = defaultValueCanonicalElement!.toJson();
    }
    if (defaultValueCode?.value != null) {
      json['defaultValueCode'] = defaultValueCode!.value;
    }
    if (defaultValueCodeElement != null) {
      json['_defaultValueCode'] = defaultValueCodeElement!.toJson();
    }
    if (defaultValueDate?.value != null) {
      json['defaultValueDate'] = defaultValueDate!.value;
    }
    if (defaultValueDateElement != null) {
      json['_defaultValueDate'] = defaultValueDateElement!.toJson();
    }
    if (defaultValueDateTime?.value != null) {
      json['defaultValueDateTime'] = defaultValueDateTime!.value;
    }
    if (defaultValueDateTimeElement != null) {
      json['_defaultValueDateTime'] = defaultValueDateTimeElement!.toJson();
    }
    if (defaultValueDecimal?.value != null) {
      json['defaultValueDecimal'] = defaultValueDecimal!.value;
    }
    if (defaultValueDecimalElement != null) {
      json['_defaultValueDecimal'] = defaultValueDecimalElement!.toJson();
    }
    if (defaultValueId?.value != null) {
      json['defaultValueId'] = defaultValueId!.value;
    }
    if (defaultValueIdElement != null) {
      json['_defaultValueId'] = defaultValueIdElement!.toJson();
    }
    if (defaultValueInstant?.value != null) {
      json['defaultValueInstant'] = defaultValueInstant!.value;
    }
    if (defaultValueInstantElement != null) {
      json['_defaultValueInstant'] = defaultValueInstantElement!.toJson();
    }
    if (defaultValueInteger?.value != null) {
      json['defaultValueInteger'] = defaultValueInteger!.value;
    }
    if (defaultValueIntegerElement != null) {
      json['_defaultValueInteger'] = defaultValueIntegerElement!.toJson();
    }
    if (defaultValueMarkdown?.value != null) {
      json['defaultValueMarkdown'] = defaultValueMarkdown!.value;
    }
    if (defaultValueMarkdownElement != null) {
      json['_defaultValueMarkdown'] = defaultValueMarkdownElement!.toJson();
    }
    if (defaultValueOid?.value != null) {
      json['defaultValueOid'] = defaultValueOid!.value;
    }
    if (defaultValueOidElement != null) {
      json['_defaultValueOid'] = defaultValueOidElement!.toJson();
    }
    if (defaultValuePositiveInt?.value != null) {
      json['defaultValuePositiveInt'] = defaultValuePositiveInt!.value;
    }
    if (defaultValuePositiveIntElement != null) {
      json['_defaultValuePositiveInt'] =
          defaultValuePositiveIntElement!.toJson();
    }
    if (defaultValueString?.value != null) {
      json['defaultValueString'] = defaultValueString!.value;
    }
    if (defaultValueStringElement != null) {
      json['_defaultValueString'] = defaultValueStringElement!.toJson();
    }
    if (defaultValueTime?.value != null) {
      json['defaultValueTime'] = defaultValueTime!.value;
    }
    if (defaultValueTimeElement != null) {
      json['_defaultValueTime'] = defaultValueTimeElement!.toJson();
    }
    if (defaultValueUnsignedInt?.value != null) {
      json['defaultValueUnsignedInt'] = defaultValueUnsignedInt!.value;
    }
    if (defaultValueUnsignedIntElement != null) {
      json['_defaultValueUnsignedInt'] =
          defaultValueUnsignedIntElement!.toJson();
    }
    if (defaultValueUri?.value != null) {
      json['defaultValueUri'] = defaultValueUri!.value;
    }
    if (defaultValueUriElement != null) {
      json['_defaultValueUri'] = defaultValueUriElement!.toJson();
    }
    if (defaultValueUrl?.value != null) {
      json['defaultValueUrl'] = defaultValueUrl!.value;
    }
    if (defaultValueUrlElement != null) {
      json['_defaultValueUrl'] = defaultValueUrlElement!.toJson();
    }
    if (defaultValueUuid?.value != null) {
      json['defaultValueUuid'] = defaultValueUuid!.value;
    }
    if (defaultValueUuidElement != null) {
      json['_defaultValueUuid'] = defaultValueUuidElement!.toJson();
    }
    if (defaultValueAddress != null) {
      json['defaultValueAddress'] = defaultValueAddress!.toJson();
    }
    if (defaultValueAge != null) {
      json['defaultValueAge'] = defaultValueAge!.toJson();
    }
    if (defaultValueAnnotation != null) {
      json['defaultValueAnnotation'] = defaultValueAnnotation!.toJson();
    }
    if (defaultValueAttachment != null) {
      json['defaultValueAttachment'] = defaultValueAttachment!.toJson();
    }
    if (defaultValueCodeableConcept != null) {
      json['defaultValueCodeableConcept'] =
          defaultValueCodeableConcept!.toJson();
    }
    if (defaultValueCoding != null) {
      json['defaultValueCoding'] = defaultValueCoding!.toJson();
    }
    if (defaultValueContactPoint != null) {
      json['defaultValueContactPoint'] = defaultValueContactPoint!.toJson();
    }
    if (defaultValueCount != null) {
      json['defaultValueCount'] = defaultValueCount!.toJson();
    }
    if (defaultValueDistance != null) {
      json['defaultValueDistance'] = defaultValueDistance!.toJson();
    }
    if (defaultValueDuration != null) {
      json['defaultValueDuration'] = defaultValueDuration!.toJson();
    }
    if (defaultValueHumanName != null) {
      json['defaultValueHumanName'] = defaultValueHumanName!.toJson();
    }
    if (defaultValueIdentifier != null) {
      json['defaultValueIdentifier'] = defaultValueIdentifier!.toJson();
    }
    if (defaultValueMoney != null) {
      json['defaultValueMoney'] = defaultValueMoney!.toJson();
    }
    if (defaultValuePeriod != null) {
      json['defaultValuePeriod'] = defaultValuePeriod!.toJson();
    }
    if (defaultValueQuantity != null) {
      json['defaultValueQuantity'] = defaultValueQuantity!.toJson();
    }
    if (defaultValueRange != null) {
      json['defaultValueRange'] = defaultValueRange!.toJson();
    }
    if (defaultValueRatio != null) {
      json['defaultValueRatio'] = defaultValueRatio!.toJson();
    }
    if (defaultValueReference != null) {
      json['defaultValueReference'] = defaultValueReference!.toJson();
    }
    if (defaultValueSampledData != null) {
      json['defaultValueSampledData'] = defaultValueSampledData!.toJson();
    }
    if (defaultValueSignature != null) {
      json['defaultValueSignature'] = defaultValueSignature!.toJson();
    }
    if (defaultValueTiming != null) {
      json['defaultValueTiming'] = defaultValueTiming!.toJson();
    }
    if (defaultValueContactDetail != null) {
      json['defaultValueContactDetail'] = defaultValueContactDetail!.toJson();
    }
    if (defaultValueContributor != null) {
      json['defaultValueContributor'] = defaultValueContributor!.toJson();
    }
    if (defaultValueDataRequirement != null) {
      json['defaultValueDataRequirement'] =
          defaultValueDataRequirement!.toJson();
    }
    if (defaultValueExpression != null) {
      json['defaultValueExpression'] = defaultValueExpression!.toJson();
    }
    if (defaultValueParameterDefinition != null) {
      json['defaultValueParameterDefinition'] =
          defaultValueParameterDefinition!.toJson();
    }
    if (defaultValueRelatedArtifact != null) {
      json['defaultValueRelatedArtifact'] =
          defaultValueRelatedArtifact!.toJson();
    }
    if (defaultValueTriggerDefinition != null) {
      json['defaultValueTriggerDefinition'] =
          defaultValueTriggerDefinition!.toJson();
    }
    if (defaultValueUsageContext != null) {
      json['defaultValueUsageContext'] = defaultValueUsageContext!.toJson();
    }
    if (defaultValueDosage != null) {
      json['defaultValueDosage'] = defaultValueDosage!.toJson();
    }
    if (defaultValueMeta != null) {
      json['defaultValueMeta'] = defaultValueMeta!.toJson();
    }
    if (element?.value != null) {
      json['element'] = element!.value;
    }
    if (elementElement != null) {
      json['_element'] = elementElement!.toJson();
    }
    if (listMode != null) {
      json['listMode'] = listMode!.toJson();
    }
    if (variable?.value != null) {
      json['variable'] = variable!.value;
    }
    if (variableElement != null) {
      json['_variable'] = variableElement!.toJson();
    }
    if (condition?.value != null) {
      json['condition'] = condition!.value;
    }
    if (conditionElement != null) {
      json['_condition'] = conditionElement!.toJson();
    }
    if (check?.value != null) {
      json['check'] = check!.value;
    }
    if (checkElement != null) {
      json['_check'] = checkElement!.toJson();
    }
    if (logMessage?.value != null) {
      json['logMessage'] = logMessage!.value;
    }
    if (logMessageElement != null) {
      json['_logMessage'] = logMessageElement!.toJson();
    }
    return json;
  }

  factory StructureMapSource.fromJson(Map<String, dynamic> json) {
    return StructureMapSource(
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
      context: FhirId(json['context']),
      contextElement:
          Element.fromJson(json['_context'] as Map<String, dynamic>),
      min: json['min'] != null ? FhirInteger(json['min']) : null,
      minElement: json['_min'] != null
          ? Element.fromJson(json['_min'] as Map<String, dynamic>)
          : null,
      max: json['max'] != null ? FhirString(json['max']) : null,
      maxElement: json['_max'] != null
          ? Element.fromJson(json['_max'] as Map<String, dynamic>)
          : null,
      type: json['type'] != null ? FhirString(json['type']) : null,
      typeElement: json['_type'] != null
          ? Element.fromJson(json['_type'] as Map<String, dynamic>)
          : null,
      defaultValueBase64Binary: json['defaultValueBase64Binary'] != null
          ? FhirBase64Binary(json['defaultValueBase64Binary'])
          : null,
      defaultValueBase64BinaryElement: json['_defaultValueBase64Binary'] != null
          ? Element.fromJson(
              json['_defaultValueBase64Binary'] as Map<String, dynamic>)
          : null,
      defaultValueBoolean: json['defaultValueBoolean'] != null
          ? FhirBoolean(json['defaultValueBoolean'])
          : null,
      defaultValueBooleanElement: json['_defaultValueBoolean'] != null
          ? Element.fromJson(
              json['_defaultValueBoolean'] as Map<String, dynamic>)
          : null,
      defaultValueCanonical: json['defaultValueCanonical'] != null
          ? FhirCanonical(json['defaultValueCanonical'])
          : null,
      defaultValueCanonicalElement: json['_defaultValueCanonical'] != null
          ? Element.fromJson(
              json['_defaultValueCanonical'] as Map<String, dynamic>)
          : null,
      defaultValueCode: json['defaultValueCode'] != null
          ? FhirCode(json['defaultValueCode'])
          : null,
      defaultValueCodeElement: json['_defaultValueCode'] != null
          ? Element.fromJson(json['_defaultValueCode'] as Map<String, dynamic>)
          : null,
      defaultValueDate: json['defaultValueDate'] != null
          ? FhirDate(json['defaultValueDate'])
          : null,
      defaultValueDateElement: json['_defaultValueDate'] != null
          ? Element.fromJson(json['_defaultValueDate'] as Map<String, dynamic>)
          : null,
      defaultValueDateTime: json['defaultValueDateTime'] != null
          ? FhirDateTime(json['defaultValueDateTime'])
          : null,
      defaultValueDateTimeElement: json['_defaultValueDateTime'] != null
          ? Element.fromJson(
              json['_defaultValueDateTime'] as Map<String, dynamic>)
          : null,
      defaultValueDecimal: json['defaultValueDecimal'] != null
          ? FhirDecimal(json['defaultValueDecimal'])
          : null,
      defaultValueDecimalElement: json['_defaultValueDecimal'] != null
          ? Element.fromJson(
              json['_defaultValueDecimal'] as Map<String, dynamic>)
          : null,
      defaultValueId: json['defaultValueId'] != null
          ? FhirId(json['defaultValueId'])
          : null,
      defaultValueIdElement: json['_defaultValueId'] != null
          ? Element.fromJson(json['_defaultValueId'] as Map<String, dynamic>)
          : null,
      defaultValueInstant: json['defaultValueInstant'] != null
          ? FhirInstant(json['defaultValueInstant'])
          : null,
      defaultValueInstantElement: json['_defaultValueInstant'] != null
          ? Element.fromJson(
              json['_defaultValueInstant'] as Map<String, dynamic>)
          : null,
      defaultValueInteger: json['defaultValueInteger'] != null
          ? FhirInteger(json['defaultValueInteger'])
          : null,
      defaultValueIntegerElement: json['_defaultValueInteger'] != null
          ? Element.fromJson(
              json['_defaultValueInteger'] as Map<String, dynamic>)
          : null,
      defaultValueMarkdown: json['defaultValueMarkdown'] != null
          ? FhirMarkdown(json['defaultValueMarkdown'])
          : null,
      defaultValueMarkdownElement: json['_defaultValueMarkdown'] != null
          ? Element.fromJson(
              json['_defaultValueMarkdown'] as Map<String, dynamic>)
          : null,
      defaultValueOid: json['defaultValueOid'] != null
          ? FhirOid(json['defaultValueOid'])
          : null,
      defaultValueOidElement: json['_defaultValueOid'] != null
          ? Element.fromJson(json['_defaultValueOid'] as Map<String, dynamic>)
          : null,
      defaultValuePositiveInt: json['defaultValuePositiveInt'] != null
          ? FhirPositiveInt(json['defaultValuePositiveInt'])
          : null,
      defaultValuePositiveIntElement: json['_defaultValuePositiveInt'] != null
          ? Element.fromJson(
              json['_defaultValuePositiveInt'] as Map<String, dynamic>)
          : null,
      defaultValueString: json['defaultValueString'] != null
          ? FhirString(json['defaultValueString'])
          : null,
      defaultValueStringElement: json['_defaultValueString'] != null
          ? Element.fromJson(
              json['_defaultValueString'] as Map<String, dynamic>)
          : null,
      defaultValueTime: json['defaultValueTime'] != null
          ? FhirTime(json['defaultValueTime'])
          : null,
      defaultValueTimeElement: json['_defaultValueTime'] != null
          ? Element.fromJson(json['_defaultValueTime'] as Map<String, dynamic>)
          : null,
      defaultValueUnsignedInt: json['defaultValueUnsignedInt'] != null
          ? FhirUnsignedInt(json['defaultValueUnsignedInt'])
          : null,
      defaultValueUnsignedIntElement: json['_defaultValueUnsignedInt'] != null
          ? Element.fromJson(
              json['_defaultValueUnsignedInt'] as Map<String, dynamic>)
          : null,
      defaultValueUri: json['defaultValueUri'] != null
          ? FhirUri(json['defaultValueUri'])
          : null,
      defaultValueUriElement: json['_defaultValueUri'] != null
          ? Element.fromJson(json['_defaultValueUri'] as Map<String, dynamic>)
          : null,
      defaultValueUrl: json['defaultValueUrl'] != null
          ? FhirUrl(json['defaultValueUrl'])
          : null,
      defaultValueUrlElement: json['_defaultValueUrl'] != null
          ? Element.fromJson(json['_defaultValueUrl'] as Map<String, dynamic>)
          : null,
      defaultValueUuid: json['defaultValueUuid'] != null
          ? FhirUuid(json['defaultValueUuid'])
          : null,
      defaultValueUuidElement: json['_defaultValueUuid'] != null
          ? Element.fromJson(json['_defaultValueUuid'] as Map<String, dynamic>)
          : null,
      defaultValueAddress: json['defaultValueAddress'] != null
          ? Address.fromJson(
              json['defaultValueAddress'] as Map<String, dynamic>)
          : null,
      defaultValueAge: json['defaultValueAge'] != null
          ? Age.fromJson(json['defaultValueAge'] as Map<String, dynamic>)
          : null,
      defaultValueAnnotation: json['defaultValueAnnotation'] != null
          ? Annotation.fromJson(
              json['defaultValueAnnotation'] as Map<String, dynamic>)
          : null,
      defaultValueAttachment: json['defaultValueAttachment'] != null
          ? Attachment.fromJson(
              json['defaultValueAttachment'] as Map<String, dynamic>)
          : null,
      defaultValueCodeableConcept: json['defaultValueCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['defaultValueCodeableConcept'] as Map<String, dynamic>)
          : null,
      defaultValueCoding: json['defaultValueCoding'] != null
          ? Coding.fromJson(json['defaultValueCoding'] as Map<String, dynamic>)
          : null,
      defaultValueContactPoint: json['defaultValueContactPoint'] != null
          ? ContactPoint.fromJson(
              json['defaultValueContactPoint'] as Map<String, dynamic>)
          : null,
      defaultValueCount: json['defaultValueCount'] != null
          ? Count.fromJson(json['defaultValueCount'] as Map<String, dynamic>)
          : null,
      defaultValueDistance: json['defaultValueDistance'] != null
          ? Distance.fromJson(
              json['defaultValueDistance'] as Map<String, dynamic>)
          : null,
      defaultValueDuration: json['defaultValueDuration'] != null
          ? FhirDuration.fromJson(
              json['defaultValueDuration'] as Map<String, dynamic>)
          : null,
      defaultValueHumanName: json['defaultValueHumanName'] != null
          ? HumanName.fromJson(
              json['defaultValueHumanName'] as Map<String, dynamic>)
          : null,
      defaultValueIdentifier: json['defaultValueIdentifier'] != null
          ? Identifier.fromJson(
              json['defaultValueIdentifier'] as Map<String, dynamic>)
          : null,
      defaultValueMoney: json['defaultValueMoney'] != null
          ? Money.fromJson(json['defaultValueMoney'] as Map<String, dynamic>)
          : null,
      defaultValuePeriod: json['defaultValuePeriod'] != null
          ? Period.fromJson(json['defaultValuePeriod'] as Map<String, dynamic>)
          : null,
      defaultValueQuantity: json['defaultValueQuantity'] != null
          ? Quantity.fromJson(
              json['defaultValueQuantity'] as Map<String, dynamic>)
          : null,
      defaultValueRange: json['defaultValueRange'] != null
          ? Range.fromJson(json['defaultValueRange'] as Map<String, dynamic>)
          : null,
      defaultValueRatio: json['defaultValueRatio'] != null
          ? Ratio.fromJson(json['defaultValueRatio'] as Map<String, dynamic>)
          : null,
      defaultValueReference: json['defaultValueReference'] != null
          ? Reference.fromJson(
              json['defaultValueReference'] as Map<String, dynamic>)
          : null,
      defaultValueSampledData: json['defaultValueSampledData'] != null
          ? SampledData.fromJson(
              json['defaultValueSampledData'] as Map<String, dynamic>)
          : null,
      defaultValueSignature: json['defaultValueSignature'] != null
          ? Signature.fromJson(
              json['defaultValueSignature'] as Map<String, dynamic>)
          : null,
      defaultValueTiming: json['defaultValueTiming'] != null
          ? Timing.fromJson(json['defaultValueTiming'] as Map<String, dynamic>)
          : null,
      defaultValueContactDetail: json['defaultValueContactDetail'] != null
          ? ContactDetail.fromJson(
              json['defaultValueContactDetail'] as Map<String, dynamic>)
          : null,
      defaultValueContributor: json['defaultValueContributor'] != null
          ? Contributor.fromJson(
              json['defaultValueContributor'] as Map<String, dynamic>)
          : null,
      defaultValueDataRequirement: json['defaultValueDataRequirement'] != null
          ? DataRequirement.fromJson(
              json['defaultValueDataRequirement'] as Map<String, dynamic>)
          : null,
      defaultValueExpression: json['defaultValueExpression'] != null
          ? FhirExpression.fromJson(
              json['defaultValueExpression'] as Map<String, dynamic>)
          : null,
      defaultValueParameterDefinition:
          json['defaultValueParameterDefinition'] != null
              ? ParameterDefinition.fromJson(
                  json['defaultValueParameterDefinition']
                      as Map<String, dynamic>)
              : null,
      defaultValueRelatedArtifact: json['defaultValueRelatedArtifact'] != null
          ? RelatedArtifact.fromJson(
              json['defaultValueRelatedArtifact'] as Map<String, dynamic>)
          : null,
      defaultValueTriggerDefinition:
          json['defaultValueTriggerDefinition'] != null
              ? TriggerDefinition.fromJson(
                  json['defaultValueTriggerDefinition'] as Map<String, dynamic>)
              : null,
      defaultValueUsageContext: json['defaultValueUsageContext'] != null
          ? UsageContext.fromJson(
              json['defaultValueUsageContext'] as Map<String, dynamic>)
          : null,
      defaultValueDosage: json['defaultValueDosage'] != null
          ? Dosage.fromJson(json['defaultValueDosage'] as Map<String, dynamic>)
          : null,
      defaultValueMeta: json['defaultValueMeta'] != null
          ? FhirMeta.fromJson(json['defaultValueMeta'] as Map<String, dynamic>)
          : null,
      element: json['element'] != null ? FhirString(json['element']) : null,
      elementElement: json['_element'] != null
          ? Element.fromJson(json['_element'] as Map<String, dynamic>)
          : null,
      listMode: json['listMode'] != null
          ? StructureMapSourceListMode.fromJson(
              json['listMode'] as Map<String, dynamic>)
          : null,
      variable: json['variable'] != null ? FhirId(json['variable']) : null,
      variableElement: json['_variable'] != null
          ? Element.fromJson(json['_variable'] as Map<String, dynamic>)
          : null,
      condition:
          json['condition'] != null ? FhirString(json['condition']) : null,
      conditionElement: json['_condition'] != null
          ? Element.fromJson(json['_condition'] as Map<String, dynamic>)
          : null,
      check: json['check'] != null ? FhirString(json['check']) : null,
      checkElement: json['_check'] != null
          ? Element.fromJson(json['_check'] as Map<String, dynamic>)
          : null,
      logMessage:
          json['logMessage'] != null ? FhirString(json['logMessage']) : null,
      logMessageElement: json['_logMessage'] != null
          ? Element.fromJson(json['_logMessage'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  StructureMapSource clone() => throw UnimplementedError();
  @override
  StructureMapSource copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? context,
    Element? contextElement,
    FhirInteger? min,
    Element? minElement,
    FhirString? max,
    Element? maxElement,
    FhirString? type,
    Element? typeElement,
    FhirBase64Binary? defaultValueBase64Binary,
    Element? defaultValueBase64BinaryElement,
    FhirBoolean? defaultValueBoolean,
    Element? defaultValueBooleanElement,
    FhirCanonical? defaultValueCanonical,
    Element? defaultValueCanonicalElement,
    FhirCode? defaultValueCode,
    Element? defaultValueCodeElement,
    FhirDate? defaultValueDate,
    Element? defaultValueDateElement,
    FhirDateTime? defaultValueDateTime,
    Element? defaultValueDateTimeElement,
    FhirDecimal? defaultValueDecimal,
    Element? defaultValueDecimalElement,
    FhirId? defaultValueId,
    Element? defaultValueIdElement,
    FhirInstant? defaultValueInstant,
    Element? defaultValueInstantElement,
    FhirInteger? defaultValueInteger,
    Element? defaultValueIntegerElement,
    FhirMarkdown? defaultValueMarkdown,
    Element? defaultValueMarkdownElement,
    FhirOid? defaultValueOid,
    Element? defaultValueOidElement,
    FhirPositiveInt? defaultValuePositiveInt,
    Element? defaultValuePositiveIntElement,
    FhirString? defaultValueString,
    Element? defaultValueStringElement,
    FhirTime? defaultValueTime,
    Element? defaultValueTimeElement,
    FhirUnsignedInt? defaultValueUnsignedInt,
    Element? defaultValueUnsignedIntElement,
    FhirUri? defaultValueUri,
    Element? defaultValueUriElement,
    FhirUrl? defaultValueUrl,
    Element? defaultValueUrlElement,
    FhirUuid? defaultValueUuid,
    Element? defaultValueUuidElement,
    Address? defaultValueAddress,
    Age? defaultValueAge,
    Annotation? defaultValueAnnotation,
    Attachment? defaultValueAttachment,
    CodeableConcept? defaultValueCodeableConcept,
    Coding? defaultValueCoding,
    ContactPoint? defaultValueContactPoint,
    Count? defaultValueCount,
    Distance? defaultValueDistance,
    FhirDuration? defaultValueDuration,
    HumanName? defaultValueHumanName,
    Identifier? defaultValueIdentifier,
    Money? defaultValueMoney,
    Period? defaultValuePeriod,
    Quantity? defaultValueQuantity,
    Range? defaultValueRange,
    Ratio? defaultValueRatio,
    Reference? defaultValueReference,
    SampledData? defaultValueSampledData,
    Signature? defaultValueSignature,
    Timing? defaultValueTiming,
    ContactDetail? defaultValueContactDetail,
    Contributor? defaultValueContributor,
    DataRequirement? defaultValueDataRequirement,
    FhirExpression? defaultValueExpression,
    ParameterDefinition? defaultValueParameterDefinition,
    RelatedArtifact? defaultValueRelatedArtifact,
    TriggerDefinition? defaultValueTriggerDefinition,
    UsageContext? defaultValueUsageContext,
    Dosage? defaultValueDosage,
    FhirMeta? defaultValueMeta,
    FhirString? element,
    Element? elementElement,
    StructureMapSourceListMode? listMode,
    Element? listModeElement,
    FhirId? variable,
    Element? variableElement,
    FhirString? condition,
    Element? conditionElement,
    FhirString? check,
    Element? checkElement,
    FhirString? logMessage,
    Element? logMessageElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return StructureMapSource(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      context: context ?? this.context,
      contextElement: contextElement ?? this.contextElement,
      min: min ?? this.min,
      minElement: minElement ?? this.minElement,
      max: max ?? this.max,
      maxElement: maxElement ?? this.maxElement,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      defaultValueBase64Binary:
          defaultValueBase64Binary ?? this.defaultValueBase64Binary,
      defaultValueBase64BinaryElement: defaultValueBase64BinaryElement ??
          this.defaultValueBase64BinaryElement,
      defaultValueBoolean: defaultValueBoolean ?? this.defaultValueBoolean,
      defaultValueBooleanElement:
          defaultValueBooleanElement ?? this.defaultValueBooleanElement,
      defaultValueCanonical:
          defaultValueCanonical ?? this.defaultValueCanonical,
      defaultValueCanonicalElement:
          defaultValueCanonicalElement ?? this.defaultValueCanonicalElement,
      defaultValueCode: defaultValueCode ?? this.defaultValueCode,
      defaultValueCodeElement:
          defaultValueCodeElement ?? this.defaultValueCodeElement,
      defaultValueDate: defaultValueDate ?? this.defaultValueDate,
      defaultValueDateElement:
          defaultValueDateElement ?? this.defaultValueDateElement,
      defaultValueDateTime: defaultValueDateTime ?? this.defaultValueDateTime,
      defaultValueDateTimeElement:
          defaultValueDateTimeElement ?? this.defaultValueDateTimeElement,
      defaultValueDecimal: defaultValueDecimal ?? this.defaultValueDecimal,
      defaultValueDecimalElement:
          defaultValueDecimalElement ?? this.defaultValueDecimalElement,
      defaultValueId: defaultValueId ?? this.defaultValueId,
      defaultValueIdElement:
          defaultValueIdElement ?? this.defaultValueIdElement,
      defaultValueInstant: defaultValueInstant ?? this.defaultValueInstant,
      defaultValueInstantElement:
          defaultValueInstantElement ?? this.defaultValueInstantElement,
      defaultValueInteger: defaultValueInteger ?? this.defaultValueInteger,
      defaultValueIntegerElement:
          defaultValueIntegerElement ?? this.defaultValueIntegerElement,
      defaultValueMarkdown: defaultValueMarkdown ?? this.defaultValueMarkdown,
      defaultValueMarkdownElement:
          defaultValueMarkdownElement ?? this.defaultValueMarkdownElement,
      defaultValueOid: defaultValueOid ?? this.defaultValueOid,
      defaultValueOidElement:
          defaultValueOidElement ?? this.defaultValueOidElement,
      defaultValuePositiveInt:
          defaultValuePositiveInt ?? this.defaultValuePositiveInt,
      defaultValuePositiveIntElement:
          defaultValuePositiveIntElement ?? this.defaultValuePositiveIntElement,
      defaultValueString: defaultValueString ?? this.defaultValueString,
      defaultValueStringElement:
          defaultValueStringElement ?? this.defaultValueStringElement,
      defaultValueTime: defaultValueTime ?? this.defaultValueTime,
      defaultValueTimeElement:
          defaultValueTimeElement ?? this.defaultValueTimeElement,
      defaultValueUnsignedInt:
          defaultValueUnsignedInt ?? this.defaultValueUnsignedInt,
      defaultValueUnsignedIntElement:
          defaultValueUnsignedIntElement ?? this.defaultValueUnsignedIntElement,
      defaultValueUri: defaultValueUri ?? this.defaultValueUri,
      defaultValueUriElement:
          defaultValueUriElement ?? this.defaultValueUriElement,
      defaultValueUrl: defaultValueUrl ?? this.defaultValueUrl,
      defaultValueUrlElement:
          defaultValueUrlElement ?? this.defaultValueUrlElement,
      defaultValueUuid: defaultValueUuid ?? this.defaultValueUuid,
      defaultValueUuidElement:
          defaultValueUuidElement ?? this.defaultValueUuidElement,
      defaultValueAddress: defaultValueAddress ?? this.defaultValueAddress,
      defaultValueAge: defaultValueAge ?? this.defaultValueAge,
      defaultValueAnnotation:
          defaultValueAnnotation ?? this.defaultValueAnnotation,
      defaultValueAttachment:
          defaultValueAttachment ?? this.defaultValueAttachment,
      defaultValueCodeableConcept:
          defaultValueCodeableConcept ?? this.defaultValueCodeableConcept,
      defaultValueCoding: defaultValueCoding ?? this.defaultValueCoding,
      defaultValueContactPoint:
          defaultValueContactPoint ?? this.defaultValueContactPoint,
      defaultValueCount: defaultValueCount ?? this.defaultValueCount,
      defaultValueDistance: defaultValueDistance ?? this.defaultValueDistance,
      defaultValueDuration: defaultValueDuration ?? this.defaultValueDuration,
      defaultValueHumanName:
          defaultValueHumanName ?? this.defaultValueHumanName,
      defaultValueIdentifier:
          defaultValueIdentifier ?? this.defaultValueIdentifier,
      defaultValueMoney: defaultValueMoney ?? this.defaultValueMoney,
      defaultValuePeriod: defaultValuePeriod ?? this.defaultValuePeriod,
      defaultValueQuantity: defaultValueQuantity ?? this.defaultValueQuantity,
      defaultValueRange: defaultValueRange ?? this.defaultValueRange,
      defaultValueRatio: defaultValueRatio ?? this.defaultValueRatio,
      defaultValueReference:
          defaultValueReference ?? this.defaultValueReference,
      defaultValueSampledData:
          defaultValueSampledData ?? this.defaultValueSampledData,
      defaultValueSignature:
          defaultValueSignature ?? this.defaultValueSignature,
      defaultValueTiming: defaultValueTiming ?? this.defaultValueTiming,
      defaultValueContactDetail:
          defaultValueContactDetail ?? this.defaultValueContactDetail,
      defaultValueContributor:
          defaultValueContributor ?? this.defaultValueContributor,
      defaultValueDataRequirement:
          defaultValueDataRequirement ?? this.defaultValueDataRequirement,
      defaultValueExpression:
          defaultValueExpression ?? this.defaultValueExpression,
      defaultValueParameterDefinition: defaultValueParameterDefinition ??
          this.defaultValueParameterDefinition,
      defaultValueRelatedArtifact:
          defaultValueRelatedArtifact ?? this.defaultValueRelatedArtifact,
      defaultValueTriggerDefinition:
          defaultValueTriggerDefinition ?? this.defaultValueTriggerDefinition,
      defaultValueUsageContext:
          defaultValueUsageContext ?? this.defaultValueUsageContext,
      defaultValueDosage: defaultValueDosage ?? this.defaultValueDosage,
      defaultValueMeta: defaultValueMeta ?? this.defaultValueMeta,
      element: element ?? this.element,
      elementElement: elementElement ?? this.elementElement,
      listMode: listMode ?? this.listMode,
      listModeElement: listModeElement ?? this.listModeElement,
      variable: variable ?? this.variable,
      variableElement: variableElement ?? this.variableElement,
      condition: condition ?? this.condition,
      conditionElement: conditionElement ?? this.conditionElement,
      check: check ?? this.check,
      checkElement: checkElement ?? this.checkElement,
      logMessage: logMessage ?? this.logMessage,
      logMessageElement: logMessageElement ?? this.logMessageElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory StructureMapSource.fromYaml(dynamic yaml) => yaml is String
      ? StructureMapSource.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? StructureMapSource.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'StructureMapSource cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory StructureMapSource.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return StructureMapSource.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [StructureMapTarget] /// Content to create because of this mapping rule.
class StructureMapTarget extends BackboneElement {
  StructureMapTarget({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.context,
    this.contextElement,
    this.contextType,
    this.contextTypeElement,
    this.element,
    this.elementElement,
    this.variable,
    this.variableElement,
    this.listMode,
    this.listModeElement,
    this.listRuleId,
    this.listRuleIdElement,
    this.transform,
    this.transformElement,
    this.parameter,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'StructureMapTarget';

  @Id()
  int dbId = 0;

  /// [context] /// Type or variable this rule applies to.
  final FhirId? context;
  final Element? contextElement;

  /// [contextType] /// How to interpret the context.
  final StructureMapContextType? contextType;
  final Element? contextTypeElement;

  /// [element] /// Field to create in the context.
  final FhirString? element;
  final Element? elementElement;

  /// [variable] /// Named context for field, if desired, and a field is specified.
  final FhirId? variable;
  final Element? variableElement;

  /// [listMode] /// If field is a list, how to manage the list.
  final List<StructureMapTargetListMode>? listMode;
  final List<Element>? listModeElement;

  /// [listRuleId] /// Internal rule reference for shared list items.
  final FhirId? listRuleId;
  final Element? listRuleIdElement;

  /// [transform] /// How the data is copied / created.
  final StructureMapTransform? transform;
  final Element? transformElement;

  /// [parameter] /// Parameters to the transform.
  final List<StructureMapParameter>? parameter;
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
    if (context?.value != null) {
      json['context'] = context!.value;
    }
    if (contextElement != null) {
      json['_context'] = contextElement!.toJson();
    }
    if (contextType != null) {
      json['contextType'] = contextType!.toJson();
    }
    if (element?.value != null) {
      json['element'] = element!.value;
    }
    if (elementElement != null) {
      json['_element'] = elementElement!.toJson();
    }
    if (variable?.value != null) {
      json['variable'] = variable!.value;
    }
    if (variableElement != null) {
      json['_variable'] = variableElement!.toJson();
    }
    if (listMode != null && listMode!.isNotEmpty) {
      json['listMode'] = listMode!
          .map<dynamic>((StructureMapTargetListMode v) => v.toJson())
          .toList();
    }
    if (listRuleId?.value != null) {
      json['listRuleId'] = listRuleId!.value;
    }
    if (listRuleIdElement != null) {
      json['_listRuleId'] = listRuleIdElement!.toJson();
    }
    if (transform != null) {
      json['transform'] = transform!.toJson();
    }
    if (parameter != null && parameter!.isNotEmpty) {
      json['parameter'] = parameter!
          .map<dynamic>((StructureMapParameter v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory StructureMapTarget.fromJson(Map<String, dynamic> json) {
    return StructureMapTarget(
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
      context: json['context'] != null ? FhirId(json['context']) : null,
      contextElement: json['_context'] != null
          ? Element.fromJson(json['_context'] as Map<String, dynamic>)
          : null,
      contextType: json['contextType'] != null
          ? StructureMapContextType.fromJson(
              json['contextType'] as Map<String, dynamic>)
          : null,
      element: json['element'] != null ? FhirString(json['element']) : null,
      elementElement: json['_element'] != null
          ? Element.fromJson(json['_element'] as Map<String, dynamic>)
          : null,
      variable: json['variable'] != null ? FhirId(json['variable']) : null,
      variableElement: json['_variable'] != null
          ? Element.fromJson(json['_variable'] as Map<String, dynamic>)
          : null,
      listMode: json['listMode'] != null
          ? (json['listMode'] as List<dynamic>)
              .map<StructureMapTargetListMode>((dynamic v) =>
                  StructureMapTargetListMode.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      listRuleId:
          json['listRuleId'] != null ? FhirId(json['listRuleId']) : null,
      listRuleIdElement: json['_listRuleId'] != null
          ? Element.fromJson(json['_listRuleId'] as Map<String, dynamic>)
          : null,
      transform: json['transform'] != null
          ? StructureMapTransform.fromJson(
              json['transform'] as Map<String, dynamic>)
          : null,
      parameter: json['parameter'] != null
          ? (json['parameter'] as List<dynamic>)
              .map<StructureMapParameter>((dynamic v) =>
                  StructureMapParameter.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  StructureMapTarget clone() => throw UnimplementedError();
  @override
  StructureMapTarget copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? context,
    Element? contextElement,
    StructureMapContextType? contextType,
    Element? contextTypeElement,
    FhirString? element,
    Element? elementElement,
    FhirId? variable,
    Element? variableElement,
    List<StructureMapTargetListMode>? listMode,
    List<Element>? listModeElement,
    FhirId? listRuleId,
    Element? listRuleIdElement,
    StructureMapTransform? transform,
    Element? transformElement,
    List<StructureMapParameter>? parameter,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return StructureMapTarget(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      context: context ?? this.context,
      contextElement: contextElement ?? this.contextElement,
      contextType: contextType ?? this.contextType,
      contextTypeElement: contextTypeElement ?? this.contextTypeElement,
      element: element ?? this.element,
      elementElement: elementElement ?? this.elementElement,
      variable: variable ?? this.variable,
      variableElement: variableElement ?? this.variableElement,
      listMode: listMode ?? this.listMode,
      listModeElement: listModeElement ?? this.listModeElement,
      listRuleId: listRuleId ?? this.listRuleId,
      listRuleIdElement: listRuleIdElement ?? this.listRuleIdElement,
      transform: transform ?? this.transform,
      transformElement: transformElement ?? this.transformElement,
      parameter: parameter ?? this.parameter,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory StructureMapTarget.fromYaml(dynamic yaml) => yaml is String
      ? StructureMapTarget.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? StructureMapTarget.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'StructureMapTarget cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory StructureMapTarget.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return StructureMapTarget.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [StructureMapParameter] /// Parameters to the transform.
class StructureMapParameter extends BackboneElement {
  StructureMapParameter({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.valueId,
    this.valueIdElement,
    this.valueString,
    this.valueStringElement,
    this.valueBoolean,
    this.valueBooleanElement,
    this.valueInteger,
    this.valueIntegerElement,
    this.valueDecimal,
    this.valueDecimalElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'StructureMapParameter';

  @Id()
  int dbId = 0;

  /// [valueId] /// Parameter value - variable or literal.
  final FhirId? valueId;
  final Element? valueIdElement;

  /// [valueString] /// Parameter value - variable or literal.
  final FhirString? valueString;
  final Element? valueStringElement;

  /// [valueBoolean] /// Parameter value - variable or literal.
  final FhirBoolean? valueBoolean;
  final Element? valueBooleanElement;

  /// [valueInteger] /// Parameter value - variable or literal.
  final FhirInteger? valueInteger;
  final Element? valueIntegerElement;

  /// [valueDecimal] /// Parameter value - variable or literal.
  final FhirDecimal? valueDecimal;
  final Element? valueDecimalElement;
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
    if (valueId?.value != null) {
      json['valueId'] = valueId!.value;
    }
    if (valueIdElement != null) {
      json['_valueId'] = valueIdElement!.toJson();
    }
    if (valueString?.value != null) {
      json['valueString'] = valueString!.value;
    }
    if (valueStringElement != null) {
      json['_valueString'] = valueStringElement!.toJson();
    }
    if (valueBoolean?.value != null) {
      json['valueBoolean'] = valueBoolean!.value;
    }
    if (valueBooleanElement != null) {
      json['_valueBoolean'] = valueBooleanElement!.toJson();
    }
    if (valueInteger?.value != null) {
      json['valueInteger'] = valueInteger!.value;
    }
    if (valueIntegerElement != null) {
      json['_valueInteger'] = valueIntegerElement!.toJson();
    }
    if (valueDecimal?.value != null) {
      json['valueDecimal'] = valueDecimal!.value;
    }
    if (valueDecimalElement != null) {
      json['_valueDecimal'] = valueDecimalElement!.toJson();
    }
    return json;
  }

  factory StructureMapParameter.fromJson(Map<String, dynamic> json) {
    return StructureMapParameter(
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
      valueId: json['valueId'] != null ? FhirId(json['valueId']) : null,
      valueIdElement: json['_valueId'] != null
          ? Element.fromJson(json['_valueId'] as Map<String, dynamic>)
          : null,
      valueString:
          json['valueString'] != null ? FhirString(json['valueString']) : null,
      valueStringElement: json['_valueString'] != null
          ? Element.fromJson(json['_valueString'] as Map<String, dynamic>)
          : null,
      valueBoolean: json['valueBoolean'] != null
          ? FhirBoolean(json['valueBoolean'])
          : null,
      valueBooleanElement: json['_valueBoolean'] != null
          ? Element.fromJson(json['_valueBoolean'] as Map<String, dynamic>)
          : null,
      valueInteger: json['valueInteger'] != null
          ? FhirInteger(json['valueInteger'])
          : null,
      valueIntegerElement: json['_valueInteger'] != null
          ? Element.fromJson(json['_valueInteger'] as Map<String, dynamic>)
          : null,
      valueDecimal: json['valueDecimal'] != null
          ? FhirDecimal(json['valueDecimal'])
          : null,
      valueDecimalElement: json['_valueDecimal'] != null
          ? Element.fromJson(json['_valueDecimal'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  StructureMapParameter clone() => throw UnimplementedError();
  @override
  StructureMapParameter copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? valueId,
    Element? valueIdElement,
    FhirString? valueString,
    Element? valueStringElement,
    FhirBoolean? valueBoolean,
    Element? valueBooleanElement,
    FhirInteger? valueInteger,
    Element? valueIntegerElement,
    FhirDecimal? valueDecimal,
    Element? valueDecimalElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return StructureMapParameter(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      valueId: valueId ?? this.valueId,
      valueIdElement: valueIdElement ?? this.valueIdElement,
      valueString: valueString ?? this.valueString,
      valueStringElement: valueStringElement ?? this.valueStringElement,
      valueBoolean: valueBoolean ?? this.valueBoolean,
      valueBooleanElement: valueBooleanElement ?? this.valueBooleanElement,
      valueInteger: valueInteger ?? this.valueInteger,
      valueIntegerElement: valueIntegerElement ?? this.valueIntegerElement,
      valueDecimal: valueDecimal ?? this.valueDecimal,
      valueDecimalElement: valueDecimalElement ?? this.valueDecimalElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory StructureMapParameter.fromYaml(dynamic yaml) => yaml is String
      ? StructureMapParameter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? StructureMapParameter.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'StructureMapParameter cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory StructureMapParameter.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return StructureMapParameter.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [StructureMapDependent] /// Which other rules to apply in the context of this rule.
class StructureMapDependent extends BackboneElement {
  StructureMapDependent({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.nameElement,
    required this.variable,
    this.variableElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'StructureMapDependent';

  @Id()
  int dbId = 0;

  /// [name] /// Name of a rule or group to apply.
  final FhirId name;
  final Element? nameElement;

  /// [variable] /// Variable to pass to the rule or group.
  final List<FhirString> variable;
  final List<Element>? variableElement;
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
    json['name'] = name.value;
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    json['variable'] = variable.map((FhirString v) => v.value).toList();
    if (variableElement != null && variableElement!.isNotEmpty) {
      json['_variable'] =
          variableElement!.map((Element v) => v.toJson()).toList();
    }
    return json;
  }

  factory StructureMapDependent.fromJson(Map<String, dynamic> json) {
    return StructureMapDependent(
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
      name: FhirId(json['name']),
      nameElement: Element.fromJson(json['_name'] as Map<String, dynamic>),
      variable: (json['variable'] as List<dynamic>)
          .map<FhirString>((dynamic v) => FhirString.fromJson(v as dynamic))
          .toList(),
      variableElement: json['_variable'] != null
          ? (json['_variable'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  StructureMapDependent clone() => throw UnimplementedError();
  @override
  StructureMapDependent copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? name,
    Element? nameElement,
    List<FhirString>? variable,
    List<Element>? variableElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return StructureMapDependent(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      variable: variable ?? this.variable,
      variableElement: variableElement ?? this.variableElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory StructureMapDependent.fromYaml(dynamic yaml) => yaml is String
      ? StructureMapDependent.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? StructureMapDependent.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'StructureMapDependent cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory StructureMapDependent.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return StructureMapDependent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
