import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [MessageHeader]
/// The header for a message exchange that is either requesting or
/// responding to an action. The reference(s) that are the subject of the
/// action as well as other information related to the action are typically
/// transmitted in a bundle in which the MessageHeader resource instance is
/// the first resource in the bundle.
class MessageHeader extends DomainResource {
  /// Primary constructor for
  /// [MessageHeader]

  const MessageHeader({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    required this.eventX,
    this.destination,
    this.sender,
    this.enterer,
    this.author,
    required this.source,
    this.responsible,
    this.reason,
    this.response,
    this.focus,
    this.definition,
  }) : super(
          resourceType: R4ResourceType.MessageHeader,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MessageHeader.fromJson(
    Map<String, dynamic> json,
  ) {
    return MessageHeader(
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
      eventX: JsonParser.parsePolymorphic<EventXMessageHeader>(json, {
        'eventCoding': Coding.fromJson,
        'eventUri': FhirUri.fromJson,
      })!,
      destination: (json['destination'] as List<dynamic>?)
          ?.map<MessageHeaderDestination>(
            (v) => MessageHeaderDestination.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      sender: JsonParser.parseObject<Reference>(
        json,
        'sender',
        Reference.fromJson,
      ),
      enterer: JsonParser.parseObject<Reference>(
        json,
        'enterer',
        Reference.fromJson,
      ),
      author: JsonParser.parseObject<Reference>(
        json,
        'author',
        Reference.fromJson,
      ),
      source: JsonParser.parseObject<MessageHeaderSource>(
        json,
        'source',
        MessageHeaderSource.fromJson,
      )!,
      responsible: JsonParser.parseObject<Reference>(
        json,
        'responsible',
        Reference.fromJson,
      ),
      reason: JsonParser.parseObject<CodeableConcept>(
        json,
        'reason',
        CodeableConcept.fromJson,
      ),
      response: JsonParser.parseObject<MessageHeaderResponse>(
        json,
        'response',
        MessageHeaderResponse.fromJson,
      ),
      focus: (json['focus'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      definition: JsonParser.parsePrimitive<FhirCanonical>(
        json,
        'definition',
        FhirCanonical.fromJson,
      ),
    );
  }

  /// Deserialize [MessageHeader]
  /// from a [String] or [YamlMap] object
  factory MessageHeader.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MessageHeader.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MessageHeader.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MessageHeader '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MessageHeader]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MessageHeader.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MessageHeader.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'MessageHeader';

  /// [eventX]
  /// Code that identifies the event this message represents and connects it
  /// with its definition. Events defined as part of the FHIR specification
  /// have the system value
  /// "http://terminology.hl7.org/CodeSystem/message-events". Alternatively
  /// uri to the EventDefinition.
  final EventXMessageHeader eventX;

  /// [destination]
  /// The destination application which the message is intended for.
  final List<MessageHeaderDestination>? destination;

  /// [sender]
  /// Identifies the sending system to allow the use of a trust relationship.
  final Reference? sender;

  /// [enterer]
  /// The person or device that performed the data entry leading to this
  /// message. When there is more than one candidate, pick the most proximal
  /// to the message. Can provide other enterers in extensions.
  final Reference? enterer;

  /// [author]
  /// The logical author of the message - the person or device that decided
  /// the described event should happen. When there is more than one
  /// candidate, pick the most proximal to the MessageHeader. Can provide
  /// other authors in extensions.
  final Reference? author;

  /// [source]
  /// The source application from which this message originated.
  final MessageHeaderSource source;

  /// [responsible]
  /// The person or organization that accepts overall responsibility for the
  /// contents of the message. The implication is that the message event
  /// happened under the policies of the responsible party.
  final Reference? responsible;

  /// [reason]
  /// Coded indication of the cause for the event - indicates a reason for
  /// the occurrence of the event that is a focus of this message.
  final CodeableConcept? reason;

  /// [response]
  /// Information about the message that this message is a response to. Only
  /// present if this message is a response.
  final MessageHeaderResponse? response;

  /// [focus]
  /// The actual data of the message - a reference to the root/focus class of
  /// the event.
  final List<Reference>? focus;

  /// [definition]
  /// Permanent link to the MessageDefinition for this message.
  final FhirCanonical? definition;
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
    final eventXFhirType = eventX.fhirType;
    addField('event${eventXFhirType.capitalize()}', eventX);

    addField('destination', destination);
    addField('sender', sender);
    addField('enterer', enterer);
    addField('author', author);
    addField('source', source);
    addField('responsible', responsible);
    addField('reason', reason);
    addField('response', response);
    addField('focus', focus);
    addField('definition', definition);
    return json;
  }

  @override
  MessageHeader clone() => throw UnimplementedError();
  @override
  MessageHeader copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    EventXMessageHeader? eventX,
    List<MessageHeaderDestination>? destination,
    Reference? sender,
    Reference? enterer,
    Reference? author,
    MessageHeaderSource? source,
    Reference? responsible,
    CodeableConcept? reason,
    MessageHeaderResponse? response,
    List<Reference>? focus,
    FhirCanonical? definition,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return MessageHeader(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      eventX: eventX ?? this.eventX,
      destination: destination ?? this.destination,
      sender: sender ?? this.sender,
      enterer: enterer ?? this.enterer,
      author: author ?? this.author,
      source: source ?? this.source,
      responsible: responsible ?? this.responsible,
      reason: reason ?? this.reason,
      response: response ?? this.response,
      focus: focus ?? this.focus,
      definition: definition ?? this.definition,
    );
  }
}

/// [MessageHeaderDestination]
/// The destination application which the message is intended for.
class MessageHeaderDestination extends BackboneElement {
  /// Primary constructor for
  /// [MessageHeaderDestination]

  const MessageHeaderDestination({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
    this.target,
    required this.endpoint,
    this.receiver,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MessageHeaderDestination.fromJson(
    Map<String, dynamic> json,
  ) {
    return MessageHeaderDestination(
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
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
      ),
      target: JsonParser.parseObject<Reference>(
        json,
        'target',
        Reference.fromJson,
      ),
      endpoint: JsonParser.parsePrimitive<FhirUrl>(
        json,
        'endpoint',
        FhirUrl.fromJson,
      )!,
      receiver: JsonParser.parseObject<Reference>(
        json,
        'receiver',
        Reference.fromJson,
      ),
    );
  }

  /// Deserialize [MessageHeaderDestination]
  /// from a [String] or [YamlMap] object
  factory MessageHeaderDestination.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MessageHeaderDestination.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MessageHeaderDestination.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MessageHeaderDestination '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MessageHeaderDestination]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MessageHeaderDestination.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MessageHeaderDestination.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'MessageHeaderDestination';

  /// [name]
  /// Human-readable name for the target system.
  final FhirString? name;

  /// [target]
  /// Identifies the target end system in situations where the initial
  /// message transmission is to an intermediary system.
  final Reference? target;

  /// [endpoint]
  /// Indicates where the message should be routed to.
  final FhirUrl endpoint;

  /// [receiver]
  /// Allows data conveyed by a message to be addressed to a particular
  /// person or department when routing to a specific application isn't
  /// sufficient.
  final Reference? receiver;
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
    addField('name', name);
    addField('target', target);
    addField('endpoint', endpoint);
    addField('receiver', receiver);
    return json;
  }

  @override
  MessageHeaderDestination clone() => throw UnimplementedError();
  @override
  MessageHeaderDestination copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    Reference? target,
    FhirUrl? endpoint,
    Reference? receiver,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return MessageHeaderDestination(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      target: target ?? this.target,
      endpoint: endpoint ?? this.endpoint,
      receiver: receiver ?? this.receiver,
    );
  }
}

/// [MessageHeaderSource]
/// The source application from which this message originated.
class MessageHeaderSource extends BackboneElement {
  /// Primary constructor for
  /// [MessageHeaderSource]

