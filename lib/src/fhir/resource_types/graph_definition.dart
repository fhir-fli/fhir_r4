import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [GraphDefinition] /// A formal computable definition of a graph of resources - that is, a
/// coherent set of resources that form a graph by following references. The
/// Graph Definition resource defines a set and makes rules about the set.
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
  }) : super(resourceType: R4ResourceType.GraphDefinition);

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
  final FhirUri? url;
  final Element? urlElement;

  /// [version] /// The identifier that is used to identify this version of the graph
  /// definition when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the graph definition author
  /// and is not expected to be globally unique. For example, it might be a
  /// timestamp (e.g. yyyymmdd) if a managed version is not available. There is
  /// also no expectation that versions can be placed in a lexicographical
  /// sequence.
  final FhirString? version;
  final Element? versionElement;

  /// [name] /// A natural language name identifying the graph definition. This name should
  /// be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString name;
  final Element? nameElement;

  /// [status] /// The status of this graph definition. Enables tracking the life-cycle of the
  /// content.
  final FhirCode status;
  final Element? statusElement;

  /// [experimental] /// A Boolean value to indicate that this graph definition is authored for
  /// testing purposes (or education/evaluation/marketing) and is not intended to
  /// be used for genuine usage.
  final FhirBoolean? experimental;
  final Element? experimentalElement;

  /// [date] /// The date (and optionally time) when the graph definition was published. The
  /// date must change when the business version changes and it must change if
  /// the status code changes. In addition, it should change when the substantive
  /// content of the graph definition changes.
  final FhirDateTime? date;
  final Element? dateElement;

  /// [publisher] /// The name of the organization or individual that published the graph
  /// definition.
  final FhirString? publisher;
  final Element? publisherElement;

  /// [contact] /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [description] /// A free text natural language description of the graph definition from a
  /// consumer's perspective.
  final FhirMarkdown? description;
  final Element? descriptionElement;

  /// [useContext] /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories (gender,
  /// age, ...) or may be references to specific programs (insurance plans,
  /// studies, ...) and may be used to assist with indexing and searching for
  /// appropriate graph definition instances.
  final List<UsageContext>? useContext;

  /// [jurisdiction] /// A legal or geographic region in which the graph definition is intended to
  /// be used.
  final List<CodeableConcept>? jurisdiction;

  /// [purpose] /// Explanation of why this graph definition is needed and why it has been
  /// designed as it has.
  final FhirMarkdown? purpose;
  final Element? purposeElement;

  /// [start] /// The type of FHIR resource at which instances of this graph start.
  final FhirCode start;
  final Element? startElement;

  /// [profile] /// The profile that describes the use of the base resource.
  final FhirCanonical? profile;
  final Element? profileElement;

  /// [link] /// Links this graph makes rules about.
  final List<GraphDefinitionLink>? link;
  @override
  GraphDefinition clone() => throw UnimplementedError();
  GraphDefinition copy({
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [GraphDefinitionLink] /// Links this graph makes rules about.
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
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [path] /// A FHIR expression that identifies one of FHIR References to other
  /// resources.
  final FhirString? path;
  final Element? pathElement;

  /// [sliceName] /// Which slice (if profiled).
  final FhirString? sliceName;
  final Element? sliceNameElement;

  /// [min] /// Minimum occurrences for this link.
  final FhirInteger? min;
  final Element? minElement;

  /// [max] /// Maximum occurrences for this link.
  final FhirString? max;
  final Element? maxElement;

  /// [description] /// Information about why this link is of interest in this graph definition.
  final FhirString? description;
  final Element? descriptionElement;

  /// [target] /// Potential target for the link.
  final List<GraphDefinitionTarget>? target;
  @override
  GraphDefinitionLink clone() => throw UnimplementedError();
  GraphDefinitionLink copy({
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [GraphDefinitionTarget] /// Potential target for the link.
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
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Type of resource this link refers to.
  final FhirCode type;
  final Element? typeElement;

  /// [params] /// A set of parameters to look up.
  final FhirString? params;
  final Element? paramsElement;

  /// [profile] /// Profile for the target resource.
  final FhirCanonical? profile;
  final Element? profileElement;

  /// [compartment] /// Compartment Consistency Rules.
  final List<GraphDefinitionCompartment>? compartment;

  /// [link] /// Additional links from target resource.
  final List<GraphDefinitionLink>? link;
  @override
  GraphDefinitionTarget clone() => throw UnimplementedError();
  GraphDefinitionTarget copy({
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [GraphDefinitionCompartment] /// Compartment Consistency Rules.
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
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [use] /// Defines how the compartment rule is used - whether it it is used to test
  /// whether resources are subject to the rule, or whether it is a rule that
  /// must be followed.
  final FhirCode use;
  final Element? useElement;

  /// [code] /// Identifies the compartment.
  final FhirCode code;
  final Element? codeElement;

  /// [rule] /// identical | matching | different | no-rule | custom.
  final FhirCode rule;
  final Element? ruleElement;

  /// [expression] /// Custom rule, as a FHIRPath expression.
  final FhirString? expression;
  final Element? expressionElement;

  /// [description] /// Documentation for FHIRPath expression.
  final FhirString? description;
  final Element? descriptionElement;
  @override
  GraphDefinitionCompartment clone() => throw UnimplementedError();
  GraphDefinitionCompartment copy({
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
    );
  }
}
