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
  /// Primary constructor for [MessageHeader]

  MessageHeader({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
    super.modifierExtension,
    this.eventCoding,
    this.eventUri,
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.MessageHeader,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MessageHeader.fromJson(
    Map<String, dynamic> json,
  ) {
    return MessageHeader(
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
      destination: json['destination'] != null
          ? (json['destination'] as List<dynamic>)
              .map<MessageHeaderDestination>(
                (v) => MessageHeaderDestination.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      sender: json['sender'] != null
          ? Reference.fromJson(
              json['sender'] as Map<String, dynamic>,
            )
          : null,
      enterer: json['enterer'] != null
          ? Reference.fromJson(
              json['enterer'] as Map<String, dynamic>,
            )
          : null,
      author: json['author'] != null
          ? Reference.fromJson(
              json['author'] as Map<String, dynamic>,
            )
          : null,
      source: MessageHeaderSource.fromJson(
        json['source'] as Map<String, dynamic>,
      ),
      responsible: json['responsible'] != null
          ? Reference.fromJson(
              json['responsible'] as Map<String, dynamic>,
            )
          : null,
      reason: json['reason'] != null
          ? CodeableConcept.fromJson(
              json['reason'] as Map<String, dynamic>,
            )
          : null,
      response: json['response'] != null
          ? MessageHeaderResponse.fromJson(
              json['response'] as Map<String, dynamic>,
            )
          : null,
      focus: json['focus'] != null
          ? (json['focus'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      definition: json['definition'] != null
          ? FhirCanonical.fromJson({
              'value': json['definition'],
              '_value': json['_definition'],
            })
          : null,
    );
  }

  /// Deserialize [MessageHeader] from a [String]
  /// or [YamlMap] object
  factory MessageHeader.fromYaml(dynamic yaml) => yaml is String
      ? MessageHeader.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? MessageHeader.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('MessageHeader cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [MessageHeader]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MessageHeader.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [eventCoding]
  /// Code that identifies the event this message represents and connects it
  /// with its definition. Events defined as part of the FHIR specification
  /// have the system value
  /// "http://terminology.hl7.org/CodeSystem/message-events". Alternatively
  /// uri to the EventDefinition.
  final Coding? eventCoding;

  /// [eventUri]
  /// Code that identifies the event this message represents and connects it
  /// with its definition. Events defined as part of the FHIR specification
  /// have the system value
  /// "http://terminology.hl7.org/CodeSystem/message-events". Alternatively
  /// uri to the EventDefinition.
  final FhirUri? eventUri;

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

    if (eventCoding != null) {
      json['eventCoding'] = eventCoding!.toJson();
    }

    if (eventUri != null) {
      final fieldJson8 = eventUri!.toJson();
      json['eventUri'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_eventUri'] = fieldJson8['_value'];
      }
    }

    if (destination != null && destination!.isNotEmpty) {
      json['destination'] = destination!.map((e) => e.toJson()).toList();
    }

    if (sender != null) {
      json['sender'] = sender!.toJson();
    }

    if (enterer != null) {
      json['enterer'] = enterer!.toJson();
    }

    if (author != null) {
      json['author'] = author!.toJson();
    }

    json['source'] = source.toJson();

    if (responsible != null) {
      json['responsible'] = responsible!.toJson();
    }

    if (reason != null) {
      json['reason'] = reason!.toJson();
    }

    if (response != null) {
      json['response'] = response!.toJson();
    }

    if (focus != null && focus!.isNotEmpty) {
      json['focus'] = focus!.map((e) => e.toJson()).toList();
    }

    if (definition != null) {
      final fieldJson18 = definition!.toJson();
      json['definition'] = fieldJson18['value'];
      if (fieldJson18['_value'] != null) {
        json['_definition'] = fieldJson18['_value'];
      }
    }

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
    Coding? eventCoding,
    FhirUri? eventUri,
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      eventCoding: eventCoding ?? this.eventCoding,
      eventUri: eventUri ?? this.eventUri,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [MessageHeaderDestination]
/// The destination application which the message is intended for.
class MessageHeaderDestination extends BackboneElement {
  /// Primary constructor for [MessageHeaderDestination]

  MessageHeaderDestination({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.name,
    this.target,
    required this.endpoint,
    this.receiver,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MessageHeaderDestination.fromJson(
    Map<String, dynamic> json,
  ) {
    return MessageHeaderDestination(
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
      name: json['name'] != null
          ? FhirString.fromJson({
              'value': json['name'],
              '_value': json['_name'],
            })
          : null,
      target: json['target'] != null
          ? Reference.fromJson(
              json['target'] as Map<String, dynamic>,
            )
          : null,
      endpoint: FhirUrl.fromJson({
        'value': json['endpoint'],
        '_value': json['_endpoint'],
      }),
      receiver: json['receiver'] != null
          ? Reference.fromJson(
              json['receiver'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [MessageHeaderDestination] from a [String]
  /// or [YamlMap] object
  factory MessageHeaderDestination.fromYaml(dynamic yaml) => yaml is String
      ? MessageHeaderDestination.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? MessageHeaderDestination.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'MessageHeaderDestination cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [MessageHeaderDestination]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MessageHeaderDestination.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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

    if (name != null) {
      final fieldJson2 = name!.toJson();
      json['name'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_name'] = fieldJson2['_value'];
      }
    }

    if (target != null) {
      json['target'] = target!.toJson();
    }

    final fieldJson4 = endpoint.toJson();
    json['endpoint'] = fieldJson4['value'];
    if (fieldJson4['_value'] != null) {
      json['_endpoint'] = fieldJson4['_value'];
    }

    if (receiver != null) {
      json['receiver'] = receiver!.toJson();
    }

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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MessageHeaderDestination(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      target: target ?? this.target,
      endpoint: endpoint ?? this.endpoint,
      receiver: receiver ?? this.receiver,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [MessageHeaderSource]
/// The source application from which this message originated.
class MessageHeaderSource extends BackboneElement {
  /// Primary constructor for [MessageHeaderSource]

  MessageHeaderSource({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.name,
    this.software,
    this.version,
    this.contact,
    required this.endpoint,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MessageHeaderSource.fromJson(
    Map<String, dynamic> json,
  ) {
    return MessageHeaderSource(
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
      name: json['name'] != null
          ? FhirString.fromJson({
              'value': json['name'],
              '_value': json['_name'],
            })
          : null,
      software: json['software'] != null
          ? FhirString.fromJson({
              'value': json['software'],
              '_value': json['_software'],
            })
          : null,
      version: json['version'] != null
          ? FhirString.fromJson({
              'value': json['version'],
              '_value': json['_version'],
            })
          : null,
      contact: json['contact'] != null
          ? ContactPoint.fromJson(
              json['contact'] as Map<String, dynamic>,
            )
          : null,
      endpoint: FhirUrl.fromJson({
        'value': json['endpoint'],
        '_value': json['_endpoint'],
      }),
    );
  }

  /// Deserialize [MessageHeaderSource] from a [String]
  /// or [YamlMap] object
  factory MessageHeaderSource.fromYaml(dynamic yaml) => yaml is String
      ? MessageHeaderSource.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? MessageHeaderSource.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'MessageHeaderSource cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [MessageHeaderSource]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MessageHeaderSource.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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

    if (name != null) {
      final fieldJson2 = name!.toJson();
      json['name'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_name'] = fieldJson2['_value'];
      }
    }

    if (software != null) {
      final fieldJson3 = software!.toJson();
      json['software'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_software'] = fieldJson3['_value'];
      }
    }

    if (version != null) {
      final fieldJson4 = version!.toJson();
      json['version'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_version'] = fieldJson4['_value'];
      }
    }

    if (contact != null) {
      json['contact'] = contact!.toJson();
    }

    final fieldJson6 = endpoint.toJson();
    json['endpoint'] = fieldJson6['value'];
    if (fieldJson6['_value'] != null) {
      json['_endpoint'] = fieldJson6['_value'];
    }

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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [MessageHeaderResponse]
/// Information about the message that this message is a response to. Only
/// present if this message is a response.
class MessageHeaderResponse extends BackboneElement {
  /// Primary constructor for [MessageHeaderResponse]

  MessageHeaderResponse({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.identifier,
    required this.code,
    this.details,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MessageHeaderResponse.fromJson(
    Map<String, dynamic> json,
  ) {
    return MessageHeaderResponse(
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
      identifier: FhirId.fromJson({
        'value': json['identifier'],
        '_value': json['_identifier'],
      }),
      code: ResponseType.fromJson({
        'value': json['code'],
        '_value': json['_code'],
      }),
      details: json['details'] != null
          ? Reference.fromJson(
              json['details'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [MessageHeaderResponse] from a [String]
  /// or [YamlMap] object
  factory MessageHeaderResponse.fromYaml(dynamic yaml) => yaml is String
      ? MessageHeaderResponse.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? MessageHeaderResponse.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'MessageHeaderResponse cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [MessageHeaderResponse]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MessageHeaderResponse.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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

    final fieldJson2 = identifier.toJson();
    json['identifier'] = fieldJson2['value'];
    if (fieldJson2['_value'] != null) {
      json['_identifier'] = fieldJson2['_value'];
    }

    json['code'] = code.toJson();

    if (details != null) {
      json['details'] = details!.toJson();
    }

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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MessageHeaderResponse(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      code: code ?? this.code,
      details: details ?? this.details,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
