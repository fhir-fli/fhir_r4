import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'structure_map.g.dart';

/// [StructureMap] /// A Map of relationships between 2 structures that can be used to transform
/// data.
@JsonSerializable()
class StructureMap extends DomainResource {
  StructureMap({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    required this.url,
    this.urlElement,
    this.identifier,
    this.version,
    this.versionElement,
    required this.name,
    this.nameElement,
    this.title,
    this.titleElement,
    required this.status,
    this.statusElement,
    this.experimental,
    this.experimentalElement,
    this.date,
    this.dateElement,
    this.publisher,
    this.publisherElement,
    this.contact,
    this.description,
    this.descriptionElement,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.purposeElement,
    this.copyright,
    this.copyrightElement,
    this.structure,
    this.import_,
    this.importElement,
    required this.group,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    R4ResourceType? resourceType,
  }) : super(
            resourceType: R4ResourceType.StructureMap,
            fhirType: 'StructureMap');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [url] /// An absolute URI that is used to identify this structure map when it is
  /// referenced in a specification, model, design or an instance; also called
  /// its canonical identifier. This SHOULD be globally unique and SHOULD be a
  /// literal address at which at which an authoritative instance of this
  /// structure map is (or will be) published. This URL can be the target of a
  /// canonical reference. It SHALL remain the same when the structure map is
  /// stored on different servers.
  @JsonKey(name: 'url')
  final FhirUri url;
  @JsonKey(name: '_url')
  final Element? urlElement;

  /// [identifier] /// A formal identifier that is used to identify this structure map when it is
  /// represented in other formats, or referenced in a specification, model,
  /// design or an instance.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [version] /// The identifier that is used to identify this version of the structure map
  /// when it is referenced in a specification, model, design or instance. This
  /// is an arbitrary value managed by the structure map author and is not
  /// expected to be globally unique. For example, it might be a timestamp (e.g.
  /// yyyymmdd) if a managed version is not available. There is also no
  /// expectation that versions can be placed in a lexicographical sequence.
  @JsonKey(name: 'version')
  final FhirString? version;
  @JsonKey(name: '_version')
  final Element? versionElement;

  /// [name] /// A natural language name identifying the structure map. This name should be
  /// usable as an identifier for the module by machine processing applications
  /// such as code generation.
  @JsonKey(name: 'name')
  final FhirString name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [title] /// A short, descriptive, user-friendly title for the structure map.
  @JsonKey(name: 'title')
  final FhirString? title;
  @JsonKey(name: '_title')
  final Element? titleElement;

  /// [status] /// The status of this structure map. Enables tracking the life-cycle of the
  /// content.
  @JsonKey(name: 'status')
  final PublicationStatus status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [experimental] /// A Boolean value to indicate that this structure map is authored for testing
  /// purposes (or education/evaluation/marketing) and is not intended to be used
  /// for genuine usage.
  @JsonKey(name: 'experimental')
  final FhirBoolean? experimental;
  @JsonKey(name: '_experimental')
  final Element? experimentalElement;

  /// [date] /// The date (and optionally time) when the structure map was published. The
  /// date must change when the business version changes and it must change if
  /// the status code changes. In addition, it should change when the substantive
  /// content of the structure map changes.
  @JsonKey(name: 'date')
  final FhirDateTime? date;
  @JsonKey(name: '_date')
  final Element? dateElement;

  /// [publisher] /// The name of the organization or individual that published the structure
  /// map.
  @JsonKey(name: 'publisher')
  final FhirString? publisher;
  @JsonKey(name: '_publisher')
  final Element? publisherElement;

  /// [contact] /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  @JsonKey(name: 'contact')
  final List<ContactDetail>? contact;

