import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ConceptMap]
/// A statement of relationships from one set of concepts to one or more
/// other concepts - either concepts in code systems, or data element/data
/// element concepts, or classes in class models.
class ConceptMap extends CanonicalResource {
  /// Primary constructor for
  /// [ConceptMap]

  const ConceptMap({
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
    this.sourceX,
    this.targetX,
    this.group,
  }) : super(
          resourceType: R4ResourceType.ConceptMap,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConceptMap.fromJson(
    Map<String, dynamic> json,
  ) {
    return ConceptMap(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      url: JsonParser.parsePrimitive<FhirUri>(
        json,
        'url',
        FhirUri.fromJson,
      ),
      identifier: JsonParser.parseObject<Identifier>(
        json,
        'identifier',
        Identifier.fromJson,
      ),
      version: JsonParser.parsePrimitive<FhirString>(
        json,
        'version',
        FhirString.fromJson,
      ),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
      ),
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
      ),
      status: JsonParser.parsePrimitive<PublicationStatus>(
        json,
        'status',
        PublicationStatus.fromJson,
      )!,
      experimental: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'experimental',
        FhirBoolean.fromJson,
      ),
      date: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'date',
        FhirDateTime.fromJson,
      ),
      publisher: JsonParser.parsePrimitive<FhirString>(
        json,
        'publisher',
        FhirString.fromJson,
      ),
      contact: (json['contact'] as List<dynamic>?)
          ?.map<ContactDetail>(
            (v) => ContactDetail.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
      ),
      useContext: (json['useContext'] as List<dynamic>?)
          ?.map<UsageContext>(
            (v) => UsageContext.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      purpose: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'purpose',
        FhirMarkdown.fromJson,
      ),
      copyright: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'copyright',
        FhirMarkdown.fromJson,
      ),
      sourceX: JsonParser.parsePolymorphic<SourceXConceptMap>(json, {
        'sourceUri': FhirUri.fromJson,
        'sourceCanonical': FhirCanonical.fromJson,
      }),
      targetX: JsonParser.parsePolymorphic<TargetXConceptMap>(json, {
        'targetUri': FhirUri.fromJson,
        'targetCanonical': FhirCanonical.fromJson,
      }),
      group: (json['group'] as List<dynamic>?)
          ?.map<ConceptMapGroup>(
            (v) => ConceptMapGroup.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ConceptMap]
  /// from a [String] or [YamlMap] object
  factory ConceptMap.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ConceptMap.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ConceptMap.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ConceptMap '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ConceptMap]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConceptMap.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ConceptMap.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ConceptMap';

  /// [identifier]
  /// A formal identifier that is used to identify this concept map when it
  /// is represented in other formats, or referenced in a specification,
  /// model, design or an instance.
  final Identifier? identifier;

  /// [name]
  /// A natural language name identifying the concept map. This name should
  /// be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString? name;

  /// [title]
  /// A short, descriptive, user-friendly title for the concept map.
  final FhirString? title;

  /// [purpose]
  /// Explanation of why this concept map is needed and why it has been
  /// designed as it has.
  final FhirMarkdown? purpose;

  /// [copyright]
  /// A copyright statement relating to the concept map and/or its contents.
  /// Copyright statements are generally legal restrictions on the use and
  /// publishing of the concept map.
  final FhirMarkdown? copyright;

  /// [sourceX]
  /// Identifier for the source value set that contains the concepts that are
  /// being mapped and provides context for the mappings.
  final SourceXConceptMap? sourceX;

  /// [targetX]
  /// The target value set provides context for the mappings. Note that the
  /// mapping is made between concepts, not between value sets, but the value
  /// set provides important context about how the concept mapping choices
  /// are made.
  final TargetXConceptMap? targetX;

  /// [group]
  /// A group of mappings that all have the same source and target system.
  final List<ConceptMapGroup>? group;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      addField('id', id);
    }

    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    if (implicitRules != null) {
      addField('implicitRules', implicitRules);
    }

    if (language != null) {
      addField('language', language);
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

    if (url != null) {
      addField('url', url);
    }

    if (identifier != null) {
      json['identifier'] = identifier!.toJson();
    }

    if (version != null) {
      addField('version', version);
    }

    if (name != null) {
      addField('name', name);
    }

    if (title != null) {
      addField('title', title);
    }

    addField('status', status);
    if (experimental != null) {
      addField('experimental', experimental);
    }

    if (date != null) {
      addField('date', date);
    }

    if (publisher != null) {
      addField('publisher', publisher);
    }

    if (contact != null && contact!.isNotEmpty) {
      json['contact'] = contact!.map((e) => e.toJson()).toList();
    }

    if (description != null) {
      addField('description', description);
    }

    if (useContext != null && useContext!.isNotEmpty) {
      json['useContext'] = useContext!.map((e) => e.toJson()).toList();
    }

    if (jurisdiction != null && jurisdiction!.isNotEmpty) {
      json['jurisdiction'] = jurisdiction!.map((e) => e.toJson()).toList();
    }

    if (purpose != null) {
      addField('purpose', purpose);
    }

    if (copyright != null) {
      addField('copyright', copyright);
    }

    if (sourceX != null) {
      addField('source${sourceX!.fhirType.capitalize()}', sourceX);
    }

    if (targetX != null) {
      addField('target${targetX!.fhirType.capitalize()}', targetX);
    }

    if (group != null && group!.isNotEmpty) {
      json['group'] = group!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  ConceptMap clone() => throw UnimplementedError();
  @override
  ConceptMap copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? url,
    Identifier? identifier,
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
    SourceXConceptMap? sourceX,
    TargetXConceptMap? targetX,
    List<ConceptMapGroup>? group,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ConceptMap(
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
      sourceX: sourceX ?? this.sourceX,
      targetX: targetX ?? this.targetX,
      group: group ?? this.group,
    );
  }
}

