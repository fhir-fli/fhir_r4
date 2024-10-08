import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'capability_statement.g.dart';

/// [CapabilityStatement] /// A Capability Statement documents a set of capabilities (behaviors) of a
/// FHIR Server for a particular version of FHIR that may be used as a
/// statement of actual server functionality or a statement of required or
/// desired server implementation.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    R4ResourceType? resourceType,
  }) : super(
            resourceType: R4ResourceType.CapabilityStatement,
            fhirType: 'CapabilityStatement');
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
  @JsonKey(name: 'url')
  final FhirUri? url;
  @JsonKey(name: '_url')
  final Element? urlElement;

  /// [version] /// The identifier that is used to identify this version of the capability
  /// statement when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the capability statement
  /// author and is not expected to be globally unique. For example, it might be
  /// a timestamp (e.g. yyyymmdd) if a managed version is not available. There is
  /// also no expectation that versions can be placed in a lexicographical
  /// sequence.
  @JsonKey(name: 'version')
  final FhirString? version;
  @JsonKey(name: '_version')
  final Element? versionElement;

  /// [name] /// A natural language name identifying the capability statement. This name
  /// should be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  @JsonKey(name: 'name')
  final FhirString? name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [title] /// A short, descriptive, user-friendly title for the capability statement.
  @JsonKey(name: 'title')
  final FhirString? title;
  @JsonKey(name: '_title')
  final Element? titleElement;

  /// [status] /// The status of this capability statement. Enables tracking the life-cycle of
  /// the content.
  @JsonKey(name: 'status')
  final PublicationStatus status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [experimental] /// A Boolean value to indicate that this capability statement is authored for
  /// testing purposes (or education/evaluation/marketing) and is not intended to
  /// be used for genuine usage.
  @JsonKey(name: 'experimental')
  final FhirBoolean? experimental;
  @JsonKey(name: '_experimental')
  final Element? experimentalElement;

  /// [date] /// The date (and optionally time) when the capability statement was published.
  /// The date must change when the business version changes and it must change
  /// if the status code changes. In addition, it should change when the
  /// substantive content of the capability statement changes.
  @JsonKey(name: 'date')
  final FhirDateTime date;
  @JsonKey(name: '_date')
  final Element? dateElement;

  /// [publisher] /// The name of the organization or individual that published the capability
  /// statement.
  @JsonKey(name: 'publisher')
  final FhirString? publisher;
  @JsonKey(name: '_publisher')
  final Element? publisherElement;

  /// [contact] /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  @JsonKey(name: 'contact')
  final List<ContactDetail>? contact;

  /// [description] /// A free text natural language description of the capability statement from a
  /// consumer's perspective. Typically, this is used when the capability
  /// statement describes a desired rather than an actual solution, for example
  /// as a formal expression of requirements as part of an RFP.
  @JsonKey(name: 'description')
  final FhirMarkdown? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [useContext] /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories (gender,
  /// age, ...) or may be references to specific programs (insurance plans,
  /// studies, ...) and may be used to assist with indexing and searching for
  /// appropriate capability statement instances.
  @JsonKey(name: 'useContext')
  final List<UsageContext>? useContext;

  /// [jurisdiction] /// A legal or geographic region in which the capability statement is intended
  /// to be used.
  @JsonKey(name: 'jurisdiction')
  final List<CodeableConcept>? jurisdiction;

  /// [purpose] /// Explanation of why this capability statement is needed and why it has been
  /// designed as it has.
  @JsonKey(name: 'purpose')
  final FhirMarkdown? purpose;
  @JsonKey(name: '_purpose')
  final Element? purposeElement;

  /// [copyright] /// A copyright statement relating to the capability statement and/or its
  /// contents. Copyright statements are generally legal restrictions on the use
  /// and publishing of the capability statement.
  @JsonKey(name: 'copyright')
  final FhirMarkdown? copyright;
  @JsonKey(name: '_copyright')
  final Element? copyrightElement;

  /// [kind] /// The way that this statement is intended to be used, to describe an actual
  /// running instance of software, a particular product (kind, not instance of
  /// software) or a class of implementation (e.g. a desired purchase).
  @JsonKey(name: 'kind')
  final CapabilityStatementKind kind;
  @JsonKey(name: '_kind')
  final Element? kindElement;

  /// [instantiates] /// Reference to a canonical URL of another CapabilityStatement that this
  /// software implements. This capability statement is a published API
  /// description that corresponds to a business service. The server may actually
  /// implement a subset of the capability statement it claims to implement, so
  /// the capability statement must specify the full capability details.
  @JsonKey(name: 'instantiates')
  final List<FhirCanonical>? instantiates;
  @JsonKey(name: '_instantiates')
  final List<Element>? instantiatesElement;

  /// [imports] /// Reference to a canonical URL of another CapabilityStatement that this
  /// software adds to. The capability statement automatically includes
  /// everything in the other statement, and it is not duplicated, though the
  /// server may repeat the same resources, interactions and operations to add
  /// additional details to them.
  @JsonKey(name: 'imports')
  final List<FhirCanonical>? imports;
  @JsonKey(name: '_imports')
  final List<Element>? importsElement;

  /// [software] /// Software that is covered by this capability statement. It is used when the
  /// capability statement describes the capabilities of a particular software
  /// version, independent of an installation.
  @JsonKey(name: 'software')
  final CapabilityStatementSoftware? software;

  /// [implementation] /// Identifies a specific implementation instance that is described by the
  /// capability statement - i.e. a particular installation, rather than the
  /// capabilities of a software program.
  @JsonKey(name: 'implementation')
  final CapabilityStatementImplementation? implementation;

  /// [fhirVersion] /// The version of the FHIR specification that this CapabilityStatement
  /// describes (which SHALL be the same as the FHIR version of the
  /// CapabilityStatement itself). There is no default value.
  @JsonKey(name: 'fhirVersion')
  final FHIRVersion fhirVersion;
  @JsonKey(name: '_fhirVersion')
  final Element? fhirVersionElement;

  /// [format] /// A list of the formats supported by this implementation using their content
  /// types.
  @JsonKey(name: 'format')
  final List<FhirCode> format;
  @JsonKey(name: '_format')
  final List<Element>? formatElement;

  /// [patchFormat] /// A list of the patch formats supported by this implementation using their
  /// content types.
  @JsonKey(name: 'patchFormat')
  final List<FhirCode>? patchFormat;
  @JsonKey(name: '_patchFormat')
  final List<Element>? patchFormatElement;

  /// [rest] /// A definition of the restful capabilities of the solution, if any.
  @JsonKey(name: 'rest')
  final List<CapabilityStatementRest>? rest;

  /// [messaging] /// A description of the messaging capabilities of the solution.
  @JsonKey(name: 'messaging')
  final List<CapabilityStatementMessaging>? messaging;

  /// [document] /// A document definition.
  @JsonKey(name: 'document')
  final List<CapabilityStatementDocument>? document;
  factory CapabilityStatement.fromJson(Map<String, dynamic> json) =>
      _$CapabilityStatementFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CapabilityStatementToJson(this);

  @override
  CapabilityStatement clone() => throw UnimplementedError();
  @override
  CapabilityStatement copyWith({
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
    FhirMarkdown? purpose,
    Element? purposeElement,
    FhirMarkdown? copyright,
    Element? copyrightElement,
    CapabilityStatementKind? kind,
    Element? kindElement,
    List<FhirCanonical>? instantiates,
    List<Element>? instantiatesElement,
    List<FhirCanonical>? imports,
    List<Element>? importsElement,
    CapabilityStatementSoftware? software,
    CapabilityStatementImplementation? implementation,
    FHIRVersion? fhirVersion,
    Element? fhirVersionElement,
    List<FhirCode>? format,
    List<Element>? formatElement,
    List<FhirCode>? patchFormat,
    List<Element>? patchFormatElement,
    List<CapabilityStatementRest>? rest,
    List<CapabilityStatementMessaging>? messaging,
    List<CapabilityStatementDocument>? document,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CapabilityStatement.fromYaml(dynamic yaml) => yaml is String
      ? CapabilityStatement.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CapabilityStatement.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CapabilityStatement cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CapabilityStatement.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CapabilityStatement.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [CapabilityStatementSoftware] /// Software that is covered by this capability statement. It is used when the
/// capability statement describes the capabilities of a particular software
/// version, independent of an installation.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'CapabilityStatementSoftware');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [name] /// Name the software is known by.
  @JsonKey(name: 'name')
  final FhirString name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [version] /// The version identifier for the software covered by this statement.
  @JsonKey(name: 'version')
  final FhirString? version;
  @JsonKey(name: '_version')
  final Element? versionElement;

  /// [releaseDate] /// Date this version of the software was released.
  @JsonKey(name: 'releaseDate')
  final FhirDateTime? releaseDate;
  @JsonKey(name: '_releaseDate')
  final Element? releaseDateElement;
  factory CapabilityStatementSoftware.fromJson(Map<String, dynamic> json) =>
      _$CapabilityStatementSoftwareFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CapabilityStatementSoftwareToJson(this);

  @override
  CapabilityStatementSoftware clone() => throw UnimplementedError();
  @override
  CapabilityStatementSoftware copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    Element? nameElement,
    FhirString? version,
    Element? versionElement,
    FhirDateTime? releaseDate,
    Element? releaseDateElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CapabilityStatementSoftware.fromYaml(dynamic yaml) => yaml is String
      ? CapabilityStatementSoftware.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CapabilityStatementSoftware.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CapabilityStatementSoftware cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CapabilityStatementSoftware.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CapabilityStatementSoftware.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [CapabilityStatementImplementation] /// Identifies a specific implementation instance that is described by the
/// capability statement - i.e. a particular installation, rather than the
/// capabilities of a software program.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'CapabilityStatementImplementation');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [description] /// Information about the specific installation that this capability statement
  /// relates to.
  @JsonKey(name: 'description')
  final FhirString description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [url] /// An absolute base URL for the implementation. This forms the base for REST
  /// interfaces as well as the mailbox and document interfaces.
  @JsonKey(name: 'url')
  final FhirUrl? url;
  @JsonKey(name: '_url')
  final Element? urlElement;

  /// [custodian] /// The organization responsible for the management of the instance and
  /// oversight of the data on the server at the specified URL.
  @JsonKey(name: 'custodian')
  final Reference? custodian;

  /// [implementationGuide] /// A list of implementation guides that the server does (or should) support in
  /// their entirety.
  @JsonKey(name: 'implementationGuide')
  final List<FhirCanonical>? implementationGuide;
  @JsonKey(name: '_implementationGuide')
  final List<Element>? implementationGuideElement;
  factory CapabilityStatementImplementation.fromJson(
          Map<String, dynamic> json) =>
      _$CapabilityStatementImplementationFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$CapabilityStatementImplementationToJson(this);

  @override
  CapabilityStatementImplementation clone() => throw UnimplementedError();
  @override
  CapabilityStatementImplementation copyWith({
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CapabilityStatementImplementation.fromYaml(dynamic yaml) => yaml
          is String
      ? CapabilityStatementImplementation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CapabilityStatementImplementation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CapabilityStatementImplementation cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CapabilityStatementImplementation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CapabilityStatementImplementation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [CapabilityStatementRest] /// A definition of the restful capabilities of the solution, if any.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'CapabilityStatementRest');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [mode] /// Identifies whether this portion of the statement is describing the ability
  /// to initiate or receive restful operations.
  @JsonKey(name: 'mode')
  final RestfulCapabilityMode mode;
  @JsonKey(name: '_mode')
  final Element? modeElement;

  /// [documentation] /// Information about the system's restful capabilities that apply across all
  /// applications, such as security.
  @JsonKey(name: 'documentation')
  final FhirMarkdown? documentation;
  @JsonKey(name: '_documentation')
  final Element? documentationElement;

  /// [security] /// Information about security implementation from an interface perspective -
  /// what a client needs to know.
  @JsonKey(name: 'security')
  final CapabilityStatementSecurity? security;

  /// [resource] /// A specification of the restful capabilities of the solution for a specific
  /// resource type.
  @JsonKey(name: 'resource')
  final List<CapabilityStatementResource>? resource;

  /// [interaction] /// A specification of restful operations supported by the system.
  @JsonKey(name: 'interaction')
  final List<CapabilityStatementInteraction>? interaction;

  /// [searchParam] /// Search parameters that are supported for searching all resources for
  /// implementations to support and/or make use of - either references to ones
  /// defined in the specification, or additional ones defined for/by the
  /// implementation.
  @JsonKey(name: 'searchParam')
  final List<CapabilityStatementSearchParam>? searchParam;

  /// [operation] /// Definition of an operation or a named query together with its parameters
  /// and their meaning and type.
  @JsonKey(name: 'operation')
  final List<CapabilityStatementOperation>? operation;

  /// [compartment] /// An absolute URI which is a reference to the definition of a compartment
  /// that the system supports. The reference is to a CompartmentDefinition
  /// resource by its canonical URL .
  @JsonKey(name: 'compartment')
  final List<FhirCanonical>? compartment;
  @JsonKey(name: '_compartment')
  final List<Element>? compartmentElement;
  factory CapabilityStatementRest.fromJson(Map<String, dynamic> json) =>
      _$CapabilityStatementRestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CapabilityStatementRestToJson(this);

  @override
  CapabilityStatementRest clone() => throw UnimplementedError();
  @override
  CapabilityStatementRest copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    RestfulCapabilityMode? mode,
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CapabilityStatementRest.fromYaml(dynamic yaml) => yaml is String
      ? CapabilityStatementRest.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CapabilityStatementRest.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CapabilityStatementRest cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CapabilityStatementRest.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CapabilityStatementRest.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [CapabilityStatementSecurity] /// Information about security implementation from an interface perspective -
/// what a client needs to know.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'CapabilityStatementSecurity');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [cors] /// Server adds CORS headers when responding to requests - this enables
  /// Javascript applications to use the server.
  @JsonKey(name: 'cors')
  final FhirBoolean? cors;
  @JsonKey(name: '_cors')
  final Element? corsElement;

  /// [service] /// Types of security services that are supported/required by the system.
  @JsonKey(name: 'service')
  final List<RestfulSecurityService>? service;

  /// [description] /// General description of how security works.
  @JsonKey(name: 'description')
  final FhirMarkdown? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;
  factory CapabilityStatementSecurity.fromJson(Map<String, dynamic> json) =>
      _$CapabilityStatementSecurityFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CapabilityStatementSecurityToJson(this);

  @override
  CapabilityStatementSecurity clone() => throw UnimplementedError();
  @override
  CapabilityStatementSecurity copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? cors,
    Element? corsElement,
    List<RestfulSecurityService>? service,
    FhirMarkdown? description,
    Element? descriptionElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CapabilityStatementSecurity.fromYaml(dynamic yaml) => yaml is String
      ? CapabilityStatementSecurity.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CapabilityStatementSecurity.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CapabilityStatementSecurity cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CapabilityStatementSecurity.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CapabilityStatementSecurity.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [CapabilityStatementResource] /// A specification of the restful capabilities of the solution for a specific
/// resource type.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'CapabilityStatementResource');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// A type of resource exposed via the restful interface.
  @JsonKey(name: 'type')
  final FhirCode type;
  @JsonKey(name: '_type')
  final Element? typeElement;

  /// [profile] /// A specification of the profile that describes the solution's overall
  /// support for the resource, including any constraints on cardinality,
  /// bindings, lengths or other limitations. See further discussion in [Using
  /// Profiles](profiling.html#profile-uses).
  @JsonKey(name: 'profile')
  final FhirCanonical? profile;
  @JsonKey(name: '_profile')
  final Element? profileElement;

  /// [supportedProfile] /// A list of profiles that represent different use cases supported by the
  /// system. For a server, "supported by the system" means the system
  /// hosts/produces a set of resources that are conformant to a particular
  /// profile, and allows clients that use its services to search using this
  /// profile and to find appropriate data. For a client, it means the system
  /// will search by this profile and process data according to the guidance
  /// implicit in the profile. See further discussion in [Using
  /// Profiles](profiling.html#profile-uses).
  @JsonKey(name: 'supportedProfile')
  final List<FhirCanonical>? supportedProfile;
  @JsonKey(name: '_supportedProfile')
  final List<Element>? supportedProfileElement;

  /// [documentation] /// Additional information about the resource type used by the system.
  @JsonKey(name: 'documentation')
  final FhirMarkdown? documentation;
  @JsonKey(name: '_documentation')
  final Element? documentationElement;

  /// [interaction] /// Identifies a restful operation supported by the solution.
  @JsonKey(name: 'interaction')
  final List<CapabilityStatementInteraction>? interaction;

  /// [versioning] /// This field is set to no-version to specify that the system does not support
  /// (server) or use (client) versioning for this resource type. If this has
  /// some other value, the server must at least correctly track and populate the
  /// versionId meta-property on resources. If the value is 'versioned-update',
  /// then the server supports all the versioning features, including using
  /// e-tags for version integrity in the API.
  @JsonKey(name: 'versioning')
  final ResourceVersionPolicy? versioning;
  @JsonKey(name: '_versioning')
  final Element? versioningElement;

  /// [readHistory] /// A flag for whether the server is able to return past versions as part of
  /// the vRead operation.
  @JsonKey(name: 'readHistory')
  final FhirBoolean? readHistory;
  @JsonKey(name: '_readHistory')
  final Element? readHistoryElement;

  /// [updateCreate] /// A flag to indicate that the server allows or needs to allow the client to
  /// create new identities on the server (that is, the client PUTs to a location
  /// where there is no existing resource). Allowing this operation means that
  /// the server allows the client to create new identities on the server.
  @JsonKey(name: 'updateCreate')
  final FhirBoolean? updateCreate;
  @JsonKey(name: '_updateCreate')
  final Element? updateCreateElement;

  /// [conditionalCreate] /// A flag that indicates that the server supports conditional create.
  @JsonKey(name: 'conditionalCreate')
  final FhirBoolean? conditionalCreate;
  @JsonKey(name: '_conditionalCreate')
  final Element? conditionalCreateElement;

  /// [conditionalRead] /// A code that indicates how the server supports conditional read.
  @JsonKey(name: 'conditionalRead')
  final ConditionalReadStatus? conditionalRead;
  @JsonKey(name: '_conditionalRead')
  final Element? conditionalReadElement;

  /// [conditionalUpdate] /// A flag that indicates that the server supports conditional update.
  @JsonKey(name: 'conditionalUpdate')
  final FhirBoolean? conditionalUpdate;
  @JsonKey(name: '_conditionalUpdate')
  final Element? conditionalUpdateElement;

  /// [conditionalDelete] /// A code that indicates how the server supports conditional delete.
  @JsonKey(name: 'conditionalDelete')
  final ConditionalDeleteStatus? conditionalDelete;
  @JsonKey(name: '_conditionalDelete')
  final Element? conditionalDeleteElement;

  /// [referencePolicy] /// A set of flags that defines how references are supported.
  @JsonKey(name: 'referencePolicy')
  final List<ReferenceHandlingPolicy>? referencePolicy;
  @JsonKey(name: '_referencePolicy')
  final List<Element>? referencePolicyElement;

  /// [searchInclude] /// A list of _include values supported by the server.
  @JsonKey(name: 'searchInclude')
  final List<FhirString>? searchInclude;
  @JsonKey(name: '_searchInclude')
  final List<Element>? searchIncludeElement;

  /// [searchRevInclude] /// A list of _revinclude (reverse include) values supported by the server.
  @JsonKey(name: 'searchRevInclude')
  final List<FhirString>? searchRevInclude;
  @JsonKey(name: '_searchRevInclude')
  final List<Element>? searchRevIncludeElement;

  /// [searchParam] /// Search parameters for implementations to support and/or make use of -
  /// either references to ones defined in the specification, or additional ones
  /// defined for/by the implementation.
  @JsonKey(name: 'searchParam')
  final List<CapabilityStatementSearchParam>? searchParam;

  /// [operation] /// Definition of an operation or a named query together with its parameters
  /// and their meaning and type. Consult the definition of the operation for
  /// details about how to invoke the operation, and the parameters.
  @JsonKey(name: 'operation')
  final List<CapabilityStatementOperation>? operation;
  factory CapabilityStatementResource.fromJson(Map<String, dynamic> json) =>
      _$CapabilityStatementResourceFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CapabilityStatementResourceToJson(this);

  @override
  CapabilityStatementResource clone() => throw UnimplementedError();
  @override
  CapabilityStatementResource copyWith({
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
    ResourceVersionPolicy? versioning,
    Element? versioningElement,
    FhirBoolean? readHistory,
    Element? readHistoryElement,
    FhirBoolean? updateCreate,
    Element? updateCreateElement,
    FhirBoolean? conditionalCreate,
    Element? conditionalCreateElement,
    ConditionalReadStatus? conditionalRead,
    Element? conditionalReadElement,
    FhirBoolean? conditionalUpdate,
    Element? conditionalUpdateElement,
    ConditionalDeleteStatus? conditionalDelete,
    Element? conditionalDeleteElement,
    List<ReferenceHandlingPolicy>? referencePolicy,
    List<Element>? referencePolicyElement,
    List<FhirString>? searchInclude,
    List<Element>? searchIncludeElement,
    List<FhirString>? searchRevInclude,
    List<Element>? searchRevIncludeElement,
    List<CapabilityStatementSearchParam>? searchParam,
    List<CapabilityStatementOperation>? operation,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CapabilityStatementResource.fromYaml(dynamic yaml) => yaml is String
      ? CapabilityStatementResource.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CapabilityStatementResource.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CapabilityStatementResource cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CapabilityStatementResource.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CapabilityStatementResource.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [CapabilityStatementInteraction] /// Identifies a restful operation supported by the solution.
@JsonSerializable()
class CapabilityStatementInteraction extends BackboneElement {
  CapabilityStatementInteraction({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.codeElement,
    this.documentation,
    this.documentationElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'CapabilityStatementInteraction');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// Coded identifier of the operation, supported by the system resource.
  @JsonKey(name: 'code')
  final TypeRestfulInteraction code;
  @JsonKey(name: '_code')
  final Element? codeElement;

  /// [documentation] /// Guidance specific to the implementation of this operation, such as 'delete
  /// is a logical delete' or 'updates are only allowed with version id' or
  /// 'creates permitted from pre-authorized certificates only'.
  @JsonKey(name: 'documentation')
  final FhirMarkdown? documentation;
  @JsonKey(name: '_documentation')
  final Element? documentationElement;
  factory CapabilityStatementInteraction.fromJson(Map<String, dynamic> json) =>
      _$CapabilityStatementInteractionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CapabilityStatementInteractionToJson(this);

  @override
  CapabilityStatementInteraction clone() => throw UnimplementedError();
  @override
  CapabilityStatementInteraction copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    TypeRestfulInteraction? code,
    Element? codeElement,
    FhirMarkdown? documentation,
    Element? documentationElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CapabilityStatementInteraction(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      codeElement: codeElement ?? this.codeElement,
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

  factory CapabilityStatementInteraction.fromYaml(dynamic yaml) => yaml
          is String
      ? CapabilityStatementInteraction.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CapabilityStatementInteraction.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CapabilityStatementInteraction cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CapabilityStatementInteraction.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CapabilityStatementInteraction.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [CapabilityStatementSearchParam] /// Search parameters for implementations to support and/or make use of -
/// either references to ones defined in the specification, or additional ones
/// defined for/by the implementation.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'CapabilityStatementSearchParam');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [name] /// The name of the search parameter used in the interface.
  @JsonKey(name: 'name')
  final FhirString name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [definition] /// An absolute URI that is a formal reference to where this parameter was
  /// first defined, so that a client can be confident of the meaning of the
  /// search parameter (a reference to
  /// [SearchParameter.url](searchparameter-definitions.html#SearchParameter.url)).
  /// This element SHALL be populated if the search parameter refers to a
  /// SearchParameter defined by the FHIR core specification or externally
  /// defined IGs.
  @JsonKey(name: 'definition')
  final FhirCanonical? definition;
  @JsonKey(name: '_definition')
  final Element? definitionElement;

  /// [type] /// The type of value a search parameter refers to, and how the content is
  /// interpreted.
  @JsonKey(name: 'type')
  final SearchParamType type;
  @JsonKey(name: '_type')
  final Element? typeElement;

  /// [documentation] /// This allows documentation of any distinct behaviors about how the search
  /// parameter is used. For example, text matching algorithms.
  @JsonKey(name: 'documentation')
  final FhirMarkdown? documentation;
  @JsonKey(name: '_documentation')
  final Element? documentationElement;
  factory CapabilityStatementSearchParam.fromJson(Map<String, dynamic> json) =>
      _$CapabilityStatementSearchParamFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CapabilityStatementSearchParamToJson(this);

  @override
  CapabilityStatementSearchParam clone() => throw UnimplementedError();
  @override
  CapabilityStatementSearchParam copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    Element? nameElement,
    FhirCanonical? definition,
    Element? definitionElement,
    SearchParamType? type,
    Element? typeElement,
    FhirMarkdown? documentation,
    Element? documentationElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CapabilityStatementSearchParam.fromYaml(dynamic yaml) => yaml
          is String
      ? CapabilityStatementSearchParam.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CapabilityStatementSearchParam.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CapabilityStatementSearchParam cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CapabilityStatementSearchParam.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CapabilityStatementSearchParam.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [CapabilityStatementOperation] /// Definition of an operation or a named query together with its parameters
/// and their meaning and type. Consult the definition of the operation for
/// details about how to invoke the operation, and the parameters.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'CapabilityStatementOperation');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [name] /// The name of the operation or query. For an operation, this is the name
  /// prefixed with $ and used in the URL. For a query, this is the name used in
  /// the _query parameter when the query is called.
  @JsonKey(name: 'name')
  final FhirString name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [definition] /// Where the formal definition can be found. If a server references the base
  /// definition of an Operation (i.e. from the specification itself such as
  /// ```http://hl7.org/fhir/OperationDefinition/ValueSet-expand```), that means
  /// it supports the full capabilities of the operation - e.g. both GET and POST
  /// invocation. If it only supports a subset, it must define its own custom
  /// [OperationDefinition](operationdefinition.html#) with a 'base' of the
  /// original OperationDefinition. The custom definition would describe the
  /// specific subset of functionality supported.
  @JsonKey(name: 'definition')
  final FhirCanonical definition;
  @JsonKey(name: '_definition')
  final Element? definitionElement;

  /// [documentation] /// Documentation that describes anything special about the operation behavior,
  /// possibly detailing different behavior for system, type and instance-level
  /// invocation of the operation.
  @JsonKey(name: 'documentation')
  final FhirMarkdown? documentation;
  @JsonKey(name: '_documentation')
  final Element? documentationElement;
  factory CapabilityStatementOperation.fromJson(Map<String, dynamic> json) =>
      _$CapabilityStatementOperationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CapabilityStatementOperationToJson(this);

  @override
  CapabilityStatementOperation clone() => throw UnimplementedError();
  @override
  CapabilityStatementOperation copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    Element? nameElement,
    FhirCanonical? definition,
    Element? definitionElement,
    FhirMarkdown? documentation,
    Element? documentationElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CapabilityStatementOperation.fromYaml(dynamic yaml) => yaml is String
      ? CapabilityStatementOperation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CapabilityStatementOperation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CapabilityStatementOperation cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CapabilityStatementOperation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CapabilityStatementOperation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [CapabilityStatementInteraction1] /// A specification of restful operations supported by the system.
@JsonSerializable()
class CapabilityStatementInteraction1 extends BackboneElement {
  CapabilityStatementInteraction1({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.codeElement,
    this.documentation,
    this.documentationElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'CapabilityStatementInteraction1');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// A coded identifier of the operation, supported by the system.
  @JsonKey(name: 'code')
  final SystemRestfulInteraction code;
  @JsonKey(name: '_code')
  final Element? codeElement;

  /// [documentation] /// Guidance specific to the implementation of this operation, such as
  /// limitations on the kind of transactions allowed, or information about
  /// system wide search is implemented.
  @JsonKey(name: 'documentation')
  final FhirMarkdown? documentation;
  @JsonKey(name: '_documentation')
  final Element? documentationElement;
  factory CapabilityStatementInteraction1.fromJson(Map<String, dynamic> json) =>
      _$CapabilityStatementInteraction1FromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$CapabilityStatementInteraction1ToJson(this);

  @override
  CapabilityStatementInteraction1 clone() => throw UnimplementedError();
  @override
  CapabilityStatementInteraction1 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    SystemRestfulInteraction? code,
    Element? codeElement,
    FhirMarkdown? documentation,
    Element? documentationElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CapabilityStatementInteraction1(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      codeElement: codeElement ?? this.codeElement,
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

  factory CapabilityStatementInteraction1.fromYaml(dynamic yaml) => yaml
          is String
      ? CapabilityStatementInteraction1.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CapabilityStatementInteraction1.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CapabilityStatementInteraction1 cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CapabilityStatementInteraction1.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CapabilityStatementInteraction1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [CapabilityStatementMessaging] /// A description of the messaging capabilities of the solution.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'CapabilityStatementMessaging');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [endpoint] /// An endpoint (network accessible address) to which messages and/or replies
  /// are to be sent.
  @JsonKey(name: 'endpoint')
  final List<CapabilityStatementEndpoint>? endpoint;

  /// [reliableCache] /// Length if the receiver's reliable messaging cache in minutes (if a
  /// receiver) or how long the cache length on the receiver should be (if a
  /// sender).
  @JsonKey(name: 'reliableCache')
  final FhirUnsignedInt? reliableCache;
  @JsonKey(name: '_reliableCache')
  final Element? reliableCacheElement;

  /// [documentation] /// Documentation about the system's messaging capabilities for this endpoint
  /// not otherwise documented by the capability statement. For example, the
  /// process for becoming an authorized messaging exchange partner.
  @JsonKey(name: 'documentation')
  final FhirMarkdown? documentation;
  @JsonKey(name: '_documentation')
  final Element? documentationElement;

  /// [supportedMessage] /// References to message definitions for messages this system can send or
  /// receive.
  @JsonKey(name: 'supportedMessage')
  final List<CapabilityStatementSupportedMessage>? supportedMessage;
  factory CapabilityStatementMessaging.fromJson(Map<String, dynamic> json) =>
      _$CapabilityStatementMessagingFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CapabilityStatementMessagingToJson(this);

  @override
  CapabilityStatementMessaging clone() => throw UnimplementedError();
  @override
  CapabilityStatementMessaging copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CapabilityStatementEndpoint>? endpoint,
    FhirUnsignedInt? reliableCache,
    Element? reliableCacheElement,
    FhirMarkdown? documentation,
    Element? documentationElement,
    List<CapabilityStatementSupportedMessage>? supportedMessage,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CapabilityStatementMessaging.fromYaml(dynamic yaml) => yaml is String
      ? CapabilityStatementMessaging.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CapabilityStatementMessaging.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CapabilityStatementMessaging cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CapabilityStatementMessaging.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CapabilityStatementMessaging.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [CapabilityStatementEndpoint] /// An endpoint (network accessible address) to which messages and/or replies
/// are to be sent.
@JsonSerializable()
class CapabilityStatementEndpoint extends BackboneElement {
  CapabilityStatementEndpoint({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.protocol,
    required this.address,
    this.addressElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'CapabilityStatementEndpoint');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [protocol] /// A list of the messaging transport protocol(s) identifiers, supported by
  /// this endpoint.
  @JsonKey(name: 'protocol')
  final MessageTransport protocol;

  /// [address] /// The network address of the endpoint. For solutions that do not use network
  /// addresses for routing, it can be just an identifier.
  @JsonKey(name: 'address')
  final FhirUrl address;
  @JsonKey(name: '_address')
  final Element? addressElement;
  factory CapabilityStatementEndpoint.fromJson(Map<String, dynamic> json) =>
      _$CapabilityStatementEndpointFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CapabilityStatementEndpointToJson(this);

  @override
  CapabilityStatementEndpoint clone() => throw UnimplementedError();
  @override
  CapabilityStatementEndpoint copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    MessageTransport? protocol,
    FhirUrl? address,
    Element? addressElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CapabilityStatementEndpoint(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      protocol: protocol ?? this.protocol,
      address: address ?? this.address,
      addressElement: addressElement ?? this.addressElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CapabilityStatementEndpoint.fromYaml(dynamic yaml) => yaml is String
      ? CapabilityStatementEndpoint.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CapabilityStatementEndpoint.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CapabilityStatementEndpoint cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CapabilityStatementEndpoint.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CapabilityStatementEndpoint.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [CapabilityStatementSupportedMessage] /// References to message definitions for messages this system can send or
/// receive.
@JsonSerializable()
class CapabilityStatementSupportedMessage extends BackboneElement {
  CapabilityStatementSupportedMessage({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.mode,
    this.modeElement,
    required this.definition,
    this.definitionElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'CapabilityStatementSupportedMessage');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [mode] /// The mode of this event declaration - whether application is sender or
  /// receiver.
  @JsonKey(name: 'mode')
  final EventCapabilityMode mode;
  @JsonKey(name: '_mode')
  final Element? modeElement;

  /// [definition] /// Points to a message definition that identifies the messaging event, message
  /// structure, allowed responses, etc.
  @JsonKey(name: 'definition')
  final FhirCanonical definition;
  @JsonKey(name: '_definition')
  final Element? definitionElement;
  factory CapabilityStatementSupportedMessage.fromJson(
          Map<String, dynamic> json) =>
      _$CapabilityStatementSupportedMessageFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$CapabilityStatementSupportedMessageToJson(this);

  @override
  CapabilityStatementSupportedMessage clone() => throw UnimplementedError();
  @override
  CapabilityStatementSupportedMessage copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    EventCapabilityMode? mode,
    Element? modeElement,
    FhirCanonical? definition,
    Element? definitionElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CapabilityStatementSupportedMessage(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      mode: mode ?? this.mode,
      modeElement: modeElement ?? this.modeElement,
      definition: definition ?? this.definition,
      definitionElement: definitionElement ?? this.definitionElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CapabilityStatementSupportedMessage.fromYaml(dynamic yaml) => yaml
          is String
      ? CapabilityStatementSupportedMessage.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CapabilityStatementSupportedMessage.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CapabilityStatementSupportedMessage cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CapabilityStatementSupportedMessage.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CapabilityStatementSupportedMessage.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [CapabilityStatementDocument] /// A document definition.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'CapabilityStatementDocument');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [mode] /// Mode of this document declaration - whether an application is a producer or
  /// consumer.
  @JsonKey(name: 'mode')
  final DocumentMode mode;
  @JsonKey(name: '_mode')
  final Element? modeElement;

  /// [documentation] /// A description of how the application supports or uses the specified
  /// document profile. For example, when documents are created, what action is
  /// taken with consumed documents, etc.
  @JsonKey(name: 'documentation')
  final FhirMarkdown? documentation;
  @JsonKey(name: '_documentation')
  final Element? documentationElement;

  /// [profile] /// A profile on the document Bundle that constrains which resources are
  /// present, and their contents.
  @JsonKey(name: 'profile')
  final FhirCanonical profile;
  @JsonKey(name: '_profile')
  final Element? profileElement;
  factory CapabilityStatementDocument.fromJson(Map<String, dynamic> json) =>
      _$CapabilityStatementDocumentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CapabilityStatementDocumentToJson(this);

  @override
  CapabilityStatementDocument clone() => throw UnimplementedError();
  @override
  CapabilityStatementDocument copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    DocumentMode? mode,
    Element? modeElement,
    FhirMarkdown? documentation,
    Element? documentationElement,
    FhirCanonical? profile,
    Element? profileElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CapabilityStatementDocument.fromYaml(dynamic yaml) => yaml is String
      ? CapabilityStatementDocument.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CapabilityStatementDocument.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CapabilityStatementDocument cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CapabilityStatementDocument.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CapabilityStatementDocument.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
