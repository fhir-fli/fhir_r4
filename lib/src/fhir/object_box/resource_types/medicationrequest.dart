import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class MedicationRequest extends Resource {
  MedicationRequest({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    required this.status,
    this.statusReason,
    required this.intent,
    this.category,
    this.priority,
    this.doNotPerform,
    this.reportedBoolean,
    this.reportedReference,
    this.medicationCodeableConcept,
    this.medicationReference,
    required this.subject,
    this.encounter,
    this.supportingInformation,
    this.authoredOn,
    this.requester,
    this.performer,
    this.performerType,
    this.recorder,
    this.reasonCode,
    this.reasonReference,
    this.instantiatesCanonical,
    this.instantiatesUri,
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

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  String status;
  ToOne<CodeableConcept>? statusReason = ToOne<CodeableConcept>();
  String intent;
  ToMany<CodeableConcept>? category = ToMany<CodeableConcept>();
  String? priority;
  bool? doNotPerform;
  bool? reportedBoolean;
  ToOne<Reference>? reportedReference = ToOne<Reference>();
  ToOne<CodeableConcept>? medicationCodeableConcept = ToOne<CodeableConcept>();
  ToOne<Reference>? medicationReference = ToOne<Reference>();
  ToOne<Reference> subject = ToOne<Reference>();
  ToOne<Reference>? encounter = ToOne<Reference>();
  ToMany<Reference>? supportingInformation = ToMany<Reference>();
  String? authoredOn;
  ToOne<Reference>? requester = ToOne<Reference>();
  ToOne<Reference>? performer = ToOne<Reference>();
  ToOne<CodeableConcept>? performerType = ToOne<CodeableConcept>();
  ToOne<Reference>? recorder = ToOne<Reference>();
  ToMany<CodeableConcept>? reasonCode = ToMany<CodeableConcept>();
  ToMany<Reference>? reasonReference = ToMany<Reference>();
  List<String>? instantiatesCanonical;
  List<String>? instantiatesUri;
  ToMany<Reference>? basedOn = ToMany<Reference>();
  ToOne<Identifier>? groupIdentifier = ToOne<Identifier>();
  ToOne<CodeableConcept>? courseOfTherapyType = ToOne<CodeableConcept>();
  ToMany<Reference>? insurance = ToMany<Reference>();
  ToMany<Annotation>? note = ToMany<Annotation>();
  ToMany<Dosage>? dosageInstruction = ToMany<Dosage>();
  ToOne<MedicationRequestDispenseRequest>? dispenseRequest =
      ToOne<MedicationRequestDispenseRequest>();
  ToOne<MedicationRequestSubstitution>? substitution =
      ToOne<MedicationRequestSubstitution>();
  ToOne<Reference>? priorPrescription = ToOne<Reference>();
  ToMany<Reference>? detectedIssue = ToMany<Reference>();
  ToMany<Reference>? eventHistory = ToMany<Reference>();
}

@Entity()
class MedicationRequestDispenseRequest {
  MedicationRequestDispenseRequest({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.initialFill,
    this.dispenseInterval,
    this.validityPeriod,
    this.numberOfRepeatsAllowed,
    this.quantity,
    this.expectedSupplyDuration,
    this.performer,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<MedicationRequestInitialFill>? initialFill =
      ToOne<MedicationRequestInitialFill>();
  ToOne<FhirDuration>? dispenseInterval = ToOne<FhirDuration>();
  ToOne<Period>? validityPeriod = ToOne<Period>();
  int? numberOfRepeatsAllowed;
  ToOne<Quantity>? quantity = ToOne<Quantity>();
  ToOne<FhirDuration>? expectedSupplyDuration = ToOne<FhirDuration>();
  ToOne<Reference>? performer = ToOne<Reference>();
}

@Entity()
class MedicationRequestInitialFill {
  MedicationRequestInitialFill({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.quantity,
    this.duration,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Quantity>? quantity = ToOne<Quantity>();
  ToOne<FhirDuration>? duration = ToOne<FhirDuration>();
}

@Entity()
class MedicationRequestSubstitution {
  MedicationRequestSubstitution({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.allowedBoolean,
    this.allowedCodeableConcept,
    this.reason,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  bool? allowedBoolean;
  ToOne<CodeableConcept>? allowedCodeableConcept = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? reason = ToOne<CodeableConcept>();
}