  const MessageHeaderSource({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
    this.software,
    this.version,
    this.contact,
    required this.endpoint,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MessageHeaderSource.fromJson(
    Map<String, dynamic> json,
  ) {
    return MessageHeaderSource(
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
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
      ),
      software: JsonParser.parsePrimitive<FhirString>(
        json,
        'software',
        FhirString.fromJson,
      ),
      version: JsonParser.parsePrimitive<FhirString>(
        json,
        'version',
        FhirString.fromJson,
      ),
      contact: JsonParser.parseObject<ContactPoint>(
        json,
        'contact',
        ContactPoint.fromJson,
      ),
      endpoint: JsonParser.parsePrimitive<FhirUrl>(
        json,
        'endpoint',
        FhirUrl.fromJson,
      )!,
    );
  }

  /// Deserialize [MessageHeaderSource]
  /// from a [String] or [YamlMap] object
  factory MessageHeaderSource.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MessageHeaderSource.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MessageHeaderSource.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MessageHeaderSource '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MessageHeaderSource]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MessageHeaderSource.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MessageHeaderSource.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'MessageHeaderSource';

  /// [name]
  /// Human-readable name for the source system.
  final FhirString? name;

  /// [software]
  /// May include configuration or other information useful in debugging.
  final FhirString? software;

  /// [version]
  /// Can convey versions of multiple systems in situations where a message
  /// passes through multiple hands.
  final FhirString? version;

  /// [contact]
  /// An e-mail, phone, website or other contact point to use to resolve
  /// issues with message communications.
  final ContactPoint? contact;

  /// [endpoint]
  /// Identifies the routing target to send acknowledgements to.
  final FhirUrl endpoint;
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
    addField('name', name);
    addField('software', software);
    addField('version', version);
    addField('contact', contact);
    addField('endpoint', endpoint);
    return json;
  }

