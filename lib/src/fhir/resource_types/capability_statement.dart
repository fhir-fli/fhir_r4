import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [CapabilityStatement] /// A Capability Statement documents a set of capabilities (behaviors) of a
/// FHIR Server for a particular version of FHIR that may be used as a
/// statement of actual server functionality or a statement of required or
/// desired server implementation.
class CapabilityStatement extends DomainResource {
  CapabilityStatement({
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
    required this.date,
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
    required this.kind,
    this.kindElement,
    this.instantiates,
    this.instantiatesElement,
    this.imports,
    this.importsElement,
    this.software,
    this.implementation,
    required this.fhirVersion,
    this.fhirVersionElement,
    required this.format,
    this.formatElement,
    this.patchFormat,
    this.patchFormatElement,
    this.rest,
    this.messaging,
    this.document,
  }) : super(resourceType: R4ResourceType.CapabilityStatement);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [url] /// An absolute URI that is used to identify this capability statement when it
  /// is referenced in a specification, model, design or an instance; also called
  /// its canonical identifier. This SHOULD be globally unique and SHOULD be a
  /// literal address at which at which an authoritative instance of this
  /// capability statement is (or will be) published. This URL can be the target
  /// of a canonical reference. It SHALL remain the same when the capability
  /// statement is stored on different servers.
  final FhirUri? url;
  final Element? urlElement;

  /// [version] /// The identifier that is used to identify this version of the capability
  /// statement when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the capability statement
  /// author and is not expected to be globally unique. For example, it might be
  /// a timestamp (e.g. yyyymmdd) if a managed version is not available. There is
  /// also no expectation that versions can be placed in a lexicographical
  /// sequence.
  final FhirString? version;
  final Element? versionElement;

  /// [name] /// A natural language name identifying the capability statement. This name
  /// should be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString? name;
  final Element? nameElement;

  /// [title] /// A short, descriptive, user-friendly title for the capability statement.
  final FhirString? title;
  final Element? titleElement;

  /// [status] /// The status of this capability statement. Enables tracking the life-cycle of
  /// the content.
  final FhirCode status;
  final Element? statusElement;

  /// [experimental] /// A Boolean value to indicate that this capability statement is authored for
  /// testing purposes (or education/evaluation/marketing) and is not intended to
  /// be used for genuine usage.
  final FhirBoolean? experimental;
  final Element? experimentalElement;

  /// [date] /// The date (and optionally time) when the capability statement was published.
  /// The date must change when the business version changes and it must change
  /// if the status code changes. In addition, it should change when the
  /// substantive content of the capability statement changes.
  final FhirDateTime date;
  final Element? dateElement;

  /// [publisher] /// The name of the organization or individual that published the capability
  /// statement.
  final FhirString? publisher;
  final Element? publisherElement;

  /// [contact] /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [description] /// A free text natural language description of the capability statement from a
  /// consumer's perspective. Typically, this is used when the capability
  /// statement describes a desired rather than an actual solution, for example
  /// as a formal expression of requirements as part of an RFP.
  final FhirMarkdown? description;
  final Element? descriptionElement;

  /// [useContext] /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories (gender,
  /// age, ...) or may be references to specific programs (insurance plans,
  /// studies, ...) and may be used to assist with indexing and searching for
  /// appropriate capability statement instances.
  final List<UsageContext>? useContext;

  /// [jurisdiction] /// A legal or geographic region in which the capability statement is intended
  /// to be used.
  final List<CodeableConcept>? jurisdiction;

  /// [purpose] /// Explanation of why this capability statement is needed and why it has been
  /// designed as it has.
  final FhirMarkdown? purpose;
  final Element? purposeElement;

  /// [copyright] /// A copyright statement relating to the capability statement and/or its
  /// contents. Copyright statements are generally legal restrictions on the use
  /// and publishing of the capability statement.
  final FhirMarkdown? copyright;
  final Element? copyrightElement;

  /// [kind] /// The way that this statement is intended to be used, to describe an actual
  /// running instance of software, a particular product (kind, not instance of
  /// software) or a class of implementation (e.g. a desired purchase).
  final FhirCode kind;
  final Element? kindElement;

  /// [instantiates] /// Reference to a canonical URL of another CapabilityStatement that this
  /// software implements. This capability statement is a published API
  /// description that corresponds to a business service. The server may actually
  /// implement a subset of the capability statement it claims to implement, so
  /// the capability statement must specify the full capability details.
  final List<FhirCanonical>? instantiates;
  final List<Element>? instantiatesElement;

