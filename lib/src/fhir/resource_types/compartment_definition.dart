import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [CompartmentDefinition]
/// A compartment definition that defines how resources are accessed on a
/// server.
class CompartmentDefinition extends DomainResource {
  /// Primary constructor for [CompartmentDefinition]

  CompartmentDefinition({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
    super.modifierExtension,
    required this.url,
    this.version,
    required this.name,
    required this.status,
    this.experimental,
    this.date,
    this.publisher,
    this.contact,
    this.description,
    this.useContext,
    this.purpose,
    required this.code,
    required this.search,
    this.resource,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.CompartmentDefinition,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CompartmentDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    return CompartmentDefinition(
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
      url: FhirUri.fromJson({
        'value': json['url'],
        '_value': json['_url'],
      }),
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
      purpose: json['purpose'] != null
          ? FhirMarkdown.fromJson({
              'value': json['purpose'],
              '_value': json['_purpose'],
            })
          : null,
      code: CompartmentType.fromJson({
        'value': json['code'],
        '_value': json['_code'],
      }),
      search: FhirBoolean.fromJson({
        'value': json['search'],
        '_value': json['_search'],
      }),
      resource: json['resource'] != null
          ? (json['resource'] as List<dynamic>)
              .map<CompartmentDefinitionResource>(
                (v) => CompartmentDefinitionResource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [CompartmentDefinition] from a [String]
  /// or [YamlMap] object
  factory CompartmentDefinition.fromYaml(dynamic yaml) => yaml is String
      ? CompartmentDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? CompartmentDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'CompartmentDefinition cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [CompartmentDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CompartmentDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CompartmentDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CompartmentDefinition';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [url]
  /// An absolute URI that is used to identify this compartment definition
  /// when it is referenced in a specification, model, design or an instance;
  /// also called its canonical identifier. This SHOULD be globally unique
  /// and SHOULD be a literal address at which at which an authoritative
  /// instance of this compartment definition is (or will be) published. This
  /// URL can be the target of a canonical reference. It SHALL remain the
  /// same when the compartment definition is stored on different servers.
  final FhirUri url;

  /// [version]
  /// The identifier that is used to identify this version of the compartment
  /// definition when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the compartment
  /// definition author and is not expected to be globally unique. For
  /// example, it might be a timestamp (e.g. yyyymmdd) if a managed version
  /// is not available. There is also no expectation that versions can be
  /// placed in a lexicographical sequence.
  final FhirString? version;

  /// [name]
  /// A natural language name identifying the compartment definition. This
  /// name should be usable as an identifier for the module by machine
  /// processing applications such as code generation.
  final FhirString name;

  /// [status]
  /// The status of this compartment definition. Enables tracking the
  /// life-cycle of the content.
  final PublicationStatus status;

  /// [experimental]
  /// A Boolean value to indicate that this compartment definition is
  /// authored for testing purposes (or education/evaluation/marketing) and
  /// is not intended to be used for genuine usage.
  final FhirBoolean? experimental;

  /// [date]
  /// The date (and optionally time) when the compartment definition was
  /// published. The date must change when the business version changes and
  /// it must change if the status code changes. In addition, it should
  /// change when the substantive content of the compartment definition
  /// changes.
  final FhirDateTime? date;

  /// [publisher]
  /// The name of the organization or individual that published the
  /// compartment definition.
  final FhirString? publisher;

  /// [contact]
  /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [description]
  /// A free text natural language description of the compartment definition
  /// from a consumer's perspective.
  final FhirMarkdown? description;

  /// [useContext]
  /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories
  /// (gender, age, ...) or may be references to specific programs (insurance
  /// plans, studies, ...) and may be used to assist with indexing and
  /// searching for appropriate compartment definition instances.
  final List<UsageContext>? useContext;

  /// [purpose]
  /// Explanation of why this compartment definition is needed and why it has
  /// been designed as it has.
  final FhirMarkdown? purpose;

  /// [code]
  /// Which compartment this definition describes.
  final CompartmentType code;

  /// [search]
  /// Whether the search syntax is supported,.
  final FhirBoolean search;

  /// [resource]
  /// Information about how a resource is related to the compartment.
  final List<CompartmentDefinitionResource>? resource;
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

    final fieldJson7 = url.toJson();
    json['url'] = fieldJson7['value'];
    if (fieldJson7['_value'] != null) {
      json['_url'] = fieldJson7['_value'];
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

    json['status'] = status.toJson();

    if (experimental != null) {
      final fieldJson11 = experimental!.toJson();
      json['experimental'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_experimental'] = fieldJson11['_value'];
      }
    }

    if (date != null) {
      final fieldJson12 = date!.toJson();
      json['date'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_date'] = fieldJson12['_value'];
      }
    }

    if (publisher != null) {
      final fieldJson13 = publisher!.toJson();
      json['publisher'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_publisher'] = fieldJson13['_value'];
      }
    }

    if (contact != null && contact!.isNotEmpty) {
      json['contact'] = contact!.map((e) => e.toJson()).toList();
    }

    if (description != null) {
      final fieldJson15 = description!.toJson();
      json['description'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_description'] = fieldJson15['_value'];
      }
    }

    if (useContext != null && useContext!.isNotEmpty) {
      json['useContext'] = useContext!.map((e) => e.toJson()).toList();
    }

    if (purpose != null) {
      final fieldJson17 = purpose!.toJson();
      json['purpose'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_purpose'] = fieldJson17['_value'];
      }
    }

    json['code'] = code.toJson();

    final fieldJson19 = search.toJson();
    json['search'] = fieldJson19['value'];
    if (fieldJson19['_value'] != null) {
      json['_search'] = fieldJson19['_value'];
    }

    if (resource != null && resource!.isNotEmpty) {
      json['resource'] = resource!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  CompartmentDefinition clone() => throw UnimplementedError();
  @override
  CompartmentDefinition copyWith({
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
    PublicationStatus? status,
    FhirBoolean? experimental,
    FhirDateTime? date,
    FhirString? publisher,
    List<ContactDetail>? contact,
    FhirMarkdown? description,
    List<UsageContext>? useContext,
    FhirMarkdown? purpose,
    CompartmentType? code,
    FhirBoolean? search,
    List<CompartmentDefinitionResource>? resource,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CompartmentDefinition(
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
      status: status ?? this.status,
      experimental: experimental ?? this.experimental,
      date: date ?? this.date,
      publisher: publisher ?? this.publisher,
      contact: contact ?? this.contact,
      description: description ?? this.description,
      useContext: useContext ?? this.useContext,
      purpose: purpose ?? this.purpose,
      code: code ?? this.code,
      search: search ?? this.search,
      resource: resource ?? this.resource,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [CompartmentDefinitionResource]
/// Information about how a resource is related to the compartment.
class CompartmentDefinitionResource extends BackboneElement {
  /// Primary constructor for [CompartmentDefinitionResource]

  CompartmentDefinitionResource({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.code,
    this.param,
    this.documentation,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CompartmentDefinitionResource.fromJson(
    Map<String, dynamic> json,
  ) {
    return CompartmentDefinitionResource(
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
      code: FhirCode.fromJson({
        'value': json['code'],
        '_value': json['_code'],
      }),
      param: parsePrimitiveList<FhirString>(
        json['param'] as List<dynamic>?,
        json['_param'] as List<dynamic>?,
        fromJson: FhirString.fromJson,
      ),
      documentation: json['documentation'] != null
          ? FhirString.fromJson({
              'value': json['documentation'],
              '_value': json['_documentation'],
            })
          : null,
    );
  }

  /// Deserialize [CompartmentDefinitionResource] from a [String]
  /// or [YamlMap] object
  factory CompartmentDefinitionResource.fromYaml(dynamic yaml) => yaml is String
      ? CompartmentDefinitionResource.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? CompartmentDefinitionResource.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'CompartmentDefinitionResource cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [CompartmentDefinitionResource]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CompartmentDefinitionResource.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CompartmentDefinitionResource.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CompartmentDefinitionResource';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [code]
  /// The name of a resource supported by the server.
  final FhirCode code;

  /// [param]
  /// The name of a search parameter that represents the link to the
  /// compartment. More than one may be listed because a resource may be
  /// linked to a compartment in more than one way,.
  final List<FhirString>? param;

  /// [documentation]
  /// Additional documentation about the resource and compartment.
  final FhirString? documentation;
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

    final fieldJson2 = code.toJson();
    json['code'] = fieldJson2['value'];
    if (fieldJson2['_value'] != null) {
      json['_code'] = fieldJson2['_value'];
    }

    if (param != null && param!.isNotEmpty) {
      final fieldJson3 = param!.map((e) => e.toJson()).toList();
      json['param'] = fieldJson3.map((e) => e['value']).toList();
      if (fieldJson3.any((e) => e['_value'] != null)) {
        json['_param'] = fieldJson3.map((e) => e['_value']).toList();
      }
    }

    if (documentation != null) {
      final fieldJson4 = documentation!.toJson();
      json['documentation'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_documentation'] = fieldJson4['_value'];
      }
    }

    return json;
  }

  @override
  CompartmentDefinitionResource clone() => throw UnimplementedError();
  @override
  CompartmentDefinitionResource copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    List<FhirString>? param,
    FhirString? documentation,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CompartmentDefinitionResource(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      param: param ?? this.param,
      documentation: documentation ?? this.documentation,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
