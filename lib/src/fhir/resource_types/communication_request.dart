import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [CommunicationRequest] /// A request to convey information; e.g. the CDS system proposes that an alert
/// be sent to a responsible provider, the CDS system proposes that the public
/// health agency be notified about a reportable condition.
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
  }) : super(resourceType: R4ResourceType.CommunicationRequest);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Business identifiers assigned to this communication request by the
  /// performer or other systems which remain constant as the resource is updated
  /// and propagates from server to server.
  final List<Identifier>? identifier;

  /// [basedOn] /// A plan or proposal that is fulfilled in whole or in part by this request.
  final List<Reference>? basedOn;

  /// [replaces] /// Completed or terminated request(s) whose function is taken by this new
  /// request.
  final List<Reference>? replaces;

  /// [groupIdentifier] /// A shared identifier common to all requests that were authorized more or
  /// less simultaneously by a single author, representing the identifier of the
  /// requisition, prescription or similar form.
  final Identifier? groupIdentifier;

  /// [status] /// The status of the proposal or order.
  final FhirCode status;
  final Element? statusElement;

  /// [statusReason] /// Captures the reason for the current state of the CommunicationRequest.
  final CodeableConcept? statusReason;

  /// [category] /// The type of message to be sent such as alert, notification, reminder,
  /// instruction, etc.
  final List<CodeableConcept>? category;

  /// [priority] /// Characterizes how quickly the proposed act must be initiated. Includes
  /// concepts such as stat, urgent, routine.
  final FhirCode? priority;
  final Element? priorityElement;

  /// [doNotPerform] /// If true indicates that the CommunicationRequest is asking for the specified
  /// action to *not* occur.
  final FhirBoolean? doNotPerform;
  final Element? doNotPerformElement;

  /// [medium] /// A channel that was used for this communication (e.g. email, fax).
  final List<CodeableConcept>? medium;

  /// [subject] /// The patient or group that is the focus of this communication request.
  final Reference? subject;

  /// [about] /// Other resources that pertain to this communication request and to which
  /// this communication request should be associated.
  final List<Reference>? about;

  /// [encounter] /// The Encounter during which this CommunicationRequest was created or to
  /// which the creation of this record is tightly associated.
  final Reference? encounter;

  /// [payload] /// Text, attachment(s), or resource(s) to be communicated to the recipient.
  final List<CommunicationRequestPayload>? payload;

  /// [occurrenceDateTime] /// The time when this communication is to occur.
  final FhirDateTime? occurrenceDateTime;
  final Element? occurrenceDateTimeElement;

  /// [occurrencePeriod] /// The time when this communication is to occur.
  final Period? occurrencePeriod;

  /// [authoredOn] /// For draft requests, indicates the date of initial creation. For requests
  /// with other statuses, indicates the date of activation.
  final FhirDateTime? authoredOn;
  final Element? authoredOnElement;

  /// [requester] /// The device, individual, or organization who initiated the request and has
  /// responsibility for its activation.
  final Reference? requester;

  /// [recipient] /// The entity (e.g. person, organization, clinical information system, device,
  /// group, or care team) which is the intended target of the communication.
  final List<Reference>? recipient;

  /// [sender] /// The entity (e.g. person, organization, clinical information system, or
  /// device) which is to be the source of the communication.
  final Reference? sender;

  /// [reasonCode] /// Describes why the request is being made in coded or textual form.
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference] /// Indicates another resource whose existence justifies this request.
  final List<Reference>? reasonReference;

  /// [note] /// Comments made about the request by the requester, sender, recipient,
  /// subject or other participants.
  final List<Annotation>? note;
  @override
  CommunicationRequest clone() => throw UnimplementedError();
  CommunicationRequest copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<Reference>? basedOn,
    List<Reference>? replaces,
    Identifier? groupIdentifier,
    FhirCode? status,
    Element? statusElement,
    CodeableConcept? statusReason,
    List<CodeableConcept>? category,
    FhirCode? priority,
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CommunicationRequestPayload] /// Text, attachment(s), or resource(s) to be communicated to the recipient.
class CommunicationRequestPayload extends BackboneElement {
  CommunicationRequestPayload({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.contentString,
    this.contentStringElement,
    required this.contentAttachment,
    required this.contentReference,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [contentString] /// The communicated content (or for multi-part communications, one portion of
  /// the communication).
  final FhirString contentString;
  final Element? contentStringElement;

  /// [contentAttachment] /// The communicated content (or for multi-part communications, one portion of
  /// the communication).
  final Attachment contentAttachment;

  /// [contentReference] /// The communicated content (or for multi-part communications, one portion of
  /// the communication).
  final Reference contentReference;
  @override
  CommunicationRequestPayload clone() => throw UnimplementedError();
  CommunicationRequestPayload copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? contentString,
    Element? contentStringElement,
    Attachment? contentAttachment,
    Reference? contentReference,
  }) {
    return CommunicationRequestPayload(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      contentString: contentString ?? this.contentString,
      contentStringElement: contentStringElement ?? this.contentStringElement,
      contentAttachment: contentAttachment ?? this.contentAttachment,
      contentReference: contentReference ?? this.contentReference,
    );
  }
}