  /// [description] /// A free text natural language description of the structure map from a
  /// consumer's perspective.
  @JsonKey(name: 'description')
  final FhirMarkdown? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [useContext] /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories (gender,
  /// age, ...) or may be references to specific programs (insurance plans,
  /// studies, ...) and may be used to assist with indexing and searching for
  /// appropriate structure map instances.
  @JsonKey(name: 'useContext')
  final List<UsageContext>? useContext;

  /// [jurisdiction] /// A legal or geographic region in which the structure map is intended to be
  /// used.
  @JsonKey(name: 'jurisdiction')
  final List<CodeableConcept>? jurisdiction;

  /// [purpose] /// Explanation of why this structure map is needed and why it has been
  /// designed as it has.
  @JsonKey(name: 'purpose')
  final FhirMarkdown? purpose;
  @JsonKey(name: '_purpose')
  final Element? purposeElement;

  /// [copyright] /// A copyright statement relating to the structure map and/or its contents.
  /// Copyright statements are generally legal restrictions on the use and
  /// publishing of the structure map.
  @JsonKey(name: 'copyright')
  final FhirMarkdown? copyright;
  @JsonKey(name: '_copyright')
  final Element? copyrightElement;

  /// [structure] /// A structure definition used by this map. The structure definition may
  /// describe instances that are converted, or the instances that are produced.
  @JsonKey(name: 'structure')
  final List<StructureMapStructure>? structure;

  /// [import_] /// Other maps used by this map (canonical URLs).
  @JsonKey(name: 'import')
  final List<FhirCanonical>? import_;
  @JsonKey(name: '_import')
  final List<Element>? importElement;

  /// [group] /// Organizes the mapping into manageable chunks for human review/ease of
  /// maintenance.
  @JsonKey(name: 'group')
  final List<StructureMapGroup> group;
  factory StructureMap.fromJson(Map<String, dynamic> json) =>
      _$StructureMapFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StructureMapToJson(this);

  @override
  StructureMap clone() => throw UnimplementedError();
  @override
  StructureMap copyWith({
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
    List<StructureMapStructure>? structure,
    List<FhirCanonical>? import_,
    List<Element>? importElement,
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
      structure: structure ?? this.structure,
      import_: import_ ?? this.import_,
      importElement: importElement ?? this.importElement,
      group: group ?? this.group,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory StructureMap.fromYaml(dynamic yaml) => yaml is String
      ? StructureMap.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? StructureMap.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'StructureMap cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory StructureMap.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return StructureMap.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [StructureMapStructure] /// A structure definition used by this map. The structure definition may
/// describe instances that are converted, or the instances that are produced.
@JsonSerializable()
class StructureMapStructure extends BackboneElement {
  StructureMapStructure({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.url,
    this.urlElement,
    required this.mode,
    this.modeElement,
    this.alias,
    this.aliasElement,
    this.documentation,
    this.documentationElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'StructureMapStructure');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [url] /// The canonical reference to the structure.
  @JsonKey(name: 'url')
  final FhirCanonical url;
  @JsonKey(name: '_url')
  final Element? urlElement;

  /// [mode] /// How the referenced structure is used in this mapping.
  @JsonKey(name: 'mode')
  final StructureMapModelMode mode;
  @JsonKey(name: '_mode')
  final Element? modeElement;

  /// [alias] /// The name used for this type in the map.
  @JsonKey(name: 'alias')
  final FhirString? alias;
  @JsonKey(name: '_alias')
  final Element? aliasElement;

  /// [documentation] /// Documentation that describes how the structure is used in the mapping.
  @JsonKey(name: 'documentation')
  final FhirString? documentation;
  @JsonKey(name: '_documentation')
  final Element? documentationElement;
  factory StructureMapStructure.fromJson(Map<String, dynamic> json) =>
      _$StructureMapStructureFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StructureMapStructureToJson(this);

  @override
  StructureMapStructure clone() => throw UnimplementedError();
  @override
  StructureMapStructure copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCanonical? url,
    Element? urlElement,
    StructureMapModelMode? mode,
    Element? modeElement,
    FhirString? alias,
    Element? aliasElement,
    FhirString? documentation,
    Element? documentationElement,
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
      urlElement: urlElement ?? this.urlElement,
      mode: mode ?? this.mode,
      modeElement: modeElement ?? this.modeElement,
      alias: alias ?? this.alias,
      aliasElement: aliasElement ?? this.aliasElement,
      documentation: documentation ?? this.documentation,
      documentationElement: documentationElement ?? this.documentationElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory StructureMapStructure.fromYaml(dynamic yaml) => yaml is String
      ? StructureMapStructure.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? StructureMapStructure.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'StructureMapStructure cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory StructureMapStructure.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return StructureMapStructure.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [StructureMapGroup] /// Organizes the mapping into manageable chunks for human review/ease of
/// maintenance.
@JsonSerializable()
class StructureMapGroup extends BackboneElement {
  StructureMapGroup({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.nameElement,
    this.extends_,
    this.extendsElement,
    required this.typeMode,
    this.typeModeElement,
    this.documentation,
    this.documentationElement,
    required this.input,
    required this.rule,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'StructureMapGroup');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [name] /// A unique name for the group for the convenience of human readers.
  @JsonKey(name: 'name')
  final FhirId name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [extends_] /// Another group that this group adds rules to.
  @JsonKey(name: 'extends')
  final FhirId? extends_;
  @JsonKey(name: '_extends')
  final Element? extendsElement;

  /// [typeMode] /// If this is the default rule set to apply for the source type or this
  /// combination of types.
  @JsonKey(name: 'typeMode')
  final StructureMapGroupTypeMode typeMode;
  @JsonKey(name: '_typeMode')
  final Element? typeModeElement;

  /// [documentation] /// Additional supporting documentation that explains the purpose of the group
  /// and the types of mappings within it.
  @JsonKey(name: 'documentation')
  final FhirString? documentation;
  @JsonKey(name: '_documentation')
  final Element? documentationElement;

  /// [input] /// A name assigned to an instance of data. The instance must be provided when
  /// the mapping is invoked.
  @JsonKey(name: 'input')
  final List<StructureMapInput> input;

  /// [rule] /// Transform Rule from source to target.
  @JsonKey(name: 'rule')
  final List<StructureMapRule> rule;
  factory StructureMapGroup.fromJson(Map<String, dynamic> json) =>
      _$StructureMapGroupFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StructureMapGroupToJson(this);

  @override
  StructureMapGroup clone() => throw UnimplementedError();
  @override
  StructureMapGroup copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? name,
    Element? nameElement,
    FhirId? extends_,
    Element? extendsElement,
    StructureMapGroupTypeMode? typeMode,
    Element? typeModeElement,
    FhirString? documentation,
    Element? documentationElement,
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
      nameElement: nameElement ?? this.nameElement,
      extends_: extends_ ?? this.extends_,
      extendsElement: extendsElement ?? this.extendsElement,
      typeMode: typeMode ?? this.typeMode,
      typeModeElement: typeModeElement ?? this.typeModeElement,
      documentation: documentation ?? this.documentation,
      documentationElement: documentationElement ?? this.documentationElement,
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

  factory StructureMapGroup.fromYaml(dynamic yaml) => yaml is String
      ? StructureMapGroup.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? StructureMapGroup.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'StructureMapGroup cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory StructureMapGroup.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return StructureMapGroup.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [StructureMapInput] /// A name assigned to an instance of data. The instance must be provided when
/// the mapping is invoked.
@JsonSerializable()
class StructureMapInput extends BackboneElement {
  StructureMapInput({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.nameElement,
    this.type,
    this.typeElement,
    required this.mode,
    this.modeElement,
    this.documentation,
    this.documentationElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'StructureMapInput');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [name] /// Name for this instance of data.
  @JsonKey(name: 'name')
  final FhirId name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [type] /// Type for this instance of data.
  @JsonKey(name: 'type')
  final FhirString? type;
  @JsonKey(name: '_type')
  final Element? typeElement;

  /// [mode] /// Mode for this instance of data.
  @JsonKey(name: 'mode')
  final StructureMapInputMode mode;
  @JsonKey(name: '_mode')
  final Element? modeElement;

  /// [documentation] /// Documentation for this instance of data.
  @JsonKey(name: 'documentation')
  final FhirString? documentation;
  @JsonKey(name: '_documentation')
  final Element? documentationElement;
  factory StructureMapInput.fromJson(Map<String, dynamic> json) =>
      _$StructureMapInputFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StructureMapInputToJson(this);

  @override
  StructureMapInput clone() => throw UnimplementedError();
  @override
  StructureMapInput copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? name,
    Element? nameElement,
    FhirString? type,
    Element? typeElement,
    StructureMapInputMode? mode,
    Element? modeElement,
    FhirString? documentation,
    Element? documentationElement,
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
      nameElement: nameElement ?? this.nameElement,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      mode: mode ?? this.mode,
      modeElement: modeElement ?? this.modeElement,
      documentation: documentation ?? this.documentation,
      documentationElement: documentationElement ?? this.documentationElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory StructureMapInput.fromYaml(dynamic yaml) => yaml is String
      ? StructureMapInput.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? StructureMapInput.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'StructureMapInput cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory StructureMapInput.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return StructureMapInput.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [StructureMapRule] /// Transform Rule from source to target.
@JsonSerializable()
class StructureMapRule extends BackboneElement {
  StructureMapRule({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.nameElement,
    required this.source,
    this.target,
    this.rule,
    this.dependent,
    this.documentation,
    this.documentationElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'StructureMapRule');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [name] /// Name of the rule for internal references.
  @JsonKey(name: 'name')
  final FhirId name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [source] /// Source inputs to the mapping.
  @JsonKey(name: 'source')
  final List<StructureMapSource> source;

  /// [target] /// Content to create because of this mapping rule.
  @JsonKey(name: 'target')
  final List<StructureMapTarget>? target;

  /// [rule] /// Rules contained in this rule.
  @JsonKey(name: 'rule')
  final List<StructureMapRule>? rule;

  /// [dependent] /// Which other rules to apply in the context of this rule.
  @JsonKey(name: 'dependent')
  final List<StructureMapDependent>? dependent;

  /// [documentation] /// Documentation for this instance of data.
  @JsonKey(name: 'documentation')
  final FhirString? documentation;
  @JsonKey(name: '_documentation')
  final Element? documentationElement;
  factory StructureMapRule.fromJson(Map<String, dynamic> json) =>
      _$StructureMapRuleFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StructureMapRuleToJson(this);

  @override
  StructureMapRule clone() => throw UnimplementedError();
  @override
  StructureMapRule copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? name,
    Element? nameElement,
    List<StructureMapSource>? source,
    List<StructureMapTarget>? target,
    List<StructureMapRule>? rule,
    List<StructureMapDependent>? dependent,
    FhirString? documentation,
    Element? documentationElement,
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
      nameElement: nameElement ?? this.nameElement,
      source: source ?? this.source,
      target: target ?? this.target,
      rule: rule ?? this.rule,
      dependent: dependent ?? this.dependent,
      documentation: documentation ?? this.documentation,
      documentationElement: documentationElement ?? this.documentationElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory StructureMapRule.fromYaml(dynamic yaml) => yaml is String
      ? StructureMapRule.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? StructureMapRule.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'StructureMapRule cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory StructureMapRule.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return StructureMapRule.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [StructureMapSource] /// Source inputs to the mapping.
@JsonSerializable()
class StructureMapSource extends BackboneElement {
  StructureMapSource({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.context,
    this.contextElement,
    this.min,
    this.minElement,
    this.max,
    this.maxElement,
    this.type,
    this.typeElement,
    this.defaultValueBase64Binary,
    this.defaultValueBase64BinaryElement,
    this.defaultValueBoolean,
    this.defaultValueBooleanElement,
    this.defaultValueCanonical,
    this.defaultValueCanonicalElement,
    this.defaultValueCode,
    this.defaultValueCodeElement,
    this.defaultValueDate,
    this.defaultValueDateElement,
    this.defaultValueDateTime,
    this.defaultValueDateTimeElement,
    this.defaultValueDecimal,
    this.defaultValueDecimalElement,
    this.defaultValueId,
    this.defaultValueIdElement,
    this.defaultValueInstant,
    this.defaultValueInstantElement,
    this.defaultValueInteger,
    this.defaultValueIntegerElement,
    this.defaultValueMarkdown,
    this.defaultValueMarkdownElement,
    this.defaultValueOid,
    this.defaultValueOidElement,
    this.defaultValuePositiveInt,
    this.defaultValuePositiveIntElement,
    this.defaultValueString,
    this.defaultValueStringElement,
    this.defaultValueTime,
    this.defaultValueTimeElement,
    this.defaultValueUnsignedInt,
    this.defaultValueUnsignedIntElement,
    this.defaultValueUri,
    this.defaultValueUriElement,
    this.defaultValueUrl,
    this.defaultValueUrlElement,
    this.defaultValueUuid,
    this.defaultValueUuidElement,
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
    this.elementElement,
    this.listMode,
    this.listModeElement,
    this.variable,
    this.variableElement,
    this.condition,
    this.conditionElement,
    this.check,
    this.checkElement,
    this.logMessage,
    this.logMessageElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'StructureMapSource');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [context] /// Type or variable this rule applies to.
  @JsonKey(name: 'context')
  final FhirId context;
  @JsonKey(name: '_context')
  final Element? contextElement;

  /// [min] /// Specified minimum cardinality for the element. This is optional; if
  /// present, it acts an implicit check on the input content.
  @JsonKey(name: 'min')
  final FhirInteger? min;
  @JsonKey(name: '_min')
  final Element? minElement;

  /// [max] /// Specified maximum cardinality for the element - a number or a "*". This is
  /// optional; if present, it acts an implicit check on the input content (*
  /// just serves as documentation; it's the default value).
  @JsonKey(name: 'max')
  final FhirString? max;
  @JsonKey(name: '_max')
  final Element? maxElement;

  /// [type] /// Specified type for the element. This works as a condition on the mapping -
  /// use for polymorphic elements.
  @JsonKey(name: 'type')
  final FhirString? type;
  @JsonKey(name: '_type')
  final Element? typeElement;

  /// [defaultValueBase64Binary] /// A value to use if there is no existing value in the source object.
  @JsonKey(name: 'defaultValueBase64Binary')
  final FhirBase64Binary? defaultValueBase64Binary;
  @JsonKey(name: '_defaultValueBase64Binary')
  final Element? defaultValueBase64BinaryElement;

  /// [defaultValueBoolean] /// A value to use if there is no existing value in the source object.
  @JsonKey(name: 'defaultValueBoolean')
  final FhirBoolean? defaultValueBoolean;
  @JsonKey(name: '_defaultValueBoolean')
  final Element? defaultValueBooleanElement;

  /// [defaultValueCanonical] /// A value to use if there is no existing value in the source object.
  @JsonKey(name: 'defaultValueCanonical')
  final FhirCanonical? defaultValueCanonical;
  @JsonKey(name: '_defaultValueCanonical')
  final Element? defaultValueCanonicalElement;

  /// [defaultValueCode] /// A value to use if there is no existing value in the source object.
  @JsonKey(name: 'defaultValueCode')
  final FhirCode? defaultValueCode;
  @JsonKey(name: '_defaultValueCode')
  final Element? defaultValueCodeElement;

  /// [defaultValueDate] /// A value to use if there is no existing value in the source object.
  @JsonKey(name: 'defaultValueDate')
  final FhirDate? defaultValueDate;
  @JsonKey(name: '_defaultValueDate')
  final Element? defaultValueDateElement;

  /// [defaultValueDateTime] /// A value to use if there is no existing value in the source object.
  @JsonKey(name: 'defaultValueDateTime')
  final FhirDateTime? defaultValueDateTime;
  @JsonKey(name: '_defaultValueDateTime')
  final Element? defaultValueDateTimeElement;

  /// [defaultValueDecimal] /// A value to use if there is no existing value in the source object.
  @JsonKey(name: 'defaultValueDecimal')
  final FhirDecimal? defaultValueDecimal;
  @JsonKey(name: '_defaultValueDecimal')
  final Element? defaultValueDecimalElement;

  /// [defaultValueId] /// A value to use if there is no existing value in the source object.
  @JsonKey(name: 'defaultValueId')
  final FhirId? defaultValueId;
  @JsonKey(name: '_defaultValueId')
  final Element? defaultValueIdElement;

  /// [defaultValueInstant] /// A value to use if there is no existing value in the source object.
  @JsonKey(name: 'defaultValueInstant')
  final FhirInstant? defaultValueInstant;
  @JsonKey(name: '_defaultValueInstant')
  final Element? defaultValueInstantElement;

  /// [defaultValueInteger] /// A value to use if there is no existing value in the source object.
  @JsonKey(name: 'defaultValueInteger')
  final FhirInteger? defaultValueInteger;
  @JsonKey(name: '_defaultValueInteger')
  final Element? defaultValueIntegerElement;

  /// [defaultValueMarkdown] /// A value to use if there is no existing value in the source object.
  @JsonKey(name: 'defaultValueMarkdown')
  final FhirMarkdown? defaultValueMarkdown;
  @JsonKey(name: '_defaultValueMarkdown')
  final Element? defaultValueMarkdownElement;

  /// [defaultValueOid] /// A value to use if there is no existing value in the source object.
  @JsonKey(name: 'defaultValueOid')
  final FhirOid? defaultValueOid;
  @JsonKey(name: '_defaultValueOid')
  final Element? defaultValueOidElement;

  /// [defaultValuePositiveInt] /// A value to use if there is no existing value in the source object.
  @JsonKey(name: 'defaultValuePositiveInt')
  final FhirPositiveInt? defaultValuePositiveInt;
  @JsonKey(name: '_defaultValuePositiveInt')
  final Element? defaultValuePositiveIntElement;

  /// [defaultValueString] /// A value to use if there is no existing value in the source object.
  @JsonKey(name: 'defaultValueString')
  final FhirString? defaultValueString;
  @JsonKey(name: '_defaultValueString')
  final Element? defaultValueStringElement;

  /// [defaultValueTime] /// A value to use if there is no existing value in the source object.
  @JsonKey(name: 'defaultValueTime')
  final FhirTime? defaultValueTime;
  @JsonKey(name: '_defaultValueTime')
  final Element? defaultValueTimeElement;

  /// [defaultValueUnsignedInt] /// A value to use if there is no existing value in the source object.
  @JsonKey(name: 'defaultValueUnsignedInt')
  final FhirUnsignedInt? defaultValueUnsignedInt;
  @JsonKey(name: '_defaultValueUnsignedInt')
  final Element? defaultValueUnsignedIntElement;

  /// [defaultValueUri] /// A value to use if there is no existing value in the source object.
  @JsonKey(name: 'defaultValueUri')
  final FhirUri? defaultValueUri;
  @JsonKey(name: '_defaultValueUri')
  final Element? defaultValueUriElement;

  /// [defaultValueUrl] /// A value to use if there is no existing value in the source object.
  @JsonKey(name: 'defaultValueUrl')
  final FhirUrl? defaultValueUrl;
  @JsonKey(name: '_defaultValueUrl')
  final Element? defaultValueUrlElement;

  /// [defaultValueUuid] /// A value to use if there is no existing value in the source object.
  @JsonKey(name: 'defaultValueUuid')
  final FhirUuid? defaultValueUuid;
  @JsonKey(name: '_defaultValueUuid')
  final Element? defaultValueUuidElement;

  /// [defaultValueAddress] /// A value to use if there is no existing value in the source object.
  @JsonKey(name: 'defaultValueAddress')
  final Address? defaultValueAddress;

  /// [defaultValueAge] /// A value to use if there is no existing value in the source object.
  @JsonKey(name: 'defaultValueAge')
  final Age? defaultValueAge;

  /// [defaultValueAnnotation] /// A value to use if there is no existing value in the source object.
  @JsonKey(name: 'defaultValueAnnotation')
  final Annotation? defaultValueAnnotation;

  /// [defaultValueAttachment] /// A value to use if there is no existing value in the source object.
  @JsonKey(name: 'defaultValueAttachment')
  final Attachment? defaultValueAttachment;

  /// [defaultValueCodeableConcept] /// A value to use if there is no existing value in the source object.
  @JsonKey(name: 'defaultValueCodeableConcept')
  final CodeableConcept? defaultValueCodeableConcept;

  /// [defaultValueCoding] /// A value to use if there is no existing value in the source object.
  @JsonKey(name: 'defaultValueCoding')
  final Coding? defaultValueCoding;

  /// [defaultValueContactPoint] /// A value to use if there is no existing value in the source object.
  @JsonKey(name: 'defaultValueContactPoint')
  final ContactPoint? defaultValueContactPoint;

  /// [defaultValueCount] /// A value to use if there is no existing value in the source object.
  @JsonKey(name: 'defaultValueCount')
  final Count? defaultValueCount;

  /// [defaultValueDistance] /// A value to use if there is no existing value in the source object.
  @JsonKey(name: 'defaultValueDistance')
  final Distance? defaultValueDistance;

  /// [defaultValueDuration] /// A value to use if there is no existing value in the source object.
  @JsonKey(name: 'defaultValueDuration')
  final FhirDuration? defaultValueDuration;

  /// [defaultValueHumanName] /// A value to use if there is no existing value in the source object.
  @JsonKey(name: 'defaultValueHumanName')
  final HumanName? defaultValueHumanName;

  /// [defaultValueIdentifier] /// A value to use if there is no existing value in the source object.
  @JsonKey(name: 'defaultValueIdentifier')
  final Identifier? defaultValueIdentifier;

  /// [defaultValueMoney] /// A value to use if there is no existing value in the source object.
  @JsonKey(name: 'defaultValueMoney')
  final Money? defaultValueMoney;

  /// [defaultValuePeriod] /// A value to use if there is no existing value in the source object.
  @JsonKey(name: 'defaultValuePeriod')
  final Period? defaultValuePeriod;

  /// [defaultValueQuantity] /// A value to use if there is no existing value in the source object.
  @JsonKey(name: 'defaultValueQuantity')
  final Quantity? defaultValueQuantity;

  /// [defaultValueRange] /// A value to use if there is no existing value in the source object.
  @JsonKey(name: 'defaultValueRange')
  final Range? defaultValueRange;

  /// [defaultValueRatio] /// A value to use if there is no existing value in the source object.
  @JsonKey(name: 'defaultValueRatio')
  final Ratio? defaultValueRatio;

  /// [defaultValueReference] /// A value to use if there is no existing value in the source object.
  @JsonKey(name: 'defaultValueReference')
  final Reference? defaultValueReference;

  /// [defaultValueSampledData] /// A value to use if there is no existing value in the source object.
  @JsonKey(name: 'defaultValueSampledData')
  final SampledData? defaultValueSampledData;

  /// [defaultValueSignature] /// A value to use if there is no existing value in the source object.
  @JsonKey(name: 'defaultValueSignature')
  final Signature? defaultValueSignature;

  /// [defaultValueTiming] /// A value to use if there is no existing value in the source object.
  @JsonKey(name: 'defaultValueTiming')
  final Timing? defaultValueTiming;

  /// [defaultValueContactDetail] /// A value to use if there is no existing value in the source object.
  @JsonKey(name: 'defaultValueContactDetail')
  final ContactDetail? defaultValueContactDetail;

  /// [defaultValueContributor] /// A value to use if there is no existing value in the source object.
  @JsonKey(name: 'defaultValueContributor')
  final Contributor? defaultValueContributor;

  /// [defaultValueDataRequirement] /// A value to use if there is no existing value in the source object.
  @JsonKey(name: 'defaultValueDataRequirement')
  final DataRequirement? defaultValueDataRequirement;

  /// [defaultValueExpression] /// A value to use if there is no existing value in the source object.
  @JsonKey(name: 'defaultValueExpression')
  final FhirExpression? defaultValueExpression;

  /// [defaultValueParameterDefinition] /// A value to use if there is no existing value in the source object.
  @JsonKey(name: 'defaultValueParameterDefinition')
  final ParameterDefinition? defaultValueParameterDefinition;

  /// [defaultValueRelatedArtifact] /// A value to use if there is no existing value in the source object.
  @JsonKey(name: 'defaultValueRelatedArtifact')
  final RelatedArtifact? defaultValueRelatedArtifact;

  /// [defaultValueTriggerDefinition] /// A value to use if there is no existing value in the source object.
  @JsonKey(name: 'defaultValueTriggerDefinition')
  final TriggerDefinition? defaultValueTriggerDefinition;

  /// [defaultValueUsageContext] /// A value to use if there is no existing value in the source object.
  @JsonKey(name: 'defaultValueUsageContext')
  final UsageContext? defaultValueUsageContext;

  /// [defaultValueDosage] /// A value to use if there is no existing value in the source object.
  @JsonKey(name: 'defaultValueDosage')
  final Dosage? defaultValueDosage;

  /// [defaultValueMeta] /// A value to use if there is no existing value in the source object.
  @JsonKey(name: 'defaultValueMeta')
  final FhirMeta? defaultValueMeta;

  /// [element] /// Optional field for this source.
  @JsonKey(name: 'element')
  final FhirString? element;
  @JsonKey(name: '_element')
  final Element? elementElement;

  /// [listMode] /// How to handle the list mode for this element.
  @JsonKey(name: 'listMode')
  final StructureMapSourceListMode? listMode;
  @JsonKey(name: '_listMode')
  final Element? listModeElement;

  /// [variable] /// Named context for field, if a field is specified.
  @JsonKey(name: 'variable')
  final FhirId? variable;
  @JsonKey(name: '_variable')
  final Element? variableElement;

  /// [condition] /// FHIRPath expression - must be true or the rule does not apply.
  @JsonKey(name: 'condition')
  final FhirString? condition;
  @JsonKey(name: '_condition')
  final Element? conditionElement;

  /// [check] /// FHIRPath expression - must be true or the mapping engine throws an error
  /// instead of completing.
  @JsonKey(name: 'check')
  final FhirString? check;
  @JsonKey(name: '_check')
  final Element? checkElement;

  /// [logMessage] /// A FHIRPath expression which specifies a message to put in the transform log
  /// when content matching the source rule is found.
  @JsonKey(name: 'logMessage')
  final FhirString? logMessage;
  @JsonKey(name: '_logMessage')
  final Element? logMessageElement;
  factory StructureMapSource.fromJson(Map<String, dynamic> json) =>
      _$StructureMapSourceFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StructureMapSourceToJson(this);

  @override
  StructureMapSource clone() => throw UnimplementedError();
  @override
  StructureMapSource copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? context,
    Element? contextElement,
    FhirInteger? min,
    Element? minElement,
    FhirString? max,
    Element? maxElement,
    FhirString? type,
    Element? typeElement,
    FhirBase64Binary? defaultValueBase64Binary,
    Element? defaultValueBase64BinaryElement,
    FhirBoolean? defaultValueBoolean,
    Element? defaultValueBooleanElement,
    FhirCanonical? defaultValueCanonical,
    Element? defaultValueCanonicalElement,
    FhirCode? defaultValueCode,
    Element? defaultValueCodeElement,
    FhirDate? defaultValueDate,
    Element? defaultValueDateElement,
    FhirDateTime? defaultValueDateTime,
    Element? defaultValueDateTimeElement,
    FhirDecimal? defaultValueDecimal,
    Element? defaultValueDecimalElement,
    FhirId? defaultValueId,
    Element? defaultValueIdElement,
    FhirInstant? defaultValueInstant,
    Element? defaultValueInstantElement,
    FhirInteger? defaultValueInteger,
    Element? defaultValueIntegerElement,
    FhirMarkdown? defaultValueMarkdown,
    Element? defaultValueMarkdownElement,
    FhirOid? defaultValueOid,
    Element? defaultValueOidElement,
    FhirPositiveInt? defaultValuePositiveInt,
    Element? defaultValuePositiveIntElement,
    FhirString? defaultValueString,
    Element? defaultValueStringElement,
    FhirTime? defaultValueTime,
    Element? defaultValueTimeElement,
    FhirUnsignedInt? defaultValueUnsignedInt,
    Element? defaultValueUnsignedIntElement,
    FhirUri? defaultValueUri,
    Element? defaultValueUriElement,
    FhirUrl? defaultValueUrl,
    Element? defaultValueUrlElement,
    FhirUuid? defaultValueUuid,
    Element? defaultValueUuidElement,
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
    Element? elementElement,
    StructureMapSourceListMode? listMode,
    Element? listModeElement,
    FhirId? variable,
    Element? variableElement,
    FhirString? condition,
    Element? conditionElement,
    FhirString? check,
    Element? checkElement,
    FhirString? logMessage,
    Element? logMessageElement,
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
      contextElement: contextElement ?? this.contextElement,
      min: min ?? this.min,
      minElement: minElement ?? this.minElement,
      max: max ?? this.max,
      maxElement: maxElement ?? this.maxElement,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      defaultValueBase64Binary:
          defaultValueBase64Binary ?? this.defaultValueBase64Binary,
      defaultValueBase64BinaryElement: defaultValueBase64BinaryElement ??
          this.defaultValueBase64BinaryElement,
      defaultValueBoolean: defaultValueBoolean ?? this.defaultValueBoolean,
      defaultValueBooleanElement:
          defaultValueBooleanElement ?? this.defaultValueBooleanElement,
      defaultValueCanonical:
          defaultValueCanonical ?? this.defaultValueCanonical,
      defaultValueCanonicalElement:
          defaultValueCanonicalElement ?? this.defaultValueCanonicalElement,
      defaultValueCode: defaultValueCode ?? this.defaultValueCode,
      defaultValueCodeElement:
          defaultValueCodeElement ?? this.defaultValueCodeElement,
      defaultValueDate: defaultValueDate ?? this.defaultValueDate,
      defaultValueDateElement:
          defaultValueDateElement ?? this.defaultValueDateElement,
      defaultValueDateTime: defaultValueDateTime ?? this.defaultValueDateTime,
      defaultValueDateTimeElement:
          defaultValueDateTimeElement ?? this.defaultValueDateTimeElement,
      defaultValueDecimal: defaultValueDecimal ?? this.defaultValueDecimal,
      defaultValueDecimalElement:
          defaultValueDecimalElement ?? this.defaultValueDecimalElement,
      defaultValueId: defaultValueId ?? this.defaultValueId,
      defaultValueIdElement:
          defaultValueIdElement ?? this.defaultValueIdElement,
      defaultValueInstant: defaultValueInstant ?? this.defaultValueInstant,
      defaultValueInstantElement:
          defaultValueInstantElement ?? this.defaultValueInstantElement,
      defaultValueInteger: defaultValueInteger ?? this.defaultValueInteger,
      defaultValueIntegerElement:
          defaultValueIntegerElement ?? this.defaultValueIntegerElement,
      defaultValueMarkdown: defaultValueMarkdown ?? this.defaultValueMarkdown,
      defaultValueMarkdownElement:
          defaultValueMarkdownElement ?? this.defaultValueMarkdownElement,
      defaultValueOid: defaultValueOid ?? this.defaultValueOid,
      defaultValueOidElement:
          defaultValueOidElement ?? this.defaultValueOidElement,
      defaultValuePositiveInt:
          defaultValuePositiveInt ?? this.defaultValuePositiveInt,
      defaultValuePositiveIntElement:
          defaultValuePositiveIntElement ?? this.defaultValuePositiveIntElement,
      defaultValueString: defaultValueString ?? this.defaultValueString,
      defaultValueStringElement:
          defaultValueStringElement ?? this.defaultValueStringElement,
      defaultValueTime: defaultValueTime ?? this.defaultValueTime,
      defaultValueTimeElement:
          defaultValueTimeElement ?? this.defaultValueTimeElement,
      defaultValueUnsignedInt:
          defaultValueUnsignedInt ?? this.defaultValueUnsignedInt,
      defaultValueUnsignedIntElement:
          defaultValueUnsignedIntElement ?? this.defaultValueUnsignedIntElement,
      defaultValueUri: defaultValueUri ?? this.defaultValueUri,
      defaultValueUriElement:
          defaultValueUriElement ?? this.defaultValueUriElement,
      defaultValueUrl: defaultValueUrl ?? this.defaultValueUrl,
      defaultValueUrlElement:
          defaultValueUrlElement ?? this.defaultValueUrlElement,
      defaultValueUuid: defaultValueUuid ?? this.defaultValueUuid,
      defaultValueUuidElement:
          defaultValueUuidElement ?? this.defaultValueUuidElement,
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
      elementElement: elementElement ?? this.elementElement,
      listMode: listMode ?? this.listMode,
      listModeElement: listModeElement ?? this.listModeElement,
      variable: variable ?? this.variable,
      variableElement: variableElement ?? this.variableElement,
      condition: condition ?? this.condition,
      conditionElement: conditionElement ?? this.conditionElement,
      check: check ?? this.check,
      checkElement: checkElement ?? this.checkElement,
      logMessage: logMessage ?? this.logMessage,
      logMessageElement: logMessageElement ?? this.logMessageElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory StructureMapSource.fromYaml(dynamic yaml) => yaml is String
      ? StructureMapSource.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? StructureMapSource.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'StructureMapSource cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory StructureMapSource.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return StructureMapSource.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [StructureMapTarget] /// Content to create because of this mapping rule.
@JsonSerializable()
class StructureMapTarget extends BackboneElement {
  StructureMapTarget({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.context,
    this.contextElement,
    this.contextType,
    this.contextTypeElement,
    this.element,
    this.elementElement,
    this.variable,
    this.variableElement,
    this.listMode,
    this.listModeElement,
    this.listRuleId,
    this.listRuleIdElement,
    this.transform,
    this.transformElement,
    this.parameter,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'StructureMapTarget');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [context] /// Type or variable this rule applies to.
  @JsonKey(name: 'context')
  final FhirId? context;
  @JsonKey(name: '_context')
  final Element? contextElement;

  /// [contextType] /// How to interpret the context.
  @JsonKey(name: 'contextType')
  final StructureMapContextType? contextType;
  @JsonKey(name: '_contextType')
  final Element? contextTypeElement;

  /// [element] /// Field to create in the context.
  @JsonKey(name: 'element')
  final FhirString? element;
  @JsonKey(name: '_element')
  final Element? elementElement;

  /// [variable] /// Named context for field, if desired, and a field is specified.
  @JsonKey(name: 'variable')
  final FhirId? variable;
  @JsonKey(name: '_variable')
  final Element? variableElement;

  /// [listMode] /// If field is a list, how to manage the list.
  @JsonKey(name: 'listMode')
  final List<StructureMapTargetListMode>? listMode;
  @JsonKey(name: '_listMode')
  final List<Element>? listModeElement;

  /// [listRuleId] /// Internal rule reference for shared list items.
  @JsonKey(name: 'listRuleId')
  final FhirId? listRuleId;
  @JsonKey(name: '_listRuleId')
  final Element? listRuleIdElement;

  /// [transform] /// How the data is copied / created.
  @JsonKey(name: 'transform')
  final StructureMapTransform? transform;
  @JsonKey(name: '_transform')
  final Element? transformElement;

  /// [parameter] /// Parameters to the transform.
  @JsonKey(name: 'parameter')
  final List<StructureMapParameter>? parameter;
  factory StructureMapTarget.fromJson(Map<String, dynamic> json) =>
      _$StructureMapTargetFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StructureMapTargetToJson(this);

  @override
  StructureMapTarget clone() => throw UnimplementedError();
  @override
  StructureMapTarget copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? context,
    Element? contextElement,
    StructureMapContextType? contextType,
    Element? contextTypeElement,
    FhirString? element,
    Element? elementElement,
    FhirId? variable,
    Element? variableElement,
    List<StructureMapTargetListMode>? listMode,
    List<Element>? listModeElement,
    FhirId? listRuleId,
    Element? listRuleIdElement,
    StructureMapTransform? transform,
    Element? transformElement,
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
      contextElement: contextElement ?? this.contextElement,
      contextType: contextType ?? this.contextType,
      contextTypeElement: contextTypeElement ?? this.contextTypeElement,
      element: element ?? this.element,
      elementElement: elementElement ?? this.elementElement,
      variable: variable ?? this.variable,
      variableElement: variableElement ?? this.variableElement,
      listMode: listMode ?? this.listMode,
      listModeElement: listModeElement ?? this.listModeElement,
      listRuleId: listRuleId ?? this.listRuleId,
      listRuleIdElement: listRuleIdElement ?? this.listRuleIdElement,
      transform: transform ?? this.transform,
      transformElement: transformElement ?? this.transformElement,
      parameter: parameter ?? this.parameter,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory StructureMapTarget.fromYaml(dynamic yaml) => yaml is String
      ? StructureMapTarget.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? StructureMapTarget.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'StructureMapTarget cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory StructureMapTarget.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return StructureMapTarget.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [StructureMapParameter] /// Parameters to the transform.
@JsonSerializable()
class StructureMapParameter extends BackboneElement {
  StructureMapParameter({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.valueId,
    this.valueIdElement,
    required this.valueString,
    this.valueStringElement,
    required this.valueBoolean,
    this.valueBooleanElement,
    required this.valueInteger,
    this.valueIntegerElement,
    required this.valueDecimal,
    this.valueDecimalElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'StructureMapParameter');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [valueId] /// Parameter value - variable or literal.
  @JsonKey(name: 'valueId')
  final FhirId valueId;
  @JsonKey(name: '_valueId')
  final Element? valueIdElement;

  /// [valueString] /// Parameter value - variable or literal.
  @JsonKey(name: 'valueString')
  final FhirString valueString;
  @JsonKey(name: '_valueString')
  final Element? valueStringElement;

  /// [valueBoolean] /// Parameter value - variable or literal.
  @JsonKey(name: 'valueBoolean')
  final FhirBoolean valueBoolean;
  @JsonKey(name: '_valueBoolean')
  final Element? valueBooleanElement;

  /// [valueInteger] /// Parameter value - variable or literal.
  @JsonKey(name: 'valueInteger')
  final FhirInteger valueInteger;
  @JsonKey(name: '_valueInteger')
  final Element? valueIntegerElement;

  /// [valueDecimal] /// Parameter value - variable or literal.
  @JsonKey(name: 'valueDecimal')
  final FhirDecimal valueDecimal;
  @JsonKey(name: '_valueDecimal')
  final Element? valueDecimalElement;
  factory StructureMapParameter.fromJson(Map<String, dynamic> json) =>
      _$StructureMapParameterFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StructureMapParameterToJson(this);

  @override
  StructureMapParameter clone() => throw UnimplementedError();
  @override
  StructureMapParameter copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? valueId,
    Element? valueIdElement,
    FhirString? valueString,
    Element? valueStringElement,
    FhirBoolean? valueBoolean,
    Element? valueBooleanElement,
    FhirInteger? valueInteger,
    Element? valueIntegerElement,
    FhirDecimal? valueDecimal,
    Element? valueDecimalElement,
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
      valueIdElement: valueIdElement ?? this.valueIdElement,
      valueString: valueString ?? this.valueString,
      valueStringElement: valueStringElement ?? this.valueStringElement,
      valueBoolean: valueBoolean ?? this.valueBoolean,
      valueBooleanElement: valueBooleanElement ?? this.valueBooleanElement,
      valueInteger: valueInteger ?? this.valueInteger,
      valueIntegerElement: valueIntegerElement ?? this.valueIntegerElement,
      valueDecimal: valueDecimal ?? this.valueDecimal,
      valueDecimalElement: valueDecimalElement ?? this.valueDecimalElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory StructureMapParameter.fromYaml(dynamic yaml) => yaml is String
      ? StructureMapParameter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? StructureMapParameter.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'StructureMapParameter cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory StructureMapParameter.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return StructureMapParameter.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [StructureMapDependent] /// Which other rules to apply in the context of this rule.
@JsonSerializable()
class StructureMapDependent extends BackboneElement {
  StructureMapDependent({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.nameElement,
    required this.variable,
    this.variableElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'StructureMapDependent');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [name] /// Name of a rule or group to apply.
  @JsonKey(name: 'name')
  final FhirId name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [variable] /// Variable to pass to the rule or group.
  @JsonKey(name: 'variable')
  final List<FhirString> variable;
  @JsonKey(name: '_variable')
  final List<Element>? variableElement;
  factory StructureMapDependent.fromJson(Map<String, dynamic> json) =>
      _$StructureMapDependentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StructureMapDependentToJson(this);

  @override
  StructureMapDependent clone() => throw UnimplementedError();
  @override
  StructureMapDependent copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? name,
    Element? nameElement,
    List<FhirString>? variable,
    List<Element>? variableElement,
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
      nameElement: nameElement ?? this.nameElement,
      variable: variable ?? this.variable,
      variableElement: variableElement ?? this.variableElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory StructureMapDependent.fromYaml(dynamic yaml) => yaml is String
      ? StructureMapDependent.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? StructureMapDependent.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'StructureMapDependent cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory StructureMapDependent.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return StructureMapDependent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
