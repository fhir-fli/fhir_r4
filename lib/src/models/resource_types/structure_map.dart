import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

part 'structure_map.g.dart';

/// [StructureMap]
/// A Map of relationships between 2 structures that can be used to
/// transform data.
class StructureMap extends CanonicalResource {
  /// Primary constructor for
  /// [StructureMap]

  const StructureMap({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    required super.url,
    this.identifier,
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
    this.purpose,
    this.copyright,
    this.structure,
    this.import_,
    required this.group,
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
  ) {
    if (yaml is String) {
      return StructureMap.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return StructureMap.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'StructureMap '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [StructureMap]
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

  /// [identifier]
  /// A formal identifier that is used to identify this structure map when it
  /// is represented in other formats, or referenced in a specification,
  /// model, design or an instance.
  final List<Identifier>? identifier;

  /// [name]
  /// A natural language name identifying the structure map. This name should
  /// be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString name;

  /// [title]
  /// A short, descriptive, user-friendly title for the structure map.
  final FhirString? title;

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
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

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
    if (structure != null && structure!.isNotEmpty) {
      json['structure'] = structure!.map((e) => e.toJson()).toList();
    }

    if (import_ != null && import_!.isNotEmpty) {
      final fieldJson0 = import_!.map((e) => e.toJson()).toList();
      json['import'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_import'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

    if (group.isNotEmpty) {
      json['group'] = group.map((e) => e.toJson()).toList();
    }

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

  const StructureMapStructure({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.url,
    required this.mode,
    this.alias,
    this.documentation,
    super.disallowExtensions,
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
  ) {
    if (yaml is String) {
      return StructureMapStructure.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return StructureMapStructure.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'StructureMapStructure '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [StructureMapStructure]
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

    addField('url', url);
    addField('mode', mode);
    addField('alias', alias);
    addField('documentation', documentation);
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
  }) {
    return StructureMapStructure(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      url: url ?? this.url,
      mode: mode ?? this.mode,
      alias: alias ?? this.alias,
      documentation: documentation ?? this.documentation,
    );
  }
}

/// [StructureMapGroup]
/// Organizes the mapping into manageable chunks for human review/ease of
/// maintenance.
class StructureMapGroup extends BackboneElement {
  /// Primary constructor for
  /// [StructureMapGroup]

  const StructureMapGroup({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.extends_,
    required this.typeMode,
    this.documentation,
    required this.input,
    required this.rule,
    super.disallowExtensions,
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
  ) {
    if (yaml is String) {
      return StructureMapGroup.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return StructureMapGroup.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'StructureMapGroup '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [StructureMapGroup]
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
    addField('extends', extends_);
    addField('typeMode', typeMode);
    addField('documentation', documentation);
    if (input.isNotEmpty) {
      json['input'] = input.map((e) => e.toJson()).toList();
    }

    if (rule.isNotEmpty) {
      json['rule'] = rule.map((e) => e.toJson()).toList();
    }

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
    );
  }
}

/// [StructureMapInput]
/// A name assigned to an instance of data. The instance must be provided
/// when the mapping is invoked.
class StructureMapInput extends BackboneElement {
  /// Primary constructor for
  /// [StructureMapInput]

  const StructureMapInput({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.type,
    required this.mode,
    this.documentation,
    super.disallowExtensions,
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
  ) {
    if (yaml is String) {
      return StructureMapInput.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return StructureMapInput.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'StructureMapInput '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [StructureMapInput]
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
    addField('type', type);
    addField('mode', mode);
    addField('documentation', documentation);
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
  }) {
    return StructureMapInput(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      type: type ?? this.type,
      mode: mode ?? this.mode,
      documentation: documentation ?? this.documentation,
    );
  }
}

/// [StructureMapRule]
/// Transform Rule from source to target.
class StructureMapRule extends BackboneElement {
  /// Primary constructor for
  /// [StructureMapRule]

  const StructureMapRule({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    required this.source,
    this.target,
    this.rule,
    this.dependent,
    this.documentation,
    super.disallowExtensions,
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
  ) {
    if (yaml is String) {
      return StructureMapRule.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return StructureMapRule.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'StructureMapRule '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [StructureMapRule]
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
    if (source.isNotEmpty) {
      json['source'] = source.map((e) => e.toJson()).toList();
    }

    if (target != null && target!.isNotEmpty) {
      json['target'] = target!.map((e) => e.toJson()).toList();
    }

    if (rule != null && rule!.isNotEmpty) {
      json['rule'] = rule!.map((e) => e.toJson()).toList();
    }

    if (dependent != null && dependent!.isNotEmpty) {
      json['dependent'] = dependent!.map((e) => e.toJson()).toList();
    }

    addField('documentation', documentation);
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
    );
  }
}

/// [StructureMapSource]
/// Source inputs to the mapping.
class StructureMapSource extends BackboneElement {
  /// Primary constructor for
  /// [StructureMapSource]

  const StructureMapSource({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.context,
    this.min,
    this.max,
    this.type,
    this.defaultValueXStructureMapSource,
    this.element,
    this.listMode,
    this.variable,
    this.condition,
    this.check,
    this.logMessage,
    super.disallowExtensions,
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
      defaultValueXStructureMapSource: json['defaultValueBase64Binary'] != null ||
              json['_defaultValueBase64Binary'] != null
          ? Base64BinaryDefaultValueStructureMapSource.fromJson({
              'value': json['defaultValueBase64Binary'],
              '_value': json['_defaultValueBase64Binary'],
            })
          : json['defaultValueBoolean'] != null ||
                  json['_defaultValueBoolean'] != null
              ? BooleanDefaultValueStructureMapSource.fromJson({
                  'value': json['defaultValueBoolean'],
                  '_value': json['_defaultValueBoolean'],
                })
              : json['defaultValueCanonical'] != null ||
                      json['_defaultValueCanonical'] != null
                  ? CanonicalDefaultValueStructureMapSource.fromJson({
                      'value': json['defaultValueCanonical'],
                      '_value': json['_defaultValueCanonical'],
                    })
                  : json['defaultValueCode'] != null ||
                          json['_defaultValueCode'] != null
                      ? CodeDefaultValueStructureMapSource.fromJson({
                          'value': json['defaultValueCode'],
                          '_value': json['_defaultValueCode'],
                        })
                      : json['defaultValueDate'] != null ||
                              json['_defaultValueDate'] != null
                          ? DateDefaultValueStructureMapSource.fromJson({
                              'value': json['defaultValueDate'],
                              '_value': json['_defaultValueDate'],
                            })
                          : json['defaultValueDateTime'] != null ||
                                  json['_defaultValueDateTime'] != null
                              ? DateTimeDefaultValueStructureMapSource.fromJson({
                                  'value': json['defaultValueDateTime'],
                                  '_value': json['_defaultValueDateTime'],
                                })
                              : json['defaultValueDecimal'] != null ||
                                      json['_defaultValueDecimal'] != null
                                  ? DecimalDefaultValueStructureMapSource.fromJson({
                                      'value': json['defaultValueDecimal'],
                                      '_value': json['_defaultValueDecimal'],
                                    })
                                  : json['defaultValueId'] != null ||
                                          json['_defaultValueId'] != null
                                      ? IdDefaultValueStructureMapSource.fromJson({
                                          'value': json['defaultValueId'],
                                          '_value': json['_defaultValueId'],
                                        })
                                      : json['defaultValueInstant'] != null ||
                                              json['_defaultValueInstant'] !=
                                                  null
                                          ? InstantDefaultValueStructureMapSource.fromJson({
                                              'value':
                                                  json['defaultValueInstant'],
                                              '_value':
                                                  json['_defaultValueInstant'],
                                            })
                                          : json['defaultValueInteger'] != null ||
                                                  json['_defaultValueInteger'] !=
                                                      null
                                              ? IntegerDefaultValueStructureMapSource.fromJson({
                                                  'value': json[
                                                      'defaultValueInteger'],
                                                  '_value': json[
                                                      '_defaultValueInteger'],
                                                })
                                              : json['defaultValueMarkdown'] != null ||
                                                      json['_defaultValueMarkdown'] !=
                                                          null
                                                  ? MarkdownDefaultValueStructureMapSource.fromJson({
                                                      'value': json[
                                                          'defaultValueMarkdown'],
                                                      '_value': json[
                                                          '_defaultValueMarkdown'],
                                                    })
                                                  : json['defaultValueOid'] != null ||
                                                          json['_defaultValueOid'] !=
                                                              null
                                                      ? OidDefaultValueStructureMapSource.fromJson({
                                                          'value': json[
                                                              'defaultValueOid'],
                                                          '_value': json[
                                                              '_defaultValueOid'],
                                                        })
                                                      : json['defaultValuePositiveInt'] != null ||
                                                              json['_defaultValuePositiveInt'] != null
                                                          ? PositiveIntDefaultValueStructureMapSource.fromJson({
                                                              'value': json[
                                                                  'defaultValuePositiveInt'],
                                                              '_value': json[
                                                                  '_defaultValuePositiveInt'],
                                                            })
                                                          : json['defaultValueString'] != null || json['_defaultValueString'] != null
                                                              ? StringDefaultValueStructureMapSource.fromJson({
                                                                  'value': json[
                                                                      'defaultValueString'],
                                                                  '_value': json[
                                                                      '_defaultValueString'],
                                                                })
                                                              : json['defaultValueTime'] != null || json['_defaultValueTime'] != null
                                                                  ? TimeDefaultValueStructureMapSource.fromJson({
                                                                      'value': json[
                                                                          'defaultValueTime'],
                                                                      '_value':
                                                                          json[
                                                                              '_defaultValueTime'],
                                                                    })
                                                                  : json['defaultValueUnsignedInt'] != null || json['_defaultValueUnsignedInt'] != null
                                                                      ? UnsignedIntDefaultValueStructureMapSource.fromJson({
                                                                          'value':
                                                                              json['defaultValueUnsignedInt'],
                                                                          '_value':
                                                                              json['_defaultValueUnsignedInt'],
                                                                        })
                                                                      : json['defaultValueUri'] != null || json['_defaultValueUri'] != null
                                                                          ? UriDefaultValueStructureMapSource.fromJson({
                                                                              'value': json['defaultValueUri'],
                                                                              '_value': json['_defaultValueUri'],
                                                                            })
                                                                          : json['defaultValueUrl'] != null || json['_defaultValueUrl'] != null
                                                                              ? UrlDefaultValueStructureMapSource.fromJson({
                                                                                  'value': json['defaultValueUrl'],
                                                                                  '_value': json['_defaultValueUrl'],
                                                                                })
                                                                              : json['defaultValueUuid'] != null || json['_defaultValueUuid'] != null
                                                                                  ? UuidDefaultValueStructureMapSource.fromJson({
                                                                                      'value': json['defaultValueUuid'],
                                                                                      '_value': json['_defaultValueUuid'],
                                                                                    })
                                                                                  : json['defaultValueAddress'] != null || json['_defaultValueAddress'] != null
                                                                                      ? AddressDefaultValueStructureMapSource.fromJson({
                                                                                          'value': json['defaultValueAddress'],
                                                                                          '_value': json['_defaultValueAddress'],
                                                                                        })
                                                                                      : json['defaultValueAge'] != null || json['_defaultValueAge'] != null
                                                                                          ? AgeDefaultValueStructureMapSource.fromJson({
                                                                                              'value': json['defaultValueAge'],
                                                                                              '_value': json['_defaultValueAge'],
                                                                                            })
                                                                                          : json['defaultValueAnnotation'] != null || json['_defaultValueAnnotation'] != null
                                                                                              ? AnnotationDefaultValueStructureMapSource.fromJson({
                                                                                                  'value': json['defaultValueAnnotation'],
                                                                                                  '_value': json['_defaultValueAnnotation'],
                                                                                                })
                                                                                              : json['defaultValueAttachment'] != null || json['_defaultValueAttachment'] != null
                                                                                                  ? AttachmentDefaultValueStructureMapSource.fromJson({
                                                                                                      'value': json['defaultValueAttachment'],
                                                                                                      '_value': json['_defaultValueAttachment'],
                                                                                                    })
                                                                                                  : json['defaultValueCodeableConcept'] != null || json['_defaultValueCodeableConcept'] != null
                                                                                                      ? CodeableConceptDefaultValueStructureMapSource.fromJson({
                                                                                                          'value': json['defaultValueCodeableConcept'],
                                                                                                          '_value': json['_defaultValueCodeableConcept'],
                                                                                                        })
                                                                                                      : json['defaultValueCoding'] != null || json['_defaultValueCoding'] != null
                                                                                                          ? CodingDefaultValueStructureMapSource.fromJson({
                                                                                                              'value': json['defaultValueCoding'],
                                                                                                              '_value': json['_defaultValueCoding'],
                                                                                                            })
                                                                                                          : json['defaultValueContactPoint'] != null || json['_defaultValueContactPoint'] != null
                                                                                                              ? ContactPointDefaultValueStructureMapSource.fromJson({
                                                                                                                  'value': json['defaultValueContactPoint'],
                                                                                                                  '_value': json['_defaultValueContactPoint'],
                                                                                                                })
                                                                                                              : json['defaultValueCount'] != null || json['_defaultValueCount'] != null
                                                                                                                  ? CountDefaultValueStructureMapSource.fromJson({
                                                                                                                      'value': json['defaultValueCount'],
                                                                                                                      '_value': json['_defaultValueCount'],
                                                                                                                    })
                                                                                                                  : json['defaultValueDistance'] != null || json['_defaultValueDistance'] != null
                                                                                                                      ? DistanceDefaultValueStructureMapSource.fromJson({
                                                                                                                          'value': json['defaultValueDistance'],
                                                                                                                          '_value': json['_defaultValueDistance'],
                                                                                                                        })
                                                                                                                      : json['defaultValueDuration'] != null || json['_defaultValueDuration'] != null
                                                                                                                          ? DurationDefaultValueStructureMapSource.fromJson({
                                                                                                                              'value': json['defaultValueDuration'],
                                                                                                                              '_value': json['_defaultValueDuration'],
                                                                                                                            })
                                                                                                                          : json['defaultValueHumanName'] != null || json['_defaultValueHumanName'] != null
                                                                                                                              ? HumanNameDefaultValueStructureMapSource.fromJson({
                                                                                                                                  'value': json['defaultValueHumanName'],
                                                                                                                                  '_value': json['_defaultValueHumanName'],
                                                                                                                                })
                                                                                                                              : json['defaultValueIdentifier'] != null || json['_defaultValueIdentifier'] != null
                                                                                                                                  ? IdentifierDefaultValueStructureMapSource.fromJson({
                                                                                                                                      'value': json['defaultValueIdentifier'],
                                                                                                                                      '_value': json['_defaultValueIdentifier'],
                                                                                                                                    })
                                                                                                                                  : json['defaultValueMoney'] != null || json['_defaultValueMoney'] != null
                                                                                                                                      ? MoneyDefaultValueStructureMapSource.fromJson({
                                                                                                                                          'value': json['defaultValueMoney'],
                                                                                                                                          '_value': json['_defaultValueMoney'],
                                                                                                                                        })
                                                                                                                                      : json['defaultValuePeriod'] != null || json['_defaultValuePeriod'] != null
                                                                                                                                          ? PeriodDefaultValueStructureMapSource.fromJson({
                                                                                                                                              'value': json['defaultValuePeriod'],
                                                                                                                                              '_value': json['_defaultValuePeriod'],
                                                                                                                                            })
                                                                                                                                          : json['defaultValueQuantity'] != null || json['_defaultValueQuantity'] != null
                                                                                                                                              ? QuantityDefaultValueStructureMapSource.fromJson({
                                                                                                                                                  'value': json['defaultValueQuantity'],
                                                                                                                                                  '_value': json['_defaultValueQuantity'],
                                                                                                                                                })
                                                                                                                                              : json['defaultValueRange'] != null || json['_defaultValueRange'] != null
                                                                                                                                                  ? RangeDefaultValueStructureMapSource.fromJson({
                                                                                                                                                      'value': json['defaultValueRange'],
                                                                                                                                                      '_value': json['_defaultValueRange'],
                                                                                                                                                    })
                                                                                                                                                  : json['defaultValueRatio'] != null || json['_defaultValueRatio'] != null
                                                                                                                                                      ? RatioDefaultValueStructureMapSource.fromJson({
                                                                                                                                                          'value': json['defaultValueRatio'],
                                                                                                                                                          '_value': json['_defaultValueRatio'],
                                                                                                                                                        })
                                                                                                                                                      : json['defaultValueReference'] != null || json['_defaultValueReference'] != null
                                                                                                                                                          ? ReferenceDefaultValueStructureMapSource.fromJson({
                                                                                                                                                              'value': json['defaultValueReference'],
                                                                                                                                                              '_value': json['_defaultValueReference'],
                                                                                                                                                            })
                                                                                                                                                          : json['defaultValueSampledData'] != null || json['_defaultValueSampledData'] != null
                                                                                                                                                              ? SampledDataDefaultValueStructureMapSource.fromJson({
                                                                                                                                                                  'value': json['defaultValueSampledData'],
                                                                                                                                                                  '_value': json['_defaultValueSampledData'],
                                                                                                                                                                })
                                                                                                                                                              : json['defaultValueSignature'] != null || json['_defaultValueSignature'] != null
                                                                                                                                                                  ? SignatureDefaultValueStructureMapSource.fromJson({
                                                                                                                                                                      'value': json['defaultValueSignature'],
                                                                                                                                                                      '_value': json['_defaultValueSignature'],
                                                                                                                                                                    })
                                                                                                                                                                  : json['defaultValueTiming'] != null || json['_defaultValueTiming'] != null
                                                                                                                                                                      ? TimingDefaultValueStructureMapSource.fromJson({
                                                                                                                                                                          'value': json['defaultValueTiming'],
                                                                                                                                                                          '_value': json['_defaultValueTiming'],
                                                                                                                                                                        })
                                                                                                                                                                      : json['defaultValueContactDetail'] != null || json['_defaultValueContactDetail'] != null
                                                                                                                                                                          ? ContactDetailDefaultValueStructureMapSource.fromJson({
                                                                                                                                                                              'value': json['defaultValueContactDetail'],
                                                                                                                                                                              '_value': json['_defaultValueContactDetail'],
                                                                                                                                                                            })
                                                                                                                                                                          : json['defaultValueContributor'] != null || json['_defaultValueContributor'] != null
                                                                                                                                                                              ? ContributorDefaultValueStructureMapSource.fromJson({
                                                                                                                                                                                  'value': json['defaultValueContributor'],
                                                                                                                                                                                  '_value': json['_defaultValueContributor'],
                                                                                                                                                                                })
                                                                                                                                                                              : json['defaultValueDataRequirement'] != null || json['_defaultValueDataRequirement'] != null
                                                                                                                                                                                  ? DataRequirementDefaultValueStructureMapSource.fromJson({
                                                                                                                                                                                      'value': json['defaultValueDataRequirement'],
                                                                                                                                                                                      '_value': json['_defaultValueDataRequirement'],
                                                                                                                                                                                    })
                                                                                                                                                                                  : json['defaultValueExpression'] != null || json['_defaultValueExpression'] != null
                                                                                                                                                                                      ? ExpressionDefaultValueStructureMapSource.fromJson({
                                                                                                                                                                                          'value': json['defaultValueExpression'],
                                                                                                                                                                                          '_value': json['_defaultValueExpression'],
                                                                                                                                                                                        })
                                                                                                                                                                                      : json['defaultValueParameterDefinition'] != null || json['_defaultValueParameterDefinition'] != null
                                                                                                                                                                                          ? ParameterDefinitionDefaultValueStructureMapSource.fromJson({
                                                                                                                                                                                              'value': json['defaultValueParameterDefinition'],
                                                                                                                                                                                              '_value': json['_defaultValueParameterDefinition'],
                                                                                                                                                                                            })
                                                                                                                                                                                          : json['defaultValueRelatedArtifact'] != null || json['_defaultValueRelatedArtifact'] != null
                                                                                                                                                                                              ? RelatedArtifactDefaultValueStructureMapSource.fromJson({
                                                                                                                                                                                                  'value': json['defaultValueRelatedArtifact'],
                                                                                                                                                                                                  '_value': json['_defaultValueRelatedArtifact'],
                                                                                                                                                                                                })
                                                                                                                                                                                              : json['defaultValueTriggerDefinition'] != null || json['_defaultValueTriggerDefinition'] != null
                                                                                                                                                                                                  ? TriggerDefinitionDefaultValueStructureMapSource.fromJson({
                                                                                                                                                                                                      'value': json['defaultValueTriggerDefinition'],
                                                                                                                                                                                                      '_value': json['_defaultValueTriggerDefinition'],
                                                                                                                                                                                                    })
                                                                                                                                                                                                  : json['defaultValueUsageContext'] != null || json['_defaultValueUsageContext'] != null
                                                                                                                                                                                                      ? UsageContextDefaultValueStructureMapSource.fromJson({
                                                                                                                                                                                                          'value': json['defaultValueUsageContext'],
                                                                                                                                                                                                          '_value': json['_defaultValueUsageContext'],
                                                                                                                                                                                                        })
                                                                                                                                                                                                      : json['defaultValueDosage'] != null || json['_defaultValueDosage'] != null
                                                                                                                                                                                                          ? DosageDefaultValueStructureMapSource.fromJson({
                                                                                                                                                                                                              'value': json['defaultValueDosage'],
                                                                                                                                                                                                              '_value': json['_defaultValueDosage'],
                                                                                                                                                                                                            })
                                                                                                                                                                                                          : json['defaultValueMeta'] != null || json['_defaultValueMeta'] != null
                                                                                                                                                                                                              ? MetaDefaultValueStructureMapSource.fromJson({
                                                                                                                                                                                                                  'value': json['defaultValueMeta'],
                                                                                                                                                                                                                  '_value': json['_defaultValueMeta'],
                                                                                                                                                                                                                })
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
  ) {
    if (yaml is String) {
      return StructureMapSource.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return StructureMapSource.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'StructureMapSource '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [StructureMapSource]
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

  /// [defaultValueXStructureMapSource]
  /// A value to use if there is no existing value in the source object.
  final DefaultValueXStructureMapSource? defaultValueXStructureMapSource;

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

    addField('context', context);
    addField('min', min);
    addField('max', max);
    addField('type', type);
    addField(
        'defaultValueXStructureMapSource', defaultValueXStructureMapSource);
    addField('element', element);
    addField('listMode', listMode);
    addField('variable', variable);
    addField('condition', condition);
    addField('check', check);
    addField('logMessage', logMessage);
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
    DefaultValueXStructureMapSource? defaultValueXStructureMapSource,
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
  }) {
    return StructureMapSource(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      context: context ?? this.context,
      min: min ?? this.min,
      max: max ?? this.max,
      type: type ?? this.type,
      defaultValueXStructureMapSource: defaultValueXStructureMapSource ??
          this.defaultValueXStructureMapSource,
      element: element ?? this.element,
      listMode: listMode ?? this.listMode,
      variable: variable ?? this.variable,
      condition: condition ?? this.condition,
      check: check ?? this.check,
      logMessage: logMessage ?? this.logMessage,
    );
  }
}

/// [StructureMapTarget]
/// Content to create because of this mapping rule.
class StructureMapTarget extends BackboneElement {
  /// Primary constructor for
  /// [StructureMapTarget]

  const StructureMapTarget({
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
    super.disallowExtensions,
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
  ) {
    if (yaml is String) {
      return StructureMapTarget.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return StructureMapTarget.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'StructureMapTarget '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [StructureMapTarget]
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

    addField('context', context);
    addField('contextType', contextType);
    addField('element', element);
    addField('variable', variable);
    if (listMode != null && listMode!.isNotEmpty) {
      final fieldJson0 = listMode!.map((e) => e.toJson()).toList();
      json['listMode'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_listMode'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

    addField('listRuleId', listRuleId);
    addField('transform', transform);
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
    );
  }
}

/// [StructureMapParameter]
/// Parameters to the transform.
class StructureMapParameter extends BackboneElement {
  /// Primary constructor for
  /// [StructureMapParameter]

  const StructureMapParameter({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.valueXStructureMapParameter,
    super.disallowExtensions,
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
      valueXStructureMapParameter: json['valueId'] != null ||
              json['_valueId'] != null
          ? IdValueStructureMapParameter.fromJson({
              'value': json['valueId'],
              '_value': json['_valueId'],
            })
          : json['valueString'] != null || json['_valueString'] != null
              ? StringValueStructureMapParameter.fromJson({
                  'value': json['valueString'],
                  '_value': json['_valueString'],
                })
              : json['valueBoolean'] != null || json['_valueBoolean'] != null
                  ? BooleanValueStructureMapParameter.fromJson({
                      'value': json['valueBoolean'],
                      '_value': json['_valueBoolean'],
                    })
                  : json['valueInteger'] != null ||
                          json['_valueInteger'] != null
                      ? IntegerValueStructureMapParameter.fromJson({
                          'value': json['valueInteger'],
                          '_value': json['_valueInteger'],
                        })
                      : DecimalValueStructureMapParameter.fromJson({
                          'value': json['valueDecimal'],
                          '_value': json['_valueDecimal'],
                        }),
    );
  }

  /// Deserialize [StructureMapParameter]
  /// from a [String] or [YamlMap] object
  factory StructureMapParameter.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return StructureMapParameter.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return StructureMapParameter.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'StructureMapParameter '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [StructureMapParameter]
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

  /// [valueXStructureMapParameter]
  /// Parameter value - variable or literal.
  final ValueXStructureMapParameter valueXStructureMapParameter;
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

    addField('valueXStructureMapParameter', valueXStructureMapParameter);
    return json;
  }

  @override
  StructureMapParameter clone() => throw UnimplementedError();
  @override
  StructureMapParameter copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ValueXStructureMapParameter? valueXStructureMapParameter,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return StructureMapParameter(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      valueXStructureMapParameter:
          valueXStructureMapParameter ?? this.valueXStructureMapParameter,
    );
  }
}

/// [StructureMapDependent]
/// Which other rules to apply in the context of this rule.
class StructureMapDependent extends BackboneElement {
  /// Primary constructor for
  /// [StructureMapDependent]

  const StructureMapDependent({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    required this.variable,
    super.disallowExtensions,
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
  ) {
    if (yaml is String) {
      return StructureMapDependent.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return StructureMapDependent.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'StructureMapDependent '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [StructureMapDependent]
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
    if (variable.isNotEmpty) {
      final fieldJson0 = variable.map((e) => e.toJson()).toList();
      json['variable'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_variable'] = fieldJson0.map((e) => e['_value']).toList();
      }
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
  }) {
    return StructureMapDependent(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      variable: variable ?? this.variable,
    );
  }
}
