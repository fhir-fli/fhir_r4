import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MedicationRequest {
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
  final FhirCode status;
  final PrimitiveElement Status;
  final CodeableConcept statusReason;
  final FhirCode intent;
  final PrimitiveElement Intent;
  final List<CodeableConcept> category;
  final FhirCode priority;
  final PrimitiveElement Priority;
  final FhirBoolean doNotPerform;
  final PrimitiveElement DoNotPerform;
  final bool reportedBoolean;
  final PrimitiveElement ReportedBoolean;
  final Reference reportedReference;
  final CodeableConcept medicationCodeableConcept;
  final Reference medicationReference;
  final Reference subject;
  final Reference encounter;
  final List<Reference> supportingInformation;
  final FhirDateTime authoredOn;
  final PrimitiveElement AuthoredOn;
  final Reference requester;
  final Reference performer;
  final CodeableConcept performerType;
  final Reference recorder;
  final List<CodeableConcept> reasonCode;
  final List<Reference> reasonReference;
  final List<FhirCanonical> instantiatesCanonical;
  final List<PrimitiveElement> InstantiatesCanonical;
  final List<FhirUri> instantiatesUri;
  final List<PrimitiveElement> InstantiatesUri;
  final List<Reference> basedOn;
  final Identifier groupIdentifier;
  final CodeableConcept courseOfTherapyType;
  final List<Reference> insurance;
  final List<Annotation> note;
  final List<Dosage> dosageInstruction;
  final MedicationRequest_DispenseRequest dispenseRequest;
  final MedicationRequest_Substitution substitution;
  final Reference priorPrescription;
  final List<Reference> detectedIssue;
  final List<Reference> eventHistory;
  const MedicationRequest({
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
    this.status,
    this.Status,
    this.statusReason,
    this.intent,
    this.Intent,
    this.category,
    this.priority,
    this.Priority,
    this.doNotPerform,
    this.DoNotPerform,
    this.reportedBoolean,
    this.ReportedBoolean,
    this.reportedReference,
    this.medicationCodeableConcept,
    this.medicationReference,
    required this.subject,
    this.encounter,
    this.supportingInformation,
    this.authoredOn,
    this.AuthoredOn,
    this.requester,
    this.performer,
    this.performerType,
    this.recorder,
    this.reasonCode,
    this.reasonReference,
    this.instantiatesCanonical,
    this.InstantiatesCanonical,
    this.instantiatesUri,
    this.InstantiatesUri,
    this.basedOn,
    this.groupIdentifier,
    this.courseOfTherapyType,
    this.insurance,
    this.note,
    this.dosageInstruction,
    this.dispenseRequest,
    this.substitution,
    this.priorPrescription,
    this.detectedIssue,
    this.eventHistory,
  });
}
