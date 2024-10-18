import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [MessageDefinition]
/// Defines the characteristics of a message that can be shared between
/// systems, including the type of event that initiates the message, the
/// content to be transmitted and what response(s), if any, are permitted.
class MessageDefinition extends DomainResource {
  /// Primary constructor for [MessageDefinition]

  MessageDefinition({
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
    this.title,
    this.replaces,
    required this.status,
    this.experimental,
    required this.date,
    this.publisher,
    this.contact,
    this.description,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.copyright,
    this.base,
    this.parent,
    this.eventCoding,
    this.eventUri,
    this.category,
    this.focus,
    this.responseRequired,
    this.allowedResponse,
    this.graph,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.MessageDefinition,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MessageDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    return MessageDefinition(
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
      title: json['title'] != null
          ? FhirString.fromJson({
              'value': json['title'],
              '_value': json['_title'],
            })
          : null,
      replaces: parsePrimitiveList<FhirCanonical>(
        json['replaces'] as List<dynamic>?,
        json['_replaces'] as List<dynamic>?,
        fromJson: FhirCanonical.fromJson,
      ),
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
      date: FhirDateTime.fromJson({
        'value': json['date'],
        '_value': json['_date'],
      }),
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
      copyright: json['copyright'] != null
          ? FhirMarkdown.fromJson({
              'value': json['copyright'],
              '_value': json['_copyright'],
            })
          : null,
      base: json['base'] != null
          ? FhirCanonical.fromJson({
              'value': json['base'],
              '_value': json['_base'],
            })
          : null,
      parent: parsePrimitiveList<FhirCanonical>(
        json['parent'] as List<dynamic>?,
        json['_parent'] as List<dynamic>?,
        fromJson: FhirCanonical.fromJson,
      ),
      eventCoding: json['eventCoding'] != null
          ? Coding.fromJson(
              json['eventCoding'] as Map<String, dynamic>,
            )
          : null,
      eventUri: json['eventUri'] != null
          ? FhirUri.fromJson({
              'value': json['eventUri'],
              '_value': json['_eventUri'],
            })
          : null,
      category: json['category'] != null
          ? MessageSignificanceCategory.fromJson({
              'value': json['category'],
              '_value': json['_category'],
            })
          : null,
      focus: json['focus'] != null
          ? (json['focus'] as List<dynamic>)
              .map<MessageDefinitionFocus>(
                (v) => MessageDefinitionFocus.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      responseRequired: json['responseRequired'] != null
          ? MessageheaderResponseRequest.fromJson({
              'value': json['responseRequired'],
              '_value': json['_responseRequired'],
            })
          : null,
      allowedResponse: json['allowedResponse'] != null
          ? (json['allowedResponse'] as List<dynamic>)
              .map<MessageDefinitionAllowedResponse>(
                (v) => MessageDefinitionAllowedResponse.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      graph: parsePrimitiveList<FhirCanonical>(
        json['graph'] as List<dynamic>?,
        json['_graph'] as List<dynamic>?,
        fromJson: FhirCanonical.fromJson,
      ),
    );
  }

  /// Deserialize [MessageDefinition] from a [String]
  /// or [YamlMap] object
  factory MessageDefinition.fromYaml(dynamic yaml) => yaml is String
      ? MessageDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? MessageDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('MessageDefinition cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [MessageDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MessageDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MessageDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'MessageDefinition';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [url]
  /// The business identifier that is used to reference the MessageDefinition
  /// and *is* expected to be consistent from server to server.
  final FhirUri? url;

  /// [identifier]
  /// A formal identifier that is used to identify this message definition
  /// when it is represented in other formats, or referenced in a
  /// specification, model, design or an instance.
  final List<Identifier>? identifier;

  /// [version]
  /// The identifier that is used to identify this version of the message
  /// definition when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the message definition
  /// author and is not expected to be globally unique. For example, it might
  /// be a timestamp (e.g. yyyymmdd) if a managed version is not available.
  /// There is also no expectation that versions can be placed in a
  /// lexicographical sequence.
  final FhirString? version;

  /// [name]
  /// A natural language name identifying the message definition. This name
  /// should be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString? name;

  /// [title]
  /// A short, descriptive, user-friendly title for the message definition.
  final FhirString? title;

  /// [replaces]
  /// A MessageDefinition that is superseded by this definition.
  final List<FhirCanonical>? replaces;

  /// [status]
  /// The status of this message definition. Enables tracking the life-cycle
  /// of the content.
  final PublicationStatus status;

  /// [experimental]
  /// A Boolean value to indicate that this message definition is authored
  /// for testing purposes (or education/evaluation/marketing) and is not
  /// intended to be used for genuine usage.
  final FhirBoolean? experimental;

  /// [date]
  /// The date (and optionally time) when the message definition was
  /// published. The date must change when the business version changes and
  /// it must change if the status code changes. In addition, it should
  /// change when the substantive content of the message definition changes.
  final FhirDateTime date;

  /// [publisher]
  /// The name of the organization or individual that published the message
  /// definition.
  final FhirString? publisher;

  /// [contact]
  /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [description]
  /// A free text natural language description of the message definition from
  /// a consumer's perspective.
  final FhirMarkdown? description;

  /// [useContext]
  /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories
  /// (gender, age, ...) or may be references to specific programs (insurance
  /// plans, studies, ...) and may be used to assist with indexing and
  /// searching for appropriate message definition instances.
  final List<UsageContext>? useContext;

  /// [jurisdiction]
  /// A legal or geographic region in which the message definition is
  /// intended to be used.
  final List<CodeableConcept>? jurisdiction;

  /// [purpose]
  /// Explanation of why this message definition is needed and why it has
  /// been designed as it has.
  final FhirMarkdown? purpose;

  /// [copyright]
  /// A copyright statement relating to the message definition and/or its
  /// contents. Copyright statements are generally legal restrictions on the
  /// use and publishing of the message definition.
  final FhirMarkdown? copyright;

  /// [base]
  /// The MessageDefinition that is the basis for the contents of this
  /// resource.
  final FhirCanonical? base;

  /// [parent]
  /// Identifies a protocol or workflow that this MessageDefinition
  /// represents a step in.
  final List<FhirCanonical>? parent;

  /// [eventCoding]
  /// Event code or link to the EventDefinition.
  final Coding? eventCoding;

  /// [eventUri]
  /// Event code or link to the EventDefinition.
  final FhirUri? eventUri;

  /// [category]
  /// The impact of the content of the message.
  final MessageSignificanceCategory? category;

  /// [focus]
  /// Identifies the resource (or resources) that are being addressed by the
  /// event. For example, the Encounter for an admit message or two Account
  /// records for a merge.
  final List<MessageDefinitionFocus>? focus;

  /// [responseRequired]
  /// Declare at a message definition level whether a response is required or
  /// only upon error or success, or never.
  final MessageheaderResponseRequest? responseRequired;

  /// [allowedResponse]
  /// Indicates what types of messages may be sent as an application-level
  /// response to this message.
  final List<MessageDefinitionAllowedResponse>? allowedResponse;

  /// [graph]
  /// Canonical reference to a GraphDefinition. If a URL is provided, it is
  /// the canonical reference to a [GraphDefinition](graphdefinition.html)
  /// that it controls what resources are to be added to the bundle when
  /// building the document. The GraphDefinition can also specify profiles
  /// that apply to the various resources.
  final List<FhirCanonical>? graph;
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

    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    if (version != null) {
      final fieldJson9 = version!.toJson();
      json['version'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_version'] = fieldJson9['_value'];
      }
    }

    if (name != null) {
      final fieldJson10 = name!.toJson();
      json['name'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_name'] = fieldJson10['_value'];
      }
    }

    if (title != null) {
      final fieldJson11 = title!.toJson();
      json['title'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_title'] = fieldJson11['_value'];
      }
    }

    if (replaces != null && replaces!.isNotEmpty) {
      final fieldJson12 = replaces!.map((e) => e.toJson()).toList();
      json['replaces'] = fieldJson12.map((e) => e['value']).toList();
      if (fieldJson12.any((e) => e['_value'] != null)) {
        json['_replaces'] = fieldJson12.map((e) => e['_value']).toList();
      }
    }

    json['status'] = status.toJson();

    if (experimental != null) {
      final fieldJson14 = experimental!.toJson();
      json['experimental'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_experimental'] = fieldJson14['_value'];
      }
    }

    final fieldJson15 = date.toJson();
    json['date'] = fieldJson15['value'];
    if (fieldJson15['_value'] != null) {
      json['_date'] = fieldJson15['_value'];
    }

    if (publisher != null) {
      final fieldJson16 = publisher!.toJson();
      json['publisher'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_publisher'] = fieldJson16['_value'];
      }
    }

    if (contact != null && contact!.isNotEmpty) {
      json['contact'] = contact!.map((e) => e.toJson()).toList();
    }

    if (description != null) {
      final fieldJson18 = description!.toJson();
      json['description'] = fieldJson18['value'];
      if (fieldJson18['_value'] != null) {
        json['_description'] = fieldJson18['_value'];
      }
    }

    if (useContext != null && useContext!.isNotEmpty) {
      json['useContext'] = useContext!.map((e) => e.toJson()).toList();
    }

    if (jurisdiction != null && jurisdiction!.isNotEmpty) {
      json['jurisdiction'] = jurisdiction!.map((e) => e.toJson()).toList();
    }

    if (purpose != null) {
      final fieldJson21 = purpose!.toJson();
      json['purpose'] = fieldJson21['value'];
      if (fieldJson21['_value'] != null) {
        json['_purpose'] = fieldJson21['_value'];
      }
    }

    if (copyright != null) {
      final fieldJson22 = copyright!.toJson();
      json['copyright'] = fieldJson22['value'];
      if (fieldJson22['_value'] != null) {
        json['_copyright'] = fieldJson22['_value'];
      }
    }

    if (base != null) {
      final fieldJson23 = base!.toJson();
      json['base'] = fieldJson23['value'];
      if (fieldJson23['_value'] != null) {
        json['_base'] = fieldJson23['_value'];
      }
    }

    if (parent != null && parent!.isNotEmpty) {
      final fieldJson24 = parent!.map((e) => e.toJson()).toList();
      json['parent'] = fieldJson24.map((e) => e['value']).toList();
      if (fieldJson24.any((e) => e['_value'] != null)) {
        json['_parent'] = fieldJson24.map((e) => e['_value']).toList();
      }
    }

    if (eventCoding != null) {
      json['eventCoding'] = eventCoding!.toJson();
    }

    if (eventUri != null) {
      final fieldJson26 = eventUri!.toJson();
      json['eventUri'] = fieldJson26['value'];
      if (fieldJson26['_value'] != null) {
        json['_eventUri'] = fieldJson26['_value'];
      }
    }

    if (category != null) {
      json['category'] = category!.toJson();
    }

    if (focus != null && focus!.isNotEmpty) {
      json['focus'] = focus!.map((e) => e.toJson()).toList();
    }

    if (responseRequired != null) {
      json['responseRequired'] = responseRequired!.toJson();
    }

    if (allowedResponse != null && allowedResponse!.isNotEmpty) {
      json['allowedResponse'] =
          allowedResponse!.map((e) => e.toJson()).toList();
    }

    if (graph != null && graph!.isNotEmpty) {
      final fieldJson31 = graph!.map((e) => e.toJson()).toList();
      json['graph'] = fieldJson31.map((e) => e['value']).toList();
      if (fieldJson31.any((e) => e['_value'] != null)) {
        json['_graph'] = fieldJson31.map((e) => e['_value']).toList();
      }
    }

    return json;
  }

  @override
  MessageDefinition clone() => throw UnimplementedError();
  @override
  MessageDefinition copyWith({
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
    FhirString? title,
    List<FhirCanonical>? replaces,
    PublicationStatus? status,
    FhirBoolean? experimental,
    FhirDateTime? date,
    FhirString? publisher,
    List<ContactDetail>? contact,
    FhirMarkdown? description,
    List<UsageContext>? useContext,
    List<CodeableConcept>? jurisdiction,
    FhirMarkdown? purpose,
    FhirMarkdown? copyright,
    FhirCanonical? base,
    List<FhirCanonical>? parent,
    Coding? eventCoding,
    FhirUri? eventUri,
    MessageSignificanceCategory? category,
    List<MessageDefinitionFocus>? focus,
    MessageheaderResponseRequest? responseRequired,
    List<MessageDefinitionAllowedResponse>? allowedResponse,
    List<FhirCanonical>? graph,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MessageDefinition(
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
      title: title ?? this.title,
      replaces: replaces ?? this.replaces,
      status: status ?? this.status,
      experimental: experimental ?? this.experimental,
      date: date ?? this.date,
      publisher: publisher ?? this.publisher,
      contact: contact ?? this.contact,
      description: description ?? this.description,
      useContext: useContext ?? this.useContext,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      purpose: purpose ?? this.purpose,
      copyright: copyright ?? this.copyright,
      base: base ?? this.base,
      parent: parent ?? this.parent,
      eventCoding: eventCoding ?? this.eventCoding,
      eventUri: eventUri ?? this.eventUri,
      category: category ?? this.category,
      focus: focus ?? this.focus,
      responseRequired: responseRequired ?? this.responseRequired,
      allowedResponse: allowedResponse ?? this.allowedResponse,
      graph: graph ?? this.graph,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [MessageDefinitionFocus]
/// Identifies the resource (or resources) that are being addressed by the
/// event. For example, the Encounter for an admit message or two Account
/// records for a merge.
class MessageDefinitionFocus extends BackboneElement {
  /// Primary constructor for [MessageDefinitionFocus]

  MessageDefinitionFocus({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.code,
    this.profile,
    required this.min,
    this.max,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MessageDefinitionFocus.fromJson(
    Map<String, dynamic> json,
  ) {
    return MessageDefinitionFocus(
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
      profile: json['profile'] != null
          ? FhirCanonical.fromJson({
              'value': json['profile'],
              '_value': json['_profile'],
            })
          : null,
      min: FhirUnsignedInt.fromJson({
        'value': json['min'],
        '_value': json['_min'],
      }),
      max: json['max'] != null
          ? FhirString.fromJson({
              'value': json['max'],
              '_value': json['_max'],
            })
          : null,
    );
  }

  /// Deserialize [MessageDefinitionFocus] from a [String]
  /// or [YamlMap] object
  factory MessageDefinitionFocus.fromYaml(dynamic yaml) => yaml is String
      ? MessageDefinitionFocus.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? MessageDefinitionFocus.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'MessageDefinitionFocus cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [MessageDefinitionFocus]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MessageDefinitionFocus.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MessageDefinitionFocus.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'MessageDefinitionFocus';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [code]
  /// The kind of resource that must be the focus for this message.
  final FhirCode code;

  /// [profile]
  /// A profile that reflects constraints for the focal resource (and
  /// potentially for related resources).
  final FhirCanonical? profile;

  /// [min]
  /// Identifies the minimum number of resources of this type that must be
  /// pointed to by a message in order for it to be valid against this
  /// MessageDefinition.
  final FhirUnsignedInt min;

  /// [max]
  /// Identifies the maximum number of resources of this type that must be
  /// pointed to by a message in order for it to be valid against this
  /// MessageDefinition.
  final FhirString? max;
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

    if (profile != null) {
      final fieldJson3 = profile!.toJson();
      json['profile'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_profile'] = fieldJson3['_value'];
      }
    }

    final fieldJson4 = min.toJson();
    json['min'] = fieldJson4['value'];
    if (fieldJson4['_value'] != null) {
      json['_min'] = fieldJson4['_value'];
    }

    if (max != null) {
      final fieldJson5 = max!.toJson();
      json['max'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_max'] = fieldJson5['_value'];
      }
    }

    return json;
  }

  @override
  MessageDefinitionFocus clone() => throw UnimplementedError();
  @override
  MessageDefinitionFocus copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    FhirCanonical? profile,
    FhirUnsignedInt? min,
    FhirString? max,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MessageDefinitionFocus(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      profile: profile ?? this.profile,
      min: min ?? this.min,
      max: max ?? this.max,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [MessageDefinitionAllowedResponse]
/// Indicates what types of messages may be sent as an application-level
/// response to this message.
class MessageDefinitionAllowedResponse extends BackboneElement {
  /// Primary constructor for [MessageDefinitionAllowedResponse]

  MessageDefinitionAllowedResponse({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.message,
    this.situation,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MessageDefinitionAllowedResponse.fromJson(
    Map<String, dynamic> json,
  ) {
    return MessageDefinitionAllowedResponse(
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
      message: FhirCanonical.fromJson({
        'value': json['message'],
        '_value': json['_message'],
      }),
      situation: json['situation'] != null
          ? FhirMarkdown.fromJson({
              'value': json['situation'],
              '_value': json['_situation'],
            })
          : null,
    );
  }

  /// Deserialize [MessageDefinitionAllowedResponse] from a [String]
  /// or [YamlMap] object
  factory MessageDefinitionAllowedResponse.fromYaml(dynamic yaml) => yaml
          is String
      ? MessageDefinitionAllowedResponse.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? MessageDefinitionAllowedResponse.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'MessageDefinitionAllowedResponse cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [MessageDefinitionAllowedResponse]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MessageDefinitionAllowedResponse.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MessageDefinitionAllowedResponse.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'MessageDefinitionAllowedResponse';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [message]
  /// A reference to the message definition that must be adhered to by this
  /// supported response.
  final FhirCanonical message;

  /// [situation]
  /// Provides a description of the circumstances in which this response
  /// should be used (as opposed to one of the alternative responses).
  final FhirMarkdown? situation;
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

    final fieldJson2 = message.toJson();
    json['message'] = fieldJson2['value'];
    if (fieldJson2['_value'] != null) {
      json['_message'] = fieldJson2['_value'];
    }

    if (situation != null) {
      final fieldJson3 = situation!.toJson();
      json['situation'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_situation'] = fieldJson3['_value'];
      }
    }

    return json;
  }

  @override
  MessageDefinitionAllowedResponse clone() => throw UnimplementedError();
  @override
  MessageDefinitionAllowedResponse copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCanonical? message,
    FhirMarkdown? situation,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MessageDefinitionAllowedResponse(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      message: message ?? this.message,
      situation: situation ?? this.situation,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