/// [ConceptMapGroup]
/// A group of mappings that all have the same source and target system.
class ConceptMapGroup extends BackboneElement {
  /// Primary constructor for
  /// [ConceptMapGroup]

  const ConceptMapGroup({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.source,
    this.sourceVersion,
    this.target,
    this.targetVersion,
    required this.element,
    this.unmapped,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConceptMapGroup.fromJson(
    Map<String, dynamic> json,
  ) {
    return ConceptMapGroup(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      source: JsonParser.parsePrimitive<FhirUri>(
        json,
        'source',
        FhirUri.fromJson,
      ),
      sourceVersion: JsonParser.parsePrimitive<FhirString>(
        json,
        'sourceVersion',
        FhirString.fromJson,
      ),
      target: JsonParser.parsePrimitive<FhirUri>(
        json,
        'target',
        FhirUri.fromJson,
      ),
      targetVersion: JsonParser.parsePrimitive<FhirString>(
        json,
        'targetVersion',
        FhirString.fromJson,
      ),
      element: (json['element'] as List<dynamic>)
          .map<ConceptMapElement>(
            (v) => ConceptMapElement.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      unmapped: JsonParser.parseObject<ConceptMapUnmapped>(
        json,
        'unmapped',
        ConceptMapUnmapped.fromJson,
      ),
    );
  }

  /// Deserialize [ConceptMapGroup]
  /// from a [String] or [YamlMap] object
  factory ConceptMapGroup.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ConceptMapGroup.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ConceptMapGroup.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ConceptMapGroup '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ConceptMapGroup]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConceptMapGroup.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ConceptMapGroup.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ConceptMapGroup';

  /// [source]
  /// An absolute URI that identifies the source system where the concepts to
  /// be mapped are defined.
  final FhirUri? source;

  /// [sourceVersion]
  /// The specific version of the code system, as determined by the code
  /// system authority.
  final FhirString? sourceVersion;

  /// [target]
  /// An absolute URI that identifies the target system that the concepts
  /// will be mapped to.
  final FhirUri? target;

  /// [targetVersion]
  /// The specific version of the code system, as determined by the code
  /// system authority.
  final FhirString? targetVersion;

  /// [element]
  /// Mappings for an individual concept in the source to one or more
  /// concepts in the target.
  final List<ConceptMapElement> element;

  /// [unmapped]
  /// What to do when there is no mapping for the source concept. "Unmapped"
  /// does not include codes that are unmatched, and the unmapped element is
  /// ignored in a code is specified to have equivalence = unmatched.
  final ConceptMapUnmapped? unmapped;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (source != null) {
      addField('source', source);
    }

    if (sourceVersion != null) {
      addField('sourceVersion', sourceVersion);
    }

    if (target != null) {
      addField('target', target);
    }

    if (targetVersion != null) {
      addField('targetVersion', targetVersion);
    }

    if (element.isNotEmpty) {
      json['element'] = element.map((e) => e.toJson()).toList();
    }

    if (unmapped != null) {
      json['unmapped'] = unmapped!.toJson();
    }

    return json;
  }

  @override
  ConceptMapGroup clone() => throw UnimplementedError();
  @override
  ConceptMapGroup copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? source,
    FhirString? sourceVersion,
    FhirUri? target,
    FhirString? targetVersion,
    List<ConceptMapElement>? element,
    ConceptMapUnmapped? unmapped,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ConceptMapGroup(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      source: source ?? this.source,
      sourceVersion: sourceVersion ?? this.sourceVersion,
      target: target ?? this.target,
      targetVersion: targetVersion ?? this.targetVersion,
      element: element ?? this.element,
      unmapped: unmapped ?? this.unmapped,
    );
  }
}

/// [ConceptMapElement]
/// Mappings for an individual concept in the source to one or more
/// concepts in the target.
class ConceptMapElement extends BackboneElement {
  /// Primary constructor for
  /// [ConceptMapElement]

