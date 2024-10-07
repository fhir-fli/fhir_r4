import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [OperationDefinition] /// A formal computable definition of an operation (on the RESTful interface)
/// or a named query (using the search interaction).
class OperationDefinition extends DomainResource {
  OperationDefinition({
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
    this.title,
    this.titleElement,
    required this.status,
    this.statusElement,
    required this.kind,
    this.kindElement,
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
    this.affectsState,
    this.affectsStateElement,
    required this.code,
    this.codeElement,
    this.comment,
    this.commentElement,
    this.base,
    this.baseElement,
    this.resource,
    this.resourceElement,
    required this.system,
    this.systemElement,
    required this.type,
    this.typeElement,
    required this.instance,
    this.instanceElement,
    this.inputProfile,
    this.inputProfileElement,
    this.outputProfile,
    this.outputProfileElement,
    this.parameter,
    this.overload,
  }) : super(resourceType: R4ResourceType.OperationDefinition);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [url] /// An absolute URI that is used to identify this operation definition when it
  /// is referenced in a specification, model, design or an instance; also called
  /// its canonical identifier. This SHOULD be globally unique and SHOULD be a
  /// literal address at which at which an authoritative instance of this
  /// operation definition is (or will be) published. This URL can be the target
  /// of a canonical reference. It SHALL remain the same when the operation
  /// definition is stored on different servers.
  final FhirUri? url;
  final Element? urlElement;

  /// [version] /// The identifier that is used to identify this version of the operation
  /// definition when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the operation definition
  /// author and is not expected to be globally unique. For example, it might be
  /// a timestamp (e.g. yyyymmdd) if a managed version is not available. There is
  /// also no expectation that versions can be placed in a lexicographical
  /// sequence.
  final FhirString? version;
  final Element? versionElement;

  /// [name] /// A natural language name identifying the operation definition. This name
  /// should be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString name;
  final Element? nameElement;

  /// [title] /// A short, descriptive, user-friendly title for the operation definition.
  final FhirString? title;
  final Element? titleElement;

  /// [status] /// The status of this operation definition. Enables tracking the life-cycle of
  /// the content.
  final FhirCode status;
  final Element? statusElement;

  /// [kind] /// Whether this is an operation or a named query.
  final FhirCode kind;
  final Element? kindElement;

  /// [experimental] /// A Boolean value to indicate that this operation definition is authored for
  /// testing purposes (or education/evaluation/marketing) and is not intended to
  /// be used for genuine usage.
  final FhirBoolean? experimental;
  final Element? experimentalElement;

  /// [date] /// The date (and optionally time) when the operation definition was published.
  /// The date must change when the business version changes and it must change
  /// if the status code changes. In addition, it should change when the
  /// substantive content of the operation definition changes.
  final FhirDateTime? date;
  final Element? dateElement;

  /// [publisher] /// The name of the organization or individual that published the operation
  /// definition.
  final FhirString? publisher;
  final Element? publisherElement;

  /// [contact] /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [description] /// A free text natural language description of the operation definition from a
  /// consumer's perspective.
  final FhirMarkdown? description;
  final Element? descriptionElement;

  /// [useContext] /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories (gender,
  /// age, ...) or may be references to specific programs (insurance plans,
  /// studies, ...) and may be used to assist with indexing and searching for
  /// appropriate operation definition instances.
  final List<UsageContext>? useContext;

  /// [jurisdiction] /// A legal or geographic region in which the operation definition is intended
  /// to be used.
  final List<CodeableConcept>? jurisdiction;

  /// [purpose] /// Explanation of why this operation definition is needed and why it has been
  /// designed as it has.
  final FhirMarkdown? purpose;
  final Element? purposeElement;

  /// [affectsState] /// Whether the operation affects state. Side effects such as producing audit
  /// trail entries do not count as 'affecting state'.
  final FhirBoolean? affectsState;
  final Element? affectsStateElement;

