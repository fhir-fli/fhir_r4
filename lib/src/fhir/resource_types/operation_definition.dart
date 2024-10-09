import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(resourceType: R4ResourceType.OperationDefinition);

  @override
  String get fhirType => 'OperationDefinition';

  @Id()
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
  final PublicationStatus status;
  final Element? statusElement;

  /// [kind] /// Whether this is an operation or a named query.
  final OperationKind kind;
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
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.toJson();
    }
    if (implicitRulesElement != null) {
      json['_implicitRules'] = implicitRulesElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] =
          contained!.map<dynamic>((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (url?.value != null) {
      json['url'] = url!.toJson();
    }
    if (urlElement != null) {
      json['_url'] = urlElement!.toJson();
    }
    if (version?.value != null) {
      json['version'] = version!.toJson();
    }
    if (versionElement != null) {
      json['_version'] = versionElement!.toJson();
    }
    json['name'] = name.toJson();
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    if (title?.value != null) {
      json['title'] = title!.toJson();
    }
    if (titleElement != null) {
      json['_title'] = titleElement!.toJson();
    }
    json['status'] = status.toJson();
    json['kind'] = kind.toJson();
    if (experimental?.value != null) {
      json['experimental'] = experimental!.toJson();
    }
    if (experimentalElement != null) {
      json['_experimental'] = experimentalElement!.toJson();
    }
    if (date?.value != null) {
      json['date'] = date!.toJson();
    }
    if (dateElement != null) {
      json['_date'] = dateElement!.toJson();
    }
    if (publisher?.value != null) {
      json['publisher'] = publisher!.toJson();
    }
    if (publisherElement != null) {
      json['_publisher'] = publisherElement!.toJson();
    }
    if (contact != null && contact!.isNotEmpty) {
      json['contact'] =
          contact!.map<dynamic>((ContactDetail v) => v.toJson()).toList();
    }
    if (description?.value != null) {
      json['description'] = description!.toJson();
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (useContext != null && useContext!.isNotEmpty) {
      json['useContext'] =
          useContext!.map<dynamic>((UsageContext v) => v.toJson()).toList();
    }
    if (jurisdiction != null && jurisdiction!.isNotEmpty) {
      json['jurisdiction'] = jurisdiction!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (purpose?.value != null) {
      json['purpose'] = purpose!.toJson();
    }
    if (purposeElement != null) {
      json['_purpose'] = purposeElement!.toJson();
    }
    if (affectsState?.value != null) {
      json['affectsState'] = affectsState!.toJson();
    }
    if (affectsStateElement != null) {
      json['_affectsState'] = affectsStateElement!.toJson();
    }
    json['code'] = code.toJson();
    if (codeElement != null) {
      json['_code'] = codeElement!.toJson();
    }
    if (comment?.value != null) {
      json['comment'] = comment!.toJson();
    }
    if (commentElement != null) {
      json['_comment'] = commentElement!.toJson();
    }
    if (base?.value != null) {
      json['base'] = base!.toJson();
    }
    if (baseElement != null) {
      json['_base'] = baseElement!.toJson();
    }
    if (resource != null && resource!.isNotEmpty) {
      json['resource'] = resource!.map((FhirCode v) => v.toJson()).toList();
    }
    if (resourceElement != null && resourceElement!.isNotEmpty) {
      json['_resource'] =
          resourceElement!.map((Element v) => v.toJson()).toList();
    }
    json['system'] = system.toJson();
    if (systemElement != null) {
      json['_system'] = systemElement!.toJson();
    }
    json['type'] = type.toJson();
    if (typeElement != null) {
      json['_type'] = typeElement!.toJson();
    }
    json['instance'] = instance.toJson();
    if (instanceElement != null) {
      json['_instance'] = instanceElement!.toJson();
    }
    if (inputProfile?.value != null) {
      json['inputProfile'] = inputProfile!.toJson();
    }
    if (inputProfileElement != null) {
      json['_inputProfile'] = inputProfileElement!.toJson();
    }
    if (outputProfile?.value != null) {
      json['outputProfile'] = outputProfile!.toJson();
    }
    if (outputProfileElement != null) {
      json['_outputProfile'] = outputProfileElement!.toJson();
    }
    if (parameter != null && parameter!.isNotEmpty) {
      json['parameter'] = parameter!
          .map<dynamic>((OperationDefinitionParameter v) => v.toJson())
          .toList();
    }
    if (overload != null && overload!.isNotEmpty) {
      json['overload'] = overload!
          .map<dynamic>((OperationDefinitionOverload v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory OperationDefinition.fromJson(Map<String, dynamic> json) {
    return OperationDefinition(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson(json['implicitRules'])
          : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'])
          : null,
      languageElement: json['_language'] != null
          ? Element.fromJson(json['_language'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                  (dynamic v) => Resource.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      url: json['url'] != null ? FhirUri.fromJson(json['url']) : null,
      urlElement: json['_url'] != null
          ? Element.fromJson(json['_url'] as Map<String, dynamic>)
          : null,
      version:
          json['version'] != null ? FhirString.fromJson(json['version']) : null,
      versionElement: json['_version'] != null
          ? Element.fromJson(json['_version'] as Map<String, dynamic>)
          : null,
      name: FhirString.fromJson(json['name']),
      nameElement: json['_name'] != null
          ? Element.fromJson(json['_name'] as Map<String, dynamic>)
          : null,
      title: json['title'] != null ? FhirString.fromJson(json['title']) : null,
      titleElement: json['_title'] != null
          ? Element.fromJson(json['_title'] as Map<String, dynamic>)
          : null,
      status: PublicationStatus.fromJson(json['status']),
      statusElement: json['_status'] != null
          ? Element.fromJson(json['_status'] as Map<String, dynamic>)
          : null,
      kind: OperationKind.fromJson(json['kind']),
      kindElement: json['_kind'] != null
          ? Element.fromJson(json['_kind'] as Map<String, dynamic>)
          : null,
      experimental: json['experimental'] != null
          ? FhirBoolean.fromJson(json['experimental'])
          : null,
      experimentalElement: json['_experimental'] != null
          ? Element.fromJson(json['_experimental'] as Map<String, dynamic>)
          : null,
      date: json['date'] != null ? FhirDateTime.fromJson(json['date']) : null,
      dateElement: json['_date'] != null
          ? Element.fromJson(json['_date'] as Map<String, dynamic>)
          : null,
      publisher: json['publisher'] != null
          ? FhirString.fromJson(json['publisher'])
          : null,
      publisherElement: json['_publisher'] != null
          ? Element.fromJson(json['_publisher'] as Map<String, dynamic>)
          : null,
      contact: json['contact'] != null
          ? (json['contact'] as List<dynamic>)
              .map<ContactDetail>((dynamic v) =>
                  ContactDetail.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      description: json['description'] != null
          ? FhirMarkdown.fromJson(json['description'])
          : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(json['_description'] as Map<String, dynamic>)
          : null,
      useContext: json['useContext'] != null
          ? (json['useContext'] as List<dynamic>)
              .map<UsageContext>((dynamic v) =>
                  UsageContext.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      jurisdiction: json['jurisdiction'] != null
          ? (json['jurisdiction'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      purpose: json['purpose'] != null
          ? FhirMarkdown.fromJson(json['purpose'])
          : null,
      purposeElement: json['_purpose'] != null
          ? Element.fromJson(json['_purpose'] as Map<String, dynamic>)
          : null,
      affectsState: json['affectsState'] != null
          ? FhirBoolean.fromJson(json['affectsState'])
          : null,
      affectsStateElement: json['_affectsState'] != null
          ? Element.fromJson(json['_affectsState'] as Map<String, dynamic>)
          : null,
      code: FhirCode.fromJson(json['code']),
      codeElement: json['_code'] != null
          ? Element.fromJson(json['_code'] as Map<String, dynamic>)
          : null,
      comment: json['comment'] != null
          ? FhirMarkdown.fromJson(json['comment'])
          : null,
      commentElement: json['_comment'] != null
          ? Element.fromJson(json['_comment'] as Map<String, dynamic>)
          : null,
      base: json['base'] != null ? FhirCanonical.fromJson(json['base']) : null,
      baseElement: json['_base'] != null
          ? Element.fromJson(json['_base'] as Map<String, dynamic>)
          : null,
      resource: json['resource'] != null
          ? (json['resource'] as List<dynamic>)
              .map<FhirCode>((dynamic v) => FhirCode.fromJson(v as dynamic))
              .toList()
          : null,
      resourceElement: json['_resource'] != null
          ? (json['_resource'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      system: FhirBoolean.fromJson(json['system']),
      systemElement: json['_system'] != null
          ? Element.fromJson(json['_system'] as Map<String, dynamic>)
          : null,
      type: FhirBoolean.fromJson(json['type']),
      typeElement: json['_type'] != null
          ? Element.fromJson(json['_type'] as Map<String, dynamic>)
          : null,
      instance: FhirBoolean.fromJson(json['instance']),
      instanceElement: json['_instance'] != null
          ? Element.fromJson(json['_instance'] as Map<String, dynamic>)
          : null,
      inputProfile: json['inputProfile'] != null
          ? FhirCanonical.fromJson(json['inputProfile'])
          : null,
      inputProfileElement: json['_inputProfile'] != null
          ? Element.fromJson(json['_inputProfile'] as Map<String, dynamic>)
          : null,
      outputProfile: json['outputProfile'] != null
          ? FhirCanonical.fromJson(json['outputProfile'])
          : null,
      outputProfileElement: json['_outputProfile'] != null
          ? Element.fromJson(json['_outputProfile'] as Map<String, dynamic>)
          : null,
      parameter: json['parameter'] != null
          ? (json['parameter'] as List<dynamic>)
              .map<OperationDefinitionParameter>((dynamic v) =>
                  OperationDefinitionParameter.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      overload: json['overload'] != null
          ? (json['overload'] as List<dynamic>)
              .map<OperationDefinitionOverload>((dynamic v) =>
                  OperationDefinitionOverload.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  OperationDefinition clone() => throw UnimplementedError();
  @override
  OperationDefinition copyWith({
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
    FhirString? version,
    Element? versionElement,
    FhirString? name,
    Element? nameElement,
    FhirString? title,
    Element? titleElement,
    PublicationStatus? status,
    Element? statusElement,
    OperationKind? kind,
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
  });

  @override
  String get fhirType => 'OperationDefinitionParameter';

  @Id()
  int dbId = 0;

  /// [name] /// The name of used to identify the parameter.
  final FhirCode name;
  final Element? nameElement;

  /// [use] /// Whether this is an input or an output parameter.
  final OperationParameterUse use;
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
  final FHIRAllTypes? type;
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
  final SearchParamType? searchType;
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
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['name'] = name.toJson();
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    json['use'] = use.toJson();
    json['min'] = min.toJson();
    if (minElement != null) {
      json['_min'] = minElement!.toJson();
    }
    json['max'] = max.toJson();
    if (maxElement != null) {
      json['_max'] = maxElement!.toJson();
    }
    if (documentation?.value != null) {
      json['documentation'] = documentation!.toJson();
    }
    if (documentationElement != null) {
      json['_documentation'] = documentationElement!.toJson();
    }
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (targetProfile != null && targetProfile!.isNotEmpty) {
      json['targetProfile'] =
          targetProfile!.map((FhirCanonical v) => v.toJson()).toList();
    }
    if (targetProfileElement != null && targetProfileElement!.isNotEmpty) {
      json['_targetProfile'] =
          targetProfileElement!.map((Element v) => v.toJson()).toList();
    }
    if (searchType != null) {
      json['searchType'] = searchType!.toJson();
    }
    if (binding != null) {
      json['binding'] = binding!.toJson();
    }
    if (referencedFrom != null && referencedFrom!.isNotEmpty) {
      json['referencedFrom'] = referencedFrom!
          .map<dynamic>((OperationDefinitionReferencedFrom v) => v.toJson())
          .toList();
    }
    if (part_ != null && part_!.isNotEmpty) {
      json['part'] = part_!
          .map<dynamic>((OperationDefinitionParameter v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory OperationDefinitionParameter.fromJson(Map<String, dynamic> json) {
    return OperationDefinitionParameter(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      name: FhirCode.fromJson(json['name']),
      nameElement: json['_name'] != null
          ? Element.fromJson(json['_name'] as Map<String, dynamic>)
          : null,
      use: OperationParameterUse.fromJson(json['use']),
      useElement: json['_use'] != null
          ? Element.fromJson(json['_use'] as Map<String, dynamic>)
          : null,
      min: FhirInteger.fromJson(json['min']),
      minElement: json['_min'] != null
          ? Element.fromJson(json['_min'] as Map<String, dynamic>)
          : null,
      max: FhirString.fromJson(json['max']),
      maxElement: json['_max'] != null
          ? Element.fromJson(json['_max'] as Map<String, dynamic>)
          : null,
      documentation: json['documentation'] != null
          ? FhirString.fromJson(json['documentation'])
          : null,
      documentationElement: json['_documentation'] != null
          ? Element.fromJson(json['_documentation'] as Map<String, dynamic>)
          : null,
      type: json['type'] != null ? FHIRAllTypes.fromJson(json['type']) : null,
      typeElement: json['_type'] != null
          ? Element.fromJson(json['_type'] as Map<String, dynamic>)
          : null,
      targetProfile: json['targetProfile'] != null
          ? (json['targetProfile'] as List<dynamic>)
              .map<FhirCanonical>(
                  (dynamic v) => FhirCanonical.fromJson(v as dynamic))
              .toList()
          : null,
      targetProfileElement: json['_targetProfile'] != null
          ? (json['_targetProfile'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      searchType: json['searchType'] != null
          ? SearchParamType.fromJson(json['searchType'])
          : null,
      searchTypeElement: json['_searchType'] != null
          ? Element.fromJson(json['_searchType'] as Map<String, dynamic>)
          : null,
      binding: json['binding'] != null
          ? OperationDefinitionBinding.fromJson(
              json['binding'] as Map<String, dynamic>)
          : null,
      referencedFrom: json['referencedFrom'] != null
          ? (json['referencedFrom'] as List<dynamic>)
              .map<OperationDefinitionReferencedFrom>((dynamic v) =>
                  OperationDefinitionReferencedFrom.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      part_: json['part'] != null
          ? (json['part'] as List<dynamic>)
              .map<OperationDefinitionParameter>((dynamic v) =>
                  OperationDefinitionParameter.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  OperationDefinitionParameter clone() => throw UnimplementedError();
  @override
  OperationDefinitionParameter copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? name,
    Element? nameElement,
    OperationParameterUse? use,
    Element? useElement,
    FhirInteger? min,
    Element? minElement,
    FhirString? max,
    Element? maxElement,
    FhirString? documentation,
    Element? documentationElement,
    FHIRAllTypes? type,
    Element? typeElement,
    List<FhirCanonical>? targetProfile,
    List<Element>? targetProfileElement,
    SearchParamType? searchType,
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
  });

  @override
  String get fhirType => 'OperationDefinitionBinding';

  @Id()
  int dbId = 0;

  /// [strength] /// Indicates the degree of conformance expectations associated with this
  /// binding - that is, the degree to which the provided value set must be
  /// adhered to in the instances.
  final BindingStrength strength;
  final Element? strengthElement;

  /// [valueSet] /// Points to the value set or external definition (e.g. implicit value set)
  /// that identifies the set of codes to be used.
  final FhirCanonical valueSet;
  final Element? valueSetElement;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['strength'] = strength.toJson();
    json['valueSet'] = valueSet.toJson();
    if (valueSetElement != null) {
      json['_valueSet'] = valueSetElement!.toJson();
    }
    return json;
  }

  factory OperationDefinitionBinding.fromJson(Map<String, dynamic> json) {
    return OperationDefinitionBinding(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      strength: BindingStrength.fromJson(json['strength']),
      strengthElement: json['_strength'] != null
          ? Element.fromJson(json['_strength'] as Map<String, dynamic>)
          : null,
      valueSet: FhirCanonical.fromJson(json['valueSet']),
      valueSetElement: json['_valueSet'] != null
          ? Element.fromJson(json['_valueSet'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  OperationDefinitionBinding clone() => throw UnimplementedError();
  @override
  OperationDefinitionBinding copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    BindingStrength? strength,
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
  });

  @override
  String get fhirType => 'OperationDefinitionReferencedFrom';

  @Id()
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
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['source'] = source.toJson();
    if (sourceElement != null) {
      json['_source'] = sourceElement!.toJson();
    }
    if (sourceId?.value != null) {
      json['sourceId'] = sourceId!.toJson();
    }
    if (sourceIdElement != null) {
      json['_sourceId'] = sourceIdElement!.toJson();
    }
    return json;
  }

  factory OperationDefinitionReferencedFrom.fromJson(
      Map<String, dynamic> json) {
    return OperationDefinitionReferencedFrom(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      source: FhirString.fromJson(json['source']),
      sourceElement: json['_source'] != null
          ? Element.fromJson(json['_source'] as Map<String, dynamic>)
          : null,
      sourceId: json['sourceId'] != null
          ? FhirString.fromJson(json['sourceId'])
          : null,
      sourceIdElement: json['_sourceId'] != null
          ? Element.fromJson(json['_sourceId'] as Map<String, dynamic>)
          : null,
    );
  }
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
  });

  @override
  String get fhirType => 'OperationDefinitionOverload';

  @Id()
  int dbId = 0;

  /// [parameterName] /// Name of parameter to include in overload.
  final List<FhirString>? parameterName;
  final List<Element>? parameterNameElement;

  /// [comment] /// Comments to go on overload.
  final FhirString? comment;
  final Element? commentElement;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (parameterName != null && parameterName!.isNotEmpty) {
      json['parameterName'] =
          parameterName!.map((FhirString v) => v.toJson()).toList();
    }
    if (parameterNameElement != null && parameterNameElement!.isNotEmpty) {
      json['_parameterName'] =
          parameterNameElement!.map((Element v) => v.toJson()).toList();
    }
    if (comment?.value != null) {
      json['comment'] = comment!.toJson();
    }
    if (commentElement != null) {
      json['_comment'] = commentElement!.toJson();
    }
    return json;
  }

  factory OperationDefinitionOverload.fromJson(Map<String, dynamic> json) {
    return OperationDefinitionOverload(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      parameterName: json['parameterName'] != null
          ? (json['parameterName'] as List<dynamic>)
              .map<FhirString>((dynamic v) => FhirString.fromJson(v as dynamic))
              .toList()
          : null,
      parameterNameElement: json['_parameterName'] != null
          ? (json['_parameterName'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      comment:
          json['comment'] != null ? FhirString.fromJson(json['comment']) : null,
      commentElement: json['_comment'] != null
          ? Element.fromJson(json['_comment'] as Map<String, dynamic>)
          : null,
    );
  }
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
