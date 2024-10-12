import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [TerminologyCapabilities]
/// A TerminologyCapabilities resource documents a set of capabilities
/// (behaviors) of a FHIR Terminology Server that may be used as a
/// statement of actual server functionality or a statement of required or
/// desired server implementation.
class TerminologyCapabilities extends DomainResource {
  /// Primary constructor for [TerminologyCapabilities]

  TerminologyCapabilities({
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
    required this.date,

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
    required this.kind,

    /// Extensions for [kind]
    this.kindElement,
    this.software,
    this.implementation,
    this.lockedDate,

    /// Extensions for [lockedDate]
    this.lockedDateElement,
    this.codeSystem,
    this.expansion,
    this.codeSearch,

    /// Extensions for [codeSearch]
    this.codeSearchElement,
    this.validateCode,
    this.translation,
    this.closure,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.TerminologyCapabilities,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TerminologyCapabilities.fromJson(Map<String, dynamic> json) {
    return TerminologyCapabilities(
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
      date: FhirDateTime.fromJson(json['date']),
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
      kind: CapabilityStatementKind.fromJson(json['kind']),
      kindElement: json['_kind'] != null
          ? Element.fromJson(
              json['_kind'] as Map<String, dynamic>,
            )
          : null,
      software: json['software'] != null
          ? TerminologyCapabilitiesSoftware.fromJson(
              json['software'] as Map<String, dynamic>,
            )
          : null,
      implementation: json['implementation'] != null
          ? TerminologyCapabilitiesImplementation.fromJson(
              json['implementation'] as Map<String, dynamic>,
            )
          : null,
      lockedDate: json['lockedDate'] != null
          ? FhirBoolean.fromJson(json['lockedDate'])
          : null,
      lockedDateElement: json['_lockedDate'] != null
          ? Element.fromJson(
              json['_lockedDate'] as Map<String, dynamic>,
            )
          : null,
      codeSystem: json['codeSystem'] != null
          ? (json['codeSystem'] as List<dynamic>)
              .map<TerminologyCapabilitiesCodeSystem>(
                (dynamic v) => TerminologyCapabilitiesCodeSystem.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      expansion: json['expansion'] != null
          ? TerminologyCapabilitiesExpansion.fromJson(
              json['expansion'] as Map<String, dynamic>,
            )
          : null,
      codeSearch: json['codeSearch'] != null
          ? CodeSearchSupport.fromJson(json['codeSearch'])
          : null,
      codeSearchElement: json['_codeSearch'] != null
          ? Element.fromJson(
              json['_codeSearch'] as Map<String, dynamic>,
            )
          : null,
      validateCode: json['validateCode'] != null
          ? TerminologyCapabilitiesValidateCode.fromJson(
              json['validateCode'] as Map<String, dynamic>,
            )
          : null,
      translation: json['translation'] != null
          ? TerminologyCapabilitiesTranslation.fromJson(
              json['translation'] as Map<String, dynamic>,
            )
          : null,
      closure: json['closure'] != null
          ? TerminologyCapabilitiesClosure.fromJson(
              json['closure'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [TerminologyCapabilities] from a [String] or [YamlMap] object
  factory TerminologyCapabilities.fromYaml(dynamic yaml) => yaml is String
      ? TerminologyCapabilities.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? TerminologyCapabilities.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'TerminologyCapabilities cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [TerminologyCapabilities] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TerminologyCapabilities.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TerminologyCapabilities.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TerminologyCapabilities';

  /// [url]
  /// An absolute URI that is used to identify this terminology capabilities
  /// when it is referenced in a specification, model, design or an instance;
  /// also called its canonical identifier. This SHOULD be globally unique
  /// and SHOULD be a literal address at which at which an authoritative
  /// instance of this terminology capabilities is (or will be) published.
  /// This URL can be the target of a canonical reference. It SHALL remain
  /// the same when the terminology capabilities is stored on different
  /// servers.
  final FhirUri? url;

  /// Extensions for [url]
  final Element? urlElement;

  /// [version]
  /// The identifier that is used to identify this version of the terminology
  /// capabilities when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the terminology
  /// capabilities author and is not expected to be globally unique. For
  /// example, it might be a timestamp (e.g. yyyymmdd) if a managed version
  /// is not available. There is also no expectation that versions can be
  /// placed in a lexicographical sequence.
  final FhirString? version;

  /// Extensions for [version]
  final Element? versionElement;

  /// [name]
  /// A natural language name identifying the terminology capabilities. This
  /// name should be usable as an identifier for the module by machine
  /// processing applications such as code generation.
  final FhirString? name;

  /// Extensions for [name]
  final Element? nameElement;

  /// [title]
  /// A short, descriptive, user-friendly title for the terminology
  /// capabilities.
  final FhirString? title;

  /// Extensions for [title]
  final Element? titleElement;

  /// [status]
  /// The status of this terminology capabilities. Enables tracking the
  /// life-cycle of the content.
  final PublicationStatus status;

  /// Extensions for [status]
  final Element? statusElement;

  /// [experimental]
  /// A Boolean value to indicate that this terminology capabilities is
  /// authored for testing purposes (or education/evaluation/marketing) and
  /// is not intended to be used for genuine usage.
  final FhirBoolean? experimental;

  /// Extensions for [experimental]
  final Element? experimentalElement;

  /// [date]
  /// The date (and optionally time) when the terminology capabilities was
  /// published. The date must change when the business version changes and
  /// it must change if the status code changes. In addition, it should
  /// change when the substantive content of the terminology capabilities
  /// changes.
  final FhirDateTime date;

  /// Extensions for [date]
  final Element? dateElement;

  /// [publisher]
  /// The name of the organization or individual that published the
  /// terminology capabilities.
  final FhirString? publisher;

  /// Extensions for [publisher]
  final Element? publisherElement;

  /// [contact]
  /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [description]
  /// A free text natural language description of the terminology
  /// capabilities from a consumer's perspective. Typically, this is used
  /// when the capability statement describes a desired rather than an actual
  /// solution, for example as a formal expression of requirements as part of
  /// an RFP.
  final FhirMarkdown? description;

  /// Extensions for [description]
  final Element? descriptionElement;

  /// [useContext]
  /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories
  /// (gender, age, ...) or may be references to specific programs (insurance
  /// plans, studies, ...) and may be used to assist with indexing and
  /// searching for appropriate terminology capabilities instances.
  final List<UsageContext>? useContext;

  /// [jurisdiction]
  /// A legal or geographic region in which the terminology capabilities is
  /// intended to be used.
  final List<CodeableConcept>? jurisdiction;

  /// [purpose]
  /// Explanation of why this terminology capabilities is needed and why it
  /// has been designed as it has.
  final FhirMarkdown? purpose;

  /// Extensions for [purpose]
  final Element? purposeElement;

  /// [copyright]
  /// A copyright statement relating to the terminology capabilities and/or
  /// its contents. Copyright statements are generally legal restrictions on
  /// the use and publishing of the terminology capabilities.
  final FhirMarkdown? copyright;

  /// Extensions for [copyright]
  final Element? copyrightElement;

  /// [kind]
  /// The way that this statement is intended to be used, to describe an
  /// actual running instance of software, a particular product (kind, not
  /// instance of software) or a class of implementation (e.g. a desired
  /// purchase).
  final CapabilityStatementKind kind;

  /// Extensions for [kind]
  final Element? kindElement;

  /// [software]
  /// Software that is covered by this terminology capability statement. It
  /// is used when the statement describes the capabilities of a particular
  /// software version, independent of an installation.
  final TerminologyCapabilitiesSoftware? software;

  /// [implementation]
  /// Identifies a specific implementation instance that is described by the
  /// terminology capability statement - i.e. a particular installation,
  /// rather than the capabilities of a software program.
  final TerminologyCapabilitiesImplementation? implementation;

  /// [lockedDate]
  /// Whether the server supports lockedDate.
  final FhirBoolean? lockedDate;

  /// Extensions for [lockedDate]
  final Element? lockedDateElement;

  /// [codeSystem]
  /// Identifies a code system that is supported by the server. If there is a
  /// no code system URL, then this declares the general assumptions a client
  /// can make about support for any CodeSystem resource.
  final List<TerminologyCapabilitiesCodeSystem>? codeSystem;

  /// [expansion]
  /// Information about the
  /// [ValueSet/$expand](valueset-operation-expand.html) operation.
  final TerminologyCapabilitiesExpansion? expansion;

  /// [codeSearch]
  /// The degree to which the server supports the code search parameter on
  /// ValueSet, if it is supported.
  final CodeSearchSupport? codeSearch;

  /// Extensions for [codeSearch]
  final Element? codeSearchElement;

  /// [validateCode]
  /// Information about the
  /// [ValueSet/$validate-code](valueset-operation-validate-code.html)
  /// operation.
  final TerminologyCapabilitiesValidateCode? validateCode;

  /// [translation]
  /// Information about the
  /// [ConceptMap/$translate](conceptmap-operation-translate.html) operation.
  final TerminologyCapabilitiesTranslation? translation;

  /// [closure]
  /// Whether the $closure operation is supported.
  final TerminologyCapabilitiesClosure? closure;
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
    json['date'] = date.toJson();
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
    json['kind'] = kind.toJson();
    if (software != null) {
      json['software'] = software!.toJson();
    }
    if (implementation != null) {
      json['implementation'] = implementation!.toJson();
    }
    if (lockedDate?.value != null) {
      json['lockedDate'] = lockedDate!.toJson();
    }
    if (lockedDateElement != null) {
      json['_lockedDate'] = lockedDateElement!.toJson();
    }
    if (codeSystem != null && codeSystem!.isNotEmpty) {
      json['codeSystem'] = codeSystem!
          .map((TerminologyCapabilitiesCodeSystem v) => v.toJson())
          .toList();
    }
    if (expansion != null) {
      json['expansion'] = expansion!.toJson();
    }
    if (codeSearch != null) {
      json['codeSearch'] = codeSearch!.toJson();
    }
    if (validateCode != null) {
      json['validateCode'] = validateCode!.toJson();
    }
    if (translation != null) {
      json['translation'] = translation!.toJson();
    }
    if (closure != null) {
      json['closure'] = closure!.toJson();
    }
    return json;
  }

  @override
  TerminologyCapabilities clone() => throw UnimplementedError();
  @override
  TerminologyCapabilities copyWith({
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
    TerminologyCapabilitiesSoftware? software,
    TerminologyCapabilitiesImplementation? implementation,
    FhirBoolean? lockedDate,
    Element? lockedDateElement,
    List<TerminologyCapabilitiesCodeSystem>? codeSystem,
    TerminologyCapabilitiesExpansion? expansion,
    CodeSearchSupport? codeSearch,
    Element? codeSearchElement,
    TerminologyCapabilitiesValidateCode? validateCode,
    TerminologyCapabilitiesTranslation? translation,
    TerminologyCapabilitiesClosure? closure,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [TerminologyCapabilitiesSoftware]
/// Software that is covered by this terminology capability statement. It
/// is used when the statement describes the capabilities of a particular
/// software version, independent of an installation.
class TerminologyCapabilitiesSoftware extends BackboneElement {
  /// Primary constructor for [TerminologyCapabilitiesSoftware]

  TerminologyCapabilitiesSoftware({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,

    /// Extensions for [name]
    this.nameElement,
    this.version,

    /// Extensions for [version]
    this.versionElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TerminologyCapabilitiesSoftware.fromJson(Map<String, dynamic> json) {
    return TerminologyCapabilitiesSoftware(
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
      name: FhirString.fromJson(json['name']),
      nameElement: json['_name'] != null
          ? Element.fromJson(
              json['_name'] as Map<String, dynamic>,
            )
          : null,
      version:
          json['version'] != null ? FhirString.fromJson(json['version']) : null,
      versionElement: json['_version'] != null
          ? Element.fromJson(
              json['_version'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [TerminologyCapabilitiesSoftware] from a [String] or [YamlMap] object
  factory TerminologyCapabilitiesSoftware.fromYaml(dynamic yaml) => yaml
          is String
      ? TerminologyCapabilitiesSoftware.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? TerminologyCapabilitiesSoftware.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'TerminologyCapabilitiesSoftware cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [TerminologyCapabilitiesSoftware] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TerminologyCapabilitiesSoftware.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TerminologyCapabilitiesSoftware.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TerminologyCapabilitiesSoftware';

  /// [name]
  /// Name the software is known by.
  final FhirString name;

  /// Extensions for [name]
  final Element? nameElement;

  /// [version]
  /// The version identifier for the software covered by this statement.
  final FhirString? version;

  /// Extensions for [version]
  final Element? versionElement;
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
    json['name'] = name.toJson();
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    if (version?.value != null) {
      json['version'] = version!.toJson();
    }
    if (versionElement != null) {
      json['_version'] = versionElement!.toJson();
    }
    return json;
  }

  @override
  TerminologyCapabilitiesSoftware clone() => throw UnimplementedError();
  @override
  TerminologyCapabilitiesSoftware copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    Element? nameElement,
    FhirString? version,
    Element? versionElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return TerminologyCapabilitiesSoftware(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
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
}

/// [TerminologyCapabilitiesImplementation]
/// Identifies a specific implementation instance that is described by the
/// terminology capability statement - i.e. a particular installation,
/// rather than the capabilities of a software program.
class TerminologyCapabilitiesImplementation extends BackboneElement {
  /// Primary constructor for [TerminologyCapabilitiesImplementation]

  TerminologyCapabilitiesImplementation({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.description,

    /// Extensions for [description]
    this.descriptionElement,
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
  factory TerminologyCapabilitiesImplementation.fromJson(
      Map<String, dynamic> json) {
    return TerminologyCapabilitiesImplementation(
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
      description: FhirString.fromJson(json['description']),
      descriptionElement: json['_description'] != null
          ? Element.fromJson(
              json['_description'] as Map<String, dynamic>,
            )
          : null,
      url: json['url'] != null ? FhirUrl.fromJson(json['url']) : null,
      urlElement: json['_url'] != null
          ? Element.fromJson(
              json['_url'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [TerminologyCapabilitiesImplementation] from a [String] or [YamlMap] object
  factory TerminologyCapabilitiesImplementation.fromYaml(dynamic yaml) => yaml
          is String
      ? TerminologyCapabilitiesImplementation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? TerminologyCapabilitiesImplementation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'TerminologyCapabilitiesImplementation cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [TerminologyCapabilitiesImplementation] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TerminologyCapabilitiesImplementation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TerminologyCapabilitiesImplementation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TerminologyCapabilitiesImplementation';

  /// [description]
  /// Information about the specific installation that this terminology
  /// capability statement relates to.
  final FhirString description;

  /// Extensions for [description]
  final Element? descriptionElement;

  /// [url]
  /// An absolute base URL for the implementation.
  final FhirUrl? url;

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
    json['description'] = description.toJson();
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
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
  TerminologyCapabilitiesImplementation clone() => throw UnimplementedError();
  @override
  TerminologyCapabilitiesImplementation copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    Element? descriptionElement,
    FhirUrl? url,
    Element? urlElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return TerminologyCapabilitiesImplementation(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
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

/// [TerminologyCapabilitiesCodeSystem]
/// Identifies a code system that is supported by the server. If there is a
/// no code system URL, then this declares the general assumptions a client
/// can make about support for any CodeSystem resource.
class TerminologyCapabilitiesCodeSystem extends BackboneElement {
  /// Primary constructor for [TerminologyCapabilitiesCodeSystem]

  TerminologyCapabilitiesCodeSystem({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.uri,

    /// Extensions for [uri]
    this.uriElement,
    this.version,
    this.subsumption,

    /// Extensions for [subsumption]
    this.subsumptionElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TerminologyCapabilitiesCodeSystem.fromJson(
      Map<String, dynamic> json) {
    return TerminologyCapabilitiesCodeSystem(
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
      uri: json['uri'] != null ? FhirCanonical.fromJson(json['uri']) : null,
      uriElement: json['_uri'] != null
          ? Element.fromJson(
              json['_uri'] as Map<String, dynamic>,
            )
          : null,
      version: json['version'] != null
          ? (json['version'] as List<dynamic>)
              .map<TerminologyCapabilitiesVersion>(
                (dynamic v) => TerminologyCapabilitiesVersion.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      subsumption: json['subsumption'] != null
          ? FhirBoolean.fromJson(json['subsumption'])
          : null,
      subsumptionElement: json['_subsumption'] != null
          ? Element.fromJson(
              json['_subsumption'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [TerminologyCapabilitiesCodeSystem] from a [String] or [YamlMap] object
  factory TerminologyCapabilitiesCodeSystem.fromYaml(dynamic yaml) => yaml
          is String
      ? TerminologyCapabilitiesCodeSystem.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? TerminologyCapabilitiesCodeSystem.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'TerminologyCapabilitiesCodeSystem cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [TerminologyCapabilitiesCodeSystem] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TerminologyCapabilitiesCodeSystem.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TerminologyCapabilitiesCodeSystem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TerminologyCapabilitiesCodeSystem';

  /// [uri]
  /// URI for the Code System.
  final FhirCanonical? uri;

  /// Extensions for [uri]
  final Element? uriElement;

  /// [version]
  /// For the code system, a list of versions that are supported by the
  /// server.
  final List<TerminologyCapabilitiesVersion>? version;

  /// [subsumption]
  /// True if subsumption is supported for this version of the code system.
  final FhirBoolean? subsumption;

  /// Extensions for [subsumption]
  final Element? subsumptionElement;
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
    if (uri?.value != null) {
      json['uri'] = uri!.toJson();
    }
    if (uriElement != null) {
      json['_uri'] = uriElement!.toJson();
    }
    if (version != null && version!.isNotEmpty) {
      json['version'] = version!
          .map((TerminologyCapabilitiesVersion v) => v.toJson())
          .toList();
    }
    if (subsumption?.value != null) {
      json['subsumption'] = subsumption!.toJson();
    }
    if (subsumptionElement != null) {
      json['_subsumption'] = subsumptionElement!.toJson();
    }
    return json;
  }

  @override
  TerminologyCapabilitiesCodeSystem clone() => throw UnimplementedError();
  @override
  TerminologyCapabilitiesCodeSystem copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCanonical? uri,
    Element? uriElement,
    List<TerminologyCapabilitiesVersion>? version,
    FhirBoolean? subsumption,
    Element? subsumptionElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [TerminologyCapabilitiesVersion]
/// For the code system, a list of versions that are supported by the
/// server.
class TerminologyCapabilitiesVersion extends BackboneElement {
  /// Primary constructor for [TerminologyCapabilitiesVersion]

  TerminologyCapabilitiesVersion({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,

    /// Extensions for [code]
    this.codeElement,
    this.isDefault,

    /// Extensions for [isDefault]
    this.isDefaultElement,
    this.compositional,

    /// Extensions for [compositional]
    this.compositionalElement,
    this.language,

    /// Extensions for [language]
    this.languageElement,
    this.filter,
    this.property,

    /// Extensions for [property]
    this.propertyElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TerminologyCapabilitiesVersion.fromJson(Map<String, dynamic> json) {
    return TerminologyCapabilitiesVersion(
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
      code: json['code'] != null ? FhirString.fromJson(json['code']) : null,
      codeElement: json['_code'] != null
          ? Element.fromJson(
              json['_code'] as Map<String, dynamic>,
            )
          : null,
      isDefault: json['isDefault'] != null
          ? FhirBoolean.fromJson(json['isDefault'])
          : null,
      isDefaultElement: json['_isDefault'] != null
          ? Element.fromJson(
              json['_isDefault'] as Map<String, dynamic>,
            )
          : null,
      compositional: json['compositional'] != null
          ? FhirBoolean.fromJson(json['compositional'])
          : null,
      compositionalElement: json['_compositional'] != null
          ? Element.fromJson(
              json['_compositional'] as Map<String, dynamic>,
            )
          : null,
      language: json['language'] != null
          ? (json['language'] as List<dynamic>)
              .map<FhirCode>(
                (dynamic v) => FhirCode.fromJson(v as dynamic),
              )
              .toList()
          : null,
      languageElement: json['_language'] != null
          ? (json['_language'] as List<dynamic>)
              .map<Element>(
                (dynamic v) => Element.fromJson(v as Map<String, dynamic>),
              )
              .toList()
          : null,
      filter: json['filter'] != null
          ? (json['filter'] as List<dynamic>)
              .map<TerminologyCapabilitiesFilter>(
                (dynamic v) => TerminologyCapabilitiesFilter.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      property: json['property'] != null
          ? (json['property'] as List<dynamic>)
              .map<FhirCode>(
                (dynamic v) => FhirCode.fromJson(v as dynamic),
              )
              .toList()
          : null,
      propertyElement: json['_property'] != null
          ? (json['_property'] as List<dynamic>)
              .map<Element>(
                (dynamic v) => Element.fromJson(v as Map<String, dynamic>),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [TerminologyCapabilitiesVersion] from a [String] or [YamlMap] object
  factory TerminologyCapabilitiesVersion.fromYaml(dynamic yaml) => yaml
          is String
      ? TerminologyCapabilitiesVersion.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? TerminologyCapabilitiesVersion.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'TerminologyCapabilitiesVersion cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [TerminologyCapabilitiesVersion] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TerminologyCapabilitiesVersion.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TerminologyCapabilitiesVersion.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TerminologyCapabilitiesVersion';

  /// [code]
  /// For version-less code systems, there should be a single version with no
  /// identifier.
  final FhirString? code;

  /// Extensions for [code]
  final Element? codeElement;

  /// [isDefault]
  /// If this is the default version for this code system.
  final FhirBoolean? isDefault;

  /// Extensions for [isDefault]
  final Element? isDefaultElement;

  /// [compositional]
  /// If the compositional grammar defined by the code system is supported.
  final FhirBoolean? compositional;

  /// Extensions for [compositional]
  final Element? compositionalElement;

  /// [language]
  /// Language Displays supported.
  final List<FhirCode>? language;

  /// Extensions for [language]
  final List<Element>? languageElement;

  /// [filter]
  /// Filter Properties supported.
  final List<TerminologyCapabilitiesFilter>? filter;

  /// [property]
  /// Properties supported for $lookup.
  final List<FhirCode>? property;

  /// Extensions for [property]
  final List<Element>? propertyElement;
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
    if (isDefault?.value != null) {
      json['isDefault'] = isDefault!.toJson();
    }
    if (isDefaultElement != null) {
      json['_isDefault'] = isDefaultElement!.toJson();
    }
    if (compositional?.value != null) {
      json['compositional'] = compositional!.toJson();
    }
    if (compositionalElement != null) {
      json['_compositional'] = compositionalElement!.toJson();
    }
    if (language != null && language!.isNotEmpty) {
      json['language'] = language!.map((FhirCode v) => v.toJson()).toList();
    }
    if (languageElement != null && languageElement!.isNotEmpty) {
      json['_language'] =
          languageElement!.map((Element v) => v.toJson()).toList();
    }
    if (filter != null && filter!.isNotEmpty) {
      json['filter'] =
          filter!.map((TerminologyCapabilitiesFilter v) => v.toJson()).toList();
    }
    if (property != null && property!.isNotEmpty) {
      json['property'] = property!.map((FhirCode v) => v.toJson()).toList();
    }
    if (propertyElement != null && propertyElement!.isNotEmpty) {
      json['_property'] =
          propertyElement!.map((Element v) => v.toJson()).toList();
    }
    return json;
  }

  @override
  TerminologyCapabilitiesVersion clone() => throw UnimplementedError();
  @override
  TerminologyCapabilitiesVersion copyWith({
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [TerminologyCapabilitiesFilter]
/// Filter Properties supported.
class TerminologyCapabilitiesFilter extends BackboneElement {
  /// Primary constructor for [TerminologyCapabilitiesFilter]

  TerminologyCapabilitiesFilter({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,

    /// Extensions for [code]
    this.codeElement,
    required this.op,

    /// Extensions for [op]
    this.opElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TerminologyCapabilitiesFilter.fromJson(Map<String, dynamic> json) {
    return TerminologyCapabilitiesFilter(
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
      code: FhirCode.fromJson(json['code']),
      codeElement: json['_code'] != null
          ? Element.fromJson(
              json['_code'] as Map<String, dynamic>,
            )
          : null,
      op: (json['op'] as List<dynamic>)
          .map<FhirCode>((dynamic v) => FhirCode.fromJson(v as dynamic))
          .toList(),
      opElement: json['_op'] != null
          ? (json['_op'] as List<dynamic>)
              .map<Element>(
                (dynamic v) => Element.fromJson(v as Map<String, dynamic>),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [TerminologyCapabilitiesFilter] from a [String] or [YamlMap] object
  factory TerminologyCapabilitiesFilter.fromYaml(dynamic yaml) => yaml is String
      ? TerminologyCapabilitiesFilter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? TerminologyCapabilitiesFilter.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'TerminologyCapabilitiesFilter cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [TerminologyCapabilitiesFilter] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TerminologyCapabilitiesFilter.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TerminologyCapabilitiesFilter.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TerminologyCapabilitiesFilter';

  /// [code]
  /// Code of the property supported.
  final FhirCode code;

  /// Extensions for [code]
  final Element? codeElement;

  /// [op]
  /// Operations supported for the property.
  final List<FhirCode> op;

  /// Extensions for [op]
  final List<Element>? opElement;
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
    json['code'] = code.toJson();
    if (codeElement != null) {
      json['_code'] = codeElement!.toJson();
    }
    json['op'] = op.map((FhirCode v) => v.toJson()).toList();
    if (opElement != null && opElement!.isNotEmpty) {
      json['_op'] = opElement!.map((Element v) => v.toJson()).toList();
    }
    return json;
  }

  @override
  TerminologyCapabilitiesFilter clone() => throw UnimplementedError();
  @override
  TerminologyCapabilitiesFilter copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    Element? codeElement,
    List<FhirCode>? op,
    List<Element>? opElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return TerminologyCapabilitiesFilter(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      codeElement: codeElement ?? this.codeElement,
      op: op ?? this.op,
      opElement: opElement ?? this.opElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [TerminologyCapabilitiesExpansion]
/// Information about the
/// [ValueSet/$expand](valueset-operation-expand.html) operation.
class TerminologyCapabilitiesExpansion extends BackboneElement {
  /// Primary constructor for [TerminologyCapabilitiesExpansion]

  TerminologyCapabilitiesExpansion({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.hierarchical,

    /// Extensions for [hierarchical]
    this.hierarchicalElement,
    this.paging,

    /// Extensions for [paging]
    this.pagingElement,
    this.incomplete,

    /// Extensions for [incomplete]
    this.incompleteElement,
    this.parameter,
    this.textFilter,

    /// Extensions for [textFilter]
    this.textFilterElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TerminologyCapabilitiesExpansion.fromJson(Map<String, dynamic> json) {
    return TerminologyCapabilitiesExpansion(
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
      hierarchical: json['hierarchical'] != null
          ? FhirBoolean.fromJson(json['hierarchical'])
          : null,
      hierarchicalElement: json['_hierarchical'] != null
          ? Element.fromJson(
              json['_hierarchical'] as Map<String, dynamic>,
            )
          : null,
      paging:
          json['paging'] != null ? FhirBoolean.fromJson(json['paging']) : null,
      pagingElement: json['_paging'] != null
          ? Element.fromJson(
              json['_paging'] as Map<String, dynamic>,
            )
          : null,
      incomplete: json['incomplete'] != null
          ? FhirBoolean.fromJson(json['incomplete'])
          : null,
      incompleteElement: json['_incomplete'] != null
          ? Element.fromJson(
              json['_incomplete'] as Map<String, dynamic>,
            )
          : null,
      parameter: json['parameter'] != null
          ? (json['parameter'] as List<dynamic>)
              .map<TerminologyCapabilitiesParameter>(
                (dynamic v) => TerminologyCapabilitiesParameter.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      textFilter: json['textFilter'] != null
          ? FhirMarkdown.fromJson(json['textFilter'])
          : null,
      textFilterElement: json['_textFilter'] != null
          ? Element.fromJson(
              json['_textFilter'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [TerminologyCapabilitiesExpansion] from a [String] or [YamlMap] object
  factory TerminologyCapabilitiesExpansion.fromYaml(dynamic yaml) => yaml
          is String
      ? TerminologyCapabilitiesExpansion.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? TerminologyCapabilitiesExpansion.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'TerminologyCapabilitiesExpansion cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [TerminologyCapabilitiesExpansion] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TerminologyCapabilitiesExpansion.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TerminologyCapabilitiesExpansion.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TerminologyCapabilitiesExpansion';

  /// [hierarchical]
  /// Whether the server can return nested value sets.
  final FhirBoolean? hierarchical;

  /// Extensions for [hierarchical]
  final Element? hierarchicalElement;

  /// [paging]
  /// Whether the server supports paging on expansion.
  final FhirBoolean? paging;

  /// Extensions for [paging]
  final Element? pagingElement;

  /// [incomplete]
  /// Allow request for incomplete expansions?
  final FhirBoolean? incomplete;

  /// Extensions for [incomplete]
  final Element? incompleteElement;

  /// [parameter]
  /// Supported expansion parameter.
  final List<TerminologyCapabilitiesParameter>? parameter;

  /// [textFilter]
  /// Documentation about text searching works.
  final FhirMarkdown? textFilter;

  /// Extensions for [textFilter]
  final Element? textFilterElement;
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
    if (hierarchical?.value != null) {
      json['hierarchical'] = hierarchical!.toJson();
    }
    if (hierarchicalElement != null) {
      json['_hierarchical'] = hierarchicalElement!.toJson();
    }
    if (paging?.value != null) {
      json['paging'] = paging!.toJson();
    }
    if (pagingElement != null) {
      json['_paging'] = pagingElement!.toJson();
    }
    if (incomplete?.value != null) {
      json['incomplete'] = incomplete!.toJson();
    }
    if (incompleteElement != null) {
      json['_incomplete'] = incompleteElement!.toJson();
    }
    if (parameter != null && parameter!.isNotEmpty) {
      json['parameter'] = parameter!
          .map((TerminologyCapabilitiesParameter v) => v.toJson())
          .toList();
    }
    if (textFilter?.value != null) {
      json['textFilter'] = textFilter!.toJson();
    }
    if (textFilterElement != null) {
      json['_textFilter'] = textFilterElement!.toJson();
    }
    return json;
  }

  @override
  TerminologyCapabilitiesExpansion clone() => throw UnimplementedError();
  @override
  TerminologyCapabilitiesExpansion copyWith({
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [TerminologyCapabilitiesParameter]
/// Supported expansion parameter.
class TerminologyCapabilitiesParameter extends BackboneElement {
  /// Primary constructor for [TerminologyCapabilitiesParameter]

  TerminologyCapabilitiesParameter({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,

    /// Extensions for [name]
    this.nameElement,
    this.documentation,

    /// Extensions for [documentation]
    this.documentationElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TerminologyCapabilitiesParameter.fromJson(Map<String, dynamic> json) {
    return TerminologyCapabilitiesParameter(
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
      name: FhirCode.fromJson(json['name']),
      nameElement: json['_name'] != null
          ? Element.fromJson(
              json['_name'] as Map<String, dynamic>,
            )
          : null,
      documentation: json['documentation'] != null
          ? FhirString.fromJson(json['documentation'])
          : null,
      documentationElement: json['_documentation'] != null
          ? Element.fromJson(
              json['_documentation'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [TerminologyCapabilitiesParameter] from a [String] or [YamlMap] object
  factory TerminologyCapabilitiesParameter.fromYaml(dynamic yaml) => yaml
          is String
      ? TerminologyCapabilitiesParameter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? TerminologyCapabilitiesParameter.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'TerminologyCapabilitiesParameter cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [TerminologyCapabilitiesParameter] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TerminologyCapabilitiesParameter.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TerminologyCapabilitiesParameter.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TerminologyCapabilitiesParameter';

  /// [name]
  /// Expansion Parameter name.
  final FhirCode name;

  /// Extensions for [name]
  final Element? nameElement;

  /// [documentation]
  /// Description of support for parameter.
  final FhirString? documentation;

  /// Extensions for [documentation]
  final Element? documentationElement;
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
    json['name'] = name.toJson();
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    if (documentation?.value != null) {
      json['documentation'] = documentation!.toJson();
    }
    if (documentationElement != null) {
      json['_documentation'] = documentationElement!.toJson();
    }
    return json;
  }

  @override
  TerminologyCapabilitiesParameter clone() => throw UnimplementedError();
  @override
  TerminologyCapabilitiesParameter copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? name,
    Element? nameElement,
    FhirString? documentation,
    Element? documentationElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return TerminologyCapabilitiesParameter(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
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
}

/// [TerminologyCapabilitiesValidateCode]
/// Information about the
/// [ValueSet/$validate-code](valueset-operation-validate-code.html)
/// operation.
class TerminologyCapabilitiesValidateCode extends BackboneElement {
  /// Primary constructor for [TerminologyCapabilitiesValidateCode]

  TerminologyCapabilitiesValidateCode({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.translations,

    /// Extensions for [translations]
    this.translationsElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TerminologyCapabilitiesValidateCode.fromJson(
      Map<String, dynamic> json) {
    return TerminologyCapabilitiesValidateCode(
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
      translations: FhirBoolean.fromJson(json['translations']),
      translationsElement: json['_translations'] != null
          ? Element.fromJson(
              json['_translations'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [TerminologyCapabilitiesValidateCode] from a [String] or [YamlMap] object
  factory TerminologyCapabilitiesValidateCode.fromYaml(dynamic yaml) => yaml
          is String
      ? TerminologyCapabilitiesValidateCode.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? TerminologyCapabilitiesValidateCode.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'TerminologyCapabilitiesValidateCode cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [TerminologyCapabilitiesValidateCode] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TerminologyCapabilitiesValidateCode.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TerminologyCapabilitiesValidateCode.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TerminologyCapabilitiesValidateCode';

  /// [translations]
  /// Whether translations are validated.
  final FhirBoolean translations;

  /// Extensions for [translations]
  final Element? translationsElement;
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
    json['translations'] = translations.toJson();
    if (translationsElement != null) {
      json['_translations'] = translationsElement!.toJson();
    }
    return json;
  }

  @override
  TerminologyCapabilitiesValidateCode clone() => throw UnimplementedError();
  @override
  TerminologyCapabilitiesValidateCode copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? translations,
    Element? translationsElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return TerminologyCapabilitiesValidateCode(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      translations: translations ?? this.translations,
      translationsElement: translationsElement ?? this.translationsElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [TerminologyCapabilitiesTranslation]
/// Information about the
/// [ConceptMap/$translate](conceptmap-operation-translate.html) operation.
class TerminologyCapabilitiesTranslation extends BackboneElement {
  /// Primary constructor for [TerminologyCapabilitiesTranslation]

  TerminologyCapabilitiesTranslation({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.needsMap,

    /// Extensions for [needsMap]
    this.needsMapElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TerminologyCapabilitiesTranslation.fromJson(
      Map<String, dynamic> json) {
    return TerminologyCapabilitiesTranslation(
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
      needsMap: FhirBoolean.fromJson(json['needsMap']),
      needsMapElement: json['_needsMap'] != null
          ? Element.fromJson(
              json['_needsMap'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [TerminologyCapabilitiesTranslation] from a [String] or [YamlMap] object
  factory TerminologyCapabilitiesTranslation.fromYaml(dynamic yaml) => yaml
          is String
      ? TerminologyCapabilitiesTranslation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? TerminologyCapabilitiesTranslation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'TerminologyCapabilitiesTranslation cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [TerminologyCapabilitiesTranslation] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TerminologyCapabilitiesTranslation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TerminologyCapabilitiesTranslation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TerminologyCapabilitiesTranslation';

  /// [needsMap]
  /// Whether the client must identify the map.
  final FhirBoolean needsMap;

  /// Extensions for [needsMap]
  final Element? needsMapElement;
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
    json['needsMap'] = needsMap.toJson();
    if (needsMapElement != null) {
      json['_needsMap'] = needsMapElement!.toJson();
    }
    return json;
  }

  @override
  TerminologyCapabilitiesTranslation clone() => throw UnimplementedError();
  @override
  TerminologyCapabilitiesTranslation copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? needsMap,
    Element? needsMapElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return TerminologyCapabilitiesTranslation(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      needsMap: needsMap ?? this.needsMap,
      needsMapElement: needsMapElement ?? this.needsMapElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [TerminologyCapabilitiesClosure]
/// Whether the $closure operation is supported.
class TerminologyCapabilitiesClosure extends BackboneElement {
  /// Primary constructor for [TerminologyCapabilitiesClosure]

  TerminologyCapabilitiesClosure({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.translation,

    /// Extensions for [translation]
    this.translationElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TerminologyCapabilitiesClosure.fromJson(Map<String, dynamic> json) {
    return TerminologyCapabilitiesClosure(
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
      translation: json['translation'] != null
          ? FhirBoolean.fromJson(json['translation'])
          : null,
      translationElement: json['_translation'] != null
          ? Element.fromJson(
              json['_translation'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [TerminologyCapabilitiesClosure] from a [String] or [YamlMap] object
  factory TerminologyCapabilitiesClosure.fromYaml(dynamic yaml) => yaml
          is String
      ? TerminologyCapabilitiesClosure.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? TerminologyCapabilitiesClosure.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'TerminologyCapabilitiesClosure cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [TerminologyCapabilitiesClosure] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TerminologyCapabilitiesClosure.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TerminologyCapabilitiesClosure.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TerminologyCapabilitiesClosure';

  /// [translation]
  /// If cross-system closure is supported.
  final FhirBoolean? translation;

  /// Extensions for [translation]
  final Element? translationElement;
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
    if (translation?.value != null) {
      json['translation'] = translation!.toJson();
    }
    if (translationElement != null) {
      json['_translation'] = translationElement!.toJson();
    }
    return json;
  }

  @override
  TerminologyCapabilitiesClosure clone() => throw UnimplementedError();
  @override
  TerminologyCapabilitiesClosure copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? translation,
    Element? translationElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return TerminologyCapabilitiesClosure(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      translation: translation ?? this.translation,
      translationElement: translationElement ?? this.translationElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
