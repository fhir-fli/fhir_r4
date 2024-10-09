import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'communication_request.g.dart';

/// [CommunicationRequest] /// A request to convey information; e.g. the CDS system proposes that an alert
/// be sent to a responsible provider, the CDS system proposes that the public
/// health agency be notified about a reportable condition.
@JsonSerializable()
class CommunicationRequest extends DomainResource {
  CommunicationRequest({
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
    this.identifier,
    this.basedOn,
    this.replaces,
    this.groupIdentifier,
    required this.status,
    this.statusElement,
    this.statusReason,
    this.category,
    this.priority,
    this.priorityElement,
    this.doNotPerform,
    this.doNotPerformElement,
    this.medium,
    this.subject,
    this.about,
    this.encounter,
    this.payload,
    this.occurrenceDateTime,
    this.occurrenceDateTimeElement,
    this.occurrencePeriod,
    this.authoredOn,
    this.authoredOnElement,
    this.requester,
    this.recipient,
    this.sender,
    this.reasonCode,
    this.reasonReference,
    this.note,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    // ignore: avoid_unused_constructor_parameters
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.CommunicationRequest);
  @override
  String get fhirType => 'CommunicationRequest';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Business identifiers assigned to this communication request by the
  /// performer or other systems which remain constant as the resource is updated
  /// and propagates from server to server.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [basedOn] /// A plan or proposal that is fulfilled in whole or in part by this request.
  @JsonKey(name: 'basedOn')
  final List<Reference>? basedOn;

  /// [replaces] /// Completed or terminated request(s) whose function is taken by this new
  /// request.
  @JsonKey(name: 'replaces')
  final List<Reference>? replaces;

  /// [groupIdentifier] /// A shared identifier common to all requests that were authorized more or
  /// less simultaneously by a single author, representing the identifier of the
  /// requisition, prescription or similar form.
  @JsonKey(name: 'groupIdentifier')
  final Identifier? groupIdentifier;

  /// [status] /// The status of the proposal or order.
  @JsonKey(name: 'status')
  final RequestStatus status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [statusReason] /// Captures the reason for the current state of the CommunicationRequest.
  @JsonKey(name: 'statusReason')
  final CodeableConcept? statusReason;

  /// [category] /// The type of message to be sent such as alert, notification, reminder,
  /// instruction, etc.
  @JsonKey(name: 'category')
  final List<CommunicationCategory>? category;

  /// [priority] /// Characterizes how quickly the proposed act must be initiated. Includes
  /// concepts such as stat, urgent, routine.
  @JsonKey(name: 'priority')
  final RequestPriority? priority;
  @JsonKey(name: '_priority')
  final Element? priorityElement;

  /// [doNotPerform] /// If true indicates that the CommunicationRequest is asking for the specified
  /// action to *not* occur.
  @JsonKey(name: 'doNotPerform')
  final FhirBoolean? doNotPerform;
  @JsonKey(name: '_doNotPerform')
  final Element? doNotPerformElement;

  /// [medium] /// A channel that was used for this communication (e.g. email, fax).
  @JsonKey(name: 'medium')
  final List<CodeableConcept>? medium;

  /// [subject] /// The patient or group that is the focus of this communication request.
  @JsonKey(name: 'subject')
  final Reference? subject;

  /// [about] /// Other resources that pertain to this communication request and to which
  /// this communication request should be associated.
  @JsonKey(name: 'about')
  final List<Reference>? about;

  /// [encounter] /// The Encounter during which this CommunicationRequest was created or to
  /// which the creation of this record is tightly associated.
  @JsonKey(name: 'encounter')
  final Reference? encounter;

  /// [payload] /// Text, attachment(s), or resource(s) to be communicated to the recipient.
  @JsonKey(name: 'payload')
  final List<CommunicationRequestPayload>? payload;

  /// [occurrenceDateTime] /// The time when this communication is to occur.
  @JsonKey(name: 'occurrenceDateTime')
  final FhirDateTime? occurrenceDateTime;
  @JsonKey(name: '_occurrenceDateTime')
  final Element? occurrenceDateTimeElement;

  /// [occurrencePeriod] /// The time when this communication is to occur.
  @JsonKey(name: 'occurrencePeriod')
  final Period? occurrencePeriod;

  /// [authoredOn] /// For draft requests, indicates the date of initial creation. For requests
  /// with other statuses, indicates the date of activation.
  @JsonKey(name: 'authoredOn')
  final FhirDateTime? authoredOn;
  @JsonKey(name: '_authoredOn')
  final Element? authoredOnElement;

  /// [requester] /// The device, individual, or organization who initiated the request and has
  /// responsibility for its activation.
  @JsonKey(name: 'requester')
  final Reference? requester;

  /// [recipient] /// The entity (e.g. person, organization, clinical information system, device,
  /// group, or care team) which is the intended target of the communication.
  @JsonKey(name: 'recipient')
  final List<Reference>? recipient;

  /// [sender] /// The entity (e.g. person, organization, clinical information system, or
  /// device) which is to be the source of the communication.
  @JsonKey(name: 'sender')
  final Reference? sender;

  /// [reasonCode] /// Describes why the request is being made in coded or textual form.
  @JsonKey(name: 'reasonCode')
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference] /// Indicates another resource whose existence justifies this request.
  @JsonKey(name: 'reasonReference')
  final List<Reference>? reasonReference;

