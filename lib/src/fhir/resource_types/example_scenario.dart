import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'example_scenario.g.dart';

/// [ExampleScenario] /// Example of workflow instance.
@JsonSerializable()
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
  }) : super(
            resourceType: R4ResourceType.ExampleScenario,
            fhirType: 'ExampleScenario');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [url] /// An absolute URI that is used to identify this example scenario when it is
  /// referenced in a specification, model, design or an instance; also called
  /// its canonical identifier. This SHOULD be globally unique and SHOULD be a
  /// literal address at which at which an authoritative instance of this example
  /// scenario is (or will be) published. This URL can be the target of a
  /// canonical reference. It SHALL remain the same when the example scenario is
  /// stored on different servers.
  @JsonKey(name: 'url')
  final FhirUri? url;
  @JsonKey(name: '_url')
  final Element? urlElement;

  /// [identifier] /// A formal identifier that is used to identify this example scenario when it
  /// is represented in other formats, or referenced in a specification, model,
  /// design or an instance.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [version] /// The identifier that is used to identify this version of the example
  /// scenario when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the example scenario author
  /// and is not expected to be globally unique. For example, it might be a
  /// timestamp (e.g. yyyymmdd) if a managed version is not available. There is
  /// also no expectation that versions can be placed in a lexicographical
  /// sequence.
  @JsonKey(name: 'version')
  final FhirString? version;
  @JsonKey(name: '_version')
  final Element? versionElement;

  /// [name] /// A natural language name identifying the example scenario. This name should
  /// be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  @JsonKey(name: 'name')
  final FhirString? name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [status] /// The status of this example scenario. Enables tracking the life-cycle of the
  /// content.
  @JsonKey(name: 'status')
  final FhirCode status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [experimental] /// A Boolean value to indicate that this example scenario is authored for
  /// testing purposes (or education/evaluation/marketing) and is not intended to
  /// be used for genuine usage.
  @JsonKey(name: 'experimental')
  final FhirBoolean? experimental;
  @JsonKey(name: '_experimental')
  final Element? experimentalElement;

  /// [date] /// The date (and optionally time) when the example scenario was published. The
  /// date must change when the business version changes and it must change if
  /// the status code changes. In addition, it should change when the substantive
  /// content of the example scenario changes. (e.g. the 'content logical
  /// definition').
  @JsonKey(name: 'date')
  final FhirDateTime? date;
  @JsonKey(name: '_date')
  final Element? dateElement;

  /// [publisher] /// The name of the organization or individual that published the example
  /// scenario.
  @JsonKey(name: 'publisher')
  final FhirString? publisher;
  @JsonKey(name: '_publisher')
  final Element? publisherElement;

  /// [contact] /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  @JsonKey(name: 'contact')
  final List<ContactDetail>? contact;

  /// [useContext] /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories (gender,
  /// age, ...) or may be references to specific programs (insurance plans,
  /// studies, ...) and may be used to assist with indexing and searching for
  /// appropriate example scenario instances.
  @JsonKey(name: 'useContext')
  final List<UsageContext>? useContext;

  /// [jurisdiction] /// A legal or geographic region in which the example scenario is intended to
  /// be used.
  @JsonKey(name: 'jurisdiction')
  final List<CodeableConcept>? jurisdiction;

  /// [copyright] /// A copyright statement relating to the example scenario and/or its contents.
  /// Copyright statements are generally legal restrictions on the use and
  /// publishing of the example scenario.
  @JsonKey(name: 'copyright')
  final FhirMarkdown? copyright;
  @JsonKey(name: '_copyright')
  final Element? copyrightElement;

  /// [purpose] /// What the example scenario resource is created for. This should not be used
  /// to show the business purpose of the scenario itself, but the purpose of
  /// documenting a scenario.
  @JsonKey(name: 'purpose')
  final FhirMarkdown? purpose;
  @JsonKey(name: '_purpose')
  final Element? purposeElement;

  /// [actor] /// Actor participating in the resource.
  @JsonKey(name: 'actor')
  final List<ExampleScenarioActor>? actor;

  /// [instance] /// Each resource and each version that is present in the workflow.
  @JsonKey(name: 'instance')
  final List<ExampleScenarioInstance>? instance;

  /// [process] /// Each major process - a group of operations.
  @JsonKey(name: 'process')
  final List<ExampleScenarioProcess>? process;

  /// [workflow] /// Another nested workflow.
  @JsonKey(name: 'workflow')
  final List<FhirCanonical>? workflow;
  @JsonKey(name: '_workflow')
  final List<Element>? workflowElement;
  factory ExampleScenario.fromJson(Map<String, dynamic> json) =>
      _$ExampleScenarioFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ExampleScenarioToJson(this);

  @override
  ExampleScenario clone() => throw UnimplementedError();
  @override
  ExampleScenario copyWith({
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
    List<Identifier>? identifier,
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
@JsonSerializable()
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
  }) : super(fhirType: 'ExampleScenarioActor');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [actorId] /// ID or acronym of actor.
  @JsonKey(name: 'actorId')
  final FhirString actorId;
  @JsonKey(name: '_actorId')
  final Element? actorIdElement;

  /// [type] /// The type of actor - person or system.
  @JsonKey(name: 'type')
  final FhirCode type;
  @JsonKey(name: '_type')
  final Element? typeElement;

  /// [name] /// The name of the actor as shown in the page.
  @JsonKey(name: 'name')
  final FhirString? name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [description] /// The description of the actor.
  @JsonKey(name: 'description')
  final FhirMarkdown? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;
  factory ExampleScenarioActor.fromJson(Map<String, dynamic> json) =>
      _$ExampleScenarioActorFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ExampleScenarioActorToJson(this);

  @override
  ExampleScenarioActor clone() => throw UnimplementedError();
  @override
  ExampleScenarioActor copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? actorId,
    Element? actorIdElement,
    FhirCode? type,
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
@JsonSerializable()
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
  }) : super(fhirType: 'ExampleScenarioInstance');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [resourceId] /// The id of the resource for referencing.
  @JsonKey(name: 'resourceId')
  final FhirString resourceId;
  @JsonKey(name: '_resourceId')
  final Element? resourceIdElement;

  /// [resourceType] /// The type of the resource.
  @JsonKey(name: 'resourceType')
  final FhirCode resourceType;
  @JsonKey(name: '_resourceType')
  final Element? resourceTypeElement;

  /// [name] /// A short name for the resource instance.
  @JsonKey(name: 'name')
  final FhirString? name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [description] /// Human-friendly description of the resource instance.
  @JsonKey(name: 'description')
  final FhirMarkdown? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [version] /// A specific version of the resource.
  @JsonKey(name: 'version')
  final List<ExampleScenarioVersion>? version;

  /// [containedInstance] /// Resources contained in the instance (e.g. the observations contained in a
  /// bundle).
  @JsonKey(name: 'containedInstance')
  final List<ExampleScenarioContainedInstance>? containedInstance;
  factory ExampleScenarioInstance.fromJson(Map<String, dynamic> json) =>
      _$ExampleScenarioInstanceFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ExampleScenarioInstanceToJson(this);

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
@JsonSerializable()
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
  }) : super(fhirType: 'ExampleScenarioVersion');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [versionId] /// The identifier of a specific version of a resource.
  @JsonKey(name: 'versionId')
  final FhirString versionId;
  @JsonKey(name: '_versionId')
  final Element? versionIdElement;

  /// [description] /// The description of the resource version.
  @JsonKey(name: 'description')
  final FhirMarkdown description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;
  factory ExampleScenarioVersion.fromJson(Map<String, dynamic> json) =>
      _$ExampleScenarioVersionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ExampleScenarioVersionToJson(this);

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
@JsonSerializable()
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
  }) : super(fhirType: 'ExampleScenarioContainedInstance');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [resourceId] /// Each resource contained in the instance.
  @JsonKey(name: 'resourceId')
  final FhirString resourceId;
  @JsonKey(name: '_resourceId')
  final Element? resourceIdElement;

  /// [versionId] /// A specific version of a resource contained in the instance.
  @JsonKey(name: 'versionId')
  final FhirString? versionId;
  @JsonKey(name: '_versionId')
  final Element? versionIdElement;
  factory ExampleScenarioContainedInstance.fromJson(
          Map<String, dynamic> json) =>
      _$ExampleScenarioContainedInstanceFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$ExampleScenarioContainedInstanceToJson(this);

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
@JsonSerializable()
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
  }) : super(fhirType: 'ExampleScenarioProcess');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [title] /// The diagram title of the group of operations.
  @JsonKey(name: 'title')
  final FhirString title;
  @JsonKey(name: '_title')
  final Element? titleElement;

  /// [description] /// A longer description of the group of operations.
  @JsonKey(name: 'description')
  final FhirMarkdown? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [preConditions] /// Description of initial status before the process starts.
  @JsonKey(name: 'preConditions')
  final FhirMarkdown? preConditions;
  @JsonKey(name: '_preConditions')
  final Element? preConditionsElement;

  /// [postConditions] /// Description of final status after the process ends.
  @JsonKey(name: 'postConditions')
  final FhirMarkdown? postConditions;
  @JsonKey(name: '_postConditions')
  final Element? postConditionsElement;

  /// [step] /// Each step of the process.
  @JsonKey(name: 'step')
  final List<ExampleScenarioStep>? step;
  factory ExampleScenarioProcess.fromJson(Map<String, dynamic> json) =>
      _$ExampleScenarioProcessFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ExampleScenarioProcessToJson(this);

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
@JsonSerializable()
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
  }) : super(fhirType: 'ExampleScenarioStep');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [process] /// Nested process.
  @JsonKey(name: 'process')
  final List<ExampleScenarioProcess>? process;

  /// [pause] /// If there is a pause in the flow.
  @JsonKey(name: 'pause')
  final FhirBoolean? pause;
  @JsonKey(name: '_pause')
  final Element? pauseElement;

  /// [operation] /// Each interaction or action.
  @JsonKey(name: 'operation')
  final ExampleScenarioOperation? operation;

  /// [alternative] /// Indicates an alternative step that can be taken instead of the operations
  /// on the base step in exceptional/atypical circumstances.
  @JsonKey(name: 'alternative')
  final List<ExampleScenarioAlternative>? alternative;
  factory ExampleScenarioStep.fromJson(Map<String, dynamic> json) =>
      _$ExampleScenarioStepFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ExampleScenarioStepToJson(this);

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
@JsonSerializable()
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
  }) : super(fhirType: 'ExampleScenarioOperation');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [number] /// The sequential number of the interaction, e.g. 1.2.5.
  @JsonKey(name: 'number')
  final FhirString number;
  @JsonKey(name: '_number')
  final Element? numberElement;

  /// [type] /// The type of operation - CRUD.
  @JsonKey(name: 'type')
  final FhirString? type;
  @JsonKey(name: '_type')
  final Element? typeElement;

  /// [name] /// The human-friendly name of the interaction.
  @JsonKey(name: 'name')
  final FhirString? name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [initiator] /// Who starts the transaction.
  @JsonKey(name: 'initiator')
  final FhirString? initiator;
  @JsonKey(name: '_initiator')
  final Element? initiatorElement;

  /// [receiver] /// Who receives the transaction.
  @JsonKey(name: 'receiver')
  final FhirString? receiver;
  @JsonKey(name: '_receiver')
  final Element? receiverElement;

  /// [description] /// A comment to be inserted in the diagram.
  @JsonKey(name: 'description')
  final FhirMarkdown? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [initiatorActive] /// Whether the initiator is deactivated right after the transaction.
  @JsonKey(name: 'initiatorActive')
  final FhirBoolean? initiatorActive;
  @JsonKey(name: '_initiatorActive')
  final Element? initiatorActiveElement;

  /// [receiverActive] /// Whether the receiver is deactivated right after the transaction.
  @JsonKey(name: 'receiverActive')
  final FhirBoolean? receiverActive;
  @JsonKey(name: '_receiverActive')
  final Element? receiverActiveElement;

  /// [request] /// Each resource instance used by the initiator.
  @JsonKey(name: 'request')
  final ExampleScenarioContainedInstance? request;

  /// [response] /// Each resource instance used by the responder.
  @JsonKey(name: 'response')
  final ExampleScenarioContainedInstance? response;
  factory ExampleScenarioOperation.fromJson(Map<String, dynamic> json) =>
      _$ExampleScenarioOperationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ExampleScenarioOperationToJson(this);

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
@JsonSerializable()
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
  }) : super(fhirType: 'ExampleScenarioAlternative');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [title] /// The label to display for the alternative that gives a sense of the
  /// circumstance in which the alternative should be invoked.
  @JsonKey(name: 'title')
  final FhirString title;
  @JsonKey(name: '_title')
  final Element? titleElement;

  /// [description] /// A human-readable description of the alternative explaining when the
  /// alternative should occur rather than the base step.
  @JsonKey(name: 'description')
  final FhirMarkdown? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [step] /// What happens in each alternative option.
  @JsonKey(name: 'step')
  final List<ExampleScenarioStep>? step;
  factory ExampleScenarioAlternative.fromJson(Map<String, dynamic> json) =>
      _$ExampleScenarioAlternativeFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ExampleScenarioAlternativeToJson(this);

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