  @override
  MessageHeaderSource clone() => throw UnimplementedError();
  @override
  MessageHeaderSource copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    FhirString? software,
    FhirString? version,
    ContactPoint? contact,
    FhirUrl? endpoint,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return MessageHeaderSource(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      software: software ?? this.software,
      version: version ?? this.version,
      contact: contact ?? this.contact,
      endpoint: endpoint ?? this.endpoint,
    );
  }
}

/// [MessageHeaderResponse]
/// Information about the message that this message is a response to. Only
/// present if this message is a response.
class MessageHeaderResponse extends BackboneElement {
  /// Primary constructor for
  /// [MessageHeaderResponse]

  const MessageHeaderResponse({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.identifier,
    required this.code,
    this.details,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MessageHeaderResponse.fromJson(
    Map<String, dynamic> json,
  ) {
    return MessageHeaderResponse(
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
      identifier: JsonParser.parsePrimitive<FhirId>(
        json,
        'identifier',
        FhirId.fromJson,
      )!,
      code: JsonParser.parsePrimitive<ResponseType>(
        json,
        'code',
        ResponseType.fromJson,
      )!,
      details: JsonParser.parseObject<Reference>(
        json,
        'details',
        Reference.fromJson,
      ),
    );
  }

  /// Deserialize [MessageHeaderResponse]
  /// from a [String] or [YamlMap] object
  factory MessageHeaderResponse.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MessageHeaderResponse.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MessageHeaderResponse.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MessageHeaderResponse '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MessageHeaderResponse]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MessageHeaderResponse.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MessageHeaderResponse.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'MessageHeaderResponse';

  /// [identifier]
  /// The MessageHeader.id of the message to which this message is a
  /// response.
  final FhirId identifier;

  /// [code]
  /// Code that identifies the type of response to the message - whether it
  /// was successful or not, and whether it should be resent or not.
  final ResponseType code;

  /// [details]
  /// Full details of any issues found in the message.
  final Reference? details;
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
    addField('identifier', identifier);
    addField('code', code);
    addField('details', details);
    return json;
  }

  @override
  MessageHeaderResponse clone() => throw UnimplementedError();
  @override
  MessageHeaderResponse copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? identifier,
    ResponseType? code,
    Reference? details,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return MessageHeaderResponse(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      code: code ?? this.code,
      details: details ?? this.details,
    );
  }
}