  /// [code] /// The name used to invoke the operation.
  final FhirCode code;
  final Element? codeElement;

  /// [comment] /// Additional information about how to use this operation or named query.
  final FhirMarkdown? comment;
  final Element? commentElement;

  /// [base] /// Indicates that this operation definition is a constraining profile on the
  /// base.
  final FhirCanonical? base;
  final Element? baseElement;

  /// [resource] /// The types on which this operation can be executed.
  final List<FhirCode>? resource;
  final List<Element>? resourceElement;

  /// [system] /// Indicates whether this operation or named query can be invoked at the
  /// system level (e.g. without needing to choose a resource type for the
  /// context).
  final FhirBoolean system;
  final Element? systemElement;

  /// [type] /// Indicates whether this operation or named query can be invoked at the
  /// resource type level for any given resource type level (e.g. without needing
  /// to choose a specific resource id for the context).
  final FhirBoolean type;
  final Element? typeElement;

  /// [instance] /// Indicates whether this operation can be invoked on a particular instance of
  /// one of the given types.
  final FhirBoolean instance;
  final Element? instanceElement;

  /// [inputProfile] /// Additional validation information for the in parameters - a single profile
  /// that covers all the parameters. The profile is a constraint on the
  /// parameters resource as a whole.
  final FhirCanonical? inputProfile;
  final Element? inputProfileElement;

  /// [outputProfile] /// Additional validation information for the out parameters - a single profile
  /// that covers all the parameters. The profile is a constraint on the
  /// parameters resource.
  final FhirCanonical? outputProfile;
  final Element? outputProfileElement;

  /// [parameter] /// The parameters for the operation/query.
  final List<OperationDefinitionParameter>? parameter;

