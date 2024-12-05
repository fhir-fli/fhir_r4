import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [CapabilityStatement]
/// A Capability Statement documents a set of capabilities (behaviors) of a
/// FHIR Server for a particular version of FHIR that may be used as a
/// statement of actual server functionality or a statement of required or
/// desired server implementation.
class CapabilityStatement extends CanonicalResource {
  /// Primary constructor for
  /// [CapabilityStatement]

  const CapabilityStatement({
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
    this.instantiates,
    this.imports,
    this.software,
    this.implementation,
    required this.fhirVersion,
    required this.format,
    this.patchFormat,
    this.implementationGuide,
    this.rest,
    this.messaging,
    this.document,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  }) : super(
          resourceType: R4ResourceType.CapabilityStatement,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatement.fromJson(
    Map<String, dynamic> json,
  ) {
    return CapabilityStatement(
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
      instantiates: parsePrimitiveList<FhirCanonical>(
        json['instantiates'] as List<dynamic>?,
        json['_instantiates'] as List<dynamic>?,
        fromJson: FhirCanonical.fromJson,
      ),
      imports: parsePrimitiveList<FhirCanonical>(
        json['imports'] as List<dynamic>?,
        json['_imports'] as List<dynamic>?,
        fromJson: FhirCanonical.fromJson,
      ),
      software: json['software'] != null
          ? CapabilityStatementSoftware.fromJson(
              json['software'] as Map<String, dynamic>,
            )
          : null,
      implementation: json['implementation'] != null
          ? CapabilityStatementImplementation.fromJson(
              json['implementation'] as Map<String, dynamic>,
            )
          : null,
      fhirVersion: FHIRVersion.fromJson({
        'value': json['fhirVersion'],
        '_value': json['_fhirVersion'],
      }),
      format: ensureNonNullList(
        parsePrimitiveList<FhirCode>(
          json['format'] as List<dynamic>?,
          json['_format'] as List<dynamic>?,
          fromJson: FhirCode.fromJson,
        ),
      ),
      patchFormat: parsePrimitiveList<FhirCode>(
        json['patchFormat'] as List<dynamic>?,
        json['_patchFormat'] as List<dynamic>?,
        fromJson: FhirCode.fromJson,
      ),
      implementationGuide: parsePrimitiveList<FhirCanonical>(
        json['implementationGuide'] as List<dynamic>?,
        json['_implementationGuide'] as List<dynamic>?,
        fromJson: FhirCanonical.fromJson,
      ),
      rest: json['rest'] != null
          ? (json['rest'] as List<dynamic>)
              .map<CapabilityStatementRest>(
                (v) => CapabilityStatementRest.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      messaging: json['messaging'] != null
          ? (json['messaging'] as List<dynamic>)
              .map<CapabilityStatementMessaging>(
                (v) => CapabilityStatementMessaging.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      document: json['document'] != null
          ? (json['document'] as List<dynamic>)
              .map<CapabilityStatementDocument>(
                (v) => CapabilityStatementDocument.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [CapabilityStatement]
  /// from a [String] or [YamlMap] object
  factory CapabilityStatement.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CapabilityStatement.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CapabilityStatement.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CapabilityStatement '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CapabilityStatement]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CapabilityStatement.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CapabilityStatement.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CapabilityStatement';

  /// [name]
  /// A natural language name identifying the capability statement. This name
  /// should be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString? name;

  /// [title]
  /// A short, descriptive, user-friendly title for the capability statement.
  final FhirString? title;

  /// [purpose]
  /// Explanation of why this capability statement is needed and why it has
  /// been designed as it has.
  final FhirMarkdown? purpose;

  /// [copyright]
  /// A copyright statement relating to the capability statement and/or its
  /// contents. Copyright statements are generally legal restrictions on the
  /// use and publishing of the capability statement.
  final FhirMarkdown? copyright;

  /// [kind]
  /// The way that this statement is intended to be used, to describe an
  /// actual running instance of software, a particular product (kind, not
  /// instance of software) or a class of implementation (e.g. a desired
  /// purchase).
  final CapabilityStatementKind kind;

  /// [instantiates]
  /// Reference to a canonical URL of another CapabilityStatement that this
  /// software implements. This capability statement is a published API
  /// description that corresponds to a business service. The server may
  /// actually implement a subset of the capability statement it claims to
  /// implement, so the capability statement must specify the full capability
  /// details.
  final List<FhirCanonical>? instantiates;

  /// [imports]
  /// Reference to a canonical URL of another CapabilityStatement that this
  /// software adds to. The capability statement automatically includes
  /// everything in the other statement, and it is not duplicated, though the
  /// server may repeat the same resources, interactions and operations to
  /// add additional details to them.
  final List<FhirCanonical>? imports;

  /// [software]
  /// Software that is covered by this capability statement. It is used when
  /// the capability statement describes the capabilities of a particular
  /// software version, independent of an installation.
  final CapabilityStatementSoftware? software;

  /// [implementation]
  /// Identifies a specific implementation instance that is described by the
  /// capability statement - i.e. a particular installation, rather than the
  /// capabilities of a software program.
  final CapabilityStatementImplementation? implementation;

  /// [fhirVersion]
  /// The version of the FHIR specification that this CapabilityStatement
  /// describes (which SHALL be the same as the FHIR version of the
  /// CapabilityStatement itself). There is no default value.
  final FHIRVersion fhirVersion;

  /// [format]
  /// A list of the formats supported by this implementation using their
  /// content types.
  final List<FhirCode> format;

  /// [patchFormat]
  /// A list of the patch formats supported by this implementation using
  /// their content types.
  final List<FhirCode>? patchFormat;

  /// [implementationGuide]
  /// A list of implementation guides that the server does (or should)
  /// support in their entirety.
  final List<FhirCanonical>? implementationGuide;

  /// [rest]
  /// A definition of the restful capabilities of the solution, if any.
  final List<CapabilityStatementRest>? rest;

  /// [messaging]
  /// A description of the messaging capabilities of the solution.
  final List<CapabilityStatementMessaging>? messaging;

  /// [document]
  /// A document definition.
  final List<CapabilityStatementDocument>? document;
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
    if (instantiates != null && instantiates!.isNotEmpty) {
      final fieldJson0 = instantiates!.map((e) => e.toJson()).toList();
      json['instantiates'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_instantiates'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

    if (imports != null && imports!.isNotEmpty) {
      final fieldJson1 = imports!.map((e) => e.toJson()).toList();
      json['imports'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_imports'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (software != null) {
      json['software'] = software!.toJson();
    }

    if (implementation != null) {
      json['implementation'] = implementation!.toJson();
    }

    addField('fhirVersion', fhirVersion);
    if (format.isNotEmpty) {
      final fieldJson2 = format.map((e) => e.toJson()).toList();
      json['format'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_format'] = fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (patchFormat != null && patchFormat!.isNotEmpty) {
      final fieldJson3 = patchFormat!.map((e) => e.toJson()).toList();
      json['patchFormat'] = fieldJson3.map((e) => e['value']).toList();
      if (fieldJson3.any((e) => e['_value'] != null)) {
        json['_patchFormat'] = fieldJson3.map((e) => e['_value']).toList();
      }
    }

    if (implementationGuide != null && implementationGuide!.isNotEmpty) {
      final fieldJson4 = implementationGuide!.map((e) => e.toJson()).toList();
      json['implementationGuide'] = fieldJson4.map((e) => e['value']).toList();
      if (fieldJson4.any((e) => e['_value'] != null)) {
        json['_implementationGuide'] =
            fieldJson4.map((e) => e['_value']).toList();
      }
    }

    if (rest != null && rest!.isNotEmpty) {
      json['rest'] = rest!.map((e) => e.toJson()).toList();
    }

    if (messaging != null && messaging!.isNotEmpty) {
      json['messaging'] = messaging!.map((e) => e.toJson()).toList();
    }

    if (document != null && document!.isNotEmpty) {
      json['document'] = document!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  CapabilityStatement clone() => throw UnimplementedError();
  @override
  CapabilityStatement copyWith({
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
    List<FhirCanonical>? instantiates,
    List<FhirCanonical>? imports,
    CapabilityStatementSoftware? software,
    CapabilityStatementImplementation? implementation,
    FHIRVersion? fhirVersion,
    List<FhirCode>? format,
    List<FhirCode>? patchFormat,
    List<FhirCanonical>? implementationGuide,
    List<CapabilityStatementRest>? rest,
    List<CapabilityStatementMessaging>? messaging,
    List<CapabilityStatementDocument>? document,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return CapabilityStatement(
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
      instantiates: instantiates ?? this.instantiates,
      imports: imports ?? this.imports,
      software: software ?? this.software,
      implementation: implementation ?? this.implementation,
      fhirVersion: fhirVersion ?? this.fhirVersion,
      format: format ?? this.format,
      patchFormat: patchFormat ?? this.patchFormat,
      implementationGuide: implementationGuide ?? this.implementationGuide,
      rest: rest ?? this.rest,
      messaging: messaging ?? this.messaging,
      document: document ?? this.document,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [CapabilityStatementSoftware]
/// Software that is covered by this capability statement. It is used when
/// the capability statement describes the capabilities of a particular
/// software version, independent of an installation.
class CapabilityStatementSoftware extends BackboneElement {
  /// Primary constructor for
  /// [CapabilityStatementSoftware]

  const CapabilityStatementSoftware({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.version,
    this.releaseDate,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementSoftware.fromJson(
    Map<String, dynamic> json,
  ) {
    return CapabilityStatementSoftware(
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
      releaseDate: (json['releaseDate'] != null || json['_releaseDate'] != null)
          ? FhirDateTime.fromJson({
              'value': json['releaseDate'],
              '_value': json['_releaseDate'],
            })
          : null,
    );
  }

  /// Deserialize [CapabilityStatementSoftware]
  /// from a [String] or [YamlMap] object
  factory CapabilityStatementSoftware.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CapabilityStatementSoftware.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CapabilityStatementSoftware.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CapabilityStatementSoftware '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CapabilityStatementSoftware]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CapabilityStatementSoftware.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CapabilityStatementSoftware.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CapabilityStatementSoftware';

  /// [name]
  /// Name the software is known by.
  final FhirString name;

  /// [version]
  /// The version identifier for the software covered by this statement.
  final FhirString? version;

  /// [releaseDate]
  /// Date this version of the software was released.
  final FhirDateTime? releaseDate;
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
    addField('releaseDate', releaseDate);
    return json;
  }

  @override
  CapabilityStatementSoftware clone() => throw UnimplementedError();
  @override
  CapabilityStatementSoftware copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    FhirString? version,
    FhirDateTime? releaseDate,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return CapabilityStatementSoftware(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      version: version ?? this.version,
      releaseDate: releaseDate ?? this.releaseDate,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [CapabilityStatementImplementation]
/// Identifies a specific implementation instance that is described by the
/// capability statement - i.e. a particular installation, rather than the
/// capabilities of a software program.
class CapabilityStatementImplementation extends BackboneElement {
  /// Primary constructor for
  /// [CapabilityStatementImplementation]

  const CapabilityStatementImplementation({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.description,
    this.url,
    this.custodian,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementImplementation.fromJson(
    Map<String, dynamic> json,
  ) {
    return CapabilityStatementImplementation(
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
      custodian: json['custodian'] != null
          ? Reference.fromJson(
              json['custodian'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [CapabilityStatementImplementation]
  /// from a [String] or [YamlMap] object
  factory CapabilityStatementImplementation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CapabilityStatementImplementation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CapabilityStatementImplementation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CapabilityStatementImplementation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CapabilityStatementImplementation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CapabilityStatementImplementation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CapabilityStatementImplementation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CapabilityStatementImplementation';

  /// [description]
  /// Information about the specific installation that this capability
  /// statement relates to.
  final FhirString description;

  /// [url]
  /// An absolute base URL for the implementation. This forms the base for
  /// REST interfaces as well as the mailbox and document interfaces.
  final FhirUrl? url;

  /// [custodian]
  /// The organization responsible for the management of the instance and
  /// oversight of the data on the server at the specified URL.
  final Reference? custodian;
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
    if (custodian != null) {
      json['custodian'] = custodian!.toJson();
    }

    return json;
  }

  @override
  CapabilityStatementImplementation clone() => throw UnimplementedError();
  @override
  CapabilityStatementImplementation copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    FhirUrl? url,
    Reference? custodian,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return CapabilityStatementImplementation(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      url: url ?? this.url,
      custodian: custodian ?? this.custodian,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [CapabilityStatementRest]
/// A definition of the restful capabilities of the solution, if any.
class CapabilityStatementRest extends BackboneElement {
  /// Primary constructor for
  /// [CapabilityStatementRest]

  const CapabilityStatementRest({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.mode,
    this.documentation,
    this.security,
    this.resource,
    this.interaction,
    this.searchParam,
    this.operation,
    this.compartment,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementRest.fromJson(
    Map<String, dynamic> json,
  ) {
    return CapabilityStatementRest(
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
      mode: RestfulCapabilityMode.fromJson({
        'value': json['mode'],
        '_value': json['_mode'],
      }),
      documentation:
          (json['documentation'] != null || json['_documentation'] != null)
              ? FhirMarkdown.fromJson({
                  'value': json['documentation'],
                  '_value': json['_documentation'],
                })
              : null,
      security: json['security'] != null
          ? CapabilityStatementSecurity.fromJson(
              json['security'] as Map<String, dynamic>,
            )
          : null,
      resource: json['resource'] != null
          ? (json['resource'] as List<dynamic>)
              .map<CapabilityStatementResource>(
                (v) => CapabilityStatementResource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      interaction: json['interaction'] != null
          ? (json['interaction'] as List<dynamic>)
              .map<CapabilityStatementInteraction>(
                (v) => CapabilityStatementInteraction.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      searchParam: json['searchParam'] != null
          ? (json['searchParam'] as List<dynamic>)
              .map<CapabilityStatementSearchParam>(
                (v) => CapabilityStatementSearchParam.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      operation: json['operation'] != null
          ? (json['operation'] as List<dynamic>)
              .map<CapabilityStatementOperation>(
                (v) => CapabilityStatementOperation.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      compartment: parsePrimitiveList<FhirCanonical>(
        json['compartment'] as List<dynamic>?,
        json['_compartment'] as List<dynamic>?,
        fromJson: FhirCanonical.fromJson,
      ),
    );
  }

  /// Deserialize [CapabilityStatementRest]
  /// from a [String] or [YamlMap] object
  factory CapabilityStatementRest.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CapabilityStatementRest.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CapabilityStatementRest.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CapabilityStatementRest '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CapabilityStatementRest]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CapabilityStatementRest.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CapabilityStatementRest.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CapabilityStatementRest';

  /// [mode]
  /// Identifies whether this portion of the statement is describing the
  /// ability to initiate or receive restful operations.
  final RestfulCapabilityMode mode;

  /// [documentation]
  /// Information about the system's restful capabilities that apply across
  /// all applications, such as security.
  final FhirMarkdown? documentation;

  /// [security]
  /// Information about security implementation from an interface perspective
  /// - what a client needs to know.
  final CapabilityStatementSecurity? security;

  /// [resource]
  /// A specification of the restful capabilities of the solution for a
  /// specific resource type.
  final List<CapabilityStatementResource>? resource;

  /// [interaction]
  /// A specification of restful operations supported by the system.
  final List<CapabilityStatementInteraction>? interaction;

  /// [searchParam]
  /// Search parameters that are supported for searching all resources for
  /// implementations to support and/or make use of - either references to
  /// ones defined in the specification, or additional ones defined for/by
  /// the implementation.
  final List<CapabilityStatementSearchParam>? searchParam;

  /// [operation]
  /// Definition of an operation or a named query together with its
  /// parameters and their meaning and type.
  final List<CapabilityStatementOperation>? operation;

  /// [compartment]
  /// An absolute URI which is a reference to the definition of a compartment
  /// that the system supports. The reference is to a CompartmentDefinition
  /// resource by its canonical URL .
  final List<FhirCanonical>? compartment;
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

    addField('mode', mode);
    addField('documentation', documentation);
    if (security != null) {
      json['security'] = security!.toJson();
    }

    if (resource != null && resource!.isNotEmpty) {
      json['resource'] = resource!.map((e) => e.toJson()).toList();
    }

    if (interaction != null && interaction!.isNotEmpty) {
      json['interaction'] = interaction!.map((e) => e.toJson()).toList();
    }

    if (searchParam != null && searchParam!.isNotEmpty) {
      json['searchParam'] = searchParam!.map((e) => e.toJson()).toList();
    }

    if (operation != null && operation!.isNotEmpty) {
      json['operation'] = operation!.map((e) => e.toJson()).toList();
    }

    if (compartment != null && compartment!.isNotEmpty) {
      final fieldJson0 = compartment!.map((e) => e.toJson()).toList();
      json['compartment'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_compartment'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

    return json;
  }

  @override
  CapabilityStatementRest clone() => throw UnimplementedError();
  @override
  CapabilityStatementRest copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    RestfulCapabilityMode? mode,
    FhirMarkdown? documentation,
    CapabilityStatementSecurity? security,
    List<CapabilityStatementResource>? resource,
    List<CapabilityStatementInteraction>? interaction,
    List<CapabilityStatementSearchParam>? searchParam,
    List<CapabilityStatementOperation>? operation,
    List<FhirCanonical>? compartment,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return CapabilityStatementRest(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      mode: mode ?? this.mode,
      documentation: documentation ?? this.documentation,
      security: security ?? this.security,
      resource: resource ?? this.resource,
      interaction: interaction ?? this.interaction,
      searchParam: searchParam ?? this.searchParam,
      operation: operation ?? this.operation,
      compartment: compartment ?? this.compartment,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [CapabilityStatementSecurity]
/// Information about security implementation from an interface perspective
/// - what a client needs to know.
class CapabilityStatementSecurity extends BackboneElement {
  /// Primary constructor for
  /// [CapabilityStatementSecurity]

  const CapabilityStatementSecurity({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.cors,
    this.service,
    this.description,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementSecurity.fromJson(
    Map<String, dynamic> json,
  ) {
    return CapabilityStatementSecurity(
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
      cors: (json['cors'] != null || json['_cors'] != null)
          ? FhirBoolean.fromJson({
              'value': json['cors'],
              '_value': json['_cors'],
            })
          : null,
      service: json['service'] != null
          ? (json['service'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
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
    );
  }

  /// Deserialize [CapabilityStatementSecurity]
  /// from a [String] or [YamlMap] object
  factory CapabilityStatementSecurity.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CapabilityStatementSecurity.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CapabilityStatementSecurity.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CapabilityStatementSecurity '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CapabilityStatementSecurity]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CapabilityStatementSecurity.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CapabilityStatementSecurity.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CapabilityStatementSecurity';

  /// [cors]
  /// Server adds CORS headers when responding to requests - this enables
  /// Javascript applications to use the server.
  final FhirBoolean? cors;

  /// [service]
  /// Types of security services that are supported/required by the system.
  final List<CodeableConcept>? service;

  /// [description]
  /// General description of how security works.
  final FhirMarkdown? description;
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

    addField('cors', cors);
    if (service != null && service!.isNotEmpty) {
      json['service'] = service!.map((e) => e.toJson()).toList();
    }

    addField('description', description);
    return json;
  }

  @override
  CapabilityStatementSecurity clone() => throw UnimplementedError();
  @override
  CapabilityStatementSecurity copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? cors,
    List<CodeableConcept>? service,
    FhirMarkdown? description,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return CapabilityStatementSecurity(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      cors: cors ?? this.cors,
      service: service ?? this.service,
      description: description ?? this.description,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [CapabilityStatementResource]
/// A specification of the restful capabilities of the solution for a
/// specific resource type.
class CapabilityStatementResource extends BackboneElement {
  /// Primary constructor for
  /// [CapabilityStatementResource]

  const CapabilityStatementResource({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.profile,
    this.supportedProfile,
    this.documentation,
    this.interaction,
    this.versioning,
    this.readHistory,
    this.updateCreate,
    this.conditionalCreate,
    this.conditionalRead,
    this.conditionalUpdate,
    this.conditionalDelete,
    this.referencePolicy,
    this.searchInclude,
    this.searchRevInclude,
    this.searchParam,
    this.operation,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementResource.fromJson(
    Map<String, dynamic> json,
  ) {
    return CapabilityStatementResource(
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
      profile: (json['profile'] != null || json['_profile'] != null)
          ? FhirCanonical.fromJson({
              'value': json['profile'],
              '_value': json['_profile'],
            })
          : null,
      supportedProfile: parsePrimitiveList<FhirCanonical>(
        json['supportedProfile'] as List<dynamic>?,
        json['_supportedProfile'] as List<dynamic>?,
        fromJson: FhirCanonical.fromJson,
      ),
      documentation:
          (json['documentation'] != null || json['_documentation'] != null)
              ? FhirMarkdown.fromJson({
                  'value': json['documentation'],
                  '_value': json['_documentation'],
                })
              : null,
      interaction: json['interaction'] != null
          ? (json['interaction'] as List<dynamic>)
              .map<CapabilityStatementInteraction>(
                (v) => CapabilityStatementInteraction.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      versioning: (json['versioning'] != null || json['_versioning'] != null)
          ? ResourceVersionPolicy.fromJson({
              'value': json['versioning'],
              '_value': json['_versioning'],
            })
          : null,
      readHistory: (json['readHistory'] != null || json['_readHistory'] != null)
          ? FhirBoolean.fromJson({
              'value': json['readHistory'],
              '_value': json['_readHistory'],
            })
          : null,
      updateCreate:
          (json['updateCreate'] != null || json['_updateCreate'] != null)
              ? FhirBoolean.fromJson({
                  'value': json['updateCreate'],
                  '_value': json['_updateCreate'],
                })
              : null,
      conditionalCreate: (json['conditionalCreate'] != null ||
              json['_conditionalCreate'] != null)
          ? FhirBoolean.fromJson({
              'value': json['conditionalCreate'],
              '_value': json['_conditionalCreate'],
            })
          : null,
      conditionalRead:
          (json['conditionalRead'] != null || json['_conditionalRead'] != null)
              ? ConditionalReadStatus.fromJson({
                  'value': json['conditionalRead'],
                  '_value': json['_conditionalRead'],
                })
              : null,
      conditionalUpdate: (json['conditionalUpdate'] != null ||
              json['_conditionalUpdate'] != null)
          ? FhirBoolean.fromJson({
              'value': json['conditionalUpdate'],
              '_value': json['_conditionalUpdate'],
            })
          : null,
      conditionalDelete: (json['conditionalDelete'] != null ||
              json['_conditionalDelete'] != null)
          ? ConditionalDeleteStatus.fromJson({
              'value': json['conditionalDelete'],
              '_value': json['_conditionalDelete'],
            })
          : null,
      referencePolicy: parsePrimitiveList<ReferenceHandlingPolicy>(
        json['referencePolicy'] as List<dynamic>?,
        json['_referencePolicy'] as List<dynamic>?,
        fromJson: ReferenceHandlingPolicy.fromJson,
      ),
      searchInclude: parsePrimitiveList<FhirString>(
        json['searchInclude'] as List<dynamic>?,
        json['_searchInclude'] as List<dynamic>?,
        fromJson: FhirString.fromJson,
      ),
      searchRevInclude: parsePrimitiveList<FhirString>(
        json['searchRevInclude'] as List<dynamic>?,
        json['_searchRevInclude'] as List<dynamic>?,
        fromJson: FhirString.fromJson,
      ),
      searchParam: json['searchParam'] != null
          ? (json['searchParam'] as List<dynamic>)
              .map<CapabilityStatementSearchParam>(
                (v) => CapabilityStatementSearchParam.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      operation: json['operation'] != null
          ? (json['operation'] as List<dynamic>)
              .map<CapabilityStatementOperation>(
                (v) => CapabilityStatementOperation.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [CapabilityStatementResource]
  /// from a [String] or [YamlMap] object
  factory CapabilityStatementResource.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CapabilityStatementResource.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CapabilityStatementResource.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CapabilityStatementResource '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CapabilityStatementResource]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CapabilityStatementResource.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CapabilityStatementResource.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CapabilityStatementResource';

  /// [type]
  /// A type of resource exposed via the restful interface.
  final FhirCode type;

  /// [profile]
  /// A specification of the profile that describes the solution's overall
  /// support for the resource, including any constraints on cardinality,
  /// bindings, lengths or other limitations. See further discussion in
  /// [Using Profiles](profiling.html#profile-uses).
  final FhirCanonical? profile;

  /// [supportedProfile]
  /// A list of profiles that represent different use cases supported by the
  /// system. For a server, "supported by the system" means the system
  /// hosts/produces a set of resources that are conformant to a particular
  /// profile, and allows clients that use its services to search using this
  /// profile and to find appropriate data. For a client, it means the system
  /// will search by this profile and process data according to the guidance
  /// implicit in the profile. See further discussion in [Using
  /// Profiles](profiling.html#profile-uses).
  final List<FhirCanonical>? supportedProfile;

  /// [documentation]
  /// Additional information about the resource type used by the system.
  final FhirMarkdown? documentation;

  /// [interaction]
  /// Identifies a restful operation supported by the solution.
  final List<CapabilityStatementInteraction>? interaction;

  /// [versioning]
  /// This field is set to no-version to specify that the system does not
  /// support (server) or use (client) versioning for this resource type. If
  /// this has some other value, the server must at least correctly track and
  /// populate the versionId meta-property on resources. If the value is
  /// 'versioned-update', then the server supports all the versioning
  /// features, including using e-tags for version integrity in the API.
  final ResourceVersionPolicy? versioning;

  /// [readHistory]
  /// A flag for whether the server is able to return past versions as part
  /// of the vRead operation.
  final FhirBoolean? readHistory;

  /// [updateCreate]
  /// A flag to indicate that the server allows or needs to allow the client
  /// to create new identities on the server (that is, the client PUTs to a
  /// location where there is no existing resource). Allowing this operation
  /// means that the server allows the client to create new identities on the
  /// server.
  final FhirBoolean? updateCreate;

  /// [conditionalCreate]
  /// A flag that indicates that the server supports conditional create.
  final FhirBoolean? conditionalCreate;

  /// [conditionalRead]
  /// A code that indicates how the server supports conditional read.
  final ConditionalReadStatus? conditionalRead;

  /// [conditionalUpdate]
  /// A flag that indicates that the server supports conditional update.
  final FhirBoolean? conditionalUpdate;

  /// [conditionalDelete]
  /// A code that indicates how the server supports conditional delete.
  final ConditionalDeleteStatus? conditionalDelete;

  /// [referencePolicy]
  /// A set of flags that defines how references are supported.
  final List<ReferenceHandlingPolicy>? referencePolicy;

  /// [searchInclude]
  /// A list of _include values supported by the server.
  final List<FhirString>? searchInclude;

  /// [searchRevInclude]
  /// A list of _revinclude (reverse include) values supported by the server.
  final List<FhirString>? searchRevInclude;

  /// [searchParam]
  /// Search parameters for implementations to support and/or make use of -
  /// either references to ones defined in the specification, or additional
  /// ones defined for/by the implementation.
  final List<CapabilityStatementSearchParam>? searchParam;

  /// [operation]
  /// Definition of an operation or a named query together with its
  /// parameters and their meaning and type. Consult the definition of the
  /// operation for details about how to invoke the operation, and the
  /// parameters.
  final List<CapabilityStatementOperation>? operation;
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
    if (supportedProfile != null && supportedProfile!.isNotEmpty) {
      final fieldJson0 = supportedProfile!.map((e) => e.toJson()).toList();
      json['supportedProfile'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_supportedProfile'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

    addField('documentation', documentation);
    if (interaction != null && interaction!.isNotEmpty) {
      json['interaction'] = interaction!.map((e) => e.toJson()).toList();
    }

    addField('versioning', versioning);
    addField('readHistory', readHistory);
    addField('updateCreate', updateCreate);
    addField('conditionalCreate', conditionalCreate);
    addField('conditionalRead', conditionalRead);
    addField('conditionalUpdate', conditionalUpdate);
    addField('conditionalDelete', conditionalDelete);
    if (referencePolicy != null && referencePolicy!.isNotEmpty) {
      final fieldJson1 = referencePolicy!.map((e) => e.toJson()).toList();
      json['referencePolicy'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_referencePolicy'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (searchInclude != null && searchInclude!.isNotEmpty) {
      final fieldJson2 = searchInclude!.map((e) => e.toJson()).toList();
      json['searchInclude'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_searchInclude'] = fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (searchRevInclude != null && searchRevInclude!.isNotEmpty) {
      final fieldJson3 = searchRevInclude!.map((e) => e.toJson()).toList();
      json['searchRevInclude'] = fieldJson3.map((e) => e['value']).toList();
      if (fieldJson3.any((e) => e['_value'] != null)) {
        json['_searchRevInclude'] = fieldJson3.map((e) => e['_value']).toList();
      }
    }

    if (searchParam != null && searchParam!.isNotEmpty) {
      json['searchParam'] = searchParam!.map((e) => e.toJson()).toList();
    }

    if (operation != null && operation!.isNotEmpty) {
      json['operation'] = operation!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  CapabilityStatementResource clone() => throw UnimplementedError();
  @override
  CapabilityStatementResource copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? type,
    FhirCanonical? profile,
    List<FhirCanonical>? supportedProfile,
    FhirMarkdown? documentation,
    List<CapabilityStatementInteraction>? interaction,
    ResourceVersionPolicy? versioning,
    FhirBoolean? readHistory,
    FhirBoolean? updateCreate,
    FhirBoolean? conditionalCreate,
    ConditionalReadStatus? conditionalRead,
    FhirBoolean? conditionalUpdate,
    ConditionalDeleteStatus? conditionalDelete,
    List<ReferenceHandlingPolicy>? referencePolicy,
    List<FhirString>? searchInclude,
    List<FhirString>? searchRevInclude,
    List<CapabilityStatementSearchParam>? searchParam,
    List<CapabilityStatementOperation>? operation,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return CapabilityStatementResource(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      profile: profile ?? this.profile,
      supportedProfile: supportedProfile ?? this.supportedProfile,
      documentation: documentation ?? this.documentation,
      interaction: interaction ?? this.interaction,
      versioning: versioning ?? this.versioning,
      readHistory: readHistory ?? this.readHistory,
      updateCreate: updateCreate ?? this.updateCreate,
      conditionalCreate: conditionalCreate ?? this.conditionalCreate,
      conditionalRead: conditionalRead ?? this.conditionalRead,
      conditionalUpdate: conditionalUpdate ?? this.conditionalUpdate,
      conditionalDelete: conditionalDelete ?? this.conditionalDelete,
      referencePolicy: referencePolicy ?? this.referencePolicy,
      searchInclude: searchInclude ?? this.searchInclude,
      searchRevInclude: searchRevInclude ?? this.searchRevInclude,
      searchParam: searchParam ?? this.searchParam,
      operation: operation ?? this.operation,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [CapabilityStatementInteraction]
/// Identifies a restful operation supported by the solution.
class CapabilityStatementInteraction extends BackboneElement {
  /// Primary constructor for
  /// [CapabilityStatementInteraction]

  const CapabilityStatementInteraction({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.documentation,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementInteraction.fromJson(
    Map<String, dynamic> json,
  ) {
    return CapabilityStatementInteraction(
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
      code: TypeRestfulInteraction.fromJson({
        'value': json['code'],
        '_value': json['_code'],
      }),
      documentation:
          (json['documentation'] != null || json['_documentation'] != null)
              ? FhirMarkdown.fromJson({
                  'value': json['documentation'],
                  '_value': json['_documentation'],
                })
              : null,
    );
  }

  /// Deserialize [CapabilityStatementInteraction]
  /// from a [String] or [YamlMap] object
  factory CapabilityStatementInteraction.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CapabilityStatementInteraction.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CapabilityStatementInteraction.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CapabilityStatementInteraction '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CapabilityStatementInteraction]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CapabilityStatementInteraction.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CapabilityStatementInteraction.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CapabilityStatementInteraction';

  /// [code]
  /// Coded identifier of the operation, supported by the system resource.
  final TypeRestfulInteraction code;

  /// [documentation]
  /// Guidance specific to the implementation of this operation, such as
  /// 'delete is a logical delete' or 'updates are only allowed with version
  /// id' or 'creates permitted from pre-authorized certificates only'.
  final FhirMarkdown? documentation;
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
    addField('documentation', documentation);
    return json;
  }

  @override
  CapabilityStatementInteraction clone() => throw UnimplementedError();
  @override
  CapabilityStatementInteraction copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    TypeRestfulInteraction? code,
    FhirMarkdown? documentation,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return CapabilityStatementInteraction(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      documentation: documentation ?? this.documentation,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [CapabilityStatementSearchParam]
/// Search parameters for implementations to support and/or make use of -
/// either references to ones defined in the specification, or additional
/// ones defined for/by the implementation.
class CapabilityStatementSearchParam extends BackboneElement {
  /// Primary constructor for
  /// [CapabilityStatementSearchParam]

  const CapabilityStatementSearchParam({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.definition,
    required this.type,
    this.documentation,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementSearchParam.fromJson(
    Map<String, dynamic> json,
  ) {
    return CapabilityStatementSearchParam(
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
      definition: (json['definition'] != null || json['_definition'] != null)
          ? FhirCanonical.fromJson({
              'value': json['definition'],
              '_value': json['_definition'],
            })
          : null,
      type: SearchParamType.fromJson({
        'value': json['type'],
        '_value': json['_type'],
      }),
      documentation:
          (json['documentation'] != null || json['_documentation'] != null)
              ? FhirMarkdown.fromJson({
                  'value': json['documentation'],
                  '_value': json['_documentation'],
                })
              : null,
    );
  }

  /// Deserialize [CapabilityStatementSearchParam]
  /// from a [String] or [YamlMap] object
  factory CapabilityStatementSearchParam.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CapabilityStatementSearchParam.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CapabilityStatementSearchParam.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CapabilityStatementSearchParam '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CapabilityStatementSearchParam]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CapabilityStatementSearchParam.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CapabilityStatementSearchParam.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CapabilityStatementSearchParam';

  /// [name]
  /// The name of the search parameter used in the interface.
  final FhirString name;

  /// [definition]
  /// An absolute URI that is a formal reference to where this parameter was
  /// first defined, so that a client can be confident of the meaning of the
  /// search parameter (a reference to
  /// [SearchParameter.url](searchparameter-definitions.html#SearchParameter.url)).
  /// This element SHALL be populated if the search parameter refers to a
  /// SearchParameter defined by the FHIR core specification or externally
  /// defined IGs.
  final FhirCanonical? definition;

  /// [type]
  /// The type of value a search parameter refers to, and how the content is
  /// interpreted.
  final SearchParamType type;

  /// [documentation]
  /// This allows documentation of any distinct behaviors about how the
  /// search parameter is used. For example, text matching algorithms.
  final FhirMarkdown? documentation;
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
    addField('definition', definition);
    addField('type', type);
    addField('documentation', documentation);
    return json;
  }

  @override
  CapabilityStatementSearchParam clone() => throw UnimplementedError();
  @override
  CapabilityStatementSearchParam copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    FhirCanonical? definition,
    SearchParamType? type,
    FhirMarkdown? documentation,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return CapabilityStatementSearchParam(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      definition: definition ?? this.definition,
      type: type ?? this.type,
      documentation: documentation ?? this.documentation,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [CapabilityStatementOperation]
/// Definition of an operation or a named query together with its
/// parameters and their meaning and type. Consult the definition of the
/// operation for details about how to invoke the operation, and the
/// parameters.
class CapabilityStatementOperation extends BackboneElement {
  /// Primary constructor for
  /// [CapabilityStatementOperation]

  const CapabilityStatementOperation({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    required this.definition,
    this.documentation,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementOperation.fromJson(
    Map<String, dynamic> json,
  ) {
    return CapabilityStatementOperation(
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
      definition: FhirCanonical.fromJson({
        'value': json['definition'],
        '_value': json['_definition'],
      }),
      documentation:
          (json['documentation'] != null || json['_documentation'] != null)
              ? FhirMarkdown.fromJson({
                  'value': json['documentation'],
                  '_value': json['_documentation'],
                })
              : null,
    );
  }

  /// Deserialize [CapabilityStatementOperation]
  /// from a [String] or [YamlMap] object
  factory CapabilityStatementOperation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CapabilityStatementOperation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CapabilityStatementOperation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CapabilityStatementOperation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CapabilityStatementOperation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CapabilityStatementOperation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CapabilityStatementOperation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CapabilityStatementOperation';

  /// [name]
  /// The name of the operation or query. For an operation, this is the name
  /// prefixed with $ and used in the URL. For a query, this is the name used
  /// in the _query parameter when the query is called.
  final FhirString name;

  /// [definition]
  /// Where the formal definition can be found. If a server references the
  /// base definition of an Operation (i.e. from the specification itself
  /// such as ```http://hl7.org/fhir/OperationDefinition/ValueSet-expand```),
  /// that means it supports the full capabilities of the operation - e.g.
  /// both GET and POST invocation. If it only supports a subset, it must
  /// define its own custom [OperationDefinition](operationdefinition.html#)
  /// with a 'base' of the original OperationDefinition. The custom
  /// definition would describe the specific subset of functionality
  /// supported.
  final FhirCanonical definition;

  /// [documentation]
  /// Documentation that describes anything special about the operation
  /// behavior, possibly detailing different behavior for system, type and
  /// instance-level invocation of the operation.
  final FhirMarkdown? documentation;
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
    addField('definition', definition);
    addField('documentation', documentation);
    return json;
  }

  @override
  CapabilityStatementOperation clone() => throw UnimplementedError();
  @override
  CapabilityStatementOperation copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    FhirCanonical? definition,
    FhirMarkdown? documentation,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return CapabilityStatementOperation(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      definition: definition ?? this.definition,
      documentation: documentation ?? this.documentation,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [CapabilityStatementInteraction1]
/// A specification of restful operations supported by the system.
class CapabilityStatementInteraction1 extends BackboneElement {
  /// Primary constructor for
  /// [CapabilityStatementInteraction1]

  const CapabilityStatementInteraction1({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.documentation,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementInteraction1.fromJson(
    Map<String, dynamic> json,
  ) {
    return CapabilityStatementInteraction1(
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
      code: SystemRestfulInteraction.fromJson({
        'value': json['code'],
        '_value': json['_code'],
      }),
      documentation:
          (json['documentation'] != null || json['_documentation'] != null)
              ? FhirMarkdown.fromJson({
                  'value': json['documentation'],
                  '_value': json['_documentation'],
                })
              : null,
    );
  }

  /// Deserialize [CapabilityStatementInteraction1]
  /// from a [String] or [YamlMap] object
  factory CapabilityStatementInteraction1.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CapabilityStatementInteraction1.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CapabilityStatementInteraction1.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CapabilityStatementInteraction1 '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CapabilityStatementInteraction1]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CapabilityStatementInteraction1.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CapabilityStatementInteraction1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CapabilityStatementInteraction1';

  /// [code]
  /// A coded identifier of the operation, supported by the system.
  final SystemRestfulInteraction code;

  /// [documentation]
  /// Guidance specific to the implementation of this operation, such as
  /// limitations on the kind of transactions allowed, or information about
  /// system wide search is implemented.
  final FhirMarkdown? documentation;
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
    addField('documentation', documentation);
    return json;
  }

  @override
  CapabilityStatementInteraction1 clone() => throw UnimplementedError();
  @override
  CapabilityStatementInteraction1 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    SystemRestfulInteraction? code,
    FhirMarkdown? documentation,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return CapabilityStatementInteraction1(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      documentation: documentation ?? this.documentation,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [CapabilityStatementMessaging]
/// A description of the messaging capabilities of the solution.
class CapabilityStatementMessaging extends BackboneElement {
  /// Primary constructor for
  /// [CapabilityStatementMessaging]

  const CapabilityStatementMessaging({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.endpoint,
    this.reliableCache,
    this.documentation,
    this.supportedMessage,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementMessaging.fromJson(
    Map<String, dynamic> json,
  ) {
    return CapabilityStatementMessaging(
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
      endpoint: json['endpoint'] != null
          ? (json['endpoint'] as List<dynamic>)
              .map<CapabilityStatementEndpoint>(
                (v) => CapabilityStatementEndpoint.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      reliableCache:
          (json['reliableCache'] != null || json['_reliableCache'] != null)
              ? FhirUnsignedInt.fromJson({
                  'value': json['reliableCache'],
                  '_value': json['_reliableCache'],
                })
              : null,
      documentation:
          (json['documentation'] != null || json['_documentation'] != null)
              ? FhirMarkdown.fromJson({
                  'value': json['documentation'],
                  '_value': json['_documentation'],
                })
              : null,
      supportedMessage: json['supportedMessage'] != null
          ? (json['supportedMessage'] as List<dynamic>)
              .map<CapabilityStatementSupportedMessage>(
                (v) => CapabilityStatementSupportedMessage.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [CapabilityStatementMessaging]
  /// from a [String] or [YamlMap] object
  factory CapabilityStatementMessaging.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CapabilityStatementMessaging.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CapabilityStatementMessaging.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CapabilityStatementMessaging '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CapabilityStatementMessaging]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CapabilityStatementMessaging.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CapabilityStatementMessaging.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CapabilityStatementMessaging';

  /// [endpoint]
  /// An endpoint (network accessible address) to which messages and/or
  /// replies are to be sent.
  final List<CapabilityStatementEndpoint>? endpoint;

  /// [reliableCache]
  /// Length if the receiver's reliable messaging cache in minutes (if a
  /// receiver) or how long the cache length on the receiver should be (if a
  /// sender).
  final FhirUnsignedInt? reliableCache;

  /// [documentation]
  /// Documentation about the system's messaging capabilities for this
  /// endpoint not otherwise documented by the capability statement. For
  /// example, the process for becoming an authorized messaging exchange
  /// partner.
  final FhirMarkdown? documentation;

  /// [supportedMessage]
  /// References to message definitions for messages this system can send or
  /// receive.
  final List<CapabilityStatementSupportedMessage>? supportedMessage;
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

    if (endpoint != null && endpoint!.isNotEmpty) {
      json['endpoint'] = endpoint!.map((e) => e.toJson()).toList();
    }

    addField('reliableCache', reliableCache);
    addField('documentation', documentation);
    if (supportedMessage != null && supportedMessage!.isNotEmpty) {
      json['supportedMessage'] =
          supportedMessage!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  CapabilityStatementMessaging clone() => throw UnimplementedError();
  @override
  CapabilityStatementMessaging copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CapabilityStatementEndpoint>? endpoint,
    FhirUnsignedInt? reliableCache,
    FhirMarkdown? documentation,
    List<CapabilityStatementSupportedMessage>? supportedMessage,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return CapabilityStatementMessaging(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      endpoint: endpoint ?? this.endpoint,
      reliableCache: reliableCache ?? this.reliableCache,
      documentation: documentation ?? this.documentation,
      supportedMessage: supportedMessage ?? this.supportedMessage,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [CapabilityStatementEndpoint]
/// An endpoint (network accessible address) to which messages and/or
/// replies are to be sent.
class CapabilityStatementEndpoint extends BackboneElement {
  /// Primary constructor for
  /// [CapabilityStatementEndpoint]

  const CapabilityStatementEndpoint({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.protocol,
    required this.address,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementEndpoint.fromJson(
    Map<String, dynamic> json,
  ) {
    return CapabilityStatementEndpoint(
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
      protocol: Coding.fromJson(
        json['protocol'] as Map<String, dynamic>,
      ),
      address: FhirUrl.fromJson({
        'value': json['address'],
        '_value': json['_address'],
      }),
    );
  }

  /// Deserialize [CapabilityStatementEndpoint]
  /// from a [String] or [YamlMap] object
  factory CapabilityStatementEndpoint.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CapabilityStatementEndpoint.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CapabilityStatementEndpoint.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CapabilityStatementEndpoint '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CapabilityStatementEndpoint]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CapabilityStatementEndpoint.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CapabilityStatementEndpoint.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CapabilityStatementEndpoint';

  /// [protocol]
  /// A list of the messaging transport protocol(s) identifiers, supported by
  /// this endpoint.
  final Coding protocol;

  /// [address]
  /// The network address of the endpoint. For solutions that do not use
  /// network addresses for routing, it can be just an identifier.
  final FhirUrl address;
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

    json['protocol'] = protocol.toJson();

    addField('address', address);
    return json;
  }

  @override
  CapabilityStatementEndpoint clone() => throw UnimplementedError();
  @override
  CapabilityStatementEndpoint copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Coding? protocol,
    FhirUrl? address,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return CapabilityStatementEndpoint(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      protocol: protocol ?? this.protocol,
      address: address ?? this.address,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [CapabilityStatementSupportedMessage]
/// References to message definitions for messages this system can send or
/// receive.
class CapabilityStatementSupportedMessage extends BackboneElement {
  /// Primary constructor for
  /// [CapabilityStatementSupportedMessage]

  const CapabilityStatementSupportedMessage({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.mode,
    required this.definition,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementSupportedMessage.fromJson(
    Map<String, dynamic> json,
  ) {
    return CapabilityStatementSupportedMessage(
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
      mode: EventCapabilityMode.fromJson({
        'value': json['mode'],
        '_value': json['_mode'],
      }),
      definition: FhirCanonical.fromJson({
        'value': json['definition'],
        '_value': json['_definition'],
      }),
    );
  }

  /// Deserialize [CapabilityStatementSupportedMessage]
  /// from a [String] or [YamlMap] object
  factory CapabilityStatementSupportedMessage.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CapabilityStatementSupportedMessage.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CapabilityStatementSupportedMessage.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CapabilityStatementSupportedMessage '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CapabilityStatementSupportedMessage]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CapabilityStatementSupportedMessage.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CapabilityStatementSupportedMessage.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CapabilityStatementSupportedMessage';

  /// [mode]
  /// The mode of this event declaration - whether application is sender or
  /// receiver.
  final EventCapabilityMode mode;

  /// [definition]
  /// Points to a message definition that identifies the messaging event,
  /// message structure, allowed responses, etc.
  final FhirCanonical definition;
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

    addField('mode', mode);
    addField('definition', definition);
    return json;
  }

  @override
  CapabilityStatementSupportedMessage clone() => throw UnimplementedError();
  @override
  CapabilityStatementSupportedMessage copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    EventCapabilityMode? mode,
    FhirCanonical? definition,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return CapabilityStatementSupportedMessage(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      mode: mode ?? this.mode,
      definition: definition ?? this.definition,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [CapabilityStatementDocument]
/// A document definition.
class CapabilityStatementDocument extends BackboneElement {
  /// Primary constructor for
  /// [CapabilityStatementDocument]

  const CapabilityStatementDocument({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.mode,
    this.documentation,
    required this.profile,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementDocument.fromJson(
    Map<String, dynamic> json,
  ) {
    return CapabilityStatementDocument(
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
      mode: DocumentMode.fromJson({
        'value': json['mode'],
        '_value': json['_mode'],
      }),
      documentation:
          (json['documentation'] != null || json['_documentation'] != null)
              ? FhirMarkdown.fromJson({
                  'value': json['documentation'],
                  '_value': json['_documentation'],
                })
              : null,
      profile: FhirCanonical.fromJson({
        'value': json['profile'],
        '_value': json['_profile'],
      }),
    );
  }

  /// Deserialize [CapabilityStatementDocument]
  /// from a [String] or [YamlMap] object
  factory CapabilityStatementDocument.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CapabilityStatementDocument.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CapabilityStatementDocument.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CapabilityStatementDocument '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CapabilityStatementDocument]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CapabilityStatementDocument.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CapabilityStatementDocument.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CapabilityStatementDocument';

  /// [mode]
  /// Mode of this document declaration - whether an application is a
  /// producer or consumer.
  final DocumentMode mode;

  /// [documentation]
  /// A description of how the application supports or uses the specified
  /// document profile. For example, when documents are created, what action
  /// is taken with consumed documents, etc.
  final FhirMarkdown? documentation;

  /// [profile]
  /// A profile on the document Bundle that constrains which resources are
  /// present, and their contents.
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

    addField('mode', mode);
    addField('documentation', documentation);
    addField('profile', profile);
    return json;
  }

  @override
  CapabilityStatementDocument clone() => throw UnimplementedError();
  @override
  CapabilityStatementDocument copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    DocumentMode? mode,
    FhirMarkdown? documentation,
    FhirCanonical? profile,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return CapabilityStatementDocument(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      mode: mode ?? this.mode,
      documentation: documentation ?? this.documentation,
      profile: profile ?? this.profile,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}
