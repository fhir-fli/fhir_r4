import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class MedicationAdministration extends Resource {
  MedicationAdministration({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.instantiates,
    this.partOf,
    required this.status,
    this.statusReason,
    this.category,
    this.medicationCodeableConcept,
    this.medicationReference,
    required this.subject,
    this.context,
    this.supportingInformation,
    this.effectiveDateTime,
    this.effectivePeriod,
    this.performer,
    this.reasonCode,
    this.reasonReference,
    this.request,
    this.device,
    this.note,
    this.dosage,
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
  List<String>? instantiates;
  ToMany<Reference>? partOf = ToMany<Reference>();
  String status;
  ToMany<CodeableConcept>? statusReason = ToMany<CodeableConcept>();
  ToOne<CodeableConcept>? category = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? medicationCodeableConcept = ToOne<CodeableConcept>();
  ToOne<Reference>? medicationReference = ToOne<Reference>();
  ToOne<Reference> subject = ToOne<Reference>();
  ToOne<Reference>? context = ToOne<Reference>();
  ToMany<Reference>? supportingInformation = ToMany<Reference>();
  String? effectiveDateTime;
  ToOne<Period>? effectivePeriod = ToOne<Period>();
  ToMany<MedicationAdministrationPerformer>? performer =
      ToMany<MedicationAdministrationPerformer>();
  ToMany<CodeableConcept>? reasonCode = ToMany<CodeableConcept>();
  ToMany<Reference>? reasonReference = ToMany<Reference>();
  ToOne<Reference>? request = ToOne<Reference>();
  ToMany<Reference>? device = ToMany<Reference>();
  ToMany<Annotation>? note = ToMany<Annotation>();
  ToOne<MedicationAdministrationDosage>? dosage =
      ToOne<MedicationAdministrationDosage>();
  ToMany<Reference>? eventHistory = ToMany<Reference>();
}

@Entity()
class MedicationAdministrationPerformer {
  MedicationAdministrationPerformer({
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
class MedicationAdministrationDosage {
  MedicationAdministrationDosage({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.text,
    this.site,
    this.route,
    this.method,
    this.dose,
    this.rateRatio,
    this.rateQuantity,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? text;
  ToOne<CodeableConcept>? site = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? route = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? method = ToOne<CodeableConcept>();
  ToOne<Quantity>? dose = ToOne<Quantity>();
  ToOne<Ratio>? rateRatio = ToOne<Ratio>();
  ToOne<Quantity>? rateQuantity = ToOne<Quantity>();
}
