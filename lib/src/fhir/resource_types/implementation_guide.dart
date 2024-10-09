import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [ImplementationGuide] /// A set of rules of how a particular interoperability or standards problem is
/// solved - typically through the use of FHIR resources. This resource is used
/// to gather all the parts of an implementation guide into a logical whole and
/// to publish a computable definition of all the parts.
class ImplementationGuide extends DomainResource {
  ImplementationGuide({
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
    this.copyright,
    this.copyrightElement,
    required this.packageId,
    this.packageIdElement,
    this.license,
    this.licenseElement,
    required this.fhirVersion,
    this.fhirVersionElement,
    this.dependsOn,
    this.global,
    this.definition,
    this.manifest,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(resourceType: R4ResourceType.ImplementationGuide);

  @override
  String get fhirType => 'ImplementationGuide';

  @Id()
  int dbId = 0;

  /// [url] /// An absolute URI that is used to identify this implementation guide when it
  /// is referenced in a specification, model, design or an instance; also called
  /// its canonical identifier. This SHOULD be globally unique and SHOULD be a
  /// literal address at which at which an authoritative instance of this
  /// implementation guide is (or will be) published. This URL can be the target
  /// of a canonical reference. It SHALL remain the same when the implementation
  /// guide is stored on different servers.
  final FhirUri url;
  final Element? urlElement;

  /// [version] /// The identifier that is used to identify this version of the implementation
  /// guide when it is referenced in a specification, model, design or instance.
  /// This is an arbitrary value managed by the implementation guide author and
  /// is not expected to be globally unique. For example, it might be a timestamp
  /// (e.g. yyyymmdd) if a managed version is not available. There is also no
  /// expectation that versions can be placed in a lexicographical sequence.
  final FhirString? version;
  final Element? versionElement;

  /// [name] /// A natural language name identifying the implementation guide. This name
  /// should be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString name;
  final Element? nameElement;

  /// [title] /// A short, descriptive, user-friendly title for the implementation guide.
  final FhirString? title;
  final Element? titleElement;

  /// [status] /// The status of this implementation guide. Enables tracking the life-cycle of
  /// the content.
  final PublicationStatus status;
  final Element? statusElement;

  /// [experimental] /// A Boolean value to indicate that this implementation guide is authored for
  /// testing purposes (or education/evaluation/marketing) and is not intended to
  /// be used for genuine usage.
  final FhirBoolean? experimental;
  final Element? experimentalElement;

  /// [date] /// The date (and optionally time) when the implementation guide was published.
  /// The date must change when the business version changes and it must change
  /// if the status code changes. In addition, it should change when the
  /// substantive content of the implementation guide changes.
  final FhirDateTime? date;
  final Element? dateElement;

  /// [publisher] /// The name of the organization or individual that published the
  /// implementation guide.
  final FhirString? publisher;
  final Element? publisherElement;

  /// [contact] /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [description] /// A free text natural language description of the implementation guide from a
  /// consumer's perspective.
  final FhirMarkdown? description;
  final Element? descriptionElement;

  /// [useContext] /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories (gender,
  /// age, ...) or may be references to specific programs (insurance plans,
  /// studies, ...) and may be used to assist with indexing and searching for
  /// appropriate implementation guide instances.
  final List<UsageContext>? useContext;

  /// [jurisdiction] /// A legal or geographic region in which the implementation guide is intended
  /// to be used.
  final List<CodeableConcept>? jurisdiction;

  /// [copyright] /// A copyright statement relating to the implementation guide and/or its
  /// contents. Copyright statements are generally legal restrictions on the use
  /// and publishing of the implementation guide.
  final FhirMarkdown? copyright;
  final Element? copyrightElement;

  /// [packageId] /// The NPM package name for this Implementation Guide, used in the NPM package
  /// distribution, which is the primary mechanism by which FHIR based tooling
  /// manages IG dependencies. This value must be globally unique, and should be
  /// assigned with care.
  final FhirId packageId;
  final Element? packageIdElement;

  /// [license] /// The license that applies to this Implementation Guide, using an SPDX
  /// license code, or 'not-open-source'.
  final SPDXLicense? license;
  final Element? licenseElement;

  /// [fhirVersion] /// The version(s) of the FHIR specification that this ImplementationGuide
  /// targets - e.g. describes how to use. The value of this element is the
  /// formal version of the specification, without the revision number, e.g.
  /// [publication].[major].[minor], which is 4.3.0 for this version.
  final List<FHIRVersion> fhirVersion;
  final List<Element>? fhirVersionElement;

  /// [dependsOn] /// Another implementation guide that this implementation depends on.
  /// Typically, an implementation guide uses value sets, profiles etc.defined in
  /// other implementation guides.
  final List<ImplementationGuideDependsOn>? dependsOn;

  /// [global] /// A set of profiles that all resources covered by this implementation guide
  /// must conform to.
  final List<ImplementationGuideGlobal>? global;

  /// [definition] /// The information needed by an IG publisher tool to publish the whole
  /// implementation guide.
  final ImplementationGuideDefinition? definition;

  /// [manifest] /// Information about an assembled implementation guide, created by the
  /// publication tooling.
  final ImplementationGuideManifest? manifest;
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
    json['url'] = url.toJson();
    if (urlElement != null) {
      json['_url'] = urlElement!.toJson();
    }
    if (version?.value != null) {
      json['version'] = version!.toJson();
    }
    if (versionElement != null) {
      json['_version'] = versionElement!.toJson();
    }
    json['name'] = name.toJson();
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
    if (copyright?.value != null) {
      json['copyright'] = copyright!.toJson();
    }
    if (copyrightElement != null) {
      json['_copyright'] = copyrightElement!.toJson();
    }
    json['packageId'] = packageId.toJson();
    if (packageIdElement != null) {
      json['_packageId'] = packageIdElement!.toJson();
    }
    if (license != null) {
      json['license'] = license!.toJson();
    }
    json['fhirVersion'] =
        fhirVersion.map<dynamic>((FHIRVersion v) => v.toJson()).toList();
    if (dependsOn != null && dependsOn!.isNotEmpty) {
      json['dependsOn'] = dependsOn!
          .map<dynamic>((ImplementationGuideDependsOn v) => v.toJson())
          .toList();
    }
    if (global != null && global!.isNotEmpty) {
      json['global'] = global!
          .map<dynamic>((ImplementationGuideGlobal v) => v.toJson())
          .toList();
    }
    if (definition != null) {
      json['definition'] = definition!.toJson();
    }
    if (manifest != null) {
      json['manifest'] = manifest!.toJson();
    }
    return json;
  }

  factory ImplementationGuide.fromJson(Map<String, dynamic> json) {
    return ImplementationGuide(
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
      url: FhirUri.fromJson(json['url']),
      urlElement: json['_url'] != null
          ? Element.fromJson(json['_url'] as Map<String, dynamic>)
          : null,
      version:
          json['version'] != null ? FhirString.fromJson(json['version']) : null,
      versionElement: json['_version'] != null
          ? Element.fromJson(json['_version'] as Map<String, dynamic>)
          : null,
      name: FhirString.fromJson(json['name']),
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
      copyright: json['copyright'] != null
          ? FhirMarkdown.fromJson(json['copyright'])
          : null,
      copyrightElement: json['_copyright'] != null
          ? Element.fromJson(json['_copyright'] as Map<String, dynamic>)
          : null,
      packageId: FhirId.fromJson(json['packageId']),
      packageIdElement: json['_packageId'] != null
          ? Element.fromJson(json['_packageId'] as Map<String, dynamic>)
          : null,
      license: json['license'] != null
          ? SPDXLicense.fromJson(json['license'])
          : null,
      licenseElement: json['_license'] != null
          ? Element.fromJson(json['_license'] as Map<String, dynamic>)
          : null,
      fhirVersion: (json['fhirVersion'] as List<dynamic>)
          .map<FHIRVersion>((dynamic v) => FHIRVersion.fromJson(v as dynamic))
          .toList(),
      fhirVersionElement: (json['_fhirVersion'] as List<dynamic>)
          .map<Element>(
              (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
          .toList(),
      dependsOn: json['dependsOn'] != null
          ? (json['dependsOn'] as List<dynamic>)
              .map<ImplementationGuideDependsOn>((dynamic v) =>
                  ImplementationGuideDependsOn.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      global: json['global'] != null
          ? (json['global'] as List<dynamic>)
              .map<ImplementationGuideGlobal>((dynamic v) =>
                  ImplementationGuideGlobal.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      definition: json['definition'] != null
          ? ImplementationGuideDefinition.fromJson(
              json['definition'] as Map<String, dynamic>)
          : null,
      manifest: json['manifest'] != null
          ? ImplementationGuideManifest.fromJson(
              json['manifest'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  ImplementationGuide clone() => throw UnimplementedError();
  @override
  ImplementationGuide copyWith({
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
    FhirMarkdown? copyright,
    Element? copyrightElement,
    FhirId? packageId,
    Element? packageIdElement,
    SPDXLicense? license,
    Element? licenseElement,
    List<FHIRVersion>? fhirVersion,
    List<Element>? fhirVersionElement,
    List<ImplementationGuideDependsOn>? dependsOn,
    List<ImplementationGuideGlobal>? global,
    ImplementationGuideDefinition? definition,
    ImplementationGuideManifest? manifest,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ImplementationGuide(
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
      copyright: copyright ?? this.copyright,
      copyrightElement: copyrightElement ?? this.copyrightElement,
      packageId: packageId ?? this.packageId,
      packageIdElement: packageIdElement ?? this.packageIdElement,
      license: license ?? this.license,
      licenseElement: licenseElement ?? this.licenseElement,
      fhirVersion: fhirVersion ?? this.fhirVersion,
      fhirVersionElement: fhirVersionElement ?? this.fhirVersionElement,
      dependsOn: dependsOn ?? this.dependsOn,
      global: global ?? this.global,
      definition: definition ?? this.definition,
      manifest: manifest ?? this.manifest,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ImplementationGuide.fromYaml(dynamic yaml) => yaml is String
      ? ImplementationGuide.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ImplementationGuide.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ImplementationGuide cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ImplementationGuide.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ImplementationGuide.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ImplementationGuideDependsOn] /// Another implementation guide that this implementation depends on.
/// Typically, an implementation guide uses value sets, profiles etc.defined in
/// other implementation guides.
class ImplementationGuideDependsOn extends BackboneElement {
  ImplementationGuideDependsOn({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.uri,
    this.uriElement,
    this.packageId,
    this.packageIdElement,
    this.version,
    this.versionElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ImplementationGuideDependsOn';

  @Id()
  int dbId = 0;

  /// [uri] /// A canonical reference to the Implementation guide for the dependency.
  final FhirCanonical uri;
  final Element? uriElement;

  /// [packageId] /// The NPM package name for the Implementation Guide that this IG depends on.
  final FhirId? packageId;
  final Element? packageIdElement;

  /// [version] /// The version of the IG that is depended on, when the correct version is
  /// required to understand the IG correctly.
  final FhirString? version;
  final Element? versionElement;
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
    json['uri'] = uri.toJson();
    if (uriElement != null) {
      json['_uri'] = uriElement!.toJson();
    }
    if (packageId?.value != null) {
      json['packageId'] = packageId!.toJson();
    }
    if (packageIdElement != null) {
      json['_packageId'] = packageIdElement!.toJson();
    }
    if (version?.value != null) {
      json['version'] = version!.toJson();
    }
    if (versionElement != null) {
      json['_version'] = versionElement!.toJson();
    }
    return json;
  }

  factory ImplementationGuideDependsOn.fromJson(Map<String, dynamic> json) {
    return ImplementationGuideDependsOn(
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
      uri: FhirCanonical.fromJson(json['uri']),
      uriElement: json['_uri'] != null
          ? Element.fromJson(json['_uri'] as Map<String, dynamic>)
          : null,
      packageId:
          json['packageId'] != null ? FhirId.fromJson(json['packageId']) : null,
      packageIdElement: json['_packageId'] != null
          ? Element.fromJson(json['_packageId'] as Map<String, dynamic>)
          : null,
      version:
          json['version'] != null ? FhirString.fromJson(json['version']) : null,
      versionElement: json['_version'] != null
          ? Element.fromJson(json['_version'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  ImplementationGuideDependsOn clone() => throw UnimplementedError();
  @override
  ImplementationGuideDependsOn copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCanonical? uri,
    Element? uriElement,
    FhirId? packageId,
    Element? packageIdElement,
    FhirString? version,
    Element? versionElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ImplementationGuideDependsOn(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      uri: uri ?? this.uri,
      uriElement: uriElement ?? this.uriElement,
      packageId: packageId ?? this.packageId,
      packageIdElement: packageIdElement ?? this.packageIdElement,
      version: version ?? this.version,
      versionElement: versionElement ?? this.versionElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ImplementationGuideDependsOn.fromYaml(dynamic yaml) => yaml is String
      ? ImplementationGuideDependsOn.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ImplementationGuideDependsOn.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ImplementationGuideDependsOn cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ImplementationGuideDependsOn.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ImplementationGuideDependsOn.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ImplementationGuideGlobal] /// A set of profiles that all resources covered by this implementation guide
/// must conform to.
class ImplementationGuideGlobal extends BackboneElement {
  ImplementationGuideGlobal({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.typeElement,
    required this.profile,
    this.profileElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ImplementationGuideGlobal';

  @Id()
  int dbId = 0;

  /// [type] /// The type of resource that all instances must conform to.
  final FhirCode type;
  final Element? typeElement;

  /// [profile] /// A reference to the profile that all instances must conform to.
  final FhirCanonical profile;
  final Element? profileElement;
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
    if (typeElement != null) {
      json['_type'] = typeElement!.toJson();
    }
    json['profile'] = profile.toJson();
    if (profileElement != null) {
      json['_profile'] = profileElement!.toJson();
    }
    return json;
  }

  factory ImplementationGuideGlobal.fromJson(Map<String, dynamic> json) {
    return ImplementationGuideGlobal(
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
      type: FhirCode.fromJson(json['type']),
      typeElement: json['_type'] != null
          ? Element.fromJson(json['_type'] as Map<String, dynamic>)
          : null,
      profile: FhirCanonical.fromJson(json['profile']),
      profileElement: json['_profile'] != null
          ? Element.fromJson(json['_profile'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  ImplementationGuideGlobal clone() => throw UnimplementedError();
  @override
  ImplementationGuideGlobal copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? type,
    Element? typeElement,
    FhirCanonical? profile,
    Element? profileElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ImplementationGuideGlobal(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      profile: profile ?? this.profile,
      profileElement: profileElement ?? this.profileElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ImplementationGuideGlobal.fromYaml(dynamic yaml) => yaml is String
      ? ImplementationGuideGlobal.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ImplementationGuideGlobal.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ImplementationGuideGlobal cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ImplementationGuideGlobal.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ImplementationGuideGlobal.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ImplementationGuideDefinition] /// The information needed by an IG publisher tool to publish the whole
/// implementation guide.
class ImplementationGuideDefinition extends BackboneElement {
  ImplementationGuideDefinition({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.grouping,
    required this.resource,
    this.page,
    this.parameter,
    this.template,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ImplementationGuideDefinition';

  @Id()
  int dbId = 0;

  /// [grouping] /// A logical group of resources. Logical groups can be used when building
  /// pages.
  final List<ImplementationGuideGrouping>? grouping;

  /// [resource] /// A resource that is part of the implementation guide. Conformance resources
  /// (value set, structure definition, capability statements etc.) are obvious
  /// candidates for inclusion, but any kind of resource can be included as an
  /// example resource.
  final List<ImplementationGuideResource> resource;

  /// [page] /// A page / section in the implementation guide. The root page is the
  /// implementation guide home page.
  final ImplementationGuidePage? page;

  /// [parameter] /// Defines how IG is built by tools.
  final List<ImplementationGuideParameter>? parameter;

  /// [template] /// A template for building resources.
  final List<ImplementationGuideTemplate>? template;
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
    if (grouping != null && grouping!.isNotEmpty) {
      json['grouping'] = grouping!
          .map<dynamic>((ImplementationGuideGrouping v) => v.toJson())
          .toList();
    }
    json['resource'] = resource
        .map<dynamic>((ImplementationGuideResource v) => v.toJson())
        .toList();
    if (page != null) {
      json['page'] = page!.toJson();
    }
    if (parameter != null && parameter!.isNotEmpty) {
      json['parameter'] = parameter!
          .map<dynamic>((ImplementationGuideParameter v) => v.toJson())
          .toList();
    }
    if (template != null && template!.isNotEmpty) {
      json['template'] = template!
          .map<dynamic>((ImplementationGuideTemplate v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory ImplementationGuideDefinition.fromJson(Map<String, dynamic> json) {
    return ImplementationGuideDefinition(
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
      grouping: json['grouping'] != null
          ? (json['grouping'] as List<dynamic>)
              .map<ImplementationGuideGrouping>((dynamic v) =>
                  ImplementationGuideGrouping.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      resource: (json['resource'] as List<dynamic>)
          .map<ImplementationGuideResource>((dynamic v) =>
              ImplementationGuideResource.fromJson(v as Map<String, dynamic>))
          .toList(),
      page: json['page'] != null
          ? ImplementationGuidePage.fromJson(
              json['page'] as Map<String, dynamic>)
          : null,
      parameter: json['parameter'] != null
          ? (json['parameter'] as List<dynamic>)
              .map<ImplementationGuideParameter>((dynamic v) =>
                  ImplementationGuideParameter.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      template: json['template'] != null
          ? (json['template'] as List<dynamic>)
              .map<ImplementationGuideTemplate>((dynamic v) =>
                  ImplementationGuideTemplate.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  ImplementationGuideDefinition clone() => throw UnimplementedError();
  @override
  ImplementationGuideDefinition copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<ImplementationGuideGrouping>? grouping,
    List<ImplementationGuideResource>? resource,
    ImplementationGuidePage? page,
    List<ImplementationGuideParameter>? parameter,
    List<ImplementationGuideTemplate>? template,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ImplementationGuideDefinition(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      grouping: grouping ?? this.grouping,
      resource: resource ?? this.resource,
      page: page ?? this.page,
      parameter: parameter ?? this.parameter,
      template: template ?? this.template,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ImplementationGuideDefinition.fromYaml(dynamic yaml) => yaml is String
      ? ImplementationGuideDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ImplementationGuideDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ImplementationGuideDefinition cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ImplementationGuideDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ImplementationGuideDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ImplementationGuideGrouping] /// A logical group of resources. Logical groups can be used when building
/// pages.
class ImplementationGuideGrouping extends BackboneElement {
  ImplementationGuideGrouping({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.nameElement,
    this.description,
    this.descriptionElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ImplementationGuideGrouping';

  @Id()
  int dbId = 0;

  /// [name] /// The human-readable title to display for the package of resources when
  /// rendering the implementation guide.
  final FhirString name;
  final Element? nameElement;

  /// [description] /// Human readable text describing the package.
  final FhirString? description;
  final Element? descriptionElement;
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
    json['name'] = name.toJson();
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    if (description?.value != null) {
      json['description'] = description!.toJson();
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    return json;
  }

  factory ImplementationGuideGrouping.fromJson(Map<String, dynamic> json) {
    return ImplementationGuideGrouping(
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
      name: FhirString.fromJson(json['name']),
      nameElement: json['_name'] != null
          ? Element.fromJson(json['_name'] as Map<String, dynamic>)
          : null,
      description: json['description'] != null
          ? FhirString.fromJson(json['description'])
          : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(json['_description'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  ImplementationGuideGrouping clone() => throw UnimplementedError();
  @override
  ImplementationGuideGrouping copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    Element? nameElement,
    FhirString? description,
    Element? descriptionElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ImplementationGuideGrouping(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ImplementationGuideGrouping.fromYaml(dynamic yaml) => yaml is String
      ? ImplementationGuideGrouping.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ImplementationGuideGrouping.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ImplementationGuideGrouping cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ImplementationGuideGrouping.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ImplementationGuideGrouping.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ImplementationGuideResource] /// A resource that is part of the implementation guide. Conformance resources
/// (value set, structure definition, capability statements etc.) are obvious
/// candidates for inclusion, but any kind of resource can be included as an
/// example resource.
class ImplementationGuideResource extends BackboneElement {
  ImplementationGuideResource({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.reference,
    this.fhirVersion,
    this.fhirVersionElement,
    this.name,
    this.nameElement,
    this.description,
    this.descriptionElement,
    this.exampleBoolean,
    this.exampleBooleanElement,
    this.exampleCanonical,
    this.exampleCanonicalElement,
    this.groupingId,
    this.groupingIdElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ImplementationGuideResource';

  @Id()
  int dbId = 0;

  /// [reference] /// Where this resource is found.
  final Reference reference;

  /// [fhirVersion] /// Indicates the FHIR Version(s) this artifact is intended to apply to. If no
  /// versions are specified, the resource is assumed to apply to all the
  /// versions stated in ImplementationGuide.fhirVersion.
  final List<FHIRVersion>? fhirVersion;
  final List<Element>? fhirVersionElement;

  /// [name] /// A human assigned name for the resource. All resources SHOULD have a name,
  /// but the name may be extracted from the resource (e.g. ValueSet.name).
  final FhirString? name;
  final Element? nameElement;

  /// [description] /// A description of the reason that a resource has been included in the
  /// implementation guide.
  final FhirString? description;
  final Element? descriptionElement;

  /// [exampleBoolean] /// If true or a reference, indicates the resource is an example instance. If a
  /// reference is present, indicates that the example is an example of the
  /// specified profile.
  final FhirBoolean? exampleBoolean;
  final Element? exampleBooleanElement;

  /// [exampleCanonical] /// If true or a reference, indicates the resource is an example instance. If a
  /// reference is present, indicates that the example is an example of the
  /// specified profile.
  final FhirCanonical? exampleCanonical;
  final Element? exampleCanonicalElement;

  /// [groupingId] /// Reference to the id of the grouping this resource appears in.
  final FhirId? groupingId;
  final Element? groupingIdElement;
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
    json['reference'] = reference.toJson();
    if (fhirVersion != null && fhirVersion!.isNotEmpty) {
      json['fhirVersion'] =
          fhirVersion!.map<dynamic>((FHIRVersion v) => v.toJson()).toList();
    }
    if (name?.value != null) {
      json['name'] = name!.toJson();
    }
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    if (description?.value != null) {
      json['description'] = description!.toJson();
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (exampleBoolean?.value != null) {
      json['exampleBoolean'] = exampleBoolean!.toJson();
    }
    if (exampleBooleanElement != null) {
      json['_exampleBoolean'] = exampleBooleanElement!.toJson();
    }
    if (exampleCanonical?.value != null) {
      json['exampleCanonical'] = exampleCanonical!.toJson();
    }
    if (exampleCanonicalElement != null) {
      json['_exampleCanonical'] = exampleCanonicalElement!.toJson();
    }
    if (groupingId?.value != null) {
      json['groupingId'] = groupingId!.toJson();
    }
    if (groupingIdElement != null) {
      json['_groupingId'] = groupingIdElement!.toJson();
    }
    return json;
  }

  factory ImplementationGuideResource.fromJson(Map<String, dynamic> json) {
    return ImplementationGuideResource(
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
      reference: Reference.fromJson(json['reference'] as Map<String, dynamic>),
      fhirVersion: json['fhirVersion'] != null
          ? (json['fhirVersion'] as List<dynamic>)
              .map<FHIRVersion>(
                  (dynamic v) => FHIRVersion.fromJson(v as dynamic))
              .toList()
          : null,
      fhirVersionElement: json['_fhirVersion'] != null
          ? (json['_fhirVersion'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      name: json['name'] != null ? FhirString.fromJson(json['name']) : null,
      nameElement: json['_name'] != null
          ? Element.fromJson(json['_name'] as Map<String, dynamic>)
          : null,
      description: json['description'] != null
          ? FhirString.fromJson(json['description'])
          : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(json['_description'] as Map<String, dynamic>)
          : null,
      exampleBoolean: json['exampleBoolean'] != null
          ? FhirBoolean.fromJson(json['exampleBoolean'])
          : null,
      exampleBooleanElement: json['_exampleBoolean'] != null
          ? Element.fromJson(json['_exampleBoolean'] as Map<String, dynamic>)
          : null,
      exampleCanonical: json['exampleCanonical'] != null
          ? FhirCanonical.fromJson(json['exampleCanonical'])
          : null,
      exampleCanonicalElement: json['_exampleCanonical'] != null
          ? Element.fromJson(json['_exampleCanonical'] as Map<String, dynamic>)
          : null,
      groupingId: json['groupingId'] != null
          ? FhirId.fromJson(json['groupingId'])
          : null,
      groupingIdElement: json['_groupingId'] != null
          ? Element.fromJson(json['_groupingId'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  ImplementationGuideResource clone() => throw UnimplementedError();
  @override
  ImplementationGuideResource copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? reference,
    List<FHIRVersion>? fhirVersion,
    List<Element>? fhirVersionElement,
    FhirString? name,
    Element? nameElement,
    FhirString? description,
    Element? descriptionElement,
    FhirBoolean? exampleBoolean,
    Element? exampleBooleanElement,
    FhirCanonical? exampleCanonical,
    Element? exampleCanonicalElement,
    FhirId? groupingId,
    Element? groupingIdElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ImplementationGuideResource(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      reference: reference ?? this.reference,
      fhirVersion: fhirVersion ?? this.fhirVersion,
      fhirVersionElement: fhirVersionElement ?? this.fhirVersionElement,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      exampleBoolean: exampleBoolean ?? this.exampleBoolean,
      exampleBooleanElement:
          exampleBooleanElement ?? this.exampleBooleanElement,
      exampleCanonical: exampleCanonical ?? this.exampleCanonical,
      exampleCanonicalElement:
          exampleCanonicalElement ?? this.exampleCanonicalElement,
      groupingId: groupingId ?? this.groupingId,
      groupingIdElement: groupingIdElement ?? this.groupingIdElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ImplementationGuideResource.fromYaml(dynamic yaml) => yaml is String
      ? ImplementationGuideResource.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ImplementationGuideResource.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ImplementationGuideResource cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ImplementationGuideResource.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ImplementationGuideResource.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ImplementationGuidePage] /// A page / section in the implementation guide. The root page is the
/// implementation guide home page.
class ImplementationGuidePage extends BackboneElement {
  ImplementationGuidePage({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.nameUrl,
    this.nameUrlElement,
    this.nameReference,
    required this.title,
    this.titleElement,
    required this.generation,
    this.generationElement,
    this.page,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ImplementationGuidePage';

  @Id()
  int dbId = 0;

  /// [nameUrl] /// The source address for the page.
  final FhirUrl? nameUrl;
  final Element? nameUrlElement;

  /// [nameReference] /// The source address for the page.
  final Reference? nameReference;

  /// [title] /// A short title used to represent this page in navigational structures such
  /// as table of contents, bread crumbs, etc.
  final FhirString title;
  final Element? titleElement;

  /// [generation] /// A code that indicates how the page is generated.
  final GuidePageGeneration generation;
  final Element? generationElement;

  /// [page] /// Nested Pages/Sections under this page.
  final List<ImplementationGuidePage>? page;
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
    if (nameUrl?.value != null) {
      json['nameUrl'] = nameUrl!.toJson();
    }
    if (nameUrlElement != null) {
      json['_nameUrl'] = nameUrlElement!.toJson();
    }
    if (nameReference != null) {
      json['nameReference'] = nameReference!.toJson();
    }
    json['title'] = title.toJson();
    if (titleElement != null) {
      json['_title'] = titleElement!.toJson();
    }
    json['generation'] = generation.toJson();
    if (page != null && page!.isNotEmpty) {
      json['page'] = page!
          .map<dynamic>((ImplementationGuidePage v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory ImplementationGuidePage.fromJson(Map<String, dynamic> json) {
    return ImplementationGuidePage(
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
      nameUrl:
          json['nameUrl'] != null ? FhirUrl.fromJson(json['nameUrl']) : null,
      nameUrlElement: json['_nameUrl'] != null
          ? Element.fromJson(json['_nameUrl'] as Map<String, dynamic>)
          : null,
      nameReference: json['nameReference'] != null
          ? Reference.fromJson(json['nameReference'] as Map<String, dynamic>)
          : null,
      title: FhirString.fromJson(json['title']),
      titleElement: json['_title'] != null
          ? Element.fromJson(json['_title'] as Map<String, dynamic>)
          : null,
      generation: GuidePageGeneration.fromJson(json['generation']),
      generationElement: json['_generation'] != null
          ? Element.fromJson(json['_generation'] as Map<String, dynamic>)
          : null,
      page: json['page'] != null
          ? (json['page'] as List<dynamic>)
              .map<ImplementationGuidePage>((dynamic v) =>
                  ImplementationGuidePage.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  ImplementationGuidePage clone() => throw UnimplementedError();
  @override
  ImplementationGuidePage copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUrl? nameUrl,
    Element? nameUrlElement,
    Reference? nameReference,
    FhirString? title,
    Element? titleElement,
    GuidePageGeneration? generation,
    Element? generationElement,
    List<ImplementationGuidePage>? page,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ImplementationGuidePage(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      nameUrl: nameUrl ?? this.nameUrl,
      nameUrlElement: nameUrlElement ?? this.nameUrlElement,
      nameReference: nameReference ?? this.nameReference,
      title: title ?? this.title,
      titleElement: titleElement ?? this.titleElement,
      generation: generation ?? this.generation,
      generationElement: generationElement ?? this.generationElement,
      page: page ?? this.page,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ImplementationGuidePage.fromYaml(dynamic yaml) => yaml is String
      ? ImplementationGuidePage.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ImplementationGuidePage.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ImplementationGuidePage cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ImplementationGuidePage.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ImplementationGuidePage.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ImplementationGuideParameter] /// Defines how IG is built by tools.
class ImplementationGuideParameter extends BackboneElement {
  ImplementationGuideParameter({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.codeElement,
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
  String get fhirType => 'ImplementationGuideParameter';

  @Id()
  int dbId = 0;

  /// [code] /// apply | path-resource | path-pages | path-tx-cache | expansion-parameter |
  /// rule-broken-links | generate-xml | generate-json | generate-turtle |
  /// html-template.
  final GuideParameterCode code;
  final Element? codeElement;

  /// [value] /// Value for named type.
  final FhirString value;
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
    json['code'] = code.toJson();
    json['value'] = value.toJson();
    if (valueElement != null) {
      json['_value'] = valueElement!.toJson();
    }
    return json;
  }

  factory ImplementationGuideParameter.fromJson(Map<String, dynamic> json) {
    return ImplementationGuideParameter(
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
      code: GuideParameterCode.fromJson(json['code']),
      codeElement: json['_code'] != null
          ? Element.fromJson(json['_code'] as Map<String, dynamic>)
          : null,
      value: FhirString.fromJson(json['value']),
      valueElement: json['_value'] != null
          ? Element.fromJson(json['_value'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  ImplementationGuideParameter clone() => throw UnimplementedError();
  @override
  ImplementationGuideParameter copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    GuideParameterCode? code,
    Element? codeElement,
    FhirString? value,
    Element? valueElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ImplementationGuideParameter(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      codeElement: codeElement ?? this.codeElement,
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

  factory ImplementationGuideParameter.fromYaml(dynamic yaml) => yaml is String
      ? ImplementationGuideParameter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ImplementationGuideParameter.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ImplementationGuideParameter cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ImplementationGuideParameter.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ImplementationGuideParameter.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ImplementationGuideTemplate] /// A template for building resources.
class ImplementationGuideTemplate extends BackboneElement {
  ImplementationGuideTemplate({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.codeElement,
    required this.source,
    this.sourceElement,
    this.scope,
    this.scopeElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ImplementationGuideTemplate';

  @Id()
  int dbId = 0;

  /// [code] /// Type of template specified.
  final FhirCode code;
  final Element? codeElement;

  /// [source] /// The source location for the template.
  final FhirString source;
  final Element? sourceElement;

  /// [scope] /// The scope in which the template applies.
  final FhirString? scope;
  final Element? scopeElement;
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
    if (codeElement != null) {
      json['_code'] = codeElement!.toJson();
    }
    json['source'] = source.toJson();
    if (sourceElement != null) {
      json['_source'] = sourceElement!.toJson();
    }
    if (scope?.value != null) {
      json['scope'] = scope!.toJson();
    }
    if (scopeElement != null) {
      json['_scope'] = scopeElement!.toJson();
    }
    return json;
  }

  factory ImplementationGuideTemplate.fromJson(Map<String, dynamic> json) {
    return ImplementationGuideTemplate(
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
      code: FhirCode.fromJson(json['code']),
      codeElement: json['_code'] != null
          ? Element.fromJson(json['_code'] as Map<String, dynamic>)
          : null,
      source: FhirString.fromJson(json['source']),
      sourceElement: json['_source'] != null
          ? Element.fromJson(json['_source'] as Map<String, dynamic>)
          : null,
      scope: json['scope'] != null ? FhirString.fromJson(json['scope']) : null,
      scopeElement: json['_scope'] != null
          ? Element.fromJson(json['_scope'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  ImplementationGuideTemplate clone() => throw UnimplementedError();
  @override
  ImplementationGuideTemplate copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    Element? codeElement,
    FhirString? source,
    Element? sourceElement,
    FhirString? scope,
    Element? scopeElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ImplementationGuideTemplate(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      codeElement: codeElement ?? this.codeElement,
      source: source ?? this.source,
      sourceElement: sourceElement ?? this.sourceElement,
      scope: scope ?? this.scope,
      scopeElement: scopeElement ?? this.scopeElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ImplementationGuideTemplate.fromYaml(dynamic yaml) => yaml is String
      ? ImplementationGuideTemplate.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ImplementationGuideTemplate.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ImplementationGuideTemplate cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ImplementationGuideTemplate.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ImplementationGuideTemplate.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ImplementationGuideManifest] /// Information about an assembled implementation guide, created by the
/// publication tooling.
class ImplementationGuideManifest extends BackboneElement {
  ImplementationGuideManifest({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.rendering,
    this.renderingElement,
    required this.resource,
    this.page,
    this.image,
    this.imageElement,
    this.other,
    this.otherElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ImplementationGuideManifest';

  @Id()
  int dbId = 0;

  /// [rendering] /// A pointer to official web page, PDF or other rendering of the
  /// implementation guide.
  final FhirUrl? rendering;
  final Element? renderingElement;

  /// [resource] /// A resource that is part of the implementation guide. Conformance resources
  /// (value set, structure definition, capability statements etc.) are obvious
  /// candidates for inclusion, but any kind of resource can be included as an
  /// example resource.
  final List<ImplementationGuideResource> resource;

  /// [page] /// Information about a page within the IG.
  final List<ImplementationGuidePage>? page;

  /// [image] /// Indicates a relative path to an image that exists within the IG.
  final List<FhirString>? image;
  final List<Element>? imageElement;

  /// [other] /// Indicates the relative path of an additional non-page, non-image file that
  /// is part of the IG - e.g. zip, jar and similar files that could be the
  /// target of a hyperlink in a derived IG.
  final List<FhirString>? other;
  final List<Element>? otherElement;
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
    if (rendering?.value != null) {
      json['rendering'] = rendering!.toJson();
    }
    if (renderingElement != null) {
      json['_rendering'] = renderingElement!.toJson();
    }
    json['resource'] = resource
        .map<dynamic>((ImplementationGuideResource v) => v.toJson())
        .toList();
    if (page != null && page!.isNotEmpty) {
      json['page'] = page!
          .map<dynamic>((ImplementationGuidePage v) => v.toJson())
          .toList();
    }
    if (image != null && image!.isNotEmpty) {
      json['image'] = image!.map((FhirString v) => v.toJson()).toList();
    }
    if (imageElement != null && imageElement!.isNotEmpty) {
      json['_image'] = imageElement!.map((Element v) => v.toJson()).toList();
    }
    if (other != null && other!.isNotEmpty) {
      json['other'] = other!.map((FhirString v) => v.toJson()).toList();
    }
    if (otherElement != null && otherElement!.isNotEmpty) {
      json['_other'] = otherElement!.map((Element v) => v.toJson()).toList();
    }
    return json;
  }

  factory ImplementationGuideManifest.fromJson(Map<String, dynamic> json) {
    return ImplementationGuideManifest(
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
      rendering: json['rendering'] != null
          ? FhirUrl.fromJson(json['rendering'])
          : null,
      renderingElement: json['_rendering'] != null
          ? Element.fromJson(json['_rendering'] as Map<String, dynamic>)
          : null,
      resource: (json['resource'] as List<dynamic>)
          .map<ImplementationGuideResource>((dynamic v) =>
              ImplementationGuideResource.fromJson(v as Map<String, dynamic>))
          .toList(),
      page: json['page'] != null
          ? (json['page'] as List<dynamic>)
              .map<ImplementationGuidePage>((dynamic v) =>
                  ImplementationGuidePage.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      image: json['image'] != null
          ? (json['image'] as List<dynamic>)
              .map<FhirString>((dynamic v) => FhirString.fromJson(v as dynamic))
              .toList()
          : null,
      imageElement: json['_image'] != null
          ? (json['_image'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      other: json['other'] != null
          ? (json['other'] as List<dynamic>)
              .map<FhirString>((dynamic v) => FhirString.fromJson(v as dynamic))
              .toList()
          : null,
      otherElement: json['_other'] != null
          ? (json['_other'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  ImplementationGuideManifest clone() => throw UnimplementedError();
  @override
  ImplementationGuideManifest copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUrl? rendering,
    Element? renderingElement,
    List<ImplementationGuideResource>? resource,
    List<ImplementationGuidePage>? page,
    List<FhirString>? image,
    List<Element>? imageElement,
    List<FhirString>? other,
    List<Element>? otherElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ImplementationGuideManifest(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      rendering: rendering ?? this.rendering,
      renderingElement: renderingElement ?? this.renderingElement,
      resource: resource ?? this.resource,
      page: page ?? this.page,
      image: image ?? this.image,
      imageElement: imageElement ?? this.imageElement,
      other: other ?? this.other,
      otherElement: otherElement ?? this.otherElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ImplementationGuideManifest.fromYaml(dynamic yaml) => yaml is String
      ? ImplementationGuideManifest.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ImplementationGuideManifest.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ImplementationGuideManifest cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ImplementationGuideManifest.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ImplementationGuideManifest.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ImplementationGuideResource1] /// A resource that is part of the implementation guide. Conformance resources
/// (value set, structure definition, capability statements etc.) are obvious
/// candidates for inclusion, but any kind of resource can be included as an
/// example resource.
class ImplementationGuideResource1 extends BackboneElement {
  ImplementationGuideResource1({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.reference,
    this.exampleBoolean,
    this.exampleBooleanElement,
    this.exampleCanonical,
    this.exampleCanonicalElement,
    this.relativePath,
    this.relativePathElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ImplementationGuideResource1';

  @Id()
  int dbId = 0;

  /// [reference] /// Where this resource is found.
  final Reference reference;

  /// [exampleBoolean] /// If true or a reference, indicates the resource is an example instance. If a
  /// reference is present, indicates that the example is an example of the
  /// specified profile.
  final FhirBoolean? exampleBoolean;
  final Element? exampleBooleanElement;

  /// [exampleCanonical] /// If true or a reference, indicates the resource is an example instance. If a
  /// reference is present, indicates that the example is an example of the
  /// specified profile.
  final FhirCanonical? exampleCanonical;
  final Element? exampleCanonicalElement;

  /// [relativePath] /// The relative path for primary page for this resource within the IG.
  final FhirUrl? relativePath;
  final Element? relativePathElement;
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
    json['reference'] = reference.toJson();
    if (exampleBoolean?.value != null) {
      json['exampleBoolean'] = exampleBoolean!.toJson();
    }
    if (exampleBooleanElement != null) {
      json['_exampleBoolean'] = exampleBooleanElement!.toJson();
    }
    if (exampleCanonical?.value != null) {
      json['exampleCanonical'] = exampleCanonical!.toJson();
    }
    if (exampleCanonicalElement != null) {
      json['_exampleCanonical'] = exampleCanonicalElement!.toJson();
    }
    if (relativePath?.value != null) {
      json['relativePath'] = relativePath!.toJson();
    }
    if (relativePathElement != null) {
      json['_relativePath'] = relativePathElement!.toJson();
    }
    return json;
  }

  factory ImplementationGuideResource1.fromJson(Map<String, dynamic> json) {
    return ImplementationGuideResource1(
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
      reference: Reference.fromJson(json['reference'] as Map<String, dynamic>),
      exampleBoolean: json['exampleBoolean'] != null
          ? FhirBoolean.fromJson(json['exampleBoolean'])
          : null,
      exampleBooleanElement: json['_exampleBoolean'] != null
          ? Element.fromJson(json['_exampleBoolean'] as Map<String, dynamic>)
          : null,
      exampleCanonical: json['exampleCanonical'] != null
          ? FhirCanonical.fromJson(json['exampleCanonical'])
          : null,
      exampleCanonicalElement: json['_exampleCanonical'] != null
          ? Element.fromJson(json['_exampleCanonical'] as Map<String, dynamic>)
          : null,
      relativePath: json['relativePath'] != null
          ? FhirUrl.fromJson(json['relativePath'])
          : null,
      relativePathElement: json['_relativePath'] != null
          ? Element.fromJson(json['_relativePath'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  ImplementationGuideResource1 clone() => throw UnimplementedError();
  @override
  ImplementationGuideResource1 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? reference,
    FhirBoolean? exampleBoolean,
    Element? exampleBooleanElement,
    FhirCanonical? exampleCanonical,
    Element? exampleCanonicalElement,
    FhirUrl? relativePath,
    Element? relativePathElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ImplementationGuideResource1(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      reference: reference ?? this.reference,
      exampleBoolean: exampleBoolean ?? this.exampleBoolean,
      exampleBooleanElement:
          exampleBooleanElement ?? this.exampleBooleanElement,
      exampleCanonical: exampleCanonical ?? this.exampleCanonical,
      exampleCanonicalElement:
          exampleCanonicalElement ?? this.exampleCanonicalElement,
      relativePath: relativePath ?? this.relativePath,
      relativePathElement: relativePathElement ?? this.relativePathElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ImplementationGuideResource1.fromYaml(dynamic yaml) => yaml is String
      ? ImplementationGuideResource1.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ImplementationGuideResource1.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ImplementationGuideResource1 cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ImplementationGuideResource1.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ImplementationGuideResource1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ImplementationGuidePage1] /// Information about a page within the IG.
class ImplementationGuidePage1 extends BackboneElement {
  ImplementationGuidePage1({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.nameElement,
    this.title,
    this.titleElement,
    this.anchor,
    this.anchorElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ImplementationGuidePage1';

  @Id()
  int dbId = 0;

  /// [name] /// Relative path to the page.
  final FhirString name;
  final Element? nameElement;

  /// [title] /// Label for the page intended for human display.
  final FhirString? title;
  final Element? titleElement;

  /// [anchor] /// The name of an anchor available on the page.
  final List<FhirString>? anchor;
  final List<Element>? anchorElement;
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
    json['name'] = name.toJson();
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    if (title?.value != null) {
      json['title'] = title!.toJson();
    }
    if (titleElement != null) {
      json['_title'] = titleElement!.toJson();
    }
    if (anchor != null && anchor!.isNotEmpty) {
      json['anchor'] = anchor!.map((FhirString v) => v.toJson()).toList();
    }
    if (anchorElement != null && anchorElement!.isNotEmpty) {
      json['_anchor'] = anchorElement!.map((Element v) => v.toJson()).toList();
    }
    return json;
  }

  factory ImplementationGuidePage1.fromJson(Map<String, dynamic> json) {
    return ImplementationGuidePage1(
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
      name: FhirString.fromJson(json['name']),
      nameElement: json['_name'] != null
          ? Element.fromJson(json['_name'] as Map<String, dynamic>)
          : null,
      title: json['title'] != null ? FhirString.fromJson(json['title']) : null,
      titleElement: json['_title'] != null
          ? Element.fromJson(json['_title'] as Map<String, dynamic>)
          : null,
      anchor: json['anchor'] != null
          ? (json['anchor'] as List<dynamic>)
              .map<FhirString>((dynamic v) => FhirString.fromJson(v as dynamic))
              .toList()
          : null,
      anchorElement: json['_anchor'] != null
          ? (json['_anchor'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  ImplementationGuidePage1 clone() => throw UnimplementedError();
  @override
  ImplementationGuidePage1 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    Element? nameElement,
    FhirString? title,
    Element? titleElement,
    List<FhirString>? anchor,
    List<Element>? anchorElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ImplementationGuidePage1(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      title: title ?? this.title,
      titleElement: titleElement ?? this.titleElement,
      anchor: anchor ?? this.anchor,
      anchorElement: anchorElement ?? this.anchorElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ImplementationGuidePage1.fromYaml(dynamic yaml) => yaml is String
      ? ImplementationGuidePage1.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ImplementationGuidePage1.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ImplementationGuidePage1 cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ImplementationGuidePage1.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ImplementationGuidePage1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
