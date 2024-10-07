import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

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
  }) : super(resourceType: R4ResourceType.ImplementationGuide);

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
  final FhirCode status;
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
  final FhirCode? license;
  final Element? licenseElement;

  /// [fhirVersion] /// The version(s) of the FHIR specification that this ImplementationGuide
  /// targets - e.g. describes how to use. The value of this element is the
  /// formal version of the specification, without the revision number, e.g.
  /// [publication].[major].[minor], which is 4.3.0 for this version.
  final List<FhirCode> fhirVersion;
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
  ImplementationGuide clone() => throw UnimplementedError();
  ImplementationGuide copy({
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
    FhirMarkdown? copyright,
    Element? copyrightElement,
    FhirId? packageId,
    Element? packageIdElement,
    FhirCode? license,
    Element? licenseElement,
    List<FhirCode>? fhirVersion,
    List<Element>? fhirVersionElement,
    List<ImplementationGuideDependsOn>? dependsOn,
    List<ImplementationGuideGlobal>? global,
    ImplementationGuideDefinition? definition,
    ImplementationGuideManifest? manifest,
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

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
  });

  @Id()
  @JsonKey(ignore: true)
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
  ImplementationGuideDependsOn clone() => throw UnimplementedError();
  ImplementationGuideDependsOn copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCanonical? uri,
    Element? uriElement,
    FhirId? packageId,
    Element? packageIdElement,
    FhirString? version,
    Element? versionElement,
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

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
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// The type of resource that all instances must conform to.
  final FhirCode type;
  final Element? typeElement;

  /// [profile] /// A reference to the profile that all instances must conform to.
  final FhirCanonical profile;
  final Element? profileElement;
  @override
  ImplementationGuideGlobal clone() => throw UnimplementedError();
  ImplementationGuideGlobal copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? type,
    Element? typeElement,
    FhirCanonical? profile,
    Element? profileElement,
  }) {
    return ImplementationGuideGlobal(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      profile: profile ?? this.profile,
      profileElement: profileElement ?? this.profileElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

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
  });

  @Id()
  @JsonKey(ignore: true)
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
  ImplementationGuideDefinition clone() => throw UnimplementedError();
  ImplementationGuideDefinition copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<ImplementationGuideGrouping>? grouping,
    List<ImplementationGuideResource>? resource,
    ImplementationGuidePage? page,
    List<ImplementationGuideParameter>? parameter,
    List<ImplementationGuideTemplate>? template,
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

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
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [name] /// The human-readable title to display for the package of resources when
  /// rendering the implementation guide.
  final FhirString name;
  final Element? nameElement;

  /// [description] /// Human readable text describing the package.
  final FhirString? description;
  final Element? descriptionElement;
  @override
  ImplementationGuideGrouping clone() => throw UnimplementedError();
  ImplementationGuideGrouping copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    Element? nameElement,
    FhirString? description,
    Element? descriptionElement,
  }) {
    return ImplementationGuideGrouping(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

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
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [reference] /// Where this resource is found.
  final Reference reference;

  /// [fhirVersion] /// Indicates the FHIR Version(s) this artifact is intended to apply to. If no
  /// versions are specified, the resource is assumed to apply to all the
  /// versions stated in ImplementationGuide.fhirVersion.
  final List<FhirCode>? fhirVersion;
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
  ImplementationGuideResource clone() => throw UnimplementedError();
  ImplementationGuideResource copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? reference,
    List<FhirCode>? fhirVersion,
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ImplementationGuidePage] /// A page / section in the implementation guide. The root page is the
/// implementation guide home page.
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
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [nameUrl] /// The source address for the page.
  final FhirUrl nameUrl;
  final Element? nameUrlElement;

  /// [nameReference] /// The source address for the page.
  final Reference nameReference;

  /// [title] /// A short title used to represent this page in navigational structures such
  /// as table of contents, bread crumbs, etc.
  final FhirString title;
  final Element? titleElement;

  /// [generation] /// A code that indicates how the page is generated.
  final FhirCode generation;
  final Element? generationElement;

  /// [page] /// Nested Pages/Sections under this page.
  final List<ImplementationGuidePage>? page;
  @override
  ImplementationGuidePage clone() => throw UnimplementedError();
  ImplementationGuidePage copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUrl? nameUrl,
    Element? nameUrlElement,
    Reference? nameReference,
    FhirString? title,
    Element? titleElement,
    FhirCode? generation,
    Element? generationElement,
    List<ImplementationGuidePage>? page,
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

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
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// apply | path-resource | path-pages | path-tx-cache | expansion-parameter |
  /// rule-broken-links | generate-xml | generate-json | generate-turtle |
  /// html-template.
  final FhirCode code;
  final Element? codeElement;

  /// [value] /// Value for named type.
  final FhirString value;
  final Element? valueElement;
  @override
  ImplementationGuideParameter clone() => throw UnimplementedError();
  ImplementationGuideParameter copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    Element? codeElement,
    FhirString? value,
    Element? valueElement,
  }) {
    return ImplementationGuideParameter(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      codeElement: codeElement ?? this.codeElement,
      value: value ?? this.value,
      valueElement: valueElement ?? this.valueElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

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
  });

  @Id()
  @JsonKey(ignore: true)
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
  ImplementationGuideTemplate clone() => throw UnimplementedError();
  ImplementationGuideTemplate copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    Element? codeElement,
    FhirString? source,
    Element? sourceElement,
    FhirString? scope,
    Element? scopeElement,
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

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
  });

  @Id()
  @JsonKey(ignore: true)
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
  ImplementationGuideManifest clone() => throw UnimplementedError();
  ImplementationGuideManifest copy({
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

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
  });

  @Id()
  @JsonKey(ignore: true)
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
  ImplementationGuideResource1 clone() => throw UnimplementedError();
  ImplementationGuideResource1 copy({
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

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
  });

  @Id()
  @JsonKey(ignore: true)
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
  ImplementationGuidePage1 clone() => throw UnimplementedError();
  ImplementationGuidePage1 copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    Element? nameElement,
    FhirString? title,
    Element? titleElement,
    List<FhirString>? anchor,
    List<Element>? anchorElement,
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
    );
  }
}
