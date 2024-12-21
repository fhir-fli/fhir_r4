import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ExampleScenario]
/// Example of workflow instance.
class ExampleScenario extends DomainResource {
  /// Primary constructor for
  /// [ExampleScenario]

  const ExampleScenario({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
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
  }) : super(
          resourceType: R4ResourceType.ExampleScenario,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExampleScenario.fromJson(
    Map<String, dynamic> json,
  ) {
    return ExampleScenario(
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
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
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
      copyright: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'copyright',
        FhirMarkdown.fromJson,
      ),
      purpose: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'purpose',
        FhirMarkdown.fromJson,
      ),
      actor: (json['actor'] as List<dynamic>?)
          ?.map<ExampleScenarioActor>(
            (v) => ExampleScenarioActor.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      instance: (json['instance'] as List<dynamic>?)
          ?.map<ExampleScenarioInstance>(
            (v) => ExampleScenarioInstance.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      process: (json['process'] as List<dynamic>?)
          ?.map<ExampleScenarioProcess>(
            (v) => ExampleScenarioProcess.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      workflow: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'workflow',
        FhirCanonical.fromJson,
      ),
    );
  }

  /// Deserialize [ExampleScenario]
  /// from a [String] or [YamlMap] object
  factory ExampleScenario.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExampleScenario.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExampleScenario.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExampleScenario '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExampleScenario]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExampleScenario.fromJsonString(
    String source,
  ) {
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

    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    if (version != null) {
      addField('version', version);
    }

    if (name != null) {
      addField('name', name);
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

    if (useContext != null && useContext!.isNotEmpty) {
      json['useContext'] = useContext!.map((e) => e.toJson()).toList();
    }

    if (jurisdiction != null && jurisdiction!.isNotEmpty) {
      json['jurisdiction'] = jurisdiction!.map((e) => e.toJson()).toList();
    }

    if (copyright != null) {
      addField('copyright', copyright);
    }

    if (purpose != null) {
      addField('purpose', purpose);
    }

    if (actor != null && actor!.isNotEmpty) {
      json['actor'] = actor!.map((e) => e.toJson()).toList();
    }

    if (instance != null && instance!.isNotEmpty) {
      json['instance'] = instance!.map((e) => e.toJson()).toList();
    }

    if (process != null && process!.isNotEmpty) {
      json['process'] = process!.map((e) => e.toJson()).toList();
    }

    if (workflow != null && workflow!.isNotEmpty) {
      final fieldJson0 = workflow!.map((e) => e.toJson()).toList();
      json['workflow'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_workflow'] = fieldJson0.map((e) => e['_value']).toList();
      }
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
    );
  }
}

/// [ExampleScenarioActor]
/// Actor participating in the resource.
class ExampleScenarioActor extends BackboneElement {
  /// Primary constructor for
  /// [ExampleScenarioActor]

  const ExampleScenarioActor({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.actorId,
    required this.type,
    this.name,
    this.description,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExampleScenarioActor.fromJson(
    Map<String, dynamic> json,
  ) {
    return ExampleScenarioActor(
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
      actorId: JsonParser.parsePrimitive<FhirString>(
        json,
        'actorId',
        FhirString.fromJson,
      )!,
      type: JsonParser.parsePrimitive<ExampleScenarioActorType>(
        json,
        'type',
        ExampleScenarioActorType.fromJson,
      )!,
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
      ),
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
      ),
    );
  }

  /// Deserialize [ExampleScenarioActor]
  /// from a [String] or [YamlMap] object
  factory ExampleScenarioActor.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExampleScenarioActor.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExampleScenarioActor.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExampleScenarioActor '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExampleScenarioActor]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExampleScenarioActor.fromJsonString(
    String source,
  ) {
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

    addField('actorId', actorId);
    addField('type', type);
    if (name != null) {
      addField('name', name);
    }

    if (description != null) {
      addField('description', description);
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
  }) {
    return ExampleScenarioActor(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      actorId: actorId ?? this.actorId,
      type: type ?? this.type,
      name: name ?? this.name,
      description: description ?? this.description,
    );
  }
}

/// [ExampleScenarioInstance]
/// Each resource and each version that is present in the workflow.
class ExampleScenarioInstance extends BackboneElement {
  /// Primary constructor for
  /// [ExampleScenarioInstance]

