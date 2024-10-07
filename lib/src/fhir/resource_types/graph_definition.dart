import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'graph_definition.g.dart';

/// [GraphDefinition] /// A formal computable definition of a graph of resources - that is, a
/// coherent set of resources that form a graph by following references. The
/// Graph Definition resource defines a set and makes rules about the set.
@JsonSerializable()
class GraphDefinition extends DomainResource {
  GraphDefinition({
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
    this.url,
    this.urlElement,
    this.version,
    this.versionElement,
    required this.name,
    this.nameElement,
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
    required this.start,
    this.startElement,
    this.profile,
    this.profileElement,
    this.link,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
            resourceType: R4ResourceType.GraphDefinition,
            fhirType: 'GraphDefinition');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [url] /// An absolute URI that is used to identify this graph definition when it is
  /// referenced in a specification, model, design or an instance; also called
  /// its canonical identifier. This SHOULD be globally unique and SHOULD be a
  /// literal address at which at which an authoritative instance of this graph
  /// definition is (or will be) published. This URL can be the target of a
  /// canonical reference. It SHALL remain the same when the graph definition is
  /// stored on different servers.
  @JsonKey(name: 'url')
  final FhirUri? url;
  @JsonKey(name: '_url')
  final Element? urlElement;

  /// [version] /// The identifier that is used to identify this version of the graph
  /// definition when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the graph definition author
  /// and is not expected to be globally unique. For example, it might be a
  /// timestamp (e.g. yyyymmdd) if a managed version is not available. There is
  /// also no expectation that versions can be placed in a lexicographical
  /// sequence.
  @JsonKey(name: 'version')
  final FhirString? version;
  @JsonKey(name: '_version')
  final Element? versionElement;

  /// [name] /// A natural language name identifying the graph definition. This name should
  /// be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  @JsonKey(name: 'name')
  final FhirString name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [status] /// The status of this graph definition. Enables tracking the life-cycle of the
  /// content.
  @JsonKey(name: 'status')
  final FhirCode status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [experimental] /// A Boolean value to indicate that this graph definition is authored for
  /// testing purposes (or education/evaluation/marketing) and is not intended to
  /// be used for genuine usage.
  @JsonKey(name: 'experimental')
  final FhirBoolean? experimental;
  @JsonKey(name: '_experimental')
  final Element? experimentalElement;

  /// [date] /// The date (and optionally time) when the graph definition was published. The
  /// date must change when the business version changes and it must change if
  /// the status code changes. In addition, it should change when the substantive
  /// content of the graph definition changes.
  @JsonKey(name: 'date')
  final FhirDateTime? date;
  @JsonKey(name: '_date')
  final Element? dateElement;

  /// [publisher] /// The name of the organization or individual that published the graph
  /// definition.
  @JsonKey(name: 'publisher')
  final FhirString? publisher;
  @JsonKey(name: '_publisher')
  final Element? publisherElement;

  /// [contact] /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  @JsonKey(name: 'contact')
  final List<ContactDetail>? contact;

  /// [description] /// A free text natural language description of the graph definition from a
  /// consumer's perspective.
  @JsonKey(name: 'description')
  final FhirMarkdown? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [useContext] /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories (gender,
  /// age, ...) or may be references to specific programs (insurance plans,
  /// studies, ...) and may be used to assist with indexing and searching for
  /// appropriate graph definition instances.
  @JsonKey(name: 'useContext')
  final List<UsageContext>? useContext;

  /// [jurisdiction] /// A legal or geographic region in which the graph definition is intended to
  /// be used.
  @JsonKey(name: 'jurisdiction')
  final List<CodeableConcept>? jurisdiction;

  /// [purpose] /// Explanation of why this graph definition is needed and why it has been
  /// designed as it has.
  @JsonKey(name: 'purpose')
  final FhirMarkdown? purpose;
  @JsonKey(name: '_purpose')
  final Element? purposeElement;

  /// [start] /// The type of FHIR resource at which instances of this graph start.
  @JsonKey(name: 'start')
  final FhirCode start;
  @JsonKey(name: '_start')
  final Element? startElement;

  /// [profile] /// The profile that describes the use of the base resource.
  @JsonKey(name: 'profile')
  final FhirCanonical? profile;
  @JsonKey(name: '_profile')
  final Element? profileElement;

  /// [link] /// Links this graph makes rules about.
  @JsonKey(name: 'link')
  final List<GraphDefinitionLink>? link;
  factory GraphDefinition.fromJson(Map<String, dynamic> json) =>
      _$GraphDefinitionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$GraphDefinitionToJson(this);

  @override
  GraphDefinition clone() => throw UnimplementedError();
  @override
  GraphDefinition copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? url,
    Element? urlElement,
    FhirString? version,
    Element? versionElement,
    FhirString? name,
    Element? nameElement,
    FhirCode? status,
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
    FhirCode? start,
    Element? startElement,
    FhirCanonical? profile,
    Element? profileElement,
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
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      url: url ?? this.url,
      urlElement: urlElement ?? this.urlElement,
      version: version ?? this.version,
      versionElement: versionElement ?? this.versionElement,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
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
      start: start ?? this.start,
      startElement: startElement ?? this.startElement,
      profile: profile ?? this.profile,
      profileElement: profileElement ?? this.profileElement,
      link: link ?? this.link,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory GraphDefinition.fromYaml(dynamic yaml) => yaml is String
      ? GraphDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? GraphDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'GraphDefinition cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory GraphDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return GraphDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [GraphDefinitionLink] /// Links this graph makes rules about.
@JsonSerializable()
class GraphDefinitionLink extends BackboneElement {
  GraphDefinitionLink({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.path,
    this.pathElement,
    this.sliceName,
    this.sliceNameElement,
    this.min,
    this.minElement,
    this.max,
    this.maxElement,
    this.description,
    this.descriptionElement,
    this.target,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'GraphDefinitionLink');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [path] /// A FHIR expression that identifies one of FHIR References to other
  /// resources.
  @JsonKey(name: 'path')
  final FhirString? path;
  @JsonKey(name: '_path')
  final Element? pathElement;

  /// [sliceName] /// Which slice (if profiled).
  @JsonKey(name: 'sliceName')
  final FhirString? sliceName;
  @JsonKey(name: '_sliceName')
  final Element? sliceNameElement;

  /// [min] /// Minimum occurrences for this link.
  @JsonKey(name: 'min')
  final FhirInteger? min;
  @JsonKey(name: '_min')
  final Element? minElement;

  /// [max] /// Maximum occurrences for this link.
  @JsonKey(name: 'max')
  final FhirString? max;
  @JsonKey(name: '_max')
  final Element? maxElement;

  /// [description] /// Information about why this link is of interest in this graph definition.
  @JsonKey(name: 'description')
  final FhirString? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [target] /// Potential target for the link.
  @JsonKey(name: 'target')
  final List<GraphDefinitionTarget>? target;
  factory GraphDefinitionLink.fromJson(Map<String, dynamic> json) =>
      _$GraphDefinitionLinkFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$GraphDefinitionLinkToJson(this);

  @override
  GraphDefinitionLink clone() => throw UnimplementedError();
  @override
  GraphDefinitionLink copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? path,
    Element? pathElement,
    FhirString? sliceName,
    Element? sliceNameElement,
    FhirInteger? min,
    Element? minElement,
    FhirString? max,
    Element? maxElement,
    FhirString? description,
    Element? descriptionElement,
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
      pathElement: pathElement ?? this.pathElement,
      sliceName: sliceName ?? this.sliceName,
      sliceNameElement: sliceNameElement ?? this.sliceNameElement,
      min: min ?? this.min,
      minElement: minElement ?? this.minElement,
      max: max ?? this.max,
      maxElement: maxElement ?? this.maxElement,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      target: target ?? this.target,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory GraphDefinitionLink.fromYaml(dynamic yaml) => yaml is String
      ? GraphDefinitionLink.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? GraphDefinitionLink.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'GraphDefinitionLink cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory GraphDefinitionLink.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return GraphDefinitionLink.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [GraphDefinitionTarget] /// Potential target for the link.
@JsonSerializable()
class GraphDefinitionTarget extends BackboneElement {
  GraphDefinitionTarget({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.typeElement,
    this.params,
    this.paramsElement,
    this.profile,
    this.profileElement,
    this.compartment,
    this.link,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'GraphDefinitionTarget');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Type of resource this link refers to.
  @JsonKey(name: 'type')
  final FhirCode type;
  @JsonKey(name: '_type')
  final Element? typeElement;

  /// [params] /// A set of parameters to look up.
  @JsonKey(name: 'params')
  final FhirString? params;
  @JsonKey(name: '_params')
  final Element? paramsElement;

  /// [profile] /// Profile for the target resource.
  @JsonKey(name: 'profile')
  final FhirCanonical? profile;
  @JsonKey(name: '_profile')
  final Element? profileElement;

  /// [compartment] /// Compartment Consistency Rules.
  @JsonKey(name: 'compartment')
  final List<GraphDefinitionCompartment>? compartment;

  /// [link] /// Additional links from target resource.
  @JsonKey(name: 'link')
  final List<GraphDefinitionLink>? link;
  factory GraphDefinitionTarget.fromJson(Map<String, dynamic> json) =>
      _$GraphDefinitionTargetFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$GraphDefinitionTargetToJson(this);

  @override
  GraphDefinitionTarget clone() => throw UnimplementedError();
  @override
  GraphDefinitionTarget copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? type,
    Element? typeElement,
    FhirString? params,
    Element? paramsElement,
    FhirCanonical? profile,
    Element? profileElement,
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
      typeElement: typeElement ?? this.typeElement,
      params: params ?? this.params,
      paramsElement: paramsElement ?? this.paramsElement,
      profile: profile ?? this.profile,
      profileElement: profileElement ?? this.profileElement,
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

  factory GraphDefinitionTarget.fromYaml(dynamic yaml) => yaml is String
      ? GraphDefinitionTarget.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? GraphDefinitionTarget.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'GraphDefinitionTarget cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory GraphDefinitionTarget.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return GraphDefinitionTarget.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [GraphDefinitionCompartment] /// Compartment Consistency Rules.
@JsonSerializable()
class GraphDefinitionCompartment extends BackboneElement {
  GraphDefinitionCompartment({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.use,
    this.useElement,
    required this.code,
    this.codeElement,
    required this.rule,
    this.ruleElement,
    this.expression,
    this.expressionElement,
    this.description,
    this.descriptionElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'GraphDefinitionCompartment');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [use] /// Defines how the compartment rule is used - whether it it is used to test
  /// whether resources are subject to the rule, or whether it is a rule that
  /// must be followed.
  @JsonKey(name: 'use')
  final FhirCode use;
  @JsonKey(name: '_use')
  final Element? useElement;

  /// [code] /// Identifies the compartment.
  @JsonKey(name: 'code')
  final FhirCode code;
  @JsonKey(name: '_code')
  final Element? codeElement;

  /// [rule] /// identical | matching | different | no-rule | custom.
  @JsonKey(name: 'rule')
  final FhirCode rule;
  @JsonKey(name: '_rule')
  final Element? ruleElement;

  /// [expression] /// Custom rule, as a FHIRPath expression.
  @JsonKey(name: 'expression')
  final FhirString? expression;
  @JsonKey(name: '_expression')
  final Element? expressionElement;

  /// [description] /// Documentation for FHIRPath expression.
  @JsonKey(name: 'description')
  final FhirString? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;
  factory GraphDefinitionCompartment.fromJson(Map<String, dynamic> json) =>
      _$GraphDefinitionCompartmentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$GraphDefinitionCompartmentToJson(this);

  @override
  GraphDefinitionCompartment clone() => throw UnimplementedError();
  @override
  GraphDefinitionCompartment copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? use,
    Element? useElement,
    FhirCode? code,
    Element? codeElement,
    FhirCode? rule,
    Element? ruleElement,
    FhirString? expression,
    Element? expressionElement,
    FhirString? description,
    Element? descriptionElement,
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
      useElement: useElement ?? this.useElement,
      code: code ?? this.code,
      codeElement: codeElement ?? this.codeElement,
      rule: rule ?? this.rule,
      ruleElement: ruleElement ?? this.ruleElement,
      expression: expression ?? this.expression,
      expressionElement: expressionElement ?? this.expressionElement,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory GraphDefinitionCompartment.fromYaml(dynamic yaml) => yaml is String
      ? GraphDefinitionCompartment.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? GraphDefinitionCompartment.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'GraphDefinitionCompartment cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory GraphDefinitionCompartment.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return GraphDefinitionCompartment.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
