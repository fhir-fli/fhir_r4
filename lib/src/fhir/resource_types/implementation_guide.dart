import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'implementation_guide.g.dart';

/// [ImplementationGuide] /// A set of rules of how a particular interoperability or standards problem is
/// solved - typically through the use of FHIR resources. This resource is used
/// to gather all the parts of an implementation guide into a logical whole and
/// to publish a computable definition of all the parts.
@JsonSerializable()
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
    R4ResourceType? resourceType,
  }) : super(
            resourceType: R4ResourceType.ImplementationGuide,
            fhirType: 'ImplementationGuide');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [url] /// An absolute URI that is used to identify this implementation guide when it
  /// is referenced in a specification, model, design or an instance; also called
  /// its canonical identifier. This SHOULD be globally unique and SHOULD be a
  /// literal address at which at which an authoritative instance of this
  /// implementation guide is (or will be) published. This URL can be the target
  /// of a canonical reference. It SHALL remain the same when the implementation
  /// guide is stored on different servers.
  @JsonKey(name: 'url')
  final FhirUri url;
  @JsonKey(name: '_url')
  final Element? urlElement;

  /// [version] /// The identifier that is used to identify this version of the implementation
  /// guide when it is referenced in a specification, model, design or instance.
  /// This is an arbitrary value managed by the implementation guide author and
  /// is not expected to be globally unique. For example, it might be a timestamp
  /// (e.g. yyyymmdd) if a managed version is not available. There is also no
  /// expectation that versions can be placed in a lexicographical sequence.
  @JsonKey(name: 'version')
  final FhirString? version;
  @JsonKey(name: '_version')
  final Element? versionElement;

  /// [name] /// A natural language name identifying the implementation guide. This name
  /// should be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  @JsonKey(name: 'name')
  final FhirString name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [title] /// A short, descriptive, user-friendly title for the implementation guide.
  @JsonKey(name: 'title')
  final FhirString? title;
  @JsonKey(name: '_title')
  final Element? titleElement;

  /// [status] /// The status of this implementation guide. Enables tracking the life-cycle of
  /// the content.
  @JsonKey(name: 'status')
  final PublicationStatus status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [experimental] /// A Boolean value to indicate that this implementation guide is authored for
  /// testing purposes (or education/evaluation/marketing) and is not intended to
  /// be used for genuine usage.
  @JsonKey(name: 'experimental')
  final FhirBoolean? experimental;
  @JsonKey(name: '_experimental')
  final Element? experimentalElement;

  /// [date] /// The date (and optionally time) when the implementation guide was published.
  /// The date must change when the business version changes and it must change
  /// if the status code changes. In addition, it should change when the
  /// substantive content of the implementation guide changes.
  @JsonKey(name: 'date')
  final FhirDateTime? date;
  @JsonKey(name: '_date')
  final Element? dateElement;

  /// [publisher] /// The name of the organization or individual that published the
  /// implementation guide.
  @JsonKey(name: 'publisher')
  final FhirString? publisher;
  @JsonKey(name: '_publisher')
  final Element? publisherElement;

  /// [contact] /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  @JsonKey(name: 'contact')
  final List<ContactDetail>? contact;

  /// [description] /// A free text natural language description of the implementation guide from a
  /// consumer's perspective.
  @JsonKey(name: 'description')
  final FhirMarkdown? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [useContext] /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories (gender,
  /// age, ...) or may be references to specific programs (insurance plans,
  /// studies, ...) and may be used to assist with indexing and searching for
  /// appropriate implementation guide instances.
  @JsonKey(name: 'useContext')
  final List<UsageContext>? useContext;

  /// [jurisdiction] /// A legal or geographic region in which the implementation guide is intended
  /// to be used.
  @JsonKey(name: 'jurisdiction')
  final List<CodeableConcept>? jurisdiction;

  /// [copyright] /// A copyright statement relating to the implementation guide and/or its
  /// contents. Copyright statements are generally legal restrictions on the use
  /// and publishing of the implementation guide.
  @JsonKey(name: 'copyright')
  final FhirMarkdown? copyright;
  @JsonKey(name: '_copyright')
  final Element? copyrightElement;

  /// [packageId] /// The NPM package name for this Implementation Guide, used in the NPM package
  /// distribution, which is the primary mechanism by which FHIR based tooling
  /// manages IG dependencies. This value must be globally unique, and should be
  /// assigned with care.
  @JsonKey(name: 'packageId')
  final FhirId packageId;
  @JsonKey(name: '_packageId')
  final Element? packageIdElement;

  /// [license] /// The license that applies to this Implementation Guide, using an SPDX
  /// license code, or 'not-open-source'.
  @JsonKey(name: 'license')
  final SPDXLicense? license;
  @JsonKey(name: '_license')
  final Element? licenseElement;

  /// [fhirVersion] /// The version(s) of the FHIR specification that this ImplementationGuide
  /// targets - e.g. describes how to use. The value of this element is the
  /// formal version of the specification, without the revision number, e.g.
  /// [publication].[major].[minor], which is 4.3.0 for this version.
  @JsonKey(name: 'fhirVersion')
  final List<FHIRVersion> fhirVersion;
  @JsonKey(name: '_fhirVersion')
  final List<Element>? fhirVersionElement;

  /// [dependsOn] /// Another implementation guide that this implementation depends on.
  /// Typically, an implementation guide uses value sets, profiles etc.defined in
  /// other implementation guides.
  @JsonKey(name: 'dependsOn')
  final List<ImplementationGuideDependsOn>? dependsOn;

  /// [global] /// A set of profiles that all resources covered by this implementation guide
  /// must conform to.
  @JsonKey(name: 'global')
  final List<ImplementationGuideGlobal>? global;

  /// [definition] /// The information needed by an IG publisher tool to publish the whole
  /// implementation guide.
  @JsonKey(name: 'definition')
  final ImplementationGuideDefinition? definition;

  /// [manifest] /// Information about an assembled implementation guide, created by the
  /// publication tooling.
  @JsonKey(name: 'manifest')
  final ImplementationGuideManifest? manifest;
  factory ImplementationGuide.fromJson(Map<String, dynamic> json) =>
      _$ImplementationGuideFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ImplementationGuideToJson(this);

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
@JsonSerializable()
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
  }) : super(fhirType: 'ImplementationGuideDependsOn');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [uri] /// A canonical reference to the Implementation guide for the dependency.
  @JsonKey(name: 'uri')
  final FhirCanonical uri;
  @JsonKey(name: '_uri')
  final Element? uriElement;

  /// [packageId] /// The NPM package name for the Implementation Guide that this IG depends on.
  @JsonKey(name: 'packageId')
  final FhirId? packageId;
  @JsonKey(name: '_packageId')
  final Element? packageIdElement;

  /// [version] /// The version of the IG that is depended on, when the correct version is
  /// required to understand the IG correctly.
  @JsonKey(name: 'version')
  final FhirString? version;
  @JsonKey(name: '_version')
  final Element? versionElement;
  factory ImplementationGuideDependsOn.fromJson(Map<String, dynamic> json) =>
      _$ImplementationGuideDependsOnFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ImplementationGuideDependsOnToJson(this);

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
@JsonSerializable()
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
  }) : super(fhirType: 'ImplementationGuideGlobal');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// The type of resource that all instances must conform to.
  @JsonKey(name: 'type')
  final FhirCode type;
  @JsonKey(name: '_type')
  final Element? typeElement;

  /// [profile] /// A reference to the profile that all instances must conform to.
  @JsonKey(name: 'profile')
  final FhirCanonical profile;
  @JsonKey(name: '_profile')
  final Element? profileElement;
  factory ImplementationGuideGlobal.fromJson(Map<String, dynamic> json) =>
      _$ImplementationGuideGlobalFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ImplementationGuideGlobalToJson(this);

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
@JsonSerializable()
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
  }) : super(fhirType: 'ImplementationGuideDefinition');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [grouping] /// A logical group of resources. Logical groups can be used when building
  /// pages.
  @JsonKey(name: 'grouping')
  final List<ImplementationGuideGrouping>? grouping;

  /// [resource] /// A resource that is part of the implementation guide. Conformance resources
  /// (value set, structure definition, capability statements etc.) are obvious
  /// candidates for inclusion, but any kind of resource can be included as an
  /// example resource.
  @JsonKey(name: 'resource')
  final List<ImplementationGuideResource> resource;

  /// [page] /// A page / section in the implementation guide. The root page is the
  /// implementation guide home page.
  @JsonKey(name: 'page')
  final ImplementationGuidePage? page;

  /// [parameter] /// Defines how IG is built by tools.
  @JsonKey(name: 'parameter')
  final List<ImplementationGuideParameter>? parameter;

  /// [template] /// A template for building resources.
  @JsonKey(name: 'template')
  final List<ImplementationGuideTemplate>? template;
  factory ImplementationGuideDefinition.fromJson(Map<String, dynamic> json) =>
      _$ImplementationGuideDefinitionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ImplementationGuideDefinitionToJson(this);

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
@JsonSerializable()
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
  }) : super(fhirType: 'ImplementationGuideGrouping');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [name] /// The human-readable title to display for the package of resources when
  /// rendering the implementation guide.
  @JsonKey(name: 'name')
  final FhirString name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [description] /// Human readable text describing the package.
  @JsonKey(name: 'description')
  final FhirString? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;
  factory ImplementationGuideGrouping.fromJson(Map<String, dynamic> json) =>
      _$ImplementationGuideGroupingFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ImplementationGuideGroupingToJson(this);

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
@JsonSerializable()
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
  }) : super(fhirType: 'ImplementationGuideResource');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [reference] /// Where this resource is found.
  @JsonKey(name: 'reference')
  final Reference reference;

  /// [fhirVersion] /// Indicates the FHIR Version(s) this artifact is intended to apply to. If no
  /// versions are specified, the resource is assumed to apply to all the
  /// versions stated in ImplementationGuide.fhirVersion.
  @JsonKey(name: 'fhirVersion')
  final List<FHIRVersion>? fhirVersion;
  @JsonKey(name: '_fhirVersion')
  final List<Element>? fhirVersionElement;

  /// [name] /// A human assigned name for the resource. All resources SHOULD have a name,
  /// but the name may be extracted from the resource (e.g. ValueSet.name).
  @JsonKey(name: 'name')
  final FhirString? name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [description] /// A description of the reason that a resource has been included in the
  /// implementation guide.
  @JsonKey(name: 'description')
  final FhirString? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [exampleBoolean] /// If true or a reference, indicates the resource is an example instance. If a
  /// reference is present, indicates that the example is an example of the
  /// specified profile.
  @JsonKey(name: 'exampleBoolean')
  final FhirBoolean? exampleBoolean;
  @JsonKey(name: '_exampleBoolean')
  final Element? exampleBooleanElement;

  /// [exampleCanonical] /// If true or a reference, indicates the resource is an example instance. If a
  /// reference is present, indicates that the example is an example of the
  /// specified profile.
  @JsonKey(name: 'exampleCanonical')
  final FhirCanonical? exampleCanonical;
  @JsonKey(name: '_exampleCanonical')
  final Element? exampleCanonicalElement;

  /// [groupingId] /// Reference to the id of the grouping this resource appears in.
  @JsonKey(name: 'groupingId')
  final FhirId? groupingId;
  @JsonKey(name: '_groupingId')
  final Element? groupingIdElement;
  factory ImplementationGuideResource.fromJson(Map<String, dynamic> json) =>
      _$ImplementationGuideResourceFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ImplementationGuideResourceToJson(this);

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
@JsonSerializable()
class ImplementationGuidePage extends BackboneElement {
  ImplementationGuidePage({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.nameUrl,
    this.nameUrlElement,
    required this.nameReference,
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
  }) : super(fhirType: 'ImplementationGuidePage');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [nameUrl] /// The source address for the page.
  @JsonKey(name: 'nameUrl')
  final FhirUrl nameUrl;
  @JsonKey(name: '_nameUrl')
  final Element? nameUrlElement;