  /// [note] /// Comments made about the request by the requester, sender, recipient,
  /// subject or other participants.
  @JsonKey(name: 'note')
  final List<Annotation>? note;
  factory CommunicationRequest.fromJson(Map<String, dynamic> json) =>
      _$CommunicationRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CommunicationRequestToJson(this);

  @override
  CommunicationRequest clone() => throw UnimplementedError();
  @override
  CommunicationRequest copyWith({
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
    List<Identifier>? identifier,
    List<Reference>? basedOn,
    List<Reference>? replaces,
    Identifier? groupIdentifier,
    RequestStatus? status,
    Element? statusElement,
    CodeableConcept? statusReason,
    List<CommunicationCategory>? category,
    RequestPriority? priority,
    Element? priorityElement,
    FhirBoolean? doNotPerform,
    Element? doNotPerformElement,
    List<CodeableConcept>? medium,
    Reference? subject,
    List<Reference>? about,
    Reference? encounter,
    List<CommunicationRequestPayload>? payload,
    FhirDateTime? occurrenceDateTime,
    Element? occurrenceDateTimeElement,
    Period? occurrencePeriod,
    FhirDateTime? authoredOn,
    Element? authoredOnElement,
    Reference? requester,
    List<Reference>? recipient,
    Reference? sender,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<Annotation>? note,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CommunicationRequest(
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
      identifier: identifier ?? this.identifier,
      basedOn: basedOn ?? this.basedOn,
      replaces: replaces ?? this.replaces,
      groupIdentifier: groupIdentifier ?? this.groupIdentifier,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      statusReason: statusReason ?? this.statusReason,
      category: category ?? this.category,
      priority: priority ?? this.priority,
      priorityElement: priorityElement ?? this.priorityElement,
      doNotPerform: doNotPerform ?? this.doNotPerform,
      doNotPerformElement: doNotPerformElement ?? this.doNotPerformElement,
      medium: medium ?? this.medium,
      subject: subject ?? this.subject,
      about: about ?? this.about,
      encounter: encounter ?? this.encounter,
      payload: payload ?? this.payload,
      occurrenceDateTime: occurrenceDateTime ?? this.occurrenceDateTime,
      occurrenceDateTimeElement:
          occurrenceDateTimeElement ?? this.occurrenceDateTimeElement,
      occurrencePeriod: occurrencePeriod ?? this.occurrencePeriod,
      authoredOn: authoredOn ?? this.authoredOn,
      authoredOnElement: authoredOnElement ?? this.authoredOnElement,
      requester: requester ?? this.requester,
      recipient: recipient ?? this.recipient,
      sender: sender ?? this.sender,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      note: note ?? this.note,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CommunicationRequest.fromYaml(dynamic yaml) => yaml is String
      ? CommunicationRequest.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CommunicationRequest.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CommunicationRequest cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CommunicationRequest.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CommunicationRequest.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [CommunicationRequestPayload] /// Text, attachment(s), or resource(s) to be communicated to the recipient.
@JsonSerializable()
class CommunicationRequestPayload extends BackboneElement {
  CommunicationRequestPayload({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.contentString,
    this.contentStringElement,
    required this.contentAttachment,
    required this.contentReference,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'CommunicationRequestPayload';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [contentString] /// The communicated content (or for multi-part communications, one portion of
  /// the communication).
  @JsonKey(name: 'contentString')
  final FhirString contentString;
  @JsonKey(name: '_contentString')
  final Element? contentStringElement;

  /// [contentAttachment] /// The communicated content (or for multi-part communications, one portion of
  /// the communication).
  @JsonKey(name: 'contentAttachment')
  final Attachment contentAttachment;

  /// [contentReference] /// The communicated content (or for multi-part communications, one portion of
  /// the communication).
  @JsonKey(name: 'contentReference')
  final Reference contentReference;
  factory CommunicationRequestPayload.fromJson(Map<String, dynamic> json) =>
      _$CommunicationRequestPayloadFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CommunicationRequestPayloadToJson(this);

  @override
  CommunicationRequestPayload clone() => throw UnimplementedError();
  @override
  CommunicationRequestPayload copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? contentString,
    Element? contentStringElement,
    Attachment? contentAttachment,
    Reference? contentReference,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CommunicationRequestPayload(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      contentString: contentString ?? this.contentString,
      contentStringElement: contentStringElement ?? this.contentStringElement,
      contentAttachment: contentAttachment ?? this.contentAttachment,
      contentReference: contentReference ?? this.contentReference,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CommunicationRequestPayload.fromYaml(dynamic yaml) => yaml is String
      ? CommunicationRequestPayload.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CommunicationRequestPayload.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CommunicationRequestPayload cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CommunicationRequestPayload.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CommunicationRequestPayload.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
