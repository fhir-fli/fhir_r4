import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ContractAction {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirBoolean doNotPerform;
  final PrimitiveElement DoNotPerform;
  final CodeableConcept type;
  final List<ContractSubject> subject;
  final CodeableConcept intent;
  final List<String> linkId;
  final List<PrimitiveElement> LinkId;
  final CodeableConcept status;
  final Reference context;
  final List<String> contextLinkId;
  final List<PrimitiveElement> ContextLinkId;
  final String occurrenceDateTime;
  final PrimitiveElement OccurrenceDateTime;
  final Period occurrencePeriod;
  final Timing occurrenceTiming;
  final List<Reference> requester;
  final List<String> requesterLinkId;
  final List<PrimitiveElement> RequesterLinkId;
  final List<CodeableConcept> performerType;
  final CodeableConcept performerRole;
  final Reference performer;
  final List<String> performerLinkId;
  final List<PrimitiveElement> PerformerLinkId;
  final List<CodeableConcept> reasonCode;
  final List<Reference> reasonReference;
  final List<String> reason;
  final List<PrimitiveElement> Reason;
  final List<String> reasonLinkId;
  final List<PrimitiveElement> ReasonLinkId;
  final List<Annotation> note;
  final List<FhirUnsignedInt> securityLabelNumber;
  final List<PrimitiveElement> SecurityLabelNumber;
  const ContractAction({
    this.id,
    this.extension,
    this.modifierExtension,
    this.doNotPerform,
    this.DoNotPerform,
    required this.type,
    this.subject,
    required this.intent,
    this.linkId,
    this.LinkId,
    required this.status,
    this.context,
    this.contextLinkId,
    this.ContextLinkId,
    this.occurrenceDateTime,
    this.OccurrenceDateTime,
    this.occurrencePeriod,
    this.occurrenceTiming,
    this.requester,
    this.requesterLinkId,
    this.RequesterLinkId,
    this.performerType,
    this.performerRole,
    this.performer,
    this.performerLinkId,
    this.PerformerLinkId,
    this.reasonCode,
    this.reasonReference,
    this.reason,
    this.Reason,
    this.reasonLinkId,
    this.ReasonLinkId,
    this.note,
    this.securityLabelNumber,
    this.SecurityLabelNumber,
  });
}
