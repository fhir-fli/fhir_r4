import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [StructureDefinition]
/// A definition of a FHIR structure. This resource is used to describe the
/// underlying resources, data types defined in FHIR, and also for
/// describing extensions and constraints on resources and data types.
class StructureDefinition extends DomainResource {
  /// Primary constructor for [StructureDefinition]

  StructureDefinition({
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
    required this.url,

    /// Extensions for [url]
    this.urlElement,
    this.identifier,
    this.version,

    /// Extensions for [version]
    this.versionElement,
    required this.name,

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
    this.keyword,
    this.fhirVersion,

    /// Extensions for [fhirVersion]
    this.fhirVersionElement,
    this.mapping,
    required this.kind,

    /// Extensions for [kind]
    this.kindElement,
    required this.abstract_,

    /// Extensions for [abstract]
    this.abstractElement,
    this.context,
    required this.type,

    /// Extensions for [type]
    this.typeElement,
    this.baseDefinition,

    /// Extensions for [baseDefinition]
    this.baseDefinitionElement,
    this.derivation,

    /// Extensions for [derivation]
    this.derivationElement,
    this.snapshot,
    this.differential,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.StructureDefinition,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory StructureDefinition.fromJson(Map<String, dynamic> json) {
    return StructureDefinition(
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
      url: FhirUri.fromJson(json['url']),
      urlElement: json['_url'] != null
          ? Element.fromJson(
              json['_url'] as Map<String, dynamic>,
            )
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (dynamic v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      version:
          json['version'] != null ? FhirString.fromJson(json['version']) : null,
      versionElement: json['_version'] != null
          ? Element.fromJson(
              json['_version'] as Map<String, dynamic>,
            )
          : null,
      name: FhirString.fromJson(json['name']),
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
      keyword: json['keyword'] != null
          ? (json['keyword'] as List<dynamic>)
              .map<Coding>(
                (dynamic v) => Coding.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      fhirVersion: json['fhirVersion'] != null
          ? FHIRVersion.fromJson(json['fhirVersion'])
          : null,
      fhirVersionElement: json['_fhirVersion'] != null
          ? Element.fromJson(
              json['_fhirVersion'] as Map<String, dynamic>,
            )
          : null,
      mapping: json['mapping'] != null
          ? (json['mapping'] as List<dynamic>)
              .map<StructureDefinitionMapping>(
                (dynamic v) => StructureDefinitionMapping.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      kind: StructureDefinitionKind.fromJson(json['kind']),
      kindElement: json['_kind'] != null
          ? Element.fromJson(
              json['_kind'] as Map<String, dynamic>,
            )
          : null,
      abstract_: FhirBoolean.fromJson(json['abstract']),
      abstractElement: json['_abstract'] != null
          ? Element.fromJson(
              json['_abstract'] as Map<String, dynamic>,
            )
          : null,
      context: json['context'] != null
          ? (json['context'] as List<dynamic>)
              .map<StructureDefinitionContext>(
                (dynamic v) => StructureDefinitionContext.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      type: FHIRDefinedType.fromJson(json['type']),
      typeElement: json['_type'] != null
          ? Element.fromJson(
              json['_type'] as Map<String, dynamic>,
            )
          : null,
      baseDefinition: json['baseDefinition'] != null
          ? FhirCanonical.fromJson(json['baseDefinition'])
          : null,
      baseDefinitionElement: json['_baseDefinition'] != null
          ? Element.fromJson(
              json['_baseDefinition'] as Map<String, dynamic>,
            )
          : null,
      derivation: json['derivation'] != null
          ? TypeDerivationRule.fromJson(json['derivation'])
          : null,
      derivationElement: json['_derivation'] != null
          ? Element.fromJson(
              json['_derivation'] as Map<String, dynamic>,
            )
          : null,
      snapshot: json['snapshot'] != null
          ? StructureDefinitionSnapshot.fromJson(
              json['snapshot'] as Map<String, dynamic>,
            )
          : null,
      differential: json['differential'] != null
          ? StructureDefinitionDifferential.fromJson(
              json['differential'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [StructureDefinition] from a [String] or [YamlMap] object
  factory StructureDefinition.fromYaml(dynamic yaml) => yaml is String
      ? StructureDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? StructureDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'StructureDefinition cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [StructureDefinition] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory StructureDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return StructureDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'StructureDefinition';

  /// [url]
  /// An absolute URI that is used to identify this structure definition when
  /// it is referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and
  /// SHOULD be a literal address at which at which an authoritative instance
  /// of this structure definition is (or will be) published. This URL can be
  /// the target of a canonical reference. It SHALL remain the same when the
  /// structure definition is stored on different servers.
  final FhirUri url;

  /// Extensions for [url]
  final Element? urlElement;

  /// [identifier]
  /// A formal identifier that is used to identify this structure definition
  /// when it is represented in other formats, or referenced in a
  /// specification, model, design or an instance.
  final List<Identifier>? identifier;

  /// [version]
  /// The identifier that is used to identify this version of the structure
  /// definition when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the structure
  /// definition author and is not expected to be globally unique. For
  /// example, it might be a timestamp (e.g. yyyymmdd) if a managed version
  /// is not available. There is also no expectation that versions can be
  /// placed in a lexicographical sequence.
  final FhirString? version;

  /// Extensions for [version]
  final Element? versionElement;

  /// [name]
  /// A natural language name identifying the structure definition. This name
  /// should be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString name;

  /// Extensions for [name]
  final Element? nameElement;

  /// [title]
  /// A short, descriptive, user-friendly title for the structure definition.
  final FhirString? title;

  /// Extensions for [title]
  final Element? titleElement;

  /// [status]
  /// The status of this structure definition. Enables tracking the
  /// life-cycle of the content.
  final PublicationStatus status;

  /// Extensions for [status]
  final Element? statusElement;

  /// [experimental]
  /// A Boolean value to indicate that this structure definition is authored
  /// for testing purposes (or education/evaluation/marketing) and is not
  /// intended to be used for genuine usage.
  final FhirBoolean? experimental;

  /// Extensions for [experimental]
  final Element? experimentalElement;

  /// [date]
  /// The date (and optionally time) when the structure definition was
  /// published. The date must change when the business version changes and
  /// it must change if the status code changes. In addition, it should
  /// change when the substantive content of the structure definition
  /// changes.
  final FhirDateTime? date;

  /// Extensions for [date]
  final Element? dateElement;

  /// [publisher]
  /// The name of the organization or individual that published the structure
  /// definition.
  final FhirString? publisher;

  /// Extensions for [publisher]
  final Element? publisherElement;

  /// [contact]
  /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [description]
  /// A free text natural language description of the structure definition
  /// from a consumer's perspective.
  final FhirMarkdown? description;

  /// Extensions for [description]
  final Element? descriptionElement;

  /// [useContext]
  /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories
  /// (gender, age, ...) or may be references to specific programs (insurance
  /// plans, studies, ...) and may be used to assist with indexing and
  /// searching for appropriate structure definition instances.
  final List<UsageContext>? useContext;

  /// [jurisdiction]
  /// A legal or geographic region in which the structure definition is
  /// intended to be used.
  final List<CodeableConcept>? jurisdiction;

  /// [purpose]
  /// Explanation of why this structure definition is needed and why it has
  /// been designed as it has.
  final FhirMarkdown? purpose;

  /// Extensions for [purpose]
  final Element? purposeElement;

  /// [copyright]
  /// A copyright statement relating to the structure definition and/or its
  /// contents. Copyright statements are generally legal restrictions on the
  /// use and publishing of the structure definition.
  final FhirMarkdown? copyright;

  /// Extensions for [copyright]
  final Element? copyrightElement;

  /// [keyword]
  /// A set of key words or terms from external terminologies that may be
  /// used to assist with indexing and searching of templates nby describing
  /// the use of this structure definition, or the content it describes.
  final List<Coding>? keyword;

  /// [fhirVersion]
  /// The version of the FHIR specification on which this StructureDefinition
  /// is based - this is the formal version of the specification, without the
  /// revision number, e.g. [publication].[major].[minor], which is 4.3.0 for
  /// this version.
  final FHIRVersion? fhirVersion;

  /// Extensions for [fhirVersion]
  final Element? fhirVersionElement;

  /// [mapping]
  /// An external specification that the content is mapped to.
  final List<StructureDefinitionMapping>? mapping;

  /// [kind]
  /// Defines the kind of structure that this definition is describing.
  final StructureDefinitionKind kind;

  /// Extensions for [kind]
  final Element? kindElement;

  /// [abstract_]
  /// Whether structure this definition describes is abstract or not - that
  /// is, whether the structure is not intended to be instantiated. For
  /// Resources and Data types, abstract types will never be exchanged
  /// between systems.
  final FhirBoolean abstract_;

  /// Extensions for [abstract]
  final Element? abstractElement;

  /// [context]
  /// Identifies the types of resource or data type elements to which the
  /// extension can be applied.
  final List<StructureDefinitionContext>? context;

  /// [type]
  /// The type this structure describes. If the derivation kind is
  /// 'specialization' then this is the master definition for a type, and
  /// there is always one of these (a data type, an extension, a resource,
  /// including abstract ones). Otherwise the structure definition is a
  /// constraint on the stated type (and in this case, the type cannot be an
  /// abstract type). References are URLs that are relative to
  /// http://hl7.org/fhir/StructureDefinition e.g. "string" is a reference to
  /// http://hl7.org/fhir/StructureDefinition/string. Absolute URLs are only
  /// allowed in logical models.
  final FHIRDefinedType type;

  /// Extensions for [type]
  final Element? typeElement;

  /// [baseDefinition]
  /// An absolute URI that is the base structure from which this type is
  /// derived, either by specialization or constraint.
  final FhirCanonical? baseDefinition;

  /// Extensions for [baseDefinition]
  final Element? baseDefinitionElement;

  /// [derivation]
  /// How the type relates to the baseDefinition.
  final TypeDerivationRule? derivation;

  /// Extensions for [derivation]
  final Element? derivationElement;

  /// [snapshot]
  /// A snapshot view is expressed in a standalone form that can be used and
  /// interpreted without considering the base StructureDefinition.
  final StructureDefinitionSnapshot? snapshot;

  /// [differential]
  /// A differential view is expressed relative to the base
  /// StructureDefinition - a statement of differences that it applies.
  final StructureDefinitionDifferential? differential;
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
    json['url'] = url.toJson();
    if (urlElement != null) {
      json['_url'] = urlElement!.toJson();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map((Identifier v) => v.toJson()).toList();
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
    if (keyword != null && keyword!.isNotEmpty) {
      json['keyword'] = keyword!.map((Coding v) => v.toJson()).toList();
    }
    if (fhirVersion != null) {
      json['fhirVersion'] = fhirVersion!.toJson();
    }
    if (mapping != null && mapping!.isNotEmpty) {
      json['mapping'] =
          mapping!.map((StructureDefinitionMapping v) => v.toJson()).toList();
    }
    json['kind'] = kind.toJson();
    json['abstract'] = abstract_.toJson();
    if (abstractElement != null) {
      json['_abstract'] = abstractElement!.toJson();
    }
    if (context != null && context!.isNotEmpty) {
      json['context'] =
          context!.map((StructureDefinitionContext v) => v.toJson()).toList();
    }
    json['type'] = type.toJson();
    if (baseDefinition?.value != null) {
      json['baseDefinition'] = baseDefinition!.toJson();
    }
    if (baseDefinitionElement != null) {
      json['_baseDefinition'] = baseDefinitionElement!.toJson();
    }
    if (derivation != null) {
      json['derivation'] = derivation!.toJson();
    }
    if (snapshot != null) {
      json['snapshot'] = snapshot!.toJson();
    }
    if (differential != null) {
      json['differential'] = differential!.toJson();
    }
    return json;
  }

  @override
  StructureDefinition clone() => throw UnimplementedError();
  @override
  StructureDefinition copyWith({
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
    List<Coding>? keyword,
    FHIRVersion? fhirVersion,
    Element? fhirVersionElement,
    List<StructureDefinitionMapping>? mapping,
    StructureDefinitionKind? kind,
    Element? kindElement,
    FhirBoolean? abstract_,
    Element? abstractElement,
    List<StructureDefinitionContext>? context,
    FHIRDefinedType? type,
    Element? typeElement,
    FhirCanonical? baseDefinition,
    Element? baseDefinitionElement,
    TypeDerivationRule? derivation,
    Element? derivationElement,
    StructureDefinitionSnapshot? snapshot,
    StructureDefinitionDifferential? differential,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return StructureDefinition(
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
      keyword: keyword ?? this.keyword,
      fhirVersion: fhirVersion ?? this.fhirVersion,
      fhirVersionElement: fhirVersionElement ?? this.fhirVersionElement,
      mapping: mapping ?? this.mapping,
      kind: kind ?? this.kind,
      kindElement: kindElement ?? this.kindElement,
      abstract_: abstract_ ?? this.abstract_,
      abstractElement: abstractElement ?? this.abstractElement,
      context: context ?? this.context,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      baseDefinition: baseDefinition ?? this.baseDefinition,
      baseDefinitionElement:
          baseDefinitionElement ?? this.baseDefinitionElement,
      derivation: derivation ?? this.derivation,
      derivationElement: derivationElement ?? this.derivationElement,
      snapshot: snapshot ?? this.snapshot,
      differential: differential ?? this.differential,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [StructureDefinitionMapping]
/// An external specification that the content is mapped to.
class StructureDefinitionMapping extends BackboneElement {
  /// Primary constructor for [StructureDefinitionMapping]

  StructureDefinitionMapping({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.identity,

    /// Extensions for [identity]
    this.identityElement,
    this.uri,

    /// Extensions for [uri]
    this.uriElement,
    this.name,

    /// Extensions for [name]
    this.nameElement,
    this.comment,

    /// Extensions for [comment]
    this.commentElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory StructureDefinitionMapping.fromJson(Map<String, dynamic> json) {
    return StructureDefinitionMapping(
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
      identity: FhirId.fromJson(json['identity']),
      identityElement: json['_identity'] != null
          ? Element.fromJson(
              json['_identity'] as Map<String, dynamic>,
            )
          : null,
      uri: json['uri'] != null ? FhirUri.fromJson(json['uri']) : null,
      uriElement: json['_uri'] != null
          ? Element.fromJson(
              json['_uri'] as Map<String, dynamic>,
            )
          : null,
      name: json['name'] != null ? FhirString.fromJson(json['name']) : null,
      nameElement: json['_name'] != null
          ? Element.fromJson(
              json['_name'] as Map<String, dynamic>,
            )
          : null,
      comment:
          json['comment'] != null ? FhirString.fromJson(json['comment']) : null,
      commentElement: json['_comment'] != null
          ? Element.fromJson(
              json['_comment'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [StructureDefinitionMapping] from a [String] or [YamlMap] object
  factory StructureDefinitionMapping.fromYaml(dynamic yaml) => yaml is String
      ? StructureDefinitionMapping.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? StructureDefinitionMapping.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'StructureDefinitionMapping cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [StructureDefinitionMapping] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory StructureDefinitionMapping.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return StructureDefinitionMapping.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'StructureDefinitionMapping';

  /// [identity]
  /// An Internal id that is used to identify this mapping set when specific
  /// mappings are made.
  final FhirId identity;

  /// Extensions for [identity]
  final Element? identityElement;

  /// [uri]
  /// An absolute URI that identifies the specification that this mapping is
  /// expressed to.
  final FhirUri? uri;

  /// Extensions for [uri]
  final Element? uriElement;

  /// [name]
  /// A name for the specification that is being mapped to.
  final FhirString? name;

  /// Extensions for [name]
  final Element? nameElement;

  /// [comment]
  /// Comments about this mapping, including version notes, issues, scope
  /// limitations, and other important notes for usage.
  final FhirString? comment;

  /// Extensions for [comment]
  final Element? commentElement;
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
    json['identity'] = identity.toJson();
    if (identityElement != null) {
      json['_identity'] = identityElement!.toJson();
    }
    if (uri?.value != null) {
      json['uri'] = uri!.toJson();
    }
    if (uriElement != null) {
      json['_uri'] = uriElement!.toJson();
    }
    if (name?.value != null) {
      json['name'] = name!.toJson();
    }
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    if (comment?.value != null) {
      json['comment'] = comment!.toJson();
    }
    if (commentElement != null) {
      json['_comment'] = commentElement!.toJson();
    }
    return json;
  }

  @override
  StructureDefinitionMapping clone() => throw UnimplementedError();
  @override
  StructureDefinitionMapping copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? identity,
    Element? identityElement,
    FhirUri? uri,
    Element? uriElement,
    FhirString? name,
    Element? nameElement,
    FhirString? comment,
    Element? commentElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return StructureDefinitionMapping(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identity: identity ?? this.identity,
      identityElement: identityElement ?? this.identityElement,
      uri: uri ?? this.uri,
      uriElement: uriElement ?? this.uriElement,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      comment: comment ?? this.comment,
      commentElement: commentElement ?? this.commentElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [StructureDefinitionContext]
/// Identifies the types of resource or data type elements to which the
/// extension can be applied.
class StructureDefinitionContext extends BackboneElement {
  /// Primary constructor for [StructureDefinitionContext]

  StructureDefinitionContext({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,

    /// Extensions for [type]
    this.typeElement,
    required this.expression,

    /// Extensions for [expression]
    this.expressionElement,
    this.contextInvariant,

    /// Extensions for [contextInvariant]
    this.contextInvariantElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory StructureDefinitionContext.fromJson(Map<String, dynamic> json) {
    return StructureDefinitionContext(
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
      type: ExtensionContextType.fromJson(json['type']),
      typeElement: json['_type'] != null
          ? Element.fromJson(
              json['_type'] as Map<String, dynamic>,
            )
          : null,
      expression: FhirString.fromJson(json['expression']),
      expressionElement: json['_expression'] != null
          ? Element.fromJson(
              json['_expression'] as Map<String, dynamic>,
            )
          : null,
      contextInvariant: json['contextInvariant'] != null
          ? (json['contextInvariant'] as List<dynamic>)
              .map<FhirString>(
                (dynamic v) => FhirString.fromJson(v as dynamic),
              )
              .toList()
          : null,
      contextInvariantElement: json['_contextInvariant'] != null
          ? (json['_contextInvariant'] as List<dynamic>)
              .map<Element>(
                (dynamic v) => Element.fromJson(v as Map<String, dynamic>),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [StructureDefinitionContext] from a [String] or [YamlMap] object
  factory StructureDefinitionContext.fromYaml(dynamic yaml) => yaml is String
      ? StructureDefinitionContext.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? StructureDefinitionContext.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'StructureDefinitionContext cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [StructureDefinitionContext] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory StructureDefinitionContext.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return StructureDefinitionContext.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'StructureDefinitionContext';

  /// [type]
  /// Defines how to interpret the expression that defines what the context
  /// of the extension is.
  final ExtensionContextType type;

  /// Extensions for [type]
  final Element? typeElement;

  /// [expression]
  /// An expression that defines where an extension can be used in resources.
  final FhirString expression;

  /// Extensions for [expression]
  final Element? expressionElement;

  /// [contextInvariant]
  /// A set of rules as FHIRPath Invariants about when the extension can be
  /// used (e.g. co-occurrence variants for the extension). All the rules
  /// must be true.
  final List<FhirString>? contextInvariant;

  /// Extensions for [contextInvariant]
  final List<Element>? contextInvariantElement;
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
    json['type'] = type.toJson();
    json['expression'] = expression.toJson();
    if (expressionElement != null) {
      json['_expression'] = expressionElement!.toJson();
    }
    if (contextInvariant != null && contextInvariant!.isNotEmpty) {
      json['contextInvariant'] =
          contextInvariant!.map((FhirString v) => v.toJson()).toList();
    }
    if (contextInvariantElement != null &&
        contextInvariantElement!.isNotEmpty) {
      json['_contextInvariant'] =
          contextInvariantElement!.map((Element v) => v.toJson()).toList();
    }
    return json;
  }

  @override
  StructureDefinitionContext clone() => throw UnimplementedError();
  @override
  StructureDefinitionContext copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ExtensionContextType? type,
    Element? typeElement,
    FhirString? expression,
    Element? expressionElement,
    List<FhirString>? contextInvariant,
    List<Element>? contextInvariantElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return StructureDefinitionContext(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      expression: expression ?? this.expression,
      expressionElement: expressionElement ?? this.expressionElement,
      contextInvariant: contextInvariant ?? this.contextInvariant,
      contextInvariantElement:
          contextInvariantElement ?? this.contextInvariantElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [StructureDefinitionSnapshot]
/// A snapshot view is expressed in a standalone form that can be used and
/// interpreted without considering the base StructureDefinition.
class StructureDefinitionSnapshot extends BackboneElement {
  /// Primary constructor for [StructureDefinitionSnapshot]

  StructureDefinitionSnapshot({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.element,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory StructureDefinitionSnapshot.fromJson(Map<String, dynamic> json) {
    return StructureDefinitionSnapshot(
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
      element: (json['element'] as List<dynamic>)
          .map<ElementDefinition>((dynamic v) =>
              ElementDefinition.fromJson(v as Map<String, dynamic>))
          .toList(),
    );
  }

  /// Deserialize [StructureDefinitionSnapshot] from a [String] or [YamlMap] object
  factory StructureDefinitionSnapshot.fromYaml(dynamic yaml) => yaml is String
      ? StructureDefinitionSnapshot.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? StructureDefinitionSnapshot.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'StructureDefinitionSnapshot cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [StructureDefinitionSnapshot] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory StructureDefinitionSnapshot.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return StructureDefinitionSnapshot.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'StructureDefinitionSnapshot';

  /// [element]
  /// Captures constraints on each element within the resource.
  final List<ElementDefinition> element;
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
    json['element'] =
        element.map<dynamic>((ElementDefinition v) => v.toJson()).toList();
    return json;
  }

  @override
  StructureDefinitionSnapshot clone() => throw UnimplementedError();
  @override
  StructureDefinitionSnapshot copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<ElementDefinition>? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return StructureDefinitionSnapshot(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      element: element ?? this.element,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [StructureDefinitionDifferential]
/// A differential view is expressed relative to the base
/// StructureDefinition - a statement of differences that it applies.
class StructureDefinitionDifferential extends BackboneElement {
  /// Primary constructor for [StructureDefinitionDifferential]

  StructureDefinitionDifferential({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.element,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory StructureDefinitionDifferential.fromJson(Map<String, dynamic> json) {
    return StructureDefinitionDifferential(
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
      element: (json['element'] as List<dynamic>)
          .map<ElementDefinition>((dynamic v) =>
              ElementDefinition.fromJson(v as Map<String, dynamic>))
          .toList(),
    );
  }

  /// Deserialize [StructureDefinitionDifferential] from a [String] or [YamlMap] object
  factory StructureDefinitionDifferential.fromYaml(dynamic yaml) => yaml
          is String
      ? StructureDefinitionDifferential.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? StructureDefinitionDifferential.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'StructureDefinitionDifferential cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [StructureDefinitionDifferential] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory StructureDefinitionDifferential.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return StructureDefinitionDifferential.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'StructureDefinitionDifferential';

  /// [element]
  /// Captures constraints on each element within the resource.
  final List<ElementDefinition> element;
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
    json['element'] =
        element.map<dynamic>((ElementDefinition v) => v.toJson()).toList();
    return json;
  }

  @override
  StructureDefinitionDifferential clone() => throw UnimplementedError();
  @override
  StructureDefinitionDifferential copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<ElementDefinition>? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return StructureDefinitionDifferential(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      element: element ?? this.element,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
