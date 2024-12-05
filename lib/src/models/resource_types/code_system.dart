import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [CodeSystem]
/// The CodeSystem resource is used to declare the existence of and
/// describe a code system or code system supplement and its key
/// properties, and optionally define a part or all of its content.
class CodeSystem extends CanonicalResource {
  /// Primary constructor for
  /// [CodeSystem]

  const CodeSystem({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    super.url,
    this.identifier,
    super.version,
    this.name,
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
    this.caseSensitive,
    this.valueSet,
    this.hierarchyMeaning,
    this.compositional,
    this.versionNeeded,
    required this.content,
    this.supplements,
    this.count,
    this.filter,
    this.property,
    this.concept,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  }) : super(
          resourceType: R4ResourceType.CodeSystem,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CodeSystem.fromJson(
    Map<String, dynamic> json,
  ) {
    return CodeSystem(
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
      caseSensitive:
          (json['caseSensitive'] != null || json['_caseSensitive'] != null)
              ? FhirBoolean.fromJson({
                  'value': json['caseSensitive'],
                  '_value': json['_caseSensitive'],
                })
              : null,
      valueSet: (json['valueSet'] != null || json['_valueSet'] != null)
          ? FhirCanonical.fromJson({
              'value': json['valueSet'],
              '_value': json['_valueSet'],
            })
          : null,
      hierarchyMeaning: (json['hierarchyMeaning'] != null ||
              json['_hierarchyMeaning'] != null)
          ? CodeSystemHierarchyMeaning.fromJson({
              'value': json['hierarchyMeaning'],
              '_value': json['_hierarchyMeaning'],
            })
          : null,
      compositional:
          (json['compositional'] != null || json['_compositional'] != null)
              ? FhirBoolean.fromJson({
                  'value': json['compositional'],
                  '_value': json['_compositional'],
                })
              : null,
      versionNeeded:
          (json['versionNeeded'] != null || json['_versionNeeded'] != null)
              ? FhirBoolean.fromJson({
                  'value': json['versionNeeded'],
                  '_value': json['_versionNeeded'],
                })
              : null,
      content: CodeSystemContentMode.fromJson({
        'value': json['content'],
        '_value': json['_content'],
      }),
      supplements: (json['supplements'] != null || json['_supplements'] != null)
          ? FhirCanonical.fromJson({
              'value': json['supplements'],
              '_value': json['_supplements'],
            })
          : null,
      count: (json['count'] != null || json['_count'] != null)
          ? FhirUnsignedInt.fromJson({
              'value': json['count'],
              '_value': json['_count'],
            })
          : null,
      filter: json['filter'] != null
          ? (json['filter'] as List<dynamic>)
              .map<CodeSystemFilter>(
                (v) => CodeSystemFilter.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      property: json['property'] != null
          ? (json['property'] as List<dynamic>)
              .map<CodeSystemProperty>(
                (v) => CodeSystemProperty.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      concept: json['concept'] != null
          ? (json['concept'] as List<dynamic>)
              .map<CodeSystemConcept>(
                (v) => CodeSystemConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [CodeSystem]
  /// from a [String] or [YamlMap] object
  factory CodeSystem.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CodeSystem.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CodeSystem.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CodeSystem '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CodeSystem]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CodeSystem.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CodeSystem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CodeSystem';

  /// [identifier]
  /// A formal identifier that is used to identify this code system when it
  /// is represented in other formats, or referenced in a specification,
  /// model, design or an instance.
  final List<Identifier>? identifier;

  /// [name]
  /// A natural language name identifying the code system. This name should
  /// be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString? name;

  /// [title]
  /// A short, descriptive, user-friendly title for the code system.
  final FhirString? title;

  /// [purpose]
  /// Explanation of why this code system is needed and why it has been
  /// designed as it has.
  final FhirMarkdown? purpose;

  /// [copyright]
  /// A copyright statement relating to the code system and/or its contents.
  /// Copyright statements are generally legal restrictions on the use and
  /// publishing of the code system.
  final FhirMarkdown? copyright;

  /// [caseSensitive]
  /// If code comparison is case sensitive when codes within this system are
  /// compared to each other.
  final FhirBoolean? caseSensitive;

  /// [valueSet]
  /// Canonical reference to the value set that contains the entire code
  /// system.
  final FhirCanonical? valueSet;

  /// [hierarchyMeaning]
  /// The meaning of the hierarchy of concepts as represented in this
  /// resource.
  final CodeSystemHierarchyMeaning? hierarchyMeaning;

  /// [compositional]
  /// The code system defines a compositional (post-coordination) grammar.
  final FhirBoolean? compositional;

  /// [versionNeeded]
  /// This flag is used to signify that the code system does not commit to
  /// concept permanence across versions. If true, a version must be
  /// specified when referencing this code system.
  final FhirBoolean? versionNeeded;

  /// [content]
  /// The extent of the content of the code system (the concepts and codes it
  /// defines) are represented in this resource instance.
  final CodeSystemContentMode content;

  /// [supplements]
  /// The canonical URL of the code system that this code system supplement
  /// is adding designations and properties to.
  final FhirCanonical? supplements;

  /// [count]
  /// The total number of concepts defined by the code system. Where the code
  /// system has a compositional grammar, the basis of this count is defined
  /// by the system steward.
  final FhirUnsignedInt? count;

  /// [filter]
  /// A filter that can be used in a value set compose statement when
  /// selecting concepts using a filter.
  final List<CodeSystemFilter>? filter;

  /// [property]
  /// A property defines an additional slot through which additional
  /// information can be provided about a concept.
  final List<CodeSystemProperty>? property;

  /// [concept]
  /// Concepts that are in the code system. The concept definitions are
  /// inherently hierarchical, but the definitions must be consulted to
  /// determine what the meanings of the hierarchical relationships are.
  final List<CodeSystemConcept>? concept;
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
    addField('caseSensitive', caseSensitive);
    addField('valueSet', valueSet);
    addField('hierarchyMeaning', hierarchyMeaning);
    addField('compositional', compositional);
    addField('versionNeeded', versionNeeded);
    addField('content', content);
    addField('supplements', supplements);
    addField('count', count);
    if (filter != null && filter!.isNotEmpty) {
      json['filter'] = filter!.map((e) => e.toJson()).toList();
    }

    if (property != null && property!.isNotEmpty) {
      json['property'] = property!.map((e) => e.toJson()).toList();
    }

    if (concept != null && concept!.isNotEmpty) {
      json['concept'] = concept!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  CodeSystem clone() => throw UnimplementedError();
  @override
  CodeSystem copyWith({
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
    FhirBoolean? caseSensitive,
    FhirCanonical? valueSet,
    CodeSystemHierarchyMeaning? hierarchyMeaning,
    FhirBoolean? compositional,
    FhirBoolean? versionNeeded,
    CodeSystemContentMode? content,
    FhirCanonical? supplements,
    FhirUnsignedInt? count,
    List<CodeSystemFilter>? filter,
    List<CodeSystemProperty>? property,
    List<CodeSystemConcept>? concept,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return CodeSystem(
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
      caseSensitive: caseSensitive ?? this.caseSensitive,
      valueSet: valueSet ?? this.valueSet,
      hierarchyMeaning: hierarchyMeaning ?? this.hierarchyMeaning,
      compositional: compositional ?? this.compositional,
      versionNeeded: versionNeeded ?? this.versionNeeded,
      content: content ?? this.content,
      supplements: supplements ?? this.supplements,
      count: count ?? this.count,
      filter: filter ?? this.filter,
      property: property ?? this.property,
      concept: concept ?? this.concept,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [CodeSystemFilter]
/// A filter that can be used in a value set compose statement when
/// selecting concepts using a filter.
class CodeSystemFilter extends BackboneElement {
  /// Primary constructor for
  /// [CodeSystemFilter]

  const CodeSystemFilter({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.description,
    required this.operator_,
    required this.value,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CodeSystemFilter.fromJson(
    Map<String, dynamic> json,
  ) {
    return CodeSystemFilter(
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
      description: (json['description'] != null || json['_description'] != null)
          ? FhirString.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      operator_: ensureNonNullList(
        parsePrimitiveList<FilterOperator>(
          json['operator'] as List<dynamic>?,
          json['_operator'] as List<dynamic>?,
          fromJson: FilterOperator.fromJson,
        ),
      ),
      value: FhirString.fromJson({
        'value': json['value'],
        '_value': json['_value'],
      }),
    );
  }

  /// Deserialize [CodeSystemFilter]
  /// from a [String] or [YamlMap] object
  factory CodeSystemFilter.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CodeSystemFilter.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CodeSystemFilter.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CodeSystemFilter '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CodeSystemFilter]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CodeSystemFilter.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CodeSystemFilter.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CodeSystemFilter';

  /// [code]
  /// The code that identifies this filter when it is used as a filter in
  /// [ValueSet](valueset.html#).compose.include.filter.
  final FhirCode code;

  /// [description]
  /// A description of how or why the filter is used.
  final FhirString? description;

  /// [operator_]
  /// A list of operators that can be used with the filter.
  final List<FilterOperator> operator_;

  /// [value]
  /// A description of what the value for the filter should be.
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
    addField('description', description);
    if (operator_.isNotEmpty) {
      final fieldJson0 = operator_.map((e) => e.toJson()).toList();
      json['operator'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_operator'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

    addField('value', value);
    return json;
  }

  @override
  CodeSystemFilter clone() => throw UnimplementedError();
  @override
  CodeSystemFilter copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    FhirString? description,
    List<FilterOperator>? operator_,
    FhirString? value,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return CodeSystemFilter(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      description: description ?? this.description,
      operator_: operator_ ?? this.operator_,
      value: value ?? this.value,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [CodeSystemProperty]
/// A property defines an additional slot through which additional
/// information can be provided about a concept.
class CodeSystemProperty extends BackboneElement {
  /// Primary constructor for
  /// [CodeSystemProperty]

  const CodeSystemProperty({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.uri,
    this.description,
    required this.type,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CodeSystemProperty.fromJson(
    Map<String, dynamic> json,
  ) {
    return CodeSystemProperty(
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
      uri: (json['uri'] != null || json['_uri'] != null)
          ? FhirUri.fromJson({
              'value': json['uri'],
              '_value': json['_uri'],
            })
          : null,
      description: (json['description'] != null || json['_description'] != null)
          ? FhirString.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      type: PropertyTypeEnum.fromJson({
        'value': json['type'],
        '_value': json['_type'],
      }),
    );
  }

  /// Deserialize [CodeSystemProperty]
  /// from a [String] or [YamlMap] object
  factory CodeSystemProperty.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CodeSystemProperty.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CodeSystemProperty.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CodeSystemProperty '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CodeSystemProperty]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CodeSystemProperty.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CodeSystemProperty.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CodeSystemProperty';

  /// [code]
  /// A code that is used to identify the property. The code is used
  /// internally (in CodeSystem.concept.property.code) and also externally,
  /// such as in property filters.
  final FhirCode code;

  /// [uri]
  /// Reference to the formal meaning of the property. One possible source of
  /// meaning is the [Concept Properties](codesystem-concept-properties.html)
  /// code system.
  final FhirUri? uri;

  /// [description]
  /// A description of the property- why it is defined, and how its value
  /// might be used.
  final FhirString? description;

  /// [type]
  /// The type of the property value. Properties of type "code" contain a
  /// code defined by the code system (e.g. a reference to another defined
  /// concept).
  final PropertyTypeEnum type;
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
    addField('uri', uri);
    addField('description', description);
    addField('type', type);
    return json;
  }

  @override
  CodeSystemProperty clone() => throw UnimplementedError();
  @override
  CodeSystemProperty copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    FhirUri? uri,
    FhirString? description,
    PropertyTypeEnum? type,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return CodeSystemProperty(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      uri: uri ?? this.uri,
      description: description ?? this.description,
      type: type ?? this.type,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [CodeSystemConcept]
/// Concepts that are in the code system. The concept definitions are
/// inherently hierarchical, but the definitions must be consulted to
/// determine what the meanings of the hierarchical relationships are.
class CodeSystemConcept extends BackboneElement {
  /// Primary constructor for
  /// [CodeSystemConcept]

  const CodeSystemConcept({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.display,
    this.definition,
    this.designation,
    this.property,
    this.concept,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CodeSystemConcept.fromJson(
    Map<String, dynamic> json,
  ) {
    return CodeSystemConcept(
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
      display: (json['display'] != null || json['_display'] != null)
          ? FhirString.fromJson({
              'value': json['display'],
              '_value': json['_display'],
            })
          : null,
      definition: (json['definition'] != null || json['_definition'] != null)
          ? FhirString.fromJson({
              'value': json['definition'],
              '_value': json['_definition'],
            })
          : null,
      designation: json['designation'] != null
          ? (json['designation'] as List<dynamic>)
              .map<CodeSystemDesignation>(
                (v) => CodeSystemDesignation.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      property: json['property'] != null
          ? (json['property'] as List<dynamic>)
              .map<CodeSystemProperty1>(
                (v) => CodeSystemProperty1.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      concept: json['concept'] != null
          ? (json['concept'] as List<dynamic>)
              .map<CodeSystemConcept>(
                (v) => CodeSystemConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [CodeSystemConcept]
  /// from a [String] or [YamlMap] object
  factory CodeSystemConcept.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CodeSystemConcept.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CodeSystemConcept.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CodeSystemConcept '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CodeSystemConcept]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CodeSystemConcept.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CodeSystemConcept.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CodeSystemConcept';

  /// [code]
  /// A code - a text symbol - that uniquely identifies the concept within
  /// the code system.
  final FhirCode code;

  /// [display]
  /// A human readable string that is the recommended default way to present
  /// this concept to a user.
  final FhirString? display;

  /// [definition]
  /// The formal definition of the concept. The code system resource does not
  /// make formal definitions required, because of the prevalence of legacy
  /// systems. However, they are highly recommended, as without them there is
  /// no formal meaning associated with the concept.
  final FhirString? definition;

  /// [designation]
  /// Additional representations for the concept - other languages, aliases,
  /// specialized purposes, used for particular purposes, etc.
  final List<CodeSystemDesignation>? designation;

  /// [property]
  /// A property value for this concept.
  final List<CodeSystemProperty1>? property;

  /// [concept]
  /// Defines children of a concept to produce a hierarchy of concepts. The
  /// nature of the relationships is variable (is-a/contains/categorizes) -
  /// see hierarchyMeaning.
  final List<CodeSystemConcept>? concept;
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
    addField('display', display);
    addField('definition', definition);
    if (designation != null && designation!.isNotEmpty) {
      json['designation'] = designation!.map((e) => e.toJson()).toList();
    }

    if (property != null && property!.isNotEmpty) {
      json['property'] = property!.map((e) => e.toJson()).toList();
    }

    if (concept != null && concept!.isNotEmpty) {
      json['concept'] = concept!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  CodeSystemConcept clone() => throw UnimplementedError();
  @override
  CodeSystemConcept copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    FhirString? display,
    FhirString? definition,
    List<CodeSystemDesignation>? designation,
    List<CodeSystemProperty1>? property,
    List<CodeSystemConcept>? concept,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return CodeSystemConcept(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      display: display ?? this.display,
      definition: definition ?? this.definition,
      designation: designation ?? this.designation,
      property: property ?? this.property,
      concept: concept ?? this.concept,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [CodeSystemDesignation]
/// Additional representations for the concept - other languages, aliases,
/// specialized purposes, used for particular purposes, etc.
class CodeSystemDesignation extends BackboneElement {
  /// Primary constructor for
  /// [CodeSystemDesignation]

  const CodeSystemDesignation({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.language,
    this.use,
    required this.value,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CodeSystemDesignation.fromJson(
    Map<String, dynamic> json,
  ) {
    return CodeSystemDesignation(
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
      language: (json['language'] != null || json['_language'] != null)
          ? CommonLanguages.fromJson({
              'value': json['language'],
              '_value': json['_language'],
            })
          : null,
      use: json['use'] != null
          ? Coding.fromJson(
              json['use'] as Map<String, dynamic>,
            )
          : null,
      value: FhirString.fromJson({
        'value': json['value'],
        '_value': json['_value'],
      }),
    );
  }

  /// Deserialize [CodeSystemDesignation]
  /// from a [String] or [YamlMap] object
  factory CodeSystemDesignation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CodeSystemDesignation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CodeSystemDesignation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CodeSystemDesignation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CodeSystemDesignation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CodeSystemDesignation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CodeSystemDesignation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CodeSystemDesignation';

  /// [language]
  /// The language this designation is defined for.
  final CommonLanguages? language;

  /// [use]
  /// A code that details how this designation would be used.
  final Coding? use;

  /// [value]
  /// The text value for this designation.
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

    addField('language', language);
    if (use != null) {
      json['use'] = use!.toJson();
    }

    addField('value', value);
    return json;
  }

  @override
  CodeSystemDesignation clone() => throw UnimplementedError();
  @override
  CodeSystemDesignation copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CommonLanguages? language,
    Coding? use,
    FhirString? value,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return CodeSystemDesignation(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      language: language ?? this.language,
      use: use ?? this.use,
      value: value ?? this.value,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [CodeSystemProperty1]
/// A property value for this concept.
class CodeSystemProperty1 extends BackboneElement {
  /// Primary constructor for
  /// [CodeSystemProperty1]

  const CodeSystemProperty1({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.valueCode,
    this.valueCoding,
    this.valueString,
    this.valueInteger,
    this.valueBoolean,
    this.valueDateTime,
    this.valueDecimal,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CodeSystemProperty1.fromJson(
    Map<String, dynamic> json,
  ) {
    return CodeSystemProperty1(
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
      valueCode: (json['valueCode'] != null || json['_valueCode'] != null)
          ? FhirCode.fromJson({
              'value': json['valueCode'],
              '_value': json['_valueCode'],
            })
          : null,
      valueCoding: json['valueCoding'] != null
          ? Coding.fromJson(
              json['valueCoding'] as Map<String, dynamic>,
            )
          : null,
      valueString: (json['valueString'] != null || json['_valueString'] != null)
          ? FhirString.fromJson({
              'value': json['valueString'],
              '_value': json['_valueString'],
            })
          : null,
      valueInteger:
          (json['valueInteger'] != null || json['_valueInteger'] != null)
              ? FhirInteger.fromJson({
                  'value': json['valueInteger'],
                  '_value': json['_valueInteger'],
                })
              : null,
      valueBoolean:
          (json['valueBoolean'] != null || json['_valueBoolean'] != null)
              ? FhirBoolean.fromJson({
                  'value': json['valueBoolean'],
                  '_value': json['_valueBoolean'],
                })
              : null,
      valueDateTime:
          (json['valueDateTime'] != null || json['_valueDateTime'] != null)
              ? FhirDateTime.fromJson({
                  'value': json['valueDateTime'],
                  '_value': json['_valueDateTime'],
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

  /// Deserialize [CodeSystemProperty1]
  /// from a [String] or [YamlMap] object
  factory CodeSystemProperty1.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CodeSystemProperty1.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CodeSystemProperty1.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CodeSystemProperty1 '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CodeSystemProperty1]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CodeSystemProperty1.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CodeSystemProperty1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CodeSystemProperty1';

  /// [code]
  /// A code that is a reference to CodeSystem.property.code.
  final FhirCode code;

  /// [valueCode]
  /// The value of this property.
  final FhirCode? valueCode;

  /// [valueCoding]
  /// The value of this property.
  final Coding? valueCoding;

  /// [valueString]
  /// The value of this property.
  final FhirString? valueString;

  /// [valueInteger]
  /// The value of this property.
  final FhirInteger? valueInteger;

  /// [valueBoolean]
  /// The value of this property.
  final FhirBoolean? valueBoolean;

  /// [valueDateTime]
  /// The value of this property.
  final FhirDateTime? valueDateTime;

  /// [valueDecimal]
  /// The value of this property.
  final FhirDecimal? valueDecimal;
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
    addField('valueCode', valueCode);
    if (valueCoding != null) {
      json['valueCoding'] = valueCoding!.toJson();
    }

    addField('valueString', valueString);
    addField('valueInteger', valueInteger);
    addField('valueBoolean', valueBoolean);
    addField('valueDateTime', valueDateTime);
    addField('valueDecimal', valueDecimal);
    return json;
  }

  @override
  CodeSystemProperty1 clone() => throw UnimplementedError();
  @override
  CodeSystemProperty1 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    FhirCode? valueCode,
    Coding? valueCoding,
    FhirString? valueString,
    FhirInteger? valueInteger,
    FhirBoolean? valueBoolean,
    FhirDateTime? valueDateTime,
    FhirDecimal? valueDecimal,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return CodeSystemProperty1(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      valueCode: valueCode ?? this.valueCode,
      valueCoding: valueCoding ?? this.valueCoding,
      valueString: valueString ?? this.valueString,
      valueInteger: valueInteger ?? this.valueInteger,
      valueBoolean: valueBoolean ?? this.valueBoolean,
      valueDateTime: valueDateTime ?? this.valueDateTime,
      valueDecimal: valueDecimal ?? this.valueDecimal,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}
