import 'dart:convert';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [MessageHeader] /// The header for a message exchange that is either requesting or responding
/// to an action. The reference(s) that are the subject of the action as well
/// as other information related to the action are typically transmitted in a
/// bundle in which the MessageHeader resource instance is the first resource
/// in the bundle.
class MessageHeader extends DomainResource {
  MessageHeader({
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
    this.eventCoding,
    this.eventUri,
    this.eventUriElement,
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
    this.definitionElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(resourceType: R4ResourceType.MessageHeader);

  @override
  String get fhirType => 'MessageHeader';

  /// [eventCoding] /// Code that identifies the event this message represents and connects it with
  /// its definition. Events defined as part of the FHIR specification have the
  /// system value "http://terminology.hl7.org/CodeSystem/message-events".
  /// Alternatively uri to the EventDefinition.
  final Coding? eventCoding;

  /// [eventUri] /// Code that identifies the event this message represents and connects it with
  /// its definition. Events defined as part of the FHIR specification have the
  /// system value "http://terminology.hl7.org/CodeSystem/message-events".
  /// Alternatively uri to the EventDefinition.
  final FhirUri? eventUri;
  final Element? eventUriElement;

  /// [destination] /// The destination application which the message is intended for.
  final List<MessageHeaderDestination>? destination;

  /// [sender] /// Identifies the sending system to allow the use of a trust relationship.
  final Reference? sender;

  /// [enterer] /// The person or device that performed the data entry leading to this message.
  /// When there is more than one candidate, pick the most proximal to the
  /// message. Can provide other enterers in extensions.
  final Reference? enterer;

  /// [author] /// The logical author of the message - the person or device that decided the
  /// described event should happen. When there is more than one candidate, pick
  /// the most proximal to the MessageHeader. Can provide other authors in
  /// extensions.
  final Reference? author;

  /// [source] /// The source application from which this message originated.
  final MessageHeaderSource source;

  /// [responsible] /// The person or organization that accepts overall responsibility for the
  /// contents of the message. The implication is that the message event happened
  /// under the policies of the responsible party.
  final Reference? responsible;

  /// [reason] /// Coded indication of the cause for the event - indicates a reason for the
  /// occurrence of the event that is a focus of this message.
  final CodeableConcept? reason;

  /// [response] /// Information about the message that this message is a response to. Only
  /// present if this message is a response.
  final MessageHeaderResponse? response;

  /// [focus] /// The actual data of the message - a reference to the root/focus class of the
  /// event.
  final List<Reference>? focus;

  /// [definition] /// Permanent link to the MessageDefinition for this message.
  final FhirCanonical? definition;
  final Element? definitionElement;
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
      json['implicitRules'] = implicitRules!.toJson();
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
    if (eventCoding != null) {
      json['eventCoding'] = eventCoding!.toJson();
    }
    if (eventUri?.value != null) {
      json['eventUri'] = eventUri!.toJson();
    }
    if (eventUriElement != null) {
      json['_eventUri'] = eventUriElement!.toJson();
    }
    if (destination != null && destination!.isNotEmpty) {
      json['destination'] = destination!
          .map<dynamic>((MessageHeaderDestination v) => v.toJson())
          .toList();
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
      json['focus'] = focus!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (definition?.value != null) {
      json['definition'] = definition!.toJson();
    }
    if (definitionElement != null) {
      json['_definition'] = definitionElement!.toJson();
    }
    return json;
  }

  factory MessageHeader.fromJson(Map<String, dynamic> json) {
    return MessageHeader(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson(json['implicitRules'])
          : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'])
          : null,
      languageElement: json['_language'] != null
          ? Element.fromJson(json['_language'] as Map<String, dynamic>)
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
      eventCoding: json['eventCoding'] != null
          ? Coding.fromJson(json['eventCoding'] as Map<String, dynamic>)
          : null,
      eventUri:
          json['eventUri'] != null ? FhirUri.fromJson(json['eventUri']) : null,
      eventUriElement: json['_eventUri'] != null
          ? Element.fromJson(json['_eventUri'] as Map<String, dynamic>)
          : null,
      destination: json['destination'] != null
          ? (json['destination'] as List<dynamic>)
              .map<MessageHeaderDestination>((dynamic v) =>
                  MessageHeaderDestination.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      sender: json['sender'] != null
          ? Reference.fromJson(json['sender'] as Map<String, dynamic>)
          : null,
      enterer: json['enterer'] != null
          ? Reference.fromJson(json['enterer'] as Map<String, dynamic>)
          : null,
      author: json['author'] != null
          ? Reference.fromJson(json['author'] as Map<String, dynamic>)
          : null,
      source:
          MessageHeaderSource.fromJson(json['source'] as Map<String, dynamic>),
      responsible: json['responsible'] != null
          ? Reference.fromJson(json['responsible'] as Map<String, dynamic>)
          : null,
      reason: json['reason'] != null
          ? CodeableConcept.fromJson(json['reason'] as Map<String, dynamic>)
          : null,
      response: json['response'] != null
          ? MessageHeaderResponse.fromJson(
              json['response'] as Map<String, dynamic>)
          : null,
      focus: json['focus'] != null
          ? (json['focus'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      definition: json['definition'] != null
          ? FhirCanonical.fromJson(json['definition'])
          : null,
      definitionElement: json['_definition'] != null
          ? Element.fromJson(json['_definition'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  MessageHeader clone() => throw UnimplementedError();
  @override
  MessageHeader copyWith({
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
    Coding? eventCoding,
    FhirUri? eventUri,
    Element? eventUriElement,
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
    Element? definitionElement,
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
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      eventCoding: eventCoding ?? this.eventCoding,
      eventUri: eventUri ?? this.eventUri,
      eventUriElement: eventUriElement ?? this.eventUriElement,
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
      definitionElement: definitionElement ?? this.definitionElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory MessageHeader.fromYaml(dynamic yaml) => yaml is String
      ? MessageHeader.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MessageHeader.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MessageHeader cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MessageHeader.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MessageHeader.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MessageHeaderDestination] /// The destination application which the message is intended for.
class MessageHeaderDestination extends BackboneElement {
  MessageHeaderDestination({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
    this.nameElement,
    this.target,
    required this.endpoint,
    this.endpointElement,
    this.receiver,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'MessageHeaderDestination';

  /// [name] /// Human-readable name for the target system.
  final FhirString? name;
  final Element? nameElement;

  /// [target] /// Identifies the target end system in situations where the initial message
  /// transmission is to an intermediary system.
  final Reference? target;

  /// [endpoint] /// Indicates where the message should be routed to.
  final FhirUrl endpoint;
  final Element? endpointElement;

  /// [receiver] /// Allows data conveyed by a message to be addressed to a particular person or
  /// department when routing to a specific application isn't sufficient.
  final Reference? receiver;
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
    if (name?.value != null) {
      json['name'] = name!.toJson();
    }
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    if (target != null) {
      json['target'] = target!.toJson();
    }
    json['endpoint'] = endpoint.toJson();
    if (endpointElement != null) {
      json['_endpoint'] = endpointElement!.toJson();
    }
    if (receiver != null) {
      json['receiver'] = receiver!.toJson();
    }
    return json;
  }

  factory MessageHeaderDestination.fromJson(Map<String, dynamic> json) {
    return MessageHeaderDestination(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
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
      name: json['name'] != null ? FhirString.fromJson(json['name']) : null,
      nameElement: json['_name'] != null
          ? Element.fromJson(json['_name'] as Map<String, dynamic>)
          : null,
      target: json['target'] != null
          ? Reference.fromJson(json['target'] as Map<String, dynamic>)
          : null,
      endpoint: FhirUrl.fromJson(json['endpoint']),
      endpointElement: json['_endpoint'] != null
          ? Element.fromJson(json['_endpoint'] as Map<String, dynamic>)
          : null,
      receiver: json['receiver'] != null
          ? Reference.fromJson(json['receiver'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  MessageHeaderDestination clone() => throw UnimplementedError();
  @override
  MessageHeaderDestination copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    Element? nameElement,
    Reference? target,
    FhirUrl? endpoint,
    Element? endpointElement,
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
      nameElement: nameElement ?? this.nameElement,
      target: target ?? this.target,
      endpoint: endpoint ?? this.endpoint,
      endpointElement: endpointElement ?? this.endpointElement,
      receiver: receiver ?? this.receiver,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory MessageHeaderDestination.fromYaml(dynamic yaml) => yaml is String
      ? MessageHeaderDestination.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MessageHeaderDestination.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MessageHeaderDestination cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MessageHeaderDestination.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MessageHeaderDestination.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MessageHeaderSource] /// The source application from which this message originated.
class MessageHeaderSource extends BackboneElement {
  MessageHeaderSource({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
    this.nameElement,
    this.software,
    this.softwareElement,
    this.version,
    this.versionElement,
    this.contact,
    required this.endpoint,
    this.endpointElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'MessageHeaderSource';

  /// [name] /// Human-readable name for the source system.
  final FhirString? name;
  final Element? nameElement;

  /// [software] /// May include configuration or other information useful in debugging.
  final FhirString? software;
  final Element? softwareElement;

  /// [version] /// Can convey versions of multiple systems in situations where a message
  /// passes through multiple hands.
  final FhirString? version;
  final Element? versionElement;

  /// [contact] /// An e-mail, phone, website or other contact point to use to resolve issues
  /// with message communications.
  final ContactPoint? contact;

  /// [endpoint] /// Identifies the routing target to send acknowledgements to.
  final FhirUrl endpoint;
  final Element? endpointElement;
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
    if (name?.value != null) {
      json['name'] = name!.toJson();
    }
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    if (software?.value != null) {
      json['software'] = software!.toJson();
    }
    if (softwareElement != null) {
      json['_software'] = softwareElement!.toJson();
    }
    if (version?.value != null) {
      json['version'] = version!.toJson();
    }
    if (versionElement != null) {
      json['_version'] = versionElement!.toJson();
    }
    if (contact != null) {
      json['contact'] = contact!.toJson();
    }
    json['endpoint'] = endpoint.toJson();
    if (endpointElement != null) {
      json['_endpoint'] = endpointElement!.toJson();
    }
    return json;
  }

  factory MessageHeaderSource.fromJson(Map<String, dynamic> json) {
    return MessageHeaderSource(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
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
      name: json['name'] != null ? FhirString.fromJson(json['name']) : null,
      nameElement: json['_name'] != null
          ? Element.fromJson(json['_name'] as Map<String, dynamic>)
          : null,
      software: json['software'] != null
          ? FhirString.fromJson(json['software'])
          : null,
      softwareElement: json['_software'] != null
          ? Element.fromJson(json['_software'] as Map<String, dynamic>)
          : null,
      version:
          json['version'] != null ? FhirString.fromJson(json['version']) : null,
      versionElement: json['_version'] != null
          ? Element.fromJson(json['_version'] as Map<String, dynamic>)
          : null,
      contact: json['contact'] != null
          ? ContactPoint.fromJson(json['contact'] as Map<String, dynamic>)
          : null,
      endpoint: FhirUrl.fromJson(json['endpoint']),
      endpointElement: json['_endpoint'] != null
          ? Element.fromJson(json['_endpoint'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  MessageHeaderSource clone() => throw UnimplementedError();
  @override
  MessageHeaderSource copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    Element? nameElement,
    FhirString? software,
    Element? softwareElement,
    FhirString? version,
    Element? versionElement,
    ContactPoint? contact,
    FhirUrl? endpoint,
    Element? endpointElement,
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
      nameElement: nameElement ?? this.nameElement,
      software: software ?? this.software,
      softwareElement: softwareElement ?? this.softwareElement,
      version: version ?? this.version,
      versionElement: versionElement ?? this.versionElement,
      contact: contact ?? this.contact,
      endpoint: endpoint ?? this.endpoint,
      endpointElement: endpointElement ?? this.endpointElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory MessageHeaderSource.fromYaml(dynamic yaml) => yaml is String
      ? MessageHeaderSource.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MessageHeaderSource.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MessageHeaderSource cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MessageHeaderSource.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MessageHeaderSource.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MessageHeaderResponse] /// Information about the message that this message is a response to. Only
/// present if this message is a response.
class MessageHeaderResponse extends BackboneElement {
  MessageHeaderResponse({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.identifier,
    this.identifierElement,
    required this.code,
    this.codeElement,
    this.details,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'MessageHeaderResponse';

  /// [identifier] /// The MessageHeader.id of the message to which this message is a response.
  final FhirId identifier;
  final Element? identifierElement;

  /// [code] /// Code that identifies the type of response to the message - whether it was
  /// successful or not, and whether it should be resent or not.
  final ResponseType code;
  final Element? codeElement;

  /// [details] /// Full details of any issues found in the message.
  final Reference? details;
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
    json['identifier'] = identifier.toJson();
    if (identifierElement != null) {
      json['_identifier'] = identifierElement!.toJson();
    }
    json['code'] = code.toJson();
    if (details != null) {
      json['details'] = details!.toJson();
    }
    return json;
  }

  factory MessageHeaderResponse.fromJson(Map<String, dynamic> json) {
    return MessageHeaderResponse(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
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
      identifier: FhirId.fromJson(json['identifier']),
      identifierElement: json['_identifier'] != null
          ? Element.fromJson(json['_identifier'] as Map<String, dynamic>)
          : null,
      code: ResponseType.fromJson(json['code']),
      codeElement: json['_code'] != null
          ? Element.fromJson(json['_code'] as Map<String, dynamic>)
          : null,
      details: json['details'] != null
          ? Reference.fromJson(json['details'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  MessageHeaderResponse clone() => throw UnimplementedError();
  @override
  MessageHeaderResponse copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? identifier,
    Element? identifierElement,
    ResponseType? code,
    Element? codeElement,
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
      identifierElement: identifierElement ?? this.identifierElement,
      code: code ?? this.code,
      codeElement: codeElement ?? this.codeElement,
      details: details ?? this.details,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory MessageHeaderResponse.fromYaml(dynamic yaml) => yaml is String
      ? MessageHeaderResponse.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MessageHeaderResponse.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MessageHeaderResponse cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MessageHeaderResponse.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MessageHeaderResponse.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