  /// [overload] /// Defines an appropriate combination of parameters to use when invoking this
  /// operation, to help code generators when generating overloaded parameter
  /// sets for this operation.
  final List<OperationDefinitionOverload>? overload;
  @override
  OperationDefinition clone() => throw UnimplementedError();
  OperationDefinition copy({
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
    FhirString? title,
    Element? titleElement,
    FhirCode? status,
    Element? statusElement,
    FhirCode? kind,
    Element? kindElement,
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
    FhirBoolean? affectsState,
    Element? affectsStateElement,
    FhirCode? code,
    Element? codeElement,
    FhirMarkdown? comment,
    Element? commentElement,
    FhirCanonical? base,
    Element? baseElement,
    List<FhirCode>? resource,
    List<Element>? resourceElement,
    FhirBoolean? system,
    Element? systemElement,
    FhirBoolean? type,
    Element? typeElement,
    FhirBoolean? instance,
    Element? instanceElement,
    FhirCanonical? inputProfile,
    Element? inputProfileElement,
    FhirCanonical? outputProfile,
    Element? outputProfileElement,
    List<OperationDefinitionParameter>? parameter,
    List<OperationDefinitionOverload>? overload,
  }) {
    return OperationDefinition(
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
      title: title ?? this.title,
      titleElement: titleElement ?? this.titleElement,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      kind: kind ?? this.kind,
      kindElement: kindElement ?? this.kindElement,
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
      affectsState: affectsState ?? this.affectsState,
      affectsStateElement: affectsStateElement ?? this.affectsStateElement,
      code: code ?? this.code,
      codeElement: codeElement ?? this.codeElement,
      comment: comment ?? this.comment,
      commentElement: commentElement ?? this.commentElement,
      base: base ?? this.base,
      baseElement: baseElement ?? this.baseElement,
      resource: resource ?? this.resource,
      resourceElement: resourceElement ?? this.resourceElement,
      system: system ?? this.system,
      systemElement: systemElement ?? this.systemElement,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      instance: instance ?? this.instance,
      instanceElement: instanceElement ?? this.instanceElement,
      inputProfile: inputProfile ?? this.inputProfile,
      inputProfileElement: inputProfileElement ?? this.inputProfileElement,
      outputProfile: outputProfile ?? this.outputProfile,
      outputProfileElement: outputProfileElement ?? this.outputProfileElement,
      parameter: parameter ?? this.parameter,
      overload: overload ?? this.overload,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [OperationDefinitionParameter] /// The parameters for the operation/query.
class OperationDefinitionParameter extends BackboneElement {
  OperationDefinitionParameter({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.nameElement,
    required this.use,
    this.useElement,
    required this.min,
    this.minElement,
    required this.max,
    this.maxElement,
    this.documentation,
    this.documentationElement,
    this.type,
    this.typeElement,
    this.targetProfile,
    this.targetProfileElement,
    this.searchType,
    this.searchTypeElement,
    this.binding,
    this.referencedFrom,
    this.part_,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [name] /// The name of used to identify the parameter.
  final FhirCode name;
  final Element? nameElement;

  /// [use] /// Whether this is an input or an output parameter.
  final FhirCode use;
  final Element? useElement;

  /// [min] /// The minimum number of times this parameter SHALL appear in the request or
  /// response.
  final FhirInteger min;
  final Element? minElement;

  /// [max] /// The maximum number of times this element is permitted to appear in the
  /// request or response.
  final FhirString max;
  final Element? maxElement;

  /// [documentation] /// Describes the meaning or use of this parameter.
  final FhirString? documentation;
  final Element? documentationElement;

  /// [type] /// The type for this parameter.
  final FhirCode? type;
  final Element? typeElement;

  /// [targetProfile] /// Used when the type is "Reference" or "canonical", and identifies a profile
  /// structure or implementation Guide that applies to the target of the
  /// reference this parameter refers to. If any profiles are specified, then the
  /// content must conform to at least one of them. The URL can be a local
  /// reference - to a contained StructureDefinition, or a reference to another
  /// StructureDefinition or Implementation Guide by a canonical URL. When an
  /// implementation guide is specified, the target resource SHALL conform to at
  /// least one profile defined in the implementation guide.
  final List<FhirCanonical>? targetProfile;
  final List<Element>? targetProfileElement;

  /// [searchType] /// How the parameter is understood as a search parameter. This is only used if
  /// the parameter type is 'string'.
  final FhirCode? searchType;
  final Element? searchTypeElement;

  /// [binding] /// Binds to a value set if this parameter is coded (code, Coding,
  /// CodeableConcept).
  final OperationDefinitionBinding? binding;

  /// [referencedFrom] /// Identifies other resource parameters within the operation invocation that
  /// are expected to resolve to this resource.
  final List<OperationDefinitionReferencedFrom>? referencedFrom;

  /// [part_] /// The parts of a nested Parameter.
  final List<OperationDefinitionParameter>? part_;
  @override
  OperationDefinitionParameter clone() => throw UnimplementedError();
  OperationDefinitionParameter copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? name,
    Element? nameElement,
    FhirCode? use,
    Element? useElement,
    FhirInteger? min,
    Element? minElement,
    FhirString? max,
    Element? maxElement,
    FhirString? documentation,
    Element? documentationElement,
    FhirCode? type,
    Element? typeElement,
    List<FhirCanonical>? targetProfile,
    List<Element>? targetProfileElement,
    FhirCode? searchType,
    Element? searchTypeElement,
    OperationDefinitionBinding? binding,
    List<OperationDefinitionReferencedFrom>? referencedFrom,
    List<OperationDefinitionParameter>? part_,
  }) {
    return OperationDefinitionParameter(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      use: use ?? this.use,
      useElement: useElement ?? this.useElement,
      min: min ?? this.min,
      minElement: minElement ?? this.minElement,
      max: max ?? this.max,
      maxElement: maxElement ?? this.maxElement,
      documentation: documentation ?? this.documentation,
      documentationElement: documentationElement ?? this.documentationElement,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      targetProfile: targetProfile ?? this.targetProfile,
      targetProfileElement: targetProfileElement ?? this.targetProfileElement,
      searchType: searchType ?? this.searchType,
      searchTypeElement: searchTypeElement ?? this.searchTypeElement,
      binding: binding ?? this.binding,
      referencedFrom: referencedFrom ?? this.referencedFrom,
      part_: part_ ?? this.part_,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [OperationDefinitionBinding] /// Binds to a value set if this parameter is coded (code, Coding,
/// CodeableConcept).
class OperationDefinitionBinding extends BackboneElement {
  OperationDefinitionBinding({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.strength,
    this.strengthElement,
    required this.valueSet,
    this.valueSetElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [strength] /// Indicates the degree of conformance expectations associated with this
  /// binding - that is, the degree to which the provided value set must be
  /// adhered to in the instances.
  final FhirCode strength;
  final Element? strengthElement;

  /// [valueSet] /// Points to the value set or external definition (e.g. implicit value set)
  /// that identifies the set of codes to be used.
  final FhirCanonical valueSet;
  final Element? valueSetElement;
  @override
  OperationDefinitionBinding clone() => throw UnimplementedError();
  OperationDefinitionBinding copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? strength,
    Element? strengthElement,
    FhirCanonical? valueSet,
    Element? valueSetElement,
  }) {
    return OperationDefinitionBinding(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      strength: strength ?? this.strength,
      strengthElement: strengthElement ?? this.strengthElement,
      valueSet: valueSet ?? this.valueSet,
      valueSetElement: valueSetElement ?? this.valueSetElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [OperationDefinitionReferencedFrom] /// Identifies other resource parameters within the operation invocation that
/// are expected to resolve to this resource.
class OperationDefinitionReferencedFrom extends BackboneElement {
  OperationDefinitionReferencedFrom({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.source,
    this.sourceElement,
    this.sourceId,
    this.sourceIdElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [source] /// The name of the parameter or dot-separated path of parameter names pointing
  /// to the resource parameter that is expected to contain a reference to this
  /// resource.
  final FhirString source;
  final Element? sourceElement;

  /// [sourceId] /// The id of the element in the referencing resource that is expected to
  /// resolve to this resource.
  final FhirString? sourceId;
  final Element? sourceIdElement;
  @override
  OperationDefinitionReferencedFrom clone() => throw UnimplementedError();
  OperationDefinitionReferencedFrom copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? source,
    Element? sourceElement,
    FhirString? sourceId,
    Element? sourceIdElement,
  }) {
    return OperationDefinitionReferencedFrom(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      source: source ?? this.source,
      sourceElement: sourceElement ?? this.sourceElement,
      sourceId: sourceId ?? this.sourceId,
      sourceIdElement: sourceIdElement ?? this.sourceIdElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [OperationDefinitionOverload] /// Defines an appropriate combination of parameters to use when invoking this
/// operation, to help code generators when generating overloaded parameter
/// sets for this operation.
class OperationDefinitionOverload extends BackboneElement {
  OperationDefinitionOverload({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.parameterName,
    this.parameterNameElement,
    this.comment,
    this.commentElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [parameterName] /// Name of parameter to include in overload.
  final List<FhirString>? parameterName;
  final List<Element>? parameterNameElement;

  /// [comment] /// Comments to go on overload.
  final FhirString? comment;
  final Element? commentElement;
  @override
  OperationDefinitionOverload clone() => throw UnimplementedError();
  OperationDefinitionOverload copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<FhirString>? parameterName,
    List<Element>? parameterNameElement,
    FhirString? comment,
    Element? commentElement,
  }) {
    return OperationDefinitionOverload(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      parameterName: parameterName ?? this.parameterName,
      parameterNameElement: parameterNameElement ?? this.parameterNameElement,
      comment: comment ?? this.comment,
      commentElement: commentElement ?? this.commentElement,
    );
  }
}