  const ExampleScenarioInstance({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.resourceId,
    required this.resourceType,
    this.name,
    this.description,
    this.version,
    this.containedInstance,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExampleScenarioInstance.fromJson(
    Map<String, dynamic> json,
  ) {
    return ExampleScenarioInstance(
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
      resourceId: JsonParser.parsePrimitive<FhirString>(
        json,
        'resourceId',
        FhirString.fromJson,
      )!,
      resourceType: JsonParser.parsePrimitive<FhirCode>(
        json,
        'resourceType',
        FhirCode.fromJson,
      )!,
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
      ),
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
      ),
      version: (json['version'] as List<dynamic>?)
          ?.map<ExampleScenarioVersion>(
            (v) => ExampleScenarioVersion.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      containedInstance: (json['containedInstance'] as List<dynamic>?)
          ?.map<ExampleScenarioContainedInstance>(
            (v) => ExampleScenarioContainedInstance.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ExampleScenarioInstance]
  /// from a [String] or [YamlMap] object
  factory ExampleScenarioInstance.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExampleScenarioInstance.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExampleScenarioInstance.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExampleScenarioInstance '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExampleScenarioInstance]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExampleScenarioInstance.fromJsonString(
    String source,
  ) {
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

    addField('resourceId', resourceId);
    addField('resourceType', resourceType);
    if (name != null) {
      addField('name', name);
    }

    if (description != null) {
      addField('description', description);
    }

    if (version != null && version!.isNotEmpty) {
      json['version'] = version!.map((e) => e.toJson()).toList();
    }

    if (containedInstance != null && containedInstance!.isNotEmpty) {
      json['containedInstance'] =
          containedInstance!.map((e) => e.toJson()).toList();
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
    );
  }
}

/// [ExampleScenarioVersion]
/// A specific version of the resource.
class ExampleScenarioVersion extends BackboneElement {
  /// Primary constructor for
  /// [ExampleScenarioVersion]

  const ExampleScenarioVersion({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.versionId,
    required this.description,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExampleScenarioVersion.fromJson(
    Map<String, dynamic> json,
  ) {
    return ExampleScenarioVersion(
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
      versionId: JsonParser.parsePrimitive<FhirString>(
        json,
        'versionId',
        FhirString.fromJson,
      )!,
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
      )!,
    );
  }

  /// Deserialize [ExampleScenarioVersion]
  /// from a [String] or [YamlMap] object
  factory ExampleScenarioVersion.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExampleScenarioVersion.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExampleScenarioVersion.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExampleScenarioVersion '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExampleScenarioVersion]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExampleScenarioVersion.fromJsonString(
    String source,
  ) {
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

  /// [versionId]
  /// The identifier of a specific version of a resource.
  final FhirString versionId;

  /// [description]
  /// The description of the resource version.
  final FhirMarkdown description;
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

    addField('versionId', versionId);
    addField('description', description);
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
  }) {
    return ExampleScenarioVersion(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      versionId: versionId ?? this.versionId,
      description: description ?? this.description,
    );
  }
}

/// [ExampleScenarioContainedInstance]
/// Resources contained in the instance (e.g. the observations contained in
/// a bundle).
class ExampleScenarioContainedInstance extends BackboneElement {
  /// Primary constructor for
  /// [ExampleScenarioContainedInstance]

  const ExampleScenarioContainedInstance({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.resourceId,
    this.versionId,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExampleScenarioContainedInstance.fromJson(
    Map<String, dynamic> json,
  ) {
    return ExampleScenarioContainedInstance(
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
      resourceId: JsonParser.parsePrimitive<FhirString>(
        json,
        'resourceId',
        FhirString.fromJson,
      )!,
      versionId: JsonParser.parsePrimitive<FhirString>(
        json,
        'versionId',
        FhirString.fromJson,
      ),
    );
  }

  /// Deserialize [ExampleScenarioContainedInstance]
  /// from a [String] or [YamlMap] object
  factory ExampleScenarioContainedInstance.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExampleScenarioContainedInstance.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExampleScenarioContainedInstance.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExampleScenarioContainedInstance '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExampleScenarioContainedInstance]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExampleScenarioContainedInstance.fromJsonString(
    String source,
  ) {
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

  /// [resourceId]
  /// Each resource contained in the instance.
  final FhirString resourceId;

  /// [versionId]
  /// A specific version of a resource contained in the instance.
  final FhirString? versionId;
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

    addField('resourceId', resourceId);
    if (versionId != null) {
      addField('versionId', versionId);
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
  }) {
    return ExampleScenarioContainedInstance(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      resourceId: resourceId ?? this.resourceId,
      versionId: versionId ?? this.versionId,
    );
  }
}

/// [ExampleScenarioProcess]
/// Each major process - a group of operations.
class ExampleScenarioProcess extends BackboneElement {
  /// Primary constructor for
  /// [ExampleScenarioProcess]

