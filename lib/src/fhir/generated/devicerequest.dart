import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class DeviceRequest {
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
  final List<Reference> priorRequest;
  final Identifier groupIdentifier;
  final FhirCode status;
  final PrimitiveElement Status;
  final FhirCode intent;
  final PrimitiveElement Intent;
  final FhirCode priority;
  final PrimitiveElement Priority;
  final Reference codeReference;
  final CodeableConcept codeCodeableConcept;
  final List<DeviceRequestParameter> parameter;
  final Reference subject;
  final Reference encounter;
  final String occurrenceDateTime;
  final PrimitiveElement OccurrenceDateTime;
  final Period occurrencePeriod;
  final Timing occurrenceTiming;
  final FhirDateTime authoredOn;
  final PrimitiveElement AuthoredOn;
  final Reference requester;
  final CodeableConcept performerType;
  final Reference performer;
  final List<CodeableConcept> reasonCode;
  final List<Reference> reasonReference;
  final List<Reference> insurance;
  final List<Reference> supportingInfo;
  final List<Annotation> note;
  final List<Reference> relevantHistory;
  const DeviceRequest({
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
    this.priorRequest,
    this.groupIdentifier,
    this.status,
    this.Status,
    this.intent,
    this.Intent,
    this.priority,
    this.Priority,
    this.codeReference,
    this.codeCodeableConcept,
    this.parameter,
    required this.subject,
    this.encounter,
    this.occurrenceDateTime,
    this.OccurrenceDateTime,
    this.occurrencePeriod,
    this.occurrenceTiming,
    this.authoredOn,
    this.AuthoredOn,
    this.requester,
    this.performerType,
    this.performer,
    this.reasonCode,
    this.reasonReference,
    this.insurance,
    this.supportingInfo,
    this.note,
    this.relevantHistory,
  });
}
