import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CommunicationRequest {
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
  final List<Reference> basedOn;
  final List<Reference> replaces;
  final Identifier groupIdentifier;
  final FhirCode status;
  final PrimitiveElement Status;
  final CodeableConcept statusReason;
  final List<CodeableConcept> category;
  final FhirCode priority;
  final PrimitiveElement Priority;
  final FhirBoolean doNotPerform;
  final PrimitiveElement DoNotPerform;
  final List<CodeableConcept> medium;
  final Reference subject;
  final List<Reference> about;
  final Reference encounter;
  final List<CommunicationRequestPayload> payload;
  final String occurrenceDateTime;
  final PrimitiveElement OccurrenceDateTime;
  final Period occurrencePeriod;
  final FhirDateTime authoredOn;
  final PrimitiveElement AuthoredOn;
  final Reference requester;
  final List<Reference> recipient;
  final Reference sender;
  final List<CodeableConcept> reasonCode;
  final List<Reference> reasonReference;
  final List<Annotation> note;
  const CommunicationRequest({
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
    this.basedOn,
    this.replaces,
    this.groupIdentifier,
    this.status,
    this.Status,
    this.statusReason,
    this.category,
    this.priority,
    this.Priority,
    this.doNotPerform,
    this.DoNotPerform,
    this.medium,
    this.subject,
    this.about,
    this.encounter,
    this.payload,
    this.occurrenceDateTime,
    this.OccurrenceDateTime,
    this.occurrencePeriod,
    this.authoredOn,
    this.AuthoredOn,
    this.requester,
    this.recipient,
    this.sender,
    this.reasonCode,
    this.reasonReference,
    this.note,
  });
}
