import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'message_header.g.dart';

/// [MessageHeader] /// The header for a message exchange that is either requesting or responding
/// to an action. The reference(s) that are the subject of the action as well
/// as other information related to the action are typically transmitted in a
/// bundle in which the MessageHeader resource instance is the first resource
/// in the bundle.
@JsonSerializable()
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
    required this.eventCoding,
    required this.eventUri,
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
    R4ResourceType? resourceType,
  }) : super(
            resourceType: R4ResourceType.MessageHeader,
            fhirType: 'MessageHeader');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [eventCoding] /// Code that identifies the event this message represents and connects it with
  /// its definition. Events defined as part of the FHIR specification have the
  /// system value "http://terminology.hl7.org/CodeSystem/message-events".
  /// Alternatively uri to the EventDefinition.
  @JsonKey(name: 'eventCoding')
  final Coding eventCoding;

  /// [eventUri] /// Code that identifies the event this message represents and connects it with
  /// its definition. Events defined as part of the FHIR specification have the
  /// system value "http://terminology.hl7.org/CodeSystem/message-events".
  /// Alternatively uri to the EventDefinition.
  @JsonKey(name: 'eventUri')
  final FhirUri eventUri;
  @JsonKey(name: '_eventUri')
  final Element? eventUriElement;

  /// [destination] /// The destination application which the message is intended for.
  @JsonKey(name: 'destination')
  final List<MessageHeaderDestination>? destination;

  /// [sender] /// Identifies the sending system to allow the use of a trust relationship.
  @JsonKey(name: 'sender')
  final Reference? sender;

  /// [enterer] /// The person or device that performed the data entry leading to this message.
  /// When there is more than one candidate, pick the most proximal to the
  /// message. Can provide other enterers in extensions.
  @JsonKey(name: 'enterer')
  final Reference? enterer;

  /// [author] /// The logical author of the message - the person or device that decided the
  /// described event should happen. When there is more than one candidate, pick
  /// the most proximal to the MessageHeader. Can provide other authors in
  /// extensions.
  @JsonKey(name: 'author')
  final Reference? author;

  /// [source] /// The source application from which this message originated.
  @JsonKey(name: 'source')
  final MessageHeaderSource source;

  /// [responsible] /// The person or organization that accepts overall responsibility for the
  /// contents of the message. The implication is that the message event happened
  /// under the policies of the responsible party.
  @JsonKey(name: 'responsible')
  final Reference? responsible;

  /// [reason] /// Coded indication of the cause for the event - indicates a reason for the
  /// occurrence of the event that is a focus of this message.
  @JsonKey(name: 'reason')
  final ExampleMessageReasonCodes? reason;

  /// [response] /// Information about the message that this message is a response to. Only
  /// present if this message is a response.
  @JsonKey(name: 'response')
  final MessageHeaderResponse? response;

  /// [focus] /// The actual data of the message - a reference to the root/focus class of the
  /// event.
  @JsonKey(name: 'focus')
  final List<Reference>? focus;

  /// [definition] /// Permanent link to the MessageDefinition for this message.
  @JsonKey(name: 'definition')
  final FhirCanonical? definition;
  @JsonKey(name: '_definition')
  final Element? definitionElement;
  factory MessageHeader.fromJson(Map<String, dynamic> json) =>
      _$MessageHeaderFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MessageHeaderToJson(this);

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
    ExampleMessageReasonCodes? reason,
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
@JsonSerializable()
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
  }) : super(fhirType: 'MessageHeaderDestination');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [name] /// Human-readable name for the target system.
  @JsonKey(name: 'name')
  final FhirString? name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [target] /// Identifies the target end system in situations where the initial message
  /// transmission is to an intermediary system.
  @JsonKey(name: 'target')
  final Reference? target;

  /// [endpoint] /// Indicates where the message should be routed to.
  @JsonKey(name: 'endpoint')
  final FhirUrl endpoint;
  @JsonKey(name: '_endpoint')
  final Element? endpointElement;

  /// [receiver] /// Allows data conveyed by a message to be addressed to a particular person or
  /// department when routing to a specific application isn't sufficient.
  @JsonKey(name: 'receiver')
  final Reference? receiver;
  factory MessageHeaderDestination.fromJson(Map<String, dynamic> json) =>
      _$MessageHeaderDestinationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MessageHeaderDestinationToJson(this);

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
@JsonSerializable()
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
  }) : super(fhirType: 'MessageHeaderSource');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [name] /// Human-readable name for the source system.
  @JsonKey(name: 'name')
  final FhirString? name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [software] /// May include configuration or other information useful in debugging.
  @JsonKey(name: 'software')
  final FhirString? software;
  @JsonKey(name: '_software')
  final Element? softwareElement;

  /// [version] /// Can convey versions of multiple systems in situations where a message
  /// passes through multiple hands.
  @JsonKey(name: 'version')
  final FhirString? version;
  @JsonKey(name: '_version')
  final Element? versionElement;

  /// [contact] /// An e-mail, phone, website or other contact point to use to resolve issues
  /// with message communications.
  @JsonKey(name: 'contact')
  final ContactPoint? contact;

  /// [endpoint] /// Identifies the routing target to send acknowledgements to.
  @JsonKey(name: 'endpoint')
  final FhirUrl endpoint;
  @JsonKey(name: '_endpoint')
  final Element? endpointElement;
  factory MessageHeaderSource.fromJson(Map<String, dynamic> json) =>
      _$MessageHeaderSourceFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MessageHeaderSourceToJson(this);

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
@JsonSerializable()
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
  }) : super(fhirType: 'MessageHeaderResponse');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// The MessageHeader.id of the message to which this message is a response.
  @JsonKey(name: 'identifier')
  final FhirId identifier;
  @JsonKey(name: '_identifier')
  final Element? identifierElement;

  /// [code] /// Code that identifies the type of response to the message - whether it was
  /// successful or not, and whether it should be resent or not.
  @JsonKey(name: 'code')
  final ResponseType code;
  @JsonKey(name: '_code')
  final Element? codeElement;

  /// [details] /// Full details of any issues found in the message.
  @JsonKey(name: 'details')
  final Reference? details;
  factory MessageHeaderResponse.fromJson(Map<String, dynamic> json) =>
      _$MessageHeaderResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MessageHeaderResponseToJson(this);

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
