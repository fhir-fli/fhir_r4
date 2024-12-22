import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [MessageDefinition]
/// Defines the characteristics of a message that can be shared between
/// systems, including the type of event that initiates the message, the
/// content to be transmitted and what response(s), if any, are permitted.
class MessageDefinition extends CanonicalResource {
  /// Primary constructor for
  /// [MessageDefinition]

  const MessageDefinition({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    super.url,
    this.identifier,
    super.version,
    this.name,
    this.title,
    this.replaces,
    required super.status,
    super.experimental,
    required super.date,
    super.publisher,
    super.contact,
    super.description,
    super.useContext,
    super.jurisdiction,
    this.purpose,
    this.copyright,
    this.base,
    this.parent,
    required this.eventX,
    this.category,
    this.focus,
    this.responseRequired,
    this.allowedResponse,
    this.graph,
  }) : super(
          resourceType: R4ResourceType.MessageDefinition,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MessageDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    return MessageDefinition(
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
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
      ),
      replaces: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'replaces',
        FhirCanonical.fromJson,
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
      )!,
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
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
      ),
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
      purpose: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'purpose',
        FhirMarkdown.fromJson,
      ),
      copyright: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'copyright',
        FhirMarkdown.fromJson,
      ),
      base: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'base',
        FhirCanonical.fromJson,
      ),
      parent: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'parent',
        FhirCanonical.fromJson,
      ),
      eventX: JsonParser.parsePolymorphic<EventXMessageDefinition>(json, {
        'eventCoding': Coding.fromJson,
        'eventUri': FhirUri.fromJson,
      })!,
      category: JsonParser.parsePrimitive<MessageSignificanceCategory>(
        json,
        'category',
        MessageSignificanceCategory.fromJson,
      ),
      focus: (json['focus'] as List<dynamic>?)
          ?.map<MessageDefinitionFocus>(
            (v) => MessageDefinitionFocus.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      responseRequired: JsonParser.parsePrimitive<MessageheaderResponseRequest>(
        json,
        'responseRequired',
        MessageheaderResponseRequest.fromJson,
      ),
      allowedResponse: (json['allowedResponse'] as List<dynamic>?)
          ?.map<MessageDefinitionAllowedResponse>(
            (v) => MessageDefinitionAllowedResponse.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      graph: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'graph',
        FhirCanonical.fromJson,
      ),
    );
  }

  /// Deserialize [MessageDefinition]
  /// from a [String] or [YamlMap] object
  factory MessageDefinition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MessageDefinition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MessageDefinition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MessageDefinition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MessageDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MessageDefinition.fromJsonString(
    String source,
  ) {
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

  /// [identifier]
  /// A formal identifier that is used to identify this message definition
  /// when it is represented in other formats, or referenced in a
  /// specification, model, design or an instance.
  final List<Identifier>? identifier;

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

  /// [eventX]
  /// Event code or link to the EventDefinition.
  final EventXMessageDefinition eventX;

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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    addField('meta', meta);
    addField('implicitRules', implicitRules);
    addField('language', language);
    addField('text', text);
    addField('contained', contained);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('url', url);
    addField('identifier', identifier);
    addField('version', version);
    addField('name', name);
    addField('title', title);
    addField('replaces', replaces);
    addField('status', status);
    addField('experimental', experimental);
    addField('date', date);
    addField('publisher', publisher);
    addField('contact', contact);
    addField('description', description);
    addField('useContext', useContext);
    addField('jurisdiction', jurisdiction);
    addField('purpose', purpose);
    addField('copyright', copyright);
    addField('base', base);
    addField('parent', parent);
    final eventXFhirType = eventX.fhirType;
    addField('event${eventXFhirType.capitalize()}', eventX);

    addField('category', category);
    addField('focus', focus);
    addField('responseRequired', responseRequired);
    addField('allowedResponse', allowedResponse);
    addField('graph', graph);
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
    EventXMessageDefinition? eventX,
    MessageSignificanceCategory? category,
    List<MessageDefinitionFocus>? focus,
    MessageheaderResponseRequest? responseRequired,
    List<MessageDefinitionAllowedResponse>? allowedResponse,
    List<FhirCanonical>? graph,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
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
      eventX: eventX ?? this.eventX,
      category: category ?? this.category,
      focus: focus ?? this.focus,
      responseRequired: responseRequired ?? this.responseRequired,
      allowedResponse: allowedResponse ?? this.allowedResponse,
      graph: graph ?? this.graph,
    );
  }
}

/// [MessageDefinitionFocus]
/// Identifies the resource (or resources) that are being addressed by the
/// event. For example, the Encounter for an admit message or two Account
/// records for a merge.
class MessageDefinitionFocus extends BackboneElement {
  /// Primary constructor for
  /// [MessageDefinitionFocus]

  const MessageDefinitionFocus({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.profile,
    required this.min,
    this.max,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MessageDefinitionFocus.fromJson(
    Map<String, dynamic> json,
  ) {
    return MessageDefinitionFocus(
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
      code: JsonParser.parsePrimitive<FhirCode>(
        json,
        'code',
        FhirCode.fromJson,
      )!,
      profile: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'profile',
        FhirCanonical.fromJson,
      ),
      min: JsonParser.parsePrimitive<FhirUnsignedInt>(
        json,
        'min',
        FhirUnsignedInt.fromJson,
      )!,
      max: JsonParser.parsePrimitive<FhirString>(
        json,
        'max',
        FhirString.fromJson,
      ),
    );
  }

  /// Deserialize [MessageDefinitionFocus]
  /// from a [String] or [YamlMap] object
  factory MessageDefinitionFocus.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MessageDefinitionFocus.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MessageDefinitionFocus.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MessageDefinitionFocus '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MessageDefinitionFocus]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MessageDefinitionFocus.fromJsonString(
    String source,
  ) {
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('code', code);
    addField('profile', profile);
    addField('min', min);
    addField('max', max);
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
  }) {
    return MessageDefinitionFocus(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      profile: profile ?? this.profile,
      min: min ?? this.min,
      max: max ?? this.max,
    );
  }
}

/// [MessageDefinitionAllowedResponse]
/// Indicates what types of messages may be sent as an application-level
/// response to this message.
class MessageDefinitionAllowedResponse extends BackboneElement {
  /// Primary constructor for
  /// [MessageDefinitionAllowedResponse]

  const MessageDefinitionAllowedResponse({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.message,
    this.situation,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MessageDefinitionAllowedResponse.fromJson(
    Map<String, dynamic> json,
  ) {
    return MessageDefinitionAllowedResponse(
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
      message: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'message',
        FhirCanonical.fromJson,
      )!,
      situation: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'situation',
        FhirMarkdown.fromJson,
      ),
    );
  }

  /// Deserialize [MessageDefinitionAllowedResponse]
  /// from a [String] or [YamlMap] object
  factory MessageDefinitionAllowedResponse.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MessageDefinitionAllowedResponse.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MessageDefinitionAllowedResponse.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MessageDefinitionAllowedResponse '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MessageDefinitionAllowedResponse]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MessageDefinitionAllowedResponse.fromJsonString(
    String source,
  ) {
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('message', message);
    addField('situation', situation);
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
  }) {
    return MessageDefinitionAllowedResponse(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      message: message ?? this.message,
      situation: situation ?? this.situation,
    );
  }
}
