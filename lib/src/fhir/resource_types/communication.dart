import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Communication extends DomainResource {
  final List<Identifier>? identifier;
  final List<FhirCanonical>? instantiatesCanonical;
  final List<Element>? instantiatesCanonicalElement;
  final List<FhirUri>? instantiatesUri;
  final List<Element>? instantiatesUriElement;
  final List<Reference>? basedOn;
  final List<Reference>? partOf;
  final List<Reference>? inResponseTo;
  final FhirCode status;
  final Element? statusElement;
  final CodeableConcept? statusReason;
  final List<CodeableConcept>? category;
  final FhirCode? priority;
  final Element? priorityElement;
  final List<CodeableConcept>? medium;
  final Reference? subject;
  final CodeableConcept? topic;
  final List<Reference>? about;
  final Reference? encounter;
  final FhirDateTime? sent;
  final Element? sentElement;
  final FhirDateTime? received;
  final Element? receivedElement;
  final List<Reference>? recipient;
  final Reference? sender;
  final List<CodeableConcept>? reasonCode;
  final List<Reference>? reasonReference;
  final List<CommunicationPayload>? payload;
  final List<Annotation>? note;

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

@override
Communication clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CommunicationPayload extends BackboneElement {
  final FhirString contentString;
  final Element? contentStringElement;
  final Attachment contentAttachment;
  final Reference contentReference;

  CommunicationPayload({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.contentString,
this.contentStringElement,
    required this.contentAttachment,
    required this.contentReference,
  });

@override
CommunicationPayload clone() => throw UnimplementedError();
}

