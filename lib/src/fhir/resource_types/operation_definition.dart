import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [OperationDefinition]
/// A formal computable definition of an operation (on the RESTful
/// interface) or a named query (using the search interaction).
class OperationDefinition extends DomainResource {
  /// Primary constructor for [OperationDefinition]

  OperationDefinition({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
    super.modifierExtension,
    this.url,
    this.version,
    required this.name,
    this.title,
    required this.status,
    required this.kind,
    this.experimental,
    this.date,
    this.publisher,
    this.contact,
    this.description,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.affectsState,
    required this.code,
    this.comment,
    this.base,
    this.resource,
    required this.system,
    required this.type,
    required this.instance,
    this.inputProfile,
    this.outputProfile,
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
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory OperationDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    return OperationDefinition(
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
      version: json['version'] != null
          ? FhirString.fromJson({
              'value': json['version'],
              '_value': json['_version'],
            })
          : null,
      name: FhirString.fromJson({
        'value': json['name'],
        '_value': json['_name'],
      }),
      title: json['title'] != null
          ? FhirString.fromJson({
              'value': json['title'],
              '_value': json['_title'],
            })
          : null,
      status: PublicationStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      kind: OperationKind.fromJson({
        'value': json['kind'],
        '_value': json['_kind'],
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
      description: json['description'] != null
          ? FhirMarkdown.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
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
      purpose: json['purpose'] != null
          ? FhirMarkdown.fromJson({
              'value': json['purpose'],
              '_value': json['_purpose'],
            })
          : null,
      affectsState: json['affectsState'] != null
          ? FhirBoolean.fromJson({
              'value': json['affectsState'],
              '_value': json['_affectsState'],
            })
          : null,
      code: FhirCode.fromJson({
        'value': json['code'],
        '_value': json['_code'],
      }),
      comment: json['comment'] != null
          ? FhirMarkdown.fromJson({
              'value': json['comment'],
              '_value': json['_comment'],
            })
          : null,
      base: json['base'] != null
          ? FhirCanonical.fromJson({
              'value': json['base'],
              '_value': json['_base'],
            })
          : null,
      resource: parsePrimitiveList<FhirCode>(
        json['resource'] as List<dynamic>?,
        json['_resource'] as List<dynamic>?,
        fromJson: FhirCode.fromJson,
      ),
      system: FhirBoolean.fromJson({
        'value': json['system'],
        '_value': json['_system'],
      }),
      type: FhirBoolean.fromJson({
        'value': json['type'],
        '_value': json['_type'],
      }),
      instance: FhirBoolean.fromJson({
        'value': json['instance'],
        '_value': json['_instance'],
      }),
      inputProfile: json['inputProfile'] != null
          ? FhirCanonical.fromJson({
              'value': json['inputProfile'],
              '_value': json['_inputProfile'],
            })
          : null,
      outputProfile: json['outputProfile'] != null
          ? FhirCanonical.fromJson({
              'value': json['outputProfile'],
              '_value': json['_outputProfile'],
            })
          : null,
      parameter: json['parameter'] != null
          ? (json['parameter'] as List<dynamic>)
              .map<OperationDefinitionParameter>(
                (v) => OperationDefinitionParameter.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      overload: json['overload'] != null
          ? (json['overload'] as List<dynamic>)
              .map<OperationDefinitionOverload>(
                (v) => OperationDefinitionOverload.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [OperationDefinition] from a [String]
  /// or [YamlMap] object
  factory OperationDefinition.fromYaml(dynamic yaml) => yaml is String
      ? OperationDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? OperationDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'OperationDefinition cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [OperationDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory OperationDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return OperationDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'OperationDefinition';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [url]
  /// An absolute URI that is used to identify this operation definition when
  /// it is referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and
  /// SHOULD be a literal address at which at which an authoritative instance
  /// of this operation definition is (or will be) published. This URL can be
  /// the target of a canonical reference. It SHALL remain the same when the
  /// operation definition is stored on different servers.
  final FhirUri? url;

  /// [version]
  /// The identifier that is used to identify this version of the operation
  /// definition when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the operation
  /// definition author and is not expected to be globally unique. For
  /// example, it might be a timestamp (e.g. yyyymmdd) if a managed version
  /// is not available. There is also no expectation that versions can be
  /// placed in a lexicographical sequence.
  final FhirString? version;

  /// [name]
  /// A natural language name identifying the operation definition. This name
  /// should be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString name;

  /// [title]
  /// A short, descriptive, user-friendly title for the operation definition.
  final FhirString? title;

  /// [status]
  /// The status of this operation definition. Enables tracking the
  /// life-cycle of the content.
  final PublicationStatus status;

  /// [kind]
  /// Whether this is an operation or a named query.
  final OperationKind kind;

  /// [experimental]
  /// A Boolean value to indicate that this operation definition is authored
  /// for testing purposes (or education/evaluation/marketing) and is not
  /// intended to be used for genuine usage.
  final FhirBoolean? experimental;

  /// [date]
  /// The date (and optionally time) when the operation definition was
  /// published. The date must change when the business version changes and
  /// it must change if the status code changes. In addition, it should
  /// change when the substantive content of the operation definition
  /// changes.
  final FhirDateTime? date;

  /// [publisher]
  /// The name of the organization or individual that published the operation
  /// definition.
  final FhirString? publisher;

  /// [contact]
  /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [description]
  /// A free text natural language description of the operation definition
  /// from a consumer's perspective.
  final FhirMarkdown? description;

  /// [useContext]
  /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories
  /// (gender, age, ...) or may be references to specific programs (insurance
  /// plans, studies, ...) and may be used to assist with indexing and
  /// searching for appropriate operation definition instances.
  final List<UsageContext>? useContext;

  /// [jurisdiction]
  /// A legal or geographic region in which the operation definition is
  /// intended to be used.
  final List<CodeableConcept>? jurisdiction;

  /// [purpose]
  /// Explanation of why this operation definition is needed and why it has
  /// been designed as it has.
  final FhirMarkdown? purpose;

  /// [affectsState]
  /// Whether the operation affects state. Side effects such as producing
  /// audit trail entries do not count as 'affecting state'.
  final FhirBoolean? affectsState;

  /// [code]
  /// The name used to invoke the operation.
  final FhirCode code;

  /// [comment]
  /// Additional information about how to use this operation or named query.
  final FhirMarkdown? comment;

  /// [base]
  /// Indicates that this operation definition is a constraining profile on
  /// the base.
  final FhirCanonical? base;

  /// [resource]
  /// The types on which this operation can be executed.
  final List<FhirCode>? resource;

  /// [system]
  /// Indicates whether this operation or named query can be invoked at the
  /// system level (e.g. without needing to choose a resource type for the
  /// context).
  final FhirBoolean system;

  /// [type]
  /// Indicates whether this operation or named query can be invoked at the
  /// resource type level for any given resource type level (e.g. without
  /// needing to choose a specific resource id for the context).
  final FhirBoolean type;

  /// [instance]
  /// Indicates whether this operation can be invoked on a particular
  /// instance of one of the given types.
  final FhirBoolean instance;

  /// [inputProfile]
  /// Additional validation information for the in parameters - a single
  /// profile that covers all the parameters. The profile is a constraint on
  /// the parameters resource as a whole.
  final FhirCanonical? inputProfile;

  /// [outputProfile]
  /// Additional validation information for the out parameters - a single
  /// profile that covers all the parameters. The profile is a constraint on
  /// the parameters resource.
  final FhirCanonical? outputProfile;

  /// [parameter]
  /// The parameters for the operation/query.
  final List<OperationDefinitionParameter>? parameter;

  /// [overload]
  /// Defines an appropriate combination of parameters to use when invoking
  /// this operation, to help code generators when generating overloaded
  /// parameter sets for this operation.
  final List<OperationDefinitionOverload>? overload;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    if (implicitRules != null) {
      final fieldJson1 = implicitRules!.toJson();
      json['implicitRules'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_implicitRules'] = fieldJson1['_value'];
      }
    }

    if (language != null) {
      json['language'] = language!.toJson();
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
      final fieldJson7 = url!.toJson();
      json['url'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_url'] = fieldJson7['_value'];
      }
    }

    if (version != null) {
      final fieldJson8 = version!.toJson();
      json['version'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_version'] = fieldJson8['_value'];
      }
    }

    final fieldJson9 = name.toJson();
    json['name'] = fieldJson9['value'];
    if (fieldJson9['_value'] != null) {
      json['_name'] = fieldJson9['_value'];
    }

    if (title != null) {
      final fieldJson10 = title!.toJson();
      json['title'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_title'] = fieldJson10['_value'];
      }
    }

    json['status'] = status.toJson();

    json['kind'] = kind.toJson();

    if (experimental != null) {
      final fieldJson13 = experimental!.toJson();
      json['experimental'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_experimental'] = fieldJson13['_value'];
      }
    }

    if (date != null) {
      final fieldJson14 = date!.toJson();
      json['date'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_date'] = fieldJson14['_value'];
      }
    }

    if (publisher != null) {
      final fieldJson15 = publisher!.toJson();
      json['publisher'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_publisher'] = fieldJson15['_value'];
      }
    }

    if (contact != null && contact!.isNotEmpty) {
      json['contact'] = contact!.map((e) => e.toJson()).toList();
    }

    if (description != null) {
      final fieldJson17 = description!.toJson();
      json['description'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_description'] = fieldJson17['_value'];
      }
    }

    if (useContext != null && useContext!.isNotEmpty) {
      json['useContext'] = useContext!.map((e) => e.toJson()).toList();
    }

    if (jurisdiction != null && jurisdiction!.isNotEmpty) {
      json['jurisdiction'] = jurisdiction!.map((e) => e.toJson()).toList();
    }

    if (purpose != null) {
      final fieldJson20 = purpose!.toJson();
      json['purpose'] = fieldJson20['value'];
      if (fieldJson20['_value'] != null) {
        json['_purpose'] = fieldJson20['_value'];
      }
    }

    if (affectsState != null) {
      final fieldJson21 = affectsState!.toJson();
      json['affectsState'] = fieldJson21['value'];
      if (fieldJson21['_value'] != null) {
        json['_affectsState'] = fieldJson21['_value'];
      }
    }

    final fieldJson22 = code.toJson();
    json['code'] = fieldJson22['value'];
    if (fieldJson22['_value'] != null) {
      json['_code'] = fieldJson22['_value'];
    }

    if (comment != null) {
      final fieldJson23 = comment!.toJson();
      json['comment'] = fieldJson23['value'];
      if (fieldJson23['_value'] != null) {
        json['_comment'] = fieldJson23['_value'];
      }
    }

    if (base != null) {
      final fieldJson24 = base!.toJson();
      json['base'] = fieldJson24['value'];
      if (fieldJson24['_value'] != null) {
        json['_base'] = fieldJson24['_value'];
      }
    }

    if (resource != null && resource!.isNotEmpty) {
      final fieldJson25 = resource!.map((e) => e.toJson()).toList();
      json['resource'] = fieldJson25.map((e) => e['value']).toList();
      if (fieldJson25.any((e) => e['_value'] != null)) {
        json['_resource'] = fieldJson25.map((e) => e['_value']).toList();
      }
    }

    final fieldJson26 = system.toJson();
    json['system'] = fieldJson26['value'];
    if (fieldJson26['_value'] != null) {
      json['_system'] = fieldJson26['_value'];
    }

    final fieldJson27 = type.toJson();
    json['type'] = fieldJson27['value'];
    if (fieldJson27['_value'] != null) {
      json['_type'] = fieldJson27['_value'];
    }

    final fieldJson28 = instance.toJson();
    json['instance'] = fieldJson28['value'];
    if (fieldJson28['_value'] != null) {
      json['_instance'] = fieldJson28['_value'];
    }

    if (inputProfile != null) {
      final fieldJson29 = inputProfile!.toJson();
      json['inputProfile'] = fieldJson29['value'];
      if (fieldJson29['_value'] != null) {
        json['_inputProfile'] = fieldJson29['_value'];
      }
    }

    if (outputProfile != null) {
      final fieldJson30 = outputProfile!.toJson();
      json['outputProfile'] = fieldJson30['value'];
      if (fieldJson30['_value'] != null) {
        json['_outputProfile'] = fieldJson30['_value'];
      }
    }

    if (parameter != null && parameter!.isNotEmpty) {
      json['parameter'] = parameter!.map((e) => e.toJson()).toList();
    }

    if (overload != null && overload!.isNotEmpty) {
      json['overload'] = overload!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  OperationDefinition clone() => throw UnimplementedError();
  @override
  OperationDefinition copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? url,
    FhirString? version,
    FhirString? name,
    FhirString? title,
    PublicationStatus? status,
    OperationKind? kind,
    FhirBoolean? experimental,
    FhirDateTime? date,
    FhirString? publisher,
    List<ContactDetail>? contact,
    FhirMarkdown? description,
    List<UsageContext>? useContext,
    List<CodeableConcept>? jurisdiction,
    FhirMarkdown? purpose,
    FhirBoolean? affectsState,
    FhirCode? code,
    FhirMarkdown? comment,
    FhirCanonical? base,
    List<FhirCode>? resource,
    FhirBoolean? system,
    FhirBoolean? type,
    FhirBoolean? instance,
    FhirCanonical? inputProfile,
    FhirCanonical? outputProfile,
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
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      url: url ?? this.url,
      version: version ?? this.version,
      name: name ?? this.name,
      title: title ?? this.title,
      status: status ?? this.status,
      kind: kind ?? this.kind,
      experimental: experimental ?? this.experimental,
      date: date ?? this.date,
      publisher: publisher ?? this.publisher,
      contact: contact ?? this.contact,
      description: description ?? this.description,
      useContext: useContext ?? this.useContext,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      purpose: purpose ?? this.purpose,
      affectsState: affectsState ?? this.affectsState,
      code: code ?? this.code,
      comment: comment ?? this.comment,
      base: base ?? this.base,
      resource: resource ?? this.resource,
      system: system ?? this.system,
      type: type ?? this.type,
      instance: instance ?? this.instance,
      inputProfile: inputProfile ?? this.inputProfile,
      outputProfile: outputProfile ?? this.outputProfile,
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
}

/// [OperationDefinitionParameter]
/// The parameters for the operation/query.
class OperationDefinitionParameter extends BackboneElement {
  /// Primary constructor for [OperationDefinitionParameter]

  OperationDefinitionParameter({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.name,
    required this.use,
    required this.min,
    required this.max,
    this.documentation,
    this.type,
    this.targetProfile,
    this.searchType,
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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory OperationDefinitionParameter.fromJson(
    Map<String, dynamic> json,
  ) {
    return OperationDefinitionParameter(
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
      name: FhirCode.fromJson({
        'value': json['name'],
        '_value': json['_name'],
      }),
      use: OperationParameterUse.fromJson({
        'value': json['use'],
        '_value': json['_use'],
      }),
      min: FhirInteger.fromJson({
        'value': json['min'],
        '_value': json['_min'],
      }),
      max: FhirString.fromJson({
        'value': json['max'],
        '_value': json['_max'],
      }),
      documentation: json['documentation'] != null
          ? FhirString.fromJson({
              'value': json['documentation'],
              '_value': json['_documentation'],
            })
          : null,
      type: json['type'] != null
          ? FHIRAllTypes.fromJson({
              'value': json['type'],
              '_value': json['_type'],
            })
          : null,
      targetProfile: parsePrimitiveList<FhirCanonical>(
        json['targetProfile'] as List<dynamic>?,
        json['_targetProfile'] as List<dynamic>?,
        fromJson: FhirCanonical.fromJson,
      ),
      searchType: json['searchType'] != null
          ? SearchParamType.fromJson({
              'value': json['searchType'],
              '_value': json['_searchType'],
            })
          : null,
      binding: json['binding'] != null
          ? OperationDefinitionBinding.fromJson(
              json['binding'] as Map<String, dynamic>,
            )
          : null,
      referencedFrom: json['referencedFrom'] != null
          ? (json['referencedFrom'] as List<dynamic>)
              .map<OperationDefinitionReferencedFrom>(
                (v) => OperationDefinitionReferencedFrom.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      part_: json['part'] != null
          ? (json['part'] as List<dynamic>)
              .map<OperationDefinitionParameter>(
                (v) => OperationDefinitionParameter.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [OperationDefinitionParameter] from a [String]
  /// or [YamlMap] object
  factory OperationDefinitionParameter.fromYaml(dynamic yaml) => yaml is String
      ? OperationDefinitionParameter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? OperationDefinitionParameter.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'OperationDefinitionParameter cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [OperationDefinitionParameter]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory OperationDefinitionParameter.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return OperationDefinitionParameter.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'OperationDefinitionParameter';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [name]
  /// The name of used to identify the parameter.
  final FhirCode name;

  /// [use]
  /// Whether this is an input or an output parameter.
  final OperationParameterUse use;

  /// [min]
  /// The minimum number of times this parameter SHALL appear in the request
  /// or response.
  final FhirInteger min;

  /// [max]
  /// The maximum number of times this element is permitted to appear in the
  /// request or response.
  final FhirString max;

  /// [documentation]
  /// Describes the meaning or use of this parameter.
  final FhirString? documentation;

  /// [type]
  /// The type for this parameter.
  final FHIRAllTypes? type;

  /// [targetProfile]
  /// Used when the type is "Reference" or "canonical", and identifies a
  /// profile structure or implementation Guide that applies to the target of
  /// the reference this parameter refers to. If any profiles are specified,
  /// then the content must conform to at least one of them. The URL can be a
  /// local reference - to a contained StructureDefinition, or a reference to
  /// another StructureDefinition or Implementation Guide by a canonical URL.
  /// When an implementation guide is specified, the target resource SHALL
  /// conform to at least one profile defined in the implementation guide.
  final List<FhirCanonical>? targetProfile;

  /// [searchType]
  /// How the parameter is understood as a search parameter. This is only
  /// used if the parameter type is 'string'.
  final SearchParamType? searchType;

  /// [binding]
  /// Binds to a value set if this parameter is coded (code, Coding,
  /// CodeableConcept).
  final OperationDefinitionBinding? binding;

  /// [referencedFrom]
  /// Identifies other resource parameters within the operation invocation
  /// that are expected to resolve to this resource.
  final List<OperationDefinitionReferencedFrom>? referencedFrom;

  /// [part_]
  /// The parts of a nested Parameter.
  final List<OperationDefinitionParameter>? part_;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    final fieldJson2 = name.toJson();
    json['name'] = fieldJson2['value'];
    if (fieldJson2['_value'] != null) {
      json['_name'] = fieldJson2['_value'];
    }

    json['use'] = use.toJson();

    final fieldJson4 = min.toJson();
    json['min'] = fieldJson4['value'];
    if (fieldJson4['_value'] != null) {
      json['_min'] = fieldJson4['_value'];
    }

    final fieldJson5 = max.toJson();
    json['max'] = fieldJson5['value'];
    if (fieldJson5['_value'] != null) {
      json['_max'] = fieldJson5['_value'];
    }

    if (documentation != null) {
      final fieldJson6 = documentation!.toJson();
      json['documentation'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_documentation'] = fieldJson6['_value'];
      }
    }

    if (type != null) {
      json['type'] = type!.toJson();
    }

    if (targetProfile != null && targetProfile!.isNotEmpty) {
      final fieldJson8 = targetProfile!.map((e) => e.toJson()).toList();
      json['targetProfile'] = fieldJson8.map((e) => e['value']).toList();
      if (fieldJson8.any((e) => e['_value'] != null)) {
        json['_targetProfile'] = fieldJson8.map((e) => e['_value']).toList();
      }
    }

    if (searchType != null) {
      json['searchType'] = searchType!.toJson();
    }

    if (binding != null) {
      json['binding'] = binding!.toJson();
    }

    if (referencedFrom != null && referencedFrom!.isNotEmpty) {
      json['referencedFrom'] = referencedFrom!.map((e) => e.toJson()).toList();
    }

    if (part_ != null && part_!.isNotEmpty) {
      json['part'] = part_!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  OperationDefinitionParameter clone() => throw UnimplementedError();
  @override
  OperationDefinitionParameter copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? name,
    OperationParameterUse? use,
    FhirInteger? min,
    FhirString? max,
    FhirString? documentation,
    FHIRAllTypes? type,
    List<FhirCanonical>? targetProfile,
    SearchParamType? searchType,
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
      use: use ?? this.use,
      min: min ?? this.min,
      max: max ?? this.max,
      documentation: documentation ?? this.documentation,
      type: type ?? this.type,
      targetProfile: targetProfile ?? this.targetProfile,
      searchType: searchType ?? this.searchType,
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
}

/// [OperationDefinitionBinding]
/// Binds to a value set if this parameter is coded (code, Coding,
/// CodeableConcept).
class OperationDefinitionBinding extends BackboneElement {
  /// Primary constructor for [OperationDefinitionBinding]

  OperationDefinitionBinding({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.strength,
    required this.valueSet,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory OperationDefinitionBinding.fromJson(
    Map<String, dynamic> json,
  ) {
    return OperationDefinitionBinding(
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
      strength: BindingStrength.fromJson({
        'value': json['strength'],
        '_value': json['_strength'],
      }),
      valueSet: FhirCanonical.fromJson({
        'value': json['valueSet'],
        '_value': json['_valueSet'],
      }),
    );
  }

  /// Deserialize [OperationDefinitionBinding] from a [String]
  /// or [YamlMap] object
  factory OperationDefinitionBinding.fromYaml(dynamic yaml) => yaml is String
      ? OperationDefinitionBinding.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? OperationDefinitionBinding.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'OperationDefinitionBinding cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [OperationDefinitionBinding]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory OperationDefinitionBinding.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return OperationDefinitionBinding.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'OperationDefinitionBinding';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [strength]
  /// Indicates the degree of conformance expectations associated with this
  /// binding - that is, the degree to which the provided value set must be
  /// adhered to in the instances.
  final BindingStrength strength;

  /// [valueSet]
  /// Points to the value set or external definition (e.g. implicit value
  /// set) that identifies the set of codes to be used.
  final FhirCanonical valueSet;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['strength'] = strength.toJson();

    final fieldJson3 = valueSet.toJson();
    json['valueSet'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_valueSet'] = fieldJson3['_value'];
    }

    return json;
  }

  @override
  OperationDefinitionBinding clone() => throw UnimplementedError();
  @override
  OperationDefinitionBinding copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    BindingStrength? strength,
    FhirCanonical? valueSet,
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
      valueSet: valueSet ?? this.valueSet,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [OperationDefinitionReferencedFrom]
/// Identifies other resource parameters within the operation invocation
/// that are expected to resolve to this resource.
class OperationDefinitionReferencedFrom extends BackboneElement {
  /// Primary constructor for [OperationDefinitionReferencedFrom]

  OperationDefinitionReferencedFrom({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.source,
    this.sourceId,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory OperationDefinitionReferencedFrom.fromJson(
    Map<String, dynamic> json,
  ) {
    return OperationDefinitionReferencedFrom(
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
      source: FhirString.fromJson({
        'value': json['source'],
        '_value': json['_source'],
      }),
      sourceId: json['sourceId'] != null
          ? FhirString.fromJson({
              'value': json['sourceId'],
              '_value': json['_sourceId'],
            })
          : null,
    );
  }

  /// Deserialize [OperationDefinitionReferencedFrom] from a [String]
  /// or [YamlMap] object
  factory OperationDefinitionReferencedFrom.fromYaml(dynamic yaml) => yaml
          is String
      ? OperationDefinitionReferencedFrom.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? OperationDefinitionReferencedFrom.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'OperationDefinitionReferencedFrom cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [OperationDefinitionReferencedFrom]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory OperationDefinitionReferencedFrom.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return OperationDefinitionReferencedFrom.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'OperationDefinitionReferencedFrom';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [source]
  /// The name of the parameter or dot-separated path of parameter names
  /// pointing to the resource parameter that is expected to contain a
  /// reference to this resource.
  final FhirString source;

  /// [sourceId]
  /// The id of the element in the referencing resource that is expected to
  /// resolve to this resource.
  final FhirString? sourceId;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    final fieldJson2 = source.toJson();
    json['source'] = fieldJson2['value'];
    if (fieldJson2['_value'] != null) {
      json['_source'] = fieldJson2['_value'];
    }

    if (sourceId != null) {
      final fieldJson3 = sourceId!.toJson();
      json['sourceId'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_sourceId'] = fieldJson3['_value'];
      }
    }

    return json;
  }

  @override
  OperationDefinitionReferencedFrom clone() => throw UnimplementedError();
  @override
  OperationDefinitionReferencedFrom copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? source,
    FhirString? sourceId,
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
      sourceId: sourceId ?? this.sourceId,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [OperationDefinitionOverload]
/// Defines an appropriate combination of parameters to use when invoking
/// this operation, to help code generators when generating overloaded
/// parameter sets for this operation.
class OperationDefinitionOverload extends BackboneElement {
  /// Primary constructor for [OperationDefinitionOverload]

  OperationDefinitionOverload({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.parameterName,
    this.comment,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory OperationDefinitionOverload.fromJson(
    Map<String, dynamic> json,
  ) {
    return OperationDefinitionOverload(
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
      parameterName: parsePrimitiveList<FhirString>(
        json['parameterName'] as List<dynamic>?,
        json['_parameterName'] as List<dynamic>?,
        fromJson: FhirString.fromJson,
      ),
      comment: json['comment'] != null
          ? FhirString.fromJson({
              'value': json['comment'],
              '_value': json['_comment'],
            })
          : null,
    );
  }

  /// Deserialize [OperationDefinitionOverload] from a [String]
  /// or [YamlMap] object
  factory OperationDefinitionOverload.fromYaml(dynamic yaml) => yaml is String
      ? OperationDefinitionOverload.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? OperationDefinitionOverload.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'OperationDefinitionOverload cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [OperationDefinitionOverload]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory OperationDefinitionOverload.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return OperationDefinitionOverload.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'OperationDefinitionOverload';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [parameterName]
  /// Name of parameter to include in overload.
  final List<FhirString>? parameterName;

  /// [comment]
  /// Comments to go on overload.
  final FhirString? comment;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (parameterName != null && parameterName!.isNotEmpty) {
      final fieldJson2 = parameterName!.map((e) => e.toJson()).toList();
      json['parameterName'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_parameterName'] = fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (comment != null) {
      final fieldJson3 = comment!.toJson();
      json['comment'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_comment'] = fieldJson3['_value'];
      }
    }

    return json;
  }

  @override
  OperationDefinitionOverload clone() => throw UnimplementedError();
  @override
  OperationDefinitionOverload copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<FhirString>? parameterName,
    FhirString? comment,
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
      comment: comment ?? this.comment,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