  const ExampleScenarioProcess({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.title,
    this.description,
    this.preConditions,
    this.postConditions,
    this.step,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExampleScenarioProcess.fromJson(
    Map<String, dynamic> json,
  ) {
    return ExampleScenarioProcess(
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
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
      )!,
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
      ),
      preConditions: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'preConditions',
        FhirMarkdown.fromJson,
      ),
      postConditions: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'postConditions',
        FhirMarkdown.fromJson,
      ),
      step: (json['step'] as List<dynamic>?)
          ?.map<ExampleScenarioStep>(
            (v) => ExampleScenarioStep.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ExampleScenarioProcess]
  /// from a [String] or [YamlMap] object
  factory ExampleScenarioProcess.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExampleScenarioProcess.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExampleScenarioProcess.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExampleScenarioProcess '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExampleScenarioProcess]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExampleScenarioProcess.fromJsonString(
    String source,
  ) {
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

    addField('title', title);
    if (description != null) {
      addField('description', description);
    }

    if (preConditions != null) {
      addField('preConditions', preConditions);
    }

    if (postConditions != null) {
      addField('postConditions', postConditions);
    }

    if (step != null && step!.isNotEmpty) {
      json['step'] = step!.map((e) => e.toJson()).toList();
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
    );
  }
}

/// [ExampleScenarioStep]
/// Each step of the process.
class ExampleScenarioStep extends BackboneElement {
  /// Primary constructor for
  /// [ExampleScenarioStep]

