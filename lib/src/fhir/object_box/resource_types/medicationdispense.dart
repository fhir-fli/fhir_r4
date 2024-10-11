import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class MedicationDispense extends Resource {
  MedicationDispense({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.partOf,
    required this.status,
    this.statusReasonCodeableConcept,
    this.statusReasonReference,
    this.category,
    this.medicationCodeableConcept,
    this.medicationReference,
    this.subject,
    this.context,
    this.supportingInformation,
    this.performer,
    this.location,
    this.authorizingPrescription,
    this.type,
    this.quantity,
    this.daysSupply,
    this.whenPrepared,
    this.whenHandedOver,
    this.destination,
    this.receiver,
    this.note,
    this.dosageInstruction,
    this.substitution,
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
  ToMany<Reference>? partOf = ToMany<Reference>();
  String status;
  ToOne<CodeableConcept>? statusReasonCodeableConcept =
      ToOne<CodeableConcept>();
  ToOne<Reference>? statusReasonReference = ToOne<Reference>();
  ToOne<CodeableConcept>? category = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? medicationCodeableConcept = ToOne<CodeableConcept>();
  ToOne<Reference>? medicationReference = ToOne<Reference>();
  ToOne<Reference>? subject = ToOne<Reference>();
  ToOne<Reference>? context = ToOne<Reference>();
  ToMany<Reference>? supportingInformation = ToMany<Reference>();
  ToMany<MedicationDispensePerformer>? performer =
      ToMany<MedicationDispensePerformer>();
  ToOne<Reference>? location = ToOne<Reference>();
  ToMany<Reference>? authorizingPrescription = ToMany<Reference>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToOne<Quantity>? quantity = ToOne<Quantity>();
  ToOne<Quantity>? daysSupply = ToOne<Quantity>();
  String? whenPrepared;
  String? whenHandedOver;
  ToOne<Reference>? destination = ToOne<Reference>();
  ToMany<Reference>? receiver = ToMany<Reference>();
  ToMany<Annotation>? note = ToMany<Annotation>();
  ToMany<Dosage>? dosageInstruction = ToMany<Dosage>();
  ToOne<MedicationDispenseSubstitution>? substitution =
      ToOne<MedicationDispenseSubstitution>();
  ToMany<Reference>? detectedIssue = ToMany<Reference>();
  ToMany<Reference>? eventHistory = ToMany<Reference>();
}

@Entity()
class MedicationDispensePerformer {
  MedicationDispensePerformer({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.function_,
    required this.actor,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? function_ = ToOne<CodeableConcept>();
  ToOne<Reference> actor = ToOne<Reference>();
}

@Entity()
class MedicationDispenseSubstitution {
  MedicationDispenseSubstitution({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.wasSubstituted,
    this.type,
    this.reason,
    this.responsibleParty,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  bool wasSubstituted;
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? reason = ToMany<CodeableConcept>();
  ToMany<Reference>? responsibleParty = ToMany<Reference>();
}
