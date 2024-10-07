import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [TerminologyCapabilities] /// A TerminologyCapabilities resource documents a set of capabilities
/// (behaviors) of a FHIR Terminology Server that may be used as a statement of
/// actual server functionality or a statement of required or desired server
/// implementation.
class TerminologyCapabilities extends DomainResource {
  TerminologyCapabilities({
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
    this.software,
    this.implementation,
    this.lockedDate,
    this.lockedDateElement,
    this.codeSystem,
    this.expansion,
    this.codeSearch,
    this.codeSearchElement,
    this.validateCode,
    this.translation,
    this.closure,
  }) : super(resourceType: R4ResourceType.TerminologyCapabilities);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [url] /// An absolute URI that is used to identify this terminology capabilities when
  /// it is referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and SHOULD
  /// be a literal address at which at which an authoritative instance of this
  /// terminology capabilities is (or will be) published. This URL can be the
  /// target of a canonical reference. It SHALL remain the same when the
  /// terminology capabilities is stored on different servers.
  final FhirUri? url;
  final Element? urlElement;

  /// [version] /// The identifier that is used to identify this version of the terminology
  /// capabilities when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the terminology
  /// capabilities author and is not expected to be globally unique. For example,
  /// it might be a timestamp (e.g. yyyymmdd) if a managed version is not
  /// available. There is also no expectation that versions can be placed in a
  /// lexicographical sequence.
  final FhirString? version;
  final Element? versionElement;

  /// [name] /// A natural language name identifying the terminology capabilities. This name
  /// should be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString? name;
  final Element? nameElement;

  /// [title] /// A short, descriptive, user-friendly title for the terminology capabilities.
  final FhirString? title;
  final Element? titleElement;

  /// [status] /// The status of this terminology capabilities. Enables tracking the
  /// life-cycle of the content.
  final FhirCode status;
  final Element? statusElement;

  /// [experimental] /// A Boolean value to indicate that this terminology capabilities is authored
  /// for testing purposes (or education/evaluation/marketing) and is not
  /// intended to be used for genuine usage.
  final FhirBoolean? experimental;
  final Element? experimentalElement;

  /// [date] /// The date (and optionally time) when the terminology capabilities was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  /// the substantive content of the terminology capabilities changes.
  final FhirDateTime date;
  final Element? dateElement;

  /// [publisher] /// The name of the organization or individual that published the terminology
  /// capabilities.
  final FhirString? publisher;
  final Element? publisherElement;

  /// [contact] /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [description] /// A free text natural language description of the terminology capabilities
  /// from a consumer's perspective. Typically, this is used when the capability
  /// statement describes a desired rather than an actual solution, for example
  /// as a formal expression of requirements as part of an RFP.
  final FhirMarkdown? description;
  final Element? descriptionElement;

  /// [useContext] /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories (gender,
  /// age, ...) or may be references to specific programs (insurance plans,
  /// studies, ...) and may be used to assist with indexing and searching for
  /// appropriate terminology capabilities instances.
  final List<UsageContext>? useContext;

  /// [jurisdiction] /// A legal or geographic region in which the terminology capabilities is
  /// intended to be used.
  final List<CodeableConcept>? jurisdiction;

  /// [purpose] /// Explanation of why this terminology capabilities is needed and why it has
  /// been designed as it has.
  final FhirMarkdown? purpose;
  final Element? purposeElement;

  /// [copyright] /// A copyright statement relating to the terminology capabilities and/or its
  /// contents. Copyright statements are generally legal restrictions on the use
  /// and publishing of the terminology capabilities.
  final FhirMarkdown? copyright;
  final Element? copyrightElement;

  /// [kind] /// The way that this statement is intended to be used, to describe an actual
  /// running instance of software, a particular product (kind, not instance of
  /// software) or a class of implementation (e.g. a desired purchase).
  final FhirCode kind;
  final Element? kindElement;

  /// [software] /// Software that is covered by this terminology capability statement. It is
  /// used when the statement describes the capabilities of a particular software
  /// version, independent of an installation.
  final TerminologyCapabilitiesSoftware? software;

  /// [implementation] /// Identifies a specific implementation instance that is described by the
  /// terminology capability statement - i.e. a particular installation, rather
  /// than the capabilities of a software program.
  final TerminologyCapabilitiesImplementation? implementation;

  /// [lockedDate] /// Whether the server supports lockedDate.
  final FhirBoolean? lockedDate;
  final Element? lockedDateElement;

