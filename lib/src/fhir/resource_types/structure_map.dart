import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [StructureMap]
/// A Map of relationships between 2 structures that can be used to
/// transform data.
class StructureMap extends DomainResource {
  /// Primary constructor for
  /// [StructureMap]

  StructureMap({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    required this.url,
    this.identifier,
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
    this.purpose,
    this.copyright,
    this.structure,
    this.import_,
    required this.group,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.StructureMap,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory StructureMap.fromJson(
    Map<String, dynamic> json,
  ) {
    return StructureMap(
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
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
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
      structure: json['structure'] != null
          ? (json['structure'] as List<dynamic>)
              .map<StructureMapStructure>(
                (v) => StructureMapStructure.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      import_: parsePrimitiveList<FhirCanonical>(
        json['import'] as List<dynamic>?,
        json['_import'] as List<dynamic>?,
        fromJson: FhirCanonical.fromJson,
      ),
      group: ensureNonNullList(
        (json['group'] as List<dynamic>)
            .map<StructureMapGroup>(
              (v) => StructureMapGroup.fromJson(
                v as Map<String, dynamic>,
              ),
            )
            .toList(),
      ),
    );
  }

  /// Deserialize [StructureMap]
  /// from a [String] or [YamlMap] object
  factory StructureMap.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? StructureMap.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? StructureMap.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'StructureMap '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [StructureMap]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory StructureMap.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return StructureMap.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'StructureMap';

  /// [url]
  /// An absolute URI that is used to identify this structure map when it is
  /// referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and
  /// SHOULD be a literal address at which at which an authoritative instance
  /// of this structure map is (or will be) published. This URL can be the
  /// target of a canonical reference. It SHALL remain the same when the
  /// structure map is stored on different servers.
  final FhirUri url;

  /// [identifier]
  /// A formal identifier that is used to identify this structure map when it
  /// is represented in other formats, or referenced in a specification,
  /// model, design or an instance.
  final List<Identifier>? identifier;

  /// [version]
  /// The identifier that is used to identify this version of the structure
  /// map when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the structure map
  /// author and is not expected to be globally unique. For example, it might
  /// be a timestamp (e.g. yyyymmdd) if a managed version is not available.
  /// There is also no expectation that versions can be placed in a
  /// lexicographical sequence.
  final FhirString? version;

  /// [name]
  /// A natural language name identifying the structure map. This name should
  /// be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString name;

  /// [title]
  /// A short, descriptive, user-friendly title for the structure map.
  final FhirString? title;

  /// [status]
  /// The status of this structure map. Enables tracking the life-cycle of
  /// the content.
  final PublicationStatus status;

  /// [experimental]
  /// A Boolean value to indicate that this structure map is authored for
  /// testing purposes (or education/evaluation/marketing) and is not
  /// intended to be used for genuine usage.
  final FhirBoolean? experimental;

  /// [date]
  /// The date (and optionally time) when the structure map was published.
  /// The date must change when the business version changes and it must
  /// change if the status code changes. In addition, it should change when
  /// the substantive content of the structure map changes.
  final FhirDateTime? date;

  /// [publisher]
  /// The name of the organization or individual that published the structure
  /// map.
  final FhirString? publisher;

  /// [contact]
  /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [description]
  /// A free text natural language description of the structure map from a
  /// consumer's perspective.
  final FhirMarkdown? description;

  /// [useContext]
  /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories
  /// (gender, age, ...) or may be references to specific programs (insurance
  /// plans, studies, ...) and may be used to assist with indexing and
  /// searching for appropriate structure map instances.
  final List<UsageContext>? useContext;

  /// [jurisdiction]
  /// A legal or geographic region in which the structure map is intended to
  /// be used.
  final List<CodeableConcept>? jurisdiction;

  /// [purpose]
  /// Explanation of why this structure map is needed and why it has been
  /// designed as it has.
  final FhirMarkdown? purpose;

  /// [copyright]
  /// A copyright statement relating to the structure map and/or its
  /// contents. Copyright statements are generally legal restrictions on the
  /// use and publishing of the structure map.
  final FhirMarkdown? copyright;

  /// [structure]
  /// A structure definition used by this map. The structure definition may
  /// describe instances that are converted, or the instances that are
  /// produced.
  final List<StructureMapStructure>? structure;

  /// [import_]
  /// Other maps used by this map (canonical URLs).
  final List<FhirCanonical>? import_;

  /// [group]
  /// Organizes the mapping into manageable chunks for human review/ease of
  /// maintenance.
  final List<StructureMapGroup> group;
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
      final fieldJson2 = language!.toJson();
      json['language'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_language'] = fieldJson2['_value'];
      }
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

    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    if (version != null) {
      final fieldJson9 = version!.toJson();
      json['version'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_version'] = fieldJson9['_value'];
      }
    }

    final fieldJson10 = name.toJson();
    json['name'] = fieldJson10['value'];
    if (fieldJson10['_value'] != null) {
      json['_name'] = fieldJson10['_value'];
    }

    if (title != null) {
      final fieldJson11 = title!.toJson();
      json['title'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_title'] = fieldJson11['_value'];
      }
    }

    final fieldJson12 = status.toJson();
    json['status'] = fieldJson12['value'];
    if (fieldJson12['_value'] != null) {
      json['_status'] = fieldJson12['_value'];
    }

    if (experimental != null) {
      final fieldJson13 = experimental!.toJson();
      json['experimental'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_experimental'] = fieldJson13['_value'];
      }
    }

    if (date != null) {
      final fieldJson14 = date!.toJson();
      json['date'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_date'] = fieldJson14['_value'];
      }
    }

    if (publisher != null) {
      final fieldJson15 = publisher!.toJson();
      json['publisher'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_publisher'] = fieldJson15['_value'];
      }
    }

    if (contact != null && contact!.isNotEmpty) {
      json['contact'] = contact!.map((e) => e.toJson()).toList();
    }

    if (description != null) {
      final fieldJson17 = description!.toJson();
      json['description'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_description'] = fieldJson17['_value'];
      }
    }

    if (useContext != null && useContext!.isNotEmpty) {
      json['useContext'] = useContext!.map((e) => e.toJson()).toList();
    }

    if (jurisdiction != null && jurisdiction!.isNotEmpty) {
      json['jurisdiction'] = jurisdiction!.map((e) => e.toJson()).toList();
    }

    if (purpose != null) {
      final fieldJson20 = purpose!.toJson();
      json['purpose'] = fieldJson20['value'];
      if (fieldJson20['_value'] != null) {
        json['_purpose'] = fieldJson20['_value'];
      }
    }

    if (copyright != null) {
      final fieldJson21 = copyright!.toJson();
      json['copyright'] = fieldJson21['value'];
      if (fieldJson21['_value'] != null) {
        json['_copyright'] = fieldJson21['_value'];
      }
    }

    if (structure != null && structure!.isNotEmpty) {
      json['structure'] = structure!.map((e) => e.toJson()).toList();
    }

    if (import_ != null && import_!.isNotEmpty) {
      final fieldJson23 = import_!.map((e) => e.toJson()).toList();
      json['import'] = fieldJson23.map((e) => e['value']).toList();
      if (fieldJson23.any((e) => e['_value'] != null)) {
        json['_import'] = fieldJson23.map((e) => e['_value']).toList();
      }
    }

    json['group'] = group.map((e) => e.toJson()).toList();

    return json;
  }

  @override
  StructureMap clone() => throw UnimplementedError();
  @override
  StructureMap copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? url,
    List<Identifier>? identifier,
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
    List<StructureMapStructure>? structure,
    List<FhirCanonical>? import_,
    List<StructureMapGroup>? group,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return StructureMap(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      url: url ?? this.url,
      identifier: identifier ?? this.identifier,
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
      structure: structure ?? this.structure,
      import_: import_ ?? this.import_,
      group: group ?? this.group,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [StructureMapStructure]
/// A structure definition used by this map. The structure definition may
/// describe instances that are converted, or the instances that are
/// produced.
class StructureMapStructure extends BackboneElement {
  /// Primary constructor for
  /// [StructureMapStructure]

  StructureMapStructure({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.url,
    required this.mode,
    this.alias,
    this.documentation,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory StructureMapStructure.fromJson(
    Map<String, dynamic> json,
  ) {
    return StructureMapStructure(
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
      url: FhirCanonical.fromJson({
        'value': json['url'],
        '_value': json['_url'],
      }),
      mode: StructureMapModelMode.fromJson({
        'value': json['mode'],
        '_value': json['_mode'],
      }),
      alias: (json['alias'] != null || json['_alias'] != null)
          ? FhirString.fromJson({
              'value': json['alias'],
              '_value': json['_alias'],
            })
          : null,
      documentation:
          (json['documentation'] != null || json['_documentation'] != null)
              ? FhirString.fromJson({
                  'value': json['documentation'],
                  '_value': json['_documentation'],
                })
              : null,
    );
  }

  /// Deserialize [StructureMapStructure]
  /// from a [String] or [YamlMap] object
  factory StructureMapStructure.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? StructureMapStructure.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? StructureMapStructure.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'StructureMapStructure '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [StructureMapStructure]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory StructureMapStructure.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return StructureMapStructure.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'StructureMapStructure';

  /// [url]
  /// The canonical reference to the structure.
  final FhirCanonical url;

  /// [mode]
  /// How the referenced structure is used in this mapping.
  final StructureMapModelMode mode;

  /// [alias]
  /// The name used for this type in the map.
  final FhirString? alias;

  /// [documentation]
  /// Documentation that describes how the structure is used in the mapping.
  final FhirString? documentation;
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

    final fieldJson2 = url.toJson();
    json['url'] = fieldJson2['value'];
    if (fieldJson2['_value'] != null) {
      json['_url'] = fieldJson2['_value'];
    }

    final fieldJson3 = mode.toJson();
    json['mode'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_mode'] = fieldJson3['_value'];
    }

    if (alias != null) {
      final fieldJson4 = alias!.toJson();
      json['alias'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_alias'] = fieldJson4['_value'];
      }
    }

    if (documentation != null) {
      final fieldJson5 = documentation!.toJson();
      json['documentation'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_documentation'] = fieldJson5['_value'];
      }
    }

    return json;
  }

  @override
  StructureMapStructure clone() => throw UnimplementedError();
  @override
  StructureMapStructure copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCanonical? url,
    StructureMapModelMode? mode,
    FhirString? alias,
    FhirString? documentation,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return StructureMapStructure(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      url: url ?? this.url,
      mode: mode ?? this.mode,
      alias: alias ?? this.alias,
      documentation: documentation ?? this.documentation,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [StructureMapGroup]
/// Organizes the mapping into manageable chunks for human review/ease of
/// maintenance.
class StructureMapGroup extends BackboneElement {
  /// Primary constructor for
  /// [StructureMapGroup]

  StructureMapGroup({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.extends_,
    required this.typeMode,
    this.documentation,
    required this.input,
    required this.rule,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory StructureMapGroup.fromJson(
    Map<String, dynamic> json,
  ) {
    return StructureMapGroup(
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
      name: FhirId.fromJson({
        'value': json['name'],
        '_value': json['_name'],
      }),
      extends_: (json['extends'] != null || json['_extends'] != null)
          ? FhirId.fromJson({
              'value': json['extends'],
              '_value': json['_extends'],
            })
          : null,
      typeMode: StructureMapGroupTypeMode.fromJson({
        'value': json['typeMode'],
        '_value': json['_typeMode'],
      }),
      documentation:
          (json['documentation'] != null || json['_documentation'] != null)
              ? FhirString.fromJson({
                  'value': json['documentation'],
                  '_value': json['_documentation'],
                })
              : null,
      input: ensureNonNullList(
        (json['input'] as List<dynamic>)
            .map<StructureMapInput>(
              (v) => StructureMapInput.fromJson(
                v as Map<String, dynamic>,
              ),
            )
            .toList(),
      ),
      rule: ensureNonNullList(
        (json['rule'] as List<dynamic>)
            .map<StructureMapRule>(
              (v) => StructureMapRule.fromJson(
                v as Map<String, dynamic>,
              ),
            )
            .toList(),
      ),
    );
  }

  /// Deserialize [StructureMapGroup]
  /// from a [String] or [YamlMap] object
  factory StructureMapGroup.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? StructureMapGroup.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? StructureMapGroup.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'StructureMapGroup '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [StructureMapGroup]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory StructureMapGroup.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return StructureMapGroup.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'StructureMapGroup';

  /// [name]
  /// A unique name for the group for the convenience of human readers.
  final FhirId name;

  /// [extends_]
  /// Another group that this group adds rules to.
  final FhirId? extends_;

  /// [typeMode]
  /// If this is the default rule set to apply for the source type or this
  /// combination of types.
  final StructureMapGroupTypeMode typeMode;

  /// [documentation]
  /// Additional supporting documentation that explains the purpose of the
  /// group and the types of mappings within it.
  final FhirString? documentation;

  /// [input]
  /// A name assigned to an instance of data. The instance must be provided
  /// when the mapping is invoked.
  final List<StructureMapInput> input;

  /// [rule]
  /// Transform Rule from source to target.
  final List<StructureMapRule> rule;
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

    if (extends_ != null) {
      final fieldJson3 = extends_!.toJson();
      json['extends'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_extends'] = fieldJson3['_value'];
      }
    }

    final fieldJson4 = typeMode.toJson();
    json['typeMode'] = fieldJson4['value'];
    if (fieldJson4['_value'] != null) {
      json['_typeMode'] = fieldJson4['_value'];
    }

    if (documentation != null) {
      final fieldJson5 = documentation!.toJson();
      json['documentation'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_documentation'] = fieldJson5['_value'];
      }
    }

    json['input'] = input.map((e) => e.toJson()).toList();

    json['rule'] = rule.map((e) => e.toJson()).toList();

    return json;
  }

  @override
  StructureMapGroup clone() => throw UnimplementedError();
  @override
  StructureMapGroup copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? name,
    FhirId? extends_,
    StructureMapGroupTypeMode? typeMode,
    FhirString? documentation,
    List<StructureMapInput>? input,
    List<StructureMapRule>? rule,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return StructureMapGroup(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      extends_: extends_ ?? this.extends_,
      typeMode: typeMode ?? this.typeMode,
      documentation: documentation ?? this.documentation,
      input: input ?? this.input,
      rule: rule ?? this.rule,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [StructureMapInput]
/// A name assigned to an instance of data. The instance must be provided
/// when the mapping is invoked.
class StructureMapInput extends BackboneElement {
  /// Primary constructor for
  /// [StructureMapInput]

  StructureMapInput({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.type,
    required this.mode,
    this.documentation,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory StructureMapInput.fromJson(
    Map<String, dynamic> json,
  ) {
    return StructureMapInput(
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
      name: FhirId.fromJson({
        'value': json['name'],
        '_value': json['_name'],
      }),
      type: (json['type'] != null || json['_type'] != null)
          ? FhirString.fromJson({
              'value': json['type'],
              '_value': json['_type'],
            })
          : null,
      mode: StructureMapInputMode.fromJson({
        'value': json['mode'],
        '_value': json['_mode'],
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

  /// Deserialize [StructureMapInput]
  /// from a [String] or [YamlMap] object
  factory StructureMapInput.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? StructureMapInput.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? StructureMapInput.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'StructureMapInput '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [StructureMapInput]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory StructureMapInput.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return StructureMapInput.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'StructureMapInput';

  /// [name]
  /// Name for this instance of data.
  final FhirId name;

  /// [type]
  /// Type for this instance of data.
  final FhirString? type;

  /// [mode]
  /// Mode for this instance of data.
  final StructureMapInputMode mode;

  /// [documentation]
  /// Documentation for this instance of data.
  final FhirString? documentation;
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

    if (type != null) {
      final fieldJson3 = type!.toJson();
      json['type'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_type'] = fieldJson3['_value'];
      }
    }

    final fieldJson4 = mode.toJson();
    json['mode'] = fieldJson4['value'];
    if (fieldJson4['_value'] != null) {
      json['_mode'] = fieldJson4['_value'];
    }

    if (documentation != null) {
      final fieldJson5 = documentation!.toJson();
      json['documentation'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_documentation'] = fieldJson5['_value'];
      }
    }

    return json;
  }

  @override
  StructureMapInput clone() => throw UnimplementedError();
  @override
  StructureMapInput copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? name,
    FhirString? type,
    StructureMapInputMode? mode,
    FhirString? documentation,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return StructureMapInput(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      type: type ?? this.type,
      mode: mode ?? this.mode,
      documentation: documentation ?? this.documentation,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [StructureMapRule]
/// Transform Rule from source to target.
class StructureMapRule extends BackboneElement {
  /// Primary constructor for
  /// [StructureMapRule]

  StructureMapRule({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    required this.source,
    this.target,
    this.rule,
    this.dependent,
    this.documentation,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory StructureMapRule.fromJson(
    Map<String, dynamic> json,
  ) {
    return StructureMapRule(
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
      name: FhirId.fromJson({
        'value': json['name'],
        '_value': json['_name'],
      }),
      source: ensureNonNullList(
        (json['source'] as List<dynamic>)
            .map<StructureMapSource>(
              (v) => StructureMapSource.fromJson(
                v as Map<String, dynamic>,
              ),
            )
            .toList(),
      ),
      target: json['target'] != null
          ? (json['target'] as List<dynamic>)
              .map<StructureMapTarget>(
                (v) => StructureMapTarget.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      rule: json['rule'] != null
          ? (json['rule'] as List<dynamic>)
              .map<StructureMapRule>(
                (v) => StructureMapRule.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      dependent: json['dependent'] != null
          ? (json['dependent'] as List<dynamic>)
              .map<StructureMapDependent>(
                (v) => StructureMapDependent.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      documentation:
          (json['documentation'] != null || json['_documentation'] != null)
              ? FhirString.fromJson({
                  'value': json['documentation'],
                  '_value': json['_documentation'],
                })
              : null,
    );
  }

  /// Deserialize [StructureMapRule]
  /// from a [String] or [YamlMap] object
  factory StructureMapRule.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? StructureMapRule.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? StructureMapRule.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'StructureMapRule '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [StructureMapRule]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory StructureMapRule.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return StructureMapRule.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'StructureMapRule';

  /// [name]
  /// Name of the rule for internal references.
  final FhirId name;

  /// [source]
  /// Source inputs to the mapping.
  final List<StructureMapSource> source;

  /// [target]
  /// Content to create because of this mapping rule.
  final List<StructureMapTarget>? target;

  /// [rule]
  /// Rules contained in this rule.
  final List<StructureMapRule>? rule;

  /// [dependent]
  /// Which other rules to apply in the context of this rule.
  final List<StructureMapDependent>? dependent;

  /// [documentation]
  /// Documentation for this instance of data.
  final FhirString? documentation;
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

    json['source'] = source.map((e) => e.toJson()).toList();

    if (target != null && target!.isNotEmpty) {
      json['target'] = target!.map((e) => e.toJson()).toList();
    }

    if (rule != null && rule!.isNotEmpty) {
      json['rule'] = rule!.map((e) => e.toJson()).toList();
    }

    if (dependent != null && dependent!.isNotEmpty) {
      json['dependent'] = dependent!.map((e) => e.toJson()).toList();
    }

    if (documentation != null) {
      final fieldJson7 = documentation!.toJson();
      json['documentation'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_documentation'] = fieldJson7['_value'];
      }
    }

    return json;
  }

  @override
  StructureMapRule clone() => throw UnimplementedError();
  @override
  StructureMapRule copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? name,
    List<StructureMapSource>? source,
    List<StructureMapTarget>? target,
    List<StructureMapRule>? rule,
    List<StructureMapDependent>? dependent,
    FhirString? documentation,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return StructureMapRule(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      source: source ?? this.source,
      target: target ?? this.target,
      rule: rule ?? this.rule,
      dependent: dependent ?? this.dependent,
      documentation: documentation ?? this.documentation,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [StructureMapSource]
/// Source inputs to the mapping.
class StructureMapSource extends BackboneElement {
  /// Primary constructor for
  /// [StructureMapSource]

  StructureMapSource({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.context,
    this.min,
    this.max,
    this.type,
    this.defaultValueBase64Binary,
    this.defaultValueBoolean,
    this.defaultValueCanonical,
    this.defaultValueCode,
    this.defaultValueDate,
    this.defaultValueDateTime,
    this.defaultValueDecimal,
    this.defaultValueId,
    this.defaultValueInstant,
    this.defaultValueInteger,
    this.defaultValueMarkdown,
    this.defaultValueOid,
    this.defaultValuePositiveInt,
    this.defaultValueString,
    this.defaultValueTime,
    this.defaultValueUnsignedInt,
    this.defaultValueUri,
    this.defaultValueUrl,
    this.defaultValueUuid,
    this.defaultValueAddress,
    this.defaultValueAge,
    this.defaultValueAnnotation,
    this.defaultValueAttachment,
    this.defaultValueCodeableConcept,
    this.defaultValueCoding,
    this.defaultValueContactPoint,
    this.defaultValueCount,
    this.defaultValueDistance,
    this.defaultValueDuration,
    this.defaultValueHumanName,
    this.defaultValueIdentifier,
    this.defaultValueMoney,
    this.defaultValuePeriod,
    this.defaultValueQuantity,
    this.defaultValueRange,
    this.defaultValueRatio,
    this.defaultValueReference,
    this.defaultValueSampledData,
    this.defaultValueSignature,
    this.defaultValueTiming,
    this.defaultValueContactDetail,
    this.defaultValueContributor,
    this.defaultValueDataRequirement,
    this.defaultValueExpression,
    this.defaultValueParameterDefinition,
    this.defaultValueRelatedArtifact,
    this.defaultValueTriggerDefinition,
    this.defaultValueUsageContext,
    this.defaultValueDosage,
    this.defaultValueMeta,
    this.element,
    this.listMode,
    this.variable,
    this.condition,
    this.check,
    this.logMessage,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory StructureMapSource.fromJson(
    Map<String, dynamic> json,
  ) {
    return StructureMapSource(
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
      context: FhirId.fromJson({
        'value': json['context'],
        '_value': json['_context'],
      }),
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
      type: (json['type'] != null || json['_type'] != null)
          ? FhirString.fromJson({
              'value': json['type'],
              '_value': json['_type'],
            })
          : null,
      defaultValueBase64Binary: (json['defaultValueBase64Binary'] != null ||
              json['_defaultValueBase64Binary'] != null)
          ? FhirBase64Binary.fromJson({
              'value': json['defaultValueBase64Binary'],
              '_value': json['_defaultValueBase64Binary'],
            })
          : null,
      defaultValueBoolean: (json['defaultValueBoolean'] != null ||
              json['_defaultValueBoolean'] != null)
          ? FhirBoolean.fromJson({
              'value': json['defaultValueBoolean'],
              '_value': json['_defaultValueBoolean'],
            })
          : null,
      defaultValueCanonical: (json['defaultValueCanonical'] != null ||
              json['_defaultValueCanonical'] != null)
          ? FhirCanonical.fromJson({
              'value': json['defaultValueCanonical'],
              '_value': json['_defaultValueCanonical'],
            })
          : null,
      defaultValueCode: (json['defaultValueCode'] != null ||
              json['_defaultValueCode'] != null)
          ? FhirCode.fromJson({
              'value': json['defaultValueCode'],
              '_value': json['_defaultValueCode'],
            })
          : null,
      defaultValueDate: (json['defaultValueDate'] != null ||
              json['_defaultValueDate'] != null)
          ? FhirDate.fromJson({
              'value': json['defaultValueDate'],
              '_value': json['_defaultValueDate'],
            })
          : null,
      defaultValueDateTime: (json['defaultValueDateTime'] != null ||
              json['_defaultValueDateTime'] != null)
          ? FhirDateTime.fromJson({
              'value': json['defaultValueDateTime'],
              '_value': json['_defaultValueDateTime'],
            })
          : null,
      defaultValueDecimal: (json['defaultValueDecimal'] != null ||
              json['_defaultValueDecimal'] != null)
          ? FhirDecimal.fromJson({
              'value': json['defaultValueDecimal'],
              '_value': json['_defaultValueDecimal'],
            })
          : null,
      defaultValueId:
          (json['defaultValueId'] != null || json['_defaultValueId'] != null)
              ? FhirId.fromJson({
                  'value': json['defaultValueId'],
                  '_value': json['_defaultValueId'],
                })
              : null,
      defaultValueInstant: (json['defaultValueInstant'] != null ||
              json['_defaultValueInstant'] != null)
          ? FhirInstant.fromJson({
              'value': json['defaultValueInstant'],
              '_value': json['_defaultValueInstant'],
            })
          : null,
      defaultValueInteger: (json['defaultValueInteger'] != null ||
              json['_defaultValueInteger'] != null)
          ? FhirInteger.fromJson({
              'value': json['defaultValueInteger'],
              '_value': json['_defaultValueInteger'],
            })
          : null,
      defaultValueMarkdown: (json['defaultValueMarkdown'] != null ||
              json['_defaultValueMarkdown'] != null)
          ? FhirMarkdown.fromJson({
              'value': json['defaultValueMarkdown'],
              '_value': json['_defaultValueMarkdown'],
            })
          : null,
      defaultValueOid:
          (json['defaultValueOid'] != null || json['_defaultValueOid'] != null)
              ? FhirOid.fromJson({
                  'value': json['defaultValueOid'],
                  '_value': json['_defaultValueOid'],
                })
              : null,
      defaultValuePositiveInt: (json['defaultValuePositiveInt'] != null ||
              json['_defaultValuePositiveInt'] != null)
          ? FhirPositiveInt.fromJson({
              'value': json['defaultValuePositiveInt'],
              '_value': json['_defaultValuePositiveInt'],
            })
          : null,
      defaultValueString: (json['defaultValueString'] != null ||
              json['_defaultValueString'] != null)
          ? FhirString.fromJson({
              'value': json['defaultValueString'],
              '_value': json['_defaultValueString'],
            })
          : null,
      defaultValueTime: (json['defaultValueTime'] != null ||
              json['_defaultValueTime'] != null)
          ? FhirTime.fromJson({
              'value': json['defaultValueTime'],
              '_value': json['_defaultValueTime'],
            })
          : null,
      defaultValueUnsignedInt: (json['defaultValueUnsignedInt'] != null ||
              json['_defaultValueUnsignedInt'] != null)
          ? FhirUnsignedInt.fromJson({
              'value': json['defaultValueUnsignedInt'],
              '_value': json['_defaultValueUnsignedInt'],
            })
          : null,
      defaultValueUri:
          (json['defaultValueUri'] != null || json['_defaultValueUri'] != null)
              ? FhirUri.fromJson({
                  'value': json['defaultValueUri'],
                  '_value': json['_defaultValueUri'],
                })
              : null,
      defaultValueUrl:
          (json['defaultValueUrl'] != null || json['_defaultValueUrl'] != null)
              ? FhirUrl.fromJson({
                  'value': json['defaultValueUrl'],
                  '_value': json['_defaultValueUrl'],
                })
              : null,
      defaultValueUuid: (json['defaultValueUuid'] != null ||
              json['_defaultValueUuid'] != null)
          ? FhirUuid.fromJson({
              'value': json['defaultValueUuid'],
              '_value': json['_defaultValueUuid'],
            })
          : null,
      defaultValueAddress: json['defaultValueAddress'] != null
          ? Address.fromJson(
              json['defaultValueAddress'] as Map<String, dynamic>,
            )
          : null,
      defaultValueAge: json['defaultValueAge'] != null
          ? Age.fromJson(
              json['defaultValueAge'] as Map<String, dynamic>,
            )
          : null,
      defaultValueAnnotation: json['defaultValueAnnotation'] != null
          ? Annotation.fromJson(
              json['defaultValueAnnotation'] as Map<String, dynamic>,
            )
          : null,
      defaultValueAttachment: json['defaultValueAttachment'] != null
          ? Attachment.fromJson(
              json['defaultValueAttachment'] as Map<String, dynamic>,
            )
          : null,
      defaultValueCodeableConcept: json['defaultValueCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['defaultValueCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      defaultValueCoding: json['defaultValueCoding'] != null
          ? Coding.fromJson(
              json['defaultValueCoding'] as Map<String, dynamic>,
            )
          : null,
      defaultValueContactPoint: json['defaultValueContactPoint'] != null
          ? ContactPoint.fromJson(
              json['defaultValueContactPoint'] as Map<String, dynamic>,
            )
          : null,
      defaultValueCount: json['defaultValueCount'] != null
          ? Count.fromJson(
              json['defaultValueCount'] as Map<String, dynamic>,
            )
          : null,
      defaultValueDistance: json['defaultValueDistance'] != null
          ? Distance.fromJson(
              json['defaultValueDistance'] as Map<String, dynamic>,
            )
          : null,
      defaultValueDuration: json['defaultValueDuration'] != null
          ? FhirDuration.fromJson(
              json['defaultValueDuration'] as Map<String, dynamic>,
            )
          : null,
      defaultValueHumanName: json['defaultValueHumanName'] != null
          ? HumanName.fromJson(
              json['defaultValueHumanName'] as Map<String, dynamic>,
            )
          : null,
      defaultValueIdentifier: json['defaultValueIdentifier'] != null
          ? Identifier.fromJson(
              json['defaultValueIdentifier'] as Map<String, dynamic>,
            )
          : null,
      defaultValueMoney: json['defaultValueMoney'] != null
          ? Money.fromJson(
              json['defaultValueMoney'] as Map<String, dynamic>,
            )
          : null,
      defaultValuePeriod: json['defaultValuePeriod'] != null
          ? Period.fromJson(
              json['defaultValuePeriod'] as Map<String, dynamic>,
            )
          : null,
      defaultValueQuantity: json['defaultValueQuantity'] != null
          ? Quantity.fromJson(
              json['defaultValueQuantity'] as Map<String, dynamic>,
            )
          : null,
      defaultValueRange: json['defaultValueRange'] != null
          ? Range.fromJson(
              json['defaultValueRange'] as Map<String, dynamic>,
            )
          : null,
      defaultValueRatio: json['defaultValueRatio'] != null
          ? Ratio.fromJson(
              json['defaultValueRatio'] as Map<String, dynamic>,
            )
          : null,
      defaultValueReference: json['defaultValueReference'] != null
          ? Reference.fromJson(
              json['defaultValueReference'] as Map<String, dynamic>,
            )
          : null,
      defaultValueSampledData: json['defaultValueSampledData'] != null
          ? SampledData.fromJson(
              json['defaultValueSampledData'] as Map<String, dynamic>,
            )
          : null,
      defaultValueSignature: json['defaultValueSignature'] != null
          ? Signature.fromJson(
              json['defaultValueSignature'] as Map<String, dynamic>,
            )
          : null,
      defaultValueTiming: json['defaultValueTiming'] != null
          ? Timing.fromJson(
              json['defaultValueTiming'] as Map<String, dynamic>,
            )
          : null,
      defaultValueContactDetail: json['defaultValueContactDetail'] != null
          ? ContactDetail.fromJson(
              json['defaultValueContactDetail'] as Map<String, dynamic>,
            )
          : null,
      defaultValueContributor: json['defaultValueContributor'] != null
          ? Contributor.fromJson(
              json['defaultValueContributor'] as Map<String, dynamic>,
            )
          : null,
      defaultValueDataRequirement: json['defaultValueDataRequirement'] != null
          ? DataRequirement.fromJson(
              json['defaultValueDataRequirement'] as Map<String, dynamic>,
            )
          : null,
      defaultValueExpression: json['defaultValueExpression'] != null
          ? FhirExpression.fromJson(
              json['defaultValueExpression'] as Map<String, dynamic>,
            )
          : null,
      defaultValueParameterDefinition:
          json['defaultValueParameterDefinition'] != null
              ? ParameterDefinition.fromJson(
                  json['defaultValueParameterDefinition']
                      as Map<String, dynamic>,
                )
              : null,
      defaultValueRelatedArtifact: json['defaultValueRelatedArtifact'] != null
          ? RelatedArtifact.fromJson(
              json['defaultValueRelatedArtifact'] as Map<String, dynamic>,
            )
          : null,
      defaultValueTriggerDefinition:
          json['defaultValueTriggerDefinition'] != null
              ? TriggerDefinition.fromJson(
                  json['defaultValueTriggerDefinition'] as Map<String, dynamic>,
                )
              : null,
      defaultValueUsageContext: json['defaultValueUsageContext'] != null
          ? UsageContext.fromJson(
              json['defaultValueUsageContext'] as Map<String, dynamic>,
            )
          : null,
      defaultValueDosage: json['defaultValueDosage'] != null
          ? Dosage.fromJson(
              json['defaultValueDosage'] as Map<String, dynamic>,
            )
          : null,
      defaultValueMeta: json['defaultValueMeta'] != null
          ? FhirMeta.fromJson(
              json['defaultValueMeta'] as Map<String, dynamic>,
            )
          : null,
      element: (json['element'] != null || json['_element'] != null)
          ? FhirString.fromJson({
              'value': json['element'],
              '_value': json['_element'],
            })
          : null,
      listMode: (json['listMode'] != null || json['_listMode'] != null)
          ? StructureMapSourceListMode.fromJson({
              'value': json['listMode'],
              '_value': json['_listMode'],
            })
          : null,
      variable: (json['variable'] != null || json['_variable'] != null)
          ? FhirId.fromJson({
              'value': json['variable'],
              '_value': json['_variable'],
            })
          : null,
      condition: (json['condition'] != null || json['_condition'] != null)
          ? FhirString.fromJson({
              'value': json['condition'],
              '_value': json['_condition'],
            })
          : null,
      check: (json['check'] != null || json['_check'] != null)
          ? FhirString.fromJson({
              'value': json['check'],
              '_value': json['_check'],
            })
          : null,
      logMessage: (json['logMessage'] != null || json['_logMessage'] != null)
          ? FhirString.fromJson({
              'value': json['logMessage'],
              '_value': json['_logMessage'],
            })
          : null,
    );
  }

  /// Deserialize [StructureMapSource]
  /// from a [String] or [YamlMap] object
  factory StructureMapSource.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? StructureMapSource.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? StructureMapSource.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'StructureMapSource '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [StructureMapSource]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory StructureMapSource.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return StructureMapSource.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'StructureMapSource';

  /// [context]
  /// Type or variable this rule applies to.
  final FhirId context;

  /// [min]
  /// Specified minimum cardinality for the element. This is optional; if
  /// present, it acts an implicit check on the input content.
  final FhirInteger? min;

  /// [max]
  /// Specified maximum cardinality for the element - a number or a "*". This
  /// is optional; if present, it acts an implicit check on the input content
  /// (* just serves as documentation; it's the default value).
  final FhirString? max;

  /// [type]
  /// Specified type for the element. This works as a condition on the
  /// mapping - use for polymorphic elements.
  final FhirString? type;

  /// [defaultValueBase64Binary]
  /// A value to use if there is no existing value in the source object.
  final FhirBase64Binary? defaultValueBase64Binary;

  /// [defaultValueBoolean]
  /// A value to use if there is no existing value in the source object.
  final FhirBoolean? defaultValueBoolean;

  /// [defaultValueCanonical]
  /// A value to use if there is no existing value in the source object.
  final FhirCanonical? defaultValueCanonical;

  /// [defaultValueCode]
  /// A value to use if there is no existing value in the source object.
  final FhirCode? defaultValueCode;

  /// [defaultValueDate]
  /// A value to use if there is no existing value in the source object.
  final FhirDate? defaultValueDate;

  /// [defaultValueDateTime]
  /// A value to use if there is no existing value in the source object.
  final FhirDateTime? defaultValueDateTime;

  /// [defaultValueDecimal]
  /// A value to use if there is no existing value in the source object.
  final FhirDecimal? defaultValueDecimal;

  /// [defaultValueId]
  /// A value to use if there is no existing value in the source object.
  final FhirId? defaultValueId;

  /// [defaultValueInstant]
  /// A value to use if there is no existing value in the source object.
  final FhirInstant? defaultValueInstant;

  /// [defaultValueInteger]
  /// A value to use if there is no existing value in the source object.
  final FhirInteger? defaultValueInteger;

  /// [defaultValueMarkdown]
  /// A value to use if there is no existing value in the source object.
  final FhirMarkdown? defaultValueMarkdown;

  /// [defaultValueOid]
  /// A value to use if there is no existing value in the source object.
  final FhirOid? defaultValueOid;

  /// [defaultValuePositiveInt]
  /// A value to use if there is no existing value in the source object.
  final FhirPositiveInt? defaultValuePositiveInt;

  /// [defaultValueString]
  /// A value to use if there is no existing value in the source object.
  final FhirString? defaultValueString;

  /// [defaultValueTime]
  /// A value to use if there is no existing value in the source object.
  final FhirTime? defaultValueTime;

  /// [defaultValueUnsignedInt]
  /// A value to use if there is no existing value in the source object.
  final FhirUnsignedInt? defaultValueUnsignedInt;

  /// [defaultValueUri]
  /// A value to use if there is no existing value in the source object.
  final FhirUri? defaultValueUri;

  /// [defaultValueUrl]
  /// A value to use if there is no existing value in the source object.
  final FhirUrl? defaultValueUrl;

  /// [defaultValueUuid]
  /// A value to use if there is no existing value in the source object.
  final FhirUuid? defaultValueUuid;

  /// [defaultValueAddress]
  /// A value to use if there is no existing value in the source object.
  final Address? defaultValueAddress;

  /// [defaultValueAge]
  /// A value to use if there is no existing value in the source object.
  final Age? defaultValueAge;

  /// [defaultValueAnnotation]
  /// A value to use if there is no existing value in the source object.
  final Annotation? defaultValueAnnotation;

  /// [defaultValueAttachment]
  /// A value to use if there is no existing value in the source object.
  final Attachment? defaultValueAttachment;

  /// [defaultValueCodeableConcept]
  /// A value to use if there is no existing value in the source object.
  final CodeableConcept? defaultValueCodeableConcept;

  /// [defaultValueCoding]
  /// A value to use if there is no existing value in the source object.
  final Coding? defaultValueCoding;

  /// [defaultValueContactPoint]
  /// A value to use if there is no existing value in the source object.
  final ContactPoint? defaultValueContactPoint;

  /// [defaultValueCount]
  /// A value to use if there is no existing value in the source object.
  final Count? defaultValueCount;

  /// [defaultValueDistance]
  /// A value to use if there is no existing value in the source object.
  final Distance? defaultValueDistance;

  /// [defaultValueDuration]
  /// A value to use if there is no existing value in the source object.
  final FhirDuration? defaultValueDuration;

  /// [defaultValueHumanName]
  /// A value to use if there is no existing value in the source object.
  final HumanName? defaultValueHumanName;

  /// [defaultValueIdentifier]
  /// A value to use if there is no existing value in the source object.
  final Identifier? defaultValueIdentifier;

  /// [defaultValueMoney]
  /// A value to use if there is no existing value in the source object.
  final Money? defaultValueMoney;

  /// [defaultValuePeriod]
  /// A value to use if there is no existing value in the source object.
  final Period? defaultValuePeriod;

  /// [defaultValueQuantity]
  /// A value to use if there is no existing value in the source object.
  final Quantity? defaultValueQuantity;

  /// [defaultValueRange]
  /// A value to use if there is no existing value in the source object.
  final Range? defaultValueRange;

  /// [defaultValueRatio]
  /// A value to use if there is no existing value in the source object.
  final Ratio? defaultValueRatio;

  /// [defaultValueReference]
  /// A value to use if there is no existing value in the source object.
  final Reference? defaultValueReference;

  /// [defaultValueSampledData]
  /// A value to use if there is no existing value in the source object.
  final SampledData? defaultValueSampledData;

  /// [defaultValueSignature]
  /// A value to use if there is no existing value in the source object.
  final Signature? defaultValueSignature;

  /// [defaultValueTiming]
  /// A value to use if there is no existing value in the source object.
  final Timing? defaultValueTiming;

  /// [defaultValueContactDetail]
  /// A value to use if there is no existing value in the source object.
  final ContactDetail? defaultValueContactDetail;

  /// [defaultValueContributor]
  /// A value to use if there is no existing value in the source object.
  final Contributor? defaultValueContributor;

  /// [defaultValueDataRequirement]
  /// A value to use if there is no existing value in the source object.
  final DataRequirement? defaultValueDataRequirement;

  /// [defaultValueExpression]
  /// A value to use if there is no existing value in the source object.
  final FhirExpression? defaultValueExpression;

  /// [defaultValueParameterDefinition]
  /// A value to use if there is no existing value in the source object.
  final ParameterDefinition? defaultValueParameterDefinition;

  /// [defaultValueRelatedArtifact]
  /// A value to use if there is no existing value in the source object.
  final RelatedArtifact? defaultValueRelatedArtifact;

  /// [defaultValueTriggerDefinition]
  /// A value to use if there is no existing value in the source object.
  final TriggerDefinition? defaultValueTriggerDefinition;

  /// [defaultValueUsageContext]
  /// A value to use if there is no existing value in the source object.
  final UsageContext? defaultValueUsageContext;

  /// [defaultValueDosage]
  /// A value to use if there is no existing value in the source object.
  final Dosage? defaultValueDosage;

  /// [defaultValueMeta]
  /// A value to use if there is no existing value in the source object.
  final FhirMeta? defaultValueMeta;

  /// [element]
  /// Optional field for this source.
  final FhirString? element;

  /// [listMode]
  /// How to handle the list mode for this element.
  final StructureMapSourceListMode? listMode;

  /// [variable]
  /// Named context for field, if a field is specified.
  final FhirId? variable;

  /// [condition]
  /// FHIRPath expression - must be true or the rule does not apply.
  final FhirString? condition;

  /// [check]
  /// FHIRPath expression - must be true or the mapping engine throws an
  /// error instead of completing.
  final FhirString? check;

  /// [logMessage]
  /// A FHIRPath expression which specifies a message to put in the transform
  /// log when content matching the source rule is found.
  final FhirString? logMessage;
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

    final fieldJson2 = context.toJson();
    json['context'] = fieldJson2['value'];
    if (fieldJson2['_value'] != null) {
      json['_context'] = fieldJson2['_value'];
    }

    if (min != null) {
      final fieldJson3 = min!.toJson();
      json['min'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_min'] = fieldJson3['_value'];
      }
    }

    if (max != null) {
      final fieldJson4 = max!.toJson();
      json['max'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_max'] = fieldJson4['_value'];
      }
    }

    if (type != null) {
      final fieldJson5 = type!.toJson();
      json['type'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_type'] = fieldJson5['_value'];
      }
    }

    if (defaultValueBase64Binary != null) {
      final fieldJson6 = defaultValueBase64Binary!.toJson();
      json['defaultValueBase64Binary'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_defaultValueBase64Binary'] = fieldJson6['_value'];
      }
    }

    if (defaultValueBoolean != null) {
      final fieldJson7 = defaultValueBoolean!.toJson();
      json['defaultValueBoolean'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_defaultValueBoolean'] = fieldJson7['_value'];
      }
    }

    if (defaultValueCanonical != null) {
      final fieldJson8 = defaultValueCanonical!.toJson();
      json['defaultValueCanonical'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_defaultValueCanonical'] = fieldJson8['_value'];
      }
    }

    if (defaultValueCode != null) {
      final fieldJson9 = defaultValueCode!.toJson();
      json['defaultValueCode'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_defaultValueCode'] = fieldJson9['_value'];
      }
    }

    if (defaultValueDate != null) {
      final fieldJson10 = defaultValueDate!.toJson();
      json['defaultValueDate'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_defaultValueDate'] = fieldJson10['_value'];
      }
    }

    if (defaultValueDateTime != null) {
      final fieldJson11 = defaultValueDateTime!.toJson();
      json['defaultValueDateTime'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_defaultValueDateTime'] = fieldJson11['_value'];
      }
    }

    if (defaultValueDecimal != null) {
      final fieldJson12 = defaultValueDecimal!.toJson();
      json['defaultValueDecimal'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_defaultValueDecimal'] = fieldJson12['_value'];
      }
    }

    if (defaultValueId != null) {
      final fieldJson13 = defaultValueId!.toJson();
      json['defaultValueId'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_defaultValueId'] = fieldJson13['_value'];
      }
    }

    if (defaultValueInstant != null) {
      final fieldJson14 = defaultValueInstant!.toJson();
      json['defaultValueInstant'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_defaultValueInstant'] = fieldJson14['_value'];
      }
    }

    if (defaultValueInteger != null) {
      final fieldJson15 = defaultValueInteger!.toJson();
      json['defaultValueInteger'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_defaultValueInteger'] = fieldJson15['_value'];
      }
    }

    if (defaultValueMarkdown != null) {
      final fieldJson16 = defaultValueMarkdown!.toJson();
      json['defaultValueMarkdown'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_defaultValueMarkdown'] = fieldJson16['_value'];
      }
    }

    if (defaultValueOid != null) {
      final fieldJson17 = defaultValueOid!.toJson();
      json['defaultValueOid'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_defaultValueOid'] = fieldJson17['_value'];
      }
    }

    if (defaultValuePositiveInt != null) {
      final fieldJson18 = defaultValuePositiveInt!.toJson();
      json['defaultValuePositiveInt'] = fieldJson18['value'];
      if (fieldJson18['_value'] != null) {
        json['_defaultValuePositiveInt'] = fieldJson18['_value'];
      }
    }

    if (defaultValueString != null) {
      final fieldJson19 = defaultValueString!.toJson();
      json['defaultValueString'] = fieldJson19['value'];
      if (fieldJson19['_value'] != null) {
        json['_defaultValueString'] = fieldJson19['_value'];
      }
    }

    if (defaultValueTime != null) {
      final fieldJson20 = defaultValueTime!.toJson();
      json['defaultValueTime'] = fieldJson20['value'];
      if (fieldJson20['_value'] != null) {
        json['_defaultValueTime'] = fieldJson20['_value'];
      }
    }

    if (defaultValueUnsignedInt != null) {
      final fieldJson21 = defaultValueUnsignedInt!.toJson();
      json['defaultValueUnsignedInt'] = fieldJson21['value'];
      if (fieldJson21['_value'] != null) {
        json['_defaultValueUnsignedInt'] = fieldJson21['_value'];
      }
    }

    if (defaultValueUri != null) {
      final fieldJson22 = defaultValueUri!.toJson();
      json['defaultValueUri'] = fieldJson22['value'];
      if (fieldJson22['_value'] != null) {
        json['_defaultValueUri'] = fieldJson22['_value'];
      }
    }

    if (defaultValueUrl != null) {
      final fieldJson23 = defaultValueUrl!.toJson();
      json['defaultValueUrl'] = fieldJson23['value'];
      if (fieldJson23['_value'] != null) {
        json['_defaultValueUrl'] = fieldJson23['_value'];
      }
    }

    if (defaultValueUuid != null) {
      final fieldJson24 = defaultValueUuid!.toJson();
      json['defaultValueUuid'] = fieldJson24['value'];
      if (fieldJson24['_value'] != null) {
        json['_defaultValueUuid'] = fieldJson24['_value'];
      }
    }

    if (defaultValueAddress != null) {
      json['defaultValueAddress'] = defaultValueAddress!.toJson();
    }

    if (defaultValueAge != null) {
      json['defaultValueAge'] = defaultValueAge!.toJson();
    }

    if (defaultValueAnnotation != null) {
      json['defaultValueAnnotation'] = defaultValueAnnotation!.toJson();
    }

    if (defaultValueAttachment != null) {
      json['defaultValueAttachment'] = defaultValueAttachment!.toJson();
    }

    if (defaultValueCodeableConcept != null) {
      json['defaultValueCodeableConcept'] =
          defaultValueCodeableConcept!.toJson();
    }

    if (defaultValueCoding != null) {
      json['defaultValueCoding'] = defaultValueCoding!.toJson();
    }

    if (defaultValueContactPoint != null) {
      json['defaultValueContactPoint'] = defaultValueContactPoint!.toJson();
    }

    if (defaultValueCount != null) {
      json['defaultValueCount'] = defaultValueCount!.toJson();
    }

    if (defaultValueDistance != null) {
      json['defaultValueDistance'] = defaultValueDistance!.toJson();
    }

    if (defaultValueDuration != null) {
      json['defaultValueDuration'] = defaultValueDuration!.toJson();
    }

    if (defaultValueHumanName != null) {
      json['defaultValueHumanName'] = defaultValueHumanName!.toJson();
    }

    if (defaultValueIdentifier != null) {
      json['defaultValueIdentifier'] = defaultValueIdentifier!.toJson();
    }

    if (defaultValueMoney != null) {
      json['defaultValueMoney'] = defaultValueMoney!.toJson();
    }

    if (defaultValuePeriod != null) {
      json['defaultValuePeriod'] = defaultValuePeriod!.toJson();
    }

    if (defaultValueQuantity != null) {
      json['defaultValueQuantity'] = defaultValueQuantity!.toJson();
    }

    if (defaultValueRange != null) {
      json['defaultValueRange'] = defaultValueRange!.toJson();
    }

    if (defaultValueRatio != null) {
      json['defaultValueRatio'] = defaultValueRatio!.toJson();
    }

    if (defaultValueReference != null) {
      json['defaultValueReference'] = defaultValueReference!.toJson();
    }

    if (defaultValueSampledData != null) {
      json['defaultValueSampledData'] = defaultValueSampledData!.toJson();
    }

    if (defaultValueSignature != null) {
      json['defaultValueSignature'] = defaultValueSignature!.toJson();
    }

    if (defaultValueTiming != null) {
      json['defaultValueTiming'] = defaultValueTiming!.toJson();
    }

    if (defaultValueContactDetail != null) {
      json['defaultValueContactDetail'] = defaultValueContactDetail!.toJson();
    }

    if (defaultValueContributor != null) {
      json['defaultValueContributor'] = defaultValueContributor!.toJson();
    }

    if (defaultValueDataRequirement != null) {
      json['defaultValueDataRequirement'] =
          defaultValueDataRequirement!.toJson();
    }

    if (defaultValueExpression != null) {
      json['defaultValueExpression'] = defaultValueExpression!.toJson();
    }

    if (defaultValueParameterDefinition != null) {
      json['defaultValueParameterDefinition'] =
          defaultValueParameterDefinition!.toJson();
    }

    if (defaultValueRelatedArtifact != null) {
      json['defaultValueRelatedArtifact'] =
          defaultValueRelatedArtifact!.toJson();
    }

    if (defaultValueTriggerDefinition != null) {
      json['defaultValueTriggerDefinition'] =
          defaultValueTriggerDefinition!.toJson();
    }

    if (defaultValueUsageContext != null) {
      json['defaultValueUsageContext'] = defaultValueUsageContext!.toJson();
    }

    if (defaultValueDosage != null) {
      json['defaultValueDosage'] = defaultValueDosage!.toJson();
    }

    if (defaultValueMeta != null) {
      json['defaultValueMeta'] = defaultValueMeta!.toJson();
    }

    if (element != null) {
      final fieldJson56 = element!.toJson();
      json['element'] = fieldJson56['value'];
      if (fieldJson56['_value'] != null) {
        json['_element'] = fieldJson56['_value'];
      }
    }

    if (listMode != null) {
      final fieldJson57 = listMode!.toJson();
      json['listMode'] = fieldJson57['value'];
      if (fieldJson57['_value'] != null) {
        json['_listMode'] = fieldJson57['_value'];
      }
    }

    if (variable != null) {
      final fieldJson58 = variable!.toJson();
      json['variable'] = fieldJson58['value'];
      if (fieldJson58['_value'] != null) {
        json['_variable'] = fieldJson58['_value'];
      }
    }

    if (condition != null) {
      final fieldJson59 = condition!.toJson();
      json['condition'] = fieldJson59['value'];
      if (fieldJson59['_value'] != null) {
        json['_condition'] = fieldJson59['_value'];
      }
    }

    if (check != null) {
      final fieldJson60 = check!.toJson();
      json['check'] = fieldJson60['value'];
      if (fieldJson60['_value'] != null) {
        json['_check'] = fieldJson60['_value'];
      }
    }

    if (logMessage != null) {
      final fieldJson61 = logMessage!.toJson();
      json['logMessage'] = fieldJson61['value'];
      if (fieldJson61['_value'] != null) {
        json['_logMessage'] = fieldJson61['_value'];
      }
    }

    return json;
  }

  @override
  StructureMapSource clone() => throw UnimplementedError();
  @override
  StructureMapSource copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? context,
    FhirInteger? min,
    FhirString? max,
    FhirString? type,
    FhirBase64Binary? defaultValueBase64Binary,
    FhirBoolean? defaultValueBoolean,
    FhirCanonical? defaultValueCanonical,
    FhirCode? defaultValueCode,
    FhirDate? defaultValueDate,
    FhirDateTime? defaultValueDateTime,
    FhirDecimal? defaultValueDecimal,
    FhirId? defaultValueId,
    FhirInstant? defaultValueInstant,
    FhirInteger? defaultValueInteger,
    FhirMarkdown? defaultValueMarkdown,
    FhirOid? defaultValueOid,
    FhirPositiveInt? defaultValuePositiveInt,
    FhirString? defaultValueString,
    FhirTime? defaultValueTime,
    FhirUnsignedInt? defaultValueUnsignedInt,
    FhirUri? defaultValueUri,
    FhirUrl? defaultValueUrl,
    FhirUuid? defaultValueUuid,
    Address? defaultValueAddress,
    Age? defaultValueAge,
    Annotation? defaultValueAnnotation,
    Attachment? defaultValueAttachment,
    CodeableConcept? defaultValueCodeableConcept,
    Coding? defaultValueCoding,
    ContactPoint? defaultValueContactPoint,
    Count? defaultValueCount,
    Distance? defaultValueDistance,
    FhirDuration? defaultValueDuration,
    HumanName? defaultValueHumanName,
    Identifier? defaultValueIdentifier,
    Money? defaultValueMoney,
    Period? defaultValuePeriod,
    Quantity? defaultValueQuantity,
    Range? defaultValueRange,
    Ratio? defaultValueRatio,
    Reference? defaultValueReference,
    SampledData? defaultValueSampledData,
    Signature? defaultValueSignature,
    Timing? defaultValueTiming,
    ContactDetail? defaultValueContactDetail,
    Contributor? defaultValueContributor,
    DataRequirement? defaultValueDataRequirement,
    FhirExpression? defaultValueExpression,
    ParameterDefinition? defaultValueParameterDefinition,
    RelatedArtifact? defaultValueRelatedArtifact,
    TriggerDefinition? defaultValueTriggerDefinition,
    UsageContext? defaultValueUsageContext,
    Dosage? defaultValueDosage,
    FhirMeta? defaultValueMeta,
    FhirString? element,
    StructureMapSourceListMode? listMode,
    FhirId? variable,
    FhirString? condition,
    FhirString? check,
    FhirString? logMessage,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return StructureMapSource(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      context: context ?? this.context,
      min: min ?? this.min,
      max: max ?? this.max,
      type: type ?? this.type,
      defaultValueBase64Binary:
          defaultValueBase64Binary ?? this.defaultValueBase64Binary,
      defaultValueBoolean: defaultValueBoolean ?? this.defaultValueBoolean,
      defaultValueCanonical:
          defaultValueCanonical ?? this.defaultValueCanonical,
      defaultValueCode: defaultValueCode ?? this.defaultValueCode,
      defaultValueDate: defaultValueDate ?? this.defaultValueDate,
      defaultValueDateTime: defaultValueDateTime ?? this.defaultValueDateTime,
      defaultValueDecimal: defaultValueDecimal ?? this.defaultValueDecimal,
      defaultValueId: defaultValueId ?? this.defaultValueId,
      defaultValueInstant: defaultValueInstant ?? this.defaultValueInstant,
      defaultValueInteger: defaultValueInteger ?? this.defaultValueInteger,
      defaultValueMarkdown: defaultValueMarkdown ?? this.defaultValueMarkdown,
      defaultValueOid: defaultValueOid ?? this.defaultValueOid,
      defaultValuePositiveInt:
          defaultValuePositiveInt ?? this.defaultValuePositiveInt,
      defaultValueString: defaultValueString ?? this.defaultValueString,
      defaultValueTime: defaultValueTime ?? this.defaultValueTime,
      defaultValueUnsignedInt:
          defaultValueUnsignedInt ?? this.defaultValueUnsignedInt,
      defaultValueUri: defaultValueUri ?? this.defaultValueUri,
      defaultValueUrl: defaultValueUrl ?? this.defaultValueUrl,
      defaultValueUuid: defaultValueUuid ?? this.defaultValueUuid,
      defaultValueAddress: defaultValueAddress ?? this.defaultValueAddress,
      defaultValueAge: defaultValueAge ?? this.defaultValueAge,
      defaultValueAnnotation:
          defaultValueAnnotation ?? this.defaultValueAnnotation,
      defaultValueAttachment:
          defaultValueAttachment ?? this.defaultValueAttachment,
      defaultValueCodeableConcept:
          defaultValueCodeableConcept ?? this.defaultValueCodeableConcept,
      defaultValueCoding: defaultValueCoding ?? this.defaultValueCoding,
      defaultValueContactPoint:
          defaultValueContactPoint ?? this.defaultValueContactPoint,
      defaultValueCount: defaultValueCount ?? this.defaultValueCount,
      defaultValueDistance: defaultValueDistance ?? this.defaultValueDistance,
      defaultValueDuration: defaultValueDuration ?? this.defaultValueDuration,
      defaultValueHumanName:
          defaultValueHumanName ?? this.defaultValueHumanName,
      defaultValueIdentifier:
          defaultValueIdentifier ?? this.defaultValueIdentifier,
      defaultValueMoney: defaultValueMoney ?? this.defaultValueMoney,
      defaultValuePeriod: defaultValuePeriod ?? this.defaultValuePeriod,
      defaultValueQuantity: defaultValueQuantity ?? this.defaultValueQuantity,
      defaultValueRange: defaultValueRange ?? this.defaultValueRange,
      defaultValueRatio: defaultValueRatio ?? this.defaultValueRatio,
      defaultValueReference:
          defaultValueReference ?? this.defaultValueReference,
      defaultValueSampledData:
          defaultValueSampledData ?? this.defaultValueSampledData,
      defaultValueSignature:
          defaultValueSignature ?? this.defaultValueSignature,
      defaultValueTiming: defaultValueTiming ?? this.defaultValueTiming,
      defaultValueContactDetail:
          defaultValueContactDetail ?? this.defaultValueContactDetail,
      defaultValueContributor:
          defaultValueContributor ?? this.defaultValueContributor,
      defaultValueDataRequirement:
          defaultValueDataRequirement ?? this.defaultValueDataRequirement,
      defaultValueExpression:
          defaultValueExpression ?? this.defaultValueExpression,
      defaultValueParameterDefinition: defaultValueParameterDefinition ??
          this.defaultValueParameterDefinition,
      defaultValueRelatedArtifact:
          defaultValueRelatedArtifact ?? this.defaultValueRelatedArtifact,
      defaultValueTriggerDefinition:
          defaultValueTriggerDefinition ?? this.defaultValueTriggerDefinition,
      defaultValueUsageContext:
          defaultValueUsageContext ?? this.defaultValueUsageContext,
      defaultValueDosage: defaultValueDosage ?? this.defaultValueDosage,
      defaultValueMeta: defaultValueMeta ?? this.defaultValueMeta,
      element: element ?? this.element,
      listMode: listMode ?? this.listMode,
      variable: variable ?? this.variable,
      condition: condition ?? this.condition,
      check: check ?? this.check,
      logMessage: logMessage ?? this.logMessage,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [StructureMapTarget]
/// Content to create because of this mapping rule.
class StructureMapTarget extends BackboneElement {
  /// Primary constructor for
  /// [StructureMapTarget]

  StructureMapTarget({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.context,
    this.contextType,
    this.element,
    this.variable,
    this.listMode,
    this.listRuleId,
    this.transform,
    this.parameter,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory StructureMapTarget.fromJson(
    Map<String, dynamic> json,
  ) {
    return StructureMapTarget(
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
      context: (json['context'] != null || json['_context'] != null)
          ? FhirId.fromJson({
              'value': json['context'],
              '_value': json['_context'],
            })
          : null,
      contextType: (json['contextType'] != null || json['_contextType'] != null)
          ? StructureMapContextType.fromJson({
              'value': json['contextType'],
              '_value': json['_contextType'],
            })
          : null,
      element: (json['element'] != null || json['_element'] != null)
          ? FhirString.fromJson({
              'value': json['element'],
              '_value': json['_element'],
            })
          : null,
      variable: (json['variable'] != null || json['_variable'] != null)
          ? FhirId.fromJson({
              'value': json['variable'],
              '_value': json['_variable'],
            })
          : null,
      listMode: parsePrimitiveList<StructureMapTargetListMode>(
        json['listMode'] as List<dynamic>?,
        json['_listMode'] as List<dynamic>?,
        fromJson: StructureMapTargetListMode.fromJson,
      ),
      listRuleId: (json['listRuleId'] != null || json['_listRuleId'] != null)
          ? FhirId.fromJson({
              'value': json['listRuleId'],
              '_value': json['_listRuleId'],
            })
          : null,
      transform: (json['transform'] != null || json['_transform'] != null)
          ? StructureMapTransform.fromJson({
              'value': json['transform'],
              '_value': json['_transform'],
            })
          : null,
      parameter: json['parameter'] != null
          ? (json['parameter'] as List<dynamic>)
              .map<StructureMapParameter>(
                (v) => StructureMapParameter.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [StructureMapTarget]
  /// from a [String] or [YamlMap] object
  factory StructureMapTarget.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? StructureMapTarget.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? StructureMapTarget.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'StructureMapTarget '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [StructureMapTarget]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory StructureMapTarget.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return StructureMapTarget.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'StructureMapTarget';

  /// [context]
  /// Type or variable this rule applies to.
  final FhirId? context;

  /// [contextType]
  /// How to interpret the context.
  final StructureMapContextType? contextType;

  /// [element]
  /// Field to create in the context.
  final FhirString? element;

  /// [variable]
  /// Named context for field, if desired, and a field is specified.
  final FhirId? variable;

  /// [listMode]
  /// If field is a list, how to manage the list.
  final List<StructureMapTargetListMode>? listMode;

  /// [listRuleId]
  /// Internal rule reference for shared list items.
  final FhirId? listRuleId;

  /// [transform]
  /// How the data is copied / created.
  final StructureMapTransform? transform;

  /// [parameter]
  /// Parameters to the transform.
  final List<StructureMapParameter>? parameter;
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

    if (context != null) {
      final fieldJson2 = context!.toJson();
      json['context'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_context'] = fieldJson2['_value'];
      }
    }

    if (contextType != null) {
      final fieldJson3 = contextType!.toJson();
      json['contextType'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_contextType'] = fieldJson3['_value'];
      }
    }

    if (element != null) {
      final fieldJson4 = element!.toJson();
      json['element'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_element'] = fieldJson4['_value'];
      }
    }

    if (variable != null) {
      final fieldJson5 = variable!.toJson();
      json['variable'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_variable'] = fieldJson5['_value'];
      }
    }

    if (listMode != null && listMode!.isNotEmpty) {
      final fieldJson6 = listMode!.map((e) => e.toJson()).toList();
      json['listMode'] = fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_listMode'] = fieldJson6.map((e) => e['_value']).toList();
      }
    }

    if (listRuleId != null) {
      final fieldJson7 = listRuleId!.toJson();
      json['listRuleId'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_listRuleId'] = fieldJson7['_value'];
      }
    }

    if (transform != null) {
      final fieldJson8 = transform!.toJson();
      json['transform'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_transform'] = fieldJson8['_value'];
      }
    }

    if (parameter != null && parameter!.isNotEmpty) {
      json['parameter'] = parameter!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  StructureMapTarget clone() => throw UnimplementedError();
  @override
  StructureMapTarget copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? context,
    StructureMapContextType? contextType,
    FhirString? element,
    FhirId? variable,
    List<StructureMapTargetListMode>? listMode,
    FhirId? listRuleId,
    StructureMapTransform? transform,
    List<StructureMapParameter>? parameter,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return StructureMapTarget(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      context: context ?? this.context,
      contextType: contextType ?? this.contextType,
      element: element ?? this.element,
      variable: variable ?? this.variable,
      listMode: listMode ?? this.listMode,
      listRuleId: listRuleId ?? this.listRuleId,
      transform: transform ?? this.transform,
      parameter: parameter ?? this.parameter,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [StructureMapParameter]
/// Parameters to the transform.
class StructureMapParameter extends BackboneElement {
  /// Primary constructor for
  /// [StructureMapParameter]

  StructureMapParameter({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.valueId,
    this.valueString,
    this.valueBoolean,
    this.valueInteger,
    this.valueDecimal,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory StructureMapParameter.fromJson(
    Map<String, dynamic> json,
  ) {
    return StructureMapParameter(
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
      valueId: (json['valueId'] != null || json['_valueId'] != null)
          ? FhirId.fromJson({
              'value': json['valueId'],
              '_value': json['_valueId'],
            })
          : null,
      valueString: (json['valueString'] != null || json['_valueString'] != null)
          ? FhirString.fromJson({
              'value': json['valueString'],
              '_value': json['_valueString'],
            })
          : null,
      valueBoolean:
          (json['valueBoolean'] != null || json['_valueBoolean'] != null)
              ? FhirBoolean.fromJson({
                  'value': json['valueBoolean'],
                  '_value': json['_valueBoolean'],
                })
              : null,
      valueInteger:
          (json['valueInteger'] != null || json['_valueInteger'] != null)
              ? FhirInteger.fromJson({
                  'value': json['valueInteger'],
                  '_value': json['_valueInteger'],
                })
              : null,
      valueDecimal:
          (json['valueDecimal'] != null || json['_valueDecimal'] != null)
              ? FhirDecimal.fromJson({
                  'value': json['valueDecimal'],
                  '_value': json['_valueDecimal'],
                })
              : null,
    );
  }

  /// Deserialize [StructureMapParameter]
  /// from a [String] or [YamlMap] object
  factory StructureMapParameter.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? StructureMapParameter.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? StructureMapParameter.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'StructureMapParameter '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [StructureMapParameter]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory StructureMapParameter.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return StructureMapParameter.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'StructureMapParameter';

  /// [valueId]
  /// Parameter value - variable or literal.
  final FhirId? valueId;

  /// [valueString]
  /// Parameter value - variable or literal.
  final FhirString? valueString;

  /// [valueBoolean]
  /// Parameter value - variable or literal.
  final FhirBoolean? valueBoolean;

  /// [valueInteger]
  /// Parameter value - variable or literal.
  final FhirInteger? valueInteger;

  /// [valueDecimal]
  /// Parameter value - variable or literal.
  final FhirDecimal? valueDecimal;
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

    if (valueId != null) {
      final fieldJson2 = valueId!.toJson();
      json['valueId'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_valueId'] = fieldJson2['_value'];
      }
    }

    if (valueString != null) {
      final fieldJson3 = valueString!.toJson();
      json['valueString'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_valueString'] = fieldJson3['_value'];
      }
    }

    if (valueBoolean != null) {
      final fieldJson4 = valueBoolean!.toJson();
      json['valueBoolean'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_valueBoolean'] = fieldJson4['_value'];
      }
    }

    if (valueInteger != null) {
      final fieldJson5 = valueInteger!.toJson();
      json['valueInteger'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_valueInteger'] = fieldJson5['_value'];
      }
    }

    if (valueDecimal != null) {
      final fieldJson6 = valueDecimal!.toJson();
      json['valueDecimal'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_valueDecimal'] = fieldJson6['_value'];
      }
    }

    return json;
  }

  @override
  StructureMapParameter clone() => throw UnimplementedError();
  @override
  StructureMapParameter copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? valueId,
    FhirString? valueString,
    FhirBoolean? valueBoolean,
    FhirInteger? valueInteger,
    FhirDecimal? valueDecimal,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return StructureMapParameter(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      valueId: valueId ?? this.valueId,
      valueString: valueString ?? this.valueString,
      valueBoolean: valueBoolean ?? this.valueBoolean,
      valueInteger: valueInteger ?? this.valueInteger,
      valueDecimal: valueDecimal ?? this.valueDecimal,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [StructureMapDependent]
/// Which other rules to apply in the context of this rule.
class StructureMapDependent extends BackboneElement {
  /// Primary constructor for
  /// [StructureMapDependent]

  StructureMapDependent({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    required this.variable,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory StructureMapDependent.fromJson(
    Map<String, dynamic> json,
  ) {
    return StructureMapDependent(
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
      name: FhirId.fromJson({
        'value': json['name'],
        '_value': json['_name'],
      }),
      variable: ensureNonNullList(
        parsePrimitiveList<FhirString>(
          json['variable'] as List<dynamic>?,
          json['_variable'] as List<dynamic>?,
          fromJson: FhirString.fromJson,
        ),
      ),
    );
  }

  /// Deserialize [StructureMapDependent]
  /// from a [String] or [YamlMap] object
  factory StructureMapDependent.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? StructureMapDependent.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? StructureMapDependent.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'StructureMapDependent '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [StructureMapDependent]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory StructureMapDependent.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return StructureMapDependent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'StructureMapDependent';

  /// [name]
  /// Name of a rule or group to apply.
  final FhirId name;

  /// [variable]
  /// Variable to pass to the rule or group.
  final List<FhirString> variable;
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

    final fieldJson3 = variable.map((e) => e.toJson()).toList();
    json['variable'] = fieldJson3.map((e) => e['value']).toList();
    if (fieldJson3.any((e) => e['_value'] != null)) {
      json['_variable'] = fieldJson3.map((e) => e['_value']).toList();
    }

    return json;
  }

  @override
  StructureMapDependent clone() => throw UnimplementedError();
  @override
  StructureMapDependent copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? name,
    List<FhirString>? variable,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return StructureMapDependent(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      variable: variable ?? this.variable,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