  /// [imports] /// Reference to a canonical URL of another CapabilityStatement that this
  /// software adds to. The capability statement automatically includes
  /// everything in the other statement, and it is not duplicated, though the
  /// server may repeat the same resources, interactions and operations to add
  /// additional details to them.
  final List<FhirCanonical>? imports;
  final List<Element>? importsElement;

  /// [software] /// Software that is covered by this capability statement. It is used when the
  /// capability statement describes the capabilities of a particular software
  /// version, independent of an installation.
  final CapabilityStatementSoftware? software;

  /// [implementation] /// Identifies a specific implementation instance that is described by the
  /// capability statement - i.e. a particular installation, rather than the
  /// capabilities of a software program.
  final CapabilityStatementImplementation? implementation;

  /// [fhirVersion] /// The version of the FHIR specification that this CapabilityStatement
  /// describes (which SHALL be the same as the FHIR version of the
  /// CapabilityStatement itself). There is no default value.
  final FhirCode fhirVersion;
  final Element? fhirVersionElement;

  /// [format] /// A list of the formats supported by this implementation using their content
  /// types.
  final List<FhirCode> format;
  final List<Element>? formatElement;

  /// [patchFormat] /// A list of the patch formats supported by this implementation using their
  /// content types.
  final List<FhirCode>? patchFormat;
  final List<Element>? patchFormatElement;

  /// [rest] /// A definition of the restful capabilities of the solution, if any.
  final List<CapabilityStatementRest>? rest;

  /// [messaging] /// A description of the messaging capabilities of the solution.
  final List<CapabilityStatementMessaging>? messaging;