  const ConceptMapElement({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.display,
    this.target,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConceptMapElement.fromJson(
    Map<String, dynamic> json,
  ) {
    return ConceptMapElement(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      code: JsonParser.parsePrimitive<FhirCode>(
        json,
        'code',
        FhirCode.fromJson,
      ),
      display: JsonParser.parsePrimitive<FhirString>(
        json,
        'display',
        FhirString.fromJson,
      ),
      target: (json['target'] as List<dynamic>?)
          ?.map<ConceptMapTarget>(
            (v) => ConceptMapTarget.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ConceptMapElement]
  /// from a [String] or [YamlMap] object
  factory ConceptMapElement.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ConceptMapElement.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ConceptMapElement.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ConceptMapElement '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ConceptMapElement]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConceptMapElement.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ConceptMapElement.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ConceptMapElement';

  /// [code]
  /// Identity (code or path) or the element/item being mapped.
  final FhirCode? code;

  /// [display]
  /// The display for the code. The display is only provided to help editors
  /// when editing the concept map.
  final FhirString? display;

  /// [target]
  /// A concept from the target value set that this concept maps to.
  final List<ConceptMapTarget>? target;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (code != null) {
      addField('code', code);
    }

    if (display != null) {
      addField('display', display);
    }

    if (target != null && target!.isNotEmpty) {
      json['target'] = target!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  ConceptMapElement clone() => throw UnimplementedError();
  @override
  ConceptMapElement copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    FhirString? display,
    List<ConceptMapTarget>? target,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ConceptMapElement(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      display: display ?? this.display,
      target: target ?? this.target,
    );
  }
}

/// [ConceptMapTarget]
/// A concept from the target value set that this concept maps to.
class ConceptMapTarget extends BackboneElement {
  /// Primary constructor for
  /// [ConceptMapTarget]

  const ConceptMapTarget({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.display,
    required this.equivalence,
    this.comment,
    this.dependsOn,
    this.product,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConceptMapTarget.fromJson(
    Map<String, dynamic> json,
  ) {
    return ConceptMapTarget(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      code: JsonParser.parsePrimitive<FhirCode>(
        json,
        'code',
        FhirCode.fromJson,
      ),
      display: JsonParser.parsePrimitive<FhirString>(
        json,
        'display',
        FhirString.fromJson,
      ),
      equivalence: JsonParser.parsePrimitive<ConceptMapEquivalence>(
        json,
        'equivalence',
        ConceptMapEquivalence.fromJson,
      )!,
      comment: JsonParser.parsePrimitive<FhirString>(
        json,
        'comment',
        FhirString.fromJson,
      ),
      dependsOn: (json['dependsOn'] as List<dynamic>?)
          ?.map<ConceptMapDependsOn>(
            (v) => ConceptMapDependsOn.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      product: (json['product'] as List<dynamic>?)
          ?.map<ConceptMapDependsOn>(
            (v) => ConceptMapDependsOn.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ConceptMapTarget]
  /// from a [String] or [YamlMap] object
  factory ConceptMapTarget.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ConceptMapTarget.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ConceptMapTarget.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ConceptMapTarget '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ConceptMapTarget]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConceptMapTarget.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ConceptMapTarget.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ConceptMapTarget';

  /// [code]
  /// Identity (code or path) or the element/item that the map refers to.
  final FhirCode? code;

  /// [display]
  /// The display for the code. The display is only provided to help editors
  /// when editing the concept map.
  final FhirString? display;

  /// [equivalence]
  /// The equivalence between the source and target concepts (counting for
  /// the dependencies and products). The equivalence is read from target to
  /// source (e.g. the target is 'wider' than the source).
  final ConceptMapEquivalence equivalence;

  /// [comment]
  /// A description of status/issues in mapping that conveys additional
  /// information not represented in the structured data.
  final FhirString? comment;

  /// [dependsOn]
  /// A set of additional dependencies for this mapping to hold. This mapping
  /// is only applicable if the specified element can be resolved, and it has
  /// the specified value.
  final List<ConceptMapDependsOn>? dependsOn;

  /// [product]
  /// A set of additional outcomes from this mapping to other elements. To
  /// properly execute this mapping, the specified element must be mapped to
  /// some data element or source that is in context. The mapping may still
  /// be useful without a place for the additional data elements, but the
  /// equivalence cannot be relied on.
  final List<ConceptMapDependsOn>? product;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (code != null) {
      addField('code', code);
    }

    if (display != null) {
      addField('display', display);
    }

    addField('equivalence', equivalence);
    if (comment != null) {
      addField('comment', comment);
    }

    if (dependsOn != null && dependsOn!.isNotEmpty) {
      json['dependsOn'] = dependsOn!.map((e) => e.toJson()).toList();
    }

    if (product != null && product!.isNotEmpty) {
      json['product'] = product!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  ConceptMapTarget clone() => throw UnimplementedError();
  @override
  ConceptMapTarget copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    FhirString? display,
    ConceptMapEquivalence? equivalence,
    FhirString? comment,
    List<ConceptMapDependsOn>? dependsOn,
    List<ConceptMapDependsOn>? product,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ConceptMapTarget(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      display: display ?? this.display,
      equivalence: equivalence ?? this.equivalence,
      comment: comment ?? this.comment,
      dependsOn: dependsOn ?? this.dependsOn,
      product: product ?? this.product,
    );
  }
}

/// [ConceptMapDependsOn]
/// A set of additional dependencies for this mapping to hold. This mapping
/// is only applicable if the specified element can be resolved, and it has
/// the specified value.
class ConceptMapDependsOn extends BackboneElement {
  /// Primary constructor for
  /// [ConceptMapDependsOn]

  const ConceptMapDependsOn({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.property,
    this.system,
    required this.value,
    this.display,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConceptMapDependsOn.fromJson(
    Map<String, dynamic> json,
  ) {
    return ConceptMapDependsOn(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      property: JsonParser.parsePrimitive<FhirUri>(
        json,
        'property',
        FhirUri.fromJson,
      )!,
      system: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'system',
        FhirCanonical.fromJson,
      ),
      value: JsonParser.parsePrimitive<FhirString>(
        json,
        'value',
        FhirString.fromJson,
      )!,
      display: JsonParser.parsePrimitive<FhirString>(
        json,
        'display',
        FhirString.fromJson,
      ),
    );
  }

  /// Deserialize [ConceptMapDependsOn]
  /// from a [String] or [YamlMap] object
  factory ConceptMapDependsOn.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ConceptMapDependsOn.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ConceptMapDependsOn.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ConceptMapDependsOn '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ConceptMapDependsOn]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConceptMapDependsOn.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ConceptMapDependsOn.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ConceptMapDependsOn';

  /// [property]
  /// A reference to an element that holds a coded value that corresponds to
  /// a code system property. The idea is that the information model carries
  /// an element somewhere that is labeled to correspond with a code system
  /// property.
  final FhirUri property;

  /// [system]
  /// An absolute URI that identifies the code system of the dependency code
  /// (if the source/dependency is a value set that crosses code systems).
  final FhirCanonical? system;

  /// [value]
  /// Identity (code or path) or the element/item/ValueSet/text that the map
  /// depends on / refers to.
  final FhirString value;

  /// [display]
  /// The display for the code. The display is only provided to help editors
  /// when editing the concept map.
  final FhirString? display;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('property', property);
    if (system != null) {
      addField('system', system);
    }

    addField('value', value);
    if (display != null) {
      addField('display', display);
    }

    return json;
  }

  @override
  ConceptMapDependsOn clone() => throw UnimplementedError();
  @override
  ConceptMapDependsOn copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? property,
    FhirCanonical? system,
    FhirString? value,
    FhirString? display,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ConceptMapDependsOn(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      property: property ?? this.property,
      system: system ?? this.system,
      value: value ?? this.value,
      display: display ?? this.display,
    );
  }
}

/// [ConceptMapUnmapped]
/// What to do when there is no mapping for the source concept. "Unmapped"
/// does not include codes that are unmatched, and the unmapped element is
/// ignored in a code is specified to have equivalence = unmatched.
class ConceptMapUnmapped extends BackboneElement {
  /// Primary constructor for
  /// [ConceptMapUnmapped]

  const ConceptMapUnmapped({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.mode,
    this.code,
    this.display,
    this.url,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConceptMapUnmapped.fromJson(
    Map<String, dynamic> json,
  ) {
    return ConceptMapUnmapped(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      mode: JsonParser.parsePrimitive<ConceptMapGroupUnmappedMode>(
        json,
        'mode',
        ConceptMapGroupUnmappedMode.fromJson,
      )!,
      code: JsonParser.parsePrimitive<FhirCode>(
        json,
        'code',
        FhirCode.fromJson,
      ),
      display: JsonParser.parsePrimitive<FhirString>(
        json,
        'display',
        FhirString.fromJson,
      ),
      url: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'url',
        FhirCanonical.fromJson,
      ),
    );
  }

  /// Deserialize [ConceptMapUnmapped]
  /// from a [String] or [YamlMap] object
  factory ConceptMapUnmapped.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ConceptMapUnmapped.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ConceptMapUnmapped.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ConceptMapUnmapped '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ConceptMapUnmapped]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConceptMapUnmapped.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ConceptMapUnmapped.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ConceptMapUnmapped';

  /// [mode]
  /// Defines which action to take if there is no match for the source
  /// concept in the target system designated for the group. One of 3 actions
  /// are possible: use the unmapped code (this is useful when doing a
  /// mapping between versions, and only a few codes have changed), use a
  /// fixed code (a default code), or alternatively, a reference to a
  /// different concept map can be provided (by canonical URL).
  final ConceptMapGroupUnmappedMode mode;

  /// [code]
  /// The fixed code to use when the mode = 'fixed' - all unmapped codes are
  /// mapped to a single fixed code.
  final FhirCode? code;

  /// [display]
  /// The display for the code. The display is only provided to help editors
  /// when editing the concept map.
  final FhirString? display;

  /// [url]
  /// The canonical reference to an additional ConceptMap resource instance
  /// to use for mapping if this ConceptMap resource contains no matching
  /// mapping for the source concept.
  final FhirCanonical? url;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('mode', mode);
    if (code != null) {
      addField('code', code);
    }

    if (display != null) {
      addField('display', display);
    }

    if (url != null) {
      addField('url', url);
    }

    return json;
  }

  @override
  ConceptMapUnmapped clone() => throw UnimplementedError();
  @override
  ConceptMapUnmapped copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ConceptMapGroupUnmappedMode? mode,
    FhirCode? code,
    FhirString? display,
    FhirCanonical? url,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ConceptMapUnmapped(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      mode: mode ?? this.mode,
      code: code ?? this.code,
      display: display ?? this.display,
      url: url ?? this.url,
    );
  }
}
