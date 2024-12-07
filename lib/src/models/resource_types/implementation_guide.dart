import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ImplementationGuide]
/// A set of rules of how a particular interoperability or standards
/// problem is solved - typically through the use of FHIR resources. This
/// resource is used to gather all the parts of an implementation guide
/// into a logical whole and to publish a computable definition of all the
/// parts.
class ImplementationGuide extends CanonicalResource {
  /// Primary constructor for
  /// [ImplementationGuide]

  const ImplementationGuide({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    required super.url,
    super.version,
    required this.name,
    this.title,
    required super.status,
    super.experimental,
    super.date,
    super.publisher,
    super.contact,
    super.description,
    super.useContext,
    super.jurisdiction,
    this.copyright,
    required this.packageId,
    this.license,
    required this.fhirVersion,
    this.dependsOn,
    this.global,
    this.definition,
    this.manifest,
  }) : super(
          resourceType: R4ResourceType.ImplementationGuide,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImplementationGuide.fromJson(
    Map<String, dynamic> json,
  ) {
    return ImplementationGuide(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules:
          (json['implicitRules'] != null || json['_implicitRules'] != null)
              ? FhirUri.fromJson({
                  'value': json['implicitRules'],
                  '_value': json['_implicitRules'],
                })
              : null,
      language: (json['language'] != null || json['_language'] != null)
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
      version: (json['version'] != null || json['_version'] != null)
          ? FhirString.fromJson({
              'value': json['version'],
              '_value': json['_version'],
            })
          : null,
      name: FhirString.fromJson({
        'value': json['name'],
        '_value': json['_name'],
      }),
      title: (json['title'] != null || json['_title'] != null)
          ? FhirString.fromJson({
              'value': json['title'],
              '_value': json['_title'],
            })
          : null,
      status: PublicationStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      experimental:
          (json['experimental'] != null || json['_experimental'] != null)
              ? FhirBoolean.fromJson({
                  'value': json['experimental'],
                  '_value': json['_experimental'],
                })
              : null,
      date: (json['date'] != null || json['_date'] != null)
          ? FhirDateTime.fromJson({
              'value': json['date'],
              '_value': json['_date'],
            })
          : null,
      publisher: (json['publisher'] != null || json['_publisher'] != null)
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
      description: (json['description'] != null || json['_description'] != null)
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
      copyright: (json['copyright'] != null || json['_copyright'] != null)
          ? FhirMarkdown.fromJson({
              'value': json['copyright'],
              '_value': json['_copyright'],
            })
          : null,
      packageId: FhirId.fromJson({
        'value': json['packageId'],
        '_value': json['_packageId'],
      }),
      license: (json['license'] != null || json['_license'] != null)
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
  ) {
    if (yaml is String) {
      return ImplementationGuide.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImplementationGuide.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImplementationGuide '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImplementationGuide]
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

  /// [name]
  /// A natural language name identifying the implementation guide. This name
  /// should be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString name;

  /// [title]
  /// A short, descriptive, user-friendly title for the implementation guide.
  final FhirString? title;

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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    addField('implicitRules', implicitRules);
    addField('language', language);
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

    addField('url', url);
    addField('version', version);
    addField('name', name);
    addField('title', title);
    addField('status', status);
    addField('experimental', experimental);
    addField('date', date);
    addField('publisher', publisher);
    if (contact != null && contact!.isNotEmpty) {
      json['contact'] = contact!.map((e) => e.toJson()).toList();
    }

    addField('description', description);
    if (useContext != null && useContext!.isNotEmpty) {
      json['useContext'] = useContext!.map((e) => e.toJson()).toList();
    }

    if (jurisdiction != null && jurisdiction!.isNotEmpty) {
      json['jurisdiction'] = jurisdiction!.map((e) => e.toJson()).toList();
    }

    addField('copyright', copyright);
    addField('packageId', packageId);
    addField('license', license);
    if (fhirVersion.isNotEmpty) {
      final fieldJson0 = fhirVersion.map((e) => e.toJson()).toList();
      json['fhirVersion'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_fhirVersion'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

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

  const ImplementationGuideDependsOn({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.uri,
    this.packageId,
    this.version,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImplementationGuideDependsOn.fromJson(
    Map<String, dynamic> json,
  ) {
    return ImplementationGuideDependsOn(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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
      packageId: (json['packageId'] != null || json['_packageId'] != null)
          ? FhirId.fromJson({
              'value': json['packageId'],
              '_value': json['_packageId'],
            })
          : null,
      version: (json['version'] != null || json['_version'] != null)
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
  ) {
    if (yaml is String) {
      return ImplementationGuideDependsOn.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImplementationGuideDependsOn.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImplementationGuideDependsOn '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImplementationGuideDependsOn]
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('uri', uri);
    addField('packageId', packageId);
    addField('version', version);
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
  }) {
    return ImplementationGuideDependsOn(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      uri: uri ?? this.uri,
      packageId: packageId ?? this.packageId,
      version: version ?? this.version,
    );
  }
}

/// [ImplementationGuideGlobal]
/// A set of profiles that all resources covered by this implementation
/// guide must conform to.
class ImplementationGuideGlobal extends BackboneElement {
  /// Primary constructor for
  /// [ImplementationGuideGlobal]

  const ImplementationGuideGlobal({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    required this.profile,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImplementationGuideGlobal.fromJson(
    Map<String, dynamic> json,
  ) {
    return ImplementationGuideGlobal(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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
  ) {
    if (yaml is String) {
      return ImplementationGuideGlobal.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImplementationGuideGlobal.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImplementationGuideGlobal '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImplementationGuideGlobal]
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('type', type);
    addField('profile', profile);
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
  }) {
    return ImplementationGuideGlobal(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      profile: profile ?? this.profile,
    );
  }
}

/// [ImplementationGuideDefinition]
/// The information needed by an IG publisher tool to publish the whole
/// implementation guide.
class ImplementationGuideDefinition extends BackboneElement {
  /// Primary constructor for
  /// [ImplementationGuideDefinition]

  const ImplementationGuideDefinition({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.grouping,
    required this.resource,
    this.page,
    this.parameter,
    this.template,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImplementationGuideDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    return ImplementationGuideDefinition(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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
  ) {
    if (yaml is String) {
      return ImplementationGuideDefinition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImplementationGuideDefinition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImplementationGuideDefinition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImplementationGuideDefinition]
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
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

    if (resource.isNotEmpty) {
      json['resource'] = resource.map((e) => e.toJson()).toList();
    }

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

/// [ImplementationGuideGrouping]
/// A logical group of resources. Logical groups can be used when building
/// pages.
class ImplementationGuideGrouping extends BackboneElement {
  /// Primary constructor for
  /// [ImplementationGuideGrouping]

  const ImplementationGuideGrouping({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.description,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImplementationGuideGrouping.fromJson(
    Map<String, dynamic> json,
  ) {
    return ImplementationGuideGrouping(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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
      description: (json['description'] != null || json['_description'] != null)
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
  ) {
    if (yaml is String) {
      return ImplementationGuideGrouping.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImplementationGuideGrouping.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImplementationGuideGrouping '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImplementationGuideGrouping]
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('name', name);
    addField('description', description);
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
  }) {
    return ImplementationGuideGrouping(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      description: description ?? this.description,
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

  const ImplementationGuideResource({
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
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImplementationGuideResource.fromJson(
    Map<String, dynamic> json,
  ) {
    return ImplementationGuideResource(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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
      name: (json['name'] != null || json['_name'] != null)
          ? FhirString.fromJson({
              'value': json['name'],
              '_value': json['_name'],
            })
          : null,
      description: (json['description'] != null || json['_description'] != null)
          ? FhirString.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      exampleBoolean:
          (json['exampleBoolean'] != null || json['_exampleBoolean'] != null)
              ? FhirBoolean.fromJson({
                  'value': json['exampleBoolean'],
                  '_value': json['_exampleBoolean'],
                })
              : null,
      exampleCanonical: (json['exampleCanonical'] != null ||
              json['_exampleCanonical'] != null)
          ? FhirCanonical.fromJson({
              'value': json['exampleCanonical'],
              '_value': json['_exampleCanonical'],
            })
          : null,
      groupingId: (json['groupingId'] != null || json['_groupingId'] != null)
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
  ) {
    if (yaml is String) {
      return ImplementationGuideResource.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImplementationGuideResource.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImplementationGuideResource '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImplementationGuideResource]
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['reference'] = reference.toJson();

    if (fhirVersion != null && fhirVersion!.isNotEmpty) {
      final fieldJson0 = fhirVersion!.map((e) => e.toJson()).toList();
      json['fhirVersion'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_fhirVersion'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

    addField('name', name);
    addField('description', description);
    addField('exampleBoolean', exampleBoolean);
    addField('exampleCanonical', exampleCanonical);
    addField('groupingId', groupingId);
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
    );
  }
}

/// [ImplementationGuidePage]
/// A page / section in the implementation guide. The root page is the
/// implementation guide home page.
class ImplementationGuidePage extends BackboneElement {
  /// Primary constructor for
  /// [ImplementationGuidePage]

  const ImplementationGuidePage({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.nameUrl,
    this.nameReference,
    required this.title,
    required this.generation,
    this.page,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImplementationGuidePage.fromJson(
    Map<String, dynamic> json,
  ) {
    return ImplementationGuidePage(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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
      nameUrl: (json['nameUrl'] != null || json['_nameUrl'] != null)
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
      page: json['page'] != null
          ? (json['page'] as List<dynamic>)
              .map<ImplementationGuidePage>(
                (v) => ImplementationGuidePage.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ImplementationGuidePage]
  /// from a [String] or [YamlMap] object
  factory ImplementationGuidePage.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImplementationGuidePage.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImplementationGuidePage.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImplementationGuidePage '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImplementationGuidePage]
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

  /// [page]
  /// Nested Pages/Sections under this page.
  final List<ImplementationGuidePage>? page;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('nameUrl', nameUrl);
    if (nameReference != null) {
      json['nameReference'] = nameReference!.toJson();
    }

    addField('title', title);
    addField('generation', generation);
    if (page != null && page!.isNotEmpty) {
      json['page'] = page!.map((e) => e.toJson()).toList();
    }

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
    List<ImplementationGuidePage>? page,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ImplementationGuidePage(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      nameUrl: nameUrl ?? this.nameUrl,
      nameReference: nameReference ?? this.nameReference,
      title: title ?? this.title,
      generation: generation ?? this.generation,
      page: page ?? this.page,
    );
  }
}

/// [ImplementationGuideParameter]
/// Defines how IG is built by tools.
class ImplementationGuideParameter extends BackboneElement {
  /// Primary constructor for
  /// [ImplementationGuideParameter]

  const ImplementationGuideParameter({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    required this.value,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImplementationGuideParameter.fromJson(
    Map<String, dynamic> json,
  ) {
    return ImplementationGuideParameter(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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
  ) {
    if (yaml is String) {
      return ImplementationGuideParameter.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImplementationGuideParameter.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImplementationGuideParameter '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImplementationGuideParameter]
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('code', code);
    addField('value', value);
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
  }) {
    return ImplementationGuideParameter(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      value: value ?? this.value,
    );
  }
}

/// [ImplementationGuideTemplate]
/// A template for building resources.
class ImplementationGuideTemplate extends BackboneElement {
  /// Primary constructor for
  /// [ImplementationGuideTemplate]

  const ImplementationGuideTemplate({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    required this.source,
    this.scope,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImplementationGuideTemplate.fromJson(
    Map<String, dynamic> json,
  ) {
    return ImplementationGuideTemplate(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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
      scope: (json['scope'] != null || json['_scope'] != null)
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
  ) {
    if (yaml is String) {
      return ImplementationGuideTemplate.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImplementationGuideTemplate.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImplementationGuideTemplate '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImplementationGuideTemplate]
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('code', code);
    addField('source', source);
    addField('scope', scope);
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
  }) {
    return ImplementationGuideTemplate(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      source: source ?? this.source,
      scope: scope ?? this.scope,
    );
  }
}

/// [ImplementationGuideManifest]
/// Information about an assembled implementation guide, created by the
/// publication tooling.
class ImplementationGuideManifest extends BackboneElement {
  /// Primary constructor for
  /// [ImplementationGuideManifest]

  const ImplementationGuideManifest({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.rendering,
    required this.resource,
    this.page,
    this.image,
    this.other,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImplementationGuideManifest.fromJson(
    Map<String, dynamic> json,
  ) {
    return ImplementationGuideManifest(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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
      rendering: (json['rendering'] != null || json['_rendering'] != null)
          ? FhirUrl.fromJson({
              'value': json['rendering'],
              '_value': json['_rendering'],
            })
          : null,
      resource: ensureNonNullList(
        (json['resource'] as List<dynamic>)
            .map<ImplementationGuideResource1>(
              (v) => ImplementationGuideResource1.fromJson(
                v as Map<String, dynamic>,
              ),
            )
            .toList(),
      ),
      page: json['page'] != null
          ? (json['page'] as List<dynamic>)
              .map<ImplementationGuidePage1>(
                (v) => ImplementationGuidePage1.fromJson(
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
  ) {
    if (yaml is String) {
      return ImplementationGuideManifest.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImplementationGuideManifest.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImplementationGuideManifest '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImplementationGuideManifest]
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
  final List<ImplementationGuideResource1> resource;

  /// [page]
  /// Information about a page within the IG.
  final List<ImplementationGuidePage1>? page;

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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('rendering', rendering);
    if (resource.isNotEmpty) {
      json['resource'] = resource.map((e) => e.toJson()).toList();
    }

    if (page != null && page!.isNotEmpty) {
      json['page'] = page!.map((e) => e.toJson()).toList();
    }

    if (image != null && image!.isNotEmpty) {
      final fieldJson0 = image!.map((e) => e.toJson()).toList();
      json['image'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_image'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

    if (other != null && other!.isNotEmpty) {
      final fieldJson1 = other!.map((e) => e.toJson()).toList();
      json['other'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_other'] = fieldJson1.map((e) => e['_value']).toList();
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
    List<ImplementationGuideResource1>? resource,
    List<ImplementationGuidePage1>? page,
    List<FhirString>? image,
    List<FhirString>? other,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
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

  const ImplementationGuideResource1({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.reference,
    this.exampleBoolean,
    this.exampleCanonical,
    this.relativePath,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImplementationGuideResource1.fromJson(
    Map<String, dynamic> json,
  ) {
    return ImplementationGuideResource1(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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
      exampleBoolean:
          (json['exampleBoolean'] != null || json['_exampleBoolean'] != null)
              ? FhirBoolean.fromJson({
                  'value': json['exampleBoolean'],
                  '_value': json['_exampleBoolean'],
                })
              : null,
      exampleCanonical: (json['exampleCanonical'] != null ||
              json['_exampleCanonical'] != null)
          ? FhirCanonical.fromJson({
              'value': json['exampleCanonical'],
              '_value': json['_exampleCanonical'],
            })
          : null,
      relativePath:
          (json['relativePath'] != null || json['_relativePath'] != null)
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
  ) {
    if (yaml is String) {
      return ImplementationGuideResource1.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImplementationGuideResource1.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImplementationGuideResource1 '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImplementationGuideResource1]
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['reference'] = reference.toJson();

    addField('exampleBoolean', exampleBoolean);
    addField('exampleCanonical', exampleCanonical);
    addField('relativePath', relativePath);
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
  }) {
    return ImplementationGuideResource1(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      reference: reference ?? this.reference,
      exampleBoolean: exampleBoolean ?? this.exampleBoolean,
      exampleCanonical: exampleCanonical ?? this.exampleCanonical,
      relativePath: relativePath ?? this.relativePath,
    );
  }
}

/// [ImplementationGuidePage1]
/// Information about a page within the IG.
class ImplementationGuidePage1 extends BackboneElement {
  /// Primary constructor for
  /// [ImplementationGuidePage1]

  const ImplementationGuidePage1({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.title,
    this.anchor,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImplementationGuidePage1.fromJson(
    Map<String, dynamic> json,
  ) {
    return ImplementationGuidePage1(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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
      title: (json['title'] != null || json['_title'] != null)
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
  ) {
    if (yaml is String) {
      return ImplementationGuidePage1.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImplementationGuidePage1.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImplementationGuidePage1 '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImplementationGuidePage1]
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('name', name);
    addField('title', title);
    if (anchor != null && anchor!.isNotEmpty) {
      final fieldJson0 = anchor!.map((e) => e.toJson()).toList();
      json['anchor'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_anchor'] = fieldJson0.map((e) => e['_value']).toList();
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
  }) {
    return ImplementationGuidePage1(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      title: title ?? this.title,
      anchor: anchor ?? this.anchor,
    );
  }
}
