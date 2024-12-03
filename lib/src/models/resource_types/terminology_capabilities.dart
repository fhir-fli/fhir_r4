import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [TerminologyCapabilities]
/// A TerminologyCapabilities resource documents a set of capabilities
/// (behaviors) of a FHIR Terminology Server that may be used as a
/// statement of actual server functionality or a statement of required or
/// desired server implementation.
class TerminologyCapabilities extends CanonicalResource {
  /// Primary constructor for
  /// [TerminologyCapabilities]

  TerminologyCapabilities({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    super.url,
    super.version,
    this.name,
    this.title,
    required super.status,
    super.experimental,
    required super.date,
    super.publisher,
    super.contact,
    super.description,
    super.useContext,
    super.jurisdiction,
    this.purpose,
    this.copyright,
    required this.kind,
    this.software,
    this.implementation,
    this.lockedDate,
    this.codeSystem,
    this.expansion,
    this.codeSearch,
    this.validateCode,
    this.translation,
    this.closure,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  }) : super(
          resourceType: R4ResourceType.TerminologyCapabilities,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TerminologyCapabilities.fromJson(
    Map<String, dynamic> json,
  ) {
    return TerminologyCapabilities(
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
      url: (json['url'] != null || json['_url'] != null)
          ? FhirUri.fromJson({
              'value': json['url'],
              '_value': json['_url'],
            })
          : null,
      version: (json['version'] != null || json['_version'] != null)
          ? FhirString.fromJson({
              'value': json['version'],
              '_value': json['_version'],
            })
          : null,
      name: (json['name'] != null || json['_name'] != null)
          ? FhirString.fromJson({
              'value': json['name'],
              '_value': json['_name'],
            })
          : null,
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
      date: FhirDateTime.fromJson({
        'value': json['date'],
        '_value': json['_date'],
      }),
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
      purpose: (json['purpose'] != null || json['_purpose'] != null)
          ? FhirMarkdown.fromJson({
              'value': json['purpose'],
              '_value': json['_purpose'],
            })
          : null,
      copyright: (json['copyright'] != null || json['_copyright'] != null)
          ? FhirMarkdown.fromJson({
              'value': json['copyright'],
              '_value': json['_copyright'],
            })
          : null,
      kind: CapabilityStatementKind.fromJson({
        'value': json['kind'],
        '_value': json['_kind'],
      }),
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
      lockedDate: (json['lockedDate'] != null || json['_lockedDate'] != null)
          ? FhirBoolean.fromJson({
              'value': json['lockedDate'],
              '_value': json['_lockedDate'],
            })
          : null,
      codeSystem: json['codeSystem'] != null
          ? (json['codeSystem'] as List<dynamic>)
              .map<TerminologyCapabilitiesCodeSystem>(
                (v) => TerminologyCapabilitiesCodeSystem.fromJson(
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
      codeSearch: (json['codeSearch'] != null || json['_codeSearch'] != null)
          ? CodeSearchSupport.fromJson({
              'value': json['codeSearch'],
              '_value': json['_codeSearch'],
            })
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

  /// Deserialize [TerminologyCapabilities]
  /// from a [String] or [YamlMap] object
  factory TerminologyCapabilities.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TerminologyCapabilities.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TerminologyCapabilities.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TerminologyCapabilities '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TerminologyCapabilities]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TerminologyCapabilities.fromJsonString(
    String source,
  ) {
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

  /// [name]
  /// A natural language name identifying the terminology capabilities. This
  /// name should be usable as an identifier for the module by machine
  /// processing applications such as code generation.
  final FhirString? name;

  /// [title]
  /// A short, descriptive, user-friendly title for the terminology
  /// capabilities.
  final FhirString? title;

  /// [purpose]
  /// Explanation of why this terminology capabilities is needed and why it
  /// has been designed as it has.
  final FhirMarkdown? purpose;

  /// [copyright]
  /// A copyright statement relating to the terminology capabilities and/or
  /// its contents. Copyright statements are generally legal restrictions on
  /// the use and publishing of the terminology capabilities.
  final FhirMarkdown? copyright;

  /// [kind]
  /// The way that this statement is intended to be used, to describe an
  /// actual running instance of software, a particular product (kind, not
  /// instance of software) or a class of implementation (e.g. a desired
  /// purchase).
  final CapabilityStatementKind kind;

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

    addField('purpose', purpose);
    addField('copyright', copyright);
    addField('kind', kind);
    if (software != null) {
      json['software'] = software!.toJson();
    }

    if (implementation != null) {
      json['implementation'] = implementation!.toJson();
    }

    addField('lockedDate', lockedDate);
    if (codeSystem != null && codeSystem!.isNotEmpty) {
      json['codeSystem'] = codeSystem!.map((e) => e.toJson()).toList();
    }

    if (expansion != null) {
      json['expansion'] = expansion!.toJson();
    }

    addField('codeSearch', codeSearch);
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
    FhirMarkdown? purpose,
    FhirMarkdown? copyright,
    CapabilityStatementKind? kind,
    TerminologyCapabilitiesSoftware? software,
    TerminologyCapabilitiesImplementation? implementation,
    FhirBoolean? lockedDate,
    List<TerminologyCapabilitiesCodeSystem>? codeSystem,
    TerminologyCapabilitiesExpansion? expansion,
    CodeSearchSupport? codeSearch,
    TerminologyCapabilitiesValidateCode? validateCode,
    TerminologyCapabilitiesTranslation? translation,
    TerminologyCapabilitiesClosure? closure,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return TerminologyCapabilities(
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
      purpose: purpose ?? this.purpose,
      copyright: copyright ?? this.copyright,
      kind: kind ?? this.kind,
      software: software ?? this.software,
      implementation: implementation ?? this.implementation,
      lockedDate: lockedDate ?? this.lockedDate,
      codeSystem: codeSystem ?? this.codeSystem,
      expansion: expansion ?? this.expansion,
      codeSearch: codeSearch ?? this.codeSearch,
      validateCode: validateCode ?? this.validateCode,
      translation: translation ?? this.translation,
      closure: closure ?? this.closure,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [TerminologyCapabilitiesSoftware]
/// Software that is covered by this terminology capability statement. It
/// is used when the statement describes the capabilities of a particular
/// software version, independent of an installation.
class TerminologyCapabilitiesSoftware extends BackboneElement {
  /// Primary constructor for
  /// [TerminologyCapabilitiesSoftware]

  TerminologyCapabilitiesSoftware({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.version,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TerminologyCapabilitiesSoftware.fromJson(
    Map<String, dynamic> json,
  ) {
    return TerminologyCapabilitiesSoftware(
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
      version: (json['version'] != null || json['_version'] != null)
          ? FhirString.fromJson({
              'value': json['version'],
              '_value': json['_version'],
            })
          : null,
    );
  }

  /// Deserialize [TerminologyCapabilitiesSoftware]
  /// from a [String] or [YamlMap] object
  factory TerminologyCapabilitiesSoftware.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TerminologyCapabilitiesSoftware.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TerminologyCapabilitiesSoftware.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TerminologyCapabilitiesSoftware '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TerminologyCapabilitiesSoftware]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TerminologyCapabilitiesSoftware.fromJsonString(
    String source,
  ) {
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

  /// [version]
  /// The version identifier for the software covered by this statement.
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

    addField('name', name);
    addField('version', version);
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
    FhirString? version,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return TerminologyCapabilitiesSoftware(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      version: version ?? this.version,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [TerminologyCapabilitiesImplementation]
/// Identifies a specific implementation instance that is described by the
/// terminology capability statement - i.e. a particular installation,
/// rather than the capabilities of a software program.
class TerminologyCapabilitiesImplementation extends BackboneElement {
  /// Primary constructor for
  /// [TerminologyCapabilitiesImplementation]

  TerminologyCapabilitiesImplementation({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.description,
    this.url,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TerminologyCapabilitiesImplementation.fromJson(
    Map<String, dynamic> json,
  ) {
    return TerminologyCapabilitiesImplementation(
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
      description: FhirString.fromJson({
        'value': json['description'],
        '_value': json['_description'],
      }),
      url: (json['url'] != null || json['_url'] != null)
          ? FhirUrl.fromJson({
              'value': json['url'],
              '_value': json['_url'],
            })
          : null,
    );
  }

  /// Deserialize [TerminologyCapabilitiesImplementation]
  /// from a [String] or [YamlMap] object
  factory TerminologyCapabilitiesImplementation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TerminologyCapabilitiesImplementation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TerminologyCapabilitiesImplementation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TerminologyCapabilitiesImplementation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TerminologyCapabilitiesImplementation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TerminologyCapabilitiesImplementation.fromJsonString(
    String source,
  ) {
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

  /// [url]
  /// An absolute base URL for the implementation.
  final FhirUrl? url;
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

    addField('description', description);
    addField('url', url);
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
    FhirUrl? url,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return TerminologyCapabilitiesImplementation(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      url: url ?? this.url,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [TerminologyCapabilitiesCodeSystem]
/// Identifies a code system that is supported by the server. If there is a
/// no code system URL, then this declares the general assumptions a client
/// can make about support for any CodeSystem resource.
class TerminologyCapabilitiesCodeSystem extends BackboneElement {
  /// Primary constructor for
  /// [TerminologyCapabilitiesCodeSystem]

  TerminologyCapabilitiesCodeSystem({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.uri,
    this.version,
    this.subsumption,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TerminologyCapabilitiesCodeSystem.fromJson(
    Map<String, dynamic> json,
  ) {
    return TerminologyCapabilitiesCodeSystem(
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
      uri: (json['uri'] != null || json['_uri'] != null)
          ? FhirCanonical.fromJson({
              'value': json['uri'],
              '_value': json['_uri'],
            })
          : null,
      version: json['version'] != null
          ? (json['version'] as List<dynamic>)
              .map<TerminologyCapabilitiesVersion>(
                (v) => TerminologyCapabilitiesVersion.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      subsumption: (json['subsumption'] != null || json['_subsumption'] != null)
          ? FhirBoolean.fromJson({
              'value': json['subsumption'],
              '_value': json['_subsumption'],
            })
          : null,
    );
  }

  /// Deserialize [TerminologyCapabilitiesCodeSystem]
  /// from a [String] or [YamlMap] object
  factory TerminologyCapabilitiesCodeSystem.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TerminologyCapabilitiesCodeSystem.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TerminologyCapabilitiesCodeSystem.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TerminologyCapabilitiesCodeSystem '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TerminologyCapabilitiesCodeSystem]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TerminologyCapabilitiesCodeSystem.fromJsonString(
    String source,
  ) {
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

  /// [version]
  /// For the code system, a list of versions that are supported by the
  /// server.
  final List<TerminologyCapabilitiesVersion>? version;

  /// [subsumption]
  /// True if subsumption is supported for this version of the code system.
  final FhirBoolean? subsumption;
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
    if (version != null && version!.isNotEmpty) {
      json['version'] = version!.map((e) => e.toJson()).toList();
    }

    addField('subsumption', subsumption);
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
    List<TerminologyCapabilitiesVersion>? version,
    FhirBoolean? subsumption,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return TerminologyCapabilitiesCodeSystem(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      uri: uri ?? this.uri,
      version: version ?? this.version,
      subsumption: subsumption ?? this.subsumption,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [TerminologyCapabilitiesVersion]
/// For the code system, a list of versions that are supported by the
/// server.
class TerminologyCapabilitiesVersion extends BackboneElement {
  /// Primary constructor for
  /// [TerminologyCapabilitiesVersion]

  TerminologyCapabilitiesVersion({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.isDefault,
    this.compositional,
    this.language,
    this.filter,
    this.property,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TerminologyCapabilitiesVersion.fromJson(
    Map<String, dynamic> json,
  ) {
    return TerminologyCapabilitiesVersion(
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
      code: (json['code'] != null || json['_code'] != null)
          ? FhirString.fromJson({
              'value': json['code'],
              '_value': json['_code'],
            })
          : null,
      isDefault: (json['isDefault'] != null || json['_isDefault'] != null)
          ? FhirBoolean.fromJson({
              'value': json['isDefault'],
              '_value': json['_isDefault'],
            })
          : null,
      compositional:
          (json['compositional'] != null || json['_compositional'] != null)
              ? FhirBoolean.fromJson({
                  'value': json['compositional'],
                  '_value': json['_compositional'],
                })
              : null,
      language: parsePrimitiveList<FhirCode>(
        json['language'] as List<dynamic>?,
        json['_language'] as List<dynamic>?,
        fromJson: FhirCode.fromJson,
      ),
      filter: json['filter'] != null
          ? (json['filter'] as List<dynamic>)
              .map<TerminologyCapabilitiesFilter>(
                (v) => TerminologyCapabilitiesFilter.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      property: parsePrimitiveList<FhirCode>(
        json['property'] as List<dynamic>?,
        json['_property'] as List<dynamic>?,
        fromJson: FhirCode.fromJson,
      ),
    );
  }

  /// Deserialize [TerminologyCapabilitiesVersion]
  /// from a [String] or [YamlMap] object
  factory TerminologyCapabilitiesVersion.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TerminologyCapabilitiesVersion.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TerminologyCapabilitiesVersion.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TerminologyCapabilitiesVersion '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TerminologyCapabilitiesVersion]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TerminologyCapabilitiesVersion.fromJsonString(
    String source,
  ) {
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

  /// [isDefault]
  /// If this is the default version for this code system.
  final FhirBoolean? isDefault;

  /// [compositional]
  /// If the compositional grammar defined by the code system is supported.
  final FhirBoolean? compositional;

  /// [language]
  /// Language Displays supported.
  final List<FhirCode>? language;

  /// [filter]
  /// Filter Properties supported.
  final List<TerminologyCapabilitiesFilter>? filter;

  /// [property]
  /// Properties supported for $lookup.
  final List<FhirCode>? property;
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
    addField('isDefault', isDefault);
    addField('compositional', compositional);
    if (language != null && language!.isNotEmpty) {
      final fieldJson0 = language!.map((e) => e.toJson()).toList();
      json['language'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_language'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

    if (filter != null && filter!.isNotEmpty) {
      json['filter'] = filter!.map((e) => e.toJson()).toList();
    }

    if (property != null && property!.isNotEmpty) {
      final fieldJson1 = property!.map((e) => e.toJson()).toList();
      json['property'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_property'] = fieldJson1.map((e) => e['_value']).toList();
      }
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
    FhirBoolean? isDefault,
    FhirBoolean? compositional,
    List<FhirCode>? language,
    List<TerminologyCapabilitiesFilter>? filter,
    List<FhirCode>? property,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return TerminologyCapabilitiesVersion(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      isDefault: isDefault ?? this.isDefault,
      compositional: compositional ?? this.compositional,
      language: language ?? this.language,
      filter: filter ?? this.filter,
      property: property ?? this.property,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [TerminologyCapabilitiesFilter]
/// Filter Properties supported.
class TerminologyCapabilitiesFilter extends BackboneElement {
  /// Primary constructor for
  /// [TerminologyCapabilitiesFilter]

  TerminologyCapabilitiesFilter({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    required this.op,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TerminologyCapabilitiesFilter.fromJson(
    Map<String, dynamic> json,
  ) {
    return TerminologyCapabilitiesFilter(
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
      op: ensureNonNullList(
        parsePrimitiveList<FhirCode>(
          json['op'] as List<dynamic>?,
          json['_op'] as List<dynamic>?,
          fromJson: FhirCode.fromJson,
        ),
      ),
    );
  }

  /// Deserialize [TerminologyCapabilitiesFilter]
  /// from a [String] or [YamlMap] object
  factory TerminologyCapabilitiesFilter.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TerminologyCapabilitiesFilter.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TerminologyCapabilitiesFilter.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TerminologyCapabilitiesFilter '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TerminologyCapabilitiesFilter]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TerminologyCapabilitiesFilter.fromJsonString(
    String source,
  ) {
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

  /// [op]
  /// Operations supported for the property.
  final List<FhirCode> op;
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
    if (op.isNotEmpty) {
      final fieldJson0 = op.map((e) => e.toJson()).toList();
      json['op'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_op'] = fieldJson0.map((e) => e['_value']).toList();
      }
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
    List<FhirCode>? op,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return TerminologyCapabilitiesFilter(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      op: op ?? this.op,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [TerminologyCapabilitiesExpansion]
/// Information about the
/// [ValueSet/$expand](valueset-operation-expand.html) operation.
class TerminologyCapabilitiesExpansion extends BackboneElement {
  /// Primary constructor for
  /// [TerminologyCapabilitiesExpansion]

  TerminologyCapabilitiesExpansion({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.hierarchical,
    this.paging,
    this.incomplete,
    this.parameter,
    this.textFilter,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TerminologyCapabilitiesExpansion.fromJson(
    Map<String, dynamic> json,
  ) {
    return TerminologyCapabilitiesExpansion(
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
      hierarchical:
          (json['hierarchical'] != null || json['_hierarchical'] != null)
              ? FhirBoolean.fromJson({
                  'value': json['hierarchical'],
                  '_value': json['_hierarchical'],
                })
              : null,
      paging: (json['paging'] != null || json['_paging'] != null)
          ? FhirBoolean.fromJson({
              'value': json['paging'],
              '_value': json['_paging'],
            })
          : null,
      incomplete: (json['incomplete'] != null || json['_incomplete'] != null)
          ? FhirBoolean.fromJson({
              'value': json['incomplete'],
              '_value': json['_incomplete'],
            })
          : null,
      parameter: json['parameter'] != null
          ? (json['parameter'] as List<dynamic>)
              .map<TerminologyCapabilitiesParameter>(
                (v) => TerminologyCapabilitiesParameter.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      textFilter: (json['textFilter'] != null || json['_textFilter'] != null)
          ? FhirMarkdown.fromJson({
              'value': json['textFilter'],
              '_value': json['_textFilter'],
            })
          : null,
    );
  }

  /// Deserialize [TerminologyCapabilitiesExpansion]
  /// from a [String] or [YamlMap] object
  factory TerminologyCapabilitiesExpansion.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TerminologyCapabilitiesExpansion.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TerminologyCapabilitiesExpansion.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TerminologyCapabilitiesExpansion '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TerminologyCapabilitiesExpansion]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TerminologyCapabilitiesExpansion.fromJsonString(
    String source,
  ) {
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

  /// [paging]
  /// Whether the server supports paging on expansion.
  final FhirBoolean? paging;

  /// [incomplete]
  /// Allow request for incomplete expansions?
  final FhirBoolean? incomplete;

  /// [parameter]
  /// Supported expansion parameter.
  final List<TerminologyCapabilitiesParameter>? parameter;

  /// [textFilter]
  /// Documentation about text searching works.
  final FhirMarkdown? textFilter;
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

    addField('hierarchical', hierarchical);
    addField('paging', paging);
    addField('incomplete', incomplete);
    if (parameter != null && parameter!.isNotEmpty) {
      json['parameter'] = parameter!.map((e) => e.toJson()).toList();
    }

    addField('textFilter', textFilter);
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
    FhirBoolean? paging,
    FhirBoolean? incomplete,
    List<TerminologyCapabilitiesParameter>? parameter,
    FhirMarkdown? textFilter,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return TerminologyCapabilitiesExpansion(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      hierarchical: hierarchical ?? this.hierarchical,
      paging: paging ?? this.paging,
      incomplete: incomplete ?? this.incomplete,
      parameter: parameter ?? this.parameter,
      textFilter: textFilter ?? this.textFilter,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [TerminologyCapabilitiesParameter]
/// Supported expansion parameter.
class TerminologyCapabilitiesParameter extends BackboneElement {
  /// Primary constructor for
  /// [TerminologyCapabilitiesParameter]

  TerminologyCapabilitiesParameter({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.documentation,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TerminologyCapabilitiesParameter.fromJson(
    Map<String, dynamic> json,
  ) {
    return TerminologyCapabilitiesParameter(
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
      name: FhirCode.fromJson({
        'value': json['name'],
        '_value': json['_name'],
      }),
      documentation:
          (json['documentation'] != null || json['_documentation'] != null)
              ? FhirString.fromJson({
                  'value': json['documentation'],
                  '_value': json['_documentation'],
                })
              : null,
    );
  }

  /// Deserialize [TerminologyCapabilitiesParameter]
  /// from a [String] or [YamlMap] object
  factory TerminologyCapabilitiesParameter.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TerminologyCapabilitiesParameter.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TerminologyCapabilitiesParameter.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TerminologyCapabilitiesParameter '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TerminologyCapabilitiesParameter]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TerminologyCapabilitiesParameter.fromJsonString(
    String source,
  ) {
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

  /// [documentation]
  /// Description of support for parameter.
  final FhirString? documentation;
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
    addField('documentation', documentation);
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
    FhirString? documentation,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return TerminologyCapabilitiesParameter(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      documentation: documentation ?? this.documentation,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [TerminologyCapabilitiesValidateCode]
/// Information about the
/// [ValueSet/$validate-code](valueset-operation-validate-code.html)
/// operation.
class TerminologyCapabilitiesValidateCode extends BackboneElement {
  /// Primary constructor for
  /// [TerminologyCapabilitiesValidateCode]

  TerminologyCapabilitiesValidateCode({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.translations,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TerminologyCapabilitiesValidateCode.fromJson(
    Map<String, dynamic> json,
  ) {
    return TerminologyCapabilitiesValidateCode(
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
      translations: FhirBoolean.fromJson({
        'value': json['translations'],
        '_value': json['_translations'],
      }),
    );
  }

  /// Deserialize [TerminologyCapabilitiesValidateCode]
  /// from a [String] or [YamlMap] object
  factory TerminologyCapabilitiesValidateCode.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TerminologyCapabilitiesValidateCode.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TerminologyCapabilitiesValidateCode.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TerminologyCapabilitiesValidateCode '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TerminologyCapabilitiesValidateCode]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TerminologyCapabilitiesValidateCode.fromJsonString(
    String source,
  ) {
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

    addField('translations', translations);
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return TerminologyCapabilitiesValidateCode(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      translations: translations ?? this.translations,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [TerminologyCapabilitiesTranslation]
/// Information about the
/// [ConceptMap/$translate](conceptmap-operation-translate.html) operation.
class TerminologyCapabilitiesTranslation extends BackboneElement {
  /// Primary constructor for
  /// [TerminologyCapabilitiesTranslation]

  TerminologyCapabilitiesTranslation({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.needsMap,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TerminologyCapabilitiesTranslation.fromJson(
    Map<String, dynamic> json,
  ) {
    return TerminologyCapabilitiesTranslation(
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
      needsMap: FhirBoolean.fromJson({
        'value': json['needsMap'],
        '_value': json['_needsMap'],
      }),
    );
  }

  /// Deserialize [TerminologyCapabilitiesTranslation]
  /// from a [String] or [YamlMap] object
  factory TerminologyCapabilitiesTranslation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TerminologyCapabilitiesTranslation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TerminologyCapabilitiesTranslation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TerminologyCapabilitiesTranslation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TerminologyCapabilitiesTranslation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TerminologyCapabilitiesTranslation.fromJsonString(
    String source,
  ) {
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

    addField('needsMap', needsMap);
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return TerminologyCapabilitiesTranslation(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      needsMap: needsMap ?? this.needsMap,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [TerminologyCapabilitiesClosure]
/// Whether the $closure operation is supported.
class TerminologyCapabilitiesClosure extends BackboneElement {
  /// Primary constructor for
  /// [TerminologyCapabilitiesClosure]

  TerminologyCapabilitiesClosure({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.translation,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TerminologyCapabilitiesClosure.fromJson(
    Map<String, dynamic> json,
  ) {
    return TerminologyCapabilitiesClosure(
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
      translation: (json['translation'] != null || json['_translation'] != null)
          ? FhirBoolean.fromJson({
              'value': json['translation'],
              '_value': json['_translation'],
            })
          : null,
    );
  }

  /// Deserialize [TerminologyCapabilitiesClosure]
  /// from a [String] or [YamlMap] object
  factory TerminologyCapabilitiesClosure.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TerminologyCapabilitiesClosure.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TerminologyCapabilitiesClosure.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TerminologyCapabilitiesClosure '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TerminologyCapabilitiesClosure]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TerminologyCapabilitiesClosure.fromJsonString(
    String source,
  ) {
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

    addField('translation', translation);
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return TerminologyCapabilitiesClosure(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      translation: translation ?? this.translation,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}
