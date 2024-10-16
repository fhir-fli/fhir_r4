import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ExampleScenario]
/// Example of workflow instance.
class ExampleScenario extends DomainResource {
  /// Primary constructor for [ExampleScenario]

  ExampleScenario({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
    super.modifierExtension,
    this.url,
    this.identifier,
    this.version,
    this.name,
    required this.status,
    this.experimental,
    this.date,
    this.publisher,
    this.contact,
    this.useContext,
    this.jurisdiction,
    this.copyright,
    this.purpose,
    this.actor,
    this.instance,
    this.process,
    this.workflow,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.ExampleScenario,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExampleScenario.fromJson(Map<String, dynamic> json) {
    return ExampleScenario(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson({
              'value': json['implicitRules'],
              '_value': json['_implicitRules'],
            })
          : null,
      language: json['language'] != null
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
      url: json['url'] != null
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
      version: json['version'] != null
          ? FhirString.fromJson({
              'value': json['version'],
              '_value': json['_version'],
            })
          : null,
      name: json['name'] != null
          ? FhirString.fromJson({
              'value': json['name'],
              '_value': json['_name'],
            })
          : null,
      status: PublicationStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      experimental: json['experimental'] != null
          ? FhirBoolean.fromJson({
              'value': json['experimental'],
              '_value': json['_experimental'],
            })
          : null,
      date: json['date'] != null
          ? FhirDateTime.fromJson({
              'value': json['date'],
              '_value': json['_date'],
            })
          : null,
      publisher: json['publisher'] != null
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
      copyright: json['copyright'] != null
          ? FhirMarkdown.fromJson({
              'value': json['copyright'],
              '_value': json['_copyright'],
            })
          : null,
      purpose: json['purpose'] != null
          ? FhirMarkdown.fromJson({
              'value': json['purpose'],
              '_value': json['_purpose'],
            })
          : null,
      actor: json['actor'] != null
          ? (json['actor'] as List<dynamic>)
              .map<ExampleScenarioActor>(
                (v) => ExampleScenarioActor.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      instance: json['instance'] != null
          ? (json['instance'] as List<dynamic>)
              .map<ExampleScenarioInstance>(
                (v) => ExampleScenarioInstance.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      process: json['process'] != null
          ? (json['process'] as List<dynamic>)
              .map<ExampleScenarioProcess>(
                (v) => ExampleScenarioProcess.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      workflow: parsePrimitiveList<FhirCanonical>(
          json['workflow'] as List<dynamic>?,
          json['_workflow'] as List<dynamic>?,
          fromJson: FhirCanonical.fromJson),
    );
  }

  /// Deserialize [ExampleScenario] from a [String]
  /// or [YamlMap] object
  factory ExampleScenario.fromYaml(dynamic yaml) => yaml is String
      ? ExampleScenario.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ExampleScenario.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('ExampleScenario cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ExampleScenario]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExampleScenario.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExampleScenario.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ExampleScenario';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [url]
  /// An absolute URI that is used to identify this example scenario when it
  /// is referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and
  /// SHOULD be a literal address at which at which an authoritative instance
  /// of this example scenario is (or will be) published. This URL can be the
  /// target of a canonical reference. It SHALL remain the same when the
  /// example scenario is stored on different servers.
  final FhirUri? url;

  /// [identifier]
  /// A formal identifier that is used to identify this example scenario when
  /// it is represented in other formats, or referenced in a specification,
  /// model, design or an instance.
  final List<Identifier>? identifier;

  /// [version]
  /// The identifier that is used to identify this version of the example
  /// scenario when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the example scenario
  /// author and is not expected to be globally unique. For example, it might
  /// be a timestamp (e.g. yyyymmdd) if a managed version is not available.
  /// There is also no expectation that versions can be placed in a
  /// lexicographical sequence.
  final FhirString? version;

  /// [name]
  /// A natural language name identifying the example scenario. This name
  /// should be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString? name;

  /// [status]
  /// The status of this example scenario. Enables tracking the life-cycle of
  /// the content.
  final PublicationStatus status;

  /// [experimental]
  /// A Boolean value to indicate that this example scenario is authored for
  /// testing purposes (or education/evaluation/marketing) and is not
  /// intended to be used for genuine usage.
  final FhirBoolean? experimental;

  /// [date]
  /// The date (and optionally time) when the example scenario was published.
  /// The date must change when the business version changes and it must
  /// change if the status code changes. In addition, it should change when
  /// the substantive content of the example scenario changes. (e.g. the
  /// 'content logical definition').
  final FhirDateTime? date;

  /// [publisher]
  /// The name of the organization or individual that published the example
  /// scenario.
  final FhirString? publisher;

  /// [contact]
  /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [useContext]
  /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories
  /// (gender, age, ...) or may be references to specific programs (insurance
  /// plans, studies, ...) and may be used to assist with indexing and
  /// searching for appropriate example scenario instances.
  final List<UsageContext>? useContext;

  /// [jurisdiction]
  /// A legal or geographic region in which the example scenario is intended
  /// to be used.
  final List<CodeableConcept>? jurisdiction;

  /// [copyright]
  /// A copyright statement relating to the example scenario and/or its
  /// contents. Copyright statements are generally legal restrictions on the
  /// use and publishing of the example scenario.
  final FhirMarkdown? copyright;

  /// [purpose]
  /// What the example scenario resource is created for. This should not be
  /// used to show the business purpose of the scenario itself, but the
  /// purpose of documenting a scenario.
  final FhirMarkdown? purpose;

  /// [actor]
  /// Actor participating in the resource.
  final List<ExampleScenarioActor>? actor;

  /// [instance]
  /// Each resource and each version that is present in the workflow.
  final List<ExampleScenarioInstance>? instance;

  /// [process]
  /// Each major process - a group of operations.
  final List<ExampleScenarioProcess>? process;

  /// [workflow]
  /// Another nested workflow.
  final List<FhirCanonical>? workflow;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (url?.value != null) {
      json['url'] = url!.toJson();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map((Identifier v) => v.toJson()).toList();
    }
    if (version?.value != null) {
      json['version'] = version!.toJson();
    }
    if (name?.value != null) {
      json['name'] = name!.toJson();
    }
    json['status'] = status.toJson();
    if (experimental?.value != null) {
      json['experimental'] = experimental!.toJson();
    }
    if (date?.value != null) {
      json['date'] = date!.toJson();
    }
    if (publisher?.value != null) {
      json['publisher'] = publisher!.toJson();
    }
    if (contact != null && contact!.isNotEmpty) {
      json['contact'] = contact!.map((ContactDetail v) => v.toJson()).toList();
    }
    if (useContext != null && useContext!.isNotEmpty) {
      json['useContext'] =
          useContext!.map((UsageContext v) => v.toJson()).toList();
    }
    if (jurisdiction != null && jurisdiction!.isNotEmpty) {
      json['jurisdiction'] =
          jurisdiction!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (copyright?.value != null) {
      json['copyright'] = copyright!.toJson();
    }
    if (purpose?.value != null) {
      json['purpose'] = purpose!.toJson();
    }
    if (actor != null && actor!.isNotEmpty) {
      json['actor'] =
          actor!.map((ExampleScenarioActor v) => v.toJson()).toList();
    }
    if (instance != null && instance!.isNotEmpty) {
      json['instance'] =
          instance!.map((ExampleScenarioInstance v) => v.toJson()).toList();
    }
    if (process != null && process!.isNotEmpty) {
      json['process'] =
          process!.map((ExampleScenarioProcess v) => v.toJson()).toList();
    }
    if (workflow != null && workflow!.isNotEmpty) {
      json['workflow'] =
          workflow!.map((FhirCanonical v) => v.toJson()).toList();
    }
    return json;
  }

  @override
  ExampleScenario clone() => throw UnimplementedError();
  @override
  ExampleScenario copyWith({
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
    PublicationStatus? status,
    FhirBoolean? experimental,
    FhirDateTime? date,
    FhirString? publisher,
    List<ContactDetail>? contact,
    List<UsageContext>? useContext,
    List<CodeableConcept>? jurisdiction,
    FhirMarkdown? copyright,
    FhirMarkdown? purpose,
    List<ExampleScenarioActor>? actor,
    List<ExampleScenarioInstance>? instance,
    List<ExampleScenarioProcess>? process,
    List<FhirCanonical>? workflow,
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
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      url: url ?? this.url,
      identifier: identifier ?? this.identifier,
      version: version ?? this.version,
      name: name ?? this.name,
      status: status ?? this.status,
      experimental: experimental ?? this.experimental,
      date: date ?? this.date,
      publisher: publisher ?? this.publisher,
      contact: contact ?? this.contact,
      useContext: useContext ?? this.useContext,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      copyright: copyright ?? this.copyright,
      purpose: purpose ?? this.purpose,
      actor: actor ?? this.actor,
      instance: instance ?? this.instance,
      process: process ?? this.process,
      workflow: workflow ?? this.workflow,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ExampleScenarioActor]
/// Actor participating in the resource.
class ExampleScenarioActor extends BackboneElement {
  /// Primary constructor for [ExampleScenarioActor]

  ExampleScenarioActor({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.actorId,
    required this.type,
    this.name,
    this.description,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExampleScenarioActor.fromJson(Map<String, dynamic> json) {
    return ExampleScenarioActor(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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
      actorId: FhirString.fromJson({
        'value': json['actorId'],
        '_value': json['_actorId'],
      }),
      type: ExampleScenarioActorType.fromJson({
        'value': json['type'],
        '_value': json['_type'],
      }),
      name: json['name'] != null
          ? FhirString.fromJson({
              'value': json['name'],
              '_value': json['_name'],
            })
          : null,
      description: json['description'] != null
          ? FhirMarkdown.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
    );
  }

  /// Deserialize [ExampleScenarioActor] from a [String]
  /// or [YamlMap] object
  factory ExampleScenarioActor.fromYaml(dynamic yaml) => yaml is String
      ? ExampleScenarioActor.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ExampleScenarioActor.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ExampleScenarioActor cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ExampleScenarioActor]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExampleScenarioActor.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExampleScenarioActor.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ExampleScenarioActor';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [actorId]
  /// ID or acronym of actor.
  final FhirString actorId;

  /// [type]
  /// The type of actor - person or system.
  final ExampleScenarioActorType type;

  /// [name]
  /// The name of the actor as shown in the page.
  final FhirString? name;

  /// [description]
  /// The description of the actor.
  final FhirMarkdown? description;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['actorId'] = actorId.toJson();
    json['type'] = type.toJson();
    if (name?.value != null) {
      json['name'] = name!.toJson();
    }
    if (description?.value != null) {
      json['description'] = description!.toJson();
    }
    return json;
  }

  @override
  ExampleScenarioActor clone() => throw UnimplementedError();
  @override
  ExampleScenarioActor copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? actorId,
    ExampleScenarioActorType? type,
    FhirString? name,
    FhirMarkdown? description,
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
      type: type ?? this.type,
      name: name ?? this.name,
      description: description ?? this.description,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ExampleScenarioInstance]
/// Each resource and each version that is present in the workflow.
class ExampleScenarioInstance extends BackboneElement {
  /// Primary constructor for [ExampleScenarioInstance]

  ExampleScenarioInstance({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.resourceId,
    required this.resourceType,
    this.name,
    this.description,
    this.version,
    this.containedInstance,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExampleScenarioInstance.fromJson(Map<String, dynamic> json) {
    return ExampleScenarioInstance(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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
      resourceId: FhirString.fromJson({
        'value': json['resourceId'],
        '_value': json['_resourceId'],
      }),
      resourceType: FhirCode.fromJson({
        'value': json['resourceType'],
        '_value': json['_resourceType'],
      }),
      name: json['name'] != null
          ? FhirString.fromJson({
              'value': json['name'],
              '_value': json['_name'],
            })
          : null,
      description: json['description'] != null
          ? FhirMarkdown.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      version: json['version'] != null
          ? (json['version'] as List<dynamic>)
              .map<ExampleScenarioVersion>(
                (v) => ExampleScenarioVersion.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      containedInstance: json['containedInstance'] != null
          ? (json['containedInstance'] as List<dynamic>)
              .map<ExampleScenarioContainedInstance>(
                (v) => ExampleScenarioContainedInstance.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ExampleScenarioInstance] from a [String]
  /// or [YamlMap] object
  factory ExampleScenarioInstance.fromYaml(dynamic yaml) => yaml is String
      ? ExampleScenarioInstance.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ExampleScenarioInstance.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ExampleScenarioInstance cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ExampleScenarioInstance]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExampleScenarioInstance.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExampleScenarioInstance.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ExampleScenarioInstance';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [resourceId]
  /// The id of the resource for referencing.
  final FhirString resourceId;

  /// [resourceType]
  /// The type of the resource.
  final FhirCode resourceType;

  /// [name]
  /// A short name for the resource instance.
  final FhirString? name;

  /// [description]
  /// Human-friendly description of the resource instance.
  final FhirMarkdown? description;

  /// [version]
  /// A specific version of the resource.
  final List<ExampleScenarioVersion>? version;

  /// [containedInstance]
  /// Resources contained in the instance (e.g. the observations contained in
  /// a bundle).
  final List<ExampleScenarioContainedInstance>? containedInstance;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['resourceId'] = resourceId.toJson();
    json['resourceType'] = resourceType.toJson();
    if (name?.value != null) {
      json['name'] = name!.toJson();
    }
    if (description?.value != null) {
      json['description'] = description!.toJson();
    }
    if (version != null && version!.isNotEmpty) {
      json['version'] =
          version!.map((ExampleScenarioVersion v) => v.toJson()).toList();
    }
    if (containedInstance != null && containedInstance!.isNotEmpty) {
      json['containedInstance'] = containedInstance!
          .map((ExampleScenarioContainedInstance v) => v.toJson())
          .toList();
    }
    return json;
  }

  @override
  ExampleScenarioInstance clone() => throw UnimplementedError();
  @override
  ExampleScenarioInstance copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? resourceId,
    FhirCode? resourceType,
    FhirString? name,
    FhirMarkdown? description,
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
      resourceType: resourceType ?? this.resourceType,
      name: name ?? this.name,
      description: description ?? this.description,
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
}

/// [ExampleScenarioVersion]
/// A specific version of the resource.
class ExampleScenarioVersion extends BackboneElement {
  /// Primary constructor for [ExampleScenarioVersion]

  ExampleScenarioVersion({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.versionId,
    required this.description,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExampleScenarioVersion.fromJson(Map<String, dynamic> json) {
    return ExampleScenarioVersion(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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
      versionId: FhirString.fromJson({
        'value': json['versionId'],
        '_value': json['_versionId'],
      }),
      description: FhirMarkdown.fromJson({
        'value': json['description'],
        '_value': json['_description'],
      }),
    );
  }

  /// Deserialize [ExampleScenarioVersion] from a [String]
  /// or [YamlMap] object
  factory ExampleScenarioVersion.fromYaml(dynamic yaml) => yaml is String
      ? ExampleScenarioVersion.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ExampleScenarioVersion.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ExampleScenarioVersion cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ExampleScenarioVersion]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExampleScenarioVersion.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExampleScenarioVersion.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ExampleScenarioVersion';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [versionId]
  /// The identifier of a specific version of a resource.
  final FhirString versionId;

  /// [description]
  /// The description of the resource version.
  final FhirMarkdown description;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['versionId'] = versionId.toJson();
    json['description'] = description.toJson();
    return json;
  }

  @override
  ExampleScenarioVersion clone() => throw UnimplementedError();
  @override
  ExampleScenarioVersion copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? versionId,
    FhirMarkdown? description,
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
      description: description ?? this.description,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ExampleScenarioContainedInstance]
/// Resources contained in the instance (e.g. the observations contained in
/// a bundle).
class ExampleScenarioContainedInstance extends BackboneElement {
  /// Primary constructor for [ExampleScenarioContainedInstance]

  ExampleScenarioContainedInstance({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.resourceId,
    this.versionId,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExampleScenarioContainedInstance.fromJson(Map<String, dynamic> json) {
    return ExampleScenarioContainedInstance(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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
      resourceId: FhirString.fromJson({
        'value': json['resourceId'],
        '_value': json['_resourceId'],
      }),
      versionId: json['versionId'] != null
          ? FhirString.fromJson({
              'value': json['versionId'],
              '_value': json['_versionId'],
            })
          : null,
    );
  }

  /// Deserialize [ExampleScenarioContainedInstance] from a [String]
  /// or [YamlMap] object
  factory ExampleScenarioContainedInstance.fromYaml(dynamic yaml) => yaml
          is String
      ? ExampleScenarioContainedInstance.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ExampleScenarioContainedInstance.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ExampleScenarioContainedInstance cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ExampleScenarioContainedInstance]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExampleScenarioContainedInstance.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExampleScenarioContainedInstance.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ExampleScenarioContainedInstance';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [resourceId]
  /// Each resource contained in the instance.
  final FhirString resourceId;

  /// [versionId]
  /// A specific version of a resource contained in the instance.
  final FhirString? versionId;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['resourceId'] = resourceId.toJson();
    if (versionId?.value != null) {
      json['versionId'] = versionId!.toJson();
    }
    return json;
  }

  @override
  ExampleScenarioContainedInstance clone() => throw UnimplementedError();
  @override
  ExampleScenarioContainedInstance copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? resourceId,
    FhirString? versionId,
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
      versionId: versionId ?? this.versionId,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ExampleScenarioProcess]
/// Each major process - a group of operations.
class ExampleScenarioProcess extends BackboneElement {
  /// Primary constructor for [ExampleScenarioProcess]

  ExampleScenarioProcess({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.title,
    this.description,
    this.preConditions,
    this.postConditions,
    this.step,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExampleScenarioProcess.fromJson(Map<String, dynamic> json) {
    return ExampleScenarioProcess(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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
      title: FhirString.fromJson({
        'value': json['title'],
        '_value': json['_title'],
      }),
      description: json['description'] != null
          ? FhirMarkdown.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      preConditions: json['preConditions'] != null
          ? FhirMarkdown.fromJson({
              'value': json['preConditions'],
              '_value': json['_preConditions'],
            })
          : null,
      postConditions: json['postConditions'] != null
          ? FhirMarkdown.fromJson({
              'value': json['postConditions'],
              '_value': json['_postConditions'],
            })
          : null,
      step: json['step'] != null
          ? (json['step'] as List<dynamic>)
              .map<ExampleScenarioStep>(
                (v) => ExampleScenarioStep.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ExampleScenarioProcess] from a [String]
  /// or [YamlMap] object
  factory ExampleScenarioProcess.fromYaml(dynamic yaml) => yaml is String
      ? ExampleScenarioProcess.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ExampleScenarioProcess.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ExampleScenarioProcess cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ExampleScenarioProcess]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExampleScenarioProcess.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExampleScenarioProcess.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ExampleScenarioProcess';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [title]
  /// The diagram title of the group of operations.
  final FhirString title;

  /// [description]
  /// A longer description of the group of operations.
  final FhirMarkdown? description;

  /// [preConditions]
  /// Description of initial status before the process starts.
  final FhirMarkdown? preConditions;

  /// [postConditions]
  /// Description of final status after the process ends.
  final FhirMarkdown? postConditions;

  /// [step]
  /// Each step of the process.
  final List<ExampleScenarioStep>? step;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['title'] = title.toJson();
    if (description?.value != null) {
      json['description'] = description!.toJson();
    }
    if (preConditions?.value != null) {
      json['preConditions'] = preConditions!.toJson();
    }
    if (postConditions?.value != null) {
      json['postConditions'] = postConditions!.toJson();
    }
    if (step != null && step!.isNotEmpty) {
      json['step'] = step!.map((ExampleScenarioStep v) => v.toJson()).toList();
    }
    return json;
  }

  @override
  ExampleScenarioProcess clone() => throw UnimplementedError();
  @override
  ExampleScenarioProcess copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? title,
    FhirMarkdown? description,
    FhirMarkdown? preConditions,
    FhirMarkdown? postConditions,
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
      description: description ?? this.description,
      preConditions: preConditions ?? this.preConditions,
      postConditions: postConditions ?? this.postConditions,
      step: step ?? this.step,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ExampleScenarioStep]
/// Each step of the process.
class ExampleScenarioStep extends BackboneElement {
  /// Primary constructor for [ExampleScenarioStep]

  ExampleScenarioStep({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.process,
    this.pause,
    this.operation,
    this.alternative,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExampleScenarioStep.fromJson(Map<String, dynamic> json) {
    return ExampleScenarioStep(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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
      process: json['process'] != null
          ? (json['process'] as List<dynamic>)
              .map<ExampleScenarioProcess>(
                (v) => ExampleScenarioProcess.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      pause: json['pause'] != null
          ? FhirBoolean.fromJson({
              'value': json['pause'],
              '_value': json['_pause'],
            })
          : null,
      operation: json['operation'] != null
          ? ExampleScenarioOperation.fromJson(
              json['operation'] as Map<String, dynamic>,
            )
          : null,
      alternative: json['alternative'] != null
          ? (json['alternative'] as List<dynamic>)
              .map<ExampleScenarioAlternative>(
                (v) => ExampleScenarioAlternative.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ExampleScenarioStep] from a [String]
  /// or [YamlMap] object
  factory ExampleScenarioStep.fromYaml(dynamic yaml) => yaml is String
      ? ExampleScenarioStep.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ExampleScenarioStep.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ExampleScenarioStep cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ExampleScenarioStep]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExampleScenarioStep.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExampleScenarioStep.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ExampleScenarioStep';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [process]
  /// Nested process.
  final List<ExampleScenarioProcess>? process;

  /// [pause]
  /// If there is a pause in the flow.
  final FhirBoolean? pause;

  /// [operation]
  /// Each interaction or action.
  final ExampleScenarioOperation? operation;

  /// [alternative]
  /// Indicates an alternative step that can be taken instead of the
  /// operations on the base step in exceptional/atypical circumstances.
  final List<ExampleScenarioAlternative>? alternative;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (process != null && process!.isNotEmpty) {
      json['process'] =
          process!.map((ExampleScenarioProcess v) => v.toJson()).toList();
    }
    if (pause?.value != null) {
      json['pause'] = pause!.toJson();
    }
    if (operation != null) {
      json['operation'] = operation!.toJson();
    }
    if (alternative != null && alternative!.isNotEmpty) {
      json['alternative'] = alternative!
          .map((ExampleScenarioAlternative v) => v.toJson())
          .toList();
    }
    return json;
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
}

/// [ExampleScenarioOperation]
/// Each interaction or action.
class ExampleScenarioOperation extends BackboneElement {
  /// Primary constructor for [ExampleScenarioOperation]

  ExampleScenarioOperation({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.number,
    this.type,
    this.name,
    this.initiator,
    this.receiver,
    this.description,
    this.initiatorActive,
    this.receiverActive,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExampleScenarioOperation.fromJson(Map<String, dynamic> json) {
    return ExampleScenarioOperation(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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
      number: FhirString.fromJson({
        'value': json['number'],
        '_value': json['_number'],
      }),
      type: json['type'] != null
          ? FhirString.fromJson({
              'value': json['type'],
              '_value': json['_type'],
            })
          : null,
      name: json['name'] != null
          ? FhirString.fromJson({
              'value': json['name'],
              '_value': json['_name'],
            })
          : null,
      initiator: json['initiator'] != null
          ? FhirString.fromJson({
              'value': json['initiator'],
              '_value': json['_initiator'],
            })
          : null,
      receiver: json['receiver'] != null
          ? FhirString.fromJson({
              'value': json['receiver'],
              '_value': json['_receiver'],
            })
          : null,
      description: json['description'] != null
          ? FhirMarkdown.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      initiatorActive: json['initiatorActive'] != null
          ? FhirBoolean.fromJson({
              'value': json['initiatorActive'],
              '_value': json['_initiatorActive'],
            })
          : null,
      receiverActive: json['receiverActive'] != null
          ? FhirBoolean.fromJson({
              'value': json['receiverActive'],
              '_value': json['_receiverActive'],
            })
          : null,
    );
  }

  /// Deserialize [ExampleScenarioOperation] from a [String]
  /// or [YamlMap] object
  factory ExampleScenarioOperation.fromYaml(dynamic yaml) => yaml is String
      ? ExampleScenarioOperation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ExampleScenarioOperation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ExampleScenarioOperation cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ExampleScenarioOperation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExampleScenarioOperation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExampleScenarioOperation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ExampleScenarioOperation';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [number]
  /// The sequential number of the interaction, e.g. 1.2.5.
  final FhirString number;

  /// [type]
  /// The type of operation - CRUD.
  final FhirString? type;

  /// [name]
  /// The human-friendly name of the interaction.
  final FhirString? name;

  /// [initiator]
  /// Who starts the transaction.
  final FhirString? initiator;

  /// [receiver]
  /// Who receives the transaction.
  final FhirString? receiver;

  /// [description]
  /// A comment to be inserted in the diagram.
  final FhirMarkdown? description;

  /// [initiatorActive]
  /// Whether the initiator is deactivated right after the transaction.
  final FhirBoolean? initiatorActive;

  /// [receiverActive]
  /// Whether the receiver is deactivated right after the transaction.
  final FhirBoolean? receiverActive;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['number'] = number.toJson();
    if (type?.value != null) {
      json['type'] = type!.toJson();
    }
    if (name?.value != null) {
      json['name'] = name!.toJson();
    }
    if (initiator?.value != null) {
      json['initiator'] = initiator!.toJson();
    }
    if (receiver?.value != null) {
      json['receiver'] = receiver!.toJson();
    }
    if (description?.value != null) {
      json['description'] = description!.toJson();
    }
    if (initiatorActive?.value != null) {
      json['initiatorActive'] = initiatorActive!.toJson();
    }
    if (receiverActive?.value != null) {
      json['receiverActive'] = receiverActive!.toJson();
    }
    return json;
  }

  @override
  ExampleScenarioOperation clone() => throw UnimplementedError();
  @override
  ExampleScenarioOperation copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? number,
    FhirString? type,
    FhirString? name,
    FhirString? initiator,
    FhirString? receiver,
    FhirMarkdown? description,
    FhirBoolean? initiatorActive,
    FhirBoolean? receiverActive,
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
      type: type ?? this.type,
      name: name ?? this.name,
      initiator: initiator ?? this.initiator,
      receiver: receiver ?? this.receiver,
      description: description ?? this.description,
      initiatorActive: initiatorActive ?? this.initiatorActive,
      receiverActive: receiverActive ?? this.receiverActive,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ExampleScenarioAlternative]
/// Indicates an alternative step that can be taken instead of the
/// operations on the base step in exceptional/atypical circumstances.
class ExampleScenarioAlternative extends BackboneElement {
  /// Primary constructor for [ExampleScenarioAlternative]

  ExampleScenarioAlternative({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.title,
    this.description,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExampleScenarioAlternative.fromJson(Map<String, dynamic> json) {
    return ExampleScenarioAlternative(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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
      title: FhirString.fromJson({
        'value': json['title'],
        '_value': json['_title'],
      }),
      description: json['description'] != null
          ? FhirMarkdown.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
    );
  }

  /// Deserialize [ExampleScenarioAlternative] from a [String]
  /// or [YamlMap] object
  factory ExampleScenarioAlternative.fromYaml(dynamic yaml) => yaml is String
      ? ExampleScenarioAlternative.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ExampleScenarioAlternative.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ExampleScenarioAlternative cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ExampleScenarioAlternative]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExampleScenarioAlternative.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ExampleScenarioAlternative.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ExampleScenarioAlternative';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [title]
  /// The label to display for the alternative that gives a sense of the
  /// circumstance in which the alternative should be invoked.
  final FhirString title;

  /// [description]
  /// A human-readable description of the alternative explaining when the
  /// alternative should occur rather than the base step.
  final FhirMarkdown? description;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['title'] = title.toJson();
    if (description?.value != null) {
      json['description'] = description!.toJson();
    }
    return json;
  }

  @override
  ExampleScenarioAlternative clone() => throw UnimplementedError();
  @override
  ExampleScenarioAlternative copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? title,
    FhirMarkdown? description,
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
      description: description ?? this.description,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
