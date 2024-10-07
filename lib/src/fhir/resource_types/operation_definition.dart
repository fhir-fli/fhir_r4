import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'operation_definition.g.dart';

/// [OperationDefinition] /// A formal computable definition of an operation (on the RESTful interface)
/// or a named query (using the search interaction).
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
            resourceType: R4ResourceType.OperationDefinition,
            fhirType: 'OperationDefinition');
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
  @JsonKey(name: 'url')
  final FhirUri? url;
  @JsonKey(name: '_url')
  final Element? urlElement;

  /// [version] /// The identifier that is used to identify this version of the operation
  /// definition when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the operation definition
  /// author and is not expected to be globally unique. For example, it might be
  /// a timestamp (e.g. yyyymmdd) if a managed version is not available. There is
  /// also no expectation that versions can be placed in a lexicographical
  /// sequence.
  @JsonKey(name: 'version')
  final FhirString? version;
  @JsonKey(name: '_version')
  final Element? versionElement;

  /// [name] /// A natural language name identifying the operation definition. This name
  /// should be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  @JsonKey(name: 'name')
  final FhirString name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [title] /// A short, descriptive, user-friendly title for the operation definition.
  @JsonKey(name: 'title')
  final FhirString? title;
  @JsonKey(name: '_title')
  final Element? titleElement;

  /// [status] /// The status of this operation definition. Enables tracking the life-cycle of
  /// the content.
  @JsonKey(name: 'status')
  final FhirCode status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [kind] /// Whether this is an operation or a named query.
  @JsonKey(name: 'kind')
  final FhirCode kind;
  @JsonKey(name: '_kind')
  final Element? kindElement;

  /// [experimental] /// A Boolean value to indicate that this operation definition is authored for
  /// testing purposes (or education/evaluation/marketing) and is not intended to
  /// be used for genuine usage.
  @JsonKey(name: 'experimental')
  final FhirBoolean? experimental;
  @JsonKey(name: '_experimental')
  final Element? experimentalElement;

  /// [date] /// The date (and optionally time) when the operation definition was published.
  /// The date must change when the business version changes and it must change
  /// if the status code changes. In addition, it should change when the
  /// substantive content of the operation definition changes.
  @JsonKey(name: 'date')
  final FhirDateTime? date;
  @JsonKey(name: '_date')
  final Element? dateElement;

  /// [publisher] /// The name of the organization or individual that published the operation
  /// definition.
  @JsonKey(name: 'publisher')
  final FhirString? publisher;
  @JsonKey(name: '_publisher')
  final Element? publisherElement;

  /// [contact] /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  @JsonKey(name: 'contact')
  final List<ContactDetail>? contact;

  /// [description] /// A free text natural language description of the operation definition from a
  /// consumer's perspective.
  @JsonKey(name: 'description')
  final FhirMarkdown? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [useContext] /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories (gender,
  /// age, ...) or may be references to specific programs (insurance plans,
  /// studies, ...) and may be used to assist with indexing and searching for
  /// appropriate operation definition instances.
  @JsonKey(name: 'useContext')
  final List<UsageContext>? useContext;

  /// [jurisdiction] /// A legal or geographic region in which the operation definition is intended
  /// to be used.
  @JsonKey(name: 'jurisdiction')
  final List<CodeableConcept>? jurisdiction;

  /// [purpose] /// Explanation of why this operation definition is needed and why it has been
  /// designed as it has.
  @JsonKey(name: 'purpose')
  final FhirMarkdown? purpose;
  @JsonKey(name: '_purpose')
  final Element? purposeElement;

  /// [affectsState] /// Whether the operation affects state. Side effects such as producing audit
  /// trail entries do not count as 'affecting state'.
  @JsonKey(name: 'affectsState')
  final FhirBoolean? affectsState;
  @JsonKey(name: '_affectsState')
  final Element? affectsStateElement;

  /// [code] /// The name used to invoke the operation.
  @JsonKey(name: 'code')
  final FhirCode code;
  @JsonKey(name: '_code')
  final Element? codeElement;

  /// [comment] /// Additional information about how to use this operation or named query.
  @JsonKey(name: 'comment')
  final FhirMarkdown? comment;
  @JsonKey(name: '_comment')
  final Element? commentElement;

  /// [base] /// Indicates that this operation definition is a constraining profile on the
  /// base.
  @JsonKey(name: 'base')
  final FhirCanonical? base;
  @JsonKey(name: '_base')
  final Element? baseElement;

  /// [resource] /// The types on which this operation can be executed.
  @JsonKey(name: 'resource')
  final List<FhirCode>? resource;
  @JsonKey(name: '_resource')
  final List<Element>? resourceElement;

  /// [system] /// Indicates whether this operation or named query can be invoked at the
  /// system level (e.g. without needing to choose a resource type for the
  /// context).
  @JsonKey(name: 'system')
  final FhirBoolean system;
  @JsonKey(name: '_system')
  final Element? systemElement;

  /// [type] /// Indicates whether this operation or named query can be invoked at the
  /// resource type level for any given resource type level (e.g. without needing
  /// to choose a specific resource id for the context).
  @JsonKey(name: 'type')
  final FhirBoolean type;
  @JsonKey(name: '_type')
  final Element? typeElement;

  /// [instance] /// Indicates whether this operation can be invoked on a particular instance of
  /// one of the given types.
  @JsonKey(name: 'instance')
  final FhirBoolean instance;
  @JsonKey(name: '_instance')
  final Element? instanceElement;

  /// [inputProfile] /// Additional validation information for the in parameters - a single profile
  /// that covers all the parameters. The profile is a constraint on the
  /// parameters resource as a whole.
  @JsonKey(name: 'inputProfile')
  final FhirCanonical? inputProfile;
  @JsonKey(name: '_inputProfile')
  final Element? inputProfileElement;

  /// [outputProfile] /// Additional validation information for the out parameters - a single profile
  /// that covers all the parameters. The profile is a constraint on the
  /// parameters resource.
  @JsonKey(name: 'outputProfile')
  final FhirCanonical? outputProfile;
  @JsonKey(name: '_outputProfile')
  final Element? outputProfileElement;

  /// [parameter] /// The parameters for the operation/query.
  @JsonKey(name: 'parameter')
  final List<OperationDefinitionParameter>? parameter;

  /// [overload] /// Defines an appropriate combination of parameters to use when invoking this
  /// operation, to help code generators when generating overloaded parameter
  /// sets for this operation.
  @JsonKey(name: 'overload')
  final List<OperationDefinitionOverload>? overload;
  factory OperationDefinition.fromJson(Map<String, dynamic> json) =>
      _$OperationDefinitionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$OperationDefinitionToJson(this);

  @override
  OperationDefinition clone() => throw UnimplementedError();
  @override
  OperationDefinition copyWith({
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory OperationDefinition.fromYaml(dynamic yaml) => yaml is String
      ? OperationDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? OperationDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'OperationDefinition cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory OperationDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return OperationDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [OperationDefinitionParameter] /// The parameters for the operation/query.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'OperationDefinitionParameter');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [name] /// The name of used to identify the parameter.
  @JsonKey(name: 'name')
  final FhirCode name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [use] /// Whether this is an input or an output parameter.
  @JsonKey(name: 'use')
  final FhirCode use;
  @JsonKey(name: '_use')
  final Element? useElement;

  /// [min] /// The minimum number of times this parameter SHALL appear in the request or
  /// response.
  @JsonKey(name: 'min')
  final FhirInteger min;
  @JsonKey(name: '_min')
  final Element? minElement;

  /// [max] /// The maximum number of times this element is permitted to appear in the
  /// request or response.
  @JsonKey(name: 'max')
  final FhirString max;
  @JsonKey(name: '_max')
  final Element? maxElement;

  /// [documentation] /// Describes the meaning or use of this parameter.
  @JsonKey(name: 'documentation')
  final FhirString? documentation;
  @JsonKey(name: '_documentation')
  final Element? documentationElement;

  /// [type] /// The type for this parameter.
  @JsonKey(name: 'type')
  final FhirCode? type;
  @JsonKey(name: '_type')
  final Element? typeElement;

  /// [targetProfile] /// Used when the type is "Reference" or "canonical", and identifies a profile
  /// structure or implementation Guide that applies to the target of the
  /// reference this parameter refers to. If any profiles are specified, then the
  /// content must conform to at least one of them. The URL can be a local
  /// reference - to a contained StructureDefinition, or a reference to another
  /// StructureDefinition or Implementation Guide by a canonical URL. When an
  /// implementation guide is specified, the target resource SHALL conform to at
  /// least one profile defined in the implementation guide.
  @JsonKey(name: 'targetProfile')
  final List<FhirCanonical>? targetProfile;
  @JsonKey(name: '_targetProfile')
  final List<Element>? targetProfileElement;

  /// [searchType] /// How the parameter is understood as a search parameter. This is only used if
  /// the parameter type is 'string'.
  @JsonKey(name: 'searchType')
  final FhirCode? searchType;
  @JsonKey(name: '_searchType')
  final Element? searchTypeElement;

  /// [binding] /// Binds to a value set if this parameter is coded (code, Coding,
  /// CodeableConcept).
  @JsonKey(name: 'binding')
  final OperationDefinitionBinding? binding;

  /// [referencedFrom] /// Identifies other resource parameters within the operation invocation that
  /// are expected to resolve to this resource.
  @JsonKey(name: 'referencedFrom')
  final List<OperationDefinitionReferencedFrom>? referencedFrom;

  /// [part_] /// The parts of a nested Parameter.
  @JsonKey(name: 'part')
  final List<OperationDefinitionParameter>? part_;
  factory OperationDefinitionParameter.fromJson(Map<String, dynamic> json) =>
      _$OperationDefinitionParameterFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$OperationDefinitionParameterToJson(this);

  @override
  OperationDefinitionParameter clone() => throw UnimplementedError();
  @override
  OperationDefinitionParameter copyWith({
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory OperationDefinitionParameter.fromYaml(dynamic yaml) => yaml is String
      ? OperationDefinitionParameter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? OperationDefinitionParameter.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'OperationDefinitionParameter cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory OperationDefinitionParameter.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return OperationDefinitionParameter.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [OperationDefinitionBinding] /// Binds to a value set if this parameter is coded (code, Coding,
/// CodeableConcept).
@JsonSerializable()
class OperationDefinitionBinding extends BackboneElement {
  OperationDefinitionBinding({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.strength,
    this.strengthElement,
    required this.valueSet,
    this.valueSetElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'OperationDefinitionBinding');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [strength] /// Indicates the degree of conformance expectations associated with this
  /// binding - that is, the degree to which the provided value set must be
  /// adhered to in the instances.
  @JsonKey(name: 'strength')
  final FhirCode strength;
  @JsonKey(name: '_strength')
  final Element? strengthElement;

  /// [valueSet] /// Points to the value set or external definition (e.g. implicit value set)
  /// that identifies the set of codes to be used.
  @JsonKey(name: 'valueSet')
  final FhirCanonical valueSet;
  @JsonKey(name: '_valueSet')
  final Element? valueSetElement;
  factory OperationDefinitionBinding.fromJson(Map<String, dynamic> json) =>
      _$OperationDefinitionBindingFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$OperationDefinitionBindingToJson(this);

  @override
  OperationDefinitionBinding clone() => throw UnimplementedError();
  @override
  OperationDefinitionBinding copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? strength,
    Element? strengthElement,
    FhirCanonical? valueSet,
    Element? valueSetElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return OperationDefinitionBinding(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      strength: strength ?? this.strength,
      strengthElement: strengthElement ?? this.strengthElement,
      valueSet: valueSet ?? this.valueSet,
      valueSetElement: valueSetElement ?? this.valueSetElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory OperationDefinitionBinding.fromYaml(dynamic yaml) => yaml is String
      ? OperationDefinitionBinding.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? OperationDefinitionBinding.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'OperationDefinitionBinding cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory OperationDefinitionBinding.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return OperationDefinitionBinding.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [OperationDefinitionReferencedFrom] /// Identifies other resource parameters within the operation invocation that
/// are expected to resolve to this resource.
@JsonSerializable()
class OperationDefinitionReferencedFrom extends BackboneElement {
  OperationDefinitionReferencedFrom({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.source,
    this.sourceElement,
    this.sourceId,
    this.sourceIdElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'OperationDefinitionReferencedFrom');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [source] /// The name of the parameter or dot-separated path of parameter names pointing
  /// to the resource parameter that is expected to contain a reference to this
  /// resource.
  @JsonKey(name: 'source')
  final FhirString source;
  @JsonKey(name: '_source')
  final Element? sourceElement;

  /// [sourceId] /// The id of the element in the referencing resource that is expected to
  /// resolve to this resource.
  @JsonKey(name: 'sourceId')
  final FhirString? sourceId;
  @JsonKey(name: '_sourceId')
  final Element? sourceIdElement;
  factory OperationDefinitionReferencedFrom.fromJson(
          Map<String, dynamic> json) =>
      _$OperationDefinitionReferencedFromFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$OperationDefinitionReferencedFromToJson(this);

  @override
  OperationDefinitionReferencedFrom clone() => throw UnimplementedError();
  @override
  OperationDefinitionReferencedFrom copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? source,
    Element? sourceElement,
    FhirString? sourceId,
    Element? sourceIdElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return OperationDefinitionReferencedFrom(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      source: source ?? this.source,
      sourceElement: sourceElement ?? this.sourceElement,
      sourceId: sourceId ?? this.sourceId,
      sourceIdElement: sourceIdElement ?? this.sourceIdElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory OperationDefinitionReferencedFrom.fromYaml(dynamic yaml) => yaml
          is String
      ? OperationDefinitionReferencedFrom.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? OperationDefinitionReferencedFrom.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'OperationDefinitionReferencedFrom cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory OperationDefinitionReferencedFrom.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return OperationDefinitionReferencedFrom.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [OperationDefinitionOverload] /// Defines an appropriate combination of parameters to use when invoking this
/// operation, to help code generators when generating overloaded parameter
/// sets for this operation.
@JsonSerializable()
class OperationDefinitionOverload extends BackboneElement {
  OperationDefinitionOverload({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.parameterName,
    this.parameterNameElement,
    this.comment,
    this.commentElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'OperationDefinitionOverload');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [parameterName] /// Name of parameter to include in overload.
  @JsonKey(name: 'parameterName')
  final List<FhirString>? parameterName;
  @JsonKey(name: '_parameterName')
  final List<Element>? parameterNameElement;

  /// [comment] /// Comments to go on overload.
  @JsonKey(name: 'comment')
  final FhirString? comment;
  @JsonKey(name: '_comment')
  final Element? commentElement;
  factory OperationDefinitionOverload.fromJson(Map<String, dynamic> json) =>
      _$OperationDefinitionOverloadFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$OperationDefinitionOverloadToJson(this);

  @override
  OperationDefinitionOverload clone() => throw UnimplementedError();
  @override
  OperationDefinitionOverload copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<FhirString>? parameterName,
    List<Element>? parameterNameElement,
    FhirString? comment,
    Element? commentElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return OperationDefinitionOverload(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      parameterName: parameterName ?? this.parameterName,
      parameterNameElement: parameterNameElement ?? this.parameterNameElement,
      comment: comment ?? this.comment,
      commentElement: commentElement ?? this.commentElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory OperationDefinitionOverload.fromYaml(dynamic yaml) => yaml is String
      ? OperationDefinitionOverload.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? OperationDefinitionOverload.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'OperationDefinitionOverload cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory OperationDefinitionOverload.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return OperationDefinitionOverload.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
