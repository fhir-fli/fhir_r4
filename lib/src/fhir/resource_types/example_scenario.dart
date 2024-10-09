import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [ExampleScenario] /// Example of workflow instance.
class ExampleScenario extends DomainResource {
  ExampleScenario({
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
    this.identifier,
    this.version,
    this.versionElement,
    this.name,
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
    this.useContext,
    this.jurisdiction,
    this.copyright,
    this.copyrightElement,
    this.purpose,
    this.purposeElement,
    this.actor,
    this.instance,
    this.process,
    this.workflow,
    this.workflowElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(resourceType: R4ResourceType.ExampleScenario);

  @override
  String get fhirType => 'ExampleScenario';

  @Id()
  int dbId = 0;

  /// [url] /// An absolute URI that is used to identify this example scenario when it is
  /// referenced in a specification, model, design or an instance; also called
  /// its canonical identifier. This SHOULD be globally unique and SHOULD be a
  /// literal address at which at which an authoritative instance of this example
  /// scenario is (or will be) published. This URL can be the target of a
  /// canonical reference. It SHALL remain the same when the example scenario is
  /// stored on different servers.
  final FhirUri? url;
  final Element? urlElement;

  /// [identifier] /// A formal identifier that is used to identify this example scenario when it
  /// is represented in other formats, or referenced in a specification, model,
  /// design or an instance.
  final List<Identifier>? identifier;

  /// [version] /// The identifier that is used to identify this version of the example
  /// scenario when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the example scenario author
  /// and is not expected to be globally unique. For example, it might be a
  /// timestamp (e.g. yyyymmdd) if a managed version is not available. There is
  /// also no expectation that versions can be placed in a lexicographical
  /// sequence.
  final FhirString? version;
  final Element? versionElement;

  /// [name] /// A natural language name identifying the example scenario. This name should
  /// be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString? name;
  final Element? nameElement;

  /// [status] /// The status of this example scenario. Enables tracking the life-cycle of the
  /// content.
  final PublicationStatus status;
  final Element? statusElement;

  /// [experimental] /// A Boolean value to indicate that this example scenario is authored for
  /// testing purposes (or education/evaluation/marketing) and is not intended to
  /// be used for genuine usage.
  final FhirBoolean? experimental;
  final Element? experimentalElement;

  /// [date] /// The date (and optionally time) when the example scenario was published. The
  /// date must change when the business version changes and it must change if
  /// the status code changes. In addition, it should change when the substantive
  /// content of the example scenario changes. (e.g. the 'content logical
  /// definition').
  final FhirDateTime? date;
  final Element? dateElement;

  /// [publisher] /// The name of the organization or individual that published the example
  /// scenario.
  final FhirString? publisher;
  final Element? publisherElement;

  /// [contact] /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [useContext] /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories (gender,
  /// age, ...) or may be references to specific programs (insurance plans,
  /// studies, ...) and may be used to assist with indexing and searching for
  /// appropriate example scenario instances.
  final List<UsageContext>? useContext;

  /// [jurisdiction] /// A legal or geographic region in which the example scenario is intended to
  /// be used.
  final List<CodeableConcept>? jurisdiction;

  /// [copyright] /// A copyright statement relating to the example scenario and/or its contents.
  /// Copyright statements are generally legal restrictions on the use and
  /// publishing of the example scenario.
  final FhirMarkdown? copyright;
  final Element? copyrightElement;

  /// [purpose] /// What the example scenario resource is created for. This should not be used
  /// to show the business purpose of the scenario itself, but the purpose of
  /// documenting a scenario.
  final FhirMarkdown? purpose;
  final Element? purposeElement;

  /// [actor] /// Actor participating in the resource.
  final List<ExampleScenarioActor>? actor;

  /// [instance] /// Each resource and each version that is present in the workflow.
  final List<ExampleScenarioInstance>? instance;

  /// [process] /// Each major process - a group of operations.
  final List<ExampleScenarioProcess>? process;

  /// [workflow] /// Another nested workflow.
  final List<FhirCanonical>? workflow;
  final List<Element>? workflowElement;
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
      json['implicitRules'] = implicitRules!.value;
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
      json['url'] = url!.value;
    }
    if (urlElement != null) {
      json['_url'] = urlElement!.toJson();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map<dynamic>((Identifier v) => v.toJson()).toList();
    }
    if (version?.value != null) {
      json['version'] = version!.value;
    }
    if (versionElement != null) {
      json['_version'] = versionElement!.toJson();
    }
    if (name?.value != null) {
      json['name'] = name!.value;
    }
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    json['status'] = status.toJson();
    if (experimental?.value != null) {
      json['experimental'] = experimental!.value;
    }
    if (experimentalElement != null) {
      json['_experimental'] = experimentalElement!.toJson();
    }
    if (date?.value != null) {
      json['date'] = date!.value;
    }
    if (dateElement != null) {
      json['_date'] = dateElement!.toJson();
    }
    if (publisher?.value != null) {
      json['publisher'] = publisher!.value;
    }
    if (publisherElement != null) {
      json['_publisher'] = publisherElement!.toJson();
    }
    if (contact != null && contact!.isNotEmpty) {
      json['contact'] =
          contact!.map<dynamic>((ContactDetail v) => v.toJson()).toList();
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
    if (copyright?.value != null) {
      json['copyright'] = copyright!.value;
    }
    if (copyrightElement != null) {
      json['_copyright'] = copyrightElement!.toJson();
    }
    if (purpose?.value != null) {
      json['purpose'] = purpose!.value;
    }
    if (purposeElement != null) {
      json['_purpose'] = purposeElement!.toJson();
    }
    if (actor != null && actor!.isNotEmpty) {
      json['actor'] =
          actor!.map<dynamic>((ExampleScenarioActor v) => v.toJson()).toList();
    }
    if (instance != null && instance!.isNotEmpty) {
      json['instance'] = instance!
          .map<dynamic>((ExampleScenarioInstance v) => v.toJson())
          .toList();
    }
    if (process != null && process!.isNotEmpty) {
      json['process'] = process!
          .map<dynamic>((ExampleScenarioProcess v) => v.toJson())
          .toList();
    }
    if (workflow != null && workflow!.isNotEmpty) {
      json['workflow'] = workflow!.map((FhirCanonical v) => v.value).toList();
    }
    if (workflowElement != null && workflowElement!.isNotEmpty) {
      json['_workflow'] =
          workflowElement!.map((Element v) => v.toJson()).toList();
    }
    return json;
  }

  factory ExampleScenario.fromJson(Map<String, dynamic> json) {
    return ExampleScenario(
      id: json['id'] != null ? FhirString(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules:
          json['implicitRules'] != null ? FhirUri(json['implicitRules']) : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'] as Map<String, dynamic>)
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
      url: json['url'] != null ? FhirUri(json['url']) : null,
      urlElement: json['_url'] != null
          ? Element.fromJson(json['_url'] as Map<String, dynamic>)
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                  (dynamic v) => Identifier.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      version: json['version'] != null ? FhirString(json['version']) : null,
      versionElement: json['_version'] != null
          ? Element.fromJson(json['_version'] as Map<String, dynamic>)
          : null,
      name: json['name'] != null ? FhirString(json['name']) : null,
      nameElement: json['_name'] != null
          ? Element.fromJson(json['_name'] as Map<String, dynamic>)
          : null,
      status:
          PublicationStatus.fromJson(json['status'] as Map<String, dynamic>),
      experimental: json['experimental'] != null
          ? FhirBoolean(json['experimental'])
          : null,
      experimentalElement: json['_experimental'] != null
          ? Element.fromJson(json['_experimental'] as Map<String, dynamic>)
          : null,
      date: json['date'] != null ? FhirDateTime(json['date']) : null,
      dateElement: json['_date'] != null
          ? Element.fromJson(json['_date'] as Map<String, dynamic>)
          : null,
      publisher:
          json['publisher'] != null ? FhirString(json['publisher']) : null,
      publisherElement: json['_publisher'] != null
          ? Element.fromJson(json['_publisher'] as Map<String, dynamic>)
          : null,
      contact: json['contact'] != null
          ? (json['contact'] as List<dynamic>)
              .map<ContactDetail>((dynamic v) =>
                  ContactDetail.fromJson(v as Map<String, dynamic>))
              .toList()
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
      copyright:
          json['copyright'] != null ? FhirMarkdown(json['copyright']) : null,
      copyrightElement: json['_copyright'] != null
          ? Element.fromJson(json['_copyright'] as Map<String, dynamic>)
          : null,
      purpose: json['purpose'] != null ? FhirMarkdown(json['purpose']) : null,
      purposeElement: json['_purpose'] != null
          ? Element.fromJson(json['_purpose'] as Map<String, dynamic>)
          : null,
      actor: json['actor'] != null
          ? (json['actor'] as List<dynamic>)
              .map<ExampleScenarioActor>((dynamic v) =>
                  ExampleScenarioActor.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      instance: json['instance'] != null
          ? (json['instance'] as List<dynamic>)
              .map<ExampleScenarioInstance>((dynamic v) =>
                  ExampleScenarioInstance.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      process: json['process'] != null
          ? (json['process'] as List<dynamic>)
              .map<ExampleScenarioProcess>((dynamic v) =>
                  ExampleScenarioProcess.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      workflow: json['workflow'] != null
          ? (json['workflow'] as List<dynamic>)
              .map<FhirCanonical>(
                  (dynamic v) => FhirCanonical.fromJson(v as dynamic))
              .toList()
          : null,
      workflowElement: json['_workflow'] != null
          ? (json['_workflow'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  ExampleScenario clone() => throw UnimplementedError();
  @override
  ExampleScenario copyWith({
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
    PublicationStatus? status,
    Element? statusElement,
    FhirBoolean? experimental,
    Element? experimentalElement,
    FhirDateTime? date,
    Element? dateElement,
    FhirString? publisher,
    Element? publisherElement,
    List<ContactDetail>? contact,
    List<UsageContext>? useContext,
    List<CodeableConcept>? jurisdiction,
    FhirMarkdown? copyright,
    Element? copyrightElement,
    FhirMarkdown? purpose,
    Element? purposeElement,
    List<ExampleScenarioActor>? actor,
    List<ExampleScenarioInstance>? instance,
    List<ExampleScenarioProcess>? process,
    List<FhirCanonical>? workflow,
    List<Element>? workflowElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ExampleScenario(
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
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      experimental: experimental ?? this.experimental,
      experimentalElement: experimentalElement ?? this.experimentalElement,
      date: date ?? this.date,
      dateElement: dateElement ?? this.dateElement,
      publisher: publisher ?? this.publisher,
      publisherElement: publisherElement ?? this.publisherElement,
      contact: contact ?? this.contact,
      useContext: useContext ?? this.useContext,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      copyright: copyright ?? this.copyright,
      copyrightElement: copyrightElement ?? this.copyrightElement,
      purpose: purpose ?? this.purpose,
      purposeElement: purposeElement ?? this.purposeElement,
      actor: actor ?? this.actor,
      instance: instance ?? this.instance,
      process: process ?? this.process,
      workflow: workflow ?? this.workflow,
      workflowElement: workflowElement ?? this.workflowElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ExampleScenario.fromYaml(dynamic yaml) => yaml is String
      ? ExampleScenario.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ExampleScenario.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ExampleScenario cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ExampleScenario.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExampleScenario.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ExampleScenarioActor] /// Actor participating in the resource.
class ExampleScenarioActor extends BackboneElement {
  ExampleScenarioActor({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.actorId,
    this.actorIdElement,
    required this.type,
    this.typeElement,
    this.name,
    this.nameElement,
    this.description,
    this.descriptionElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ExampleScenarioActor';

  @Id()
  int dbId = 0;

  /// [actorId] /// ID or acronym of actor.
  final FhirString actorId;
  final Element? actorIdElement;

  /// [type] /// The type of actor - person or system.
  final ExampleScenarioActorType type;
  final Element? typeElement;

  /// [name] /// The name of the actor as shown in the page.
  final FhirString? name;
  final Element? nameElement;

  /// [description] /// The description of the actor.
  final FhirMarkdown? description;
  final Element? descriptionElement;
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
    json['actorId'] = actorId.value;
    if (actorIdElement != null) {
      json['_actorId'] = actorIdElement!.toJson();
    }
    json['type'] = type.toJson();
    if (name?.value != null) {
      json['name'] = name!.value;
    }
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    if (description?.value != null) {
      json['description'] = description!.value;
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    return json;
  }

  factory ExampleScenarioActor.fromJson(Map<String, dynamic> json) {
    return ExampleScenarioActor(
      id: json['id'] != null ? FhirString(json['id']) : null,
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
      actorId: FhirString(json['actorId']),
      actorIdElement: json['_actorId'] != null
          ? Element.fromJson(json['_actorId'] as Map<String, dynamic>)
          : null,
      type: ExampleScenarioActorType.fromJson(
          json['type'] as Map<String, dynamic>),
      name: json['name'] != null ? FhirString(json['name']) : null,
      nameElement: json['_name'] != null
          ? Element.fromJson(json['_name'] as Map<String, dynamic>)
          : null,
      description: json['description'] != null
          ? FhirMarkdown(json['description'])
          : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(json['_description'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  ExampleScenarioActor clone() => throw UnimplementedError();
  @override
  ExampleScenarioActor copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? actorId,
    Element? actorIdElement,
    ExampleScenarioActorType? type,
    Element? typeElement,
    FhirString? name,
    Element? nameElement,
    FhirMarkdown? description,
    Element? descriptionElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ExampleScenarioActor(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      actorId: actorId ?? this.actorId,
      actorIdElement: actorIdElement ?? this.actorIdElement,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
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

  factory ExampleScenarioActor.fromYaml(dynamic yaml) => yaml is String
      ? ExampleScenarioActor.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ExampleScenarioActor.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ExampleScenarioActor cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ExampleScenarioActor.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExampleScenarioActor.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ExampleScenarioInstance] /// Each resource and each version that is present in the workflow.
class ExampleScenarioInstance extends BackboneElement {
  ExampleScenarioInstance({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.resourceId,
    this.resourceIdElement,
    required this.resourceType,
    this.resourceTypeElement,
    this.name,
    this.nameElement,
    this.description,
    this.descriptionElement,
    this.version,
    this.containedInstance,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ExampleScenarioInstance';

  @Id()
  int dbId = 0;

  /// [resourceId] /// The id of the resource for referencing.
  final FhirString resourceId;
  final Element? resourceIdElement;

  /// [resourceType] /// The type of the resource.
  final FhirCode resourceType;
  final Element? resourceTypeElement;

  /// [name] /// A short name for the resource instance.
  final FhirString? name;
  final Element? nameElement;

  /// [description] /// Human-friendly description of the resource instance.
  final FhirMarkdown? description;
  final Element? descriptionElement;

  /// [version] /// A specific version of the resource.
  final List<ExampleScenarioVersion>? version;

  /// [containedInstance] /// Resources contained in the instance (e.g. the observations contained in a
  /// bundle).
  final List<ExampleScenarioContainedInstance>? containedInstance;
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
    json['resourceId'] = resourceId.value;
    if (resourceIdElement != null) {
      json['_resourceId'] = resourceIdElement!.toJson();
    }
    json['resourceType'] = resourceType.value;
    if (resourceTypeElement != null) {
      json['_resourceType'] = resourceTypeElement!.toJson();
    }
    if (name?.value != null) {
      json['name'] = name!.value;
    }
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    if (description?.value != null) {
      json['description'] = description!.value;
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (version != null && version!.isNotEmpty) {
      json['version'] = version!
          .map<dynamic>((ExampleScenarioVersion v) => v.toJson())
          .toList();
    }
    if (containedInstance != null && containedInstance!.isNotEmpty) {
      json['containedInstance'] = containedInstance!
          .map<dynamic>((ExampleScenarioContainedInstance v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory ExampleScenarioInstance.fromJson(Map<String, dynamic> json) {
    return ExampleScenarioInstance(
      id: json['id'] != null ? FhirString(json['id']) : null,
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
      resourceId: FhirString(json['resourceId']),
      resourceIdElement: json['_resourceId'] != null
          ? Element.fromJson(json['_resourceId'] as Map<String, dynamic>)
          : null,
      resourceType: FhirCode(json['resourceType']),
      resourceTypeElement: json['_resourceType'] != null
          ? Element.fromJson(json['_resourceType'] as Map<String, dynamic>)
          : null,
      name: json['name'] != null ? FhirString(json['name']) : null,
      nameElement: json['_name'] != null
          ? Element.fromJson(json['_name'] as Map<String, dynamic>)
          : null,
      description: json['description'] != null
          ? FhirMarkdown(json['description'])
          : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(json['_description'] as Map<String, dynamic>)
          : null,
      version: json['version'] != null
          ? (json['version'] as List<dynamic>)
              .map<ExampleScenarioVersion>((dynamic v) =>
                  ExampleScenarioVersion.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      containedInstance: json['containedInstance'] != null
          ? (json['containedInstance'] as List<dynamic>)
              .map<ExampleScenarioContainedInstance>((dynamic v) =>
                  ExampleScenarioContainedInstance.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  ExampleScenarioInstance clone() => throw UnimplementedError();
  @override
  ExampleScenarioInstance copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? resourceId,
    Element? resourceIdElement,
    FhirCode? resourceType,
    Element? resourceTypeElement,
    FhirString? name,
    Element? nameElement,
    FhirMarkdown? description,
    Element? descriptionElement,
    List<ExampleScenarioVersion>? version,
    List<ExampleScenarioContainedInstance>? containedInstance,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ExampleScenarioInstance(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      resourceId: resourceId ?? this.resourceId,
      resourceIdElement: resourceIdElement ?? this.resourceIdElement,
      resourceType: resourceType ?? this.resourceType,
      resourceTypeElement: resourceTypeElement ?? this.resourceTypeElement,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      version: version ?? this.version,
      containedInstance: containedInstance ?? this.containedInstance,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ExampleScenarioInstance.fromYaml(dynamic yaml) => yaml is String
      ? ExampleScenarioInstance.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ExampleScenarioInstance.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ExampleScenarioInstance cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ExampleScenarioInstance.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExampleScenarioInstance.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ExampleScenarioVersion] /// A specific version of the resource.
class ExampleScenarioVersion extends BackboneElement {
  ExampleScenarioVersion({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.versionId,
    this.versionIdElement,
    required this.description,
    this.descriptionElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ExampleScenarioVersion';

  @Id()
  int dbId = 0;

  /// [versionId] /// The identifier of a specific version of a resource.
  final FhirString versionId;
  final Element? versionIdElement;

  /// [description] /// The description of the resource version.
  final FhirMarkdown description;
  final Element? descriptionElement;
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
    json['versionId'] = versionId.value;
    if (versionIdElement != null) {
      json['_versionId'] = versionIdElement!.toJson();
    }
    json['description'] = description.value;
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    return json;
  }

  factory ExampleScenarioVersion.fromJson(Map<String, dynamic> json) {
    return ExampleScenarioVersion(
      id: json['id'] != null ? FhirString(json['id']) : null,
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
      versionId: FhirString(json['versionId']),
      versionIdElement: json['_versionId'] != null
          ? Element.fromJson(json['_versionId'] as Map<String, dynamic>)
          : null,
      description: FhirMarkdown(json['description']),
      descriptionElement: json['_description'] != null
          ? Element.fromJson(json['_description'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  ExampleScenarioVersion clone() => throw UnimplementedError();
  @override
  ExampleScenarioVersion copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? versionId,
    Element? versionIdElement,
    FhirMarkdown? description,
    Element? descriptionElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ExampleScenarioVersion(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      versionId: versionId ?? this.versionId,
      versionIdElement: versionIdElement ?? this.versionIdElement,
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

  factory ExampleScenarioVersion.fromYaml(dynamic yaml) => yaml is String
      ? ExampleScenarioVersion.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ExampleScenarioVersion.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ExampleScenarioVersion cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ExampleScenarioVersion.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExampleScenarioVersion.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ExampleScenarioContainedInstance] /// Resources contained in the instance (e.g. the observations contained in a
/// bundle).
class ExampleScenarioContainedInstance extends BackboneElement {
  ExampleScenarioContainedInstance({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.resourceId,
    this.resourceIdElement,
    this.versionId,
    this.versionIdElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ExampleScenarioContainedInstance';

  @Id()
  int dbId = 0;

  /// [resourceId] /// Each resource contained in the instance.
  final FhirString resourceId;
  final Element? resourceIdElement;

  /// [versionId] /// A specific version of a resource contained in the instance.
  final FhirString? versionId;
  final Element? versionIdElement;
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
    json['resourceId'] = resourceId.value;
    if (resourceIdElement != null) {
      json['_resourceId'] = resourceIdElement!.toJson();
    }
    if (versionId?.value != null) {
      json['versionId'] = versionId!.value;
    }
    if (versionIdElement != null) {
      json['_versionId'] = versionIdElement!.toJson();
    }
    return json;
  }

  factory ExampleScenarioContainedInstance.fromJson(Map<String, dynamic> json) {
    return ExampleScenarioContainedInstance(
      id: json['id'] != null ? FhirString(json['id']) : null,
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
      resourceId: FhirString(json['resourceId']),
      resourceIdElement: json['_resourceId'] != null
          ? Element.fromJson(json['_resourceId'] as Map<String, dynamic>)
          : null,
      versionId:
          json['versionId'] != null ? FhirString(json['versionId']) : null,
      versionIdElement: json['_versionId'] != null
          ? Element.fromJson(json['_versionId'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  ExampleScenarioContainedInstance clone() => throw UnimplementedError();
  @override
  ExampleScenarioContainedInstance copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? resourceId,
    Element? resourceIdElement,
    FhirString? versionId,
    Element? versionIdElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ExampleScenarioContainedInstance(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      resourceId: resourceId ?? this.resourceId,
      resourceIdElement: resourceIdElement ?? this.resourceIdElement,
      versionId: versionId ?? this.versionId,
      versionIdElement: versionIdElement ?? this.versionIdElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ExampleScenarioContainedInstance.fromYaml(dynamic yaml) => yaml
          is String
      ? ExampleScenarioContainedInstance.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ExampleScenarioContainedInstance.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ExampleScenarioContainedInstance cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ExampleScenarioContainedInstance.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExampleScenarioContainedInstance.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ExampleScenarioProcess] /// Each major process - a group of operations.
class ExampleScenarioProcess extends BackboneElement {
  ExampleScenarioProcess({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.title,
    this.titleElement,
    this.description,
    this.descriptionElement,
    this.preConditions,
    this.preConditionsElement,
    this.postConditions,
    this.postConditionsElement,
    this.step,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ExampleScenarioProcess';

  @Id()
  int dbId = 0;

  /// [title] /// The diagram title of the group of operations.
  final FhirString title;
  final Element? titleElement;

  /// [description] /// A longer description of the group of operations.
  final FhirMarkdown? description;
  final Element? descriptionElement;

  /// [preConditions] /// Description of initial status before the process starts.
  final FhirMarkdown? preConditions;
  final Element? preConditionsElement;

  /// [postConditions] /// Description of final status after the process ends.
  final FhirMarkdown? postConditions;
  final Element? postConditionsElement;

  /// [step] /// Each step of the process.
  final List<ExampleScenarioStep>? step;
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
    json['title'] = title.value;
    if (titleElement != null) {
      json['_title'] = titleElement!.toJson();
    }
    if (description?.value != null) {
      json['description'] = description!.value;
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (preConditions?.value != null) {
      json['preConditions'] = preConditions!.value;
    }
    if (preConditionsElement != null) {
      json['_preConditions'] = preConditionsElement!.toJson();
    }
    if (postConditions?.value != null) {
      json['postConditions'] = postConditions!.value;
    }
    if (postConditionsElement != null) {
      json['_postConditions'] = postConditionsElement!.toJson();
    }
    if (step != null && step!.isNotEmpty) {
      json['step'] =
          step!.map<dynamic>((ExampleScenarioStep v) => v.toJson()).toList();
    }
    return json;
  }

  factory ExampleScenarioProcess.fromJson(Map<String, dynamic> json) {
    return ExampleScenarioProcess(
      id: json['id'] != null ? FhirString(json['id']) : null,
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
      title: FhirString(json['title']),
      titleElement: json['_title'] != null
          ? Element.fromJson(json['_title'] as Map<String, dynamic>)
          : null,
      description: json['description'] != null
          ? FhirMarkdown(json['description'])
          : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(json['_description'] as Map<String, dynamic>)
          : null,
      preConditions: json['preConditions'] != null
          ? FhirMarkdown(json['preConditions'])
          : null,
      preConditionsElement: json['_preConditions'] != null
          ? Element.fromJson(json['_preConditions'] as Map<String, dynamic>)
          : null,
      postConditions: json['postConditions'] != null
          ? FhirMarkdown(json['postConditions'])
          : null,
      postConditionsElement: json['_postConditions'] != null
          ? Element.fromJson(json['_postConditions'] as Map<String, dynamic>)
          : null,
      step: json['step'] != null
          ? (json['step'] as List<dynamic>)
              .map<ExampleScenarioStep>((dynamic v) =>
                  ExampleScenarioStep.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  ExampleScenarioProcess clone() => throw UnimplementedError();
  @override
  ExampleScenarioProcess copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? title,
    Element? titleElement,
    FhirMarkdown? description,
    Element? descriptionElement,
    FhirMarkdown? preConditions,
    Element? preConditionsElement,
    FhirMarkdown? postConditions,
    Element? postConditionsElement,
    List<ExampleScenarioStep>? step,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ExampleScenarioProcess(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      title: title ?? this.title,
      titleElement: titleElement ?? this.titleElement,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      preConditions: preConditions ?? this.preConditions,
      preConditionsElement: preConditionsElement ?? this.preConditionsElement,
      postConditions: postConditions ?? this.postConditions,
      postConditionsElement:
          postConditionsElement ?? this.postConditionsElement,
      step: step ?? this.step,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ExampleScenarioProcess.fromYaml(dynamic yaml) => yaml is String
      ? ExampleScenarioProcess.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ExampleScenarioProcess.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ExampleScenarioProcess cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ExampleScenarioProcess.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExampleScenarioProcess.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ExampleScenarioStep] /// Each step of the process.
class ExampleScenarioStep extends BackboneElement {
  ExampleScenarioStep({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.process,
    this.pause,
    this.pauseElement,
    this.operation,
    this.alternative,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ExampleScenarioStep';

  @Id()
  int dbId = 0;

  /// [process] /// Nested process.
  final List<ExampleScenarioProcess>? process;

  /// [pause] /// If there is a pause in the flow.
  final FhirBoolean? pause;
  final Element? pauseElement;

  /// [operation] /// Each interaction or action.
  final ExampleScenarioOperation? operation;

  /// [alternative] /// Indicates an alternative step that can be taken instead of the operations
  /// on the base step in exceptional/atypical circumstances.
  final List<ExampleScenarioAlternative>? alternative;
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
    if (process != null && process!.isNotEmpty) {
      json['process'] = process!
          .map<dynamic>((ExampleScenarioProcess v) => v.toJson())
          .toList();
    }
    if (pause?.value != null) {
      json['pause'] = pause!.value;
    }
    if (pauseElement != null) {
      json['_pause'] = pauseElement!.toJson();
    }
    if (operation != null) {
      json['operation'] = operation!.toJson();
    }
    if (alternative != null && alternative!.isNotEmpty) {
      json['alternative'] = alternative!
          .map<dynamic>((ExampleScenarioAlternative v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory ExampleScenarioStep.fromJson(Map<String, dynamic> json) {
    return ExampleScenarioStep(
      id: json['id'] != null ? FhirString(json['id']) : null,
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
      process: json['process'] != null
          ? (json['process'] as List<dynamic>)
              .map<ExampleScenarioProcess>((dynamic v) =>
                  ExampleScenarioProcess.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      pause: json['pause'] != null ? FhirBoolean(json['pause']) : null,
      pauseElement: json['_pause'] != null
          ? Element.fromJson(json['_pause'] as Map<String, dynamic>)
          : null,
      operation: json['operation'] != null
          ? ExampleScenarioOperation.fromJson(
              json['operation'] as Map<String, dynamic>)
          : null,
      alternative: json['alternative'] != null
          ? (json['alternative'] as List<dynamic>)
              .map<ExampleScenarioAlternative>((dynamic v) =>
                  ExampleScenarioAlternative.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  ExampleScenarioStep clone() => throw UnimplementedError();
  @override
  ExampleScenarioStep copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<ExampleScenarioProcess>? process,
    FhirBoolean? pause,
    Element? pauseElement,
    ExampleScenarioOperation? operation,
    List<ExampleScenarioAlternative>? alternative,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ExampleScenarioStep(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      process: process ?? this.process,
      pause: pause ?? this.pause,
      pauseElement: pauseElement ?? this.pauseElement,
      operation: operation ?? this.operation,
      alternative: alternative ?? this.alternative,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ExampleScenarioStep.fromYaml(dynamic yaml) => yaml is String
      ? ExampleScenarioStep.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ExampleScenarioStep.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ExampleScenarioStep cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ExampleScenarioStep.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExampleScenarioStep.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ExampleScenarioOperation] /// Each interaction or action.
class ExampleScenarioOperation extends BackboneElement {
  ExampleScenarioOperation({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.number,
    this.numberElement,
    this.type,
    this.typeElement,
    this.name,
    this.nameElement,
    this.initiator,
    this.initiatorElement,
    this.receiver,
    this.receiverElement,
    this.description,
    this.descriptionElement,
    this.initiatorActive,
    this.initiatorActiveElement,
    this.receiverActive,
    this.receiverActiveElement,
    this.request,
    this.response,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ExampleScenarioOperation';

  @Id()
  int dbId = 0;

  /// [number] /// The sequential number of the interaction, e.g. 1.2.5.
  final FhirString number;
  final Element? numberElement;

  /// [type] /// The type of operation - CRUD.
  final FhirString? type;
  final Element? typeElement;

  /// [name] /// The human-friendly name of the interaction.
  final FhirString? name;
  final Element? nameElement;

  /// [initiator] /// Who starts the transaction.
  final FhirString? initiator;
  final Element? initiatorElement;

  /// [receiver] /// Who receives the transaction.
  final FhirString? receiver;
  final Element? receiverElement;

  /// [description] /// A comment to be inserted in the diagram.
  final FhirMarkdown? description;
  final Element? descriptionElement;

  /// [initiatorActive] /// Whether the initiator is deactivated right after the transaction.
  final FhirBoolean? initiatorActive;
  final Element? initiatorActiveElement;

  /// [receiverActive] /// Whether the receiver is deactivated right after the transaction.
  final FhirBoolean? receiverActive;
  final Element? receiverActiveElement;

  /// [request] /// Each resource instance used by the initiator.
  final ExampleScenarioContainedInstance? request;

  /// [response] /// Each resource instance used by the responder.
  final ExampleScenarioContainedInstance? response;
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
    json['number'] = number.value;
    if (numberElement != null) {
      json['_number'] = numberElement!.toJson();
    }
    if (type?.value != null) {
      json['type'] = type!.value;
    }
    if (typeElement != null) {
      json['_type'] = typeElement!.toJson();
    }
    if (name?.value != null) {
      json['name'] = name!.value;
    }
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    if (initiator?.value != null) {
      json['initiator'] = initiator!.value;
    }
    if (initiatorElement != null) {
      json['_initiator'] = initiatorElement!.toJson();
    }
    if (receiver?.value != null) {
      json['receiver'] = receiver!.value;
    }
    if (receiverElement != null) {
      json['_receiver'] = receiverElement!.toJson();
    }
    if (description?.value != null) {
      json['description'] = description!.value;
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (initiatorActive?.value != null) {
      json['initiatorActive'] = initiatorActive!.value;
    }
    if (initiatorActiveElement != null) {
      json['_initiatorActive'] = initiatorActiveElement!.toJson();
    }
    if (receiverActive?.value != null) {
      json['receiverActive'] = receiverActive!.value;
    }
    if (receiverActiveElement != null) {
      json['_receiverActive'] = receiverActiveElement!.toJson();
    }
    if (request != null) {
      json['request'] = request!.toJson();
    }
    if (response != null) {
      json['response'] = response!.toJson();
    }
    return json;
  }

  factory ExampleScenarioOperation.fromJson(Map<String, dynamic> json) {
    return ExampleScenarioOperation(
      id: json['id'] != null ? FhirString(json['id']) : null,
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
      number: FhirString(json['number']),
      numberElement: json['_number'] != null
          ? Element.fromJson(json['_number'] as Map<String, dynamic>)
          : null,
      type: json['type'] != null ? FhirString(json['type']) : null,
      typeElement: json['_type'] != null
          ? Element.fromJson(json['_type'] as Map<String, dynamic>)
          : null,
      name: json['name'] != null ? FhirString(json['name']) : null,
      nameElement: json['_name'] != null
          ? Element.fromJson(json['_name'] as Map<String, dynamic>)
          : null,
      initiator:
          json['initiator'] != null ? FhirString(json['initiator']) : null,
      initiatorElement: json['_initiator'] != null
          ? Element.fromJson(json['_initiator'] as Map<String, dynamic>)
          : null,
      receiver: json['receiver'] != null ? FhirString(json['receiver']) : null,
      receiverElement: json['_receiver'] != null
          ? Element.fromJson(json['_receiver'] as Map<String, dynamic>)
          : null,
      description: json['description'] != null
          ? FhirMarkdown(json['description'])
          : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(json['_description'] as Map<String, dynamic>)
          : null,
      initiatorActive: json['initiatorActive'] != null
          ? FhirBoolean(json['initiatorActive'])
          : null,
      initiatorActiveElement: json['_initiatorActive'] != null
          ? Element.fromJson(json['_initiatorActive'] as Map<String, dynamic>)
          : null,
      receiverActive: json['receiverActive'] != null
          ? FhirBoolean(json['receiverActive'])
          : null,
      receiverActiveElement: json['_receiverActive'] != null
          ? Element.fromJson(json['_receiverActive'] as Map<String, dynamic>)
          : null,
      request: json['request'] != null
          ? ExampleScenarioContainedInstance.fromJson(
              json['request'] as Map<String, dynamic>)
          : null,
      response: json['response'] != null
          ? ExampleScenarioContainedInstance.fromJson(
              json['response'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  ExampleScenarioOperation clone() => throw UnimplementedError();
  @override
  ExampleScenarioOperation copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? number,
    Element? numberElement,
    FhirString? type,
    Element? typeElement,
    FhirString? name,
    Element? nameElement,
    FhirString? initiator,
    Element? initiatorElement,
    FhirString? receiver,
    Element? receiverElement,
    FhirMarkdown? description,
    Element? descriptionElement,
    FhirBoolean? initiatorActive,
    Element? initiatorActiveElement,
    FhirBoolean? receiverActive,
    Element? receiverActiveElement,
    ExampleScenarioContainedInstance? request,
    ExampleScenarioContainedInstance? response,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ExampleScenarioOperation(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      number: number ?? this.number,
      numberElement: numberElement ?? this.numberElement,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      initiator: initiator ?? this.initiator,
      initiatorElement: initiatorElement ?? this.initiatorElement,
      receiver: receiver ?? this.receiver,
      receiverElement: receiverElement ?? this.receiverElement,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      initiatorActive: initiatorActive ?? this.initiatorActive,
      initiatorActiveElement:
          initiatorActiveElement ?? this.initiatorActiveElement,
      receiverActive: receiverActive ?? this.receiverActive,
      receiverActiveElement:
          receiverActiveElement ?? this.receiverActiveElement,
      request: request ?? this.request,
      response: response ?? this.response,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ExampleScenarioOperation.fromYaml(dynamic yaml) => yaml is String
      ? ExampleScenarioOperation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ExampleScenarioOperation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ExampleScenarioOperation cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ExampleScenarioOperation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExampleScenarioOperation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ExampleScenarioAlternative] /// Indicates an alternative step that can be taken instead of the operations
/// on the base step in exceptional/atypical circumstances.
class ExampleScenarioAlternative extends BackboneElement {
  ExampleScenarioAlternative({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.title,
    this.titleElement,
    this.description,
    this.descriptionElement,
    this.step,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ExampleScenarioAlternative';

  @Id()
  int dbId = 0;

  /// [title] /// The label to display for the alternative that gives a sense of the
  /// circumstance in which the alternative should be invoked.
  final FhirString title;
  final Element? titleElement;

  /// [description] /// A human-readable description of the alternative explaining when the
  /// alternative should occur rather than the base step.
  final FhirMarkdown? description;
  final Element? descriptionElement;

  /// [step] /// What happens in each alternative option.
  final List<ExampleScenarioStep>? step;
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
    json['title'] = title.value;
    if (titleElement != null) {
      json['_title'] = titleElement!.toJson();
    }
    if (description?.value != null) {
      json['description'] = description!.value;
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (step != null && step!.isNotEmpty) {
      json['step'] =
          step!.map<dynamic>((ExampleScenarioStep v) => v.toJson()).toList();
    }
    return json;
  }

  factory ExampleScenarioAlternative.fromJson(Map<String, dynamic> json) {
    return ExampleScenarioAlternative(
      id: json['id'] != null ? FhirString(json['id']) : null,
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
      title: FhirString(json['title']),
      titleElement: json['_title'] != null
          ? Element.fromJson(json['_title'] as Map<String, dynamic>)
          : null,
      description: json['description'] != null
          ? FhirMarkdown(json['description'])
          : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(json['_description'] as Map<String, dynamic>)
          : null,
      step: json['step'] != null
          ? (json['step'] as List<dynamic>)
              .map<ExampleScenarioStep>((dynamic v) =>
                  ExampleScenarioStep.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  ExampleScenarioAlternative clone() => throw UnimplementedError();
  @override
  ExampleScenarioAlternative copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? title,
    Element? titleElement,
    FhirMarkdown? description,
    Element? descriptionElement,
    List<ExampleScenarioStep>? step,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ExampleScenarioAlternative(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      title: title ?? this.title,
      titleElement: titleElement ?? this.titleElement,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      step: step ?? this.step,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ExampleScenarioAlternative.fromYaml(dynamic yaml) => yaml is String
      ? ExampleScenarioAlternative.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ExampleScenarioAlternative.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ExampleScenarioAlternative cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ExampleScenarioAlternative.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExampleScenarioAlternative.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
