import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Communication] /// An occurrence of information being transmitted; e.g. an alert that was sent
/// to a responsible provider, a public health agency that was notified about a
/// reportable condition.
class Communication extends DomainResource {
  Communication({
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
    this.instantiatesCanonical,
    this.instantiatesCanonicalElement,
    this.instantiatesUri,
    this.instantiatesUriElement,
    this.basedOn,
    this.partOf,
    this.inResponseTo,
    required this.status,
    this.statusElement,
    this.statusReason,
    this.category,
    this.priority,
    this.priorityElement,
    this.medium,
    this.subject,
    this.topic,
    this.about,
    this.encounter,
    this.sent,
    this.sentElement,
    this.received,
    this.receivedElement,
    this.recipient,
    this.sender,
    this.reasonCode,
    this.reasonReference,
    this.payload,
    this.note,
  }) : super(resourceType: R4ResourceType.Communication);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Business identifiers assigned to this communication by the performer or
  /// other systems which remain constant as the resource is updated and
  /// propagates from server to server.
  final List<Identifier>? identifier;

  /// [instantiatesCanonical] /// The URL pointing to a FHIR-defined protocol, guideline, orderset or other
  /// definition that is adhered to in whole or in part by this Communication.
  final List<FhirCanonical>? instantiatesCanonical;
  final List<Element>? instantiatesCanonicalElement;

  /// [instantiatesUri] /// The URL pointing to an externally maintained protocol, guideline, orderset
  /// or other definition that is adhered to in whole or in part by this
  /// Communication.
  final List<FhirUri>? instantiatesUri;
  final List<Element>? instantiatesUriElement;

  /// [basedOn] /// An order, proposal or plan fulfilled in whole or in part by this
  /// Communication.
  final List<Reference>? basedOn;

  /// [partOf] /// Part of this action.
  final List<Reference>? partOf;

  /// [inResponseTo] /// Prior communication that this communication is in response to.
  final List<Reference>? inResponseTo;

  /// [status] /// The status of the transmission.
  final FhirCode status;
  final Element? statusElement;

  /// [statusReason] /// Captures the reason for the current state of the Communication.
  final CodeableConcept? statusReason;

  /// [category] /// The type of message conveyed such as alert, notification, reminder,
  /// instruction, etc.
  final List<CodeableConcept>? category;

  /// [priority] /// Characterizes how quickly the planned or in progress communication must be
  /// addressed. Includes concepts such as stat, urgent, routine.
  final FhirCode? priority;
  final Element? priorityElement;

  /// [medium] /// A channel that was used for this communication (e.g. email, fax).
  final List<CodeableConcept>? medium;

  /// [subject] /// The patient or group that was the focus of this communication.
  final Reference? subject;

  /// [topic] /// Description of the purpose/content, similar to a subject line in an email.
  final CodeableConcept? topic;

  /// [about] /// Other resources that pertain to this communication and to which this
  /// communication should be associated.
  final List<Reference>? about;

  /// [encounter] /// The Encounter during which this Communication was created or to which the
  /// creation of this record is tightly associated.
  final Reference? encounter;

  /// [sent] /// The time when this communication was sent.
  final FhirDateTime? sent;
  final Element? sentElement;

  /// [received] /// The time when this communication arrived at the destination.
  final FhirDateTime? received;
  final Element? receivedElement;

  /// [recipient] /// The entity (e.g. person, organization, clinical information system, care
  /// team or device) which was the target of the communication. If receipts need
  /// to be tracked by an individual, a separate resource instance will need to
  /// be created for each recipient. Multiple recipient communications are
  /// intended where either receipts are not tracked (e.g. a mass mail-out) or a
  /// receipt is captured in aggregate (all emails confirmed received by a
  /// particular time).
  final List<Reference>? recipient;

  /// [sender] /// The entity (e.g. person, organization, clinical information system, or
  /// device) which was the source of the communication.
  final Reference? sender;

  /// [reasonCode] /// The reason or justification for the communication.
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference] /// Indicates another resource whose existence justifies this communication.
  final List<Reference>? reasonReference;

  /// [payload] /// Text, attachment(s), or resource(s) that was communicated to the recipient.
  final List<CommunicationPayload>? payload;

  /// [note] /// Additional notes or commentary about the communication by the sender,
  /// receiver or other interested parties.
  final List<Annotation>? note;
  @override
  Communication clone() => throw UnimplementedError();
  Communication copy({
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
    List<FhirCanonical>? instantiatesCanonical,
    List<Element>? instantiatesCanonicalElement,
    List<FhirUri>? instantiatesUri,
    List<Element>? instantiatesUriElement,
    List<Reference>? basedOn,
    List<Reference>? partOf,
    List<Reference>? inResponseTo,
    FhirCode? status,
    Element? statusElement,
    CodeableConcept? statusReason,
    List<CodeableConcept>? category,
    FhirCode? priority,
    Element? priorityElement,
    List<CodeableConcept>? medium,
    Reference? subject,
    CodeableConcept? topic,
    List<Reference>? about,
    Reference? encounter,
    FhirDateTime? sent,
    Element? sentElement,
    FhirDateTime? received,
    Element? receivedElement,
    List<Reference>? recipient,
    Reference? sender,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<CommunicationPayload>? payload,
    List<Annotation>? note,
  }) {
    return Communication(
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
      instantiatesCanonical:
          instantiatesCanonical ?? this.instantiatesCanonical,
      instantiatesCanonicalElement:
          instantiatesCanonicalElement ?? this.instantiatesCanonicalElement,
      instantiatesUri: instantiatesUri ?? this.instantiatesUri,
      instantiatesUriElement:
          instantiatesUriElement ?? this.instantiatesUriElement,
      basedOn: basedOn ?? this.basedOn,
      partOf: partOf ?? this.partOf,
      inResponseTo: inResponseTo ?? this.inResponseTo,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      statusReason: statusReason ?? this.statusReason,
      category: category ?? this.category,
      priority: priority ?? this.priority,
      priorityElement: priorityElement ?? this.priorityElement,
      medium: medium ?? this.medium,
      subject: subject ?? this.subject,
      topic: topic ?? this.topic,
      about: about ?? this.about,
      encounter: encounter ?? this.encounter,
      sent: sent ?? this.sent,
      sentElement: sentElement ?? this.sentElement,
      received: received ?? this.received,
      receivedElement: receivedElement ?? this.receivedElement,
      recipient: recipient ?? this.recipient,
      sender: sender ?? this.sender,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      payload: payload ?? this.payload,
      note: note ?? this.note,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CommunicationPayload] /// Text, attachment(s), or resource(s) that was communicated to the recipient.
class CommunicationPayload extends BackboneElement {
  CommunicationPayload({
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

  /// [contentString] /// A communicated content (or for multi-part communications, one portion of
  /// the communication).
  final FhirString contentString;
  final Element? contentStringElement;

  /// [contentAttachment] /// A communicated content (or for multi-part communications, one portion of
  /// the communication).
  final Attachment contentAttachment;

  /// [contentReference] /// A communicated content (or for multi-part communications, one portion of
  /// the communication).
  final Reference contentReference;
  @override
  CommunicationPayload clone() => throw UnimplementedError();
  CommunicationPayload copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? contentString,
    Element? contentStringElement,
    Attachment? contentAttachment,
    Reference? contentReference,
  }) {
    return CommunicationPayload(
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