  /// [codeSystem] /// Identifies a code system that is supported by the server. If there is a no
  /// code system URL, then this declares the general assumptions a client can
  /// make about support for any CodeSystem resource.
  final List<TerminologyCapabilitiesCodeSystem>? codeSystem;

  /// [expansion] /// Information about the [ValueSet/$expand](valueset-operation-expand.html)
  /// operation.
  final TerminologyCapabilitiesExpansion? expansion;

  /// [codeSearch] /// The degree to which the server supports the code search parameter on
  /// ValueSet, if it is supported.
  final FhirCode? codeSearch;
  final Element? codeSearchElement;

  /// [validateCode] /// Information about the
  /// [ValueSet/$validate-code](valueset-operation-validate-code.html) operation.
  final TerminologyCapabilitiesValidateCode? validateCode;

  /// [translation] /// Information about the
  /// [ConceptMap/$translate](conceptmap-operation-translate.html) operation.
  final TerminologyCapabilitiesTranslation? translation;

  /// [closure] /// Whether the $closure operation is supported.
  final TerminologyCapabilitiesClosure? closure;
  @override
  TerminologyCapabilities clone() => throw UnimplementedError();
  TerminologyCapabilities copy({
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
    TerminologyCapabilitiesSoftware? software,
    TerminologyCapabilitiesImplementation? implementation,
    FhirBoolean? lockedDate,
    Element? lockedDateElement,
    List<TerminologyCapabilitiesCodeSystem>? codeSystem,
    TerminologyCapabilitiesExpansion? expansion,
    FhirCode? codeSearch,
    Element? codeSearchElement,
    TerminologyCapabilitiesValidateCode? validateCode,
    TerminologyCapabilitiesTranslation? translation,
    TerminologyCapabilitiesClosure? closure,
  }) {
    return TerminologyCapabilities(
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
      software: software ?? this.software,
      implementation: implementation ?? this.implementation,
      lockedDate: lockedDate ?? this.lockedDate,
      lockedDateElement: lockedDateElement ?? this.lockedDateElement,
      codeSystem: codeSystem ?? this.codeSystem,
      expansion: expansion ?? this.expansion,
      codeSearch: codeSearch ?? this.codeSearch,
      codeSearchElement: codeSearchElement ?? this.codeSearchElement,
      validateCode: validateCode ?? this.validateCode,
      translation: translation ?? this.translation,
      closure: closure ?? this.closure,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [TerminologyCapabilitiesSoftware] /// Software that is covered by this terminology capability statement. It is
/// used when the statement describes the capabilities of a particular software
/// version, independent of an installation.
class TerminologyCapabilitiesSoftware extends BackboneElement {
  TerminologyCapabilitiesSoftware({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.nameElement,
    this.version,
    this.versionElement,
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
  @override
  TerminologyCapabilitiesSoftware clone() => throw UnimplementedError();
  TerminologyCapabilitiesSoftware copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    Element? nameElement,
    FhirString? version,
    Element? versionElement,
  }) {
    return TerminologyCapabilitiesSoftware(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      version: version ?? this.version,
      versionElement: versionElement ?? this.versionElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [TerminologyCapabilitiesImplementation] /// Identifies a specific implementation instance that is described by the
/// terminology capability statement - i.e. a particular installation, rather
/// than the capabilities of a software program.
class TerminologyCapabilitiesImplementation extends BackboneElement {
  TerminologyCapabilitiesImplementation({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.description,
    this.descriptionElement,
    this.url,
    this.urlElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [description] /// Information about the specific installation that this terminology
  /// capability statement relates to.
  final FhirString description;
  final Element? descriptionElement;

  /// [url] /// An absolute base URL for the implementation.
  final FhirUrl? url;
  final Element? urlElement;
  @override
  TerminologyCapabilitiesImplementation clone() => throw UnimplementedError();
  TerminologyCapabilitiesImplementation copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    Element? descriptionElement,
    FhirUrl? url,
    Element? urlElement,
  }) {
    return TerminologyCapabilitiesImplementation(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      url: url ?? this.url,
      urlElement: urlElement ?? this.urlElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [TerminologyCapabilitiesCodeSystem] /// Identifies a code system that is supported by the server. If there is a no
/// code system URL, then this declares the general assumptions a client can
/// make about support for any CodeSystem resource.
class TerminologyCapabilitiesCodeSystem extends BackboneElement {
  TerminologyCapabilitiesCodeSystem({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.uri,
    this.uriElement,
    this.version,
    this.subsumption,
    this.subsumptionElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [uri] /// URI for the Code System.
  final FhirCanonical? uri;
  final Element? uriElement;

  /// [version] /// For the code system, a list of versions that are supported by the server.
  final List<TerminologyCapabilitiesVersion>? version;

  /// [subsumption] /// True if subsumption is supported for this version of the code system.
  final FhirBoolean? subsumption;
  final Element? subsumptionElement;
  @override
  TerminologyCapabilitiesCodeSystem clone() => throw UnimplementedError();
  TerminologyCapabilitiesCodeSystem copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCanonical? uri,
    Element? uriElement,
    List<TerminologyCapabilitiesVersion>? version,
    FhirBoolean? subsumption,
    Element? subsumptionElement,
  }) {
    return TerminologyCapabilitiesCodeSystem(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      uri: uri ?? this.uri,
      uriElement: uriElement ?? this.uriElement,
      version: version ?? this.version,
      subsumption: subsumption ?? this.subsumption,
      subsumptionElement: subsumptionElement ?? this.subsumptionElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [TerminologyCapabilitiesVersion] /// For the code system, a list of versions that are supported by the server.
class TerminologyCapabilitiesVersion extends BackboneElement {
  TerminologyCapabilitiesVersion({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.codeElement,
    this.isDefault,
    this.isDefaultElement,
    this.compositional,
    this.compositionalElement,
    this.language,
    this.languageElement,
    this.filter,
    this.property,
    this.propertyElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// For version-less code systems, there should be a single version with no
  /// identifier.
  final FhirString? code;
  final Element? codeElement;

  /// [isDefault] /// If this is the default version for this code system.
  final FhirBoolean? isDefault;
  final Element? isDefaultElement;

  /// [compositional] /// If the compositional grammar defined by the code system is supported.
  final FhirBoolean? compositional;
  final Element? compositionalElement;

  /// [language] /// Language Displays supported.
  final List<FhirCode>? language;
  final List<Element>? languageElement;

  /// [filter] /// Filter Properties supported.
  final List<TerminologyCapabilitiesFilter>? filter;

  /// [property] /// Properties supported for $lookup.
  final List<FhirCode>? property;
  final List<Element>? propertyElement;
  @override
  TerminologyCapabilitiesVersion clone() => throw UnimplementedError();
  TerminologyCapabilitiesVersion copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? code,
    Element? codeElement,
    FhirBoolean? isDefault,
    Element? isDefaultElement,
    FhirBoolean? compositional,
    Element? compositionalElement,
    List<FhirCode>? language,
    List<Element>? languageElement,
    List<TerminologyCapabilitiesFilter>? filter,
    List<FhirCode>? property,
    List<Element>? propertyElement,
  }) {
    return TerminologyCapabilitiesVersion(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      codeElement: codeElement ?? this.codeElement,
      isDefault: isDefault ?? this.isDefault,
      isDefaultElement: isDefaultElement ?? this.isDefaultElement,
      compositional: compositional ?? this.compositional,
      compositionalElement: compositionalElement ?? this.compositionalElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      filter: filter ?? this.filter,
      property: property ?? this.property,
      propertyElement: propertyElement ?? this.propertyElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [TerminologyCapabilitiesFilter] /// Filter Properties supported.
class TerminologyCapabilitiesFilter extends BackboneElement {
  TerminologyCapabilitiesFilter({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.codeElement,
    required this.op,
    this.opElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// Code of the property supported.
  final FhirCode code;
  final Element? codeElement;

  /// [op] /// Operations supported for the property.
  final List<FhirCode> op;
  final List<Element>? opElement;
  @override
  TerminologyCapabilitiesFilter clone() => throw UnimplementedError();
  TerminologyCapabilitiesFilter copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    Element? codeElement,
    List<FhirCode>? op,
    List<Element>? opElement,
  }) {
    return TerminologyCapabilitiesFilter(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      codeElement: codeElement ?? this.codeElement,
      op: op ?? this.op,
      opElement: opElement ?? this.opElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [TerminologyCapabilitiesExpansion] /// Information about the [ValueSet/$expand](valueset-operation-expand.html)
/// operation.
class TerminologyCapabilitiesExpansion extends BackboneElement {
  TerminologyCapabilitiesExpansion({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.hierarchical,
    this.hierarchicalElement,
    this.paging,
    this.pagingElement,
    this.incomplete,
    this.incompleteElement,
    this.parameter,
    this.textFilter,
    this.textFilterElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [hierarchical] /// Whether the server can return nested value sets.
  final FhirBoolean? hierarchical;
  final Element? hierarchicalElement;

  /// [paging] /// Whether the server supports paging on expansion.
  final FhirBoolean? paging;
  final Element? pagingElement;

  /// [incomplete] /// Allow request for incomplete expansions?
  final FhirBoolean? incomplete;
  final Element? incompleteElement;

  /// [parameter] /// Supported expansion parameter.
  final List<TerminologyCapabilitiesParameter>? parameter;

  /// [textFilter] /// Documentation about text searching works.
  final FhirMarkdown? textFilter;
  final Element? textFilterElement;
  @override
  TerminologyCapabilitiesExpansion clone() => throw UnimplementedError();
  TerminologyCapabilitiesExpansion copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? hierarchical,
    Element? hierarchicalElement,
    FhirBoolean? paging,
    Element? pagingElement,
    FhirBoolean? incomplete,
    Element? incompleteElement,
    List<TerminologyCapabilitiesParameter>? parameter,
    FhirMarkdown? textFilter,
    Element? textFilterElement,
  }) {
    return TerminologyCapabilitiesExpansion(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      hierarchical: hierarchical ?? this.hierarchical,
      hierarchicalElement: hierarchicalElement ?? this.hierarchicalElement,
      paging: paging ?? this.paging,
      pagingElement: pagingElement ?? this.pagingElement,
      incomplete: incomplete ?? this.incomplete,
      incompleteElement: incompleteElement ?? this.incompleteElement,
      parameter: parameter ?? this.parameter,
      textFilter: textFilter ?? this.textFilter,
      textFilterElement: textFilterElement ?? this.textFilterElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [TerminologyCapabilitiesParameter] /// Supported expansion parameter.
class TerminologyCapabilitiesParameter extends BackboneElement {
  TerminologyCapabilitiesParameter({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.nameElement,
    this.documentation,
    this.documentationElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [name] /// Expansion Parameter name.
  final FhirCode name;
  final Element? nameElement;

  /// [documentation] /// Description of support for parameter.
  final FhirString? documentation;
  final Element? documentationElement;
  @override
  TerminologyCapabilitiesParameter clone() => throw UnimplementedError();
  TerminologyCapabilitiesParameter copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? name,
    Element? nameElement,
    FhirString? documentation,
    Element? documentationElement,
  }) {
    return TerminologyCapabilitiesParameter(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      documentation: documentation ?? this.documentation,
      documentationElement: documentationElement ?? this.documentationElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [TerminologyCapabilitiesValidateCode] /// Information about the
/// [ValueSet/$validate-code](valueset-operation-validate-code.html) operation.
class TerminologyCapabilitiesValidateCode extends BackboneElement {
  TerminologyCapabilitiesValidateCode({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.translations,
    this.translationsElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [translations] /// Whether translations are validated.
  final FhirBoolean translations;
  final Element? translationsElement;
  @override
  TerminologyCapabilitiesValidateCode clone() => throw UnimplementedError();
  TerminologyCapabilitiesValidateCode copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? translations,
    Element? translationsElement,
  }) {
    return TerminologyCapabilitiesValidateCode(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      translations: translations ?? this.translations,
      translationsElement: translationsElement ?? this.translationsElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [TerminologyCapabilitiesTranslation] /// Information about the
/// [ConceptMap/$translate](conceptmap-operation-translate.html) operation.
class TerminologyCapabilitiesTranslation extends BackboneElement {
  TerminologyCapabilitiesTranslation({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.needsMap,
    this.needsMapElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [needsMap] /// Whether the client must identify the map.
  final FhirBoolean needsMap;
  final Element? needsMapElement;
  @override
  TerminologyCapabilitiesTranslation clone() => throw UnimplementedError();
  TerminologyCapabilitiesTranslation copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? needsMap,
    Element? needsMapElement,
  }) {
    return TerminologyCapabilitiesTranslation(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      needsMap: needsMap ?? this.needsMap,
      needsMapElement: needsMapElement ?? this.needsMapElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [TerminologyCapabilitiesClosure] /// Whether the $closure operation is supported.
class TerminologyCapabilitiesClosure extends BackboneElement {
  TerminologyCapabilitiesClosure({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.translation,
    this.translationElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [translation] /// If cross-system closure is supported.
  final FhirBoolean? translation;
  final Element? translationElement;
  @override
  TerminologyCapabilitiesClosure clone() => throw UnimplementedError();
  TerminologyCapabilitiesClosure copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? translation,
    Element? translationElement,
  }) {
    return TerminologyCapabilitiesClosure(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      translation: translation ?? this.translation,
      translationElement: translationElement ?? this.translationElement,
    );
  }
}
