import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ServiceRequest {
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
  final List<Reference> replaces;
  final Identifier requisition;
  final FhirCode status;
  final PrimitiveElement Status;
  final FhirCode intent;
  final PrimitiveElement Intent;
  final List<CodeableConcept> category;
  final FhirCode priority;
  final PrimitiveElement Priority;
  final FhirBoolean doNotPerform;
  final PrimitiveElement DoNotPerform;
  final CodeableConcept code;
  final List<CodeableConcept> orderDetail;
  final Quantity quantityQuantity;
  final Ratio quantityRatio;
  final Range quantityRange;
  final Reference subject;
  final Reference encounter;
  final String occurrenceDateTime;
  final PrimitiveElement OccurrenceDateTime;
  final Period occurrencePeriod;
  final Timing occurrenceTiming;
  final bool asNeededBoolean;
  final PrimitiveElement AsNeededBoolean;
  final CodeableConcept asNeededCodeableConcept;
  final FhirDateTime authoredOn;
  final PrimitiveElement AuthoredOn;
  final Reference requester;
  final CodeableConcept performerType;
  final List<Reference> performer;
  final List<CodeableConcept> locationCode;
  final List<Reference> locationReference;
  final List<CodeableConcept> reasonCode;
  final List<Reference> reasonReference;
  final List<Reference> insurance;
  final List<Reference> supportingInfo;
  final List<Reference> specimen;
  final List<CodeableConcept> bodySite;
  final List<Annotation> note;
  final String patientInstruction;
  final PrimitiveElement PatientInstruction;
  final List<Reference> relevantHistory;
  const ServiceRequest({
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
    this.replaces,
    this.requisition,
    this.status,
    this.Status,
    this.intent,
    this.Intent,
    this.category,
    this.priority,
    this.Priority,
    this.doNotPerform,
    this.DoNotPerform,
    this.code,
    this.orderDetail,
    this.quantityQuantity,
    this.quantityRatio,
    this.quantityRange,
    required this.subject,
    this.encounter,
    this.occurrenceDateTime,
    this.OccurrenceDateTime,
    this.occurrencePeriod,
    this.occurrenceTiming,
    this.asNeededBoolean,
    this.AsNeededBoolean,
    this.asNeededCodeableConcept,
    this.authoredOn,
    this.AuthoredOn,
    this.requester,
    this.performerType,
    this.performer,
    this.locationCode,
    this.locationReference,
    this.reasonCode,
    this.reasonReference,
    this.insurance,
    this.supportingInfo,
    this.specimen,
    this.bodySite,
    this.note,
    this.patientInstruction,
    this.PatientInstruction,
    this.relevantHistory,
  });
}
