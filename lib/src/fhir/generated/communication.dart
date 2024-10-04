import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Communication {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<Identifier> identifier;
  final List<FhirCanonical> instantiatesCanonical;
  final List<FhirUri> instantiatesUri;
  final List<PrimitiveElement> InstantiatesUri;
  final List<Reference> basedOn;
  final List<Reference> partOf;
  final List<Reference> inResponseTo;
  final FhirCode status;
  final PrimitiveElement Status;
  final CodeableConcept statusReason;
  final List<CodeableConcept> category;
  final FhirCode priority;
  final PrimitiveElement Priority;
  final List<CodeableConcept> medium;
  final Reference subject;
  final CodeableConcept topic;
  final List<Reference> about;
  final Reference encounter;
  final FhirDateTime sent;
  final PrimitiveElement Sent;
  final FhirDateTime received;
  final PrimitiveElement Received;
  final List<Reference> recipient;
  final Reference sender;
  final List<CodeableConcept> reasonCode;
  final List<Reference> reasonReference;
  final List<CommunicationPayload> payload;
  final List<Annotation> note;
  const Communication({
    required this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.ImplicitRules,
    this.language,
    this.Language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.instantiatesCanonical,
    this.instantiatesUri,
    this.InstantiatesUri,
    this.basedOn,
    this.partOf,
    this.inResponseTo,
    this.status,
    this.Status,
    this.statusReason,
    this.category,
    this.priority,
    this.Priority,
    this.medium,
    this.subject,
    this.topic,
    this.about,
    this.encounter,
    this.sent,
    this.Sent,
    this.received,
    this.Received,
    this.recipient,
    this.sender,
    this.reasonCode,
    this.reasonReference,
    this.payload,
    this.note,
  });
}