  const ExampleScenarioStep({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.process,
    this.pause,
    this.operation,
    this.alternative,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExampleScenarioStep.fromJson(
    Map<String, dynamic> json,
  ) {
    return ExampleScenarioStep(
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
      process: (json['process'] as List<dynamic>?)
          ?.map<ExampleScenarioProcess>(
            (v) => ExampleScenarioProcess.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      pause: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'pause',
        FhirBoolean.fromJson,
      ),
      operation: JsonParser.parseObject<ExampleScenarioOperation>(
        json,
        'operation',
        ExampleScenarioOperation.fromJson,
      ),
      alternative: (json['alternative'] as List<dynamic>?)
          ?.map<ExampleScenarioAlternative>(
            (v) => ExampleScenarioAlternative.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ExampleScenarioStep]
  /// from a [String] or [YamlMap] object
  factory ExampleScenarioStep.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExampleScenarioStep.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExampleScenarioStep.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExampleScenarioStep '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExampleScenarioStep]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExampleScenarioStep.fromJsonString(
    String source,
  ) {
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

    if (process != null && process!.isNotEmpty) {
      json['process'] = process!.map((e) => e.toJson()).toList();
    }

    if (pause != null) {
      addField('pause', pause);
    }

    if (operation != null) {
      json['operation'] = operation!.toJson();
    }

    if (alternative != null && alternative!.isNotEmpty) {
      json['alternative'] = alternative!.map((e) => e.toJson()).toList();
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
  }) {
    return ExampleScenarioStep(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      process: process ?? this.process,
      pause: pause ?? this.pause,
      operation: operation ?? this.operation,
      alternative: alternative ?? this.alternative,
    );
  }
}

/// [ExampleScenarioOperation]
/// Each interaction or action.
class ExampleScenarioOperation extends BackboneElement {
  /// Primary constructor for
  /// [ExampleScenarioOperation]

  const ExampleScenarioOperation({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.number,
    this.type,
    this.name,
    this.initiator,
    this.receiver,
    this.description,
    this.initiatorActive,
    this.receiverActive,
    this.request,
    this.response,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExampleScenarioOperation.fromJson(
    Map<String, dynamic> json,
  ) {
    return ExampleScenarioOperation(
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
      number: JsonParser.parsePrimitive<FhirString>(
        json,
        'number',
        FhirString.fromJson,
      )!,
      type: JsonParser.parsePrimitive<FhirString>(
        json,
        'type',
        FhirString.fromJson,
      ),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
      ),
      initiator: JsonParser.parsePrimitive<FhirString>(
        json,
        'initiator',
        FhirString.fromJson,
      ),
      receiver: JsonParser.parsePrimitive<FhirString>(
        json,
        'receiver',
        FhirString.fromJson,
      ),
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
      ),
      initiatorActive: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'initiatorActive',
        FhirBoolean.fromJson,
      ),
      receiverActive: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'receiverActive',
        FhirBoolean.fromJson,
      ),
      request: JsonParser.parseObject<ExampleScenarioContainedInstance>(
        json,
        'request',
        ExampleScenarioContainedInstance.fromJson,
      ),
      response: JsonParser.parseObject<ExampleScenarioContainedInstance>(
        json,
        'response',
        ExampleScenarioContainedInstance.fromJson,
      ),
    );
  }

  /// Deserialize [ExampleScenarioOperation]
  /// from a [String] or [YamlMap] object
  factory ExampleScenarioOperation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExampleScenarioOperation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExampleScenarioOperation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExampleScenarioOperation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExampleScenarioOperation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExampleScenarioOperation.fromJsonString(
    String source,
  ) {
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

  /// [request]
  /// Each resource instance used by the initiator.
  final ExampleScenarioContainedInstance? request;

  /// [response]
  /// Each resource instance used by the responder.
  final ExampleScenarioContainedInstance? response;
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

    addField('number', number);
    if (type != null) {
      addField('type', type);
    }

    if (name != null) {
      addField('name', name);
    }

    if (initiator != null) {
      addField('initiator', initiator);
    }

    if (receiver != null) {
      addField('receiver', receiver);
    }

    if (description != null) {
      addField('description', description);
    }

    if (initiatorActive != null) {
      addField('initiatorActive', initiatorActive);
    }

    if (receiverActive != null) {
      addField('receiverActive', receiverActive);
    }

    if (request != null) {
      json['request'] = request!.toJson();
    }

    if (response != null) {
      json['response'] = response!.toJson();
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
    ExampleScenarioContainedInstance? request,
    ExampleScenarioContainedInstance? response,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
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
      request: request ?? this.request,
      response: response ?? this.response,
    );
  }
}

/// [ExampleScenarioAlternative]
/// Indicates an alternative step that can be taken instead of the
/// operations on the base step in exceptional/atypical circumstances.
class ExampleScenarioAlternative extends BackboneElement {
  /// Primary constructor for
  /// [ExampleScenarioAlternative]

  const ExampleScenarioAlternative({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.title,
    this.description,
    this.step,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ExampleScenarioAlternative.fromJson(
    Map<String, dynamic> json,
  ) {
    return ExampleScenarioAlternative(
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
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
      )!,
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
      ),
      step: (json['step'] as List<dynamic>?)
          ?.map<ExampleScenarioStep>(
            (v) => ExampleScenarioStep.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ExampleScenarioAlternative]
  /// from a [String] or [YamlMap] object
  factory ExampleScenarioAlternative.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ExampleScenarioAlternative.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ExampleScenarioAlternative.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ExampleScenarioAlternative '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ExampleScenarioAlternative]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ExampleScenarioAlternative.fromJsonString(
    String source,
  ) {
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

  /// [title]
  /// The label to display for the alternative that gives a sense of the
  /// circumstance in which the alternative should be invoked.
  final FhirString title;

  /// [description]
  /// A human-readable description of the alternative explaining when the
  /// alternative should occur rather than the base step.
  final FhirMarkdown? description;

  /// [step]
  /// What happens in each alternative option.
  final List<ExampleScenarioStep>? step;
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

    addField('title', title);
    if (description != null) {
      addField('description', description);
    }

    if (step != null && step!.isNotEmpty) {
      json['step'] = step!.map((e) => e.toJson()).toList();
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
    List<ExampleScenarioStep>? step,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ExampleScenarioAlternative(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      title: title ?? this.title,
      description: description ?? this.description,
      step: step ?? this.step,
    );
  }
}
