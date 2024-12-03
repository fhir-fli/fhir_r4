import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [GraphDefinition]
/// A formal computable definition of a graph of resources - that is, a
/// coherent set of resources that form a graph by following references.
/// The Graph Definition resource defines a set and makes rules about the
/// set.
class GraphDefinition extends DomainResource {
  /// Primary constructor for
  /// [GraphDefinition]

  GraphDefinition({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.url,
    this.version,
    required this.name,
    required this.status,
    this.experimental,
    this.date,
    this.publisher,
    this.contact,
    this.description,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    required this.start,
    this.profile,
    this.link,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.GraphDefinition,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory GraphDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    return GraphDefinition(
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
      name: FhirString.fromJson({
        'value': json['name'],
        '_value': json['_name'],
      }),
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
      purpose: (json['purpose'] != null || json['_purpose'] != null)
          ? FhirMarkdown.fromJson({
              'value': json['purpose'],
              '_value': json['_purpose'],
            })
          : null,
      start: FhirCode.fromJson({
        'value': json['start'],
        '_value': json['_start'],
      }),
      profile: (json['profile'] != null || json['_profile'] != null)
          ? FhirCanonical.fromJson({
              'value': json['profile'],
              '_value': json['_profile'],
            })
          : null,
      link: json['link'] != null
          ? (json['link'] as List<dynamic>)
              .map<GraphDefinitionLink>(
                (v) => GraphDefinitionLink.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [GraphDefinition]
  /// from a [String] or [YamlMap] object
  factory GraphDefinition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return GraphDefinition.fromJson(
        yamlToJson(yaml) as Map<String, Object?>,
      );
    } else if (yaml is YamlMap) {
      return GraphDefinition.fromJson(
        yamlMapToJson(yaml) as Map<String, Object?>,
      );
    } else {
      throw ArgumentError(
        'GraphDefinition cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for [GraphDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory GraphDefinition.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return GraphDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'GraphDefinition';

  /// [url]
  /// An absolute URI that is used to identify this graph definition when it
  /// is referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and
  /// SHOULD be a literal address at which at which an authoritative instance
  /// of this graph definition is (or will be) published. This URL can be the
  /// target of a canonical reference. It SHALL remain the same when the
  /// graph definition is stored on different servers.
  final FhirUri? url;

  /// [version]
  /// The identifier that is used to identify this version of the graph
  /// definition when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the graph definition
  /// author and is not expected to be globally unique. For example, it might
  /// be a timestamp (e.g. yyyymmdd) if a managed version is not available.
  /// There is also no expectation that versions can be placed in a
  /// lexicographical sequence.
  final FhirString? version;

  /// [name]
  /// A natural language name identifying the graph definition. This name
  /// should be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString name;

  /// [status]
  /// The status of this graph definition. Enables tracking the life-cycle of
  /// the content.
  final PublicationStatus status;

  /// [experimental]
  /// A Boolean value to indicate that this graph definition is authored for
  /// testing purposes (or education/evaluation/marketing) and is not
  /// intended to be used for genuine usage.
  final FhirBoolean? experimental;

  /// [date]
  /// The date (and optionally time) when the graph definition was published.
  /// The date must change when the business version changes and it must
  /// change if the status code changes. In addition, it should change when
  /// the substantive content of the graph definition changes.
  final FhirDateTime? date;

  /// [publisher]
  /// The name of the organization or individual that published the graph
  /// definition.
  final FhirString? publisher;

  /// [contact]
  /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [description]
  /// A free text natural language description of the graph definition from a
  /// consumer's perspective.
  final FhirMarkdown? description;

  /// [useContext]
  /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories
  /// (gender, age, ...) or may be references to specific programs (insurance
  /// plans, studies, ...) and may be used to assist with indexing and
  /// searching for appropriate graph definition instances.
  final List<UsageContext>? useContext;

  /// [jurisdiction]
  /// A legal or geographic region in which the graph definition is intended
  /// to be used.
  final List<CodeableConcept>? jurisdiction;

  /// [purpose]
  /// Explanation of why this graph definition is needed and why it has been
  /// designed as it has.
  final FhirMarkdown? purpose;

  /// [start]
  /// The type of FHIR resource at which instances of this graph start.
  final FhirCode start;

  /// [profile]
  /// The profile that describes the use of the base resource.
  final FhirCanonical? profile;

  /// [link]
  /// Links this graph makes rules about.
  final List<GraphDefinitionLink>? link;
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
    addField('start', start);
    addField('profile', profile);
    if (link != null && link!.isNotEmpty) {
      json['link'] = link!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  GraphDefinition clone() => throw UnimplementedError();
  @override
  GraphDefinition copyWith({
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
    PublicationStatus? status,
    FhirBoolean? experimental,
    FhirDateTime? date,
    FhirString? publisher,
    List<ContactDetail>? contact,
    FhirMarkdown? description,
    List<UsageContext>? useContext,
    List<CodeableConcept>? jurisdiction,
    FhirMarkdown? purpose,
    FhirCode? start,
    FhirCanonical? profile,
    List<GraphDefinitionLink>? link,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return GraphDefinition(
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
      status: status ?? this.status,
      experimental: experimental ?? this.experimental,
      date: date ?? this.date,
      publisher: publisher ?? this.publisher,
      contact: contact ?? this.contact,
      description: description ?? this.description,
      useContext: useContext ?? this.useContext,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      purpose: purpose ?? this.purpose,
      start: start ?? this.start,
      profile: profile ?? this.profile,
      link: link ?? this.link,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [GraphDefinitionLink]
/// Links this graph makes rules about.
class GraphDefinitionLink extends BackboneElement {
  /// Primary constructor for
  /// [GraphDefinitionLink]

  GraphDefinitionLink({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.path,
    this.sliceName,
    this.min,
    this.max,
    this.description,
    this.target,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory GraphDefinitionLink.fromJson(
    Map<String, dynamic> json,
  ) {
    return GraphDefinitionLink(
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
      path: (json['path'] != null || json['_path'] != null)
          ? FhirString.fromJson({
              'value': json['path'],
              '_value': json['_path'],
            })
          : null,
      sliceName: (json['sliceName'] != null || json['_sliceName'] != null)
          ? FhirString.fromJson({
              'value': json['sliceName'],
              '_value': json['_sliceName'],
            })
          : null,
      min: (json['min'] != null || json['_min'] != null)
          ? FhirInteger.fromJson({
              'value': json['min'],
              '_value': json['_min'],
            })
          : null,
      max: (json['max'] != null || json['_max'] != null)
          ? FhirString.fromJson({
              'value': json['max'],
              '_value': json['_max'],
            })
          : null,
      description: (json['description'] != null || json['_description'] != null)
          ? FhirString.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      target: json['target'] != null
          ? (json['target'] as List<dynamic>)
              .map<GraphDefinitionTarget>(
                (v) => GraphDefinitionTarget.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [GraphDefinitionLink]
  /// from a [String] or [YamlMap] object
  factory GraphDefinitionLink.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return GraphDefinitionLink.fromJson(
        yamlToJson(yaml) as Map<String, Object?>,
      );
    } else if (yaml is YamlMap) {
      return GraphDefinitionLink.fromJson(
        yamlMapToJson(yaml) as Map<String, Object?>,
      );
    } else {
      throw ArgumentError(
        'GraphDefinitionLink cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for [GraphDefinitionLink]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory GraphDefinitionLink.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return GraphDefinitionLink.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'GraphDefinitionLink';

  /// [path]
  /// A FHIR expression that identifies one of FHIR References to other
  /// resources.
  final FhirString? path;

  /// [sliceName]
  /// Which slice (if profiled).
  final FhirString? sliceName;

  /// [min]
  /// Minimum occurrences for this link.
  final FhirInteger? min;

  /// [max]
  /// Maximum occurrences for this link.
  final FhirString? max;

  /// [description]
  /// Information about why this link is of interest in this graph
  /// definition.
  final FhirString? description;

  /// [target]
  /// Potential target for the link.
  final List<GraphDefinitionTarget>? target;
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

    addField('path', path);
    addField('sliceName', sliceName);
    addField('min', min);
    addField('max', max);
    addField('description', description);
    if (target != null && target!.isNotEmpty) {
      json['target'] = target!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  GraphDefinitionLink clone() => throw UnimplementedError();
  @override
  GraphDefinitionLink copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? path,
    FhirString? sliceName,
    FhirInteger? min,
    FhirString? max,
    FhirString? description,
    List<GraphDefinitionTarget>? target,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return GraphDefinitionLink(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      path: path ?? this.path,
      sliceName: sliceName ?? this.sliceName,
      min: min ?? this.min,
      max: max ?? this.max,
      description: description ?? this.description,
      target: target ?? this.target,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [GraphDefinitionTarget]
/// Potential target for the link.
class GraphDefinitionTarget extends BackboneElement {
  /// Primary constructor for
  /// [GraphDefinitionTarget]

  GraphDefinitionTarget({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.params,
    this.profile,
    this.compartment,
    this.link,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory GraphDefinitionTarget.fromJson(
    Map<String, dynamic> json,
  ) {
    return GraphDefinitionTarget(
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
      params: (json['params'] != null || json['_params'] != null)
          ? FhirString.fromJson({
              'value': json['params'],
              '_value': json['_params'],
            })
          : null,
      profile: (json['profile'] != null || json['_profile'] != null)
          ? FhirCanonical.fromJson({
              'value': json['profile'],
              '_value': json['_profile'],
            })
          : null,
      compartment: json['compartment'] != null
          ? (json['compartment'] as List<dynamic>)
              .map<GraphDefinitionCompartment>(
                (v) => GraphDefinitionCompartment.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      link: json['link'] != null
          ? (json['link'] as List<dynamic>)
              .map<GraphDefinitionLink>(
                (v) => GraphDefinitionLink.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [GraphDefinitionTarget]
  /// from a [String] or [YamlMap] object
  factory GraphDefinitionTarget.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return GraphDefinitionTarget.fromJson(
        yamlToJson(yaml) as Map<String, Object?>,
      );
    } else if (yaml is YamlMap) {
      return GraphDefinitionTarget.fromJson(
        yamlMapToJson(yaml) as Map<String, Object?>,
      );
    } else {
      throw ArgumentError(
        'GraphDefinitionTarget cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for [GraphDefinitionTarget]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory GraphDefinitionTarget.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return GraphDefinitionTarget.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'GraphDefinitionTarget';

  /// [type]
  /// Type of resource this link refers to.
  final FhirCode type;

  /// [params]
  /// A set of parameters to look up.
  final FhirString? params;

  /// [profile]
  /// Profile for the target resource.
  final FhirCanonical? profile;

  /// [compartment]
  /// Compartment Consistency Rules.
  final List<GraphDefinitionCompartment>? compartment;

  /// [link]
  /// Additional links from target resource.
  final List<GraphDefinitionLink>? link;
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
    addField('params', params);
    addField('profile', profile);
    if (compartment != null && compartment!.isNotEmpty) {
      json['compartment'] = compartment!.map((e) => e.toJson()).toList();
    }

    if (link != null && link!.isNotEmpty) {
      json['link'] = link!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  GraphDefinitionTarget clone() => throw UnimplementedError();
  @override
  GraphDefinitionTarget copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? type,
    FhirString? params,
    FhirCanonical? profile,
    List<GraphDefinitionCompartment>? compartment,
    List<GraphDefinitionLink>? link,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return GraphDefinitionTarget(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      params: params ?? this.params,
      profile: profile ?? this.profile,
      compartment: compartment ?? this.compartment,
      link: link ?? this.link,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [GraphDefinitionCompartment]
/// Compartment Consistency Rules.
class GraphDefinitionCompartment extends BackboneElement {
  /// Primary constructor for
  /// [GraphDefinitionCompartment]

  GraphDefinitionCompartment({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.use,
    required this.code,
    required this.rule,
    this.expression,
    this.description,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory GraphDefinitionCompartment.fromJson(
    Map<String, dynamic> json,
  ) {
    return GraphDefinitionCompartment(
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
      use: GraphCompartmentUse.fromJson({
        'value': json['use'],
        '_value': json['_use'],
      }),
      code: CompartmentType.fromJson({
        'value': json['code'],
        '_value': json['_code'],
      }),
      rule: GraphCompartmentRule.fromJson({
        'value': json['rule'],
        '_value': json['_rule'],
      }),
      expression: (json['expression'] != null || json['_expression'] != null)
          ? FhirString.fromJson({
              'value': json['expression'],
              '_value': json['_expression'],
            })
          : null,
      description: (json['description'] != null || json['_description'] != null)
          ? FhirString.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
    );
  }

  /// Deserialize [GraphDefinitionCompartment]
  /// from a [String] or [YamlMap] object
  factory GraphDefinitionCompartment.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return GraphDefinitionCompartment.fromJson(
        yamlToJson(yaml) as Map<String, Object?>,
      );
    } else if (yaml is YamlMap) {
      return GraphDefinitionCompartment.fromJson(
        yamlMapToJson(yaml) as Map<String, Object?>,
      );
    } else {
      throw ArgumentError(
        'GraphDefinitionCompartment cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for [GraphDefinitionCompartment]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory GraphDefinitionCompartment.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return GraphDefinitionCompartment.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'GraphDefinitionCompartment';

  /// [use]
  /// Defines how the compartment rule is used - whether it it is used to
  /// test whether resources are subject to the rule, or whether it is a rule
  /// that must be followed.
  final GraphCompartmentUse use;

  /// [code]
  /// Identifies the compartment.
  final CompartmentType code;

  /// [rule]
  /// identical | matching | different | no-rule | custom.
  final GraphCompartmentRule rule;

  /// [expression]
  /// Custom rule, as a FHIRPath expression.
  final FhirString? expression;

  /// [description]
  /// Documentation for FHIRPath expression.
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

    addField('use', use);
    addField('code', code);
    addField('rule', rule);
    addField('expression', expression);
    addField('description', description);
    return json;
  }

  @override
  GraphDefinitionCompartment clone() => throw UnimplementedError();
  @override
  GraphDefinitionCompartment copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    GraphCompartmentUse? use,
    CompartmentType? code,
    GraphCompartmentRule? rule,
    FhirString? expression,
    FhirString? description,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return GraphDefinitionCompartment(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      use: use ?? this.use,
      code: code ?? this.code,
      rule: rule ?? this.rule,
      expression: expression ?? this.expression,
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