  /// [nameReference] /// The source address for the page.
  @JsonKey(name: 'nameReference')
  final Reference nameReference;

  /// [title] /// A short title used to represent this page in navigational structures such
  /// as table of contents, bread crumbs, etc.
  @JsonKey(name: 'title')
  final FhirString title;
  @JsonKey(name: '_title')
  final Element? titleElement;

  /// [generation] /// A code that indicates how the page is generated.
  @JsonKey(name: 'generation')
  final GuidePageGeneration generation;
  @JsonKey(name: '_generation')
  final Element? generationElement;

  /// [page] /// Nested Pages/Sections under this page.
  @JsonKey(name: 'page')
  final List<ImplementationGuidePage>? page;
  factory ImplementationGuidePage.fromJson(Map<String, dynamic> json) =>
      _$ImplementationGuidePageFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ImplementationGuidePageToJson(this);

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
@JsonSerializable()
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
  }) : super(fhirType: 'ImplementationGuideParameter');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// apply | path-resource | path-pages | path-tx-cache | expansion-parameter |
  /// rule-broken-links | generate-xml | generate-json | generate-turtle |
  /// html-template.
  @JsonKey(name: 'code')
  final GuideParameterCode code;
  @JsonKey(name: '_code')
  final Element? codeElement;

  /// [value] /// Value for named type.
  @JsonKey(name: 'value')
  final FhirString value;
  @JsonKey(name: '_value')
  final Element? valueElement;
  factory ImplementationGuideParameter.fromJson(Map<String, dynamic> json) =>
      _$ImplementationGuideParameterFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ImplementationGuideParameterToJson(this);

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
@JsonSerializable()
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
  }) : super(fhirType: 'ImplementationGuideTemplate');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// Type of template specified.
  @JsonKey(name: 'code')
  final FhirCode code;
  @JsonKey(name: '_code')
  final Element? codeElement;

  /// [source] /// The source location for the template.
  @JsonKey(name: 'source')
  final FhirString source;
  @JsonKey(name: '_source')
  final Element? sourceElement;

  /// [scope] /// The scope in which the template applies.
  @JsonKey(name: 'scope')
  final FhirString? scope;
  @JsonKey(name: '_scope')
  final Element? scopeElement;
  factory ImplementationGuideTemplate.fromJson(Map<String, dynamic> json) =>
      _$ImplementationGuideTemplateFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ImplementationGuideTemplateToJson(this);

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
@JsonSerializable()
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
  }) : super(fhirType: 'ImplementationGuideManifest');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [rendering] /// A pointer to official web page, PDF or other rendering of the
  /// implementation guide.
  @JsonKey(name: 'rendering')
  final FhirUrl? rendering;
  @JsonKey(name: '_rendering')
  final Element? renderingElement;

  /// [resource] /// A resource that is part of the implementation guide. Conformance resources
  /// (value set, structure definition, capability statements etc.) are obvious
  /// candidates for inclusion, but any kind of resource can be included as an
  /// example resource.
  @JsonKey(name: 'resource')
  final List<ImplementationGuideResource> resource;

  /// [page] /// Information about a page within the IG.
  @JsonKey(name: 'page')
  final List<ImplementationGuidePage>? page;

  /// [image] /// Indicates a relative path to an image that exists within the IG.
  @JsonKey(name: 'image')
  final List<FhirString>? image;
  @JsonKey(name: '_image')
  final List<Element>? imageElement;

  /// [other] /// Indicates the relative path of an additional non-page, non-image file that
  /// is part of the IG - e.g. zip, jar and similar files that could be the
  /// target of a hyperlink in a derived IG.
  @JsonKey(name: 'other')
  final List<FhirString>? other;
  @JsonKey(name: '_other')
  final List<Element>? otherElement;
  factory ImplementationGuideManifest.fromJson(Map<String, dynamic> json) =>
      _$ImplementationGuideManifestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ImplementationGuideManifestToJson(this);

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
@JsonSerializable()
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
  }) : super(fhirType: 'ImplementationGuideResource1');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [reference] /// Where this resource is found.
  @JsonKey(name: 'reference')
  final Reference reference;

  /// [exampleBoolean] /// If true or a reference, indicates the resource is an example instance. If a
  /// reference is present, indicates that the example is an example of the
  /// specified profile.
  @JsonKey(name: 'exampleBoolean')
  final FhirBoolean? exampleBoolean;
  @JsonKey(name: '_exampleBoolean')
  final Element? exampleBooleanElement;

  /// [exampleCanonical] /// If true or a reference, indicates the resource is an example instance. If a
  /// reference is present, indicates that the example is an example of the
  /// specified profile.
  @JsonKey(name: 'exampleCanonical')
  final FhirCanonical? exampleCanonical;
  @JsonKey(name: '_exampleCanonical')
  final Element? exampleCanonicalElement;

  /// [relativePath] /// The relative path for primary page for this resource within the IG.
  @JsonKey(name: 'relativePath')
  final FhirUrl? relativePath;
  @JsonKey(name: '_relativePath')
  final Element? relativePathElement;
  factory ImplementationGuideResource1.fromJson(Map<String, dynamic> json) =>
      _$ImplementationGuideResource1FromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ImplementationGuideResource1ToJson(this);

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
@JsonSerializable()
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
  }) : super(fhirType: 'ImplementationGuidePage1');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [name] /// Relative path to the page.
  @JsonKey(name: 'name')
  final FhirString name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [title] /// Label for the page intended for human display.
  @JsonKey(name: 'title')
  final FhirString? title;
  @JsonKey(name: '_title')
  final Element? titleElement;

  /// [anchor] /// The name of an anchor available on the page.
  @JsonKey(name: 'anchor')
  final List<FhirString>? anchor;
  @JsonKey(name: '_anchor')
  final List<Element>? anchorElement;
  factory ImplementationGuidePage1.fromJson(Map<String, dynamic> json) =>
      _$ImplementationGuidePage1FromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ImplementationGuidePage1ToJson(this);

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