  /// [document] /// A document definition.
  final List<CapabilityStatementDocument>? document;
  @override
  CapabilityStatement clone() => throw UnimplementedError();
  CapabilityStatement copy({
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
    FhirMarkdown? purpose,
    Element? purposeElement,
    FhirMarkdown? copyright,
    Element? copyrightElement,
    FhirCode? kind,
    Element? kindElement,
    List<FhirCanonical>? instantiates,
    List<Element>? instantiatesElement,
    List<FhirCanonical>? imports,
    List<Element>? importsElement,
    CapabilityStatementSoftware? software,
    CapabilityStatementImplementation? implementation,
    FhirCode? fhirVersion,
    Element? fhirVersionElement,
    List<FhirCode>? format,
    List<Element>? formatElement,
    List<FhirCode>? patchFormat,
    List<Element>? patchFormatElement,
    List<CapabilityStatementRest>? rest,
    List<CapabilityStatementMessaging>? messaging,
    List<CapabilityStatementDocument>? document,
  }) {
    return CapabilityStatement(
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
      purpose: purpose ?? this.purpose,
      purposeElement: purposeElement ?? this.purposeElement,
      copyright: copyright ?? this.copyright,
      copyrightElement: copyrightElement ?? this.copyrightElement,
      kind: kind ?? this.kind,
      kindElement: kindElement ?? this.kindElement,
      instantiates: instantiates ?? this.instantiates,
      instantiatesElement: instantiatesElement ?? this.instantiatesElement,
      imports: imports ?? this.imports,
      importsElement: importsElement ?? this.importsElement,
      software: software ?? this.software,
      implementation: implementation ?? this.implementation,
      fhirVersion: fhirVersion ?? this.fhirVersion,
      fhirVersionElement: fhirVersionElement ?? this.fhirVersionElement,
      format: format ?? this.format,
      formatElement: formatElement ?? this.formatElement,
      patchFormat: patchFormat ?? this.patchFormat,
      patchFormatElement: patchFormatElement ?? this.patchFormatElement,
      rest: rest ?? this.rest,
      messaging: messaging ?? this.messaging,
      document: document ?? this.document,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CapabilityStatementSoftware] /// Software that is covered by this capability statement. It is used when the
/// capability statement describes the capabilities of a particular software
/// version, independent of an installation.
class CapabilityStatementSoftware extends BackboneElement {
  CapabilityStatementSoftware({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.nameElement,
    this.version,
    this.versionElement,
    this.releaseDate,
    this.releaseDateElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [name] /// Name the software is known by.
  final FhirString name;
  final Element? nameElement;

  /// [version] /// The version identifier for the software covered by this statement.
  final FhirString? version;
  final Element? versionElement;

  /// [releaseDate] /// Date this version of the software was released.
  final FhirDateTime? releaseDate;
  final Element? releaseDateElement;
  @override
  CapabilityStatementSoftware clone() => throw UnimplementedError();
  CapabilityStatementSoftware copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    Element? nameElement,
    FhirString? version,
    Element? versionElement,
    FhirDateTime? releaseDate,
    Element? releaseDateElement,
  }) {
    return CapabilityStatementSoftware(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      version: version ?? this.version,
      versionElement: versionElement ?? this.versionElement,
      releaseDate: releaseDate ?? this.releaseDate,
      releaseDateElement: releaseDateElement ?? this.releaseDateElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CapabilityStatementImplementation] /// Identifies a specific implementation instance that is described by the
/// capability statement - i.e. a particular installation, rather than the
/// capabilities of a software program.
class CapabilityStatementImplementation extends BackboneElement {
  CapabilityStatementImplementation({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.description,
    this.descriptionElement,
    this.url,
    this.urlElement,
    this.custodian,
    this.implementationGuide,
    this.implementationGuideElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [description] /// Information about the specific installation that this capability statement
  /// relates to.
  final FhirString description;
  final Element? descriptionElement;

  /// [url] /// An absolute base URL for the implementation. This forms the base for REST
  /// interfaces as well as the mailbox and document interfaces.
  final FhirUrl? url;
  final Element? urlElement;

  /// [custodian] /// The organization responsible for the management of the instance and
  /// oversight of the data on the server at the specified URL.
  final Reference? custodian;

  /// [implementationGuide] /// A list of implementation guides that the server does (or should) support in
  /// their entirety.
  final List<FhirCanonical>? implementationGuide;
  final List<Element>? implementationGuideElement;
  @override
  CapabilityStatementImplementation clone() => throw UnimplementedError();
  CapabilityStatementImplementation copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    Element? descriptionElement,
    FhirUrl? url,
    Element? urlElement,
    Reference? custodian,
    List<FhirCanonical>? implementationGuide,
    List<Element>? implementationGuideElement,
  }) {
    return CapabilityStatementImplementation(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      url: url ?? this.url,
      urlElement: urlElement ?? this.urlElement,
      custodian: custodian ?? this.custodian,
      implementationGuide: implementationGuide ?? this.implementationGuide,
      implementationGuideElement:
          implementationGuideElement ?? this.implementationGuideElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CapabilityStatementRest] /// A definition of the restful capabilities of the solution, if any.
class CapabilityStatementRest extends BackboneElement {
  CapabilityStatementRest({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.mode,
    this.modeElement,
    this.documentation,
    this.documentationElement,
    this.security,
    this.resource,
    this.interaction,
    this.searchParam,
    this.operation,
    this.compartment,
    this.compartmentElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [mode] /// Identifies whether this portion of the statement is describing the ability
  /// to initiate or receive restful operations.
  final FhirCode mode;
  final Element? modeElement;

  /// [documentation] /// Information about the system's restful capabilities that apply across all
  /// applications, such as security.
  final FhirMarkdown? documentation;
  final Element? documentationElement;

  /// [security] /// Information about security implementation from an interface perspective -
  /// what a client needs to know.
  final CapabilityStatementSecurity? security;

  /// [resource] /// A specification of the restful capabilities of the solution for a specific
  /// resource type.
  final List<CapabilityStatementResource>? resource;

  /// [interaction] /// A specification of restful operations supported by the system.
  final List<CapabilityStatementInteraction>? interaction;

  /// [searchParam] /// Search parameters that are supported for searching all resources for
  /// implementations to support and/or make use of - either references to ones
  /// defined in the specification, or additional ones defined for/by the
  /// implementation.
  final List<CapabilityStatementSearchParam>? searchParam;

  /// [operation] /// Definition of an operation or a named query together with its parameters
  /// and their meaning and type.
  final List<CapabilityStatementOperation>? operation;

  /// [compartment] /// An absolute URI which is a reference to the definition of a compartment
  /// that the system supports. The reference is to a CompartmentDefinition
  /// resource by its canonical URL .
  final List<FhirCanonical>? compartment;
  final List<Element>? compartmentElement;
  @override
  CapabilityStatementRest clone() => throw UnimplementedError();
  CapabilityStatementRest copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? mode,
    Element? modeElement,
    FhirMarkdown? documentation,
    Element? documentationElement,
    CapabilityStatementSecurity? security,
    List<CapabilityStatementResource>? resource,
    List<CapabilityStatementInteraction>? interaction,
    List<CapabilityStatementSearchParam>? searchParam,
    List<CapabilityStatementOperation>? operation,
    List<FhirCanonical>? compartment,
    List<Element>? compartmentElement,
  }) {
    return CapabilityStatementRest(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      mode: mode ?? this.mode,
      modeElement: modeElement ?? this.modeElement,
      documentation: documentation ?? this.documentation,
      documentationElement: documentationElement ?? this.documentationElement,
      security: security ?? this.security,
      resource: resource ?? this.resource,
      interaction: interaction ?? this.interaction,
      searchParam: searchParam ?? this.searchParam,
      operation: operation ?? this.operation,
      compartment: compartment ?? this.compartment,
      compartmentElement: compartmentElement ?? this.compartmentElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CapabilityStatementSecurity] /// Information about security implementation from an interface perspective -
/// what a client needs to know.
class CapabilityStatementSecurity extends BackboneElement {
  CapabilityStatementSecurity({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.cors,
    this.corsElement,
    this.service,
    this.description,
    this.descriptionElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [cors] /// Server adds CORS headers when responding to requests - this enables
  /// Javascript applications to use the server.
  final FhirBoolean? cors;
  final Element? corsElement;

  /// [service] /// Types of security services that are supported/required by the system.
  final List<CodeableConcept>? service;

  /// [description] /// General description of how security works.
  final FhirMarkdown? description;
  final Element? descriptionElement;
  @override
  CapabilityStatementSecurity clone() => throw UnimplementedError();
  CapabilityStatementSecurity copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? cors,
    Element? corsElement,
    List<CodeableConcept>? service,
    FhirMarkdown? description,
    Element? descriptionElement,
  }) {
    return CapabilityStatementSecurity(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      cors: cors ?? this.cors,
      corsElement: corsElement ?? this.corsElement,
      service: service ?? this.service,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CapabilityStatementResource] /// A specification of the restful capabilities of the solution for a specific
/// resource type.
class CapabilityStatementResource extends BackboneElement {
  CapabilityStatementResource({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.typeElement,
    this.profile,
    this.profileElement,
    this.supportedProfile,
    this.supportedProfileElement,
    this.documentation,
    this.documentationElement,
    this.interaction,
    this.versioning,
    this.versioningElement,
    this.readHistory,
    this.readHistoryElement,
    this.updateCreate,
    this.updateCreateElement,
    this.conditionalCreate,
    this.conditionalCreateElement,
    this.conditionalRead,
    this.conditionalReadElement,
    this.conditionalUpdate,
    this.conditionalUpdateElement,
    this.conditionalDelete,
    this.conditionalDeleteElement,
    this.referencePolicy,
    this.referencePolicyElement,
    this.searchInclude,
    this.searchIncludeElement,
    this.searchRevInclude,
    this.searchRevIncludeElement,
    this.searchParam,
    this.operation,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// A type of resource exposed via the restful interface.
  final FhirCode type;
  final Element? typeElement;

  /// [profile] /// A specification of the profile that describes the solution's overall
  /// support for the resource, including any constraints on cardinality,
  /// bindings, lengths or other limitations. See further discussion in [Using
  /// Profiles](profiling.html#profile-uses).
  final FhirCanonical? profile;
  final Element? profileElement;

  /// [supportedProfile] /// A list of profiles that represent different use cases supported by the
  /// system. For a server, "supported by the system" means the system
  /// hosts/produces a set of resources that are conformant to a particular
  /// profile, and allows clients that use its services to search using this
  /// profile and to find appropriate data. For a client, it means the system
  /// will search by this profile and process data according to the guidance
  /// implicit in the profile. See further discussion in [Using
  /// Profiles](profiling.html#profile-uses).
  final List<FhirCanonical>? supportedProfile;
  final List<Element>? supportedProfileElement;

  /// [documentation] /// Additional information about the resource type used by the system.
  final FhirMarkdown? documentation;
  final Element? documentationElement;

  /// [interaction] /// Identifies a restful operation supported by the solution.
  final List<CapabilityStatementInteraction>? interaction;

  /// [versioning] /// This field is set to no-version to specify that the system does not support
  /// (server) or use (client) versioning for this resource type. If this has
  /// some other value, the server must at least correctly track and populate the
  /// versionId meta-property on resources. If the value is 'versioned-update',
  /// then the server supports all the versioning features, including using
  /// e-tags for version integrity in the API.
  final FhirCode? versioning;
  final Element? versioningElement;

  /// [readHistory] /// A flag for whether the server is able to return past versions as part of
  /// the vRead operation.
  final FhirBoolean? readHistory;
  final Element? readHistoryElement;

  /// [updateCreate] /// A flag to indicate that the server allows or needs to allow the client to
  /// create new identities on the server (that is, the client PUTs to a location
  /// where there is no existing resource). Allowing this operation means that
  /// the server allows the client to create new identities on the server.
  final FhirBoolean? updateCreate;
  final Element? updateCreateElement;

  /// [conditionalCreate] /// A flag that indicates that the server supports conditional create.
  final FhirBoolean? conditionalCreate;
  final Element? conditionalCreateElement;

  /// [conditionalRead] /// A code that indicates how the server supports conditional read.
  final FhirCode? conditionalRead;
  final Element? conditionalReadElement;

  /// [conditionalUpdate] /// A flag that indicates that the server supports conditional update.
  final FhirBoolean? conditionalUpdate;
  final Element? conditionalUpdateElement;

  /// [conditionalDelete] /// A code that indicates how the server supports conditional delete.
  final FhirCode? conditionalDelete;
  final Element? conditionalDeleteElement;

  /// [referencePolicy] /// A set of flags that defines how references are supported.
  final List<FhirCode>? referencePolicy;
  final List<Element>? referencePolicyElement;

  /// [searchInclude] /// A list of _include values supported by the server.
  final List<FhirString>? searchInclude;
  final List<Element>? searchIncludeElement;

  /// [searchRevInclude] /// A list of _revinclude (reverse include) values supported by the server.
  final List<FhirString>? searchRevInclude;
  final List<Element>? searchRevIncludeElement;

  /// [searchParam] /// Search parameters for implementations to support and/or make use of -
  /// either references to ones defined in the specification, or additional ones
  /// defined for/by the implementation.
  final List<CapabilityStatementSearchParam>? searchParam;

  /// [operation] /// Definition of an operation or a named query together with its parameters
  /// and their meaning and type. Consult the definition of the operation for
  /// details about how to invoke the operation, and the parameters.
  final List<CapabilityStatementOperation>? operation;
  @override
  CapabilityStatementResource clone() => throw UnimplementedError();
  CapabilityStatementResource copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? type,
    Element? typeElement,
    FhirCanonical? profile,
    Element? profileElement,
    List<FhirCanonical>? supportedProfile,
    List<Element>? supportedProfileElement,
    FhirMarkdown? documentation,
    Element? documentationElement,
    List<CapabilityStatementInteraction>? interaction,
    FhirCode? versioning,
    Element? versioningElement,
    FhirBoolean? readHistory,
    Element? readHistoryElement,
    FhirBoolean? updateCreate,
    Element? updateCreateElement,
    FhirBoolean? conditionalCreate,
    Element? conditionalCreateElement,
    FhirCode? conditionalRead,
    Element? conditionalReadElement,
    FhirBoolean? conditionalUpdate,
    Element? conditionalUpdateElement,
    FhirCode? conditionalDelete,
    Element? conditionalDeleteElement,
    List<FhirCode>? referencePolicy,
    List<Element>? referencePolicyElement,
    List<FhirString>? searchInclude,
    List<Element>? searchIncludeElement,
    List<FhirString>? searchRevInclude,
    List<Element>? searchRevIncludeElement,
    List<CapabilityStatementSearchParam>? searchParam,
    List<CapabilityStatementOperation>? operation,
  }) {
    return CapabilityStatementResource(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      profile: profile ?? this.profile,
      profileElement: profileElement ?? this.profileElement,
      supportedProfile: supportedProfile ?? this.supportedProfile,
      supportedProfileElement:
          supportedProfileElement ?? this.supportedProfileElement,
      documentation: documentation ?? this.documentation,
      documentationElement: documentationElement ?? this.documentationElement,
      interaction: interaction ?? this.interaction,
      versioning: versioning ?? this.versioning,
      versioningElement: versioningElement ?? this.versioningElement,
      readHistory: readHistory ?? this.readHistory,
      readHistoryElement: readHistoryElement ?? this.readHistoryElement,
      updateCreate: updateCreate ?? this.updateCreate,
      updateCreateElement: updateCreateElement ?? this.updateCreateElement,
      conditionalCreate: conditionalCreate ?? this.conditionalCreate,
      conditionalCreateElement:
          conditionalCreateElement ?? this.conditionalCreateElement,
      conditionalRead: conditionalRead ?? this.conditionalRead,
      conditionalReadElement:
          conditionalReadElement ?? this.conditionalReadElement,
      conditionalUpdate: conditionalUpdate ?? this.conditionalUpdate,
      conditionalUpdateElement:
          conditionalUpdateElement ?? this.conditionalUpdateElement,
      conditionalDelete: conditionalDelete ?? this.conditionalDelete,
      conditionalDeleteElement:
          conditionalDeleteElement ?? this.conditionalDeleteElement,
      referencePolicy: referencePolicy ?? this.referencePolicy,
      referencePolicyElement:
          referencePolicyElement ?? this.referencePolicyElement,
      searchInclude: searchInclude ?? this.searchInclude,
      searchIncludeElement: searchIncludeElement ?? this.searchIncludeElement,
      searchRevInclude: searchRevInclude ?? this.searchRevInclude,
      searchRevIncludeElement:
          searchRevIncludeElement ?? this.searchRevIncludeElement,
      searchParam: searchParam ?? this.searchParam,
      operation: operation ?? this.operation,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CapabilityStatementInteraction] /// Identifies a restful operation supported by the solution.
class CapabilityStatementInteraction extends BackboneElement {
  CapabilityStatementInteraction({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.codeElement,
    this.documentation,
    this.documentationElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// Coded identifier of the operation, supported by the system resource.
  final FhirCode code;
  final Element? codeElement;

  /// [documentation] /// Guidance specific to the implementation of this operation, such as 'delete
  /// is a logical delete' or 'updates are only allowed with version id' or
  /// 'creates permitted from pre-authorized certificates only'.
  final FhirMarkdown? documentation;
  final Element? documentationElement;
  @override
  CapabilityStatementInteraction clone() => throw UnimplementedError();
  CapabilityStatementInteraction copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    Element? codeElement,
    FhirMarkdown? documentation,
    Element? documentationElement,
  }) {
    return CapabilityStatementInteraction(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      codeElement: codeElement ?? this.codeElement,
      documentation: documentation ?? this.documentation,
      documentationElement: documentationElement ?? this.documentationElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CapabilityStatementSearchParam] /// Search parameters for implementations to support and/or make use of -
/// either references to ones defined in the specification, or additional ones
/// defined for/by the implementation.
class CapabilityStatementSearchParam extends BackboneElement {
  CapabilityStatementSearchParam({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.nameElement,
    this.definition,
    this.definitionElement,
    required this.type,
    this.typeElement,
    this.documentation,
    this.documentationElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [name] /// The name of the search parameter used in the interface.
  final FhirString name;
  final Element? nameElement;

  /// [definition] /// An absolute URI that is a formal reference to where this parameter was
  /// first defined, so that a client can be confident of the meaning of the
  /// search parameter (a reference to
  /// [SearchParameter.url](searchparameter-definitions.html#SearchParameter.url)).
  /// This element SHALL be populated if the search parameter refers to a
  /// SearchParameter defined by the FHIR core specification or externally
  /// defined IGs.
  final FhirCanonical? definition;
  final Element? definitionElement;

  /// [type] /// The type of value a search parameter refers to, and how the content is
  /// interpreted.
  final FhirCode type;
  final Element? typeElement;

  /// [documentation] /// This allows documentation of any distinct behaviors about how the search
  /// parameter is used. For example, text matching algorithms.
  final FhirMarkdown? documentation;
  final Element? documentationElement;
  @override
  CapabilityStatementSearchParam clone() => throw UnimplementedError();
  CapabilityStatementSearchParam copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    Element? nameElement,
    FhirCanonical? definition,
    Element? definitionElement,
    FhirCode? type,
    Element? typeElement,
    FhirMarkdown? documentation,
    Element? documentationElement,
  }) {
    return CapabilityStatementSearchParam(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      definition: definition ?? this.definition,
      definitionElement: definitionElement ?? this.definitionElement,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      documentation: documentation ?? this.documentation,
      documentationElement: documentationElement ?? this.documentationElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CapabilityStatementOperation] /// Definition of an operation or a named query together with its parameters
/// and their meaning and type. Consult the definition of the operation for
/// details about how to invoke the operation, and the parameters.
class CapabilityStatementOperation extends BackboneElement {
  CapabilityStatementOperation({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.nameElement,
    required this.definition,
    this.definitionElement,
    this.documentation,
    this.documentationElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [name] /// The name of the operation or query. For an operation, this is the name
  /// prefixed with $ and used in the URL. For a query, this is the name used in
  /// the _query parameter when the query is called.
  final FhirString name;
  final Element? nameElement;

  /// [definition] /// Where the formal definition can be found. If a server references the base
  /// definition of an Operation (i.e. from the specification itself such as
  /// ```http://hl7.org/fhir/OperationDefinition/ValueSet-expand```), that means
  /// it supports the full capabilities of the operation - e.g. both GET and POST
  /// invocation. If it only supports a subset, it must define its own custom
  /// [OperationDefinition](operationdefinition.html#) with a 'base' of the
  /// original OperationDefinition. The custom definition would describe the
  /// specific subset of functionality supported.
  final FhirCanonical definition;
  final Element? definitionElement;

  /// [documentation] /// Documentation that describes anything special about the operation behavior,
  /// possibly detailing different behavior for system, type and instance-level
  /// invocation of the operation.
  final FhirMarkdown? documentation;
  final Element? documentationElement;
  @override
  CapabilityStatementOperation clone() => throw UnimplementedError();
  CapabilityStatementOperation copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    Element? nameElement,
    FhirCanonical? definition,
    Element? definitionElement,
    FhirMarkdown? documentation,
    Element? documentationElement,
  }) {
    return CapabilityStatementOperation(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      definition: definition ?? this.definition,
      definitionElement: definitionElement ?? this.definitionElement,
      documentation: documentation ?? this.documentation,
      documentationElement: documentationElement ?? this.documentationElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CapabilityStatementInteraction1] /// A specification of restful operations supported by the system.
class CapabilityStatementInteraction1 extends BackboneElement {
  CapabilityStatementInteraction1({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.codeElement,
    this.documentation,
    this.documentationElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// A coded identifier of the operation, supported by the system.
  final FhirCode code;
  final Element? codeElement;

  /// [documentation] /// Guidance specific to the implementation of this operation, such as
  /// limitations on the kind of transactions allowed, or information about
  /// system wide search is implemented.
  final FhirMarkdown? documentation;
  final Element? documentationElement;
  @override
  CapabilityStatementInteraction1 clone() => throw UnimplementedError();
  CapabilityStatementInteraction1 copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    Element? codeElement,
    FhirMarkdown? documentation,
    Element? documentationElement,
  }) {
    return CapabilityStatementInteraction1(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      codeElement: codeElement ?? this.codeElement,
      documentation: documentation ?? this.documentation,
      documentationElement: documentationElement ?? this.documentationElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CapabilityStatementMessaging] /// A description of the messaging capabilities of the solution.
class CapabilityStatementMessaging extends BackboneElement {
  CapabilityStatementMessaging({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.endpoint,
    this.reliableCache,
    this.reliableCacheElement,
    this.documentation,
    this.documentationElement,
    this.supportedMessage,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [endpoint] /// An endpoint (network accessible address) to which messages and/or replies
  /// are to be sent.
  final List<CapabilityStatementEndpoint>? endpoint;

  /// [reliableCache] /// Length if the receiver's reliable messaging cache in minutes (if a
  /// receiver) or how long the cache length on the receiver should be (if a
  /// sender).
  final FhirUnsignedInt? reliableCache;
  final Element? reliableCacheElement;

  /// [documentation] /// Documentation about the system's messaging capabilities for this endpoint
  /// not otherwise documented by the capability statement. For example, the
  /// process for becoming an authorized messaging exchange partner.
  final FhirMarkdown? documentation;
  final Element? documentationElement;

  /// [supportedMessage] /// References to message definitions for messages this system can send or
  /// receive.
  final List<CapabilityStatementSupportedMessage>? supportedMessage;
  @override
  CapabilityStatementMessaging clone() => throw UnimplementedError();
  CapabilityStatementMessaging copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CapabilityStatementEndpoint>? endpoint,
    FhirUnsignedInt? reliableCache,
    Element? reliableCacheElement,
    FhirMarkdown? documentation,
    Element? documentationElement,
    List<CapabilityStatementSupportedMessage>? supportedMessage,
  }) {
    return CapabilityStatementMessaging(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      endpoint: endpoint ?? this.endpoint,
      reliableCache: reliableCache ?? this.reliableCache,
      reliableCacheElement: reliableCacheElement ?? this.reliableCacheElement,
      documentation: documentation ?? this.documentation,
      documentationElement: documentationElement ?? this.documentationElement,
      supportedMessage: supportedMessage ?? this.supportedMessage,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CapabilityStatementEndpoint] /// An endpoint (network accessible address) to which messages and/or replies
/// are to be sent.
class CapabilityStatementEndpoint extends BackboneElement {
  CapabilityStatementEndpoint({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.protocol,
    required this.address,
    this.addressElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [protocol] /// A list of the messaging transport protocol(s) identifiers, supported by
  /// this endpoint.
  final Coding protocol;

  /// [address] /// The network address of the endpoint. For solutions that do not use network
  /// addresses for routing, it can be just an identifier.
  final FhirUrl address;
  final Element? addressElement;
  @override
  CapabilityStatementEndpoint clone() => throw UnimplementedError();
  CapabilityStatementEndpoint copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Coding? protocol,
    FhirUrl? address,
    Element? addressElement,
  }) {
    return CapabilityStatementEndpoint(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      protocol: protocol ?? this.protocol,
      address: address ?? this.address,
      addressElement: addressElement ?? this.addressElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CapabilityStatementSupportedMessage] /// References to message definitions for messages this system can send or
/// receive.
class CapabilityStatementSupportedMessage extends BackboneElement {
  CapabilityStatementSupportedMessage({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.mode,
    this.modeElement,
    required this.definition,
    this.definitionElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [mode] /// The mode of this event declaration - whether application is sender or
  /// receiver.
  final FhirCode mode;
  final Element? modeElement;

  /// [definition] /// Points to a message definition that identifies the messaging event, message
  /// structure, allowed responses, etc.
  final FhirCanonical definition;
  final Element? definitionElement;
  @override
  CapabilityStatementSupportedMessage clone() => throw UnimplementedError();
  CapabilityStatementSupportedMessage copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? mode,
    Element? modeElement,
    FhirCanonical? definition,
    Element? definitionElement,
  }) {
    return CapabilityStatementSupportedMessage(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      mode: mode ?? this.mode,
      modeElement: modeElement ?? this.modeElement,
      definition: definition ?? this.definition,
      definitionElement: definitionElement ?? this.definitionElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CapabilityStatementDocument] /// A document definition.
class CapabilityStatementDocument extends BackboneElement {
  CapabilityStatementDocument({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.mode,
    this.modeElement,
    this.documentation,
    this.documentationElement,
    required this.profile,
    this.profileElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [mode] /// Mode of this document declaration - whether an application is a producer or
  /// consumer.
  final FhirCode mode;
  final Element? modeElement;

  /// [documentation] /// A description of how the application supports or uses the specified
  /// document profile. For example, when documents are created, what action is
  /// taken with consumed documents, etc.
  final FhirMarkdown? documentation;
  final Element? documentationElement;

  /// [profile] /// A profile on the document Bundle that constrains which resources are
  /// present, and their contents.
  final FhirCanonical profile;
  final Element? profileElement;
  @override
  CapabilityStatementDocument clone() => throw UnimplementedError();
  CapabilityStatementDocument copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? mode,
    Element? modeElement,
    FhirMarkdown? documentation,
    Element? documentationElement,
    FhirCanonical? profile,
    Element? profileElement,
  }) {
    return CapabilityStatementDocument(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      mode: mode ?? this.mode,
      modeElement: modeElement ?? this.modeElement,
      documentation: documentation ?? this.documentation,
      documentationElement: documentationElement ?? this.documentationElement,
      profile: profile ?? this.profile,
      profileElement: profileElement ?? this.profileElement,
    );
  }
}
