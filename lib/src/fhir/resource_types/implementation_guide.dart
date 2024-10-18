import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ImplementationGuide]
/// A set of rules of how a particular interoperability or standards
/// problem is solved - typically through the use of FHIR resources. This
/// resource is used to gather all the parts of an implementation guide
/// into a logical whole and to publish a computable definition of all the
/// parts.
class ImplementationGuide extends DomainResource {
  /// Primary constructor for
  /// [ImplementationGuide]

  ImplementationGuide({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    required this.url,
    this.version,
    required this.name,
    this.title,
    required this.status,
    this.experimental,
    this.date,
    this.publisher,
    this.contact,
    this.description,
    this.useContext,
    this.jurisdiction,
    this.copyright,
    required this.packageId,
    this.license,
    required this.fhirVersion,
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
  }) : super(
          resourceType: R4ResourceType.ImplementationGuide,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImplementationGuide.fromJson(
    Map<String, dynamic> json,
  ) {
    return ImplementationGuide(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson({
              'value': json['implicitRules'],
              '_value': json['_implicitRules'],
            })
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson({
              'value': json['language'],
              '_value': json['_language'],
            })
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      url: FhirUri.fromJson({
        'value': json['url'],
        '_value': json['_url'],
      }),
      version: json['version'] != null
          ? FhirString.fromJson({
              'value': json['version'],
              '_value': json['_version'],
            })
          : null,
      name: FhirString.fromJson({
        'value': json['name'],
        '_value': json['_name'],
      }),
      title: json['title'] != null
          ? FhirString.fromJson({
              'value': json['title'],
              '_value': json['_title'],
            })
          : null,
      status: PublicationStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      experimental: json['experimental'] != null
          ? FhirBoolean.fromJson({
              'value': json['experimental'],
              '_value': json['_experimental'],
            })
          : null,
      date: json['date'] != null
          ? FhirDateTime.fromJson({
              'value': json['date'],
              '_value': json['_date'],
            })
          : null,
      publisher: json['publisher'] != null
          ? FhirString.fromJson({
              'value': json['publisher'],
              '_value': json['_publisher'],
            })
          : null,
      contact: json['contact'] != null
          ? (json['contact'] as List<dynamic>)
              .map<ContactDetail>(
                (v) => ContactDetail.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      description: json['description'] != null
          ? FhirMarkdown.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      useContext: json['useContext'] != null
          ? (json['useContext'] as List<dynamic>)
              .map<UsageContext>(
                (v) => UsageContext.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      jurisdiction: json['jurisdiction'] != null
          ? (json['jurisdiction'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      copyright: json['copyright'] != null
          ? FhirMarkdown.fromJson({
              'value': json['copyright'],
              '_value': json['_copyright'],
            })
          : null,
      packageId: FhirId.fromJson({
        'value': json['packageId'],
        '_value': json['_packageId'],
      }),
      license: json['license'] != null
          ? SPDXLicense.fromJson({
              'value': json['license'],
              '_value': json['_license'],
            })
          : null,
      fhirVersion: ensureNonNullList(
        parsePrimitiveList<FHIRVersion>(
          json['fhirVersion'] as List<dynamic>?,
          json['_fhirVersion'] as List<dynamic>?,
          fromJson: FHIRVersion.fromJson,
        ),
      ),
      dependsOn: json['dependsOn'] != null
          ? (json['dependsOn'] as List<dynamic>)
              .map<ImplementationGuideDependsOn>(
                (v) => ImplementationGuideDependsOn.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      global: json['global'] != null
          ? (json['global'] as List<dynamic>)
              .map<ImplementationGuideGlobal>(
                (v) => ImplementationGuideGlobal.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      definition: json['definition'] != null
          ? ImplementationGuideDefinition.fromJson(
              json['definition'] as Map<String, dynamic>,
            )
          : null,
      manifest: json['manifest'] != null
          ? ImplementationGuideManifest.fromJson(
              json['manifest'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [ImplementationGuide]
  /// from a [String] or [YamlMap] object
  factory ImplementationGuide.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? ImplementationGuide.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? ImplementationGuide.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'ImplementationGuide '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [ImplementationGuide]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImplementationGuide.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ImplementationGuide.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ImplementationGuide';

  /// [url]
  /// An absolute URI that is used to identify this implementation guide when
  /// it is referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and
  /// SHOULD be a literal address at which at which an authoritative instance
  /// of this implementation guide is (or will be) published. This URL can be
  /// the target of a canonical reference. It SHALL remain the same when the
  /// implementation guide is stored on different servers.
  final FhirUri url;

  /// [version]
  /// The identifier that is used to identify this version of the
  /// implementation guide when it is referenced in a specification, model,
  /// design or instance. This is an arbitrary value managed by the
  /// implementation guide author and is not expected to be globally unique.
  /// For example, it might be a timestamp (e.g. yyyymmdd) if a managed
  /// version is not available. There is also no expectation that versions
  /// can be placed in a lexicographical sequence.
  final FhirString? version;

  /// [name]
  /// A natural language name identifying the implementation guide. This name
  /// should be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString name;

  /// [title]
  /// A short, descriptive, user-friendly title for the implementation guide.
  final FhirString? title;

  /// [status]
  /// The status of this implementation guide. Enables tracking the
  /// life-cycle of the content.
  final PublicationStatus status;

  /// [experimental]
  /// A Boolean value to indicate that this implementation guide is authored
  /// for testing purposes (or education/evaluation/marketing) and is not
  /// intended to be used for genuine usage.
  final FhirBoolean? experimental;

  /// [date]
  /// The date (and optionally time) when the implementation guide was
  /// published. The date must change when the business version changes and
  /// it must change if the status code changes. In addition, it should
  /// change when the substantive content of the implementation guide
  /// changes.
  final FhirDateTime? date;

  /// [publisher]
  /// The name of the organization or individual that published the
  /// implementation guide.
  final FhirString? publisher;

  /// [contact]
  /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [description]
  /// A free text natural language description of the implementation guide
  /// from a consumer's perspective.
  final FhirMarkdown? description;

  /// [useContext]
  /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories
  /// (gender, age, ...) or may be references to specific programs (insurance
  /// plans, studies, ...) and may be used to assist with indexing and
  /// searching for appropriate implementation guide instances.
  final List<UsageContext>? useContext;

  /// [jurisdiction]
  /// A legal or geographic region in which the implementation guide is
  /// intended to be used.
  final List<CodeableConcept>? jurisdiction;

  /// [copyright]
  /// A copyright statement relating to the implementation guide and/or its
  /// contents. Copyright statements are generally legal restrictions on the
  /// use and publishing of the implementation guide.
  final FhirMarkdown? copyright;

  /// [packageId]
  /// The NPM package name for this Implementation Guide, used in the NPM
  /// package distribution, which is the primary mechanism by which FHIR
  /// based tooling manages IG dependencies. This value must be globally
  /// unique, and should be assigned with care.
  final FhirId packageId;

  /// [license]
  /// The license that applies to this Implementation Guide, using an SPDX
  /// license code, or 'not-open-source'.
  final SPDXLicense? license;

  /// [fhirVersion]
  /// The version(s) of the FHIR specification that this ImplementationGuide
  /// targets - e.g. describes how to use. The value of this element is the
  /// formal version of the specification, without the revision number, e.g.
  /// [publication].[major].[minor], which is 4.3.0 for this version.
  final List<FHIRVersion> fhirVersion;

  /// [dependsOn]
  /// Another implementation guide that this implementation depends on.
  /// Typically, an implementation guide uses value sets, profiles
  /// etc.defined in other implementation guides.
  final List<ImplementationGuideDependsOn>? dependsOn;

  /// [global]
  /// A set of profiles that all resources covered by this implementation
  /// guide must conform to.
  final List<ImplementationGuideGlobal>? global;

  /// [definition]
  /// The information needed by an IG publisher tool to publish the whole
  /// implementation guide.
  final ImplementationGuideDefinition? definition;

  /// [manifest]
  /// Information about an assembled implementation guide, created by the
  /// publication tooling.
  final ImplementationGuideManifest? manifest;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    if (implicitRules != null) {
      final fieldJson1 = implicitRules!.toJson();
      json['implicitRules'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_implicitRules'] = fieldJson1['_value'];
      }
    }

    if (language != null) {
      json['language'] = language!.toJson();
    }

    if (text != null) {
      json['text'] = text!.toJson();
    }

    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((e) => e.toJson()).toList();
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    final fieldJson7 = url.toJson();
    json['url'] = fieldJson7['value'];
    if (fieldJson7['_value'] != null) {
      json['_url'] = fieldJson7['_value'];
    }

    if (version != null) {
      final fieldJson8 = version!.toJson();
      json['version'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_version'] = fieldJson8['_value'];
      }
    }

    final fieldJson9 = name.toJson();
    json['name'] = fieldJson9['value'];
    if (fieldJson9['_value'] != null) {
      json['_name'] = fieldJson9['_value'];
    }

    if (title != null) {
      final fieldJson10 = title!.toJson();
      json['title'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_title'] = fieldJson10['_value'];
      }
    }

    json['status'] = status.toJson();

    if (experimental != null) {
      final fieldJson12 = experimental!.toJson();
      json['experimental'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_experimental'] = fieldJson12['_value'];
      }
    }

    if (date != null) {
      final fieldJson13 = date!.toJson();
      json['date'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_date'] = fieldJson13['_value'];
      }
    }

    if (publisher != null) {
      final fieldJson14 = publisher!.toJson();
      json['publisher'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_publisher'] = fieldJson14['_value'];
      }
    }

    if (contact != null && contact!.isNotEmpty) {
      json['contact'] = contact!.map((e) => e.toJson()).toList();
    }

    if (description != null) {
      final fieldJson16 = description!.toJson();
      json['description'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_description'] = fieldJson16['_value'];
      }
    }

    if (useContext != null && useContext!.isNotEmpty) {
      json['useContext'] = useContext!.map((e) => e.toJson()).toList();
    }

    if (jurisdiction != null && jurisdiction!.isNotEmpty) {
      json['jurisdiction'] = jurisdiction!.map((e) => e.toJson()).toList();
    }

    if (copyright != null) {
      final fieldJson19 = copyright!.toJson();
      json['copyright'] = fieldJson19['value'];
      if (fieldJson19['_value'] != null) {
        json['_copyright'] = fieldJson19['_value'];
      }
    }

    final fieldJson20 = packageId.toJson();
    json['packageId'] = fieldJson20['value'];
    if (fieldJson20['_value'] != null) {
      json['_packageId'] = fieldJson20['_value'];
    }

    if (license != null) {
      json['license'] = license!.toJson();
    }

    json['fhirVersion'] = fhirVersion.map((e) => e.toJson()).toList();

    if (dependsOn != null && dependsOn!.isNotEmpty) {
      json['dependsOn'] = dependsOn!.map((e) => e.toJson()).toList();
    }

    if (global != null && global!.isNotEmpty) {
      json['global'] = global!.map((e) => e.toJson()).toList();
    }

    if (definition != null) {
      json['definition'] = definition!.toJson();
    }

    if (manifest != null) {
      json['manifest'] = manifest!.toJson();
    }

    return json;
  }

  @override
  ImplementationGuide clone() => throw UnimplementedError();
  @override
  ImplementationGuide copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? url,
    FhirString? version,
    FhirString? name,
    FhirString? title,
    PublicationStatus? status,
    FhirBoolean? experimental,
    FhirDateTime? date,
    FhirString? publisher,
    List<ContactDetail>? contact,
    FhirMarkdown? description,
    List<UsageContext>? useContext,
    List<CodeableConcept>? jurisdiction,
    FhirMarkdown? copyright,
    FhirId? packageId,
    SPDXLicense? license,
    List<FHIRVersion>? fhirVersion,
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
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      url: url ?? this.url,
      version: version ?? this.version,
      name: name ?? this.name,
      title: title ?? this.title,
      status: status ?? this.status,
      experimental: experimental ?? this.experimental,
      date: date ?? this.date,
      publisher: publisher ?? this.publisher,
      contact: contact ?? this.contact,
      description: description ?? this.description,
      useContext: useContext ?? this.useContext,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      copyright: copyright ?? this.copyright,
      packageId: packageId ?? this.packageId,
      license: license ?? this.license,
      fhirVersion: fhirVersion ?? this.fhirVersion,
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
}

/// [ImplementationGuideDependsOn]
/// Another implementation guide that this implementation depends on.
/// Typically, an implementation guide uses value sets, profiles
/// etc.defined in other implementation guides.
class ImplementationGuideDependsOn extends BackboneElement {
  /// Primary constructor for
  /// [ImplementationGuideDependsOn]

  ImplementationGuideDependsOn({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.uri,
    this.packageId,
    this.version,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImplementationGuideDependsOn.fromJson(
    Map<String, dynamic> json,
  ) {
    return ImplementationGuideDependsOn(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      uri: FhirCanonical.fromJson({
        'value': json['uri'],
        '_value': json['_uri'],
      }),
      packageId: json['packageId'] != null
          ? FhirId.fromJson({
              'value': json['packageId'],
              '_value': json['_packageId'],
            })
          : null,
      version: json['version'] != null
          ? FhirString.fromJson({
              'value': json['version'],
              '_value': json['_version'],
            })
          : null,
    );
  }

  /// Deserialize [ImplementationGuideDependsOn]
  /// from a [String] or [YamlMap] object
  factory ImplementationGuideDependsOn.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? ImplementationGuideDependsOn.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? ImplementationGuideDependsOn.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'ImplementationGuideDependsOn '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [ImplementationGuideDependsOn]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImplementationGuideDependsOn.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ImplementationGuideDependsOn.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ImplementationGuideDependsOn';

  /// [uri]
  /// A canonical reference to the Implementation guide for the dependency.
  final FhirCanonical uri;

  /// [packageId]
  /// The NPM package name for the Implementation Guide that this IG depends
  /// on.
  final FhirId? packageId;

  /// [version]
  /// The version of the IG that is depended on, when the correct version is
  /// required to understand the IG correctly.
  final FhirString? version;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    final fieldJson2 = uri.toJson();
    json['uri'] = fieldJson2['value'];
    if (fieldJson2['_value'] != null) {
      json['_uri'] = fieldJson2['_value'];
    }

    if (packageId != null) {
      final fieldJson3 = packageId!.toJson();
      json['packageId'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_packageId'] = fieldJson3['_value'];
      }
    }

    if (version != null) {
      final fieldJson4 = version!.toJson();
      json['version'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_version'] = fieldJson4['_value'];
      }
    }

    return json;
  }

  @override
  ImplementationGuideDependsOn clone() => throw UnimplementedError();
  @override
  ImplementationGuideDependsOn copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCanonical? uri,
    FhirId? packageId,
    FhirString? version,
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
      packageId: packageId ?? this.packageId,
      version: version ?? this.version,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ImplementationGuideGlobal]
/// A set of profiles that all resources covered by this implementation
/// guide must conform to.
class ImplementationGuideGlobal extends BackboneElement {
  /// Primary constructor for
  /// [ImplementationGuideGlobal]

  ImplementationGuideGlobal({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    required this.profile,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImplementationGuideGlobal.fromJson(
    Map<String, dynamic> json,
  ) {
    return ImplementationGuideGlobal(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      type: FhirCode.fromJson({
        'value': json['type'],
        '_value': json['_type'],
      }),
      profile: FhirCanonical.fromJson({
        'value': json['profile'],
        '_value': json['_profile'],
      }),
    );
  }

  /// Deserialize [ImplementationGuideGlobal]
  /// from a [String] or [YamlMap] object
  factory ImplementationGuideGlobal.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? ImplementationGuideGlobal.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? ImplementationGuideGlobal.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'ImplementationGuideGlobal '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [ImplementationGuideGlobal]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImplementationGuideGlobal.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ImplementationGuideGlobal.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ImplementationGuideGlobal';

  /// [type]
  /// The type of resource that all instances must conform to.
  final FhirCode type;

  /// [profile]
  /// A reference to the profile that all instances must conform to.
  final FhirCanonical profile;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    final fieldJson2 = type.toJson();
    json['type'] = fieldJson2['value'];
    if (fieldJson2['_value'] != null) {
      json['_type'] = fieldJson2['_value'];
    }

    final fieldJson3 = profile.toJson();
    json['profile'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_profile'] = fieldJson3['_value'];
    }

    return json;
  }

  @override
  ImplementationGuideGlobal clone() => throw UnimplementedError();
  @override
  ImplementationGuideGlobal copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? type,
    FhirCanonical? profile,
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
      profile: profile ?? this.profile,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ImplementationGuideDefinition]
/// The information needed by an IG publisher tool to publish the whole
/// implementation guide.
class ImplementationGuideDefinition extends BackboneElement {
  /// Primary constructor for
  /// [ImplementationGuideDefinition]

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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImplementationGuideDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    return ImplementationGuideDefinition(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      grouping: json['grouping'] != null
          ? (json['grouping'] as List<dynamic>)
              .map<ImplementationGuideGrouping>(
                (v) => ImplementationGuideGrouping.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      resource: ensureNonNullList(
        (json['resource'] as List<dynamic>)
            .map<ImplementationGuideResource>(
              (v) => ImplementationGuideResource.fromJson(
                v as Map<String, dynamic>,
              ),
            )
            .toList(),
      ),
      page: json['page'] != null
          ? ImplementationGuidePage.fromJson(
              json['page'] as Map<String, dynamic>,
            )
          : null,
      parameter: json['parameter'] != null
          ? (json['parameter'] as List<dynamic>)
              .map<ImplementationGuideParameter>(
                (v) => ImplementationGuideParameter.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      template: json['template'] != null
          ? (json['template'] as List<dynamic>)
              .map<ImplementationGuideTemplate>(
                (v) => ImplementationGuideTemplate.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ImplementationGuideDefinition]
  /// from a [String] or [YamlMap] object
  factory ImplementationGuideDefinition.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? ImplementationGuideDefinition.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? ImplementationGuideDefinition.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'ImplementationGuideDefinition '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [ImplementationGuideDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImplementationGuideDefinition.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ImplementationGuideDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ImplementationGuideDefinition';

  /// [grouping]
  /// A logical group of resources. Logical groups can be used when building
  /// pages.
  final List<ImplementationGuideGrouping>? grouping;

  /// [resource]
  /// A resource that is part of the implementation guide. Conformance
  /// resources (value set, structure definition, capability statements etc.)
  /// are obvious candidates for inclusion, but any kind of resource can be
  /// included as an example resource.
  final List<ImplementationGuideResource> resource;

  /// [page]
  /// A page / section in the implementation guide. The root page is the
  /// implementation guide home page.
  final ImplementationGuidePage? page;

  /// [parameter]
  /// Defines how IG is built by tools.
  final List<ImplementationGuideParameter>? parameter;

  /// [template]
  /// A template for building resources.
  final List<ImplementationGuideTemplate>? template;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (grouping != null && grouping!.isNotEmpty) {
      json['grouping'] = grouping!.map((e) => e.toJson()).toList();
    }

    json['resource'] = resource.map((e) => e.toJson()).toList();

    if (page != null) {
      json['page'] = page!.toJson();
    }

    if (parameter != null && parameter!.isNotEmpty) {
      json['parameter'] = parameter!.map((e) => e.toJson()).toList();
    }

    if (template != null && template!.isNotEmpty) {
      json['template'] = template!.map((e) => e.toJson()).toList();
    }

    return json;
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
}

/// [ImplementationGuideGrouping]
/// A logical group of resources. Logical groups can be used when building
/// pages.
class ImplementationGuideGrouping extends BackboneElement {
  /// Primary constructor for
  /// [ImplementationGuideGrouping]

  ImplementationGuideGrouping({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.description,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImplementationGuideGrouping.fromJson(
    Map<String, dynamic> json,
  ) {
    return ImplementationGuideGrouping(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      name: FhirString.fromJson({
        'value': json['name'],
        '_value': json['_name'],
      }),
      description: json['description'] != null
          ? FhirString.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
    );
  }

  /// Deserialize [ImplementationGuideGrouping]
  /// from a [String] or [YamlMap] object
  factory ImplementationGuideGrouping.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? ImplementationGuideGrouping.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? ImplementationGuideGrouping.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'ImplementationGuideGrouping '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [ImplementationGuideGrouping]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImplementationGuideGrouping.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ImplementationGuideGrouping.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ImplementationGuideGrouping';

  /// [name]
  /// The human-readable title to display for the package of resources when
  /// rendering the implementation guide.
  final FhirString name;

  /// [description]
  /// Human readable text describing the package.
  final FhirString? description;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    final fieldJson2 = name.toJson();
    json['name'] = fieldJson2['value'];
    if (fieldJson2['_value'] != null) {
      json['_name'] = fieldJson2['_value'];
    }

    if (description != null) {
      final fieldJson3 = description!.toJson();
      json['description'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_description'] = fieldJson3['_value'];
      }
    }

    return json;
  }

  @override
  ImplementationGuideGrouping clone() => throw UnimplementedError();
  @override
  ImplementationGuideGrouping copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    FhirString? description,
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
      description: description ?? this.description,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ImplementationGuideResource]
/// A resource that is part of the implementation guide. Conformance
/// resources (value set, structure definition, capability statements etc.)
/// are obvious candidates for inclusion, but any kind of resource can be
/// included as an example resource.
class ImplementationGuideResource extends BackboneElement {
  /// Primary constructor for
  /// [ImplementationGuideResource]

  ImplementationGuideResource({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.reference,
    this.fhirVersion,
    this.name,
    this.description,
    this.exampleBoolean,
    this.exampleCanonical,
    this.groupingId,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImplementationGuideResource.fromJson(
    Map<String, dynamic> json,
  ) {
    return ImplementationGuideResource(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      reference: Reference.fromJson(
        json['reference'] as Map<String, dynamic>,
      ),
      fhirVersion: parsePrimitiveList<FHIRVersion>(
        json['fhirVersion'] as List<dynamic>?,
        json['_fhirVersion'] as List<dynamic>?,
        fromJson: FHIRVersion.fromJson,
      ),
      name: json['name'] != null
          ? FhirString.fromJson({
              'value': json['name'],
              '_value': json['_name'],
            })
          : null,
      description: json['description'] != null
          ? FhirString.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      exampleBoolean: json['exampleBoolean'] != null
          ? FhirBoolean.fromJson({
              'value': json['exampleBoolean'],
              '_value': json['_exampleBoolean'],
            })
          : null,
      exampleCanonical: json['exampleCanonical'] != null
          ? FhirCanonical.fromJson({
              'value': json['exampleCanonical'],
              '_value': json['_exampleCanonical'],
            })
          : null,
      groupingId: json['groupingId'] != null
          ? FhirId.fromJson({
              'value': json['groupingId'],
              '_value': json['_groupingId'],
            })
          : null,
    );
  }

  /// Deserialize [ImplementationGuideResource]
  /// from a [String] or [YamlMap] object
  factory ImplementationGuideResource.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? ImplementationGuideResource.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? ImplementationGuideResource.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'ImplementationGuideResource '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [ImplementationGuideResource]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImplementationGuideResource.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ImplementationGuideResource.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ImplementationGuideResource';

  /// [reference]
  /// Where this resource is found.
  final Reference reference;

  /// [fhirVersion]
  /// Indicates the FHIR Version(s) this artifact is intended to apply to. If
  /// no versions are specified, the resource is assumed to apply to all the
  /// versions stated in ImplementationGuide.fhirVersion.
  final List<FHIRVersion>? fhirVersion;

  /// [name]
  /// A human assigned name for the resource. All resources SHOULD have a
  /// name, but the name may be extracted from the resource (e.g.
  /// ValueSet.name).
  final FhirString? name;

  /// [description]
  /// A description of the reason that a resource has been included in the
  /// implementation guide.
  final FhirString? description;

  /// [exampleBoolean]
  /// If true or a reference, indicates the resource is an example instance.
  /// If a reference is present, indicates that the example is an example of
  /// the specified profile.
  final FhirBoolean? exampleBoolean;

  /// [exampleCanonical]
  /// If true or a reference, indicates the resource is an example instance.
  /// If a reference is present, indicates that the example is an example of
  /// the specified profile.
  final FhirCanonical? exampleCanonical;

  /// [groupingId]
  /// Reference to the id of the grouping this resource appears in.
  final FhirId? groupingId;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['reference'] = reference.toJson();

    if (fhirVersion != null && fhirVersion!.isNotEmpty) {
      json['fhirVersion'] = fhirVersion!.map((e) => e.toJson()).toList();
    }

    if (name != null) {
      final fieldJson4 = name!.toJson();
      json['name'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_name'] = fieldJson4['_value'];
      }
    }

    if (description != null) {
      final fieldJson5 = description!.toJson();
      json['description'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_description'] = fieldJson5['_value'];
      }
    }

    if (exampleBoolean != null) {
      final fieldJson6 = exampleBoolean!.toJson();
      json['exampleBoolean'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_exampleBoolean'] = fieldJson6['_value'];
      }
    }

    if (exampleCanonical != null) {
      final fieldJson7 = exampleCanonical!.toJson();
      json['exampleCanonical'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_exampleCanonical'] = fieldJson7['_value'];
      }
    }

    if (groupingId != null) {
      final fieldJson8 = groupingId!.toJson();
      json['groupingId'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_groupingId'] = fieldJson8['_value'];
      }
    }

    return json;
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
    FhirString? name,
    FhirString? description,
    FhirBoolean? exampleBoolean,
    FhirCanonical? exampleCanonical,
    FhirId? groupingId,
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
      name: name ?? this.name,
      description: description ?? this.description,
      exampleBoolean: exampleBoolean ?? this.exampleBoolean,
      exampleCanonical: exampleCanonical ?? this.exampleCanonical,
      groupingId: groupingId ?? this.groupingId,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ImplementationGuidePage]
/// A page / section in the implementation guide. The root page is the
/// implementation guide home page.
class ImplementationGuidePage extends BackboneElement {
  /// Primary constructor for
  /// [ImplementationGuidePage]

  ImplementationGuidePage({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.nameUrl,
    this.nameReference,
    required this.title,
    required this.generation,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImplementationGuidePage.fromJson(
    Map<String, dynamic> json,
  ) {
    return ImplementationGuidePage(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      nameUrl: json['nameUrl'] != null
          ? FhirUrl.fromJson({
              'value': json['nameUrl'],
              '_value': json['_nameUrl'],
            })
          : null,
      nameReference: json['nameReference'] != null
          ? Reference.fromJson(
              json['nameReference'] as Map<String, dynamic>,
            )
          : null,
      title: FhirString.fromJson({
        'value': json['title'],
        '_value': json['_title'],
      }),
      generation: GuidePageGeneration.fromJson({
        'value': json['generation'],
        '_value': json['_generation'],
      }),
    );
  }

  /// Deserialize [ImplementationGuidePage]
  /// from a [String] or [YamlMap] object
  factory ImplementationGuidePage.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? ImplementationGuidePage.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? ImplementationGuidePage.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'ImplementationGuidePage '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [ImplementationGuidePage]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImplementationGuidePage.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ImplementationGuidePage.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ImplementationGuidePage';

  /// [nameUrl]
  /// The source address for the page.
  final FhirUrl? nameUrl;

  /// [nameReference]
  /// The source address for the page.
  final Reference? nameReference;

  /// [title]
  /// A short title used to represent this page in navigational structures
  /// such as table of contents, bread crumbs, etc.
  final FhirString title;

  /// [generation]
  /// A code that indicates how the page is generated.
  final GuidePageGeneration generation;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (nameUrl != null) {
      final fieldJson2 = nameUrl!.toJson();
      json['nameUrl'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_nameUrl'] = fieldJson2['_value'];
      }
    }

    if (nameReference != null) {
      json['nameReference'] = nameReference!.toJson();
    }

    final fieldJson4 = title.toJson();
    json['title'] = fieldJson4['value'];
    if (fieldJson4['_value'] != null) {
      json['_title'] = fieldJson4['_value'];
    }

    json['generation'] = generation.toJson();

    return json;
  }

  @override
  ImplementationGuidePage clone() => throw UnimplementedError();
  @override
  ImplementationGuidePage copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUrl? nameUrl,
    Reference? nameReference,
    FhirString? title,
    GuidePageGeneration? generation,
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
      nameReference: nameReference ?? this.nameReference,
      title: title ?? this.title,
      generation: generation ?? this.generation,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ImplementationGuideParameter]
/// Defines how IG is built by tools.
class ImplementationGuideParameter extends BackboneElement {
  /// Primary constructor for
  /// [ImplementationGuideParameter]

  ImplementationGuideParameter({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    required this.value,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImplementationGuideParameter.fromJson(
    Map<String, dynamic> json,
  ) {
    return ImplementationGuideParameter(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      code: GuideParameterCode.fromJson({
        'value': json['code'],
        '_value': json['_code'],
      }),
      value: FhirString.fromJson({
        'value': json['value'],
        '_value': json['_value'],
      }),
    );
  }

  /// Deserialize [ImplementationGuideParameter]
  /// from a [String] or [YamlMap] object
  factory ImplementationGuideParameter.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? ImplementationGuideParameter.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? ImplementationGuideParameter.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'ImplementationGuideParameter '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [ImplementationGuideParameter]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImplementationGuideParameter.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ImplementationGuideParameter.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ImplementationGuideParameter';

  /// [code]
  /// apply | path-resource | path-pages | path-tx-cache |
  /// expansion-parameter | rule-broken-links | generate-xml | generate-json
  /// | generate-turtle | html-template.
  final GuideParameterCode code;

  /// [value]
  /// Value for named type.
  final FhirString value;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['code'] = code.toJson();

    final fieldJson3 = value.toJson();
    json['value'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_value'] = fieldJson3['_value'];
    }

    return json;
  }

  @override
  ImplementationGuideParameter clone() => throw UnimplementedError();
  @override
  ImplementationGuideParameter copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    GuideParameterCode? code,
    FhirString? value,
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
      value: value ?? this.value,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ImplementationGuideTemplate]
/// A template for building resources.
class ImplementationGuideTemplate extends BackboneElement {
  /// Primary constructor for
  /// [ImplementationGuideTemplate]

  ImplementationGuideTemplate({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    required this.source,
    this.scope,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImplementationGuideTemplate.fromJson(
    Map<String, dynamic> json,
  ) {
    return ImplementationGuideTemplate(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      code: FhirCode.fromJson({
        'value': json['code'],
        '_value': json['_code'],
      }),
      source: FhirString.fromJson({
        'value': json['source'],
        '_value': json['_source'],
      }),
      scope: json['scope'] != null
          ? FhirString.fromJson({
              'value': json['scope'],
              '_value': json['_scope'],
            })
          : null,
    );
  }

  /// Deserialize [ImplementationGuideTemplate]
  /// from a [String] or [YamlMap] object
  factory ImplementationGuideTemplate.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? ImplementationGuideTemplate.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? ImplementationGuideTemplate.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'ImplementationGuideTemplate '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [ImplementationGuideTemplate]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImplementationGuideTemplate.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ImplementationGuideTemplate.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ImplementationGuideTemplate';

  /// [code]
  /// Type of template specified.
  final FhirCode code;

  /// [source]
  /// The source location for the template.
  final FhirString source;

  /// [scope]
  /// The scope in which the template applies.
  final FhirString? scope;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    final fieldJson2 = code.toJson();
    json['code'] = fieldJson2['value'];
    if (fieldJson2['_value'] != null) {
      json['_code'] = fieldJson2['_value'];
    }

    final fieldJson3 = source.toJson();
    json['source'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_source'] = fieldJson3['_value'];
    }

    if (scope != null) {
      final fieldJson4 = scope!.toJson();
      json['scope'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_scope'] = fieldJson4['_value'];
      }
    }

    return json;
  }

  @override
  ImplementationGuideTemplate clone() => throw UnimplementedError();
  @override
  ImplementationGuideTemplate copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    FhirString? source,
    FhirString? scope,
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
      source: source ?? this.source,
      scope: scope ?? this.scope,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ImplementationGuideManifest]
/// Information about an assembled implementation guide, created by the
/// publication tooling.
class ImplementationGuideManifest extends BackboneElement {
  /// Primary constructor for
  /// [ImplementationGuideManifest]

  ImplementationGuideManifest({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.rendering,
    required this.resource,
    this.page,
    this.image,
    this.other,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImplementationGuideManifest.fromJson(
    Map<String, dynamic> json,
  ) {
    return ImplementationGuideManifest(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      rendering: json['rendering'] != null
          ? FhirUrl.fromJson({
              'value': json['rendering'],
              '_value': json['_rendering'],
            })
          : null,
      resource: ensureNonNullList(
        (json['resource'] as List<dynamic>)
            .map<ImplementationGuideResource>(
              (v) => ImplementationGuideResource.fromJson(
                v as Map<String, dynamic>,
              ),
            )
            .toList(),
      ),
      page: json['page'] != null
          ? (json['page'] as List<dynamic>)
              .map<ImplementationGuidePage>(
                (v) => ImplementationGuidePage.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      image: parsePrimitiveList<FhirString>(
        json['image'] as List<dynamic>?,
        json['_image'] as List<dynamic>?,
        fromJson: FhirString.fromJson,
      ),
      other: parsePrimitiveList<FhirString>(
        json['other'] as List<dynamic>?,
        json['_other'] as List<dynamic>?,
        fromJson: FhirString.fromJson,
      ),
    );
  }

  /// Deserialize [ImplementationGuideManifest]
  /// from a [String] or [YamlMap] object
  factory ImplementationGuideManifest.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? ImplementationGuideManifest.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? ImplementationGuideManifest.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'ImplementationGuideManifest '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [ImplementationGuideManifest]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImplementationGuideManifest.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ImplementationGuideManifest.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ImplementationGuideManifest';

  /// [rendering]
  /// A pointer to official web page, PDF or other rendering of the
  /// implementation guide.
  final FhirUrl? rendering;

  /// [resource]
  /// A resource that is part of the implementation guide. Conformance
  /// resources (value set, structure definition, capability statements etc.)
  /// are obvious candidates for inclusion, but any kind of resource can be
  /// included as an example resource.
  final List<ImplementationGuideResource> resource;

  /// [page]
  /// Information about a page within the IG.
  final List<ImplementationGuidePage>? page;

  /// [image]
  /// Indicates a relative path to an image that exists within the IG.
  final List<FhirString>? image;

  /// [other]
  /// Indicates the relative path of an additional non-page, non-image file
  /// that is part of the IG - e.g. zip, jar and similar files that could be
  /// the target of a hyperlink in a derived IG.
  final List<FhirString>? other;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (rendering != null) {
      final fieldJson2 = rendering!.toJson();
      json['rendering'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_rendering'] = fieldJson2['_value'];
      }
    }

    json['resource'] = resource.map((e) => e.toJson()).toList();

    if (page != null && page!.isNotEmpty) {
      json['page'] = page!.map((e) => e.toJson()).toList();
    }

    if (image != null && image!.isNotEmpty) {
      final fieldJson5 = image!.map((e) => e.toJson()).toList();
      json['image'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_image'] = fieldJson5.map((e) => e['_value']).toList();
      }
    }

    if (other != null && other!.isNotEmpty) {
      final fieldJson6 = other!.map((e) => e.toJson()).toList();
      json['other'] = fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_other'] = fieldJson6.map((e) => e['_value']).toList();
      }
    }

    return json;
  }

  @override
  ImplementationGuideManifest clone() => throw UnimplementedError();
  @override
  ImplementationGuideManifest copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUrl? rendering,
    List<ImplementationGuideResource>? resource,
    List<ImplementationGuidePage>? page,
    List<FhirString>? image,
    List<FhirString>? other,
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
      resource: resource ?? this.resource,
      page: page ?? this.page,
      image: image ?? this.image,
      other: other ?? this.other,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ImplementationGuideResource1]
/// A resource that is part of the implementation guide. Conformance
/// resources (value set, structure definition, capability statements etc.)
/// are obvious candidates for inclusion, but any kind of resource can be
/// included as an example resource.
class ImplementationGuideResource1 extends BackboneElement {
  /// Primary constructor for
  /// [ImplementationGuideResource1]

  ImplementationGuideResource1({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.reference,
    this.exampleBoolean,
    this.exampleCanonical,
    this.relativePath,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImplementationGuideResource1.fromJson(
    Map<String, dynamic> json,
  ) {
    return ImplementationGuideResource1(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      reference: Reference.fromJson(
        json['reference'] as Map<String, dynamic>,
      ),
      exampleBoolean: json['exampleBoolean'] != null
          ? FhirBoolean.fromJson({
              'value': json['exampleBoolean'],
              '_value': json['_exampleBoolean'],
            })
          : null,
      exampleCanonical: json['exampleCanonical'] != null
          ? FhirCanonical.fromJson({
              'value': json['exampleCanonical'],
              '_value': json['_exampleCanonical'],
            })
          : null,
      relativePath: json['relativePath'] != null
          ? FhirUrl.fromJson({
              'value': json['relativePath'],
              '_value': json['_relativePath'],
            })
          : null,
    );
  }

  /// Deserialize [ImplementationGuideResource1]
  /// from a [String] or [YamlMap] object
  factory ImplementationGuideResource1.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? ImplementationGuideResource1.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? ImplementationGuideResource1.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'ImplementationGuideResource1 '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [ImplementationGuideResource1]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImplementationGuideResource1.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ImplementationGuideResource1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ImplementationGuideResource1';

  /// [reference]
  /// Where this resource is found.
  final Reference reference;

  /// [exampleBoolean]
  /// If true or a reference, indicates the resource is an example instance.
  /// If a reference is present, indicates that the example is an example of
  /// the specified profile.
  final FhirBoolean? exampleBoolean;

  /// [exampleCanonical]
  /// If true or a reference, indicates the resource is an example instance.
  /// If a reference is present, indicates that the example is an example of
  /// the specified profile.
  final FhirCanonical? exampleCanonical;

  /// [relativePath]
  /// The relative path for primary page for this resource within the IG.
  final FhirUrl? relativePath;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['reference'] = reference.toJson();

    if (exampleBoolean != null) {
      final fieldJson3 = exampleBoolean!.toJson();
      json['exampleBoolean'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_exampleBoolean'] = fieldJson3['_value'];
      }
    }

    if (exampleCanonical != null) {
      final fieldJson4 = exampleCanonical!.toJson();
      json['exampleCanonical'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_exampleCanonical'] = fieldJson4['_value'];
      }
    }

    if (relativePath != null) {
      final fieldJson5 = relativePath!.toJson();
      json['relativePath'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_relativePath'] = fieldJson5['_value'];
      }
    }

    return json;
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
    FhirCanonical? exampleCanonical,
    FhirUrl? relativePath,
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
      exampleCanonical: exampleCanonical ?? this.exampleCanonical,
      relativePath: relativePath ?? this.relativePath,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ImplementationGuidePage1]
/// Information about a page within the IG.
class ImplementationGuidePage1 extends BackboneElement {
  /// Primary constructor for
  /// [ImplementationGuidePage1]

  ImplementationGuidePage1({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.title,
    this.anchor,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImplementationGuidePage1.fromJson(
    Map<String, dynamic> json,
  ) {
    return ImplementationGuidePage1(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      name: FhirString.fromJson({
        'value': json['name'],
        '_value': json['_name'],
      }),
      title: json['title'] != null
          ? FhirString.fromJson({
              'value': json['title'],
              '_value': json['_title'],
            })
          : null,
      anchor: parsePrimitiveList<FhirString>(
        json['anchor'] as List<dynamic>?,
        json['_anchor'] as List<dynamic>?,
        fromJson: FhirString.fromJson,
      ),
    );
  }

  /// Deserialize [ImplementationGuidePage1]
  /// from a [String] or [YamlMap] object
  factory ImplementationGuidePage1.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? ImplementationGuidePage1.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? ImplementationGuidePage1.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'ImplementationGuidePage1 '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [ImplementationGuidePage1]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImplementationGuidePage1.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ImplementationGuidePage1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ImplementationGuidePage1';

  /// [name]
  /// Relative path to the page.
  final FhirString name;

  /// [title]
  /// Label for the page intended for human display.
  final FhirString? title;

  /// [anchor]
  /// The name of an anchor available on the page.
  final List<FhirString>? anchor;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    final fieldJson2 = name.toJson();
    json['name'] = fieldJson2['value'];
    if (fieldJson2['_value'] != null) {
      json['_name'] = fieldJson2['_value'];
    }

    if (title != null) {
      final fieldJson3 = title!.toJson();
      json['title'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_title'] = fieldJson3['_value'];
      }
    }

    if (anchor != null && anchor!.isNotEmpty) {
      final fieldJson4 = anchor!.map((e) => e.toJson()).toList();
      json['anchor'] = fieldJson4.map((e) => e['value']).toList();
      if (fieldJson4.any((e) => e['_value'] != null)) {
        json['_anchor'] = fieldJson4.map((e) => e['_value']).toList();
      }
    }

    return json;
  }

  @override
  ImplementationGuidePage1 clone() => throw UnimplementedError();
  @override
  ImplementationGuidePage1 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    FhirString? title,
    List<FhirString>? anchor,
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
      title: title ?? this.title,
      anchor: anchor ?? this.anchor,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
